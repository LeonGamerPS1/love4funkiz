local ImageCache = {}
ImageCache.images = {}

function ImageCache:get(key)
    if not (type(key) == "string") then
        print("ImageCache: " .. tostring() .. ' is not a valid cachekey')
        return nil
    end

    if not ImageCache:exists(key) then
        print('ImageCache: image ' .. key .. ' not cached, caching....')
        ImageCache:cache(key)
    end
    return ImageCache.images[key]
end

function ImageCache:cache(path)
    if not ImageCache:exists(path) then
        local image = love.graphics.newImage(path)
        ImageCache.images[path] = image
    else
        print('ImageCache: image ' .. path .. ' already cached')
    end
end

function ImageCache:exists(path)
    return ImageCache.images[path] ~= nil
end

function ImageCache:release()
    
    for key, value in pairs(ImageCache.images) do
        ImageCache.images[key] = nil
        value:release()
        value = nil
    end
end

return ImageCache

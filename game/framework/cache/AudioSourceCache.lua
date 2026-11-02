local AudioSourceCache = {}
AudioSourceCache.audioSources = {}

function AudioSourceCache:get(key, typ)
    if not (type(key) == "string") then
        print("AudioSourceCache: " .. tostring() .. ' is not a valid cachekey')
        return nil
    end

    if not AudioSourceCache:exists(key) then
        print('AudioSourceCache: audioSource ' .. key .. ' not cached, caching....')
        AudioSourceCache:cache(key, typ)
    end
    return AudioSourceCache.audioSources[key]
end

function AudioSourceCache:cache(path, type)
    if not type then type = "static" end
    if not AudioSourceCache:exists(path) then
        local audioSource = love.audio.newSource(path, type)
        AudioSourceCache.audioSources[path] = audioSource
    else
        print('AudioSourceCache: audioSource ' .. path .. ' already cached')
    end
end

function AudioSourceCache:exists(path)
    return AudioSourceCache.audioSources[path] ~= nil
end

function AudioSourceCache:release()
    for key, value in pairs(AudioSourceCache.audioSources) do
        AudioSourceCache.audioSources[key] = nil
        value:release()
        value = nil
    end
end

return AudioSourceCache

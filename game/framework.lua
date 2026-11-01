local Framework = {}

function Framework:init()
    Framework.game = GameClass()
    Framework.images = require "game.framework.cache.ImageCache"
end

return Framework

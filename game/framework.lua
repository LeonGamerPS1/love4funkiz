local Framework = {}

function Framework:init()
    Framework.game = GameClass()
    Framework.images = require "game.framework.cache.ImageCache"
    Framework.sounds = require "game.framework.cache.AudioSourceCache"
    Framework.state = {}
    Framework._requestedState = {}
end

function Framework:resize(w, h)
    Framework.game:resize(w, h)
end

function Framework:quit()

    Framework.game:quit()
    Framework.game = nil

    Framework.images:release()
    Framework.images = nil

    Framework.sounds:release()
    Framework.sounds = nil
    collectgarbage('collect')
end

return Framework

local Game = Class:extend()

function Game:init()
    Framework.cameras = {}
    Framework.mainCamera = Camera()
    table.insert(Framework.cameras, Framework.mainCamera)
    Framework.state = nil
end

function Game:render()
    if Framework.state then Framework.state.preRender() end
    for index, value in ipairs(Framework.cameras) do
        
        value:attach()
        
        value:detach()
    end
end

function Game:update(deltaTime)
    if Framework.state then Framework.state.update(deltaTime) end
end

function Game:resize(w, h) end

function Game:quit()
    Framework = nil
end

return Game

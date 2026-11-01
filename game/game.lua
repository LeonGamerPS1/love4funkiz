local Game = Class:extend()

function Game:init()
    Game.tex = Framework.images:get('res/images/bnuuy.png')
    Game.tex:setFilter('nearest')

    Framework.cameras = {}
    Framework.mainCamera = nil
end

function Game:render()
    for index, value in ipairs(Framework.cameras) do
        value:attach()
        value:detach()
    end

end

function Game:update(deltaTime)
end

return Game

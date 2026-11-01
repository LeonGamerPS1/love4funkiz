local Basic = Class:extend()

function Basic:new()
    self.canRender = true
    self.canUpdate = true
    self.cameras = {}

end

function Basic:update(dt)
end

function Basic:render()
end

function Basic:isOnScreen()
    return false
end
return Basic
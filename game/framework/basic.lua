local Basic = Class:extend()

function Basic:new()
    self.canRender = true
    self.canUpdate = true
    self.camera = nil
    self._addtogroup = true
    self.z = 0

end

function Basic:update(dt)
end

function Basic:render()
end

function Basic:preRender(camera)
  
end

function Basic:isOnScreen(camera)
    return false
end
return Basic
local Object = Basic:extend()

function Object:new(x,y,width,height)
    Object.super.new(self)
    self.x = x or x
    self.y = y or 0
    self.w = width or 0
    self.h = height or 0

end

function Object:update(dt)
end

function Object:render(camera)
end



function Object:isOnScreen(camera)
    return camera.isInsideCamera(self)
end
return Object
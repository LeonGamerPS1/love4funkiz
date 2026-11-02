local Group = Basic:extend()

function Group:new(x,y,width,height)
    Group.super.new(self)
    self.isGroup = true
    self.members = {}

end

function Group:update(dt)
end

function Group:preRender(camera)
    for k, v in pairs(self.members) do
        if not v.canRender then return end
        v.preRender(camera)
    end
end

function Group:add(member)
    if not member or not member._addtogroup then return end
    table.insert(self.members,member)
end

function Group:remove(member)
    local index = table.find(self.members, member)
    if not member or not index or not self.members[index] then return end
    table.remove(table, index)

end

function Group:killYOurselfStupidFiner()
end

function Group:isOnScreen(camera)
    return true
end
return Group
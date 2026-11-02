table.find = function(tbl, target)
   for i = 1, #tbl do
      if tbl[i] == target then
         return i
      end
   end
   return nil
end

JSON = require "vendor.json.jsonlua"
Class = require "vendor.class.classic"
Camera = require "vendor.hump.camera"
Basic = require "game.framework.basic"
Object = require "game.framework.object"
GameClass = require "game.game"


Framework = require "game.framework"



vcrttf = love.graphics.newFont('res/fonts/vcr.ttf')



function love.load()
   print("")


   love.graphics.setNewFont(12)
   love.graphics.setColor(0, 0, 0)
   love.graphics.setBackgroundColor(0, 0, 0)
   Framework:init()
   Framework.game:init()
end

local fpsText = ""
local fpsCount = 0
function love.update(dt)
   DT = dt
   fpsCount = fpsCount + DT
   if fpsCount >= 0.5 then
      local stats = love.graphics.getStats()
      fpsText = "FPS: " .. tostring(love.timer.getFPS())
      fpsText = fpsText .. "\nGC: " .. string.format("%.2f", collectgarbage('count') / 1024) .. " MB"
      fpsText = fpsText .. "\nVRAM: " .. string.format("%.2f", stats.texturememory / (1024 * 1024)) .. " MB"
      fpsText = fpsText .. "\nDraws: " .. tostring(stats.drawcalls)
      fpsCount = 0
   end


   Framework.game:update(dt)
end

function love.draw()
   love.graphics.push('all')
   Framework.game:render()
   love.graphics.pop('all')
   
   love.graphics.setColor(1, 1, 1)
   love.graphics.setFont(vcrttf)
   love.graphics.print(fpsText, 10, 10)
end

function love.resize(w, h)
   Framework:resize(w, h)
end

function love.quit()
   Framework:quit()
   Framework = nil
end

menu = require("menustate")
game = require("gamestate")
state = "menu"

function love.load()
  

end

function love.update(dt)
  --player:update(dt)
  --bullet:update(dt)

end

function love.draw()
  function changeState(state)
    clearLoveCallbacks() --when change state "kill other state"
    if state == "menu" then
      menu:draw()
      print(state)
    --elseif state == "game"
    --  game:draw()
    --elseif state == ""
    end
  end


end

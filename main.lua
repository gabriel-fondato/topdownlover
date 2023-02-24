menu = require("menustate") --tittle screen
game = require("gamestate") --main game loop

CurrentState = "menu" 
print("state"..CurrentState) --print state


function love.load()
  function changeState(state)
    CurrentState = state --set state
    clearLoveCallbacks() --when change state "kill other state"
    print("state changed to"..CurrentState) --print state
  end

end

function love.update(dt)
  if CurrentState == "menu" then
    menu:update(dt)
  elseif state == "game" then
    game:update(dt)
  end
end

function love.draw()
  if CurrentState == "menu" then
    menu:draw()
  elseif state == "game" then
    game:draw()
  end
end

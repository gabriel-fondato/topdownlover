menu = require("menustate") --tittle screen
game = require("gamestate") --main game loop
redrpc = require("rpcsetup") --discord rpc stuff

CurrentState = "menu" 
print("state"..CurrentState) --print state

redrpc:loadstuff()
function love.load()
  redrpc:load(CurrentState, "doin nerdy stuff", "icon")
  function changeState(state)
    CurrentState = state --set state
    clearLoveCallbacks() --when change state "kill other state"
    print("state changed to"..CurrentState) --print state
  end

end

function love.update(dt)
  redrpc:update()
  if CurrentState == "menu" then
    menu:update(dt)
  elseif CurrentState == "game" then
    game:update(dt)
  end
end

function love.draw()
  if CurrentState == "menu" then
    menu:draw()
  elseif CurrentState == "game" then
    game:draw()
  end
end

function love.quit()
  redrpc:quit()
end

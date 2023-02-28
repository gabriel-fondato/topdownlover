menu = require("menustate") --tittle screen
game = require("gamestate") --main game loop
redrpc = require("rpcsetup") --discord rpc stuff
states = require("states")
buttons = require("objects/buttom")

print("state"..states:GetStates()) --print state

redrpc:loadstuff()
function love.load()
  redrpc:load(states:GetStates(), "doin nerdy stuff", "icon")
  function changeState(state)
    states:setStates(state)
    clearLoveCallbacks() --when change state "kill other state"
    print("state changed to"..states:GetStates()) --print state
  end

end

function love.update(dt)
  redrpc:update()
  if states:GetStates() == "menu" then
    menu:update(dt)
  elseif states:GetStates() == "game" then
    game:update(dt)
  end
end

function love.draw()
  if states:GetStates() == "menu" then
    menu:draw()
  elseif states:GetStates() == "game" then
    game:draw()
  end
end

function love.quit()
  redrpc:quit()
end

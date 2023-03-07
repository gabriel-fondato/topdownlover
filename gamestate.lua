player = require("objects/player")
redrpc = require("rpcsetup")
states = require("states")
shottingSystem = require("shottingsystem")

game = {}

player:load({50,50})
function game:load()
    redrpc.discordRPC.clearPresence()
    --redrpc:load(states:GetStates(), "other stuff", "icon")
    --presence.state = states:GetStates()
end

function game:draw()
    player:draw()
    shottingSystem.drawShots()
end

function game:update()
    player:update()
    shottingSystem.updateShots(dt)
end




return game
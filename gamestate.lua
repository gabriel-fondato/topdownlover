player = require("objects/player")
redrpc = require("rpcsetup")
states = require("states")

game = {}

player:load({50,50})
function game:load()
    redrpc.discordRPC.clearPresence()
    --redrpc:load(states:GetStates(), "other stuff", "icon")
    --presence.state = states:GetStates()
end

function game:draw()
    player:draw()
end

function game:update()
    player:update()
end




return game
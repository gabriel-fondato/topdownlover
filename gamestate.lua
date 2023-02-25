player = require("objects/player")

game = {}

player:load({50,50})

function game:draw()
    player:draw()
end

function game:update()
    player:update()
end




return game
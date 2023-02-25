player = require("objects/player")

game = {}



function game:draw()
    player:draw()
end

function game:update()
    player:update()
end




return game
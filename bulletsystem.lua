player = require("player")
bullet = {}

function bullet:update(dt)

end

function bullet:draw()

    love.graphics.push()
    love.graphics.translate(player.x, player.y)
    love.graphics.rotate(player.rotation)
    love.graphics.rectangle("fill", -player.width/2+15, -player.height/2+5, player.width-5, player.height-10)
    love.graphics.pop()

end

return bullet
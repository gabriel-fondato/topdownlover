player = require("player")
bullet = require("bulletsystem")

function love.load()
  

end

function love.update(dt)
  player:update(dt)
  --bullet:update(dt)

end

function love.draw()
  player:draw()
  bullet:draw()

end

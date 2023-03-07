
local shots = {}

local function spawnShot(x, y, angle, speed)
  local shot = {
    x = x,
    y = y,
    angle = angle,
    speed = speed,
    alive = true,
    width = 5,
    height = 5,
  }
  table.insert(shots, shot)
end

local function updateShots(dt)
  for i, shot in ipairs(shots) do
    shot.x = shot.x + shot.speed * math.cos(shot.angle) * dt
    shot.y = shot.y + shot.speed * math.sin(shot.angle) * dt
    if shot.x < 0 or shot.x > love.graphics.getWidth() or
       shot.y < 0 or shot.y > love.graphics.getHeight() then
      shot.alive = false
    end
  end
  for i = #shots, 1, -1 do
    if not shots[i].alive then
      table.remove(shots, i)
    end
  end
end

local function drawShots()
  for i, shot in ipairs(shots) do
    love.graphics.rectangle("fill", shot.x - shot.width/2, shot.y - shot.height/2, shot.width, shot.height)
  end
end

return {
  spawnShot = spawnShot,
  updateShots = updateShots,
  drawShots = drawShots,
}

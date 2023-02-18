player = {}
player.x = 100
player.y = 100
player.speed = 1.5
player.width = 25
player.height =25
aceleration = {}
mouse = {}
aceleration.x, aceleration.y = 0, 0

function player:update(dt)
--mouse imput
    mouse.x = love.mouse.getX()
    mouse.y = love.mouse.getY()
    



--keyboard input
    

    if love.keyboard.isDown("w") then
        aceleration.y = aceleration.y - player.speed
    elseif love.keyboard.isDown("s") then
        aceleration.y = aceleration.y + player.speed
    end

    if love.keyboard.isDown("a") then
      aceleration.x = aceleration.x - player.speed
    elseif love.keyboard.isDown("d") then
        aceleration.x = aceleration.x + player.speed

    end
--aceleration cauculation


    if(aceleration.x > 0) then
        aceleration.x = aceleration.x - 0.5
    elseif(aceleration.x < 0) then
        aceleration.x = aceleration.x + 0.5
    end
    --break system
    if(aceleration.x > 10) then
        aceleration.x = 10
    end
    if(aceleration.x < -10) then
        aceleration.x = -10
    end


    if(aceleration.y > 0) then
        aceleration.y = aceleration.y - 0.5
    elseif(aceleration.y < 0) then
        aceleration.y = aceleration.y + 0.5
    end
    --break system
    if(aceleration.y > 10) then
        aceleration.y = 10
    end
    if(aceleration.y < -10) then
        aceleration.y = -10
    end
    player.x = player.x + aceleration.x
    player.y = player.y + aceleration.y

--look/aim at the cursor
    angle = math.atan2(mouse.y - player.y, mouse.x - player.x) 
    player.rotation = angle
    
end
--player update func end

--player draw
function player:draw()
--render player in a nerdy way
    love.graphics.push()
    love.graphics.translate(self.x, self.y)
    love.graphics.rotate(self.rotation)
    love.graphics.rectangle("fill", -self.width/2, -self.height/2, self.width, self.height)
    love.graphics.pop()


    love.graphics.print(aceleration.x .."\n" ..aceleration.y .."\n" ..player.rotation, mouse.x-20, mouse.y-15)      
end


return player
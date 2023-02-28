menu = {}
redrpc = require("rpcsetup")
states = require("states")



function menu:load()
    presence.state = states:GetStates()
    

end

function menu:draw()
    love.graphics.print("main menu state :D", 50, 50, 0, 5, 5)


end

function menu:update(dt)

end
return menu
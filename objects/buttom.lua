buttom = {}

function buttom:newButtom(number, x,y ,mode, height, width, label)
    localButtom = buttom[number]
    localButtom.graphics = love.graphics.rectangle(mode,x,y,width,height)
    localButtom.label = love.graphics.print(label,x,y)

function buttom:setActivated()

end

return buttom
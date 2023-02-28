states = {}
CurrentState = "menu" 
function states:GetStates()
    CurrentState = "menu" 
    return CurrentState
end

function states:setStates(state)
    CurrentState = state
end

return states

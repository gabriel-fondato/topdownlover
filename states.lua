states = {}
CurrentState = "menu" 
rpc = require("rpcsetup")
function states:GetStates() 
    return CurrentState
end

function states:setStates(state)
    --clearLoveCallbacks() --when change state "kill other state"
    CurrentState = state
    --rpc.presence.state = state
    print("state changed to \n".."state"..states:GetStates()) --print state
    
end
function changeState(state)
    
    
  end

return states

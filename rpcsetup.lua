local discordRPC = require("discordRPC")

local appId = require("applicationId")

redrpc = {}
function redrpc:loadstuff()

    function discordRPC.ready(userId, username, discriminator, avatar)
        print(string.format("Discord: ready (%s, %s, %s, %s)", userId, username, discriminator, avatar))
    end

    function discordRPC.disconnected(errorCode, message)
        print(string.format("Discord: disconnected (%d: %s)", errorCode, message))
    end

    function discordRPC.errored(errorCode, message)
        print(string.format("Discord: error (%d: %s)", errorCode, message))
    end

    function discordRPC.joinGame(joinSecret)
        print(string.format("Discord: join (%s)", joinSecret))
    end

    function discordRPC.spectateGame(spectateSecret)
        print(string.format("Discord: spectate (%s)", spectateSecret))
    end

    function discordRPC.joinRequest(userId, username, discriminator, avatar)
        print(string.format("Discord: join request (%s, %s, %s, %s)", userId, username, discriminator, avatar))
        discordRPC.respond(userId, "yes")
    end
end

function redrpc:load(state,details,largeImageKey)
    discordRPC.initialize(appId, true)
    local now = os.time(os.date("*t"))
    presence = {
        state = state,
        details = details,
        startTimestamp = now,
        largeImageKey = largeImageKey
    }

    nextPresenceUpdate = 0
end

function redrpc:update()
    if nextPresenceUpdate < love.timer.getTime() then
        discordRPC.updatePresence(presence)
        nextPresenceUpdate = love.timer.getTime() + 2.0
    end
    discordRPC.runCallbacks()
end

function redrpc:quit()
    discordRPC.shutdown()
end
return redrpc
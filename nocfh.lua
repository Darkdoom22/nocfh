_addon.name = "nocfh"
_addon.author = "Uwu/Darkdoom"
_addon.version = "1.0"

local packets = require('packets')

windower.register_event('outgoing chunk', function(id, data, blocked)

    if id == 0x01A then

        local p = packets.parse('outgoing', data)

        if p["Category"] == 5 then

            blocked = true
            return blocked

        end

    end

end)
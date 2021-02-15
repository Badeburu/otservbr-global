local event = CreatureEvent("KillingKung")

function event.onKill(creature, target)
local n = target:getName()
local name_monster = kungtask[target:getName():lower()]
    if target:isPlayer() or target:getMaster()  or not name_monster then
        return false
    end
if(name_monster and creature:getStorageValue(name_monster.storages[1]) >= os.time()) then
local contagem = creature:getStorageValue(name_monster.storages[2])
if contagem > name_monster.count then return true end
creature:setStorageValue(name_monster.storages[2], contagem+1)
creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, ""..((contagem+1) < name_monster.count and "["..n.." Task] "..(contagem+1).."/"..name_monster.count or "["..n.." Task] Finaliza")..".")
end
    return true
end
event:register()

local login = CreatureEvent("RegisterKillingKung")
function login.onLogin(creature)
    creature:registerEvent("KillingKung")
    return true
end
login:register()

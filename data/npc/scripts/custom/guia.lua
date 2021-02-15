local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}
function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end
local place = nil
function creatureSayCallback(cid, type, msg)
    if not npcHandler:isFocused(cid) then
        return false
    end
    local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
    local config = {
        price = 1000,                   --Preço.
        backTime = 5,                   --Tempo para voltar, em segundos.
        places = {
            --["message"] = {to_position},
            ["rat"] = {x = 32406, y = 32880, z = 12},
            ["troll"] = {x = 1059, y = 915, z = 7},
            ["goblin"] = {x = 1060, y = 915, z = 7},
        },
    }
    --local isWalking = getPlayerStorageValue(npc, 8013) > -1 and true or false
   -- if not isWalking then
        if talkState[talkUser] == 1 then
            if config.places[msg:lower()] then
                selfSay("It will cost you "..config.price.." dollars. Are you sure?", cid)
                talkState[talkUser] = 2
                place = msg:lower()
                return true
            else
                selfSay("I can't go to this place.", cid)
                return true
            end
        elseif msgcontains(msg:lower(), "yes") and talkState[talkUser] == 2 then
            if doPlayerRemoveMoney(cid, config.price) then
                selfSay("OK, let's go!", cid)
				local npc = cid:getId()
				print(npc)
                local path = getPathTo(npc, config.places[place], 50)
                setPlayerStorageValue(npc, 8013, 1)
                local npcPos = npc:getPos()
                for i = 1, #path do
                    addEvent(function()
                        doMoveCreature(npc, path[i])
                        if i == #path then
                            doCreatureSay(npc, "And here we are!", TALKTYPE_SAY)
                            addEvent(function()
                                doCreatureSay(npc, "Well, I'm going back.", TALKTYPE_SAY)
                                path = getPathTo(npc, npcPos, 50)
                                for j = 1, #path do
                                    addEvent(function()
                                        doMoveCreature(npc, path[j])
                                        if j == #path then
                                            setPlayerStorageValue(npc, 8013, -1)
                                        end
                                    end, j * 900)
                                end
                            end, config.backTime * 1000)
                        end
                    end, i * 900)
                end
            else          
                selfSay("You do not have enough money.", cid)
                talkState[talkUser] = 0
                return true
            end
        elseif msgcontains(msg:lower(), "no") and talkState[talkUser] == 2 then
            selfSay("Ok, then...", cid)
            talkState[talkUser] = 0
            return true
        elseif msgcontains(msg:lower(), "yes") then
            local str = ""
            local z = {}
            for _, b in pairs(config.places) do
                table.insert(z, _)
            end
            for d = 1, #z do
                if str == "" then
                    str = z[d]
                else
                    str = str..(d == #z and " and " or ", ")..z[d]
                end
            end
            selfSay("I can show you the path for the following places: {"..str.."}. Which path do you wanna see?", cid)
            talkState[talkUser] = 1
            return true
        elseif msgcontains(msg:lower(), "no") then
            selfSay("Ok, bye.")
            talkState[talkUser] = 0
            return true
        end
   -- end
    return true
end         
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())         
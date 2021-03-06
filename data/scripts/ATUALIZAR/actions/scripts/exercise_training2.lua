local skills = {
    [32384] = {id=SKILL_SWORD,voc=4}, -- KNIGHT
    [32385] = {id=SKILL_AXE,voc=4}, -- KNIGHT
    [32386] = {id=SKILL_CLUB,voc=4}, -- KNIGHT
	[19389] = {id=SKILL_SHIELD,voc=4}, -- KNIGHT
    [32387] = {id=SKILL_DISTANCE,voc=3,range=CONST_ANI_SIMPLEARROW}, -- PALADIN
    [32388] = {id=SKILL_MAGLEVEL,voc=2,range=CONST_ANI_ENERGY}, -- DRUID
    [32389] = {id=SKILL_MAGLEVEL,voc=1,range=CONST_ANI_FIRE}, -- SORCERER
}
 


 
function onUse(player, item, fromPosition, target, toPosition, isHotkey)



local dummies = {36299, 36300, 36301, 36302, 36303,36304} -- missing few dummies yet
local skillRate = 5 * configManager.getNumber(configKeys.RATE_SKILL)
local isTraining = 37

 
local function start_train(pid,start_pos,itemid,fpos)
    local player = Player(pid)
    if player ~= nil then
        local pos_n = player:getPosition()
        if start_pos:getDistance(pos_n) == 0 and getTilePzInfo(pos_n) then
            if player:getItemCount(itemid) >= 1 then
                local exercise = player:getItemById(itemid,true)
                if exercise:isItem() then
                    if exercise:hasAttribute(ITEM_ATTRIBUTE_CHARGES) then
                        local charges_n = exercise:getAttribute(ITEM_ATTRIBUTE_CHARGES)
                        if charges_n >= 1 then
                            exercise:setAttribute(ITEM_ATTRIBUTE_CHARGES, (charges_n-1))
 
                            local voc = player:getVocation()
                            
                            if skills[itemid].id == SKILL_MAGLEVEL then
                                magicTry = voc:getRequiredManaSpent(player:getBaseMagicLevel() + 1)-player:getManaSpent()
                                player:addManaSpent(math.ceil(10000))
                            else
                                player:addSkillTries(skills[itemid].id, 5*skillRate)
                            end
                             fpos:sendMagicEffect(CONST_ME_HITAREA)
                            if skills[itemid].range then
                                pos_n:sendDistanceEffect(fpos, skills[itemid].range)
                            end
                            --player:setStamina(player:getStamina() + 60)
                            if charges_n == 1 then
                                exercise:remove(1)
                                return true
                            end
                            local training = addEvent(start_train, voc:getAttackSpeed(), pid,start_pos,itemid,fpos)
                            player:setStorageValue(isTraining, 1)
                        else
                            exercise:remove(1)
                            player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Your training weapon vanished.")
                            stopEvent(training)
                            player:setStorageValue(isTraining, 0)
                        end
                    end
                end
            end
        else
            player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Your training has stopped.")
            stopEvent(training)
            player:setStorageValue(isTraining, 0)
        end
    else
        stopEvent(training)
        
    end
    return true
end



    local start_pos = player:getPosition()
    if target:isItem() then
        if isInArray(dummies,target:getId()) then
            if not skills[item.itemid].range and (start_pos:getDistance(target:getPosition()) > 1) then
                player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Get closer to the dummy.")
                stopEvent(training)
                return false
            end
            if player:getStorageValue(isTraining) == 1 then
                player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Reset and Continue...")
				player:setStorageValue(isTraining, 0)
                return false
            end
            if not player:getVocation():getId() == skills[item.itemid].voc or not player:getVocation():getId() == (skills[item.itemid].voc+4) then
                player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Your vocation cannot use this training weapon.")
                stopEvent(training)
                return false
            end
            player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "You started training.")
            start_train(player:getId(),start_pos,item.itemid,target:getPosition())
        end
    end
 
    return true
end 
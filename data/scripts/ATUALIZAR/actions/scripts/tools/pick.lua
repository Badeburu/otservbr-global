function onUse(player, item, fromPosition, target, toPosition, isHotkey)
--the curse spreads quest
    if target.itemid == 30723 and player:getStorageValue(TCS_SERVANT_STO) >= 1 then
        if (player:getStorageValue(223544) > os.time()) then
            player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You shouldn't do this again. You already made some noise and the nearby creatures could be unhappy if you dig up their gold.")
            return true
        end
       
        player:setStorageValue(223544, os.time() + 5 * 60 * 60)
        toPosition:sendMagicEffect(CONST_ME_BLOCKHIT)
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You quarry some gold nuggets.")
        player:addItem(30679, 1)
        player:setStorageValue(TCS_GOLD, player:getStorageValue(TCS_GOLD) + 1)
        if player:getStorageValue(TCS_GOLD) >= 1 then
            player:setStorageValue(TCS_MACHINE_POTION, 1)
        end
    elseif target.itemid == 30724 and player:getStorageValue(TCS_SERVANT_STO) >= 1 then
        if (player:getStorageValue(223545) > os.time()) then
            player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You shouldn't do this again. You already made some noise and the nearby creatures could be unhappy if you dig up their silver.")
            return true
        end
 
        player:setStorageValue(223545, os.time() + 5 * 60 * 60)
        toPosition:sendMagicEffect(CONST_ME_HITAREA)
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You quarry some silver nuggets.")
        player:addItem(30680, 1)
        player:setStorageValue(TCS_PLATE, player:getStorageValue(TCS_PLATE) + 1)
        if player:getStorageValue(TCS_PLATE) >= 1 then
            player:setStorageValue(TCS_MACHINE_POTION, 1)
        end
	end
	if target.itemid == 18357 and player:getStorageValue(MT_SCATTERED_CRYSTALS) ~= 1 then
        if (player:getStorageValue(223546) > os.time()) then
           -- player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You shouldn't do this again. You already made some noise and the nearby creatures could be unhappy if you dig up their gold.")
            return true
        end
       
        player:setStorageValue(223546, os.time() + 5 * 60 * 1000)
        toPosition:sendMagicEffect(CONST_ME_BLOCKHIT)
       -- player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You quarry some gold nuggets.")
        player:addItem(32641, 1)
		player:addItem(32642, 1)
		player:addItem(32643, 1)
		player:setStorageValue(MT_GREEN_STONE, 1)
		player:setStorageValue(MT_YELLOW_STONE, 1)
		player:setStorageValue(MT_RED_STONE, 1)
	end
	return onUsePick(player, item, fromPosition, target, toPosition, isHotkey)
end
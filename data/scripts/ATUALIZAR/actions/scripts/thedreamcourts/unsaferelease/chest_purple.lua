function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(UR_ANDREW_STO) >= 3) then
		if (player:getStorageValue(UR_CHEST_PURPLE) < os.time) then 
			player:setStorageValue(UR_RANDOM_REWARD, math.max(1, 4))
				
			if (player:getStorageValue(UR_RANDOM_REWARD) == 1) then 
				player:addItem(2153, 3)
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found 3 violet gems.")
				player:setStorageValue(UR_CHEST_PURPLE, os.time() + 20 * 60 * 60)
			elseif (player:getStorageValue(UR_RANDOM_REWARD) == 2) then 
				player:addItem(9971, 9)
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found 9 gold ingots.")
				player:setStorageValue(UR_CHEST_PURPLE, os.time() + 20 * 60 * 60)
			elseif (player:getStorageValue(UR_RANDOM_REWARD) == 3) then 
				player:addItem(34698, 1)
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a giant emerald.")
				player:setStorageValue(UR_CHEST_PURPLE, os.time() + 20 * 60 * 60)
			elseif (player:getStorageValue(UR_RANDOM_REWARD) == 4) then 
				player:addItem(34691, 1)
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a dragon figurine.")
				player:setStorageValue(UR_CHEST_PURPLE, os.time() + 20 * 60 * 60)
			elseif (player:getStorageValue(UR_RANDOM_REWARD) == 4) then 
				player:addItem(15515, 1)
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a bar of gold.")
				player:setStorageValue(UR_CHEST_PURPLE, os.time() + 20 * 60 * 60)
			end
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The 20 hours have not passed yet.")
		end
	end
return true
end

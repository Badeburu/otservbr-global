function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(UR_ANDREW_STO) >= 3) then
		if (player:getStorageValue(UR_CHEST_GREEN) < os.time) then 
			player:setStorageValue(UR_RANDOM_REWARD, math.max(1, 4))
				
			if (player:getStorageValue(UR_RANDOM_REWARD) == 1) then 
				player:addItem(2155, 3)
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found 3 green gems.")
				player:setStorageValue(UR_CHEST_GREEN, os.time() + 20 * 60 * 60)
			elseif (player:getStorageValue(UR_RANDOM_REWARD) == 2) then 
				player:addItem(9971, 4)
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found 4 gold ingots.")
				player:setStorageValue(UR_CHEST_GREEN, os.time() + 20 * 60 * 60)
			elseif (player:getStorageValue(UR_RANDOM_REWARD) == 3) then 
				player:addItem(34697, 1)
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a giant ruby.")
				player:setStorageValue(UR_CHEST_GREEN, os.time() + 20 * 60 * 60)
			elseif (player:getStorageValue(UR_RANDOM_REWARD) == 4) then 
				player:addItem(34693, 1)
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a crunor idol.")
				player:setStorageValue(UR_CHEST_GREEN, os.time() + 20 * 60 * 60)
			end
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The 20 hours have not passed yet.")
		end
	end
return true
end

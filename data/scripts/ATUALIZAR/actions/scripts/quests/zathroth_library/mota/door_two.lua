function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getPosition() == Position({x = 33340, y = 32117, z = 10})) then
		if (player:getStorageValue(MT_FINAL_DOOR) == 1) then
			player:teleportTo({x = 33342, y = 32117, z = 10})
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "This door seems to be closed.")
		end
	elseif (player:getPosition() == Position({x = 33342, y = 32117, z = 10})) then
		if (player:getStorageValue(MT_FINAL_DOOR) == 1) then
			player:teleportTo({x = 33340, y = 32117, z = 10})
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "This door seems to be closed.")
		end		
	end
	
return true
end
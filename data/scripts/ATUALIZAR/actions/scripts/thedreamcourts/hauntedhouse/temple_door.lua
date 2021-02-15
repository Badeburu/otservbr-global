function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getPosition() == Position({x = 0000, y = 0000, z = 000})) then
		if (player:getStorageValue(HA_DOOR_TEMPLE) < 1)	
			player:teleportTo({x = 0000, y = 0000, z = 00})
			player:setStorageValue(HA_DOOR_TEMPLE, 1)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "This door seems to be closed.")
		end 
	else	
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "This door seems to be closed.")
	end
return true
end
function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getPosition() == Position({x = 0000, y = 0000, z = 000})) then
		if (player:getStorageValue(UR_ANDREW_STO) >= 1) then
			player:teleportTo({x = 0000, y = 0000, z = 00})
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "This door seems to be closed.")
		end
	elseif (player:getPosition() == Position({x = 0000, y = 0000, z = 00})) then
		player:teleportTo({x = 0000, y = 0000, z = 00})
	else	
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "This door seems to be closed.")
	end
return true
end
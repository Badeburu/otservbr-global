function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getPosition() == Position({x = 32983, y = 32313, z = 9})) or (player:getPosition() == Position({x = 32984, y = 32313, z = 9})) or (player:getPosition() == Position({x = 32985, y = 32313, z = 9})) then
		if (player:getStorageValue(POD_PT_CHESTAID) == 1) then
			player:teleportTo({x = 32984, y = 32315, z = 9})
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "This door seems to be closed.")
		end
	elseif (player:getPosition() == Position({x = 32984, y = 32315, z = 9})) then
		if (player:getStorageValue(POD_PT_CHESTAID) == 1) then
			player:teleportTo({x = 32984, y = 32313, z = 9})
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "This door seems to be closed.")
		end
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "This door seems to be closed.")
	end
return true
end
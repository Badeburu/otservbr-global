function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getPosition() == Position({x = 32977, y = 32289, z = 10})) or (player:getPosition() == Position({x = 32977, y = 32290, z = 10})) then
		if (player:getStorageValue(POD_PF_STORAGE) ~= 1) then
			player:teleportTo({x = 32980, y = 32290, z = 10})
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "This door seems to be closed.")
		end
	elseif (player:getPosition() == Position({x = 32979, y = 32290, z = 10})) or (player:getPosition() == Position({x = 32979, y = 32289, z = 10}))	then
		player:teleportTo({x = 32976, y = 32290, z = 10})
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "This door seems to be closed.")
	end
return true
end
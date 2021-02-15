function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getPosition() == Position({x = 32787, y = 31980, z = 11})) then
		-- print("S1")
		if (player:getStorageValue(TD_ALKESTIOS_STO) == 1) then
			player:teleportTo({x = 32787, y = 31978, z = 11})
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "This door seems to be closed.")
		end
	elseif (player:getPosition() == Position({x = 32787, y = 31978, z = 11})) then
		player:teleportTo({x = 32787, y = 31980, z = 11})
		-- print("S2")
	else
		-- print("S3")
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "This door seems to be closed.")
	end
return true
end
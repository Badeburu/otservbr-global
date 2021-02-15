function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getPosition() == Position({x = 32962, y = 32298, z = 8})) or (player:getPosition() == Position({x = 32963, y = 32298, z = 8})) or (player:getPosition() == Position({x = 32964, y = 32298, z = 8})) then
		if (player:getStorageValue(POD_PF_CHESTAID) >= 1) then
			player:teleportTo({x = 32963, y = 32300, z = 8})
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "This door seems to be closed.")
		end
	elseif (player:getPosition() == Position({x = 32962, y = 32300, z = 8})) or (player:getPosition() == Position({x = 32963, y = 32300, z = 8})) or (player:getPosition() == Position({x = 32964, y = 32300, z = 8})) then
		player:teleportTo({x = 32963, y = 32298, z = 8})
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "This door seems to be closed.")
	end
return true
end
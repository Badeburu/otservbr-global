function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getPosition() == Position({x = 33208, y = 32070, z = 8})) then
		if (player:getStorageValue(MT_GARETH_STO) == 5) then
			player:teleportTo({x = 33208, y = 32072, z = 8})
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "This door seems to be closed.")
		end
	elseif (player:getPosition() == Position({x = 33208, y = 32072, z = 8})) then
		if (player:getStorageValue(MT_GARETH_STO) == 5) then
			player:teleportTo({x = 33208, y = 32070, z = 8})
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "This door seems to be closed.")
		end
	elseif (player:getPosition() == Position({x = 33208, y = 32073, z = 8})) then
		if (player:getStorageValue(MT_GARETH_STO) == 5) then
			player:teleportTo({x = 33208, y = 32075, z = 8})
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "This door seems to be closed.")
		end
	elseif (player:getPosition() == Position({x = 33208, y = 32075, z = 8})) then
		if (player:getStorageValue(MT_GARETH_STO) == 7) then
			player:teleportTo({x = 33208, y = 32070, z = 8})
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "This door seems to be closed.")
		end
	elseif (player:getPosition() == Position({x = 33207, y = 32070, z = 8})) or (player:getPosition() == Position({x = 33209, y = 32070, z = 8})) then
		if (player:getStorageValue(MT_GARETH_STO) == 7) then
			player:teleportTo({x = 33208, y = 32075, z = 8})
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "This door seems to be closed.")
		end
	end
return true
end
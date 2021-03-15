function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(POD_QUEST_LOG) < 3) then
		player:setStorageValue(POD_QUEST_LOG, 3)
		
		if (player:getStorageValue(SECRET_LIBRARY_STORAGE) ~= 1) then
			player:setStorageValue(SECRET_LIBRARY_STORAGE, 1)
		end
	end
	
	if (player:getPosition() == Position({x = 32956, y = 32311, z = 9})) or (player:getPosition() == Position({x = 32956, y = 32310, z = 9})) then
		if (player:getPODOne_sto() == 41) or (player:getStorageValue(POD_PO_CHESTAID) == 1) then
			player:teleportTo({x = 32958, y = 32311, z = 9})
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "This door seems to be closed.")
		end
	elseif (player:getPosition() == Position({x = 32958, y = 32311, z = 9})) then
		player:teleportTo({x = 32956, y = 32311, z = 9})
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "This door seems to be closed.")
	end
return true
end
function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if item.actionid == 54391 then
		if player:getStorageValue(Storage.FerumbrasAscension.FirstDoor) ~= 1 then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The door seems to be sealed against unwanted intruders.")
			return true
		else
			local itemId = item:getId()
			player:teleportTo(toPosition, true)
		end
	elseif item.actionid == 54392 then
		if player:getStorageValue(Storage.FerumbrasAscension.MonsterDoor) ~= 1 then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The door seems to be sealed against unwanted intruders.")
			return true
		else
			local itemId = item:getId()
			player:teleportTo(toPosition, true)
		end
	elseif item.actionid == 54393 then
		if player:getStorageValue(Storage.FerumbrasAscension.TarbazDoor) ~= 1 then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The door seems to be sealed against unwanted intruders.")
			return true
		else
			local itemId = item:getId()
			player:teleportTo(toPosition, true)
		end
	end
	return true
end
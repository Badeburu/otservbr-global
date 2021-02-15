function onUse(player, item, fromPosition, itemEx, toPosition)
	if item.actionid == 45008 then
		if player:getStorageValue(FALCON_SECOND_DOOR) < 1 then
		player:setStorageValue(FALCON_SECOND_DOOR, 1)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You remove the lock which was blocking the door from this side.")
	end
		
		if player:getStorageValue(FALCON_SECOND_DOOR) == 1 then
			if item.itemid == 6261 then
				Item(item.uid):transform(item.itemid + 1)
				player:teleportTo(toPosition, true)
			end
		else
			player:sendTextMessage(19, "The door seems to be locked.")
		end
	end
	return true
end

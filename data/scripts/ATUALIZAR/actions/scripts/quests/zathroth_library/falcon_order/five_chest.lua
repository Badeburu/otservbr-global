function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(FALCON_FIVE_CHEST) == 1) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The chest is empty.")
		return true
	else
		player:addItem(2168, 1)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a life ring.")
		player:setStorageValue(FALCON_FIVE_CHEST, 1)
	end
return true
end
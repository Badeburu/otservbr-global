function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(FALCON_FOURTH_CHEST) == 1) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The chest is empty.")
		return true
	else
		player:addItem(6300, 1)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a death ring.")
		player:setStorageValue(FALCON_FOURTH_CHEST, 1)
	end
return true
end
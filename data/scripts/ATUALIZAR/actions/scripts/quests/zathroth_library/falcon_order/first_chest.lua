function onUse(player, item, fromPosition, itemEx, toPosition)
	if (player:getStorageValue(FALCON_FIRST_CHEST) == 1) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The chest is empty.")
		return true
	else
		player:addItem(2152, 10)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found 10 platinum coins.")
		player:setStorageValue(FALCON_FIRST_CHEST, 1)
	end
return true
end

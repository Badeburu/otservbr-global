function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(FALCON_BOOK) == 1) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The drawer is empty.")
		return true
	else
		local book = player:addItem(1950, 1)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a book.")
		player:setStorageValue(FALCON_BOOK, 1)
	end
return true
end
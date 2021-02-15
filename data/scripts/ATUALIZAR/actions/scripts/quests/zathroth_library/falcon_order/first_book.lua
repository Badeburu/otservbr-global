function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(FALCON_FIRST_BOOK) == 1) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The chest is empty.")
		return true
	else
		local book = player:addItem(33249, 1)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a book.")
		player:setStorageValue(FALCON_FIRST_BOOK, 1)
		book:setAttribute(ITEM_ATTRIBUTE_TEXT, ""..falcon_books[1].text.."")
	end
return true
end
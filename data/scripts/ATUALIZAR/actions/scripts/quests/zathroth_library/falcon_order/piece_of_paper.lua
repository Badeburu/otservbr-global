function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(FALCON_PIECE_OF_PAPER) == 1) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The drawer is empty.")
		return true
	else
		local paper = player:addItem(7727, 1)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a book.")
		player:setStorageValue(FALCON_PIECE_OF_PAPER, 1)
	end
return true
end
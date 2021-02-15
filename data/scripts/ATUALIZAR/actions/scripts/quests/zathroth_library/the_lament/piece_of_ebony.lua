function onUse(player, item, fromPosition, itemEx, toPosition)
	if (player:getStorageValue(TL_PIECE_OF_EBONY) ~= 1) then
		player:addItem(33274, 1)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a piece of ebony.")
		player:setStorageValue(TL_PIECE_OF_EBONY, 1)
		return true
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The chest is empty.")
		return true
	end
return true
end

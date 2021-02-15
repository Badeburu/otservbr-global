function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(BC_BIG_BOOK_TWO) < 1) and (player:getStorageValue(BC_BIG_BOOK_ONE == 1)) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The chants in this book often contain the word 'O'kteth'.")
		player:setStorageValue(BC_BIG_BOOK_TWO, 1)
	else 
		player:sendTextMessage(MESSAGE_STATUS_WARNING, "The chants in this book often contain the word 'O'kteth'.")
	end 	
return true
end


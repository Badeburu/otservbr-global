function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(BC_BIG_BOOK_THREE) < 1) and (player:getStorageValue(BC_BIG_BOOK_TWO == 1)) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The chants in this book often contain the word 'N'ogalu'.")
		player:setStorageValue(BC_BIG_BOOK_THREE, 1)
	else 
		player:sendTextMessage(MESSAGE_STATUS_WARNING, "The chants in this book often contain the word 'N'ogalu'.")
	end 	
return true
end


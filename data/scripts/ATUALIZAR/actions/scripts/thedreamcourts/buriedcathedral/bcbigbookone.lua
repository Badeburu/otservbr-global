function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(BC_BIG_BOOKS) == 1) and (player:getStorageValue(BC_BIG_BOOK_ONE < 1)) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The chants in this book often contain the word 'K'muuh'.")
		player:setStorageValue(BC_BIG_BOOK_ONE, 1)
	else 
		player:sendTextMessage(MESSAGE_STATUS_WARNING, "The chants in this book often contain the word 'K'muuh'.")
	end 	
return true
end


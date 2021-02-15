function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(BC_BIG_BOOK_FOUR) < 1) and (player:getStorageValue(BC_BIG_BOOK_THREE == 1)) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The chants in this book often contain the word 'T'sough'.")
		player:setStorageValue(BC_BIG_BOOK_FOUR, 1)
		
		player:getPosition():sendMagicEffect(CONST_ME_WATERSPLASH)
		
	else 
		player:sendTextMessage(MESSAGE_STATUS_WARNING, "The chants in this book often contain the word 'T'sough'.")
	end 	
return true
end


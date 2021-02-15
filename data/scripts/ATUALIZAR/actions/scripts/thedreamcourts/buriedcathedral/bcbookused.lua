function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if  (player:getStorageValue(BC_BOOK_USED) < 1) then 
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "This book tells you about a spell that draws its wiedler towards  the most energetic being next to him.")
		player:setStorageValue(BC_BOOK_USED, 1)
	end
return true
end
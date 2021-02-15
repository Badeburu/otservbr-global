function onUse(player, item, fromPosition, itemEx, toPosition)
	if (player:getStorageValue(TL_SILVERCHIMES) ~= 1) then
		player:addItem(33277, 1)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You see silver chimes dangling on the dragon statue in this room.")
		player:setStorageValue(TL_SILVERCHIMES, 1)
		return true
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The sarcophagus is empty.")
		return true
	end
return true
end

function onUse(player, item, fromPosition, itemEx, toPosition)
	if (player:getStorageValue(TL_SKULL) ~= 1) then
		player:addItem(33272, 1)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a skull.")
		player:setStorageValue(TL_SKULL, 1)
		return true
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The chest is empty.")
		return true
	end
return true
end

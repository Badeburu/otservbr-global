function onUse(player, item, fromPosition, itemEx, toPosition)
	if (player:getStorageValue(TL_EYE_KEY) ~= 1) then
		player:addItem(33265, 1)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a eye key.")
		player:setStorageValue(TL_EYE_KEY, 1)
		return true
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The skeleton is empty.")
		return true
	end
return true
end

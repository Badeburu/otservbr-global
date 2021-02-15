function onUse(player, item, fromPosition, itemEx, toPosition)
	if (player:getStorageValue(TL_LOTUS_KEY) ~= 1) then
		player:addItem(33264, 1)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a lotus key.")
		player:setStorageValue(TL_LOTUS_KEY, 1)
		return true
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The sarcophagus is empty.")
		return true
	end
return true
end

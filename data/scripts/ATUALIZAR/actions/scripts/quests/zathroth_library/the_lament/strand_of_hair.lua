function onUse(player, item, fromPosition, itemEx, toPosition)
	if (player:getStorageValue(TL_STAND_OF_HAIR) ~= 1) then
		player:addItem(33273, 1)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a strand of hair.")
		player:setStorageValue(TL_STAND_OF_HAIR, 1)
		return true
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The jewel case is empty.")
		return true
	end
return true
end

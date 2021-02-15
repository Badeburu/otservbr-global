function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(POD_PO_CHESTAID) ~= 1) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a ritual stone tablet.")
		player:addItem(33311, 1)
		player:setStorageValue(POD_PO_CHESTAID, 1)
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The chest is empty.")
	end
return true
end
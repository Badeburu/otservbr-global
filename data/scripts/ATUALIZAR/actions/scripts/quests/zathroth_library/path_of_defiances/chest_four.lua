function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(POD_PF_CHESTAID) ~= 1) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a ritual figurine.")
		player:addItem(33308, 1)
		player:setStorageValue(POD_PF_CHESTAID, 1)
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The chest is empty.")
	end
return true
end
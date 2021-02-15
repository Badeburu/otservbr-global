function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(MT_CHEST_ONE) < 1) then 
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a Bony Rod.")
		player:addItem(32623, 1)
		player:setStorageValue(MT_CHEST_ONE, 1)
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The chest is empty.")
	end
return true
end
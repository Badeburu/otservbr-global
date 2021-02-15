function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(FALCON_KEY) == 1) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The chest is empty.")
		return true
	else
		local key = player:addItem(2088, 1)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You found a silver key.")
		player:setStorageValue(FALCON_KEY, 1)
	end
return true
end
function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(SL_SEALED_SCROLL_STORAGE) ~= 1) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You found a sealed scroll.")
		player:setStorageValue(SL_SEALED_SCROLL_STORAGE, 1)
		player:addItem(33391, 1)
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The chest is empty.")
	end
return true
end
function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(BC_HEAP_STO) < 1) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a acid resistant fishing rod.")
		player:addItem(2580, 1)
		player:setStorageValue(BC_HEAP_STO, 1)
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "This is empty.")
	end
return true
end

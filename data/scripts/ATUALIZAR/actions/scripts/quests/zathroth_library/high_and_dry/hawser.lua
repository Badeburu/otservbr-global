function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(SL_HAD_HAWSER) ~= 1) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You found a hawser.")
		player:setStorageValue(SL_HAD_HAWSER, 1)
		player:addItem(32407, 1)
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The tile is empty.")
	end
return true
end
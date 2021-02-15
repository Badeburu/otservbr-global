function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(SL_HAD_BOAT) == 2) then
		player:setStorageValue(SL_HAD_BOAT, 3)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "By using the telescope you observate the stellar constellations. This should help you to navigate your way back to mainland.")
	end
return true
end
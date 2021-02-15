function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(TD_LAST_STONE) == 1) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The old map is artfully drawn. It once showed you the way to a hidden fairy treasure. Now it is still a decorative souvenir.")
	end
return true
end
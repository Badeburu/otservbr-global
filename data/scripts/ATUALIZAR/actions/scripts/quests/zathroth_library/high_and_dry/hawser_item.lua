function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(SL_HAD_BOAT) < 2) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You use the hawser to lash up the loose planks. The raft should be seaworthy now.")
		player:setStorageValue(SL_HAD_BOAT, 2)
		player:removeItem(SL_HAWSER, 1)
	end
return true
end
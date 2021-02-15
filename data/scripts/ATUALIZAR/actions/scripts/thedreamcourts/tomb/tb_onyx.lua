function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(ALL_QUEST) == 3) then
		player:teleportTo({x = 0000, y = 0000, z = 0})	
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You reach for the onyx and trigger an enormous discharge of raw energy. It is now possible to traverse the portal in this tomb.")
		player:setStorageValue(ALL_QUEST, 4)
	end
return true
end
function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	-- if (player:getStorageValue(POD_PO_CHESTAID) ~= 1) then
		if (player:getLevel() >= 1) then
			player:teleportTo(Position({x = 17097, y = 16932, z = 7}))
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You need to be 250 to use this mirror.")
		end
	-- else
		-- player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Sorry, you don't seem to be able to use this mirror.")
	-- end
return true
end
function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(UR_CRYSTAL_GREEN) < 3) then
		if (target:getActionId() == UR_CRYSTAL_GREEN) then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You got a green cyrstal")
			player:addItem(34545, 1)
			player:getStorageValue(UR_CRYSTAL_GREEN + 1)
		end
	end
return true
end
function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(UR_CRYSTAL_BLUE) < 5) then
		if (target:getActionId() == UR_CRYSTAL_BLUE) then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You got a blue cyrstal")
			player:addItem(34544, 1)
			player:getStorageValue(UR_CRYSTAL_BLUE + 1)
		end
	end
return true
end
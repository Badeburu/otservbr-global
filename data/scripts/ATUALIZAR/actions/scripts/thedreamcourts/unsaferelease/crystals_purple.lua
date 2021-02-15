function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(UR_CRYSTAL_PURPLE) < 1) then
		if (target:getActionId() == UR_CRYSTAL_PURPLE) then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You got a purple cyrstal")
			player:addItem(34546, 1)
			player:getStorageValue(UR_CRYSTAL_PURPLE + 1)
		end
	end
return true
end
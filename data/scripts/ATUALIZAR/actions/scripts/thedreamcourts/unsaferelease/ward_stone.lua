function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(UR_ANDREW_STO) >= 3) then
		if(target:getId() == 34492)
			if (target:getActionId() == UR_WARD_STONE) then
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You got a blue cyrstal")
				player:addItem(34544, 1)
				player:setStorageValue(UR_CRYSTAL_BLUE, player:getStorageValue(UR_CRYSTAL_BLUE) + 1)
			end
		end
	end
return true
end
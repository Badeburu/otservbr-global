function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(ALL_QUEST) >= 5) then
		if(target:getId() == OLD_LOCK)
			if target:getActionId() == (DOOR_EMPTY)
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have unlocked the door")
				player:setStorageValue(KEYS_DOOR_EMPTY, 1)
			end
		end
	end
return true
end
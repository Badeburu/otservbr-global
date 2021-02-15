function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(ALL_QUEST) >= 5) then
		if(target:getId() == OIINTMENT_MEDUSA)
			if target:getActionId() == (QUEST_DOOR)
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have unlocked the door of the Quest")
				player:setStorageValue(KEYS_ACCESS_DOOR, 1)
			end
		end
	end
return true
end
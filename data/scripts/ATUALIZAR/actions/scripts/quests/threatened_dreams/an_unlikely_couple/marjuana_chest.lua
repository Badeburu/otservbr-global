function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(TAEGAN_QUEST) == 3) then
		if (player:getStorageValue(RAVEN_HERB_CHEST) ~= 1) then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You pluck a tuft of raven herb.")
			player:addItem(5953, 1)
			player:setStorageValue(RAVEN_HERB_CHEST, 1)
			player:setStorageValue(TAEGAN_QUEST, 4)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The raven herb is already collected.")
		end
	end
return true
end
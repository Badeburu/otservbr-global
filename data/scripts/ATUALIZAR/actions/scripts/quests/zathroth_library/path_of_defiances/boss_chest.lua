function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(POD_PF_CHESTAID) ~= 1) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a parchment of interest.")
		player:addItem(33429, 1)
		player:setStorageValue(POD_PF_CHESTAID, 1)
		player:setStorageValue(POD_QUEST_LOG, 8)
		
		if (player:getStorageValue(SECRET_LIBRARY_STORAGE) ~= 1) then
			player:setStorageValue(SECRET_LIBRARY_STORAGE, 1)
		end
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The chest is empty.")
	end
return true
end
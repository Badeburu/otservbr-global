function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local fairyCount = player:getStorageValue(0)
	
	print(fairyCount)
	
	if (fairyCount >= 2) then
		if (player:getStorageValue(TD_CHEST_TO_TREE) ~= 1) then 
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a dark moon mirror.")
			player:setStorageValue(TD_CHEST_TO_TREE, 1)
			player:setStorageValue(FAIRY_QUEST, 2)
			player:addItem(29030, 1)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The chest is empty.")
		end
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You need to free more fairies.")
	end
return true
end
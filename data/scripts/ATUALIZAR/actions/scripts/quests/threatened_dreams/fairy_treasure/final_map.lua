function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(CHEST_TO_FUNGUS) == 1) then
		if (player:getStorageValue(TD_LAST_STONE) ~= 1) then 
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You discover something shiny that is hidden beneath the stones.")
			player:setStorageValue(TD_LAST_STONE, 1)
			player:setStorageValue(TD_THE_LAST_PART, -1)
			player:updateDreamsQuestLog(TD_FAIRY_TREASURE, 1)
			
			player:addItem(27058, 5)
			player:addItem(29038, 5)
			player:addItem(29003, 1)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already found the treasure.")
		end
	end
return true
end
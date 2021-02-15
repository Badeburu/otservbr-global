function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getItemById(27611, 1)) and (player:getItemById(27612	, 1)) and (player:getItemById(27613, 1)) then
		if (player:getStorageValue(CHEST_TO_FUNGUS) ~= 1) then 
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You discover the forth map part between the big fly agaric's gills.")
			player:setStorageValue(CHEST_TO_FUNGUS, 1)
			player:updateDreamsQuestLog(TD_THE_LAST_PART, 2)
			player:removeItem(27611, 1)
			player:removeItem(27612, 1)
			player:removeItem(27613, 1)
			player:addItem(27615, 1)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already found the map.")
		end
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You still need to have more parts of the maps.")
	end
return true
end
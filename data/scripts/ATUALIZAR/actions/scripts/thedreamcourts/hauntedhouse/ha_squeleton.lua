function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(STRICKEN_STO) == 1) then
		if (player:getStorageValue(HA_SQUELETON) < 1) then 
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a strange empty bucket.")
			player:addItem(34510, 1)
			player:setStorageValue(HA_SQUELETON, 1)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "This is empty.")
		end
	end
return true
end

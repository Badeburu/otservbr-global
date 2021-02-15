function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(TCS_MILOS_STO) == 1) then
		if (player:getStorageValue(TCS_CHEST_ONE) ~= 1) then 
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found hastily scribbled note.")
			player:addItem(30605, 1)
			player:setStorageValue(TCS_CHEST_ONE, 1)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "This is empty.")
		end
	end
return true
end

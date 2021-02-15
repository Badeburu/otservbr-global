function onUse(player, item, fromPosition, itemEx, toPosition)
	if (player:getStorageValue(TL_BONE_FIDDLE) >= 1) then
		if (player:getStorageValue(TL_PEACOCK_BALLAD) ~= 1) then
			player:addItem(32410, 1)
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found the Peacock Ballad.")
			player:setStorageValue(TL_PEACOCK_BALLAD, 1)
			return true
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The chest is empty.")
			return true
		end
	end
return true
end

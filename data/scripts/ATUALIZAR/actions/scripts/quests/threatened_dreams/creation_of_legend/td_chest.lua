function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(TD_ALKESTIOS_STO) == 1) then
		if (player:getStorageValue(TD_CHEST_ONE) ~= 1) then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a book with old legends.")
			player:addItem(28596, 1)
			player:setStorageValue(TD_CHEST_ONE, 1)
			player:setStorageValue(TD_AHMET_STO, 1)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The chest is empty.")
		end
	end
return true
end
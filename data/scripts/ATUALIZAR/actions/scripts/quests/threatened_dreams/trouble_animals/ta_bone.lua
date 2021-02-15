function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(TD_GWOLF_STO) == 1) then
		if (player:getStorageValue(TD_BONE) ~= 1) then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found notes of a poacher.")
			player:addItem(28603, 1)
			player:setStorageValue(TD_GWOLF_STO, 2)
			player:setStorageValue(TD_BONE, 1)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The pile of bones is empty.")
		end
	end
return true
end
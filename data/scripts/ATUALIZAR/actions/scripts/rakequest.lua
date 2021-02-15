function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (target.actionid == 60066 and player:getStorageValue(GS_SCRATH) == 1) then
		if (math.random(100) <= 25) then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "*scratch* *scratch*")
			player:setStorageValue(GS_SCRATH, 4)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "*scratch* *scratch*")
		end
	end
	return true
end
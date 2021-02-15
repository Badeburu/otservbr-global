function onUse(player, item, fromPosition, itemEx, toPosition)
	player:teleportTo({x = 33375, y = 31310, z = 7})
	player:getPosition():sendMagicEffect(CONST_ME_WATERSPLASH)
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your heart lightens as you return from the gloomy isle.")
return true
end
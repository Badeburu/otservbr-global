function onUse(player, item, fromPosition, itemEx, toPosition)
	if (player:getStorageValue(TCS_MILOS_STO) == 3) then
		player:teleportTo({x = 33384, y = 31289, z = 7})
		player:getPosition():sendMagicEffect(CONST_ME_WATERSPLASH)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "A small island emerges out of the mist as you row towards a tiny light inside a dark, foreholding chapel.")
	end
return true
end
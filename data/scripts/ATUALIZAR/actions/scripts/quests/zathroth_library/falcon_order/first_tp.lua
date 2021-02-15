function onUse(player, item, fromPosition, itemEx, toPosition)
	if player:getStorageValue(GRAND_CHAPLAIN_GAUNDER_K_STORAGE) ~= 1 then
		player:teleportTo({x = 33383, y = 31292, z = 7})
		player:getPosition():sendMagicEffect(CONST_ME_WATERSPLASH)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "A small island emerges out of the mist as you row towards a tiny light inside a dark, foreholding chapel.")
	end
return true
end
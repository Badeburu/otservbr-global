function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getItemCount(33264) >= 1) then
		if isInArray({Position({x = 17094, y = 16991, z = 7}), Position({x = 17095, y = 16991, z = 7}), Position({x = 17096, y = 16991, z = 7})}, player:getPosition()) then
			player:teleportTo({x = 17095, y = 16989, z = 7})
			player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
		else
			player:teleportTo({x = 17095, y = 16991, z = 7})
			player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
		end
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The door seems to be locked, you need to have a special key to enter.")
	end
return true
end
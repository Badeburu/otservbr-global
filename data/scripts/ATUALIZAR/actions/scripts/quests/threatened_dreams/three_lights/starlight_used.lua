function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	print(player:getStorageValue(ENTRANCE_FEYRIST))
	if (player:getStorageValue(ENTRANCE_FEYRIST) == 3) then 
		if (player:getStorageValue(UPDATE_STARLIGHT_2) ~= 1) then 
			if player:getPosition() == Position({x = 33529, y = 32302, z = 4}) then
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'The vial is glittering with starlight now.')
				player:getPosition():sendMagicEffect(CONST_ME_YELLOW_RINGS)
				player:setStorageValue(UPDATE_STARLIGHT_2, 1)
				item:transform(29033)
			else
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You are rubbing the opaque glass of the vial but nothing happens.')
			end
		end
	elseif (player:getStorageValue(ENTRANCE_FEYRIST) == 3) then
		if player:getPosition() == Position({x = 33529, y = 32302, z = 4}) then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'The vial is glittering with starlight now.')
			player:getPosition():sendMagicEffect(CONST_ME_YELLOW_RINGS)
			item:transform(29033)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You are rubbing the opaque glass of the vial but nothing happens.')
		end
	end
return true
end
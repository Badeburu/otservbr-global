function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(ENTRANCE_FEYRIST) == 3) then 
		if (player:getStorageValue(UPDATE_DARK_MOON_2) ~= 1) then 
			if player:getPosition() == Position({x = 33524, y = 32212, z = 7}) then
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'The mirror is shining with moonlight now.')
				player:getPosition():sendMagicEffect(CONST_ME_YELLOW_RINGS)
				player:setStorageValue(UPDATE_DARK_MOON_2, 1)
				item:transform(29031)
			else
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You are rubbing the moon-shaped frame of the mirror but nothing happens.')
			end
		end
	elseif (player:getStorageValue(ENTRANCE_FEYRIST) == 3) then 
		if player:getPosition() == Position({x = 33522, y = 32213, z = 7}) then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'The mirror is shining with moonlight now.')
			player:getPosition():sendMagicEffect(CONST_ME_YELLOW_RINGS)
			item:transform(29031)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You are rubbing the moon-shaped frame of the mirror but nothing happens.')
		end
	end
return true
end
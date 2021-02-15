function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(ENTRANCE_FEYRIST) == 3) then 
		if (player:getStorageValue(UPDATE_SUN_CATCHER_2) ~= 1) then
			if player:getPosition() == Position({x = 33515, y = 32167, z = 7}) then
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'The sun catcher shining with sunlight now.')
				player:getPosition():sendMagicEffect(CONST_ME_YELLOW_RINGS)
				player:setStorageValue(UPDATE_SUN_CATCHER_2, 1)
				item:transform(29035)
			else
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You are rubbing the gem in the sun catcher\'s centre but nothing happens.')
			end
		end
	elseif (player:getStorageValue(ENTRANCE_FEYRIST) == 3) then
		if player:getPosition() == Position({x = 33513, y = 32165, z = 7}) then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'The sun catcher shining with sunlight now.')
			player:getPosition():sendMagicEffect(CONST_ME_YELLOW_RINGS)
			item:transform(29035)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You are rubbing the gem in the sun catcher\'s centre but nothing happens.')
		end
	end
return true
end
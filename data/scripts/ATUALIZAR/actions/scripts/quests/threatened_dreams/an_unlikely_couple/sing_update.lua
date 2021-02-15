function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local magicSound = false
	
	if (player:getStorageValue(TAEGAN_QUEST) == 1) then 
		if player:getPosition() == Position({x = 33541, y = 32247, z = 7}) then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'Mysteriously some colourful music notes fall of the panpipes. - Hurry, they will fade away quickly!')
			player:setStorageValue(TAEGAN_QUEST, 2)
			player:updateDreamsQuestLog(UNLIKELY_COUPLE, 2)
			
			if (player:getStorageValue(60409) < os.time()) then
				player:addItem(29081, 1)
				player:setStorageValue(60409, os.time() + (20 * 60 * 60))
				magicSound = true
			end
		end
	end
	
	if (magicSound) then
		player:getPosition():sendMagicEffect(CONST_ME_SOUND_YELLOW)
	else
		player:getPosition():sendMagicEffect(CONST_ME_SOUND_PURPLE)
	end
return true
end
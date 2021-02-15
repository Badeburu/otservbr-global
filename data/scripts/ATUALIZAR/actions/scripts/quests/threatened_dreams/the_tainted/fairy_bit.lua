function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local fairyCount = player:getStorageValue(FAIRY_COUNT) or 0
	
	if (player:getStorageValue(FAIRY_QUEST) >= 1) then 
		if isInArray({FAIRY_LIBERTY_ONE, FAIRY_LIBERTY_TWO, FAIRY_LIBERTY_THREE, FAIRY_LIBERTY_FOUR, FAIRY_LIBERTY_FIVE}, item:getActionId()) then
			if (player:getStorageValue(item:getActionId()) ~= 1) then
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'My tainted sibling locked me up in the dark far too long. Now i\'m finally free! Thank you, mortal being!')
				item:getPosition():sendMagicEffect(CONST_ME_POFF)
				item:transform(29049)
				item:decay()
				player:setStorageValue(item:getActionId(), 1)
				player:setStorageValue(FAIRY_COUNT, fairyCount + 1)
			else
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You already freed this fairy, this is just an illusion for the tainted '..fairyCount..'.')
			end
		end
	end
return true
end

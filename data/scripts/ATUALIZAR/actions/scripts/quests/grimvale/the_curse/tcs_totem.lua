function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(TCS_MILOS_STO) ~= 4) then 
		return true
	end
	
	if player:isInsidePosition(Position(33671, 31624, 7), Position(33676, 31628, 7)) then
		if (player:getStorageValue(TCS_TOTEM_ONE) ~= 1) then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You remove the curse that was put on this statue.')
			player:setStorageValue(TCS_TOTEM_ONE, 1)
			player:setStorageValue(TCS_TOTEM_COUNT, player:getStorageValue(TCS_TOTEM_COUNT) + 1)
			player:getPosition():sendMagicEffect(CONST_ME_HOLYAREA)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You already removed the curse that was put on this statue.')
		end
	elseif player:isInsidePosition(Position(32947, 31486, 6), Position(33676, 31628, 6)) then
		if (player:getStorageValue(TCS_TOTEM_TWO) ~= 1) then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You remove the curse that was put on this statue.')
			player:setStorageValue(TCS_TOTEM_TWO, 1)
			player:setStorageValue(TCS_TOTEM_COUNT, player:getStorageValue(TCS_TOTEM_COUNT) + 1)
			player:getPosition():sendMagicEffect(CONST_ME_HOLYAREA)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You already removed the curse that was put on this statue.')
		end
	elseif player:isInsidePosition(Position(32806, 32581, 7), Position(32812, 32586, 7)) then
		if (player:getStorageValue(TCS_TOTEM_THREE) ~= 1) then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You remove the curse that was put on this statue.')
			player:setStorageValue(TCS_TOTEM_THREE, 1)
			player:setStorageValue(TCS_TOTEM_COUNT, player:getStorageValue(TCS_TOTEM_COUNT) + 1)
			player:getPosition():sendMagicEffect(CONST_ME_HOLYAREA)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You already removed the curse that was put on this statue.')
		end
	else
		player:getPosition():sendMagicEffect(73)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'May you be blessed by the Benevolent Sun!')
	end
return true
end
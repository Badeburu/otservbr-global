function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(DCS_VANYS_STO) == 1) or (player:getStorageValue(DCS_UNDAL_STO) == 1) then 
		if (item:getId() == 35331) then
			if isInArray({DC_STONE_ONE, DC_STONE_TWO, DC_STONE_THREE, DC_STONE_FOUR,DC_STONE_FIVE, DC_STONE_SIX, DC_STONE_SEVEN, DC_STONE_EIGHT}, target:getActionId()) then
				if (player:getStorageValue(target:getActionId()) ~= 1) then
					player:setStorageValue(target:getActionId(), 1)
					
					if (target:getId() == 34536) then
						local stoneCountIce = player:getStorageValue(DC_STONEW_COUNT) or 0
							
						player:setStorageValue(DC_STONEW_COUNT, stoneCountIce + 1)
						player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'Your charge the winter ward stone and the engraved ice crystal glows in a blue light.')
					else
						local stoneCountSummer = player:getStorageValue(DC_STONES_COUNT) or 0
						
						player:setStorageValue(DC_STONES_COUNT, stoneCountuSummer + 1)
						player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'Your charge the summer ward stone and the engraved sun glows in a golden light.')
					end	
				else
					player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have already loaded this stone with power ')
				end
			end
		end
	end
return true
end



function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (target:getId() == 2605) then
		if isInArray({MT_YELLOW_STONE, MT_GREEN_STONE, MT_RED_STONE}, target:getActionId()) then
			if target:getActionId() == MT_STONE_STO[item:getId()] then
				if (player:getStorageValue(MT_STONE_STO[item:getId()]) >= 1) then
					item:remove()
					player:setStorageValue(MT_STONE_STO[item:getId()], 1)
					player:getPosition():sendMagicEffect(CONST_ME_SOUND_BLUE)
					player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You've set the crystal correctly.")
				else
					player:getPosition():sendMagicEffect(CONST_ME_POFF)
				end
			end
		end
	end
return true
end
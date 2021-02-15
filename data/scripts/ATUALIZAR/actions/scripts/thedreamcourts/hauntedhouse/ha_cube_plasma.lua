function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(ALL_QUEST) == 1) then
		if (target:getId() == 34510) then
			if (target:getActionId() == 34505) then
				player:setStorageValue(HA_PLASMA_RDM, math.max(1, 5))
				if (player:getStorageValue(HA_PLASMA_RDM) == 1) or (player:getStorageValue(HA_PLASMA_RDM) == 2) or (player:getStorageValue(HA_PLASMA_RDM) == 3) then
					player:getItemById(34510):transform(34507)
					player:getPosition():sendMagicEffect(CONST_ANI_GREENSTAR)
					player:say("Success!!", TALKTYPE_MONSTER_SAY)
					-- player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You've set the crystal correctly.")
				else 
					player:say("Failure!!", TALKTYPE_MONSTER_SAY)
				end
			end
		elseif(target:getId() == 34507) then
			if (target:getActionId() == 34505) then
				player:setStorageValue(HA_PLASMA_RDM, math.max(1, 5))
				if (player:getStorageValue(HA_PLASMA_RDM) == 2) or (player:getStorageValue(HA_PLASMA_RDM) == 3) then
					player:getItemById(34507):transform(34508)
					player:getPosition():sendMagicEffect(CONST_ANI_GREENSTAR)
					player:say("Success!!", TALKTYPE_MONSTER_SAY)
					-- player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You've set the crystal correctly.")
				else 
					player:say("Failure!!", TALKTYPE_MONSTER_SAY)
				end
			end
		elseif (target:getId() == 34508) then
			if (target:getActionId() == 34505) then
				player:setStorageValue(HA_PLASMA_RDM, math.max(1, 5))
				if (player:getStorageValue(HA_PLASMA_RDM) == 2) or (player:getStorageValue(HA_PLASMA_RDM) == 3) then
					player:getItemById(34508):transform(34509)
					player:getPosition():sendMagicEffect(CONST_ANI_GREENSTAR)
					player:say("Success!!", TALKTYPE_MONSTER_SAY)
					-- player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You've set the crystal correctly.")
				else 
					player:say("Failure!!", TALKTYPE_MONSTER_SAY)
				end
			end
		end
	end
return true
end
function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	if (player:getStorageValue(TD_GWOLF_STO) == 2) then 
		if (target:getId() == 28598) then 
			if (target:getActionId() == TD_ESTATUE) then
				item:remove(1)
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You place the whelp fur in the stone's mouthand thus lay it to rest")
				player:updateDreamsQuestLog(TROUBLED_STORAGE, 8)
				player:setStorageValue(TD_GWOLF_STO, 3)
				player:getPosition():sendMagicEffect(CONST_ME_YELLOW_RINGS)
			end
		end
	end
	
return true
end
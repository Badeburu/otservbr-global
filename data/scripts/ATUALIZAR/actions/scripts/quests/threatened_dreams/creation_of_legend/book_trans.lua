function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(TD_AHMET_STO) == 2) then 
		if (target:getId() == 13805) then 
			if (target:getActionId() == TD_BOOK_WOL) and (player:getStorageValue(TROUBLED_STORAGE) < 2) then 
				item:remove(28596, 1)
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You are placing the book on the table, hopefully the poachers will discover it soon.")
				-- player:getPosition():sendMagicEffect(CONST_ME_YELLOW_RINGS)
				player:setStorageValue(TD_ALKESTIOS_STO, 2)
				player:updateDreamsQuestLog(TROUBLED_STORAGE, 2)
			end
		end
	end

return true
end
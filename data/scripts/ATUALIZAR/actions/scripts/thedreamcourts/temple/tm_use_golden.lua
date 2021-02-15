function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(ALL_QUEST) == 2) then 
		if (player:getStorageValue(TM_GOLD_STO_1) < 1) then 
			if target:getId() == 33938 then 
				if (target:getActionId() == FLOOR_ONE) then
					player:setStorageValue(TM_GOLD_STO_1, 1)
				end
			end
		end
		if (player:getStorageValue(TM_GOLD_STO_2) < 1) then
			if target:getId() == 33938 then 
				if (target:getActionId() == FLOOR_TWO) then
					player:setStorageValue(TM_GOLD_STO_2, 1)
				end
			end
		end
		if (player:getStorageValue(TM_GOLD_STO_3) < 1) then
			if target:getId() == 33938 then 
				if (target:getActionId() == FLOOR_THREE) then
					player:setStorageValue(TM_GOLD_STO_3, 1)
				end
			end
		end
		if (player:getStorageValue(TM_GOLD_STO_4) < 1) then
			if target:getId() == 33938 then 
				if (target:getActionId() == FLOOR_FOUR) then
					player:setStorageValue(TM_GOLD_STO_4, 1)
				end
			end
		end
		if (player:getStorageValue(TM_GOLD_STO_1) == 1) and (player:getStorageValue(TM_GOLD_STO_2) == 1) and (player:getStorageValue(TM_GOLD_STO_3) == 1) and (player:getStorageValue(TM_GOLD_STO_4) == 1) then 
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Replacing the idols feeds the portal but does not free one from sacrilege of talking them away from tukh!") 
		player:setStorageValue(TM_USE_GOLDEN, 1)
		end
		
	end	
return true
end
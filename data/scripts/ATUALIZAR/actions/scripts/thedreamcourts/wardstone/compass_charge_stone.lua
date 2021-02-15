function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if  (player:getStorageValue(ALL_QUEST) < 1) then 
		if (player:getStorageValue(UR_ANDREW_STO) == 3) then 
			if (target:getId() == 34491) then 
				if (target:getActionId() == 34534) then
					player:getItemById(34494):transform(34491)
					player:setStorageValue(ALL_QUEST, 1)
				end
			end
		end
	end	
return true
end
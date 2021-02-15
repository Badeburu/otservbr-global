function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if  (player:getStorageValue(KEYS_COFFIN_ONE) < 1) then 
		if (target:getId() == NORMAL_SKULL) then 
			if (target:getActionId() == COFFIN_MID) then
				if player:getItemById(ANATOMY_BOOK, 1) then 
					item:remove()
					player:setStorageValue(KEYS_COFFIN_TWO, 1)
					player:setStorageValue(KEYS_CHAMP_BATTLE, 1)
				end
			end
		end
	elseif (player:getStorageValue(KEYS_COFFIN_TWO) < 1) and (player:getStorageValue(KEYS_COFFIN_ONE) == 1) and (player:getStorageValue(KEYS_COFFIN_THREE) == 1)  then 
		if (target:getId() == NORMAL_SKULL) then 
			if (target:getActionId() == COFFIN_MID) then
				if player:getItemById(ANATOMY_BOOK, 1) then 
					item:remove()
					player:setStorageValue(KEYS_COFFIN_TWO, 1)
					player:setStorageValue(KEYS_CHAMP_BATTLE, 1)
				end
			end
		end
	end	
return true
end
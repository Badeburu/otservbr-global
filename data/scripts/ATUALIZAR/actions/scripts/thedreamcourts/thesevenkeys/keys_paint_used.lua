function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if  (player:getStorageValue(KEYS_PAINT_USED) < 1) then 
		if (target:getId() == MAGICAL_PAINT) then 
			if (target:getActionId() == WALL) then
					player:getItemById():transform()
					player:setStorageValue(KEYS_PAINT_USED, 1)
			end
		end
	end	
return true
end
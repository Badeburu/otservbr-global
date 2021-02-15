function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(KEYS_PICK_ROSEBUESH) < 1) then 
		player:addItem(ROSEBUSH, 1)	
		player:setStorageValue(KEYS_PICK_ROSEBUESH, 1)
	end
return true
end


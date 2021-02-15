function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(KEYS_PICK_MINOTAUR) < 1) then 
		player:addItem(MINOTAUR_SKULL, 1)	
		player:setStorageValue(KEYS_PICK_MINOTAUR, 1)
	end
return true
end


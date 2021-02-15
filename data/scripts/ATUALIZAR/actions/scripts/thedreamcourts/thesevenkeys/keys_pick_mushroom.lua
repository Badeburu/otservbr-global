function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(KEYS_MUSHROOM) < 1) then 
		player:addItem(COLOURFUL_MOSHROOM, 2)	
		player:setStorageValue(KEYS_MUSHROOM, 1)
	end
return true
end


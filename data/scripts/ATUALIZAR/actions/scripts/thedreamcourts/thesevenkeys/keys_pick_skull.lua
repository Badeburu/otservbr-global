function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (geStorageValue(KEYS_PICK_SKULL) < 1) then
		player:addItem(TROLL_SKULL, 1)
		setStorageValue(KEYS_PICK_SKULL, 1)
	else
	end
return true
end


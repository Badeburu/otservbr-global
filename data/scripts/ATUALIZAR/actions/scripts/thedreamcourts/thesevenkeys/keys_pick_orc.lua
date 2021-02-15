function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (geStorageValue(KEYS_PICK_ORCS) < 1) then
		player:addItem(ORC_SKULL, 1)
		setStorageValue(KEYS_PICK_ORCS, 1)
	else
	end
return true
end


function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (geStorageValue(KEYS_PICK_BOOK) < 1) then
		player:addItem(ANATOMY_BOOK, 1)
		setStorageValue(KEYS_PICK_BOOK, 1)
	else
	end
return true
end


function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (target:getId() == 32623) then
		target:remove()
		item:transform(32408)
		item:decay()
		-- player:setStorageValue(MT_, 1)
	end
return true
end
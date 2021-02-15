function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(MT_RUBY_FIRESTONE) < os.time()) then
		player:addItem(32409, 1)
		player:setStorageValue(MT_RUBY_FIRESTONE, os.time() + 120)
		
		if (item:getId() == 10029) then
			item:transform(item:getId() + 1)
		else	
			item:transform(item:getId() - 1)
		end
	end
return true
end
function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(MT_GARETH_STO) == 3) then
		player:setStorageValue(MT_GARETH_STO, 4)
		if (item:getId() == 10029) then
			item:transform(item:getId() + 1)
		else	
			item:transform(item:getId() - 1)
		end
	elseif (player:getStorageValue(MT_GARETH_STO) == 4) then
		player:setStorageValue(MT_GARETH_STO, 3)
		if (item:getId() == 10029) then
			item:transform(item:getId() + 1)
		else	
			item:transform(item:getId() - 1)
		end
	end
return true
end
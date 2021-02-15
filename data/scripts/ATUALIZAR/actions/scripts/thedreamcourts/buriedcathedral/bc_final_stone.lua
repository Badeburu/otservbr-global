function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if  (player:getStorageValue(BC_FACELESS_BANE) == 1) then 
		item:transform(STONE_CHARGUE)
		item:decay()
		player:setStorageValue(ALL_QUEST, 5)
	end	
return true
end
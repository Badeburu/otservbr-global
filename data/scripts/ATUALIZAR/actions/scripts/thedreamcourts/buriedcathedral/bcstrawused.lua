function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if  (player:getStorageValue(BC_STRAW_USED) < 1) then 
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "This end of the bed has a stack of notes hidden unter it. There is only one word on all of them: 'T'sough'.")
		player:setStorageValue(BC_STRAW_USED, 1)
		if (player:getStorageValue(BC_TIED_THREE) < 1) and (player:getStorageValue(BC_BARREL_USED) == 1) and (player:getStorageValue(BC_STATUE_USED) == 1) and (player:getStorageValue(BC_STRAW_USED) == 1) and (player:getStorageValue(BC_POOL_USED) == 1) then
			player:addItem(TIED_THE_KNOT, 1)
			playersetStorageValue(BC_TIED_THREE, 1)
			playersetStorageValue(BC_BIG_BOOKS, 1)
		end
	end	
return true
end
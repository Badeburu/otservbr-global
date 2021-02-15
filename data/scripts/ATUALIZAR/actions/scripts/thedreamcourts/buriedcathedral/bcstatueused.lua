function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if  (player:getStorageValue(BC_STATUE_USED) < 1) then 
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "This statue has a word written on her hand: 'N'ogalu'.")
		player:setStorageValue(BC_STATUE_USED, 1)
		if (player:getStorageValue(BC_TIED_TWO) < 1) and (player:getStorageValue(BC_BARREL_USED) == 1) and (player:getStorageValue(BC_STATUE_USED) == 1) and (	player:getStorageValue(BC_STRAW_USED) == 1) and (player:getStorageValue(BC_POOL_USED) == 1) then
			player:addItem(TIED_THE_KNOT, 1)
			playersetStorageValue(BC_TIED_TWO, 1)
			playersetStorageValue(BC_BIG_BOOKS, 1)
		end	
	end	
return true
end
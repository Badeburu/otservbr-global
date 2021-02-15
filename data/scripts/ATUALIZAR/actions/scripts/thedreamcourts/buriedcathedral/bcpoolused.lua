function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if  (player:getStorageValue(BC_POOL_USED) < 1) then 
		if (target:getId() == ACID_POOL) then 
			if (target:getActionId() == ACID_RESISTANT_FISHING_ROD) then
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You daret not touch these remains. A word has been carved into these bones over and over: 'K'muuh'.")
				player:setStorageValue(BC_POOL_USED, 1)
				if (player:getStorageValue(BC_TIED_FOUR) < 1) and (player:getStorageValue(BC_BARREL_USED) == 1) and (player:getStorageValue(BC_STATUE_USED) == 1) and (player:getStorageValue(BC_STRAW_USED) == 1) and (player:getStorageValue(BC_POOL_USED) == 1) then
					player:addItem(TIED_THE_KNOT, 1)
					playersetStorageValue(BC_TIED_FOUR, 1)
					playersetStorageValue(BC_BIG_BOOKS, 1)
				end
			end
		end
	end	
return true
end
function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (item:getId() == 30680) then 
		if (target:getId() == 23942) then 
			item:remove(1)
			player:addItem(30682, 1)
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You grind the silver nuggets into fine, shimmering dust.")
			player:getPosition():sendMagicEffect(4)
		end
	elseif (item:getId() == 30679) then 
		if (target:getId() == 23942) then 
			item:remove(1)
			player:addItem(30681, 1)
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You grind the gold nuggets into fine, shimmering dust.")
			player:getPosition():sendMagicEffect(CONST_ME_YELLOW_RINGS)
		end
	end
return true
end
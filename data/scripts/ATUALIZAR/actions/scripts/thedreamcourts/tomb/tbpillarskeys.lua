function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(ALL_QUEST) == 3) then
		if player:getItemCount(Ornamented_Key, 2) then
			if (target:getId() == Ornamented_Key) then 
				if	(target:getActionId() == TB_PILLLARS) then
					player:teleportTo({x = 0000, y = 0000, z = 0})
					player:removeItem(Ornamented_Key, 2)
				end
			end
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You still do not have the keys to access the area.")
		end
	end
return true
end
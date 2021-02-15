function onUse(player, item, fromPosition, itemEx, toPosition)
	if item.actionid == FALCON_FOURTH_DOOR then
		if player:getStorageValue(GRAND_CANON_DOMINUS_K_STORAGE) ~= 1 then
			if item.itemid == 5132 then
				Item(item.uid):transform(item.itemid + 1)
				player:teleportTo(toPosition, true)
				return true
			elseif item.itemid == 5123 then
				Item(item.uid):transform(item.itemid + 1)
				player:teleportTo(toPosition, true)
				return true
			end
		end
	end
	
	player:sendTextMessage(19, "The door seems to be sealed against unwanted intruders.")
return true
end
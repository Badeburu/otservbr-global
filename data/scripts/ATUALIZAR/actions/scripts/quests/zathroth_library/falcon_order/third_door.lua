function onUse(player, item, fromPosition, itemEx, toPosition)
	if item.actionid == 45009 then
		if player:getStorageValue(GRAND_COMMANDER_SOEREN_K_STORAGE) ~= 1 then
			if player:getStorageValue(PRECEPTOR_LAZARE_K_STORAGE) ~= 1 then
				if item.itemid == 6261 then
					Item(item.uid):transform(item.itemid + 1)
					player:teleportTo(toPosition, true)
				end
			else
				player:sendTextMessage(19, "The door seems to be sealed against unwanted intruders.")
			end
		end
	end
return true
end

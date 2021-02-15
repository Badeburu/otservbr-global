local childrenZalamon = Action()
function childrenZalamon.onUse(player, item, fromPosition, target, toPosition, isHotkey)
		if item.itemid == 10791 or item.itemid == 5132  or item.itemid == 5123 then
			player:teleportTo(toPosition, true)
			item:transform(item.itemid + 1)
		end
	return true
end

childrenZalamon:id(5132)
childrenZalamon:id(5123)
childrenZalamon:register()
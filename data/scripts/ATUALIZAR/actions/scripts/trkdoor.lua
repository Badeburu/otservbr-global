local decayItems = {
	[12692] = 12695, [12695] = 12692,
	[12701] = 12703, [12703] = 12701,
}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	item:transform(decayItems[item.itemid])
	item:decay()
	return true

end
local function revert(position, itemId, transformId)
	local item = Tile(position):getItemById(itemId)
	if item then
		item:transform(transformId)
	end
end


function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	-- ferumbras ascendant
	if target.itemid == 35081 then
		if player:getStorageValue(0) == 0 then
			player:say('You ascended the bonfire.', TALKTYPE_MONSTER_SAY)
			item:remove()
		end
		target:transform(35082)
		toPosition:sendMagicEffect(CONST_ME_FIREAREA)
		addEvent(revert, 1 * 30 * 1000, toPosition, 35082, 35081)
		return true
	end
	return true
end

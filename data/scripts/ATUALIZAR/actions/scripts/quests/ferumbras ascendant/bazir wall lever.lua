function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if item.itemid == 10044 then
		item:transform(10045)
		return true
	end
	local wall = Tile(Position(33623, 32621, 10)):getItemById(24821)
	if wall then
		wall:getPosition():sendMagicEffect(CONST_ME_POFF)
		wall:remove()
	else
		Game.createItem(24821, 1, Position(33623, 32621, 10))
	end
	item:transform(10044)
	return true
end
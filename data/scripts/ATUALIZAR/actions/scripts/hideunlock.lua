local config = {
	bridgePositions = {
		Position(977, 1047, 6),
		Position(978, 1047, 6),
		Position(979, 1047, 6),
		Position(980, 1047, 6)
	},
	removeCreaturePosition = Position(978, 1046, 6),
	bridgeID = 422,
	waterID = 1061
}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local tile, thing, creature
	for i = 1, #config.bridgePositions do
		tile = Tile(config.bridgePositions[i])
		if tile then
			thing, creature = tile:getItemById(item.itemid == 1945 and config.waterID or config.bridgeID), tile:getTopCreature()
			if thing then
				thing:transform(item.itemid == 1945 and config.bridgeID or config.waterID)
			end

			if creature then
				creature:teleportTo(config.removeCreaturePosition)
			end
		end
	end

	item:transform(item.itemid == 1945 and 1946 or 1945)
	return true
end

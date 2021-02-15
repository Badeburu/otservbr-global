local config = {
	bridgePositions = {
		Position(32310, 31863, 7),
		Position(32311, 31863, 7)
	},
	removeCreaturePosition = Position(32310, 31865, 7),
	bridgeID = 17737,
	waterID = 9043
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

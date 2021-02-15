local config = {
	bridgePositions = {
		Position(17082, 16828, 6),
		Position(17083, 16828, 6)
	},
	removeCreaturePosition = Position(978, 1046, 6),
	bridgeID = 8276,
	waterID = 9067
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

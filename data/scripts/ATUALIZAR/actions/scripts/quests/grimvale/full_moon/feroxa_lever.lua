local minY = 31574
local maxY = 31578
local finalTiles = {
	[1] = Position({x = 33446, y = 31574, z = 11}),
	[2] = Position({x = 33447, y = 31575, z = 11}),
	[3] = Position({x = 33448, y = 31576, z = 11}),
	[4] = Position({x = 33449, y = 31575, z = 11}),
	[5] = Position({x = 33450, y = 31574, z = 11}),
}

local function getCorrectMoonTiles()
	local countFinal = 0
	
	for i = 1, #finalTiles do
		if Tile(finalTiles[i]):getItemById(457) then
			countFinal = countFinal + 1
		end
	end
return countFinal
end

local function getTile_yPosition(xPos)
	for i = minY, maxY do
		if Tile({x = xPos, y = i, z = 11}):getItemById(457) then
			return i
		end
	end
end

local function resetMoonPuzzle()
	Tile(33447, 31575, 11):getItemById(457):transform(424)
	Tile(33447, 31574, 11):getItemById(424):transform(457)
	
	Tile(33448, 31576, 11):getItemById(457):transform(424)
	Tile(33448, 31574, 11):getItemById(424):transform(457)
	
	Tile(33449, 31575, 11):getItemById(457):transform(424)
	Tile(33449, 31574, 11):getItemById(424):transform(457)
	
	-- Final --
	Position(33446, 31574, 11):sendMagicEffect(73)
	Position(33447, 31574, 11):sendMagicEffect(73)
	Position(33448, 31574, 11):sendMagicEffect(73)
	Position(33449, 31574, 11):sendMagicEffect(73)
	Position(33450, 31574, 11):sendMagicEffect(73)
return true
end

function onUse(player, item, fromPosition, target, toPosition, isHotkey)	
	if (player:getStorageValue(FEROXA_PREPARED) == 1) then
		return true 
	end
	
	if isInArray({COR_LEVER_ONE, COR_LEVER_TWO, COR_LEVER_THREE, COR_LEVER_FOUR, COR_LEVER_FIVE}, item:getActionId()) then
		if (getCorrectMoonTiles() == 5) then
			resetMoonPuzzle()
			player:setStorageValue(FEROXA_PREPARED, 1)
			player:say('*click*', TALKTYPE_MONSTER_SAY, false, 0, Position(33448, 31576, 11))
		return true
		end
		
		if (getTile_yPosition(item:getPosition().x) >= minY) and (getTile_yPosition(item:getPosition().x) < maxY) then
			Tile({x = item:getPosition().x, y = getTile_yPosition(item:getPosition().x) + 1, z = 11}):getItemById(424):transform(457)
			Tile({x = item:getPosition().x, y = getTile_yPosition(item:getPosition().x), z = 11}):getItemById(457):transform(424)
		elseif (getTile_yPosition(item:getPosition().x) == maxY) then
			Tile({x = item:getPosition().x, y = maxY, z = 11}):getItemById(457):transform(424)
			Tile({x = item:getPosition().x, y = minY, z = 11}):getItemById(424):transform(457)
		end
	end
	
	if (item:getId() == 10044) then
		item:transform(item:getId() + 1)
	else
		item:transform(item:getId() - 1)
	end
return true
end
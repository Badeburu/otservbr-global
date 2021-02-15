local config = {
	requiredLevel = 100,
	daily = true,
	centerDemonRoomPosition = Position(33699, 31137, 7),
	playersPositions = {
		Position(33736, 31167, 7),
		Position(33736, 31168, 7),
		Position(33736, 31169, 7),
		Position(33736, 31170, 7),
		Position(33736, 31171, 7)
},
	newPositions = {
		Position(33685, 31134, 6),
		Position(33685, 31135, 6),
		Position(33685, 31136, 6),
		Position(33685, 31137, 6),
		Position(33685, 31138, 6)
	},
	
}


function onUse(players, item, fromPosition, target, toPosition, monster, isHotkey)
	if item.itemid == 1945 then
		local storePlayers, playersTile = {}
		for i = 1, #config.playersPositions do
			playersTile = Tile(config.playersPositions[i]):getTopCreature()
			--if not playersTile or not playersTile:isPlayer() then
				--players:sendTextMessage(MESSAGE_STATUS_SMALL, "You need 5 players.")
				--return true
			--end
			
			--if playerTile:getLevel() < config.requiredLevel then
				--player:sendTextMessage(MESSAGE_STATUS_SMALL, "All the players need to be level ".. config.requiredLevel .." or higher.")
				--return true
			--end
		
			storePlayers[#storePlayers + 1] = playersTile
		end

		local specs, spec = Game.getSpectators(config.centerDemonRoomPosition, false, false, 20, 20, 20, 20)
		for i = 1, #specs do
			spec = specs[i]
			if spec:isPlayer() then
				players:sendTextMessage(MESSAGE_STATUS_SMALL, "A team is already inside the quest room.")
				return true
			end

			spec:remove()
		end
		
		local players
		local monster = Game.createMonster("frozen percht queen", Position(33699, 31125, 7))
		for i = 1, #storePlayers do
			players = storePlayers[i]
		
			if (players:getStorageValue(Storage.percht.killp) > os.time()) and player:getStorageValue(PERCHT_STORAGE) >= 1 then
				players:sendTextMessage(MESSAGE_STATUS_SMALL, "You did this boss before 20 hours.")
				players:say("Someone already did this room before 20 hours!", TALKTYPE_MONSTER_SAY)
				return true
			end
		end
		
		
		for i = 1, #storePlayers do
			if (players:getStorageValue(Storage.percht.killp) < os.time()) then
				players = storePlayers[i]
				config.playersPositions[i]:sendMagicEffect(CONST_ME_POFF)
				players:teleportTo(config.newPositions[i])
				config.newPositions[i]:sendMagicEffect(CONST_ME_ENERGYAREA)
				players:setDirection(DIRECTION_NORTH)
				players:setStorageValue(Storage.percht.killp, os.time() + 20 * 60 * 60)
				players:setStorageValue(PERCHT_STORAGE, 1)
				addEvent(function() kickBossRoom(players.uid, config.centerDemonRoomPosition, 15, Position(33755, 31159, 7)) end, 20 * 60 * 1000)
			end
		end
		
			elseif item.itemid == 1945 then
		if config.daily then
			players:sendTextMessage(MESSAGE_STATUS_SMALL, Game.getReturnMessage(RETURNVALUE_NOTPOSSIBLE))
			return true
		end
	end

	item:transform(item.itemid == 1945 and 1946 or 1945)
	return true
end
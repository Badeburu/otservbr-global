local config = {
	requiredLevel = 100,
	daily = true,
	centerDemonRoomPosition = Position(33617, 32561, 13),
	playersPositions = {
		Position(33638, 32562, 13),
		Position(33639, 32562, 13),
		Position(33640, 32562, 13),
		Position(33641, 32562, 13),
		Position(33642, 32562, 13)
},
	newPositions = {
		Position(33615, 32567, 13),
		Position(33616, 32567, 13),
		Position(33617, 32567, 13),
		Position(33618, 32567, 13),
		Position(33619, 32567, 13)
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

		local specs, spec = Game.getSpectators(config.centerDemonRoomPosition, false, false, 13, 13, 13, 13)
		for i = 1, #specs do
			spec = specs[i]
			if spec:isPlayer() then
				players:sendTextMessage(MESSAGE_STATUS_SMALL, "A team is already inside the quest room.")
				return true
			end

			spec:remove()
		end
		
		local players
		local monster = Game.createMonster("faceless bane", Position(33617, 32558, 13))
		monster:setReward(true)
		for i = 1, #storePlayers do
			players = storePlayers[i]
		
			if (players:getStorageValue(Storage.faceless.killface) >= os.time()) then
			if (players:getStorageValue(FACELESS_STORAGE) >= 1) then
				players:sendTextMessage(MESSAGE_STATUS_SMALL, "You did this boss before 1 hours.")
				players:say("Someone already did this room before 1 hours!", TALKTYPE_MONSTER_SAY)
				return true
			end
		end
	end
		
		
		for i = 1, #storePlayers do
			players = storePlayers[i]
			config.playersPositions[i]:sendMagicEffect(CONST_ME_POFF)
			players:teleportTo(config.newPositions[i])
			config.newPositions[i]:sendMagicEffect(CONST_ME_ENERGYAREA)
			players:setDirection(DIRECTION_NORTH)
			players:setStorageValue(Storage.faceless.killface, os.time() + 1 * 60 * 60)
			players:setStorageValue(FACELESS_STORAGE, 1)
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
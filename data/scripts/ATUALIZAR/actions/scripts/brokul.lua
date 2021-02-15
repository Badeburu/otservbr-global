local config = {
	requiredLevel = 250,
	daily = true,
	centerDemonRoomPosition = Position(33487, 31441, 15),
	playersPositions = {
		Position(33522, 31465, 15), -- Posição dos players 1,2,3,4,5
		Position(33523, 31465, 15),
		Position(33524, 31465, 15),
		Position(33521, 31465, 15),
		Position(33520, 31465, 15)
},
	newPositions = {
		Position(33488, 31447, 15),
		Position(33488, 31447, 15),
		Position(33488, 31447, 15),
		Position(33488, 31447, 15),
		Position(33488, 31447, 15)
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

		local specs, spec = Game.getSpectators(config.centerDemonRoomPosition, false, false, 12, 12, 12, 12)
		for i = 1, #specs do
			spec = specs[i]
			if spec:isPlayer() then
				players:sendTextMessage(MESSAGE_STATUS_SMALL, "A team is already inside the quest room.")
				return true
			end

			spec:remove()
		end
		
		local players
		local monster = Game.createMonster("Brokul", Position(33487, 31441, 15))
		monster:setReward(true)
		for i = 1, #storePlayers do
			players = storePlayers[i]
		
			if (players:getStorageValue(Storage.brokul.killb) >= os.time()) then
			if (players:getStorageValue(BROKUL_STORAGE) >= 1) then
				players:sendTextMessage(MESSAGE_STATUS_SMALL, "You did this boss before 20 hours.")
				players:say("Someone already did this room before 20 hours!", TALKTYPE_MONSTER_SAY)
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
			players:setStorageValue(Storage.brokul.killb, os.time() + 20 * 60 * 60)
			players:setStorageValue(BROKUL_STORAGE, 1)
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
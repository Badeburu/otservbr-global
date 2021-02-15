local config = {
	centerRoom = Position(33377, 31311, 9),
	BossPosition = Position(33377, 31311, 9),
	newPosition = Position(33376, 31315, 9)
}

local function clearForgottenOberon()
	local spectators = Game.getSpectators(config.centerRoom, false, false, 15, 15, 15, 15)
	for i = 1, #spectators do
		local spectator = spectators[i]
		if spectator:isPlayer() then
			spectator:teleportTo(Position(33310, 31277, 9))
			spectator:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			spectator:say('Time out! You were teleported out by strange forces.', TALKTYPE_MONSTER_SAY)
		elseif spectator:isMonster() then
			spectator:remove()
		end
	end
	Game.setStorageValue(GlobalStorage.ForgottenKnowledge.OberonTimer, 0)
end

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if item.itemid == 9825 then
		if player:getPosition() ~= Position(33371, 31334, 9) then
			item:transform(9826)
			return true
		end
	end
	if item.itemid == 9825 then
		if Game.getStorageValue(GlobalStorage.ForgottenKnowledge.OberonTimer) >= 1 then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You need to wait a while, recently someone challenge Oberon.")
			return true
		end
		local specs, spec = Game.getSpectators(config.centerRoom, false, false, 15, 15, 15, 15)
		for i = 1, #specs do
			spec = specs[i]
			if spec:isPlayer() then
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Someone is fighting with Grand Master Oberon.")
				return true
			end
		end
		Game.createMonster("grand master oberon", config.BossPosition, true, true)
		for x = 33369, 33373 do
			local playerTile = Tile(Position(x, 31334, 9)):getTopCreature()
			if playerTile and playerTile:isPlayer() then
				playerTile:getPosition():sendMagicEffect(CONST_ME_POFF)
				playerTile:teleportTo(config.newPosition)
				playerTile:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
				playerTile:setExhaustion(Storage.ForgottenKnowledge.OberonTimer, 20 * 60 * 60)
			end
		end
		Game.setStorageValue(GlobalStorage.ForgottenKnowledge.OberonTimer, 1)
		addEvent(clearForgottenOberon, 30 * 60 * 1000)
		item:transform(9826)
		elseif item.itemid == 9826 then
		item:transform(9825)
	end
	return true
end
		
		
		
		
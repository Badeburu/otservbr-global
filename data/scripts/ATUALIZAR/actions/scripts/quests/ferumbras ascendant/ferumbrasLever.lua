
local config = {
    duration = 288, -- time till reset, in minutes
    level_req = 1, -- minimum level to do quest
    min_players = 1, -- minimum players to join quest
    timeStorage = 552, -- id of lever before pulled
    pulled_id = 1946 -- id of lever after pulled
}

local player_positions = {
    [1] = {fromPos = Position(33269, 31477, 14), toPos = Position(33392, 31479, 14)},
	[2] = {fromPos = Position(33269, 31478, 14), toPos = Position(33392, 31479, 14)},
	[3] = {fromPos = Position(33269, 31479, 14), toPos = Position(33392, 31479, 14)},
	[4] = {fromPos = Position(33269, 31480, 14), toPos = Position(33392, 31479, 14)},
	[5] = {fromPos = Position(33269, 31481, 14), toPos = Position(33392, 31479, 14)},
	[6] = {fromPos = Position(33270, 31477, 14), toPos = Position(33392, 31479, 14)},
	[7] = {fromPos = Position(33270, 31478, 14), toPos = Position(33392, 31479, 14)},
	[8] = {fromPos = Position(33270, 31479, 14), toPos = Position(33392, 31479, 14)},
	[9] = {fromPos = Position(33270, 31480, 14), toPos = Position(33392, 31479, 14)},
	[10] = {fromPos = Position(33270, 31481, 14), toPos = Position(33392, 31479, 14)},
	[11] = {fromPos = Position(33271, 31477, 14), toPos = Position(33392, 31479, 14)},
	[12] = {fromPos = Position(33271, 31478, 14), toPos = Position(33392, 31479, 14)},
	[13] = {fromPos = Position(33271, 31479, 14), toPos = Position(33392, 31479, 14)},
	[14] = {fromPos = Position(33271, 31480, 14), toPos = Position(33392, 31479, 14)},
	[15] = {fromPos = Position(33271, 31481, 14), toPos = Position(33392, 31479, 14)}
}


local configg = {
    maxPlayers = 0,
    room = {fromPos = Position(33379, 31460, 14), toPos = Position(33406, 31486, 14)},
    
}

function boss51Area()
   Game.createMonster("Ascending Ferumbras", Position(33392, 31473, 14))
   
   for d = 1, 10 do
			Game.createMonster('rift invader', Position(math.random(33381, 33403), math.random(31462, 31483), 14), true, true)
		end
   
    return 
end

function onUse(player, item, fromPosition, target, toPosition, isHotkey)


 local left, d, h, m, s = (player:getStorageValue(config.timeStorage) - os.time()), 0, 0, 0, 0
		while left >= 86400 do
			left = left - 86400
			d = d+1
		end
		while left >= 3600 do
			left = left - 3600
			h = h + 1
		end
		while left >= 60 do
			left = left - 60
			m = m + 1
		end
		while left >= 1 do
			left = left - 1
			s = s+1
		end



local function getPlayersInArea(fromPos, toPos)
    local players, playerss = {}, Game.getPlayers()
    for i = 1, #playerss do
        local player = playerss[i]
        if isInRange(player:getPosition(), fromPos, toPos) then
            table.insert(players, player)
        end
    end
    return players
end




if #getPlayersInArea(configg.room.fromPos, configg.room.toPos) > configg.maxPlayers then
        player:sendTextMessage(MESSAGE_STATUS_CONSOLE_ORANGE, 'Wait for the team to leave the room.')
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
        return true
    end	



    local participants, pull_player = {}, false
    for i = 1, #player_positions do
        local fromPos = player_positions[i].fromPos
        local tile = Tile(fromPos)
        if not tile then
            print(">> ERROR: Annihilator tile does not exist for Position(" .. fromPos.x .. ", " .. fromPos.y .. ", " .. fromPos.z .. ").")
            return player:sendCancelMessage("There is an issue with this quest. Please contact an administrator.")
        end

        local creature = tile:getBottomCreature()
        if creature then
            local participant = creature:getPlayer()
            if not participant then
                return player:sendCancelMessage(participant:getName() .. " is not a valid participant.")
            end

            if participant:getLevel() < config.level_req then
                return player:sendCancelMessage(participant:getName() .. " is not the required level.")
            end
			
			----------------------///////////////////aqui------------------
			 if participant:getStorageValue(config.timeStorage) > os.time() then
                return player:sendCancelMessage(participant:getName() .. " is currently on waiting time\n\nQuest Player Informations:\n\nThe Quest time left:\nDays: "..d.."\nHours: "..h.."\nMinutes: "..m.."\nSeconds: "..s.." .")
            end
			----------------------///////////////////aqui------------------

            if participant.uid == player.uid then
                pull_player = true
            end

            participants[#participants + 1] = {participant = participant, toPos = player_positions[i].toPos}
        end
    end

    if #participants < config.min_players then
        return player:sendCancelMessage("You do not have the required amount of participants.")
    end

    if not pull_player then
        return player:sendCancelMessage("You are in the wrong position.")
    end

  if player:getStorageValue(config.timeStorage) > os.time() then
      player:sendTextMessage(22, "VIP Player Informations:\n\nYour VIP time left:\nDays: "..d.."\nHours: "..h.."\nMinutes: "..m.."\nSeconds: "..s.."")
      return false
end


    for i = 1, #participants do
	
	
        participants[i].participant:teleportTo(participants[i].toPos)
        participants[i].toPos:sendMagicEffect(CONST_ME_TELEPORT)
		participants[i].participant:setStorageValue(config.timeStorage, os.time()+ config.duration*60*60)
		
		
    end



  addEvent(boss51Area, 500)
    cleanZone(Position(33379, 31460, 14), Position(33406, 31486, 14), true)
    return true
end
	



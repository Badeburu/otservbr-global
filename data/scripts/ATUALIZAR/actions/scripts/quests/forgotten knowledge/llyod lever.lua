
local config = {
    duration = 1, -- tiempo que dur bloqueo de la palanca ----- para otra quest
	timeStorage = 28000, -- storage que bloquea la palanca ----- para otra quest
    level_req = 10, -- minimum level to do quest
    min_players = 1, -- minimum players to join quest
    lever_id = 1945, -- id of lever before pulled
    pulled_id = 1946 -- id of lever after pulled
}

local player_positions = {
    [1] = {fromPos = Position(32759, 32868, 14), toPos = Position(32800, 32835, 14)},
	[2] = {fromPos = Position(32759, 32869, 14), toPos = Position(32800, 32835, 14)},
	[3] = {fromPos = Position(32759, 32870, 14), toPos = Position(32800, 32835, 14)},
	[4] = {fromPos = Position(32759, 32871, 14), toPos = Position(32800, 32835, 14)},
	[5] = {fromPos = Position(32759, 32872, 14), toPos = Position(32800, 32835, 14)}
}


local configg = {
    maxPlayers = 0,
    room = {fromPos = Position(32786, 32814, 14), toPos = Position(32813, 32839, 14)},
    
}

function boss2Area()
   Game.createMonster("lloyd", Position(32800, 32829, 14))
   
    return 
end

function onUse(player, item, fromPosition, target, toPosition, isHotkey)



 



---------------------///// parate para agregar a otra quest-----------------------

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

---------------------///// parate para agregar a otra quest-----------------------






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
	
	
	---------------------///// parate para agregar a otra quest-----------------------
	  if player:getStorageValue(config.timeStorage) > os.time() then
      player:sendTextMessage(22, "\n\nQuest Player Informations:\n\nThe Quest time left:\nDays: "..d.."\nHours: "..h.."\nMinutes: "..m.."\nSeconds: "..s.."")
      return false
end

  ---------------------///// parate para agregar a otra quest-----------------------

    for i = 1, #participants do
	
	
        participants[i].participant:teleportTo(participants[i].toPos)
        participants[i].toPos:sendMagicEffect(CONST_ME_TELEPORT)
		
		---------------------///// parate para agregar a otra quest-----------------------
		
		participants[i].participant:setStorageValue(config.timeStorage, os.time()+ config.duration*60*60)
		
		---------------------///// parate para agregar a otra quest-----------------------
		
    end



addEvent(boss2Area, 500)
cleanZone(Position(32786, 32814, 14), Position(32813, 32839, 14), true)
    return true
end
	



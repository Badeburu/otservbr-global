local setting = {
  monsters = {
    {"rat", "rat", "rat"},                  -- wave 1
    {"cave rat", "cave rat", "cave rat"},   -- wave 2 -- you can add infinite waves.
    {"troll", "troll", "troll"},            -- wave 3
    {"cyclops", "cyclops", "cyclops smith"} -- wave final. (boss?)
  },
  sinoPos = Position(34134, 32255, 8),
  stghp = 135472,
  teleportTimer = 1,
  spawnArea = {Position(34132, 32259, 8), Position(34138, 32267, 8)},
  timeToFightAgain = 1,
  clearRoomTime = 1, -- In hour
  centerRoom = {x = 33528, y = 32334, z = 12},
  range = 10,
  storage = Storage.PrinceDrazzakTime,
  clearRoomStorage = GlobalStorage.PrinceDrazzakEventTime,
  bossName1 = "prince drazzak",
  bossPosition1 = {x = 34143, y = 32258, z = 8},
  bossName2 = "rat",
  bossPosition2 = {x = 34143, y = 32264, z = 8}

}
local STG_HP_SINO = 135472
local STG_TP_SINO = 135473
local STG_CM_SINO = 135474
local tpmax = 0
local playerPositions = {
  {fromPos = {x = 34134, y = 32256, z = 8}, toPos = {x = 34142, y = 32258, z = 8}},
  {fromPos = {x = 34134, y = 32261, z = 8}, toPos = {x = 34142, y = 32264, z = 8}}
}
  function curseHp(cid)
    local creature = Creature(cid)
    if not creature then
        return
    end
	  local vida = creature:getHealth()
      creature:setStorageValue(STG_HP_SINO, 1)
      if creature:getStorageValue(STG_HP_SINO) <= 1 then
        creature:getPosition():sendMagicEffect(CONST_ME_MORTAREA)
        creature:addHealth(-vida*10/100)
        addEvent(curseHp, 3000, creature:getId())
		end
	  
  end
  function curseTP(cid)
    local cTP = Position(math.random(setting.spawnArea[1].x, setting.spawnArea[2].x), math.random(setting.spawnArea[1].y, setting.spawnArea[2].y), math.random(setting.spawnArea[1].z, setting.spawnArea[2].z))
	local creature = Creature(cid)
    if not creature then
        return
    end
      creature:setStorageValue(STG_TP_SINO, 1)
	 if tpmax <= 30 then
     if creature:getStorageValue(STG_TP_SINO) <= 1 then
		tpmax = tpmax + 1
		print(tpmax)
        creature:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		creature:teleportTo(cTP)
        local curseEventTP = addEvent(curseTP, 5000, creature:getId())
	end
	end
	  
  end
  
 function curseM(cid)
	local creature = Creature(cid)
    if not creature then
        return
    end
      creature:setStorageValue(STG_CM_SINO, 1)
     if creature:getStorageValue(STG_CM_SINO) <= 1 then
        creature:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		local randoms = math.random(1,2)
		local playerpos = Position(math.random(creature:getPosition().x+randoms, creature:getPosition().x), math.random(creature:getPosition().y, creature:getPosition().y+randoms), math.random(creature:getPosition().z, creature:getPosition().z))
		local monster = Game.createMonster(setting.bossName2, playerpos)
        local curseEventTP = addEvent(curseM, 5000, creature:getId())
	end	  
  end
  
local sino = Action()
function sino.onUse(player, item, fromPosition, target, toPosition, isHotkey)
local name = player:getName()
  --player:setStorageValue(STG_HP_SINO, 0)

  function countDown(uid, time) -- faz a contagem de tempo
    local msg = os.date("%M:%S", time)
    if time > 0 then
      uid:sendTextMessage(MESSAGE_EVENT_ADVANCE, msg)
      addEvent(countDown, 1000, uid, time - 1)
    end

    return true
  end

  local chance = math.random(1,10)
  print(chance)
  if chance == 5 then
    if toPosition == Position(34134, 32255, 8) then
      for i = 1, #playerPositions do
        local creature = Tile(playerPositions[i].fromPos):getTopCreature()
        if not creature then
          player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You need 5 players to fight with this boss.")
          return true
        end
      end
    end
    for i = 1, #playerPositions do
      local creature = Tile(playerPositions[i].fromPos):getTopCreature()
      if creature and creature:isPlayer() then
        --if creature:getStorageValue(setting.storage) >= os.time() then
        --creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have faced this boss in the last " .. setting.timeToFightAgain .. " hours.")
        --return true
        --end
        --if creature:getStorageValue(setting.storage) < os.time() then
        creature:setStorageValue(setting.storage, os.time() + setting.timeToFightAgain * 60 * 60)
        creature:teleportTo(playerPositions[i].toPos)
        creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "BwHahAhaHaA!.")
        creature:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
        --end
      else
        return false
      end
    end
    -- One hour for clean the room and other time goto again
    --addEvent(clearRoom, setting.clearRoomTime * 1 * 1000, setting.centerRoom,setting.range, setting.range, setting.clearRoomStorage)
    Game.createMonster(setting.bossName1, setting.bossPosition1)
    Game.createMonster(setting.bossName2, setting.bossPosition2)
    --Game.setStorageValue(setting.clearRoomStorage, 1)
    --toPosition:sendMagicEffect(CONST_ME_MORTAREA)
  else
    --countDown(player, 10)
    if chance == 3 then
	--rainbowOutfit(player, 128, 3)
    if curseHp(player) then
      player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "CURSED VIDA!")
    end
	elseif chance == 6 then
	if curseTP(player) then
      player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "CURSED TP!")
	  
    end
	else
	curseM(player)
    end
    for i = 1, 6 do
      local rPos = Position(math.random(setting.spawnArea[1].x, setting.spawnArea[2].x), math.random(setting.spawnArea[1].y, setting.spawnArea[2].y), math.random(setting.spawnArea[1].z, setting.spawnArea[2].z))
      --local monster = Game.createMonster(setting.bossName2, rPos)
      local tile = Tile(randomPosition)

      if monster then
        --monster:getPosition():sendMagicEffect(CONST_ME_MORTAREA)
      end
    end
  end
  return true
end


sino:uid(24123)
sino:register()
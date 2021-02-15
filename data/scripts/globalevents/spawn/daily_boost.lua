local daily_b = GlobalEvent("daily_b")
function daily_b.onThink(interval, lastExecution)
local BOOSTED_MONSTER = 56404
local boostedMonstersList = {"rat", "spider", "troll", "orc", "minotaur", "dwarf", "elf", "skeleton", "amazon", "valkirie", "dark apprentice", "ghoul", "cyclops", "dwarf guard", "necromancer", "vampire", "werewolf", "dragon", "dragon lord", "wyrm", "giant spider", "hydra", "warlock", "demon"}
local randomMonster = math.random(#boostedMonstersList)
setGlobalStorageValue(BOOSTED_MONSTER, randomMonster)
local spawn = {x = 32679, y = 32963, z = 7}  --  monster spawn position
       local bts = Game.createMonster(boostedMonstersList[randomMonster], spawn, true, true)
       if bts then
       	bts:say("EXP!", TALKTYPE_MONSTER_SAY)
       end
    print("Today's boosted monster is: " .. boostedMonstersList[randomMonster])
end

--daily_b:interval(10000)
--daily_b:register()
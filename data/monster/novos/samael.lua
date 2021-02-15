local mType = Game.createMonsterType("Samael")
local monster = {}

monster.description = "a samael"
monster.experience = 22880
monster.outfit = {
	lookType = 303,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}
monster.raceId = 9854 -- O id do monstro, checar anotações
monster.Bestiary = { -- Os seguintes dados não sao essenciais para este tutorial, porém é necessario fazer para funcionar corretamente dentro do jogo.
	class = "Demon", -- Nome da raça do monstro, checar anotação para saber as outras opções.
	race = BESTY_RACE_DEMON, -- ID da raça do monstro, checar anotação para saber as outras opções.
	toKill = 7, -- Quantidade de monstros mortos para liberar o monstro e poder usar uma runa de charm.
	FirstUnlock = 1, -- Quantidade de monstros mortos para desbloquear as primeiras informações do monstro na bestiary.
	SecondUnlock = 2, -- Quantidade de monstros para desbloquear todas informações do monstro na bestiary.
	CharmsPoints = 10000, -- Quantidade de pontos que o player ira receber quando alcançar a quantidade total de abates do monstro (toKill)
	Stars = 5, -- Numero de estrelas do monstro, basicamente é a dificuldade do monstro (de 1 a 5)
	Occurrence = 1, -- Dificuldade para encontrar o monstro dentro do jogo
	Locations = "Inferno" -- Descrição do monstro dentro da bestiary.
	}
monster.health = 25000
monster.maxHealth = 25000
monster.race = "blood"
monster.corpse = 9780
monster.speed = 620
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 0
}

monster.strategiesTarget = {
	nearest = 100,
	health = 100,
	damage = 100,
	random = 100,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
	pet = false
}

monster.light = {
	level = 2,
	color = 1
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Feel the heat!", yell = false},
	{text = "Hand over your life.", yell = false},
	{text = "I can give you a hand... or two.", yell = false}
}

monster.loot = {
	{name = "crystal coin", chance = 70540},
	{name = "platinum coin", chance = 95400, maxCount = 32},
	{name = "ultimate health potion", chance = 15122, maxCount = 15},
	{name = "ultimate mana potion", chance = 5150, maxCount = 15},
	{name = "ultimate spirit potion", chance = 4190, maxCount = 15},
	{id = 38771, chance = 5556}, -- Hand
	{name = "skull staff", chance = 2656},
	{name = "epee", chance = 1656},
	{name = "crystal mace", chance = 1556},
	{name = "noble axe", chance = 1556},
	{name = "spellbook of mind control", chance = 1500},
	{id = 38772, chance = 1450}, -- Head
	{name = "fire axe", chance = 1650},
	{name = "royal helmet", chance = 1700},
	{name = "mastermind shield", chance = 1450},
	{name = "assassin dagger", chance = 1490},
	{name = "butcher's axe", chance = 1750},
	{name = "jade hammer", chance = 1550},
	{name = "crystalline sword", chance = 1550},
	{name = "alloy legs", chance = 1450},
	{name = "metal bat", chance = 1350},
	{id = 26187, chance = 1692}, -- Ring of green plasma
	{id = 38860, chance = 1155}, -- Diabolic skull
	{id = 38944, chance = 5} -- Bag you desire
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -450, maxDamage = -1550},
		{name ="ice crystal bomb", interval = 2000, chance = 30, minDamage = -600, maxDamage = -1200, target = true},
	{name ="combat", interval = 2000, chance = 14, type = COMBAT_HOLYDAMAGE, minDamage = -100, maxDamage = -1700, length = 8, spread = 3, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 2000, chance = 18, type = COMBAT_PHYSICALDAMAGE, minDamage = -300, maxDamage = -1700, radius = 4, effect = CONST_ME_EXPLOSIONAREA, target = false},
	{name ="combat", interval = 2000, chance = 14, type = COMBAT_HOLYDAMAGE, minDamage = -300, maxDamage = -1700, length = 8, spread = 3, effect = CONST_ME_HOLYAREA, target = false},
		{name ="speed", interval = 2000, chance = 15, speedChange = -500, radius = 1, effect = CONST_ME_MAGIC_RED, target = true, duration = 30000}
}

monster.defenses = {
	defense = 90,
	armor = 105
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 30},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -25},
	{type = COMBAT_HOLYDAMAGE , percent = -35},
	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
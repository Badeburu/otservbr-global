local mType = Game.createMonsterType("Bosses")
local monster = {}

monster.description = "Bosses"
monster.experience = 0
monster.outfit = {
	lookType = 876,
	lookHead = 85,
	lookBody = 114,
	lookLegs = 19,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}


monster.health = 1
monster.maxHealth = 1
monster.race = "blood"
monster.corpse = 0
monster.speed = 150
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 95
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
}

monster.flags = {
	summonable = false,
	attackable = false,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 10,
	targetDistance = 2,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false,
	pet = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = 0}
}

monster.defenses = {
	defense = 999,
	armor = 999,
	{name ="combat", interval = 1000, chance = 5, type = COMBAT_HEALING, minDamage = 1500, maxDamage = 2000, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="outfit", interval = 2000, chance = 6, radius = 3, effect = CONST_ME_BLOCKHIT, target = false, duration = 6000, outfitMonster = "Alptramun"},
	{name ="outfit", interval = 2000, chance = 5, radius = 3, effect = CONST_ME_BLOCKHIT, target = false, duration = 6000, outfitMonster = "Brokul"},
	{name ="outfit", interval = 2000, chance = 6, radius = 3, effect = CONST_ME_BLOCKHIT, target = false, duration = 6000, outfitMonster = "Drume"},
	{name ="outfit", interval = 2000, chance = 5, radius = 3, effect = CONST_ME_BLOCKHIT, target = false, duration = 6000, outfitMonster = "Earl Osam"},
	{name ="outfit", interval = 2000, chance = 5, radius = 3, effect = CONST_ME_BLOCKHIT, target = false, duration = 6000, outfitMonster = "Ghulosh' Deathgaze"},
	{name ="outfit", interval = 2000, chance = 5, radius = 3, effect = CONST_ME_BLOCKHIT, target = false, duration = 6000, outfitMonster = "Izcandar the Banished"},
	{name ="outfit", interval = 2000, chance = 5, radius = 3, effect = CONST_ME_BLOCKHIT, target = false, duration = 6000, outfitMonster = "Tanjis"},
	{name ="outfit", interval = 2000, chance = 5, radius = 3, effect = CONST_ME_BLOCKHIT, target = false, duration = 6000, outfitMonster = "The Blazing Time Guardian"},
	{name ="outfit", interval = 2000, chance = 5, radius = 3, effect = CONST_ME_BLOCKHIT, target = false, duration = 6000, outfitMonster = "The Count Of The Core"},
	{name ="outfit", interval = 2000, chance = 5, radius = 3, effect = CONST_ME_BLOCKHIT, target = false, duration = 6000, outfitMonster = "The False God"},
	{name ="outfit", interval = 2000, chance = 5, radius = 3, effect = CONST_ME_BLOCKHIT, target = false, duration = 6000, outfitMonster = "The Fear Feaster"},
	{name ="outfit", interval = 2000, chance = 5, radius = 3, effect = CONST_ME_BLOCKHIT, target = false, duration = 6000, outfitMonster = "Urmahlullu the Weakened"},
	{name ="outfit", interval = 2000, chance = 5, radius = 3, effect = CONST_ME_BLOCKHIT, target = false, duration = 6000, outfitMonster = "The Sandking"}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 100},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)

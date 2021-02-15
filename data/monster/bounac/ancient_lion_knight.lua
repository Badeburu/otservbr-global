local mType = Game.createMonsterType("Ancient Lion Knight")
local monster = {}

monster.description = "a Ancient Lion Knight"
monster.experience = 8100
monster.outfit = {
	lookType = 1317,
	lookHead = 57,
	lookBody = 76,
	lookLegs = 57,
	lookFeet = 79,
	lookAddons = 1,
	lookMount = 0
}


monster.health = 9100
monster.maxHealth = 9100
monster.race = "blood"
monster.corpse = 39011
monster.speed = 340
monster.summonCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 60
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = true,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = true,
	canWalkOnPoison = true,
	pet = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.loot = {
		{name = "platinum coin", chance = 100000, maxCount = 4},
		{name = "Ham", chance = 100000, maxCount = 3},
		{name = "Broken Helmet",  chance = 5000},
		{name = "Bug Meat",  chance = 5000},
		{name = "Life Preserver",  chance = 5000},
		{name = "Plate Armor",  chance = 5000},
		{name = "Combat Knife",  chance = 10000},
		{name = "Fishbone",  chance = 10000},
		{name = "Knife",  chance = 10000},
		{name = "Studded Shield",  chance = 10000},
		{name = "2229",  chance = 10000}, --skull
		{name = "Dark Armor",  chance = 7000},
		{name = "Dark Shield",  chance = 4000},
		{name = "Dirty Cape",  chance = 8900},
		{name = "Dirty Fur",  chance = 5000},
		{name = "Dwarven Shield",  chance = 9500},
		{name = "Twigs",  chance = 7000},
		{name = "Lion Axe",  chance = 200},
		{name = "Lion Hammer",  chance = 200},
		{name = "Lion Longbow",  chance = 200},
		{name = "Lion Longsword",  chance = 200},
		{name = "Lion Plate",  chance = 200},
		{name = "Lion Wand",  chance = 200},
		{name = "Lion Shield",  chance = 200},
		{name = "Lion Spangenhelm",  chance = 200},
		{name = "Lion Spellbook",  chance = 200}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 900, maxDamage = -1450, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 2000, chance = 35, type = COMBAT_EARTHDAMAGE, minDamage = -980, maxDamage = -1100, range = 7, radius = 7, shootEffect = CONST_ME_EXPLOSIONAREA, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -700, maxDamage = -920, range = 7, effect = CONST_ME_SMALLCLOUDS, target = true}
	
}

monster.defenses = {
	defense = 110,
	armor = 80,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 250, maxDamage = 700, effect = CONST_ME_MAGIC_BLUE, target = false}
	
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 95},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 90},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 90},
	{type = COMBAT_HOLYDAMAGE , percent = -105},
	{type = COMBAT_DEATHDAMAGE , percent = -110}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType.onThink = function(monster, interval)
end

mType.onAppear = function(monster, creature)
	if monster:getType():isRewardBoss() then
		monster:setReward(true)
	end
end

mType.onDisappear = function(monster, creature)
end

mType.onMove = function(monster, creature, fromPosition, toPosition)
end

mType.onSay = function(monster, creature, type, message)
end

mType:register(monster)
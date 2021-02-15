local tGems = {
	[7507] = { -- Small Ruby
		pos = Position(32911, 32336, 15), 
		eff = 14,
	},
	[7511] = { -- Small Saphire
		pos = Position(32192, 31419, 2),
		eff = 44,
	},
	[7515] = { -- Small Amethyst
		pos = Position(33059, 32716, 5),
		eff = 12,
	},
	[7519] = { -- Small Emerald
		pos = Position(32972, 32227, 7), 
		eff = 46,
	},
}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if tGems[item:getId()] then
		player:teleportTo(tGems[item:getId()].pos)
		player:getPosition():sendMagicEffect(tGems[item:getId()].eff)
	end
return true
end
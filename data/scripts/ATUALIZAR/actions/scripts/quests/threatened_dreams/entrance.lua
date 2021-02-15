local eGems = {
	[2146] = { -- Small Saphire
		target = {7508, 7509, 7510, 7511}, 
		pos = Position({x = 33430, y = 32277, z = 7}), 
		eff = 44,
	},
	
	[2147] = { -- Small Ruby
		target = {7504, 7505, 7506, 7507}, 
		pos = Position({x = 33586, y = 32263, z = 7}), 
		eff = 14,
	},
	
	[2149] = { -- Small Emerald
		target = {7516, 7517, 7518, 7519}, 
		pos = Position({x = 33540, y = 32209, z = 7}), 
		eff = 46,
	},
	
	[2150] = { -- Small Amethyst
		target = {7512, 7513, 7514, 7515}, 
		pos = Position({x = 33528, y = 32301, z = 4}), 
		eff = 12,
	},
}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)

		if eGems[item:getId()] then
			if isInArray(eGems[item:getId()].target, target:getId()) then
				item:remove(1)
				player:teleportTo(eGems[item:getId()].pos)
				player:getPosition():sendMagicEffect(eGems[item:getId()].eff)
			end
		end

return true
end
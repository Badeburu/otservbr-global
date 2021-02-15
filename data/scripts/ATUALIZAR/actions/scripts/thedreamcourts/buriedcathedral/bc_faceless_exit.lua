function onUse(player, item, fromPosition, itemEx, toPosition)
		player:teleportTo({x = 0000, y = 0000, z = 0})
		player:getPosition():sendMagicEffect(CONST_ME_WATERSPLASH)
return true
end

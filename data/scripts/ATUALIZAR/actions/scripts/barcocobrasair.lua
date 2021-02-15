function onUse(player, item, fromPosition, itemEx, toPosition)
		player:teleportTo({x = 33316, y = 32647, z = 7})
		player:getPosition():sendMagicEffect(CONST_ME_WATERSPLASH)

return true
end

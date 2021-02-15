function onUse(player, item, fromPosition, itemEx, toPosition)
		player:teleportTo({x = 33385, y = 32627, z = 7})
		player:getPosition():sendMagicEffect(CONST_ME_WATERSPLASH)

return true
end

function onUse(player, item, fromPosition, itemEx, toPosition)
	if (player:getStorageValue(BC_LABERIN_STO) == 1) then
		player:teleportTo({x = 0000, y = 0000, z = 0})
		player:getPosition():sendMagicEffect(CONST_ME_WATERSPLASH)
	return true
end
end
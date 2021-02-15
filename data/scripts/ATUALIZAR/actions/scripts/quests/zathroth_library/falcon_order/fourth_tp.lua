function onUse(player, item, fromPosition, itemEx, toPosition)
	if player:getStorageValue(FALCON_THIRD_TP) == 1 then
		player:teleportTo({x = 33346, y = 31349, z = 7})
		player:getPosition():sendMagicEffect(CONST_ME_WATERSPLASH)
	end
return true
end
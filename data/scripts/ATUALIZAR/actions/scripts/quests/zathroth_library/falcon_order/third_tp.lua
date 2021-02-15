function onUse(player, item, fromPosition, itemEx, toPosition)
	player:teleportTo({x = 33326, y = 31351, z = 7})
	player:getPosition():sendMagicEffect(CONST_ME_WATERSPLASH)
	if player:getStorageValue(FALCON_THIRD_TP) == -1 then
		player:setStorageValue(FALCON_THIRD_TP, 1)
	end
return true
end
local mundoInferiorEntrada = MoveEvent()

function mundoInferiorEntrada.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end
	local stg_sacr = 74582
	local headItem = player:getStorageValue(stg_sacr) >= 1
	if headItem then
		player:setStorageValue(stg_sacr, 0)
		player:teleportTo(Position(32425, 32199, 7))
		player:getPosition():sendMagicEffect(CONST_ME_MORTAREA)
	else
		player:teleportTo(Position(32433, 32196, 7))
		player:getPosition():sendMagicEffect(CONST_ME_POFF)
	end
	return true
end

mundoInferiorEntrada:type("stepin")
mundoInferiorEntrada:uid(4582)
mundoInferiorEntrada:register()
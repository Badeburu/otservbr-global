local scarletSaida = MoveEvent()

function scarletSaida.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end
		player:teleportTo(Position(33395, 32664, 6))
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	return true
end

scarletSaida:type("stepin")
scarletSaida:uid(5582)
scarletSaida:register()
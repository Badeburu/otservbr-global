local config = {
	[58740] = Position(33517, 31437, 13), --cormaya 
	[58741] = Position(33456, 31501, 13), --thais
	[58742] = Position(33425, 31499, 13), --carlin
	[58743] = Position(33428, 31406, 13), --darashia
	[58744] = Position(33458, 31406, 13), --edron
}

local dukeTeleport = MoveEvent()

function dukeTeleport.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	local teleport = config[item.actionid]
	if teleport then
		player:teleportTo(teleport)
		fromPosition:sendMagicEffect(CONST_ME_TELEPORT)
		teleport:sendMagicEffect(CONST_ME_TELEPORT)
	end
	return true
end

dukeTeleport:type("stepin")

for index, value in pairs(config) do
	dukeTeleport:aid(index)
end

dukeTeleport:register()

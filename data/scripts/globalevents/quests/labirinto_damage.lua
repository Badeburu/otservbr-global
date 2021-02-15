local effects = {
--labirinto
	{fromPosition = Position(32392, 32854, 12), toPosition = Position(32414, 32854, 12), effect = CONST_ME_DRAWBLOOD},
	{fromPosition = Position(32392, 32857, 12), toPosition = Position(32416, 32857, 12), effect = CONST_ME_DRAWBLOOD},
	{fromPosition = Position(32392, 32855, 12), toPosition = Position(32392, 32856, 12), effect = CONST_ME_DRAWBLOOD},
	{fromPosition = Position(32392, 32860, 12), toPosition = Position(32416, 32860, 12), effect = CONST_ME_DRAWBLOOD},
	{fromPosition = Position(32392, 32863, 12), toPosition = Position(32416, 32863, 12), effect = CONST_ME_DRAWBLOOD},
	{fromPosition = Position(32392, 32866, 12), toPosition = Position(32416, 32866, 12), effect = CONST_ME_DRAWBLOOD},
	{fromPosition = Position(32392, 32869, 12), toPosition = Position(32416, 32869, 12), effect = CONST_ME_DRAWBLOOD},
	{fromPosition = Position(32392, 32872, 12), toPosition = Position(32416, 32872, 12), effect = CONST_ME_DRAWBLOOD},
	{fromPosition = Position(32416, 32870, 12), toPosition = Position(32416, 32871, 12), effect = CONST_ME_DRAWBLOOD},
	{fromPosition = Position(32416, 32864, 12), toPosition = Position(32416, 32865, 12), effect = CONST_ME_DRAWBLOOD},
	{fromPosition = Position(32416, 32858, 12), toPosition = Position(32416, 32859, 12), effect = CONST_ME_DRAWBLOOD},
	{fromPosition = Position(32392, 32861, 12), toPosition = Position(32392, 32862, 12), effect = CONST_ME_DRAWBLOOD},
	{fromPosition = Position( 32392, 32867, 12), toPosition = Position( 32392, 32868, 12), effect = CONST_ME_DRAWBLOOD},
	
	  
}

				local dmgMax = math.random(50, 100)
				dmgMax = dmgMax + 10
				print(dmgMax)
				local dmgMaxxx = dmgMax * 5
local spawnDamage = GlobalEvent("labspawn damage")
function spawnDamage.onThink(interval)
	local jolf
	for i = 1, #effects do
		local settings = effects[i]
		fromPosition = settings.fromPosition
		toPosition = settings.toPosition
		local spectators = Game.getSpectators(settings.fromPosition, false, true, 100, 100, 100, 100)
		if #spectators > 0 then
			if settings.effect then
				for y = fromPosition.y, toPosition.y do
					local newPosition = Position(fromPosition.x, y, fromPosition.z)
					--newPosition:sendMagicEffect(settings.effect)

					jolf = Tile(newPosition):getTopCreature()
					if jolf and jolf:isPlayer() then
						doTargetCombatHealth(0, jolf, COMBAT_PHYSICALDAMAGE, -1, -dmgMaxxx, settings.effect) 
					end
				end
				for x = fromPosition.x, toPosition.x do
					local newPosition2 = Position(x, fromPosition.y, fromPosition.z)
					--newPosition2:sendMagicEffect(settings.effect)
					jolf = Tile(newPosition2):getTopCreature()
					if jolf and jolf:isPlayer() then

						doTargetCombatHealth(0, jolf, COMBAT_PHYSICALDAMAGE, -1, -dmgMaxxx, settings.effect)
					end
				end
			end
		end
	end
	return true
end

spawnDamage:interval(700)
spawnDamage:register()

local playerLogout = CreatureEvent("PlayerLogout")
local STG_HP_SINO = 135472
local STG_TP_SINO = 135473
local STG_CM_SINO = 135474
function playerLogout.onLogout(player)
	local playerId = player:getId()
	if nextUseStaminaTime[playerId] ~= nil then
		nextUseStaminaTime[playerId] = nil
	end
	player:saveSpecialStorage()
	player:setStorageValue(Storage.ExerciseDummyExhaust, 0)
	player:setStorageValue(STG_HP_SINO, 0)

	local stats = player:inBossFight()
	if stats then
		local boss = Monster(stats.bossId)
		-- Player logged out (or died) in the middle of a boss fight, store his damageOut and stamina
		if boss then
			local dmgOut = boss:getDamageMap()[playerId]
			if dmgOut then
				stats.damageOut = (stats.damageOut or 0) + dmgOut.total
			end
			stats.stamina = player:getStamina()
		end
	end
	player:setStorageValue(17101,0)
	return true
end
playerLogout:register()

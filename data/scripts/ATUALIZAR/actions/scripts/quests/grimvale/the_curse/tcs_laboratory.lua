local tcs_lState = {
	[1] = {
		targetId = 30700,
		s_Message = "With the aid of the alchemical devices you create a distillate of the crimson nightshade. You can add the silver dust now.",
		f_Message = "You have to add the crimson nightshade first.",
		eff = 167,
	},
	[2] = {
		targetId = 30682,
		s_Message = "With the aid of the alchemical devices you add silver dust to the distillate. You can add the gold dust now.",
		f_Message = "You have to add the silver dust first.",
		eff = 4,
	},
	[3] = {
		targetId = 30681,
		s_Message = "With the aid of the alchemical devices you add gold dust to the distillate. You can add the shadow bite berries now.",
		f_Message = "You have to add the gold dust first.",
		eff = 4,
	},
	[4] = {
		targetId = 30695,
		s_Message = "With the aid of the alchemical devices you add the shadow bite berries to the distillate. The cure is complete!",
		f_Message = "You have to add the shadow bite berries first.",
		eff = 9,
	},
}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(TCS_MILOS_STO) < 3) then
		return true
	end

	if (player:getStorageValue(TCS_MACHINE_POTION) < 1) then
		state = 1
	else
		state = player:getStorageValue(TCS_MACHINE_POTION)
	end

	if (target:getActionId() == TCS_MACHINE_POTION) then
		if tcs_lState[state] then
			if (item:getId() == tcs_lState[state].targetId) then
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, tcs_lState[state].s_Message)
				player:setStorageValue(TCS_MACHINE_POTION, state + 1)
				player:getPosition():sendMagicEffect(tcs_lState[state].eff)
				item:remove()

				if (player:getStorageValue(TCS_MACHINE_POTION) == 5) then
					player:updateGrimvaleQuestLog(G_CURSE_SPREADS, 5)
					player:addItem(30696, 1)
				end
			else
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, tcs_lState[state].f_Message)
			end
		end
	end
return true
end
function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(ALL_QUEST) == 3) then
		if (player:getStorageValue(TB_SARCO_CHESS) ~= 2) then
			if (player:getStorageValue(TB_TIME_CRIP) < os.time) then 
				player:setStorageValue(TB_RD_CHOSE, math.max(1, 3))
				if (player:setStorageValue(TB_RD_CHOSE) == 1) then
					player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The curse of disturbing this fragile, ancient peace is your price to pay!")
					player:setStorageValue(TB_TIME_CRIP, os.time() + 30)
					for i = Position({x = 00000, y = 0, z = 0}), Position({x = 00000, y = 0, z = 0}) do
						for K = Position({x = 0, y = 0000, z = 0}), Position({x = 0, y = 00000, z = 0}) do
							doTargetCombatHealth(0, player, COMBAT_EARTHDAMAGE, -50, -600, CONST_ME_NONE)
						end
					end
				elseif (player:setStorageValue(TB_RD_CHOSE) == 2) then
					player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The curse of disturbing this fragile, ancient peace is your price to pay! You also triggered a trap!")
					for i = Position({x = 00000, y = 0, z = 0}), Position({x = 00000, y = 0, z = 0}) do
						for k = Position({x = 0, y = 00000, z = 0}), Position({x = 0, y = 00000, z = 0}) do
							doTargetCombatHealth(0, player, COMBAT_DEATHDAMAGE, -50, -600, CONST_ME_NONE)
						end
					end			
				elseif (player:setStorageValue(TB_RD_CHOSE) == 3) then
					if (player:getStorageValue(TB_SARCO_CHESS) ~= 1) then
						player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You found a strangely ornamented key amongst heaps of dust, worthless trinkets and bandages.")
						player:addItem(Ornamented_Key, 1)
						player:setStorageValue(TB_SARCO_CHESS, 2)
					else
						player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You found a strangely ornamented key amongst heaps of dust, worthless trinkets and bandages.")
						player:addItem(Ornamented_Key, 1)
						player:setStorageValue(TB_SARCO_CHESS, 1)
					end
				end
			else
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You need to wait 30 seconds to see inside sarcophagus again.")
			end
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already have the 2 keys of the sarcophagus.")
		end
	end
return true
end
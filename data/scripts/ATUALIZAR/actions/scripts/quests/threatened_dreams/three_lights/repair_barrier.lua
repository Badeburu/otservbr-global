local iTransform = {
	[29031] = 29211,	
	[29033] = 29212,	
	[29035] = 29213,	
}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(ENTRANCE_FEYRIST) ~= 4) then return true end
	local mCount = player:getStorageValue(TI_MOON_MIRROR) or 0
	local scCount = player:getStorageValue(TI_SUN_CATCHER) or 0
	local sCount = player:getStorageValue(TI_STARLIGHT) or 0
	
	if (target:getId() == 28857 or target:getId() == 28855) and (item:getId() == 29031) then
		if isInArray({TL_ESTATUE_ONE, TL_ESTATUE_TWO, TL_ESTATUE_THREE, TL_ESTATUE_FOUR, TL_ESTATUE_FIVE}, target:getActionId()) then
			if (player:getStorageValue(target:getActionId()) ~= 1) then
				player:setStorageValue(target:getActionId(), 1)
				player:setStorageValue(TI_MOON_MIRROR, mCount + 1)
				player:getPosition():sendMagicEffect(73)
				
				if (mCount >= 3) then
					player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "As soon as you're touching the moon sculpture with the mirror it is infused with moonlight. This was the last sculpture.")
				else
					player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "As soon as you're touching the moon sculpture with the mirror it is infused with moonlight. The barrier strengthens.")
				end
				
				if (mCount >= 3) then
					item:transform(iTransform[item:getId()])
				end
			else
				-- print("Actual count: "..mCount.."")
			end
		end
	elseif (target:getId() == 28739) and (item:getId() == 29035) then
		if isInArray({TL_ESTATUE_SIX, TL_ESTATUE_SEVEN, TL_ESTATUE_EIGHT, TL_ESTATUE_NINE, TL_ESTATUE_TEN}, target:getActionId()) then
			if (player:getStorageValue(target:getActionId()) ~= 1) then
				player:setStorageValue(target:getActionId(), 1)
				player:setStorageValue(TI_SUN_CATCHER, scCount + 1)
				player:getPosition():sendMagicEffect(14)
				
				if (scCount >= 3) then
					player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "As soon as you're placing the sun catcher on the stone pattern the mosaic is infused with sunlight. This was the last mosaic.")
				else
					player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "As soon as you're placing the sun catcher on the stone pattern the mosaic is infused with sunlight. The barrier strengthens.")
				end
				
				if (scCount >= 3) then
					item:transform(iTransform[item:getId()])
				end
			else
				-- print("Actual count: "..scCount.."")
			end
		end
	elseif (target:getId() == 28851 or target:getId() == 28853) and (item:getId() == 29033) then
		if isInArray({TL_ESTATUE_ELEVEN, TL_ESTATUE_TWELVS, TL_ESTATUE_THIRTEN, TL_ESTATUE_FOURTEN, TL_ESTATUE_FIVETEN}, target:getActionId()) then
			if (player:getStorageValue(target:getActionId()) ~= 1) then
				player:setStorageValue(target:getActionId(), 1)
				player:setStorageValue(TI_STARLIGHT, sCount + 1)
				player:getPosition():sendMagicEffect(10)
				
				if (sCount >= 3) then
					player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "As soon as you're pouring out the vial over the dreambird tree the plant is infused with starlight. This was the last tree.")
				else
					player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "As soon as you're pouring out the vial over the dreambird tree the plant is infused with starlight. The barrier strengthens.")
				end
				
				if (sCount >= 3) then
					item:transform(iTransform[item:getId()])
				end
			else
				-- print("Actual count: "..sCount.."")
			end
		end
	end
return true
end
function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(TL_LILY_OF_NIGHT) >= 1) and 
		(player:getStorageValue(TL_BLAZING_ROSE) >= 1) and 
			(player:getStorageValue(TL_DIAMOND_BLOSSOM) >= 1) then
				if (player:getStorageValue(TL_BONE_FIDDLE) ~= 1) then
					player:setStorageValue(TL_BONE_FIDDLE, 1)
					player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "*There was once a maiden fair, with dark eyes and silken hair. Far away from home she died. No grave, no wake, no mourning.*")
				end
	end
return true
end
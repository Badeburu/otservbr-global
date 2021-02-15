function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if not target:isItem() then return true end
	
	if isInArray({33300, 33302, 33304, 33306}, target:getId()) then
		player:setStorageValue(POD_ritualStorages[target:getId()], 1)
		player:setStorageValue(POD_FINAL_COUNT, player:getStorageValue(POD_FINAL_COUNT) + 1)
		target:transform(target:getId() + 1)
		item:remove()
		target:decay()
		
		if (player:getStorageValue(POD_FINAL_COUNT) >= 4) then
			if (player:getStorageValue(POD_QUEST_LOG) < 7) then
				player:setStorageValue(POD_QUEST_LOG, 7)
				
				if (player:getStorageValue(SECRET_LIBRARY_STORAGE) ~= 1) then
					player:setStorageValue(SECRET_LIBRARY_STORAGE, 1)
				end
			end
		end
	end
return true
end
function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(TF_QUEST) ~= 1) then return true end
	local toothSto = player:getStorageValue(TOOTHS_DELIVERED) or 0
	
	if (player:getStorageValue(item:getActionId()) ~= 1) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a milk tooth.")
		player:setStorageValue(item:getActionId(), 1)
		player:addItem(28664, 1)
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The chest of drawers is empty.")
	end
return true
end


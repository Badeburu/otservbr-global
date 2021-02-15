local noteTcs_item = {
	[TCS_NOTE_ONE] = 30606,
	[TCS_NOTE_TWO] = 30678,
	[TCS_NOTE_THREE] = 30607,
}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if isInArray({TCS_NOTE_ONE, TCS_NOTE_TWO, TCS_NOTE_THREE}, item:getUniqueId()) then
		if (player:getStorageValue(TCS_MILOS_STO) == 1) and (player:getStorageValue(item:getUniqueId()) ~= 1) then 
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a piece of parchment.")
			player:addItem(noteTcs_item[item:getUniqueId()], 1)
			player:setStorageValue(item:getUniqueId(), 1)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "This is empty.")
			end
		end
	return true
end


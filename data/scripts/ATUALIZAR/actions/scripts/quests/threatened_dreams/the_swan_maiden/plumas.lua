local swan_messages = {
	[50151] = {text = "You found some beautiful swan feathers on the grass near the wheat."},
	[50152] = {text = "You found some beautiful swan feathers under the dead tree."},
	[50153] = {text = "You found some beautiful swan feathers beneath the dragon skull."},
	[50154] = {text = "You found some beautiful swan feathers entangled in the cactus stings."},
	[50155] = {text = "You found some more feathers in the dustbin. Now you should have enough for an entire cloak."},
}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if not player then return true end
	if not item then return true end
	if (player:getStorageValue(TD_TBAN_STO) ~= 2) then
		return true 
	end
	
	if isInArray({MAIDEN_PLUMA_1, MAIDEN_PLUMA_2, MAIDEN_PLUMA_3, MAIDEN_PLUMA_4, MAIDEN_PLUMA_5}, item:getActionId()) then
		if (target:getActionId() == MAIDEN_PLUMA_5) then
			for i = MAIDEN_PLUMA_1, MAIDEN_PLUMA_5 do
				if (player:getStorageValue(i) ~= 1) then
					return true
				end
			end
		end
		
		if (player:getStorageValue(item:getActionId()) ~= 1) then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, swan_messages[item:getActionId()].text)
			player:addItem(28605, 1)
			player:setStorageValue(item:getActionId(), 1)
		end
	end
return true
end
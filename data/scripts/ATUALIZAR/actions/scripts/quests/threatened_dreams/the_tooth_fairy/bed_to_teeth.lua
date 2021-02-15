local beds = {
	[60052] = "You are placing the present for Quero's daugther on the pillow.",
	[60053] = "You are placing the present for Allen's son on the pillow.",
	[60054] = "You are placing the present for Rowenna's daugther on the pillow.",

}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(TF_QUEST) ~= 1) then return true end
	local toothSto = player:getStorageValue(TOOTHS_DELIVERED) or 0
	
	if beds[target:getActionId()] then
		if (player:getStorageValue(target:getActionId()) ~= 1) then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, beds[target:getActionId()])
			player:setStorageValue(target:getActionId(), 1)
			item:remove(1)
			
			if (toothSto == -1) then
				player:setStorageValue(TOOTHS_DELIVERED, 1)
			else
				player:setStorageValue(TOOTHS_DELIVERED, toothSto + 1)
			end
			-- player:addItem(28663, 1)
		end
	end
return true
end


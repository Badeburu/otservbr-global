function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if isInArray({CMF_FLOWER_ONE, CMF_FLOWER_TWO, CMF_FLOWER_THREE}, item:getActionId()) then
		if (player:getStorageValue(item:getActionId()) < os.time()) then 
			player:setStorageValue(item:getActionId(), os.time() + 1800)
			player:addItem(24738, 1)
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You pick the large blooming blossom from the stem of this purple nightshade.")
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have wait a 30 minutes to obtain other blooming purple nightshade.")
		end
	end
return true
end
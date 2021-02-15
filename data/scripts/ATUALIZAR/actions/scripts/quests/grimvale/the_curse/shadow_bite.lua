function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(TCS_SHADOWF_1) < os.time())  then 
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You pluck a tuit of shadow bite.")
		player:setStorageValue(TCS_SHADOWF_1, os.time() + 60)
		player:addItem(30695, 1)
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You can only collect every one minute.")
	end
return true
end
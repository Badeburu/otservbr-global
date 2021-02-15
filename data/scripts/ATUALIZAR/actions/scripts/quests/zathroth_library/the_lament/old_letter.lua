function onUse(player, item, fromPosition, itemEx, toPosition)
	if (player:getStorageValue(TL_OLD_LETTER) ~= 1) then
		local book = player:addItem(33294, 1)
		book:setAttribute(ITEM_ATTRIBUTE_TEXT, "Woe to me for venturing so deep into the jungle. Woe to me for entering the cursed palace there. The women appeared beatiful and friendly at first, but soon they revealed their true, demonic nature! They abducted me and locked me up in this cell. If they don't kill me, I will surely die of hunger and thirst. Out of sadness and despair I cut my hair and tore my clothes. Woe to my poor mother who will never know about my fate and is unsuspectingly waiting for my return in Port Hope...")
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found an old letter.")
		player:setStorageValue(TL_OLD_LETTER, 1)
		return true
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The skeleton is empty.")
		return true
	end
return true
end
function onUse(player, item, fromPosition, itemEx, toPosition)
	if (player:getStorageValue(TL_SCRIBBLED_NOTES) ~= 1) then
		local book = player:addItem(33292, 1)
		book:setAttribute(ITEM_ATTRIBUTE_TEXT, "My curiosity and my urge to explore have driven me too deep into these vaults. Asuri everywhere - in their true form even more powerful than in their human disguise. I fled down here, apparently they do not visit this remote cave. But I am afraid it will also become my grave. Still, I made an interesting discovery and I am writing it down in hopes that it may once be useful to another soul. The asuri are led by powerful princesses that are virtually invincible if confronted unprepared. However, even they have weaknesses. For example, the midnight asuri abhor heavy scents and the dawnfire asuri detest the sound of silver bells. In turn, the frost flower asuri can't stand anyone wearing red fabrics (not metal) near them. I have strong reason to believe that these weaknesses - as I call them - sufficiently weaken the otherwise powerful asura princesses, so they can be wounded. However, this will probably remain a theory I can't verify anymore.")
		player:setStorageValue(TL_SCRIBBLED_NOTES, 1)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a scribbled notes.")
		return true
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The skeleton is empty.")
		return true
	end
return true
end
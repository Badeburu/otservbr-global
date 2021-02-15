function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getStorageValue(GS_QUEST) == 1 then
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "*scratch* *scratch*")
				toPosition:sendMagicEffect(CONST_ME_POFF)
				player:setStorageValue(GS_SCRATH, 4)
			else
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "*scratch* *scratch*")
end
	-- Wrath of the Emperor Mission02
	if target.itemid == 12322 then
		player:addItem(12285, 1)
		player:say("You dig out a handful of ordinary clay.", TALKTYPE_MONSTER_SAY)
	-- The Shattered Isles Parrot ring
	elseif target.itemid == 6094 then
		if player:getStorageValue(Storage.TheShatteredIsles.TheGovernorDaughter) == 1 then
			toPosition:sendMagicEffect(CONST_ME_POFF)
			Game.createItem(6093, 1, Position(32422, 32770, 1))
			player:say("You have found a ring.", TALKTYPE_MONSTER_SAY)
			player:setStorageValue(Storage.TheShatteredIsles.TheGovernorDaughter, 2)
			end
		end
	return true
end
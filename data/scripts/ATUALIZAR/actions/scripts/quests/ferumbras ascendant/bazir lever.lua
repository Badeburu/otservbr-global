function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getExhaustion(Storage.FerumbrasAscension.BazirLever) > 0 then
		player:say('The lever seems stuckle.', TALKTYPE_MONSTER_SAY, false, nil, toPosition)
		player:setExhaustion(Storage.FerumbrasAscension.BazirLever, 0)
		return true
	end
	if item:getPosition() == Position(33628, 32616, 11) then
		if player:getStorageValue(Storage.FerumbrasAscension.LeverCheck) == 2 then
			player:say('The lever seems stuckle, you need use the another one in east from here.', TALKTYPE_MONSTER_SAY, false, nil, toPosition)
			player:setExhaustion(Storage.FerumbrasAscension.BazirLever, 0)
			return true
		end
		player:setStorageValue(Storage.FerumbrasAscension.LeverCheck, 1)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'In another room south of this one, something just made a loud booming sound.')
	else
		if player:getStorageValue(Storage.FerumbrasAscension.LeverCheck) == 1 then
			player:say('The lever seems stuckle, you need use the another one in west from here.', TALKTYPE_MONSTER_SAY, false, nil, toPosition)
			player:setExhaustion(Storage.FerumbrasAscension.BazirLever, 0)
			return true
		end
		player:setStorageValue(Storage.FerumbrasAscension.LeverCheck, 2)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'In another room west of this one, something just made a loud booming sound.')
	end
	player:setExhaustion(Storage.FerumbrasAscension.BazirLever, 60)
	item:transform(item.itemid == 10045 and 10044 or 10045)
	toPosition:sendMagicEffect(CONST_ME_ENERGYHIT)
	return true
end
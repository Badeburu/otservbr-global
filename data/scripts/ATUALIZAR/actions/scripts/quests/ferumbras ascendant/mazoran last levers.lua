function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	item:transform(item.itemid == 10029 and 10030 or 10029)
	if player:getExhaustion(Storage.FerumbrasAscension.MazoranPath) < 1 then
		player:say('You need to set the colors path in the founts.', TALKTYPE_MONSTER_SAY)
		return true
	end
	if player:getExhaustion(Storage.FerumbrasAscension.MazoranTimer) > 0 and player:getExhaustion(Storage.FerumbrasAscension.MazoranPath) > 0 then
		player:say('You have to wait to challange this enemy again!', TALKTYPE_MONSTER_SAY)
		return true
	else
		if player:getExhaustion(Storage.FerumbrasAscension.MazoranPath) > 0 then
			player:teleportTo(Position(33593, 32658, 14))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'The path is already set.')
			player:setStorageValue(Storage.FerumbrasAscension.MazoranPath, 0)
		end
	end
	return true
end
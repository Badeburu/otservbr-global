function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (target:getId() == 2605) then
		if (target:getActionId() == 32906) then
			if (player:getStorageValue(MT_GARETH_STO) <= 6) then
				player:setStorageValue(MT_GARETH_STO, 6)
				player:getPosition():sendMagicEffect(CONST_ME_SOUND_BLUE)
				player:say("ACCESS GRANTED", TALKTYPE_MONSTER_SAY)
				item:transform(32623)
			end
		end
	end
return true
end
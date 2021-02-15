function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(MT_GARETH_STO) == 1) then
		player:say('You do not know how to use this lever, back with Gareth.', TALKTYPE_MONSTER_SAY)
		player:setStorageValue(MT_GARETH_STO, 2)
	elseif (player:getStorageValue(MT_GARETH_STO) == 2) then
		player:say('You do not know how to use this lever, back with Gareth.', TALKTYPE_MONSTER_SAY)
	elseif (player:getStorageValue(MT_GARETH_STO) == 4) then
		player:say('Access Granted', TALKTYPE_MONSTER_SAY)
		player:setStorageValue(MT_GARETH_STO, 5)	
	end
	
return true
end
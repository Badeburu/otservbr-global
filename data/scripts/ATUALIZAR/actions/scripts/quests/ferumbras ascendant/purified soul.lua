function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if not target:getName():lower() == 'sin devourer' then
		return false
	end
	target:getPosition():sendMagicEffect(CONST_ME_HOLYAREA)
	target:say('The Sin Devourer has been driven out!', TALKTYPE_MONSTER_SAY)
	target:remove()
	item:remove()
	return true
end
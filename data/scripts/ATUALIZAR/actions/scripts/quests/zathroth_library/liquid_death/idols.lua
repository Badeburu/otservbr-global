function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (item:getId() == 17240) then
		item:transform(17239)
		item:decay()
		if (player:getFixedIdols() < 45) then
			player:addFixedIdol()
			player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
		else
			player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
		end
	else
		item:transform(17242)
		item:decay()
		if (player:getFixedIdols() < 45) then
			player:addFixedIdol()
			player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
		else
			player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
						end
			return true
		end
end
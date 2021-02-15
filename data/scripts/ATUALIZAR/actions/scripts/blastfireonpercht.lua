 local function revert(position, itemId, transformId)
	local item = Tile(position):getItemById(itemId)
	if item then
		item:transform(transformId)
	end
end

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if target.itemid == 35082 then
		local position = player:getPosition()
		local summon = Game.createMonster("Warm Fire", position, true)
		if not summon then
			player:sendCancelMessage(RETURNVALUE_NOTENOUGHROOM)
			position:sendMagicEffect(CONST_ME_POFF)
			return false
		end
		player:say('The branch increased the fire.', TALKTYPE_MONSTER_SAY)
		item:remove()
		target:transform(35080)
		toPosition:sendMagicEffect(CONST_ME_FIREAREA)
		addEvent(revert, 1 * 30 * 1000, toPosition, 35080, 35081)
		return true
	end
end
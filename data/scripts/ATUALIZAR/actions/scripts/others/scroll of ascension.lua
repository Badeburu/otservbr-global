local outfit = {lookTypeEx = 35}
function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if item.itemid == 25428 then
		doSetCreatureOutfit(player, outfit, 30 * 1000)
		item:transform(25427)
		item:decay()
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'Magical sparks whirl around the scroll as you read and then your appearance is changing.')
		return true
	elseif item.itemid == 25427 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You are tired of the last scroll reading, rest your eyes for a moment.')
	end
	return true
end

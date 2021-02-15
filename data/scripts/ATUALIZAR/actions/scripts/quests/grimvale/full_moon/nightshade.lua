function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if Game.isFullMoon() then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Strangely, the plant tastes sweet and agreeable now that you are transfomed.")
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You try to eat a small petal from the plant. Its taste is well beyond bitter which renders it practically inedible.")
	end
return true
end
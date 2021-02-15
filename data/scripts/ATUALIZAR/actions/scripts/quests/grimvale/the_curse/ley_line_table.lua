function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:isInsidePosition(Position(33671, 31624, 7), Position(33676, 31628, 7)) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "This location is the source of a ley line.")
	elseif player:isInsidePosition(Position(32947, 31486, 6), Position(33676, 31628, 6)) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "This location is the source of a ley line.")
	elseif player:isInsidePosition(Position(32806, 32581, 7), Position(32812, 32586, 7)) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "This location is the source of a ley line.")
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "There is no important point of a ley line nearby.")
	end
return true
end
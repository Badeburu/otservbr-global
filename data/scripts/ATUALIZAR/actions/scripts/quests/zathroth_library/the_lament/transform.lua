function onUse(player, item, fromPosition, target, toPosition)
	if (item:getId() == 33272) then
		if (target:getId() == 33274) then
			item:transform(33275)
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You attach the ebony wood to the skull. This should meet the requirements of a fingerboard.")
			target:remove()
		end
	elseif (item:getId() == 33275) then
		if (target:getId() == 33273) then
			item:transform(33276)
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You tack the hair to the ebony fingerboard. The strands should be adquate to serve as strings.")
			target:remove()
		end
	end
return true
end
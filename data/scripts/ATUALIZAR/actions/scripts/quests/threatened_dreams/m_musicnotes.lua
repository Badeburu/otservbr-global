function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local mEffect = math.random(1, 4)
	
	if mEffect == 1 then
		--condicion de speed
	elseif mEffect == 2 then
		player:addHealth(math.random(490, 522))
	elseif mEffect == 3 then
		player:addMana(math.random(229, 270))
	elseif mEffect == 2 then
		--condicion de outfit
	end
	
	item:remove()
return true
end
local stonePosition = Position(33710, 31137, 7)

function removeStone()
	local stoneItem = Tile(stonePosition):getItemById(35076)
	if stoneItem then
		stoneItem:remove()
	end
end


local function revertBone(position, itemId, transformId)
	local item = Tile(position):getItemById(itemId)
	if item then
			item:transform(transformId)
		end
end

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local rand = math.random(1, 100)
	if item.itemid == 35076 then
		if rand <= 100 then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You got a branch from the percht rush wood.')
			player:addItem(35078, 1)
			addEvent(removeStone, 1)
			toPosition:sendMagicEffect(3)
		end
	end
end

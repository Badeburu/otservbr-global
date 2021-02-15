
		local mounts = {
			[1] = {name = 'Widow Queen - montaria', id = 1, count = 1},
			[2] = {name = 'Racing Bird - montaria', id = 2, count = 1},
			[3] = {name = 'War Bear - montaria', id = 3, count = 1},
			[4] = {name = 'Black Sheep - montaria', id = 4, count = 1},
			[5] = {name = 'Midnight Panther - montaria', id = 5, count = 1},
			[6] = {name = 'Draptor - montaria', id = 6, count = 1},
			[7] = {name = 'Titanica - montaria', id = 7, count = 1},
			[8] = {name = 'Tin Lizzard - montaria', id = 8, count = 1},
		}
		local CT = TalkAction("!tt")
	function CT.onSay(player, words, param)
				player:registerEvent("crown")
				local title = "The Oracle: Choose your way!"
				local message = "Are you prepared to face your destiny?"
				local window = ModalWindow(3000, title, message)
        window:addButton(105,"Select")
        window:addButton(103,"Cancel")
        window:setDefaultEnterButton(105)
        window:setDefaultEscapeButton(103)
        window:sendToPlayer(player)
		return true
			end
	CT:register()
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
local outfits = {
    [1] = {name = 'Merry Garb - outfit', female = 1383, male =1382, count = 1},
    [2] = {name = 'Trailblazer - outfit', female = 1293, male = 1292, count = 1},
	[3] = {name = 'Dragon Slayer - outfit', female = 1289, male =1288, count = 1},
    [4] = {name = 'Lion of War - outfit', female = 1207, male = 1206, count = 1},
}
local itens = {
    [1] = {name = 'crystal coin', id = 2160, qtd = 50, count = 1},
    [2] = {name = 'spellbook of dark mysteries', id = 8918, qtd = 1, count = 1},
}
local ct = 40407
local mount = TalkAction("!crown")
function mount.onSay(player, words, param)
 if param == "" then
 player:sendTextMessage(MESSAGE_STATUS_WARNING, "Utilize algum dos parâmetros a seguir:\n!crown saldo - utilize para verificar o saldo de crown que você possuí.\n!crown montaria - utilize para trocar suas crown's por montarias.\n!crown outfit - utilize para trocar suas crown's por outfits.")
 end
    if param == "montaria" then
        player:registerEvent("Mount_Modal_Window")
        local title = "Crown Token - montarias"
        local message = "Lista de bonificações disponíveis:"
    
        local window = ModalWindow(1800, title, message)
        window:addButton(100, "Trocar")
        window:addButton(101, "Cancelar")
    
        for i = 1, #mounts do
            if (not player:hasMount(mounts[i].id)) then
                window:addChoice(i,""..mounts[i].name)
            end
        end
		
        window:setDefaultEnterButton(100)
        window:setDefaultEscapeButton(101)       
        window:sendToPlayer(player)
		
	elseif param == "outfit" then	
	    player:registerEvent("Mount_Modal_Window")
        local title = "Crown Token - outifts"
        local message = "Lista de bonificações disponíveis:"
    
        local window = ModalWindow(1900, title, message)
        window:addButton(110, "Trocar")
        window:addButton(101, "Cancelar")
		for b = 1, #outfits do
			local outfitLookType
				if player:getSex() == PLAYERSEX_MALE then
					outfitLookType = outfits[b].male
				else
					outfitLookType = outfits[b].female
				end
				if (not player:hasOutfit(outfitLookType)) then
					window:addChoice(b,""..outfits[b].name)
				end
		end
		
		window:setDefaultEnterButton(110)
        window:setDefaultEscapeButton(101)       
        window:sendToPlayer(player)
		
	elseif param == "item" then
        player:registerEvent("Mount_Modal_Window")
        local title = "Crown Token - itens"
        local message = "Lista de bonificações disponíveis:"
    
        local window = ModalWindow(2000, title, message)
        window:addButton(120, "Trocar")
        window:addButton(101, "Cancelar")
    
        for z = 1, #itens do
                window:addChoice(z,""..itens[z].qtd.."x "..itens[z].name.."")
        end
		
        window:setDefaultEnterButton(100)
        window:setDefaultEscapeButton(101)       
        window:sendToPlayer(player)
		
		window:setDefaultEnterButton(110)
        window:setDefaultEscapeButton(101)   
        window:sendToPlayer(player)
		
    elseif param == "info" then
        local list = "Informações sobre o sistema:\n\n"
          list = list ..'Através deste sistema, você pode trocar suas crown token por bonificações existentes em nosso servidor.\n\nAs crown tokens, podem ser adquiridas através do próprio jogo, ao derrotar bosses existe a possibilidade de dropar. A forma mais rápida e eficaz de se conseguir as crown tokens, é efetuando uma doação para o servidor. À cada doação de tibia coins, 10% do valor total da doação será convertido em crown tokens. Ex: 100tc representa 10ct*\n\nATENÇÃO: este sistema não irá influenciar na jogabilidade do servidor. Somente bonificações que não afetem o gameplay poderão ser adquiridas; como por exemplo: montarias, outfits e etc.\n\n\n\n\n* CT =  crown token'
        player:showTextDialog(8977, list)
	end
    return false
end

mount:separator(" ")
mount:register()

local mountmodal = CreatureEvent("Mount_Modal_Window")
mountmodal:type("modalwindow")

function mountmodal.onModalWindow(player, modalWindowId, buttonId, choiceId)
    if modalWindowId == 1800 then
        if buttonId == 100 then
            if doPlayerRemoveItem(player, ct, mounts[choiceId].count) then
                player:addMount(mounts[choiceId].id)
                player:sendTextMessage(MESSAGE_INFO_DESCR, 'Você trocou '..mounts[choiceId].count..'ct por '.. mounts[choiceId].name ..'!')
            else
                player:sendTextMessage(MESSAGE_STATUS_WARNING, 'Você precisa ter '..mounts[choiceId].count..'ct para desbloquear a '.. mounts[choiceId].name ..'!')
            end
        end
    end
	  if modalWindowId == 1900 then
        if buttonId == 110 then
            if doPlayerRemoveItem(player, ct, outfits[choiceId].count) then
                player:addOutfitAddon(outfits[choiceId].male)
				player:addOutfitAddon(outfits[choiceId].female)
                player:sendTextMessage(MESSAGE_INFO_DESCR, 'Você trocou '..outfits[choiceId].count..'ct por '.. outfits[choiceId].name ..'!')
            else
                player:sendTextMessage(MESSAGE_STATUS_WARNING, 'Você precisa ter '..outfits[choiceId].count..'ct para desbloquear a '.. outfits[choiceId].name ..'!')
            end
        end
    end
	 if modalWindowId == 2000 then
        if buttonId == 120 then
            if doPlayerRemoveItem(player, ct, itens[choiceId].count) then
                player:addItem(itens[choiceId].id, itens[choiceId].qtd)
                player:sendTextMessage(MESSAGE_INFO_DESCR, 'Você trocou '..itens[choiceId].count..'ct por '.. itens[choiceId].qtd ..'x '.. itens[choiceId].name ..'!')
            else
                player:sendTextMessage(MESSAGE_STATUS_WARNING, 'Você precisa ter '..itens[choiceId].count..'ct para desbloquear a bonificação de '.. itens[choiceId].qtd ..'x '.. itens[choiceId].name ..'!')
            end
        end
    end
    player:unregisterEvent("Mount_Modal_Window")
    return true
end

mountmodal:register()
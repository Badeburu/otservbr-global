local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)
	npcHandler:onCreatureAppear(cid)
end
function onCreatureDisappear(cid)
	npcHandler:onCreatureDisappear(cid)
end
function onCreatureSay(cid, type, msg)
	npcHandler:onCreatureSay(cid, type, msg)
end
function onThink()
	npcHandler:onThink()
end
function creatureSayCallback(cid, type, msg)
local config = {
	stg = 74581,
	stg_sacr = 74582,
	item_id = 37418,
	remove_talk = 20,
	remove_passage = 5,
	chance = math.random(1, 3)
}
local iT = ItemType(config.item_id)
	if(not(npcHandler:isFocused(cid))) then
		return false
	end

	local player = Player(cid)
	if (msgcontains(msg, "mundo inferior")) then
		if player:getStorageValue(config.stg_sacr) >= 1 then
			npcHandler:say("Voc� j� est� amaldi�oado. Voc� j� pode seguir para o mundo inferior.", cid)
			return true
		end
		if player:getStorageValue(config.stg) < 1 then
			npcHandler:say(
			"Ent�o voc� quer se aventurar pelo mundo inferior? Eu posso te deixar passar por este portal de for�as mal�ginas, forjado com o sangue dos seus. Mas para isso, voc� ter� que me pagar. Para te conceder a permiss�o de ser aceito no mundo inferior, voc� deve me pagar "..config.remove_talk.." ".. (config.remove_talk > 1 and iT:getPluralName() or iT:getName()) ..". Voc� quer que eu te conceda a permiss�o de ser aceito? Entretanto, esteja ciente que nem sempre funciona.", cid)
			npcHandler.topic[cid] = 1
		else
			npcHandler:say("Voc� j� fez seu sacrif�cio inicial. Agora, para que eu te leve, voc� precisa me pagar "..config.remove_passage.." ".. (config.remove_passage > 1 and iT:getPluralName() or iT:getName()) ..". Est� disposto a pagar?", cid)
			npcHandler.topic[cid] = 1
		end
	end
	if (msgcontains(msg, "sim")) then
		if npcHandler.topic[cid] == 1 then
		if player:getStorageValue(config.stg) < 1 and (player:getItemCount(config.item_id) < 20) then
			npcHandler:say("Voc� precisa de "..config.remove_talk.." ".. (config.remove_talk > 1 and iT:getPluralName() or iT:getName()) .." para tentar o sacrif�cio.", cid)
		else
		print(config.chance)
		if config.chance == 3 and player:getStorageValue(config.stg) < 1 then
			player:setStorageValue(config.stg, 1)
			if player:removeItem(config.item_id, config.remove_talk) then 
				npcHandler:say("Perfeito! Posso sentir as for�as mal�ginas tomando conta do seu corpo. Tenha cuidado por onde voc� ande. Ao passar pelo portal, voc� n�o encontrar� uma sa�da. Esteja preparado.", cid)
			end
		else
			if player:getStorageValue(config.stg) < 1 then
				player:removeItem(config.item_id, config.remove_talk)
				npcHandler:say("Ah! Seu sacrif�cio n�o foi aceito.", cid)
				npcHandler.topic[cid] = 0
			end
		end
		end
		if config.chance == 1 then
			player:getPosition():sendMagicEffect(CONST_ME_POFF)
			player:removeItem(config.item_id, config.remove_passage)
			npcHandler:say("Voc� n�o foi aceito no mundo inferior. Voc� quer tentar novamente?", cid)
			return true
		end
			if  player:getStorageValue(config.stg) >= 1 then
				if player:removeItem(config.item_id, config.remove_passage) then
					player:setStorageValue(config.stg_sacr, 1)
					npcHandler:say("Boa sorte!", cid)	
				else
					npcHandler:say("Voc� realmente acha que pode me enganar? Se n�o tem o que eu preciso, suma daqui.", cid)
				end
			end
		end
	end
	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:setMessage(MESSAGE_GREET, "Ol�! Ent�o voc� est� curioso e procura saber mais sobre o {mundo inferior}?")
npcHandler:setMessage(MESSAGE_FAREWELL, "Adeus |PLAYERNAME|.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "A impetuosidade da juventude. Tenha cuidado.")

npcHandler:addModule(FocusModule:new())
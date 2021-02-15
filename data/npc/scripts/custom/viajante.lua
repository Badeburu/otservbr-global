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
			npcHandler:say("Você já está amaldiçoado. Você já pode seguir para o mundo inferior.", cid)
			return true
		end
		if player:getStorageValue(config.stg) < 1 then
			npcHandler:say(
			"Então você quer se aventurar pelo mundo inferior? Eu posso te deixar passar por este portal de forças malíginas, forjado com o sangue dos seus. Mas para isso, você terá que me pagar. Para te conceder a permissão de ser aceito no mundo inferior, você deve me pagar "..config.remove_talk.." ".. (config.remove_talk > 1 and iT:getPluralName() or iT:getName()) ..". Você quer que eu te conceda a permissão de ser aceito? Entretanto, esteja ciente que nem sempre funciona.", cid)
			npcHandler.topic[cid] = 1
		else
			npcHandler:say("Você já fez seu sacrifício inicial. Agora, para que eu te leve, você precisa me pagar "..config.remove_passage.." ".. (config.remove_passage > 1 and iT:getPluralName() or iT:getName()) ..". Está disposto a pagar?", cid)
			npcHandler.topic[cid] = 1
		end
	end
	if (msgcontains(msg, "sim")) then
		if npcHandler.topic[cid] == 1 then
		if player:getStorageValue(config.stg) < 1 and (player:getItemCount(config.item_id) < 20) then
			npcHandler:say("Você precisa de "..config.remove_talk.." ".. (config.remove_talk > 1 and iT:getPluralName() or iT:getName()) .." para tentar o sacrifício.", cid)
		else
		print(config.chance)
		if config.chance == 3 and player:getStorageValue(config.stg) < 1 then
			player:setStorageValue(config.stg, 1)
			if player:removeItem(config.item_id, config.remove_talk) then 
				npcHandler:say("Perfeito! Posso sentir as forças malíginas tomando conta do seu corpo. Tenha cuidado por onde você ande. Ao passar pelo portal, você não encontrará uma saída. Esteja preparado.", cid)
			end
		else
			if player:getStorageValue(config.stg) < 1 then
				player:removeItem(config.item_id, config.remove_talk)
				npcHandler:say("Ah! Seu sacrifício não foi aceito.", cid)
				npcHandler.topic[cid] = 0
			end
		end
		end
		if config.chance == 1 then
			player:getPosition():sendMagicEffect(CONST_ME_POFF)
			player:removeItem(config.item_id, config.remove_passage)
			npcHandler:say("Você não foi aceito no mundo inferior. Você quer tentar novamente?", cid)
			return true
		end
			if  player:getStorageValue(config.stg) >= 1 then
				if player:removeItem(config.item_id, config.remove_passage) then
					player:setStorageValue(config.stg_sacr, 1)
					npcHandler:say("Boa sorte!", cid)	
				else
					npcHandler:say("Você realmente acha que pode me enganar? Se não tem o que eu preciso, suma daqui.", cid)
				end
			end
		end
	end
	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:setMessage(MESSAGE_GREET, "Olá! Então você está curioso e procura saber mais sobre o {mundo inferior}?")
npcHandler:setMessage(MESSAGE_FAREWELL, "Adeus |PLAYERNAME|.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "A impetuosidade da juventude. Tenha cuidado.")

npcHandler:addModule(FocusModule:new())
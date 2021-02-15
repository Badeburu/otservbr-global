local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}
function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end
function creatureSayCallback(cid, type, msg)
if(not npcHandler:isFocused(cid)) then
return false
end
local talkUser = NPCHANDLER_CONVbehavior == CONVERSATION_DEFAULT and 0 or cid
local msg = string.lower(msg)
local days = 7
if isInArray({"dragoes","dragões"}, msg) then
npcHandler:say("Eu caço vários tipos, como {dragon}, {dragon lord}, {hydra}, {frost dragon}, {dragon guardian}, {thunder dragon} e {demodras}. Você quer me ajudar a caçar um deles? Qual?", cid)
talkState[talkUser] = 1
elseif talkState[talkUser] == 1 then
if kungtask[msg] then
if getPlayerStorageValue(cid, kungtask[msg].storages[1]) == -1 then
stor,name,count,stor2 = kungtask[msg].storages[1],msg,kungtask[msg].count,kungtask[msg].storages[2]
npcHandler:say("Ótimo! Você precisa matar pelo menos "..count.." "..name.." em um prazo de "..days.." dias para te dar a recompensa. Você aceita?", cid)
talkState[talkUser] = 2
else
stor,name,count,stor2 = kungtask[msg].storages[1],msg,kungtask[msg].count,kungtask[msg].storages[2]
local conta = getPlayerStorageValue(cid,kungtask[msg].storages[2])
local resta = count-conta
npcHandler:say("Você ainda não matou os  "..count.." "..name..", atualmente você matou "..conta..", resta "..resta..". Seu prazo é até "..os.date("%d %B %Y %X", getPlayerStorageValue(cid,stor)).."", cid)
talkState[talkUser] = 1
end
else
npcHandler:say("digite o nome certo do monstro.", cid)
talkState[talkUser] = 1
end
elseif (msgcontains(msg, 'yes') and talkState[talkUser] == 2) then
setPlayerStorageValue(cid, stor, os.time()+days*86400)
setPlayerStorageValue(cid, stor2, 0)
npcHandler:say("Você já pode começar a matar "..name..". O prazo é até "..os.date("%d %B %Y %X", getPlayerStorageValue(cid,stor))..".", cid)
talkState[talkUser] = 0
elseif isInArray({"entregar","receber", "recompensa"}, msg) then
for var, ret in pairs(kungtask) do
if getPlayerStorageValue(cid,ret.storages[1]) >= os.time() and getPlayerStorageValue(cid,ret.storages[2]) >= ret.count then
doPlayerAddExp(cid, ret.exp)
setPlayerStorageValue(cid, ret.storages[2], -1)
setPlayerStorageValue(cid, ret.storages[1], -1)
return npcHandler:say("Obrigado! você matou os "..ret.count.." "..var.." em menos de 1 semana. Aqui esta sua recompensa! Lembre-se que você pode fazer esta task quantas vezes quiser, desde que tenha concluído 1 semana contado a partir do dia de inicio.", cid)
else
return npcHandler:say("Desculpe, mas você não terminou nenhuma missão.", cid)
end
end
elseif isInArray({"no","nao"}, msg)  then  
selfSay("tudo bem então.", cid)  
talkState[talkUser] = 0  
npcHandler:releaseFocus(cid)  
end
return TRUE
end
npcHandler:setMessage(MESSAGE_GREET, "Olá |PLAYERNAME|. Meu nome é Arthas, sou caçador de {dragões}.")
npcHandler:setMessage(MESSAGE_FAREWELL, "Adeus |PLAYERNAME|.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "A impetuosidade da juventude. Tenha cuidado.")
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
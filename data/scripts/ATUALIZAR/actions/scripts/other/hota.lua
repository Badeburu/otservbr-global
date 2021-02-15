function onUse(cid, item, fromPosition, itemEx, toPosition)

if doPlayerTakeItem(cid, 2147, 1) then
if doPlayerTakeItem(cid, 2342, 1) then
doRemoveItem(item.uid,1)
doPlayerAddItem(cid, 2343, 1)
doSendMagicEffect(fromPosition,12)
else
doPlayerSendTextMessage(cid,20, "Voce nao tem 1 helmet of the ancients.")
end
else
doPlayerSendTextMessage(cid,20, "Desculpe, voce precisa de 1 small ruby para reparar seu helmet.")
end
end
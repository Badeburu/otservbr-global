function onUse(cid, item, frompos, item2, topos)

if item.uid == 1115 then

queststatus = getPlayerStorageValue(cid,1115)

if queststatus == -1 or queststatus == 0 then

doPlayerSendTextMessage(cid,22,"Voce ganhou uma backpack of holding") -- a mensagen que ira aparecer quando vc pegar o item

item_uid = doPlayerAddItem(cid,2365,1) -- item_uid = doPlayerAddItem(cid,2160~id do item~,100~Quantidade~)

setPlayerStorageValue(cid,1115,1)

else

doPlayerSendTextMessage(cid,22,"The chest is empty.") -- ira aprecer quando vc ja tiver pego e tentar dnv

end

else

return 0

end

return 1

end
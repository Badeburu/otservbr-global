function onUse(cid, item)

   local cfg = {

   		addon_name = "Percht Raider", -- NOME DO ADDON 	
   		addon_male = 1162, 
   		addon_female = 1161,
   		storage = 9787184 -- Lembre-se de trocar o numero da storage em cada item
}
		if getPlayerStorageValue(cid, cfg.storage) < 1 then
			doPlayerAddOutfit(cid, cfg.addon_male, 3)
			doPlayerAddOutfit(cid, cfg.addon_female, 3)
			doSendMagicEffect(getThingPos(cid), 29)
			doPlayerSendTextMessage(cid, 19, "Addon " .. cfg.addon_name .. "full adicionado!!")
			doRemoveItem(item.uid, 1)
			setPlayerStorageValue(cid, cfg.storage, 1)
		else
			doPlayerSendTextMessage(cid, 19, "you already have this adon.")
		end
 
   return true
end
function onUse(cid, item, fromPosition, item2, toPosition)

if (cid:getStorageValue(SECRET_LIBRARY_FINAL_STORAGE) >= 1) then
local teleport = {x=32517, y=32537, z=12}
local item_id = 2550 -- ID do item que o player precisa para ser teleportado
local quantidade = 1

if getPlayerItemCount(cid,item_id) >= quantidade then
        doTeleportThing(cid, teleport)
        doSendMagicEffect(getPlayerPosition(cid), 21)
        doPlayerRemoveItem(cid, item_id, quantidade)
        doPlayerSendTextMessage(cid, 22, "You were teleported to the Library!")
        else
        doPlayerSendTextMessage(cid, 23, "Sorry, you need to use a scythe to enter.")
		end
	end
end
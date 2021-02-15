--########################
--#POR Caio Cesar, DevOTX#
--########################

function onUse(cid, item, fromPosition, itemEx, toPosition)
	local config = {
		storage = 27901,
		--storage = CODIGO QUE NAO PRECISA REGISTRAR NAS LIBS
		hours = 20
		--hours = hours > abaixo em config.hours*SEGUNDOS
	}

	if getPlayerStorageValue(cid, config.storage) >= os.time() then
		return doPlayerSendTextMessage(cid, 19, "You have used it, come back in 20 hours.")
	end

		doPlayerAddItem(cid, 22391, 1) -- ID DO ITEM
		setPlayerStorageValue(cid, config.storage, os.time()+config.hours*3600)
		return doPlayerSendTextMessage(cid,19,"You have found a mouthpiece for a horn.")
end

function onUse(cid, item, fromPosition, itemEx, toPosition)
	local config = {
		storage = 27902,

		hours = 1
		--hours = hours > abaixo em config.hours*SEGUNDOS
	}

	if getPlayerStorageValue(cid, config.storage) >= os.time() then
		return doPlayerSendTextMessage(cid, 19, "You have used it, come back in 10 secconds.")
	end

		doPlayerAddItem(cid, 35067, 1) -- ID DO ITEM
		setPlayerStorageValue(cid, config.storage, os.time()+config.hours*10)
		return doPlayerSendTextMessage(cid,19,"You have found a percht warding torch.")
end

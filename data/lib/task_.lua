kungtask = {
["dragon"] = {storages = {620001,630001}, count = 5,exp = 1000},
["dragon lord"] = {storages = {620002,630002}, count = 5, exp = 2000},
["hydra"] = {storages = {620003,630003}, count = 5, exp = 3000},
["frost dragon"] = {storages = {620004,630004} ,count = 5, exp = 4000},
["dragon guardian"] = {storages = {620005,630005} ,count = 5, exp = 5000},
["demondras"] = {storages = {620006,630006} ,count = 5, exp = 6000},
["thunder dragon"] = {storages = {620007,630007} ,count = 5, exp = 7000}
}
function ZerarTask(cid)
	for var, ret in pairs(kungtask) do
		if player:getStorageValue(ret.storages[2]) ~= -1 and player:getStorageValue(ret.storages[1]) <= os.time() then
			player:setStorageValue(ret.storages[2], -1)
			player:setStorageValue(ret.storages[1], -1)
			player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "You not have completed the task of "..var.." in the request time and it was zeroed")
		end
	end
end
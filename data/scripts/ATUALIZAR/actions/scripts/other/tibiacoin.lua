function onUse(player, item, fromPosition, target, toPosition, isHotkey)
local points = 1 --aqui você bota a quantidade de coins que o item vai dar
  db.query("UPDATE `accounts` SET `coins` = `coins` + '" .. points .. "' WHERE `id` = '" .. player:getAccountId() .. "';")
  player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Voce recebeu "..points.." coins")
  item:remove(1)
  return true
end
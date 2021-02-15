local days = 30 --dias que da de vip

local vip = Action()
function vip.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if Tile(player:getPosition()):hasFlag(TILESTATE_PROTECTIONZONE) then
		player:addVipDays(days)
		player:getPosition():sendMagicEffect(203)
		item:remove(1)
		player:remove() -- need kick player to add functions (outfit, mounts, and exp)
	else
		player:sendTextMessage(MESSAGE_STATUS_WARNING, "You can't use this when you're in a fight and in protection zone.")
		player:getPosition():sendMagicEffect(CONST_ME_POFF)
	end
	return true
end


vip:id(16101) -- id vip scroll
vip:register()
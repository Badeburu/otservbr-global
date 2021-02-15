local vipGod = TalkAction("/vip")

function vipGod.onSay(player, words, param)

    if not player:getGroup():getAccess() then
        return true
    end

    local params = param:split(',')
    if not params[2] then
        player:sendTextMessage(MESSAGE_INFO_DESCR, string.format('Player is required.\nUsage:\n%s <action>, <name>, [, <value>]\n\nAvailable actions:\ncheck, adddays, addinfinite, removedays, remove', words))
        return false
    end

    local targetName = params[2]:trim()
    local target = Player(targetName)
    if not target then
        player:sendTextMessage(MESSAGE_INFO_DESCR,string.format('Player (%s) is not online. Usage: %s <action>, <player> [, <value>]', targetName, words))
        return false
    end

    local action = params[1]:trim():lower()
    if action == 'adddays' then
        local amount = tonumber(params[3])
        if not amount then
            player:sendTextMessage(MESSAGE_INFO_DESCR,'<value> has to be a numeric value.')
            return false
        end

        target:addVipDays(amount)
		target:sendTextMessage(MESSAGE_INFO_DESCR,string.format('Você recebeu %s dias() de vip e agora tem %s dia(s) de vip restante.', amount, target:getVipDays()))
        player:sendTextMessage(MESSAGE_INFO_DESCR,string.format('%s received %s vip day(s) and now has %s vip day(s).', target:getName(), amount, target:getVipDays()))

    elseif action == 'removedays' then
        local amount = tonumber(params[3])
        if not amount then
            player:sendTextMessage(MESSAGE_INFO_DESCR,'<value> has to be a numeric value.')
            return false
        end

        target:removeVipDays(amount)
        target:sendTextMessage(MESSAGE_STATUS_WARNING,string.format('Você perdeu %s dia(s) de VIP. Você possuí %s dia(s) de vip restante.', amount, target:getVipDays()))
        player:sendTextMessage(MESSAGE_STATUS_WARNING,string.format('%s lost %s vip day(s) and now has %s vip day(s).', target:getName(), amount, target:getVipDays()))

    elseif action == 'addinfinite' then
        target:addInfiniteVip()
        player:sendTextMessage(MESSAGE_INFO_DESCR,string.format('%s now has infinite vip time.', target:getName()))

    elseif action == 'remove' then
        target:removeVip()
        player:sendTextMessage(MESSAGE_STATUS_WARNING,string.format('You removed all vip days from %s.', target:getName()))

    elseif action == 'check' then
        local days = target:getVipDays()
        player:sendTextMessage(MESSAGE_INFO_DESCR,string.format('%s has %s vip day(s).', target:getName(), (days == 0xFFFF and 'infinite' or days)))

    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, string.format('Action is required.\nUsage:\n%s <action>, <name>, [, <value>]\n\nAvailable actions:\ncheck, adddays, addinfinite, removedays, remove', words))
    end
    return false
end

vipGod:separator(" ")
vipGod:register()

  
local vip = TalkAction("!vip")

function vip.onSay(player, words, param)
	local days = player:getVipDays()
    if days == 0 then
        player:sendTextMessage(MESSAGE_STATUS_WARNING, 'You do not have any vip days.')
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR,string.format('You have %s vip day%s left.', (days == 0xFFFF and 'infinite amount of' or days), (days == 1 and '' or 's')))
    end
    return false
end

vip:register()
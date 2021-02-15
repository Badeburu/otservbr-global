function onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if player:hasMount(16) then
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You already have this mount.")
        return true
    end

    player:addMount(16) -- Id da Mount
    player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
    player:say('You received Crystal Wolf.', TALKTYPE_ORANGE_1)
    return true
end
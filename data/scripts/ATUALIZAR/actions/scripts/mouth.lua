 function onUse(cid, item, fromPosition, itemEx, toPosition, isHotkey)
    local player = Player(cid)

    if player:getItemCount(22390) >= 1 then
        player:removeItem(22390, 1)
        player:addItem(22396, 1)
        player:getPosition():sendMagicEffect(CONST_ME_REDSMOKE)
    else
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You need to carry the crude horn with mouthpiece in your backpack.")
        return true
    end
end
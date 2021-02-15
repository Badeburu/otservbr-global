 function onUse(cid, item, fromPosition, itemEx, toPosition, isHotkey)
    local player = Player(cid)

    if player:getItemCount(32521) >= 1 and player:getItemCount(32518) >= 1 and player:getItemCount(32421) >= 1 then
        player:removeItem(32521, 1)
        player:removeItem(32518, 1)
        player:removeItem(32421, 1)
        player:addItem(32422, 1)
        player:getPosition():sendMagicEffect(CONST_ME_REDSMOKE)
    else
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have to carry the falcon shield and items in your backpack.")
        return true
    end
end
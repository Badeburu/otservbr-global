function onUse(cid, item, fromposition, itemex, toposition)

if( getPlayerSex(cid) == 0 )then  

doPlayerSetSex(cid, 1)

doPlayerSendTextMessage(cid,22, "You have changed your Gender")

doSendMagicEffect(getPlayerPosition(cid), 5)

else

if( getPlayerSex(cid) == 1 ) then  

doPlayerSetSex(cid, 0)

doPlayerSendTextMessage(cid,22, "You have changed your Gender")

doSendMagicEffect(getPlayerPosition(cid), 5)

end  

return true  

end  

end
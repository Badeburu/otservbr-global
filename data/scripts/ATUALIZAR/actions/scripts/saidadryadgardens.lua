-- Start Config --
local topos = {x=33264, y=32013, z=7} -- Posição para onde o player será teleportado.
-- End Config --

function onUse(cid)
   if doTeleportThing(cid, topos) then
   doSendMagicEffect(getThingPos(cid), 54)
 end
end
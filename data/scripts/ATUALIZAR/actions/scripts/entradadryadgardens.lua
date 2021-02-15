-- Start Config --
local topos = {x=33200, y=32012, z=11} -- Posição para onde o player será teleportado.
-- End Config --

function onUse(cid)
   if doTeleportThing(cid, topos) then
   doSendMagicEffect(getThingPos(cid), 54)
 end
end
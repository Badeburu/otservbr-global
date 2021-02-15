-- Start Config --
local topos = {x=33584, y=32209, z=7} -- Posição para onde o player será teleportado.
-- End Config --

function onUse(cid)
   if doTeleportThing(cid, topos) then
 end
end
-- Start Config --
local topos = {x=33677, y=32147, z=7} -- Posição para onde o player será teleportado.
-- End Config --

function onUse(cid)
   if doTeleportThing(cid, topos) then
 end
end
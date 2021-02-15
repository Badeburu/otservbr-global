-- Start Config --
local topos = {x=33725, y=31180, z=5} -- Posição para onde o player será teleportado.
-- End Config --

function onUse(cid)
   if doTeleportThing(cid, topos) then
 end
end
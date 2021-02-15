-- Start Config --
local topos = {x=32354, y=31249, z=3} -- Posição para onde o player será teleportado.
-- End Config --

function onUse(cid)
   if doTeleportThing(cid, topos) then
 end
end
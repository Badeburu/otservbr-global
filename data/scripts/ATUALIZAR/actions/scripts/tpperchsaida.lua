-- Start Config --
local topos = {x=32325, y=31106, z=7} -- Posição para onde o player será teleportado.
-- End Config --

function onUse(cid)
   if doTeleportThing(cid, topos) then
 end
end
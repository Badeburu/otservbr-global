-- Start Config --
local topos = {x=33673, y=32230, z=7} -- Posição para onde o player será teleportado.
-- End Config --

function onUse(cid)
   if doTeleportThing(cid, topos) then
 end
end
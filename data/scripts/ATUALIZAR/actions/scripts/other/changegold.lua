local items = {
   [ITEM_GOLD_COIN] = {to = ITEM_PLATINUM_COIN},
   [ITEM_PLATINUM_COIN] = {from = ITEM_GOLD_COIN, to = ITEM_CRYSTAL_COIN},
   [ITEM_CRYSTAL_COIN] = {from = ITEM_PLATINUM_COIN, to = 15515},
   [15515] = {from = ITEM_CRYSTAL_COIN},
   }
function onUse(cid, item, fromPosition, itemEx, toPosition, isHotkey)
   local coin = items[item.itemid]
   if coin then
     if(item.type == 100 and coin.to ~= nil)then
       Item(item.uid):remove()
       Player(cid):addItem(coin.to, 1)
     elseif(coin.from ~= nil)then
       Item(item.uid):remove(1)
       Player(cid):addItem(coin.from, 100)
     end
   end
   return true
end
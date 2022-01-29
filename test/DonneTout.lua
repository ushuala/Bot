  idBotRessource =  ICI TU METS LID DE TON BOT BANQUE --exemple idBotRessource = 666666666
  forbidden_ressource = {id1,id2,id3...} -- exemple forbidden_ressource = {1,2,13,45564,15674,12}
  PodsBank = ICI TU METS LES PODS DE TON BOT BANQUE -- exemple PodsBank = 6000
  listIdols = {16962,16961,16960,16959,16358,16864,16865,16866}

function moveDonRessource()
  return {
    { map = map:currentMapId(), path = "havenbag" },
    { map = "5,-15", path = "top" },
    { map = "5,-16", path = "top" },
    { map = "1,-15", path = "right" },
    { map = "2,-15", path = "right" },
    { map = "3,-15", path = "right" },
    { map = "4,-15", path = "right" },
    { map = "1,-16", path = "right" },
    { map = "2,-16", path = "right" },
    { map = "3,-16", path = "right" },
    { map = "4,-16", path = "right" },
    { map = "7,-15", path = "left" },
    { map = "6,-15", path = "left" },
    { map = "7,-16", path = "left" },
    { map = "6,-16", path = "left" },
    { map = "1,-21", path = "bottom" },
    { map = "1,-20", path = "bottom" },
    { map = "1,-19", path = "bottom" },
    { map = "1,-18", path = "bottom" },
    { map = "1,-17", path = "bottom" },
    { map = "2,-21", path = "bottom" },
    { map = "2,-20", path = "bottom" },
    { map = "2,-19", path = "bottom" },
    { map = "2,-18", path = "bottom" },
    { map = "2,-17", path = "bottom" },
    { map = "7,-21", path = "bottom" },
    { map = "7,-20", path = "bottom" },
    { map = "7,-19", path = "bottom" },
    { map = "7,-18", path = "bottom" },
    { map = "7,-17", path = "bottom" },
    { map = "3,-20", path = "left" },
    { map = "3,-21", path = "left" },
    { map = "4,-20", path = "left" },
    { map = "4,-21", path = "left" },
    { map = "5,-20", path = "right" },
    { map = "5,-21", path = "right" },
    { map = "6,-20", path = "right" },
    { map = "6,-21", path = "right" },
    { map = "2,-20", path = "bottom" },
    { map = "2,-19", path = "bottom" },
    { map = "2,-18", path = "bottom" },
    { map = "2,-17", path = "bottom" },
    { map = "6,-17", path = "left" },
    { map = "6,-18", path = "bottom" },
    { map = "6,-19", path = "bottom" },
    { map = "5,-19", path = "bottom" },
    { map = "5,-18", path = "left" },
    { map = "3,-19", path = "right" },
    { map = "4,-19", path = "right" },
    { map = "3,-18", path = "right" },
    { map = "191104002", door = " 288" },
    { map = "192415750", custom = videBank },
    { map = "3,-17", path = "right" },
    { map = "4,-17", path = "right" },
    { map = "5,-17", path = "top" },
    { map = "162791424", path="zaap(191105026)"}
  }
end

banqueVide = false
isEmpty=true
function videBank()
  global:printMessage("Je vide ma banque")
  if banqueVide == false then
    global:printMessage("J'ouvre ma banque")
    npc:npcBank(-1)
    global:delay(1000)
    listIdols = {289,16962,16866,16865,16864,16358,16959,16960,16961,15884}
    exchange:putAllItemsExcept(listIdols)
    global:printMessage("Je vide mes items")
    global:delay(1000)
    exchange:getKamas(0)
    global:printMessage("Je recup les kamas")
    recupItems()
    if isEmpty then
      banqueVide = true
      global:printMessage("La banque est vide!")
    end
    global:leaveDialog()
    global:delay(1000)
    echangeBotRessource()
  else
    global:printMessage("Rien à faire !")
    global:reconnect(0)
  end
end

function recupItems()
  index_banque = 1
  isEmpty=true
  if PodsBank > inventory:podsMax() then
    PodsBank = inventory:podsMax()
  end
  for g = index_banque, 20000 do
    if exchange:storageItemQuantity(g) >= 1 and not has_value(forbidden_ressource,g) then
      podsLot = exchange:storageItemQuantity(g)*inventory:itemWeight(g)
      global:printMessage(inventory:itemNameId(g) .. " présent dans la banque "..exchange:storageItemQuantity(g).. " fois soit "..podsLot.." pods")
      nbPodsRestant = PodsBank-inventory:pods()
      global:printMessage("Il me reste "..nbPodsRestant.." pods dispo !")
      if podsLot > nbPodsRestant then
        global:printError("Je ne peux pas tout prendre !")
        nbTake = math.floor(nbPodsRestant / inventory:itemWeight(g))
        exchange:getItem(g, nbTake)
        global:printSuccess("J'ai pris "..nbTake.." "..inventory:itemNameId(g)..".")
        break
      else
        global:printMessage("Je peux tout prendre !")
        quantityTaken = exchange:storageItemQuantity(g)
        exchange:getItem(g, exchange:storageItemQuantity(g))
        global:printSuccess("J'ai pris "..quantityTaken.." "..inventory:itemNameId(g)..".")
      end
      isEmpty = false
    end
  end
end

function echangeBotRessource()
  success = false
  if map:isPlayerOnMap(idBotRessource) then
    while success == false do
        if exchange:launchExchangeWithPlayer(idBotRessource) then
          global:delay(1000)
          exchange:putAllItemsExcept(listIdols)
          global:delay(1000)
          exchange:ready()
          global:printSuccess("Echange avec le bot banque terminé avec succès.")
          global:delay(1000)
          success = true
        else
          global:printError("Le bot banque est actuellement indisponible, je re-tente dans 5 secondes.")
          global:delay(5000)
        end
    end
    global:restartScript(false)
  else
    global:printError("Le bot banque n'est pas présent.")
    map:changeMap("havenbag")
  end
end

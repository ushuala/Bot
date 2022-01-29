utilityFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\Utility.lua]])
if character:serverName() == "Julith" then
  idBotBanque = 569060950224
  idBotRessource = 569334497488
end
if character:serverName() == "Agride" then
  idBotBanque =659975766052
  idBotRessource = 660352335908
end
if character:serverName() == "Ilyzaelle" then
  idBotBanque =153065554142
end
donKamas=0
moduleB={}

local function has_value (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end
    return false
end

function moduleB:move()
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
    { map = "5,-18", path = "bottom" },

    { map = "3,-19", path = "right" },
    { map = "4,-19", path = "right" },

    { map = "3,-18", path = "right" },
    { map = "191104002", path = "right" },

    { map = "3,-17", path = "right" },
    { map = "4,-17", path = "right" },
    { map = "5,-17", custom = echangeBotBanque },
    { map = "162791424", path="zaap(191105026)"}
  }
end

function moduleB:moveDonKamas(nbKamas)
  donKamas=nbKamas
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
    { map = "5,-18", path = "bottom" },

    { map = "3,-19", path = "right" },
    { map = "4,-19", path = "right" },

    { map = "3,-18", path = "right" },
    { map = "191104002", path = "right" },

    { map = "3,-17", path = "right" },
    { map = "4,-17", path = "right" },
    { map = "5,-17", custom = donBotBanque },
    { map = "162791424", path="zaap(191105026)"}
  }
end

function moduleB:moveDonRessource()
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

function donBotBanque()
  attempt = 10
  success = 0
  if map:isPlayerOnMap(idBotBanque) then
		while attempt > 0 do
			if attempt > 1 then
				if exchange:launchExchangeWithPlayer(idBotBanque) then
          global:delay(1000)
          global:printMessage("Je donne "..donKamas.." au bot banque.")
          exchange:putKamas(donKamas)
					global:delay(9000)
					exchange:ready()
					attempt = 0
					global:printSuccess("Echange avec le bot banque terminé avec succès.")
          success = 1
				else
					global:printError("Le bot banque est actuellement indisponible, je re-tente dans 10 secondes.")
					attempt = attempt - 1
					global:printError("Tentative(s) restante(s) : "..tostring(attempt)..".")
					global:delay(10000)
				end
			elseif attempt == 0 then
				global:printMessage("Les multiples tentatives d'échange avec le bot banque ont échouées.")
        global:delay(10000)
			end
		end
	else
		global:printError("Le bot banque n'est pas présent.")
    global:reconnect(1)
    global:delay(10000)
  end
  map:changeMap("right")
end


function echangeBotBanque()
  attempt = 3
  if map:isPlayerOnMap(idBotBanque) then
		while attempt > 0 do
			if attempt > 1 then
				if exchange:launchExchangeWithPlayer(idBotBanque) then
					global:delay(10000)
					exchange:ready()
					attempt = 0
					global:printSuccess("Echange avec le bot banque terminé avec succès.")
				else
					global:printError("Le bot banque est actuellement indisponible, je re-tente dans 10 secondes.")
					attempt = attempt - 1
					global:printError("Tentative(s) restante(s) : "..tostring(attempt)..".")
					global:delay(10000)
				end
			elseif attempt == 0 then
				global:printMessage("Les multiples tentatives d'échange avec le bot banque ont échouées.")
        global:delay(10000)
			end
		end
	else
		global:printError("Le bot banque n'est pas présent.")
    global:delay(10000)
  end
  map:changeMap("right")
end

banqueVide = false
isEmpty=true
global:printMessage("a")
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
    isEmpty = recupItems()
    global:leaveDialog()
    if isEmpty == true then
      banqueVide = true
      global:printMessage("La banque est vide!")
    else
      global:delay(1000)
      echangeBotRessource()
    end
  else
    global:printMessage("Rien à faire : la banque est vide ! Je sors de la banque")
    if character:id() == 660339359780 or character:id() == 569328402640 then -- immonde mais ça passe
      utilityFile:getScript()
      global:reconnectBis(1)
    else
      map:moveToCell(409)
    end
  end
end

function moduleB:isBankEmpty()
  return banqueVide
end

forbidden_ressource = {289,16962,16866,16865,16864,16358,16959,16960,16961,15884}
PodsBank = 5500

function recupItems()
  index_banque = 1
  if PodsBank > inventory:podsMax() then
    PodsBank = inventory:podsMax()
  end
  isEmpty=true
  for g = index_banque, 20000 do
    if exchange:storageItemQuantity(g) >= 1 and not has_value(forbidden_ressource,g) then
      isEmpty = false
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
      global:printMessage("La banque n'est pas vide")
    end
  end
  return isEmpty
end

function echangeBotRessource()
  success = false
  if map:isPlayerOnMap(idBotRessource) then
    while success == false do
        if exchange:launchExchangeWithPlayer(idBotRessource) then
          global:delay(1000)
          listIdols = {16962,16961,16960,16959,16358,16864,16865,16866}
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
    global:printMessage("Je sors de la banque entre chaque échange...")
    map:moveToCell(409)
  else
    global:printError("Le bot banque n'est pas présent.")
    global:reconnect(5)
  end
end

return moduleB

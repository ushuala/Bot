--Allers retours en HDV pour mettre en vente
--SETTINGS - can be modified
black_list = {2553} --will not be sold
priceBlacklistWhenFull = 1000
black_list_temporary = {}
nbLotHDVItem = 3
tailleLot = 10
coef_prix_mini = 0.15
time_pause = 10
--PLANNING = {2,3,4,5,6,7,8,9}
lvMax = 20

--DO NOT MODIFY PLS
global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/Vente/vente.xml")
imHuman = dofile([[C:\Users\Administrator\Documents\Bot\Utility\imHuman.lua]])
guildeFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\Guilde.lua]])
settingsFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\Settings.lua]])
levelingFile = dofile([[C:\Users\Administrator\Documents\Bot\Metier\Zone_Farm.lua]])
utilityFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\Utility.lua]])
hdv = {}
go_verif_HDV = 1
go_bank = 0
go_sell = 0
spaceHDV = 0
itemsOnSale = 0
finish=false
numberHdv = 1
if tailleLot == 10 then
  numberHdv = 2
elseif tailleLot == 100 then
  numberHdv = 3
end

maxKamas = 20000000000000
minKamas = settingsFile:prixAbo()
global:printMessage("Je donne mes kamas au bot banque à partir de "..maxKamas.." kamas.")
if character:serverName() == "Julith" then
  idBotBanque = 569060950224
  idBotRessource = 569334497488
end
if character:serverName() == "Agride" then
  idBotBanque =659975766052
  idBotRessource = 660352335908
end
developer:startScript(false)
json = dofile([[C:\Users\Administrator\Documents\Bot\Utility\categories_data\json.lua]])

function generateBlackListByPrice()
  global:printSuccess("HDV full, création d'une blacklist supplémentaire...")
  black_list_temporary = {}
  for _, v in ipairs(hdv) do
    if v.id ~= nil and v.priceLot ~= nil then
      if v.priceLot < priceBlacklistWhenFull then
        global:printSuccess("L'objet "..inventory:itemNameId(v.id).. " ne coûte que "..v.priceLot..". Il est ajouté à la blacklist temporaire.")
        table.insert(black_list_temporary,v.id)
      end
    end
  end
  global:printSuccess("Fin de la génération de la blacklist temporaire !")
end

--- Open and parse a json file
function openJsonFile(path)
    local file = io.open(path, "r")
    local content = file:read("*a")
    file:close()
    local data = json.decode(content)
    return data
end
categories = openJsonFile([[C:\Users\Administrator\Documents\Bot\Utility\categories_data\categories.json]])
function getItemCategory(itemID)
    local typeID = inventory:getTypeId(itemID)
    if not categories then
        categories = openJsonFile([[C:\Users\Administrator\Documents\Bot\Utility\categories_data\categories.lua]])
    end
    for key, value in pairs(categories) do
        for k, v in pairs(value) do
            if v == typeID then
                return key
            end
        end
    end
    return ""
end

function mille(v)
  if v >= 1000 then
	local s = string.format("%d", math.floor(v))
	local pos = string.len(s) % 3
	if pos == 0 then pos = 3 end
	return string.sub(s, 1, pos) .. string.gsub(string.sub(s, pos+1), "(...)", ".%1")
  else
    return v
  end
end

function print_table()
  totalKamasHDV = 0
	global:printError("------------------------  RECAP HDV ---------------------------")
	for _, v in ipairs(hdv) do
		global:printMessage(inventory:itemNameId(v.id) .. ", total vente : " .. v.sale..", taille lot : "..v.tailleLots..", prix lot : "..mille(v.priceLot).." kamas.")
    totalKamasHDV = totalKamasHDV + (v.priceLot*v.sale)
	end
	global:printError("---------------------------------------------------------------")
  global:printSuccess(itemsOnSale.."/"..spaceHDV+itemsOnSale.." slots utilisés.")
    global:printSuccess("Montant total : "..mille(totalKamasHDV).." kamas.")
end

checkCraftMineur = 1
itemCraftMineur = ""
quantityCraftMineur = 0
checkCraftAlchimiste = 1
checkCraftBucheron = 1
goCraftMineur = 0
goCraftAlchimiste = 0
goCraftBucheron = 0
function calculCraftMineur()
  npc:npcBank(-1)
  global:printMessage("Banque ouverte")
  global:delay(1000)
  exchange:putAllItems()
  global:delay(1000)
  exchange:getKamas(0)
  global:printMessage("Kamas récupérés")
  global:delay(1000)
  global:printMessage("Mineur lv "..job:level(24))
  if job:level(24) <20 and exchange:storageItemQuantity(312) > 1000 and exchange:storageItemQuantity(303) > 1000 then
      idRessource1 = 312
      qtRessource1 = 6
      podsRessource1 = inventory:itemWeight(idRessource1) * qtRessource1
      idRessource2 = 303
      qtRessource2 = 10
      podsRessource2 = inventory:itemWeight(idRessource2) * qtRessource2
      podsCraft = podsRessource1 + podsRessource2
      quantityCraftMineur = math.floor((inventory:podsMax() - 200 )/podsCraft)
      global:printMessage("Je peux craft "..quantityCraftMineur.." ferrites.")
      exchange:getItem(idRessource1,qtRessource1*quantityCraftMineur)
      global:delay(1000)
      exchange:getItem(idRessource2,qtRessource2*quantityCraftMineur)
      global:printMessage("Go craft mineur")
      goCraftMineur = 1
      itemCraftMineur = "Ferrite"
  elseif job:level(24) < 40 and exchange:storageItemQuantity(312) > 1000 and exchange:storageItemQuantity(441) > 1000 then
    idRessource1 = 312
    qtRessource1 = 10
    podsRessource1 = inventory:itemWeight(idRessource1) * qtRessource1
    idRessource2 = 441
    qtRessource2 = 10
    podsRessource2 = inventory:itemWeight(idRessource2) * qtRessource2
    podsCraft = podsRessource1 + podsRessource2
    itemCraftMineur = "Aluminite"
    quantityCraftMineur = math.floor((inventory:podsMax() - 200 )/podsCraft)
    global:printMessage("Je vais craft "..quantityCraftMineur.." "..itemCraftMineur..".")
    exchange:getItem(idRessource1,qtRessource1*quantityCraftMineur)
    global:delay(1000)
    exchange:getItem(idRessource2,qtRessource2*quantityCraftMineur)
    global:printMessage("Go craft mineur")
    goCraftMineur = 1
  elseif job:level(24) < 60 and exchange:storageItemQuantity(312) > 1000 and exchange:storageItemQuantity(441) > 1000 and exchange:storageItemQuantity(442) > 1000 then
    idRessource1 = 312
    qtRessource1 = 10
    podsRessource1 = inventory:itemWeight(idRessource1) * qtRessource1
    idRessource2 = 441
    qtRessource2 = 10
    podsRessource2 = inventory:itemWeight(idRessource2) * qtRessource2
    idRessource3 = 442
    qtRessource3 = 10
    podsRessource3 = inventory:itemWeight(idRessource3) * qtRessource3
    podsCraft = podsRessource1 + podsRessource2 + podsRessource3
    itemCraftMineur = "Ebonite"
    quantityCraftMineur = math.floor((inventory:podsMax() - 200 )/podsCraft)
    global:printMessage("Je vais craft "..quantityCraftMineur.." "..itemCraftMineur..".")
    exchange:getItem(idRessource1,qtRessource1*quantityCraftMineur)
    global:delay(1000)
    exchange:getItem(idRessource2,qtRessource2*quantityCraftMineur)
    global:delay(1000)
    exchange:getItem(idRessource3,qtRessource3*quantityCraftMineur)
    global:printMessage("Go craft mineur")
    goCraftMineur = 1
  elseif job:level(24) < 80 and exchange:storageItemQuantity(312) > 1000 and exchange:storageItemQuantity(441) > 1000 and exchange:storageItemQuantity(442) > 1000 and exchange:storageItemQuantity(443) > 1000 then
    idRessource1 = 312
    qtRessource1 = 10
    podsRessource1 = inventory:itemWeight(idRessource1) * qtRessource1
    idRessource2 = 441
    qtRessource2 = 10
    podsRessource2 = inventory:itemWeight(idRessource2) * qtRessource2
    idRessource3 = 442
    qtRessource3 = 10
    podsRessource3 = inventory:itemWeight(idRessource3) * qtRessource3
    idRessource4 = 443
    qtRessource4 = 10
    podsRessource4 = inventory:itemWeight(idRessource4) * qtRessource4
    podsCraft = podsRessource1 + podsRessource2 + podsRessource3 + podsRessource4
    itemCraftMineur = "Magnesite"
    quantityCraftMineur = math.floor((inventory:podsMax() - 200 )/podsCraft)
    global:printMessage("Je vais craft "..quantityCraftMineur.." "..itemCraftMineur..".")
    exchange:getItem(idRessource1,qtRessource1*quantityCraftMineur)
    global:delay(1000)
    exchange:getItem(idRessource2,qtRessource2*quantityCraftMineur)
    global:delay(1000)
    exchange:getItem(idRessource3,qtRessource3*quantityCraftMineur)
    global:delay(1000)
    exchange:getItem(idRessource4,qtRessource4*quantityCraftMineur)
    global:printMessage("Go craft mineur")
    goCraftMineur = 1
  elseif job:level(24) < 100 and exchange:storageItemQuantity(445) > 1000 and exchange:storageItemQuantity(441) > 1000 and exchange:storageItemQuantity(442) > 1000 and exchange:storageItemQuantity(443) > 1000 then
    idRessource1 = 445
    qtRessource1 = 10
    podsRessource1 = inventory:itemWeight(idRessource1) * qtRessource1
    idRessource2 = 441
    qtRessource2 = 10
    podsRessource2 = inventory:itemWeight(idRessource2) * qtRessource2
    idRessource3 = 442
    qtRessource3 = 10
    podsRessource3 = inventory:itemWeight(idRessource3) * qtRessource3
    idRessource4 = 443
    qtRessource4 = 10
    podsRessource4 = inventory:itemWeight(idRessource4) * qtRessource4
    podsCraft = podsRessource1 + podsRessource2 + podsRessource3 + podsRessource4
    itemCraftMineur = "Bakelelite"
    quantityCraftMineur = math.floor((inventory:podsMax() - 200 )/podsCraft)
    global:printMessage("Je vais craft "..quantityCraftMineur.." "..itemCraftMineur..".")
    exchange:getItem(idRessource1,qtRessource1*quantityCraftMineur)
    global:delay(1000)
    exchange:getItem(idRessource2,qtRessource2*quantityCraftMineur)
    global:delay(1000)
    exchange:getItem(idRessource3,qtRessource3*quantityCraftMineur)
    global:delay(1000)
    exchange:getItem(idRessource4,qtRessource4*quantityCraftMineur)
    global:printMessage("Go craft mineur")
    goCraftMineur = 1
  else
    global:printError("Impossible de lv up mineur")
    goCraftMineur = 0
  end
  checkCraftMineur = 0
  global:leaveDialog()
  global:delay(1000)
  map:changeMap("havenbag")
end

function craftMineur()
  if itemCraftMineur == "Ferrite" and quantityCraftMineur >= 0 then
    global:printMessage("Je vais craft "..quantityCraftMineur.." "..itemCraftMineur..".")
    map:door(260)
    global:delay(750)
    craft:putItem(312,6)
    global:delay(750)
    craft:putItem(303,10)
    global:delay(750)
    craft:changeQuantityToCraft(quantityCraftMineur)
    global:delay(750)
    craft:ready()
    global:delay(550)
    global:leaveDialog()
    global:printMessage("Fin du craft !")
    checkCraftMineur = 1
    global:delay(550)
  elseif itemCraftMineur == "Aluminite" and quantityCraftMineur >= 0 then
    map:door(260)
    global:delay(750)
    craft:putItem(312,10)
    global:delay(750)
    craft:putItem(441,10)
    global:delay(750)
    craft:changeQuantityToCraft(quantityCraftMineur)
    global:delay(750)
    craft:ready()
    global:delay(550)
    global:leaveDialog()
    global:printMessage("Fin du craft !")
    checkCraftMineur = 1
    global:delay(550)
  elseif itemCraftMineur == "Ebonite" and quantityCraftMineur >= 0 then
    map:door(260)
    global:delay(750)
    craft:putItem(312,10)
    global:delay(750)
    craft:putItem(441,10)
    global:delay(750)
    craft:putItem(442,10)
    global:delay(750)
    craft:changeQuantityToCraft(quantityCraftMineur)
    global:delay(750)
    craft:ready()
    global:delay(550)
    global:leaveDialog()
    global:printMessage("Fin du craft !")
    checkCraftMineur = 1
    global:delay(550)
  elseif itemCraftMineur == "Magnesite" and quantityCraftMineur >= 0 then
    map:door(260)
    global:delay(750)
    craft:putItem(312,10)
    global:delay(750)
    craft:putItem(441,10)
    global:delay(750)
    craft:putItem(442,10)
    global:delay(750)
    craft:putItem(443,10)
    global:delay(750)
    craft:changeQuantityToCraft(quantityCraftMineur)
    global:delay(750)
    craft:ready()
    global:delay(550)
    global:leaveDialog()
    global:printMessage("Fin du craft !")
    checkCraftMineur = 1
    global:delay(550)
  elseif itemCraftMineur == "Bakelelite" and quantityCraftMineur >= 0 then
    map:door(260)
    global:delay(750)
    craft:putItem(445,10)
    global:delay(750)
    craft:putItem(441,10)
    global:delay(750)
    craft:putItem(442,10)
    global:delay(750)
    craft:putItem(443,10)
    global:delay(750)
    craft:changeQuantityToCraft(quantityCraftMineur)
    global:delay(750)
    craft:ready()
    global:delay(550)
    global:leaveDialog()
    global:printMessage("Fin du craft !")
    checkCraftMineur = 1
    global:delay(550)
  end
  map:changeMap("havenbag")
end

function scanHDV()
  hdv = {}
  global:printMessage("Ouverture de l'hdv")
  npc:npc(217,5)
  global:printSuccess("HDV ouvert")
  spaceHDV = sale:availableSpace()
  itemsOnSale = sale:itemsOnSale()
  i = 1
  while i <= itemsOnSale do
    alreadyInList = false
    for _, v in ipairs(hdv) do
      if v.id == sale:GetItemGID(i) then
        v.sale = v.sale + 1
        alreadyInList = true
      end
    end
      if not alreadyInList then
				table.insert(hdv, {id = sale:GetItemGID(i), sale = 1, price_save = 0, tailleLots = sale:getItemQuantity(i), priceLot = sale:GetItemPrice(i)})
			end
    i=i+1
  end
  if hdvFull then
    generateBlackListByPrice()
  else
    black_list_temporary={}
  end
  global:leaveDialog()
  print_table()
  go_verif_HDV = 0
  go_bank = 1
  go_sell = 0
end

function get_pod()
	a = inventory:podsMax() - inventory:pods() -11
	return a
end

function take_items()
  npc:npcBank(-1)
  global:printMessage("Banque ouverte")
  global:delay(1000)
  exchange:putAllItems()
  global:delay(1000)
  exchange:getKamas(0)
  global:printMessage("Kamas récupérés")
  global:delay(1000)
  index_banque = 1
  on_do_break = false
  finish = false
  for g = index_banque, 20000, 1 do
    if exchange:storageItemQuantity(g) > tailleLot then
      blackListed = false
      iTakeIt = true
      for j,k in ipairs(black_list) do
          if g == k then
            global:printError("[BANQUE] "..inventory:itemNameId(g).." : Objet blacklisté")
            blackListed = true
          end
      end
      for j,k in ipairs(black_list_temporary) do
          if g == k then
            global:printError("[BANQUE] "..inventory:itemNameId(g).." : Objet blacklisté")
            blackListed = true
          end
      end
      if not blackListed and getItemCategory(g) == "resources" then
        int_take = math.floor(exchange:storageItemQuantity(g)/tailleLot)
        if int_take > nbLotHDVItem then
          int_take = nbLotHDVItem
        end
        alreadyInHDV = false
        for _, v in ipairs(hdv) do
          if v.id == g then
            if v.sale >= nbLotHDVItem then
              global:printError("[BANQUE] "..inventory:itemNameId(v.id) .. " déjà en vente plus de " .. nbLotHDVItem .. " fois (Banque: "..mille(exchange:storageItemQuantity(g))..")")
              iTakeIt = false
            elseif v.sale < nbLotHDVItem then
              nbLotHDVItemForItem = nbLotHDVItem - v.sale
              if int_take >= nbLotHDVItemForItem then
                int_take = nbLotHDVItemForItem
              end
              alreadyInHDV = true
            end
          end
        end
        if iTakeIt then
          if inventory:itemWeight(g)*tailleLot*int_take > get_pod() then
              global:printSuccess("[BANQUE] Full Pods : go HDV")
              isFullPod = true
              index_banque = g - 1
              on_do_break = true
              break
          else
              exchange:getItem(g,tailleLot*int_take)
              global:printSuccess("[BANQUE] " .. inventory:itemNameId(g) .. " x " .. tailleLot*int_take .. " pris en banque (Reste en banque: "..mille(exchange:storageItemQuantity(g))..")")
          end
          if not alreadyInHDV then
            table.insert(hdv, {id = g, sale = 0, tailleLots = tailleLot})
          end
        end
      end
    end
    if on_do_break then
      on_do_break = false
      break
    end
    if g == 19998 then
      finish = true
    end
  end
  global:leaveDialog()
  go_bank = 0
  go_sell = 1
  go_verif_HDV = 0
  map:moveToCell(494)
end

function sellItems()
  global:printMessage("Ouverture de l'hdv pour vente")
  npc:npc(217,5)
  global:printSuccess("HDV ouvert")
  hdvFull=false
  for j, v in ipairs(hdv) do
    if v.id ~= 0 then
      v.sale = 0
      for i = 1, sale:ItemsOnSale() do
        if sale:GetItemGID(i) == v.id and sale:GetItemQuantity(i) == tailleLot then
          v.sale = v.sale + 1
          my_price = sale:GetItemPrice(i) -- prix auquel j'ai mis la ressource
          hdv_price = sale:GetPriceItem(v.id, numberHdv) -- prix HDV actuellement
          prix_min = sale:getAveragePriceItem(v.id, numberHdv) * coef_prix_mini --prix minimum
          if my_price ~= hdv_price and v.price_save ~= hdv_price then -- pas le meme prix que hdv, et pas le meme prix que la save
            v.price_save = hdv_price - 1
          else
            v.price_save = hdv_price
          end
          if my_price ~= hdv_price and v.price_save > prix_min and hdv_price > 1 then
            if v.price_save > sale:getAveragePriceItem(v.id, numberHdv) * 10 then
              v.price_save = sale:getAveragePriceItem(v.id, numberHdv) * 10
            end
              global:printError("[Vente] Mise à jour de "..tailleLot.." x [" .. inventory:itemNameId(v.id) .. "] : " .. mille(v.price_save) .. " Kamas.")
              sale:EditPrice(sale:GetItemGUID(i), v.price_save, tailleLot)
          end
        end
      end
      hdv_price = sale:GetPriceItem(v.id, numberHdv)
      prix_min = sale:getAveragePriceItem(v.id, numberHdv) * coef_prix_mini
      while inventory:itemCount(v.id) >= nbLotHDVItem do
        if sale:availableSpace() == 0 then
          global:printError("Plus de place HDV")
          hdvFull = true
          break
        end
        if hdv_price == 0 then
          global:printSuccess("[Vente] Mise en vente de "..tailleLot.." x [" .. inventory:itemNameId(v.id) .. "] : " .. mille(sale:getAveragePriceItem(v.id, numberHdv)*2) .. " Kamas. L'objet n'était pas présent en HDV, je x2 le prix moyen")
          sale:SellItem(v.id, tailleLot, sale:getAveragePriceItem(v.id, numberHdv)*2 )
        elseif hdv_price - 1 > prix_min and hdv_price - 1 > 1 and prix_min - 1 > 1 then
          if hdv_price > sale:getAveragePriceItem(v.id, numberHdv) * 10 then
            hdv_price = sale:getAveragePriceItem(v.id, numberHdv) * 10
          end
          global:printSuccess("[Vente] Mise en vente de "..tailleLot.." x [" .. inventory:itemNameId(v.id) .. "] : " .. mille(hdv_price - 1) .. " Kamas.")
          sale:SellItem(v.id, tailleLot, hdv_price - 1)
        else
          global:printError("[Vente] Mise en vente impossible de "..tailleLot.." x [" .. inventory:itemNameId(v.id) .. "], Hdv : " .. mille(hdv_price) .. " Kamas (Prix minimum : " .. prix_min .. ").")
          break
        end
        v.sale = v.sale + 1
      end
    end
  end
  spaceHDV = sale:availableSpace()
  itemsOnSale = sale:itemsOnSale()
	global:leaveDialog()
  global:printMessage("Fin de la mise en vente")
  global:printMessage("p'tite pause de "..time_pause.."minutes.")
  global:delay(time_pause * 60000)
    go_verif_HDV = 1
    go_bank = 0
    go_hdv = 0
end

function donBotBanque()
  attempt = 3
  success = 0
  donKamas = character:kamas()-minKamas
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

function move()
  utilityFile:isSubscribedAndSubscribe()
  if character:level() < lvMax then
    if currentConfig ~= "piou" then
      global:printSuccess("Chargement de la configuration Piou...")
      global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/Vente/piouSacri.xml")
      currentConfig = "piou"
    end
    if character:level() < 10 then
      MIN_MONSTERS = 1
      MAX_MONSTERS = 1
    else
      MIN_MONSTERS = 1
      MAX_MONSTERS = 2
    end
    FORBIDDEN_MONSTERS = {5308,5309,5310,5311,5312,5313}
    return levelingFile:piou()
  end
  if character:kamas() >= maxKamas then
    return {
      { map = map:currentMapId(), path = "havenbag" },
      { map = "162791424", path="zaap(191105026)"},
      { map = "5,-18", path = "bottom" },
      { map = "5,-17", custom = donBotBanque },
    }
  end
  if character:freeMode() then
    global:printError("Le bot n'est pas abonné !")
    path = "C:/Users/Administrator/Documents/Bot/Utility/subscribe0.lua"
    global:loadAndStart(path)
  end
  if os.date("%H") == settingsFile.HourBankAfk and os.date("%M")>=settingsFile.MinBankAfkStart and os.date("%M")<=settingsFile.MinBankAfkEnd  then
    global:printError("Le bot doit afk à la banque !")
    path = "C:/Users/Administrator/Documents/Bot/Utility/Ressource.lua"
    global:loadAndStart(path)
  end

  if checkCraftMineur == 1 then
    return {
           { map=map:currentMapId(), path="havenbag"},
           { map = "162791424", path = "zaap(95422468)" },
           { map = "95422468", path = "right"},
           { map = "95420418", path = "top"},
           { map = "90703872", door = "302"},
          { map = "91753985" , custom= calculCraftMineur },
    }
  end
  if goCraftMineur == 1 then
        return{
--[[0,0]]      { map = "162791424", path = "zaap(88085249)", done = false },
--[[10,22]]    { map = "88085249", path = "left", done = false },
--[[9,22]]     { map = "88084737",path = "left", done = false },
--[[8,22]]     { map = "88084225", path = "left", done = false },
--[[7,22]]     { map = "88083713", path = "left", done = false },
--[[6,22]]     { map = "88083201", path = "left", done = false },
--[[5,22]]     { map = "88082689", path = "left", done = false },
--[[4,22]]     { map = "88082177", path = "bottom", done = false },
--[[4,23]]     { map = "88081920", path = "bottom", done = false },
--[[4,24]]     { map = "88081921", path = "bottom", done = false },
--[[4,25]]     { map = "88081922", path = "bottom", done = false },
--[[4,26]]     { map = "88081923", path = "bottom", done = false },
--[[4,27]]     { map = "88081924", path = "bottom", done = false },
--[[4,28]]     { map = "88081925", path = "bottom", done = false },
--[[4,29]]     { map = "88081926", path = "left", done = false },
--[[3,29]]     { map = "88081414", door="360",done = false },
               { map = "99352588", custom=craftMineur,done = false }
      }
  end
  if go_verif_HDV == 1 then
    return {
           { map=map:currentMapId(), path="havenbag"},
--[[0,0]]  { map = "162791424", path = "zaap(95422468)" },
--[[13,26]]{ map = "95422468", path = "zaapi(90708226)"},
--[[22,23]]{ map = "90708226", path = "left" },
          { map = "90707714",custom=scanHDV },
    }
  elseif go_bank == 1 then
    return {
      { map=map:currentMapId(), path="havenbag"},
      { map = "162791424", path = "zaap(95422468)" },
      { map = "95422468", path = "right"},
      { map = "95420418", path = "top"},
      { map = "90703872", door = "302"},
      {map = "91753985", custom = take_items}
    }
  elseif go_sell == 1 then
    return {
           { map=map:currentMapId(), path="havenbag"},
--[[0,0]]  { map = "162791424", path = "zaap(95422468)" },
--[[13,26]]{ map = "95422468", path = "zaapi(90708226)"},
--[[22,23]]{ map = "90708226", path = "left" },
          { map = "90707714",custom= sellItems },
    }
  end
end

function messagesRegistering()
    developer:registerMessage("ExchangeRequestedTradeMessage", echangeBot)
    developer:registerMessage("GameRolePlayPlayerFightFriendlyRequestedMessage", defiBot)
    developer:registerMessage("ChatServerMessage", receptionMessage)
    developer:registerMessage("PopupWarningMessage", popUpModerateur)
    developer:registerMessage("PopupWarningClosedMessage", popUpModerateur)
    developer:registerMessage("MapComplementaryInformationsDataMessage", checkGuilde)
    developer:registerMessage("GuildSummaryMessage", joinGuilde)

end

function checkGuilde(message)
  guildeFile:checkGuilde(message)
end

function joinGuilde(message)
  guildeFile:joinGuilde(message)
end


function echangeBot(message)
  if utilityFile:isMyBot(message.source) == false then
    imHuman:echangeBot(message)
  end
end

function defiBot(message)
  imHuman:defiBot(message)
end

function receptionMessage(message)
  imHuman:receptionMessage(message)
end

function popUpModerateur(message)
  imHuman:popUpModerateur(message)
end

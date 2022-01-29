videBanque=1
buyPanoBouftou = true
goBuy =0
goPNJ=0
starting = 1
fight = 1

function move()
  if buyPanoBouftou then
    global:printMessage("Je vais acheter la panoplie du bouftou legendaire !")
    return goBuyBouftou()
  end
  if videBanque == 1 then
        global:printMessage("Je vais vider ma banque !")
    return goVideBanque()
  elseif goBuy == 1 then
        global:printMessage("Je vais acheter les ressources !")
    return goBuyy()
  elseif goPNJ == 1 then
        global:printMessage("Go otomai !")
    return goPNJJ()
  end
end

function goBuyBouftou()
  return {
          {map = map:currentMapId(), path="havenbag"},
          {map = "0,0", path="zaap(95422468)"},
          {map = "13,26", path = "left"},
        {map = "12,26", custom=buyPanoBouf},
        }
end

function customEquipItem(gid,position)
  if inventory:itemCount(gid) >=1  then
    if inventory:equipItem(gid, position) then
      global:printSuccess("Item : "..inventory:itemNameId(gid).." équipé !")
    else
      global:printSuccess("Impossible de mettre l'item "..inventory:itemNameId(gid))
    end
  end
  global:delay(1000)
end

function buyPanoBouf()
  if buyPanoBouftou then
    global:printMessage("Achat de la pano bouftou")
    idnpc = "215"
    npc:npc(tonumber(idnpc), 6)
    panoBouf = {2422,2411,2414,2425,2428,2419,2416}
    for _, v in ipairs(panoBouf) do
      while inventory:itemCount(v) == 0 do
        global:delay(2000)
        sale:buyItem(v, 1, 15000)
        global:printSuccess("Item : "..inventory:itemNameId(v).." acheté !")
      end
    end
    npc:leaveDialog()
    customEquipItem(2422,5)
    customEquipItem(2411,6)
    customEquipItem(2414,7)
    customEquipItem(2425,0)
    customEquipItem(2428,3)
    customEquipItem(2419,2)
    customEquipItem(2416,1)
    buyPanoBouftou = false
  end
  map:changeMap("havenbag")
end

function goVideBanque()
  return {
        	   {map = map:currentMapId(), path="havenbag"},
     {map = "162791424", path="zaap(95422468)"},
     {map = "13,26", path="top"},
     {map = "13,25", path="right"},
     {map = "14,25", door="302"},
     {map = "91753985", custom = npcBankingg}
  }
end

function goBuyy()
    return {
          	   {map = map:currentMapId(), path="havenbag"},
                    {map = "162791424", path="zaap(95422468)"},
                    {map = "13,26", path="right"},
                    {map = "14,26", path="top"},
      {map = "14,25", path="right"},
      {map = "15,25", path="right"},
      {map = "16,25", path="right"},
      {map = "17,25", path="top"},
      {map = "17,24", path="right"},
      {map = "18,24", path="right"},
      {map = "19,24", path="right"},
      {map = "20,24", path="right"},
      {map = "21,24", path="top"},
      {map = "21,23", custom=buyHDV, path = "bottom"},
    }
end

function goPNJJ()
  return{
        	   {map = map:currentMapId(), path="havenbag"},
                  {map = "162791424", path="zaap(95422468)"},
      { map = "90707714", path = "bottom" },
      { map = "90707713", path = "left" },
      { map = "90707201", path = "left" },
      { map = "90706689", path = "left" },
      { map = "90706177", path = "left" },
      { map = "90705665", path = "bottom" },
      { map = "90705408", path = "bottom" },
      { map = "90705409", path = "left" },
      { map = "90704897", path = "left" },
      { map = "15,26", path = "right" },
      { map = "16,26", path = "bottom" },
      { map = "16,27", path = "left" },
      { map = "15,27", path = "bottom" },
      { map = "15,28", custom = otomai_1 },
      { map = "26214400", forcefight = true },
      { map = "26215424", forcefight = true },
      { map = "26216448", forcefight = true },
      { map = "26217472", custom = otomai_2 },
      { map = "153090", custom = otomai_3 },
      { map = "-44,2", path = "right" },
      { map = "153090", custom = otomai_4 },
      { map = "153621", path="left"},
      { map = "154133", path="top"},
      { map = "154132", path="top"},
      { map = "154131", path="top"},
      { map = "154130", path="left"},
      { map = "154642", custom=disconnect},
      }
end

function disconnect()
  global:disconnect()
end

function npcBankingg()
  global:printMessage("Vidage de l'inventaire du bot pour avoir de quoi porter le GROS BOULET de Dissendium")
    npc:npcBank(-1)
    global:delay(1000)
    exchange:putAllItems()
    global:delay(1000)
    exchange:getKamas(0)
    global:leaveDialog()
    global:delay(1000)
    map:moveToCell(494)
    videBanque=0
    goBuy = 1
end


function buyHDV()
    global:printMessage("Achat de toutes les ressources")
  idnpc = "217"
  npc:npc(tonumber(idnpc), 6)
  global:delay(1000)
  sale:buyItem(2553, 1, 15000) -- [Gros Boulet]
  global:delay(1000)
  sale:buyItem(2551, 1, 10000)-- [Oreille de Foufayteur]
  if inventory:itemCount(2551) == 0 then
    sale:buyItem(2551, 10, 10000)
  end
  global:delay(1000)
  sale:buyItem(429, 1, 10000) -- [Pointe de Flèche du Chafer d'Élite]
  global:delay(1000)
  sale:buyItem(429, 1, 10000)
  if inventory:itemCount(429) <1 then
    sale:buyItem(429, 10, 10000)
  end
  global:delay(1000)
  sale:buyItem(399, 1, 10000) -- [Huile de Sésame]
  if inventory:itemCount(399) <1 then
    sale:buyItem(399, 10, 10000)
  end
  global:delay(1000)
  sale:buyItem(2617, 1, 10000) -- [Tranche de Nodkoko]
  if inventory:itemCount(2617) <1 then
    sale:buyItem(2617, 10, 10000)
  end
  global:delay(1000)
  sale:buyItem(2618, 1, 10000) -- [Kokopaille]
  if inventory:itemCount(2618) <1 then
    sale:buyItem(2618, 10, 10000)
  end
  global:delay(1000)
  if inventory:itemCount(2618) == 0 then
    sale:buyItem(2618, 10, 10000)
  end
  global:delay(1000)
  sale:buyItem(1002, 1, 10000) -- [Tronc de Kokoko]
  if inventory:itemCount(1002) <1 then
    sale:buyItem(1002, 10, 10000)
  end
  global:delay(1000)
  sale:buyItem(8759, 1, 10000) -- [Coffret maudit du Flib]
  if inventory:itemCount(8759) <1 then
    sale:buyItem(8759, 10, 10000)
  end
  global:delay(1000)
  npc:leaveDialog()
  goBuy = 0
  goPNJ = 1
  global:printMessage("Ressoures achetées")
end

function otomai_1()
    global:printSuccess("LANCEMENT DE LA QU�TES : LE NOUVEAU MONDE")
    npc:npc(925,3)
    npc:reply(-1)
    npc:reply(-1)
    npc:reply(-1)
    global:delay(2000)
    npc:npc(925,3)
    npc:reply(-1)
    global:leaveDialog()
    global:delay(2000)
    npc:npc(925,3)
    npc:reply(-1)
end

function otomai_2()
    npc:npc(925,3)
    npc:reply(-1)
end

function otomai_3()
    global:printSuccess("LANCEMENT DE LA QU�TES : L'�LE DES NAUFRAG�S")
    npc:npc(925,3)
    npc:reply(-1)
    npc:reply(-1)
    npc:reply(-1)
        npc:reply(-1)
    map:changeMap("left")
end

function otomai_4()
    npc:npc(925,3)
    npc:reply(-1)
    npc:reply(-1)
    npc:reply(-1)
        npc:reply(-1)
    global:leaveDialog()
    npc:npc(925,3)
    npc:reply(-1)
end

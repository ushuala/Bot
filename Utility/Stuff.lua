module = {}
listIdols = {16962,16961,16960,16959,16358,16864,16865,16866,14833}
listPanoAir36 = {2641,2640,953,1495,15992,18639,8228,7106}
listPanoAir50 = {2641,2640,953,9543,9124,18639,11358,17488}
listPanoAir60 = {2641,2640,953,9543,9124,18639,11358,17488,14833}
listPanoAir80 =  {2641,2640,953,9128,9124,2369,9164,9155,18690,14833} -- toady
listPanoAir130 =  {8287,23262,953,8448,2469,2369,8446,8290,18690,14833}
listPanoAir177 =  {23626,8695,953,8448,15768,15764,15762,8290,23621,14833}

listPanoToTake = {}

function equipItem(gid,position)
  if inventory:itemCount(gid) >=1  then
    if inventory:equipItem(gid, position) then
      global:printSuccess("Item : "..inventory:itemNameId(gid).." équipé !")
    else
      global:printSuccess("Impossible de mettre l'item "..inventory:itemNameId(gid))
    end
  end
  global:delay(1000)
end

function havePano(listItems)
  havePanoInventory = true
  for i,item in ipairs(listItems) do
    if inventory:itemCount(item) <1 then
      havePanoInventory = false
      global:printError("L'item "..inventory:itemNameId(item).." est introuvable dans l'inventaire !")
    end
  end
  return havePanoInventory
end

function getPano()
  return {
    { map=map:currentMapId(), path="havenbag"},
    {map = "14,25", door = "302"},
    {map = "14,26", path = "top"},
    {map = "13,26", path = "right"},
    {map = "162791424", path = "zaap(95422468)"},
    {map = "90702849", path = "right"},
    {map = "91753985", custom = takeItemsInBank}
}
end

function takeItemsInBank()
    npc:npcBank(-1)
    global:delay(1000)
    exchange:putAllItemsExcept(listIdols)
    global:delay(1000)
    exchange:getKamas(0)
    global:delay(1000)
    for i,item in ipairs(listItemsToGet) do
      exchange:getItem(item,1)
      global:delay(1000)
    end
    getIdols()
    global:leaveDialog()
    global:delay(1000)
    map:moveToCell(494)
end

function module:havePanoAir36()
  return havePano(listPanoAir36)
end

function module:havePanoAir50()
    return havePano(listPanoAir50)
end

function module:havePanoAir60()
    return havePano(listPanoAir60)
end

function module:havePanoAir80()
    return havePano(listPanoAir80)
end

function module:havePanoAir130()
    return havePano(listPanoAir130)
end

function module:havePanoAir177()
    return havePano(listPanoAir177)
end

function module:getPanoAir36()
  listItemsToGet=listPanoAir36
  return getPano()
end

function module:getPanoAir50()
  listItemsToGet=listPanoAir50
  return getPano()
end

function module:getPanoAir60()
  listItemsToGet=listPanoAir60
  return getPano()
end

function module:getPanoAir80()
  listItemsToGet=listPanoAir80
  return getPano()
end

function module:getPanoAir130()
  listItemsToGet=listPanoAir130
  return getPano()
end

function module:getPanoAir177()
  listItemsToGet=listPanoAir177
  return getPano()
end

function module:equipPanoAir36()
  global:printMessage("Equipement de la panoplie air 36 : https://d-bk.net/fr/d/oP14")
  equipItem(2641,6) -- toady
  equipItem(2640,1) -- carni
  equipItem(953,7) --tofu fou
  equipItem(1495,2) -- anneau dhyne
  equipItem(15992,4) --anneau bille
  equipItem(18639,3) -- ceinture Molosse
  equipItem(8228,5) -- bottes piou vert
  equipItem(7106,0) -- larvamulette
end
function module:equipPanoAir50()
  global:printMessage("Equipement de la panoplie air 50 : https://d-bk.net/fr/d/oP3h")
  equipItem(2641,6) -- toady
  equipItem(2640,1) -- carni
  equipItem(953,7) --tofu fou
  equipItem(9543,2) -- anneau dhyne
  equipItem(9124,4) --anneau bille
  equipItem(18639,3) -- ceinture Molosse
  equipItem(11358,5) -- bottes piou vert
  equipItem(17488,0) -- larvamulette
end
function module:equipPanoAir60()
  global:printMessage("Equipement de la panoplie air 50 : https://d-bk.net/fr/d/oP3h")
  equipItem(2641,6) -- toady
  equipItem(2640,1) -- carni
  equipItem(953,7) --tofu fou
  equipItem(9543,2) -- anneau dhyne
  equipItem(9124,4) --anneau bille
  equipItem(18639,3) -- ceinture Molosse
  equipItem(11358,5) -- bottes piou vert
  equipItem(17488,0) -- larvamulette
    equipItem(14833,8) -- monti
end
function module:equipPanoAir80()
  global:printMessage("Equipement de la panoplie air 80 : https://d-bk.net/fr/d/oP3v")
  equipItem(2641,6) -- toady
  equipItem(2640,1) -- carni
  equipItem(953,7) --tofu fou
  equipItem(9128,2) -- anneau dhyne
  equipItem(9124,4) --anneau bille
  equipItem(2369,3) -- ceinture Molosse
  equipItem(9164,5) -- bottes piou vert
  equipItem(9155,0) -- larvamulette
  equipItem(14833,8) -- monti
  equipItem(18690,15) --boubou
end
function module:equipPanoAir130()
  global:printMessage("Equipement de la panoplie air 130 : https://d-bk.net/fr/d/oShe")
  equipItem(8287,6) -- toady
  equipItem(23262,1) -- carni
  equipItem(953,7) --tofu fou
  equipItem(8448,2) -- anneau dhyne
  equipItem(2469,4) --anneau bille
  equipItem(2369,3) -- ceinture Molosse
  equipItem(8446,5) -- bottes piou vert
  equipItem(8290,0) -- larvamulette
    equipItem(14833,8) -- monti
    equipItem(18690,15) --boubou
end

function module:equipPanoAir177()
  global:printMessage("Equipement de la panoplie air 177 : https://d-bk.net/fr/d/oUV7")

  equipItem(23626,6) -- toady
  equipItem(8695,1) -- carni
  equipItem(953,7) --tofu fou
  equipItem(8448,2) -- anneau dhyne
  equipItem(15768,4) --anneau bille
  equipItem(15764,3) -- ceinture Molosse
  equipItem(15762,5) -- bottes piou vert
  equipItem(8290,0) -- larvamulette
    equipItem(14833,8) -- monti
    equipItem(23621,15) --boubou
end

function module:panoAir200()

end

return module

moduleBank = {}

function goBanqueSufokia()
  if map:currentMapId() ~= 162791424 and map:currentMap() ~= "13,26" and map:currentMap() ~= "14,25" and map:currentMap() ~= "14,26" then
    return { {map = map:currentMap(), path = "havenbag"} }
  end
  return {
    {map = "14,25", door = "302"},
    {map = "14,26", path = "top"},
    {map = "13,26", path = "right"},
    {map = "162791424", path = "zaap(95422468)"},
    {map = "91753985", custom = npcBankingAll}
}
end

function npcBankingAll()
    npc:npcBank(-1)
    global:delay(1000)
    listIdols = {16962,16961,16960,16959,16358,16864,16865,16866,14833}
    exchange:putAllItemsExcept(listIdols)
    global:delay(1000)
    global:printMessage("récupération des kams")
    exchange:getKamas(0)
    global:delay(1000)
    getIdols()
    global:leaveDialog()
    global:delay(1000)
    map:moveToCell(494)
end
function getIdols()
  if exchange:storageItemQuantity(16962) >=1 then --yoche
    exchange:getItem(16962, 1)
    global:printMessage("Yoche magistral récupéré")
    global:delay(1000)
  end
  if exchange:storageItemQuantity(16961) >=1 then --yoche
    exchange:getItem(16961, 1)
    global:printMessage("Yoche majeur récupéré")
    global:delay(1000)
  end
  if exchange:storageItemQuantity(16960) >=1 then --yoche
    exchange:getItem(16960, 1)
    global:printMessage("Yoche récupéré")
    global:delay(1000)
  end
  if exchange:storageItemQuantity(16959) >=1 then --yoche mineur
    exchange:getItem(16959, 1)
    global:printMessage("Yoche mineur récupéré")
    global:delay(1000)
  end
  if exchange:storageItemQuantity(16358) >=1 then --dynamo mineure
    exchange:getItem(16358, 1)
    global:printMessage("Dynamo mineur récupéré")
    global:delay(1000)
  end
  if exchange:storageItemQuantity(16864) >=1 then --dynamo
    exchange:getItem(16864, 1)
    global:printMessage("Dynamo récupéré")
    global:delay(1000)
  end
  if exchange:storageItemQuantity(16865) >=1 then --dynamo
    exchange:getItem(16865, 1)
    global:printMessage("Dynamo majeur récupéré")
    global:delay(1000)
  end
  if exchange:storageItemQuantity(16866) >=1 then --dynamo
    exchange:getItem(16866, 1)
    global:printMessage("Dynamo magistral récupéré")
    global:delay(1000)
  end
end

function moduleBank:bank()
  return goBanqueSufokia()
end

return moduleBank

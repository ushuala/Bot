module = {}

local function has_value (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end
    return false
end

if character:serverName() == "Julith" then
  idBotBanque = 569060950224
  listIdBot = {569070059728,569070190800,569070321872,569070518480,569070780624,569179111632,569328402640,569334497488}
  idBotRessource = 569334497488
end
if character:serverName() == "Agride" then
  idBotBanque =659975766052
  listIdBot = {659976421412,659976683556,659977207844,659977338916,660339359780,660352335908,660785856548}
  idBotRessource = 660352335908
end
if character:serverName() == "Ilyzaelle" then
  idBotBanque = 153065554142
  listIdBot = {153066733790,153068241118,153069486302,153603342558,153066733790,153065554142}
end
if character:serverName() == "Jahash" then
  idBotBanque = 26957971696
  listIdBot = {26960265456,26959347952,26958430448,153065554142}
end
alchimiste = {569070059728,660785856548,153066733790,26958430448}
bucheron = {569070190800,659976683556,153068241118,26959347952}
mineur = {569179111632,153069486302,659977207844,26960265456}

listPL = {569328402640,660339359780,569686687952}

function module:getMetier()
  metier = ""
  if has_value(alchimiste,character:id()) then
    metier = "Alchimiste"
  elseif has_value(bucheron,character:id()) then
    metier = "Bucheron"
  elseif has_value(mineur,character:id()) then
    metier = "Mineur"
  end
  global:printSuccess("Metier trouvé : "..metier)
  return metier
end

function module:createPlanning(hoursMinSleep,hoursMaxSleep)
  hoursDC = math.random(hoursMinSleep, hoursMaxSleep)
  PLANNING = {}
  if os.date("%H") >= "14" and os.date("%H") < "18"  then
    global:printSuccess("Le planning sera recalculé plus tard !")
    return PLANNING
  end
  global:printMessage("Calcul du planning")
  if hoursDC == 5 then
    PLANNING = {8,9,10,11,12,13,14}
  elseif hoursDC == 6 then
    PLANNING = {8,9,10,11,12,13,14,15}
  elseif hoursDC == 7 then
    PLANNING = {8,9,10,11,12,13,14,15}
  elseif hoursDC == 8 then
    PLANNING = {8,9,10,11,12,13,14,15,16}
  elseif hoursDC == 9 then
    PLANNING = {8,9,10,11,12,13,14,15,16,17}
  elseif hoursDC == 10 then
    PLANNING = {8,9,10,11,12,13,14,15,16,17}
  else
    global:printError("Heures de DC introuvable")
  end
  return PLANNING
end

function module:startMinHDV(startMinHDV)
  startHDV = math.random(0, 60-minDoingHDV)
  return startHDV
end
function module:endMinHDV(minDoingHDV,startMinHDV)
  endHDV = minDoingHDV+startMinHDV
  return endHDV
end

function module:startMinXP(timeFarmLevel)
  startXP = math.random(0, 60-timeFarmLevel)
  return startXP
end

function module:endMinXP(startMinXP,timeFarmLevel)
  endXP = startMinXP + timeFarmLevel
  return endXP
end

function module:goExploration()
  if maxLevelMetier() >= 2 or character:level() > 35 then
    global:addInMemory("checkExploration", 0)
    checkExploration = 0
  elseif global:remember("checkExploration") == nil then
    checkExploration = 1
    global:addInMemory("checkExploration", 1)
  else
    checkExploration = global:remember("checkExploration")
  end
  return checkExploration
end

function maxLevelMetier()
  maxLevel = 0
  if job:level(2)>maxLevel then
    maxLevel=job:level(2)
  end
  if job:level(24)>maxLevel then
    maxLevel=job:level(24)
  end
  if job:level(26)>maxLevel then
    maxLevel=job:level(26)
  end
  if job:level(28)>maxLevel then
    maxLevel=job:level(28)
  end
  if job:level(36)>maxLevel then
    maxLevel=job:level(36)
  end
  return maxLevel
end

function module:maxLevelMetier()
  maxLevel = 0
  if job:level(2)>maxLevel then
    maxLevel=job:level(2)
  end
  if job:level(24)>maxLevel then
    maxLevel=job:level(24)
  end
  if job:level(26)>maxLevel then
    maxLevel=job:level(26)
  end
  if job:level(28)>maxLevel then
    maxLevel=job:level(28)
  end
  if job:level(36)>maxLevel then
    maxLevel=job:level(36)
  end
  return maxLevel
end

function module:getIdBotBanque()
  return idBotBanque
end


function module:isMyBot(idBot)
  res = has_value(listIdBot,idBot)
  return res
end

function module:isBossGroup()
  res = has_value(listPL,character:id())
  return res
end

function module:setVariante(idSort)
      global:delay(1000)
      global:printMessage("Je mets la variante "..idSort)
      monMessage = developer:createMessage("SpellVariantActivationRequestMessage")
  		monMessage.spellId = idSort
  		developer:sendMessage(monMessage)
      global:printSuccess("Variante choisie !")
      global:delay(1000)
end

function module:setCompoCac()
  global:printMessage("Mise en place de la compo cac...")
  nbIdolSet = 0
  openIdols = developer:createMessage("IdolPartyRegisterRequestMessage")
  openIdols.register = true
  developer:sendMessage(openIdols)
  global:delay(1000)
  if nbIdolSet < 6 then
    if setIdol(16962,64,135,"Yoche magistral") then
      nbIdolSet = nbIdolSet +1
    end
  end
  if nbIdolSet < 6 then
    if setIdol(16866,34,121,"Dynamo magistral") then
      nbIdolSet = nbIdolSet +1
    end
  end
  if nbIdolSet < 6 then
    if setIdol(16961,63,95,"Yoche majeur") then
      nbIdolSet = nbIdolSet +1
    end
  end
  if nbIdolSet < 6 then
    if setIdol(16865,33,81,"Dynamo majeur") then
      nbIdolSet = nbIdolSet +1
    end
  end
  if nbIdolSet < 6 then
    if setIdol(16960,62,55,"Yoche") then
      nbIdolSet = nbIdolSet +1
    end
  end
  if nbIdolSet < 6 then
    if setIdol(16865,32,41,"Dynamo") then
      nbIdolSet = nbIdolSet +1
    end
  end
  if nbIdolSet < 6 then
    if setIdol(16959,61,15,"Yoche mineur") then
      nbIdolSet = nbIdolSet +1
    end
  end
  if nbIdolSet < 6 then
    if setIdol(16358,31,1,"Dynamo mineur") then
      nbIdolSet = nbIdolSet +1
    end
  end
  global:printSuccess("Fin de l'équipement des idoles")
  closeIdols = developer:createMessage("IdolPartyRegisterRequestMessage")
  closeIdols.register = false
  developer:sendMessage(closeIdols)
end

function setIdol(idIdol, idsetIdol, levelMin, nameIdol)
  if inventory:itemCount(idIdol)>0 and character:level() >= levelMin then
    idole = developer:createMessage("IdolSelectRequestMessage")
    idole.idolId = idsetIdol
    idole.activate = true
    idole.party = false
    developer:sendMessage(idole)
    global:printSuccess("Idole "..nameIdol.." équipé !")
    global:delay(1000)
    return true
  else
    global:printError("Impossible de mettre "..nameIdol)
    return false
  end
end

hoursBeforeSubscribe = 24
function module:isSubscribed()
  currentUnix = os.time(os.date("!*t"))
  abo = true
  unixSubscribe = developer:historicalMessage("IdentificationSuccessMessage")[1].subscriptionEndDate/1000-(3600*hoursBeforeSubscribe)
  if unixSubscribe <= currentUnix then
    global:printError("Le bot n'est pas abonné ou a moins d'un jour d'abonnement restant !")
    abo = false
  end
  return abo
end
function module:isSubscribedAndSubscribe()
  currentUnix = os.time(os.date("!*t")) --convert pour le meme format que celui de dof'
  abo = true
  unixSubscribe = developer:historicalMessage("IdentificationSuccessMessage")[1].subscriptionEndDate/1000-(3600*hoursBeforeSubscribe)
  if unixSubscribe <= currentUnix then
    global:printError("Le bot n'est pas abonné ou a moins d'un jour d'abonnement restant !")
    abo = false
  end
  if abo == false then
    global:printMessage("Le bot n'est pas abonné")
    path = "C:/Users/Administrator/Documents/Bot/Utility/subscribe0.lua"
    global:loadAndStart(path)
  end
  return abo
end

function module:getScript()
  if has_value(mineur,character:id()) or has_value(alchimiste,character:id()) or has_value(bucheron,character:id()) then
    global:printMessage("Le bot est un bot métier.")
    global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/Metier/sadi_1_30.xml")
  elseif idBotBanque == character:id() then
    global:printMessage("Le bot est un bot banque.")
    global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/Banque/sadi_1_30.xml")
  elseif idBotRessource == character:id() then
    global:printMessage("Le bot est un bot ressource.")
    global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/Vente/vente.xml")
  else
    global:printMessage("Le bot est un bot farming.")
    global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/Drop/pinPerdu.xml")
  end
end

function module:groupTeam(grouped)
  if grouped == 0 then
    global:inviteTeam()
    grouped = 1
    global:printSuccess("On est groupé !")
  end
  return grouped
end
return module

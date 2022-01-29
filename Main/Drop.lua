metier = "Drop"

--Imports
dropFile = dofile([[C:\Users\Administrator\Documents\Bot\Metier\Zone_Farm.lua]])
bankFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\Banque.lua]])
retourBankFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\retourBanque.lua]])
explorationFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\Exploration.lua]])
utilityFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\Utility.lua]])
phenixFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\phenix.lua]])
imHuman = dofile([[C:\Users\Administrator\Documents\Bot\Utility\imHuman.lua]])
guildeFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\Guilde.lua]])
settingsFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\Settings.lua]])
currentConfig = ""
currentZone = ""
changeZone = 1
FORBIDDEN_MONSTERS = {5308,5309,5310,5311,5312,5313}
--PLANNING = {9,10,11,12,13,14,15,16,17,18,19,20,21}

idols = 0
developer:startScript(false)

function createZone()
  if character:level() < 200 then
    zones = {"frigost1","gobvious","pinPerdu","ouassingue","porkass", "ratAmakna"}
  else
    --ouassingues dispo mais peut etre trop spotted
    zones = {"gobvious","pinPerdu","ratAmakna", "bwork", "foretOtomai"}
  end
end
function loadIdols()
  if idols == 0 and utilityFile:isBossGroup() then
    utilityFile:setCompoCac()
    idols = 1
  end
end

function ouassingue()
  if currentConfig ~= "ouassingue" then
    character:getSpellVariant(12753)
    global:printSuccess("Chargement de la configuration Ouassingue...")
    global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/"..metier.."/ouassingueAstrub.xml")
    currentConfig = "ouassingue"
  end
    MIN_MONSTERS = 3
    MAX_MONSTERS = 8
  FORBIDDEN_MONSTERS = {5308,5309,5310,5311,5312,5313,4027}
  loadIdols()
  return dropFile:ouassingueAstrub()
end
function ratAmakna()
  if currentConfig ~= "ratAmakna" then
    character:getSpellVariant(12753)
    global:printSuccess("Chargement de la configuration Rat Amakna...")
    global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/"..metier.."/ratAmakna.xml")
    currentConfig = "ratAmakna"
  end
    MIN_MONSTERS = 1
    MAX_MONSTERS = 8
  FORBIDDEN_MONSTERS = {5308,5309,5310,5311,5312,5313,4027}
  loadIdols()
  return dropFile:ratAmakna()
end
function porkass()
  if currentConfig ~= "Porkass" then
    character:getSpellVariant(12753)
    global:printSuccess("Chargement de la configuration Porkass...")
    global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/"..metier.."/Porkass.xml")
    currentConfig = "Porkass"
  end
    MIN_MONSTERS = 3
    MAX_MONSTERS = 8
  FORBIDDEN_MONSTERS = {5308,5309,5310,5311,5312,5313,4027}
  loadIdols()
  return dropFile:porkass()
end

function gobvious()
  if currentConfig ~= "gobvious" then
    if utilityFile:isBossGroup() then
      character:getSpellVariant(12753)
      global:printSuccess("Chargement de la configuration Gobvious...")
      global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/"..metier.."/gobvious.xml")
    else
      global:printSuccess("Chargement de la configuration Mule...")
      global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/"..metier.."/mule.xml")
    end
    currentConfig = "gobvious"
  end
  if character:level() < 200 then
    MIN_MONSTERS = 1
    MAX_MONSTERS = 4
  else
    MIN_MONSTERS = 1
    MAX_MONSTERS = 8
  end
  loadIdols()
  FORBIDDEN_MONSTERS = {5308,5309,5310,5311,5312,5313,4027}
  return dropFile:gobvious()
end

function pinPerdu()
  if currentConfig ~= "pinPerdu" then
    character:getSpellVariant(12753)
    global:printSuccess("Chargement de la configuration pinPerdu...")
    global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/"..metier.."/pinPerdu.xml")
    currentConfig = "pinPerdu"
  end
  if inventory:itemCount(737)<1 then
    MIN_MONSTERS = 1
    MAX_MONSTERS = 2
  elseif character:level() < 200 then
    MIN_MONSTERS = 1
    MAX_MONSTERS = 3
  else
    MIN_MONSTERS = 2
    MAX_MONSTERS = 4
  end
  FORBIDDEN_MONSTERS = {5308,5309,5310,5311,5312,5313,4027}
  loadIdols()
  return dropFile:foretPinPerdu()
end

function bwork()
  if currentConfig ~= "bwork" then
    character:getSpellVariant(12753)
    character:getSpellVariant(12763)
    character:getSpellVariant(12724)
    character:getSpellVariant(14011)
    global:printSuccess("Chargement de la configuration Bwork Cania...")
    global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/"..metier.."/bworkCania.xml")
    currentConfig = "bwork"
  end
    MIN_MONSTERS = 1
    MAX_MONSTERS = 2
  FORBIDDEN_MONSTERS = {5308,5309,5310,5311,5312,5313,4027}
  loadIdols()
  return dropFile:bworkCania()
end

function frigost1()
  if utilityFile:isBossGroup() then
    if currentConfig ~= "frigost80" and character:level() < 130 then
      global:printSuccess("Chargement de la configuration Frigost lv 80...")
      global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/"..metier.."/bougradeSacri80.xml")
      currentConfig = "frigost80"
      MIN_MONSTERS = 1
      MAX_MONSTERS = 2
    elseif currentConfig ~= "frigost130" and character:level() < 180 then
      global:printSuccess("Chargement de la configuration Frigost lv 130...")
      global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/"..metier.."/bougradeSacri130.xml")
      currentConfig = "frigost130"
      MIN_MONSTERS = 1
      MAX_MONSTERS = 2
    elseif currentConfig ~= "frigost180" and character:level() <= 200 then
      global:printSuccess("Chargement de la configuration Frigost lv 180...")
      character:getSpellVariant(12753)
      global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/"..metier.."/bougradeSacri180.xml")
      currentConfig = "frigost180"
      MIN_MONSTERS = 1
      MAX_MONSTERS = 4
    end
  else
    if currentConfig ~= "frigostmule" then
      global:printSuccess("Chargement de la configuration Mule...")
      global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/"..metier.."/mule.xml")
      currentConfig = "frigostmule"
    end
  end
  FORBIDDEN_MONSTERS = {5308,5309,5310,5311,5312,5313}
  loadIdols()
  return dropFile:frigost1()
end

function foretOtomai()
  if currentConfig ~= "foretOtomai" then
    character:getSpellVariant(12753)
    global:printSuccess("Chargement de la configuration foretOtomai...")
    global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/"..metier.."/pinPerdu.xml")
    currentConfig = "foretOtomai"
  end
  MIN_MONSTERS =1
  MAX_MONSTERS = 2
    FORBIDDEN_MONSTERS = {5308,5309,5310,5311,5312,5313,4027,3528,2554,2360,2544,2546,2565,2579}
  loadIdols()
  return dropFile:foretOtomai()
end

function randomZoneToFarm()
  global:printMessage("Choix de la zone...")
  i = math.random(1,#zones)
  currentZone = zones[i]
  global:printMessage("En route vers "..currentZone)
end

function goDrop()
  if currentZone == "frigost1" then
    return frigost1()
  elseif currentZone == "gobvious" then
    return gobvious()
  elseif currentZone == "pinPerdu" then
    return pinPerdu()
  elseif currentZone == "bwork" then
    return bwork()
  elseif currentZone == "ouassingue" then
    return ouassingue()
  elseif currentZone == "porkass" then
    return porkass()
  elseif currentZone == "ratAmakna" then
    return ratAmakna()
  elseif currentZone == "foretOtomai" then
    return foretOtomai()
  else
    global:printError("ZONE INTROUVABLE")
  end
end

function chosePath()
  if (os.date("%M") < "5" and changeZone == 1) or currentZone=="" then
   randomZoneToFarm()
   changeZone = 0
 elseif os.date("%M") >= "5" then
    changeZone = 1
  end
  return goDrop()
end

function move()
  utilityFile:isSubscribedAndSubscribe()
  if not grouped then
    global:inviteTeam()
    grouped = true
  end
  if not zonesCreated then
    createZone()
    zonesCreated = true
  end
  if character:freeMode() then
    global:printError("Le bot n'est pas abonné !")
    path = "C:/Users/Administrator/Documents/Bot/Utility/subscribe0.lua"
    global:loadAndStart(path)
  end
  if os.date("%H") == settingsFile.HourBankAfk and os.date("%M")==settingsFile.MinGiveBank then
      global:printError("Le bot doit vider sa banque !")
      path = "C:/Users/Administrator/Documents/Bot/Utility/Empty.lua"
      global:loadAndStart(path)
  end
  return chosePath()
end

function bank()
  return retourBankFile:bank()
end
function phenix()
  return phenixFile:phenix()
end
function stopped()
end
function banned()
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

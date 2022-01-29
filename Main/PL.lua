metier = "PL"

--Imports
plFile = dofile([[C:\Users\Administrator\Documents\Bot\Metier\Zone_Farm.lua]])
bankFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\Banque.lua]])
retourBankFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\retourBanque.lua]])
explorationFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\Exploration.lua]])
utilityFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\Utility.lua]])
IdolsFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\Idols.lua]])
phenixFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\phenix.lua]])
guildeFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\Guilde.lua]])
stuffFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\Stuff.lua]])
imHuman = dofile([[C:\Users\Administrator\Documents\Bot\Utility\imHuman.lua]])

--VAR do not modify
checkExploration = utilityFile:goExploration()
checkOtomai = 0
if character:level() > 35 then
  checkOtomai = 1
end
currentConfig = ""
FORBIDDEN_MONSTERS = {5308,5309,5310,5311,5312,5313}


--VAR can be modified
kamasMin = 10000
--PLANNING = {10,11,12,13,14,15,16,17,18,19,20,21}
levelMaxPiou = 20
idols = 0
lastLevel = character:level()
grouped = 0
pano36Equiped = false
pano50Equiped = false
pano60Equiped = false
pano80Equiped = false
pano130Equiped = false
pano177Equiped = false

developer:startScript(false)

function stuffChoser()
  if pano36Equiped == false and character:level() >= 36 and character:level() < 50 then
    return stuffFile:getPanoAir36()
  elseif pano50Equiped == false and character:level() >= 50 and character:level() < 60 then
    return stuffFile:getPanoAir50()
  elseif pano60Equiped == false and character:level() >= 60 and character:level() <80 then
    return stuffFile:getPanoAir60()
  elseif pano80Equiped == false and character:level() >= 80 and character:level() <130 then
    return stuffFile:getPanoAir80()
  elseif pano130Equiped == false and character:level() >= 130 and character:level() <177 then
    return stuffFile:getPanoAir130()
  elseif pano177Equiped == false and character:level() >= 177 and character:level() <200 then
    return stuffFile:getPanoAir177()
  end
end

function needStuff()
  if pano36Equiped == false and character:level() >= 36 and character:level() < 50 then
    global:printMessage("Je dois me stuff 36")
    if stuffFile:havePanoAir36() == false then
      global:printMessage("Je vais chercher le stuff en banque")
      return false
    else
      stuffFile:equipPanoAir36()
      pano36Equiped = true
      return true
    end
  elseif pano50Equiped == false and character:level() >= 50 and character:level() < 60 then
  global:printMessage("Je dois me stuff 50")
    if stuffFile:havePanoAir50() == false then
      global:printMessage("Je vais chercher le stuff en banque")
      return false
    else
      stuffFile:equipPanoAir50()
      pano50Equiped = true
      return true
    end
  elseif pano60Equiped == false and character:level() >= 60 and character:level() < 80 then
  global:printMessage("Je dois me stuff 60")
    if stuffFile:havePanoAir60() == false then
      global:printMessage("Je vais chercher le stuff en banque")
      return false
    else
      stuffFile:equipPanoAir60()
      pano60Equiped = true
      return true
    end
  elseif pano80Equiped == false and character:level() >= 80 and character:level() < 130 then
    global:printMessage("Je dois me stuff 80")
    if stuffFile:havePanoAir80() == false then
      global:printMessage("Je vais chercher le stuff en banque")
      return false
    else
      stuffFile:equipPanoAir80()
      pano80Equiped = true
      return true
    end
  elseif pano130Equiped == false and character:level() >= 130 and character:level() < 177 then
    global:printMessage("Je dois me stuff 130")
    if stuffFile:havePanoAir130() == false then
      global:printMessage("Je vais chercher le stuff en banque")
      return false
    else
      stuffFile:equipPanoAir130()
      pano130Equiped = true
      return true
    end
  elseif pano177Equiped == false and character:level() >= 177 and character:level() < 200 then
    global:printMessage("Je dois me stuff 177")
    if stuffFile:havePanoAir177() == false then
      global:printMessage("Je vais chercher le stuff en banque")
      return false
    else
      stuffFile:equipPanoAir177()
      pano177Equiped = true
      return true
    end
  end
  return true
end

function loadIdols()
  if lastLevel < character:level() then
    lastLevel = character:level()
    idols = 0
  end
  if idols == 0 then
    utilityFile:setCompoCac()
    idols = 1
  end
end

function piou()
  if currentConfig ~= "piou" then
    global:printSuccess("Chargement de la configuration Piou...")
    global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/"..metier.."/piouSacri.xml")
    currentConfig = "piou"
  end
  if character:level() < 10 then
    MIN_MONSTERS = 1
    MAX_MONSTERS = 1
  else
    MIN_MONSTERS = 1
    MAX_MONSTERS = 2
  end
  return plFile:piou()
end

function bouftou()
  if currentConfig ~= "bouftou" then
    global:printSuccess("Chargement de la configuration Bouftou...")
    global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/"..metier.."/bouftouSacri.xml")
    currentConfig = "bouftou"
  end
  if character:level() < 35 then
    MIN_MONSTERS = 1
    MAX_MONSTERS = 1
  else
    MIN_MONSTERS = 1
    MAX_MONSTERS = 2
  end
  return plFile:bouftou()
end

function piouSufokia()
  if currentConfig ~= "piou" then
    global:printSuccess("Chargement de la configuration Piou...")
    global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/"..metier.."/piouSacri.xml")
    currentConfig = "piou"
  end
  if character:level() < 10 then
    MIN_MONSTERS = 1
    MAX_MONSTERS = 1
  elseif character:level() < 20 then
    MIN_MONSTERS = 1
    MAX_MONSTERS = 2
  elseif character:level() < 30 then
    MIN_MONSTERS = 1
    MAX_MONSTERS = 4
  else
    MIN_MONSTERS = 4
    MAX_MONSTERS = 8
  end
    return plFile:piouSufokia()
end

function otomai()
  if currentConfig ~= "otomai" then
    global:printSuccess("Chargement de la configuration Otomai...")
    global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/"..metier.."/bouftouSacri.xml")
    currentConfig = "otomai"
  end
  if character:level() < 50 then
  MIN_MONSTERS = 1
  MAX_MONSTERS = 2
  FORBIDDEN_MONSTERS = {5308,5309,5310,5311,5312,5313,1067}
elseif character:level() < 60 then
    FORBIDDEN_MONSTERS = {5308,5309,5310,5311,5312,5313,1067}
    MIN_MONSTERS = 1
    MAX_MONSTERS = 2
  else
    FORBIDDEN_MONSTERS = {5308,5309,5310,5311,5312,5313}
    MIN_MONSTERS = 1
    MAX_MONSTERS = 2
  end
  return plFile:otomai()
end
function frigost1()
    if currentConfig ~= "frigost80" and character:level() < 130 then
      global:printSuccess("Chargement de la configuration Frigost lv 80...")
      global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/"..metier.."/bougradeSacri80.xml")
      currentConfig = "frigost80"
      MIN_MONSTERS = 1
      MAX_MONSTERS = 2
    elseif currentConfig ~= "frigost130" and  character:level() >= 130 and character:level() < 177 then
      global:printSuccess("Chargement de la configuration Frigost lv 130...")
      global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/"..metier.."/bougradeSacri130.xml")
      currentConfig = "frigost130"
      MIN_MONSTERS = 1
      MAX_MONSTERS = 2
    elseif currentConfig ~= "frigost177" and  character:level() >= 177 and character:level() <= 200 then
      global:printSuccess("Chargement de la configuration Frigost lv 177...")
      character:getSpellVariant(12753)
      global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/"..metier.."/bougradeSacri180.xml")
      currentConfig = "frigost177"
      MIN_MONSTERS = 1
      MAX_MONSTERS = 4
    end

  return plFile:frigost1()
end

function chosePath()
  if needStuff() ~= true then
    return stuffChoser()
  end
  if character:level() <= levelMaxPiou then
    return piou()
  elseif character:kamas() <= kamasMin then
    return bankFile:move()
  elseif checkExploration == 1 then
    if map:currentMap() == "15,-58" then
      global:editInMemory("checkExploration", 0)
      checkExploration = 0
      global:printSuccess("Fin de l'exploration !")
      return chosePath()
    end
    return explorationFile:move()
  elseif character:level() < 36 then
    return piouSufokia()
--  elseif checkOtomai == 0 then
--    return goOtomai()
-- pareil pour otomai
elseif character:level() < 80 then
    return otomai()
  elseif character:level() < 200 then
    return frigost1()
  else
    global:printSuccess("Fin du leveling ! ")
    global:disconnect()
  end
end

function move()
  utilityFile:isSubscribedAndSubscribe()
  loadIdols()
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

function keyHere(message)
  subscribeFile:keyHere(message)
end

function confirmationMessage(message)
  subscribeFile:confirmationMessage(message)
end

function subscribe(message)
  subscribeFile:subscribe(message)
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

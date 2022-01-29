
explorationFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\Exploration.lua]])
printFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\Print.lua]])
hdvFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\hdv.lua]])
utilityFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\Utility.lua]])
bankFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\Banque.lua]])
retourBankFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\retourBanque.lua]])
settingsFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\Settings.lua]])
phenixFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\phenix.lua]])
levelingFile = dofile([[C:\Users\Administrator\Documents\Bot\Metier\Zone_Farm.lua]])

utilityFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\Utility.lua]])
imHuman = dofile([[C:\Users\Administrator\Documents\Bot\Utility\imHuman.lua]])

guildeFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\Guilde.lua]])

metier = utilityFile:getMetier()
metierFile = dofile([[C:\Users\Administrator\Documents\Bot\Metier\]]..metier..[[.lua]])
-- Settings --
levelJobBeforeHDV = settingsFile:levelJobBeforeHDV()
levelCharacterJobMin = settingsFile:levelCharacterJobMin()
minDoingHDV = settingsFile:minDoingHDV()
nbKamasMin =settingsFile:nbKamasMin()
nbKamasMax = settingsFile:nbKamasMax()
lvMetierOtomai = settingsFile:lvMetierOtomai()
timeFarmLevel = settingsFile:timeFarmLevel()
prixAbo = settingsFile:prixAbo()
--lvPersoOtomai = settingsFile:lvPersoOtomai()

-- Settings (DO NOT MODIFY) --
checkConfigMetier = 1
checkLevel = 1
checkConfigHdv = 1
checkExploration = utilityFile:goExploration()
checkOtomai = 1
readyFarm = 0
minSleep = 7
maxSleep = 9
if character:level() < levelCharacterJobMin then
  global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/Metier/sadi_1_30.xml")
else
  global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/Metier/sadi_metier.xml")
end

-- Randomize of afk and disconnect --
startHDV = utilityFile:startMinHDV(minDoingHDV)
endHDV = utilityFile:endMinHDV(startHDV,minDoingHDV)
startXP = utilityFile:startMinXP(timeFarmLevel)
endXP = utilityFile:endMinXP(startXP,timeFarmLevel)
while (startXP >= startHDV and startXP <= endHDV) or (endXP >= startHDV and endXP <= endHDV) do
  startXP = utilityFile:startMinXP(timeFarmLevel)
  endXP = utilityFile:endMinXP(startXP,timeFarmLevel)
end
needRefreshVar=0
--PLANNING = {8,9,10,11,12,13,14,15,16}
global:printSuccess("Script réalisé par Ushuala - "..metier)
global:printSuccess("Le bot commencera les pauses hdv toutes les heures entre "..startHDV.." et "..endHDV)
global:printSuccess("Le bot commencera les pauses xp toutes les heures entre "..startXP.." et "..endXP)
global:printSuccess("Le bot doit aller faire son succès exploration ? "..checkExploration)
developer:startScript(false)

function loadConfig(type)
  printFile:printConfig(type)
  if type == "metier" then
    if character:level() < levelCharacterJobMin then
      global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/Metier/sadi_1_30.xml")
    else
      global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/Metier/sadi_metier.xml")
    end
    printFile:printEndConfig(type)
    checkConfigMetier = 0
    checkConfigHdv = 1
  elseif type =="hdv" then
    global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/HDV/sadi_vente.xml")
    printFile:printEndConfig(type)
    checkConfigMetier = 1
    checkConfigHdv = 0
  else
    global:printMessage("La config est introuvable !")
  end
end

function loadLevel()
  printFile:printLevel(levelCharacterJobMin)
  if character:level() < levelCharacterJobMin then
    if character:level() < 10 then
      MAX_MONSTERS = 1
    elseif character:level() < 20 then
      MAX_MONSTERS = 2
    end
    FORBIDDEN_MONSTERS={463}
    return levelingFile:piou()
  end
  checkLevel = 0
  printFile:printEndLevel(levelCharacterJobMin)
  return beforeFarming()
end

function loadExploration()
  printFile:printExploration()
  if map:currentMap() == "15,-58" then
    global:editInMemory("checkExploration", 0)
    checkExploration = 0
    printFile:printEndExploration()
    return beforeFarming()
  end
  return explorationFile:move()
end

function loadGetKamasBotBanque()
  printFile:printGetKamasBotBanque()
  return bankFile:move()
end

function loadOtomai()
  if map:currentMapId() == 154642 then
    global:printMessage("Ok je suis à Otomai !")
    checkOtomai = 0
  end
  if  utilityFile:maxLevelMetier() == lvMetierOtomai and checkOtomai == 1 then
        return explorationFile:goOtomai()
  end
  checkOtomai=0
  return beforeFarming()
end

function beforeFarming()
  if checkConfigMetier == 1 then
    loadConfig("metier")
  end
  if checkLevel == 1 then
    return loadLevel()
  elseif character:kamas() < nbKamasMin then
    return loadGetKamasBotBanque()
  elseif checkExploration == 1 then
    return loadExploration()
  elseif checkOtomai == 1 then
    return loadOtomai()
  end
  readyFarm = 1
  global:printSuccess("Farming ready!")
  return chosePath()
end

function goHdv()
  if checkConfigHdv == 1 then
    loadConfig("hdv")
  end
  return hdvFile:move()
end

function beforeMetier()
  if checkConfigMetier == 1 then
    loadConfig("metier")
  end
  if character:kamas() < nbKamasMin then
    return loadGetKamasBotBanque()
  end
  return metierFile:move()
end

function goDonKamas()
  printFile:printGiveKamasBotBanque()
  return bankFile:moveDonKamas(character:kamas() - prixAbo)
end

function refreshVar()
  -- Randomize of afk and disconnect --
  startHDV = utilityFile:startMinHDV(minDoingHDV)
  endHDV = utilityFile:endMinHDV(startHDV,minDoingHDV)
  startXP = utilityFile:startMinXP(timeFarmLevel)
  endXP = utilityFile:endMinXP(startXP,timeFarmLevel)
--  PLANNING = utilityFile:createPlanning(minSleep,maxSleep)
  while (startXP >= startHDV and startXP <= endHDV) or (endXP >= startHDV and endXP <= endHDV) do
    startXP = utilityFile:startMinXP(timeFarmLevel)
    endXP = utilityFile:endMinXP(startXP,timeFarmLevel)
  end
  global:printSuccess("Le bot commencera les pauses hdv toutes les heures entre "..startHDV.." et "..endHDV)
  global:printSuccess("Le bot commencera les pauses xp toutes les heures entre "..startXP.." et "..endXP)
  needRefreshVar = 0
end

function farmQuelqueChose()
  if character:level() > 40 then
    MAX_MONSTERS = 4
  else
    MAX_MONSTERS = 2
  end
  return levelingFile:piouSufokia()
end

function chosePath()
  if os.date("%M") == "0" and needRefreshVar == 1 then
    refreshVar()
  elseif os.date("%M") ~= "0" then
    needRefreshVar = 1
  end
  if character:kamas() < nbKamasMin then
    readyFarm = 0
  end
  if character:freeMode() then
    global:printError("Le bot n'est pas abonné !")
    path = "C:/Users/Administrator/Documents/Bot/Utility/subscribe0.lua"
    global:loadAndStart(path)
  elseif readyFarm == 0 then
    return beforeFarming()
  elseif character:kamas() > nbKamasMax then
    return goDonKamas()
  elseif tonumber(os.date("%M")) >= startHDV and tonumber(os.date("%M")) <= endHDV and levelJobBeforeHDV <= utilityFile:maxLevelMetier() then
    return goHdv()
  elseif tonumber(os.date("%M")) >= startXP and tonumber(os.date("%M")) <= endXP and levelJobBeforeHDV <= utilityFile:maxLevelMetier() then
    return farmQuelqueChose()
  else
    return beforeMetier()
  end
end

function move()
   utilityFile:isSubscribedAndSubscribe()
   return chosePath()
end

function bank()
  return retourBankFile:bank()
end
function phenix()
  return phenixFile:phenix()
end
function stopped()
  global:reconnect()
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

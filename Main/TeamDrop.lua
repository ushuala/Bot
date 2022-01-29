--Imports
plFile = dofile([[C:\Users\Administrator\Documents\Bot\Metier\Zone_Farm.lua]])
bankFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\Banque.lua]])
retourBankFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\retourBanque.lua]])
explorationFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\Exploration.lua]])
utilityFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\Utility.lua]])
phenixFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\phenix.lua]])
imHuman = dofile([[C:\Users\Administrator\Documents\Bot\Utility\imHuman.lua]])
guildeFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\Guilde.lua]])
settingsFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\Settings.lua]])
bankFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\Banque.lua]])

PLANNING = {9,10,11,12,13,14,15,16,17,18,19,20,21}
developer:startScript(false)
grouped = 0
idols = 0

function loadIdols()
  if idols == 0 and utilityFile:isBossGroup() then
    utilityFile:setCompoCac()
    idols = 1
  end
end

function pinPerdu()
  MIN_MONSTERS =1
  MAX_MONSTERS = 2
  FORBIDDEN_MONSTERS = {5308,5309,5310,5311,5312,5313,4027}
  loadIdols()
  return plFile:foretPinPerdu()
end

function foretOtomai()
  MIN_MONSTERS =1
  MAX_MONSTERS = 2
  FORBIDDEN_MONSTERS = {5308,5309,5310,5311,5312,5313,4027,3528,2554,2360,2544,2546,2565,2579}
  loadIdols()
  return plFile:foretOtomai()
end

function move()
  if tostring(os.date("%H")) == settingsFile.HourBankAfk and tonumber((os.date("%M") + 3)) >= tonumber(settingsFile.MinGiveBank) and tonumber((os.date("%M") - 3)) <= tonumber(settingsFile.MinGiveBank)  then
    global:printMessage("Vidage de la banque")
      return bankFile:moveDonRessource()
  end
  utilityFile:isSubscribedAndSubscribe()
  grouped = utilityFile:groupTeam(grouped)
  return foretOtomai()
  --return pinPerdu()
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

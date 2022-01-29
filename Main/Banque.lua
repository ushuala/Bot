nbKamasDon = 20000
utilityFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\Utility.lua]])
guildeFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\Guilde.lua]])
levelingFile = dofile([[C:\Users\Administrator\Documents\Bot\Metier\Zone_Farm.lua]])
DEVELOPER_MULTI_THREADING = true
lvMax = 20
triggerHavenBag = 1
checkConfig = 1
global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/Banque/sadi_1_30.xml")

developer:startScript(false)

function move()
    utilityFile:isSubscribedAndSubscribe()
  if checkConfig == 1 then
    checkConfig = 0
    global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/Banque/sadi_1_30.xml")
  end
  if character:level() < lvMax then
    if character:level() < 10 then
      MAX_MONSTERS = 1
    elseif character:level() < 20 then
      MAX_MONSTERS = 2
    end
    return levelingFile:piou()
  else
    if triggerHavenBag == 1 then
      triggerHavenBag = 0
      return {
        {map=map:currentMapId(), path = "havenbag"}
      }
    else
      return {
        {map="0,0", path = "zaap(191105026)"},
        {map="5,-18", path = "bottom"},
      }
    end
  end
end

function bank()
end

function messagesRegistering()
    developer:registerMessage("ExchangeRequestedTradeMessage", echangeBot)
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
  global:printSuccess("Reception d'un echange, analyse du joueur...")
  if utilityFile:isMyBot(message.source) then
      global:printSuccess("C'est mon bot "..getNameById(message.source))
      global:delay(1000)
      acceptEchange = developer:createMessage("ExchangeAcceptMessage")
      developer:sendMessage(acceptEchange)
      global:delay(1000)
      exchange:putKamas(nbKamasDon)
      global:delay(1000)
      exchange:ready()
  else
    global:printError("Echange d'un joueur inconnu")
    --ignorePlayer = developer:createMessage("IgnoredAddRequestMessage")
    --ignorePlayer.session = false
    --ignorePlayer.target.name=""

  end
end

function getNameById(idPlayer)
  characters = map:players()
  name = ""
  -- On parcourt la liste et on affiche les noms et les identifiants des personnages
  for _, character in ipairs(characters) do
    if character["contextualId"] == idPlayer then
      name = character["name"]
    end
  end
  return name
end

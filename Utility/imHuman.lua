moduleHuman = {}

antiSpam = {}
nbMessageMaxSpam = 3
messagesBeforeBlock = {"Pourquoi tu me spam ? C'est relou", "stop me faire chier stp", "dsl pas dispo mec", "zzzz pq tu spam"}

historicMP = {}
messageToAnswer = "yo"


function moduleHuman:echangeBot(message)
  lanceur = message.source
  if lanceur ~= character:id() then
    global:printError("J'ai reçu un echange de "..lanceur)
    global:delay(3000)
    refuseEchange = developer:createMessage("LeaveDialogRequestMessage")
    developer:sendMessage(refuseEchange)
    global:printSuccess("Echange annulé")
    isItSpam(lanceur)
  end
end

function moduleHuman:defiBot(message)
  lanceur = message.sourceId
  if lanceur ~= character:id() then
    global:printError("J'ai reçu un defi de "..lanceur)
    global:delay(3000)
    refuseDefi = developer:createMessage("GameRolePlayPlayerFightFriendlyAnswerMessage")
    refuseDefi.fightId = message.fightId
    developer:sendMessage(refuseDefi)
    global:printSuccess("Defi annulé")
    isItSpam(lanceur)
  end
end

function moduleHuman:receptionMessage(message)
  if message.channel == 9 then
    if historicMP[message.senderName] == nil then
      global:printError("Premier mp reçu par le joueur "..message.senderName)
      historicMP[message.senderName] = 1
      chat:sendPrivateMessage(messageToAnswer, message.senderName)
      global:printSuccess("Je ne lui parlerai plus !")
    end
  end
end

hourLastPopup = "-1"
messageWhenPopup = {"Salut","yo","Heu je crois que tu t'es trompé","bip bop je suis un robot (en vrai non)","Va chercher les vrais bots plutôt ^^'"}
function moduleHuman:popUpModerateur(message)
  global:printError("On est dans la merde ! On a reçu une pop-up.")
  global:delay(8500)
  closePopup = developer:createMessage("PopupWarningCloseRequestMessage")
  developer:sendMessage(closePopup)
  global:delay(8500)
  if hourLastPopup ~= os.date("%H") then
    index = math.random(1,#messageWhenPopup)
    msgToSend = messageWhenPopup[index]
    chat:sendGeneralMessage(msgToSend)
    hourLastPopup = os.date("%H")
    global:restartScript(false)
  else
    global:printError("On se fait spam par le modo, on ne réagit pas...")
  end
  global:delay(20000)
end

function ignorePlayer(namePlayer)
  ignoreHim = developer:createMessage("IgnoredAddRequestMessage")
  nameInfo = developer:createMessage("PlayerSearchCharacterNameInformation")
  nameInfo.name = namePlayer
  ignoreHim.target = nameInfo
  ignoreHim.session = false
  developer:sendMessage(ignoreHim)
  global:printSuccess("Joueur "..namePlayer.." ignoré.")
end

function isItSpam(idPlayer)
  global:printMessage("Vérification du spam...")
  spam = 0
  if antiSpam[idPlayer] == nil then
    antiSpam[idPlayer] = 0
  end
  antiSpam[idPlayer] = antiSpam[idPlayer]+1
  if antiSpam[idPlayer] >= nbMessageMaxSpam then
    spam = 1
  end
  if spam == 1 then
    global:printError("Le joueur "..idPlayer.." nous spam !")
    global:printMessage("Recherche du joueur sur la map...")
    name = getNameById(idPlayer)
    if name ~= "" then
      global:printSuccess("Joueur trouvé ! Il sagit de "..name)
      ignorePlayer(name)
      global:delay(3000)
      index = math.random(1,#messagesBeforeBlock)
      msgToSend = messagesBeforeBlock[index]
      chat:sendPrivateMessage(msgToSend, name)
    else
      global:printError("Impossible de trouver le joueur...")
    end
  else
    global:printSuccess("Le joueur "..idPlayer.." ne nous spam pas !")
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

return moduleHuman

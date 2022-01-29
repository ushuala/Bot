module = {}

printCheckConfig = 1
printCheckLevel = 1
printCheckExploration = 1
printCheckGetKamasBotBanque = 1
printStartMetier = 1
printStartHDV = 1
printCheckGiveKamasBotBanque = 1

function module:printMetier()
  if printStartMetier == 1 then
    global:printMessage("Démarrage du script métier")
    printStartMetier = 0
    printStartHDV = 1
    printCheckLevel = 1
    printCheckGiveKamasBotBanque = 1
  end
  global:delay(1000)
end

function module:printHDV()
  if printStartMetier == 1 then
    global:printMessage("Démarrage du script HDV")
    printStartHDV = 0
    printStartMetier = 1
    printCheckLevel = 1
    printCheckGiveKamasBotBanque = 1
  end
  global:delay(1000)
end

function module:printLevel(levelMin)
  if printCheckLevel == 1 then
    global:printMessage("Vérification du level")
    global:printMessage("Level actuel : " .. character:level() .. " - Level minimum : " .. levelMin)
    if character:level() < levelMin then
      global:printMessage("Début du leveling !")
    end
    printCheckLevel = 0
  end
  global:delay(1000)
end

function module:printEndLevel(levelMin)
  global:printSuccess("Fin du leveling !")
  global:printSuccess("Level actuel : " .. character:level() .. " - Level minimum : " .. levelMin)
  global:delay(1000)
end

function module:printConfig(type)
  if printCheckConfig == 1 then
    global:printMessage("Vérification de la configuration "..type)
    printCheckConfig = 0
  end
    global:delay(1000)
end

function module:printEndConfig(type)
    global:printSuccess("Configuration "..type.." chargée !")
    global:delay(1000)
end

function module:printExploration()
  if printCheckExploration == 1 then
    global:printMessage("Vérification de l'exploration")
    printCheckExploration = 0
  end
  global:delay(1000)
end

function module:printEndExploration()
  global:printSuccess("Fin de l'exploration !")
  global:delay(1000)
end

function module:printGetKamasBotBanque()
  if printCheckGetKamasBotBanque == 1 then
    global:printMessage("Le bot n'a pas assez de kamas ! En route pour chercher les kamas du bot banque")
    printCheckGetKamasBotBanque = 0
  end
  global:delay(1000)
end

function module:printGiveKamasBotBanque()
  if printCheckGiveKamasBotBanque == 1 then
    global:printMessage("Le bot a trop de kamas ! En route pour les donner au bot banque")
    printCheckGiveKamasBotBanque = 0
  end
  global:delay(1000)
end

return module

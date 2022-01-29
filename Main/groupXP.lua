metier = "PL"

--Imports
plFile = dofile([[C:\Users\Administrator\Documents\Bot\Metier\Zone_Farm.lua]])
bankFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\Banque.lua]])
retourBankFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\retourBanque.lua]])
explorationFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\Exploration.lua]])
utilityFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\Utility.lua]])
phenixFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\phenix.lua]])

--VAR do not modify
checkExploration = utilityFile:goExploration()
currentConfig = ""
FORBIDDEN_MONSTERS = {5308,5309,5310,5311,5312,5313}


--VAR can be modified
kamasMin = 10000
PLANNING = {9,10,11,12,13,14,15,16,17,18,19,20,21}
levelMaxPiou = 20
idols = 0
lastLevel = character:level()
grouped = 0
--developer:startScript(false)
function loadIdols()
  if lastLevel < character:level() then
    lastLevel = character:level()
    idols = 0
  end
  if idols == 0 and utilityFile:isBossGroup() then
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
  FORBIDDEN_MONSTERS = {5308,5309,5310,5311,5312,5313}
  return plFile:piou()
end
function bouftou()
  if currentConfig ~= "bouftou" then
    global:printSuccess("Chargement de la configuration Bouftou...")
    global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/"..metier.."/bouftouSacri.xml")
    currentConfig = "bouftou"
  end
  MIN_MONSTERS = 1
  MAX_MONSTERS = 2
  FORBIDDEN_MONSTERS = {5308,5309,5310,5311,5312,5313}
  return plFile:bouftou()
end
function otomai()
  if currentConfig ~= "otomai" then
    global:printSuccess("Chargement de la configuration Otomai...")
    global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/"..metier.."/bouftouSacri.xml")
    currentConfig = "otomai"
  end
  MIN_MONSTERS = 1
  MAX_MONSTERS = 2
  FORBIDDEN_MONSTERS = {5308,5309,5310,5311,5312,5313}
  loadIdols()
  return plFile:otomai()
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
      MIN_MONSTERS = 2
      MAX_MONSTERS = 4
    elseif currentConfig ~= "frigost180" and character:level() <= 200 then
      global:printSuccess("Chargement de la configuration Frigost lv 180...")
      character:getSpellVariant(12753)
      global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/"..metier.."/bougradeSacri180.xml")
      currentConfig = "frigost180"
      MIN_MONSTERS = 3
      MAX_MONSTERS = 4
    end
  else
    if currentConfig ~= "frigostmule" then
      global:printSuccess("Chargement de la configuration Mule...")
      global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/"..metier.."/mule.xml")
      currentConfig = "frigostmule"
    end
  end
  FORBIDDEN_MONSTERS = {5308,5309,5310,5311,5312,5313,2903}
  loadIdols()
  return plFile:frigost1()
end

function gobvious()
  if utilityFile:isBossGroup() then
    if currentConfig ~= "gobvious" then
      character:getSpellVariant(12753)
      global:printSuccess("Chargement de la configuration Gobvious...")
      global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/"..metier.."/gobvious.xml")
      currentConfig = "gobvious"
    end
  else
    if currentConfig ~= "frigostmule" then
      global:printSuccess("Chargement de la configuration Mule...")
      global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/"..metier.."/mule.xml")
      currentConfig = "frigostmule"
    end
  end
    MIN_MONSTERS = 3
    MAX_MONSTERS = 8
  FORBIDDEN_MONSTERS = {5308,5309,5310,5311,5312,5313,4027}
  loadIdols()
  return plFile:gobvious()
end
function pinPerdu()
  if utilityFile:isBossGroup() then
    if currentConfig ~= "pinPerdu" then
      character:getSpellVariant(12753)
      global:printSuccess("Chargement de la configuration pinPerdu...")
      global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/"..metier.."/pinPerdu.xml")
      currentConfig = "pinPerdu"
    end
  else
    if currentConfig ~= "frigostmule" then
      global:printSuccess("Chargement de la configuration Mule...")
      global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/"..metier.."/mule.xml")
      currentConfig = "frigostmule"
    end
  end
  MIN_MONSTERS = 2
  MAX_MONSTERS = 4
  FORBIDDEN_MONSTERS = {5308,5309,5310,5311,5312,5313,4027}
  loadIdols()
  return plFile:foretPinPerdu()
end

function chosePath()
  return pinPerdu() --pin perdu après
end

function move()
  utilityFile:isSubscribedAndSubscribe()
  if grouped == 0 then
    global:inviteTeam()
    grouped = 1
    global:printSuccess("On est groupé !")
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

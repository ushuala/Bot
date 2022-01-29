nbKamasDon = 20000
utilityFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\Utility.lua]])
levelingFile = dofile([[C:\Users\Administrator\Documents\Bot\Metier\Zone_Farm.lua]])
--PLANNING = utilityFile:createPlanning(5,5)
lvMax = 20
currentConfig = ""
global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/Ressource/sacri_banque.xml")
goHavenbag= 0
function loadConfigAFK()
  global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/Ressource/sacri_banque.xml")
  return {}
end

function move()
  if character:level() < lvMax then
    if currentConfig ~= "piou" then
      global:printSuccess("Chargement de la configuration Piou...")
      global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/Ressource/piouSacri.xml")
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
    return levelingFile:piou()
  else
    if goHavenbag == 0 then
      goHavenbag = 1
      return {
            { map=map:currentMapId(), path="havenbag"},
      }
    end
    return {
      {map="162791424", path="zaap(191105026)"},
      {map="191105026", path="left"},
      {map="191104002", door= "288"},
      {map="192415750", custom="loadConfigAFK"},
    }
  end
end

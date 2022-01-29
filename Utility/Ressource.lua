utilityFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\Utility.lua]])
settingsFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\Settings.lua]])
global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/Vente/sacri_banque.xml")
function move()
    return {
      { map=map:currentMapId(), path="havenbag"},
      {map="162791424", path="zaap(191105026)"},
      {map="191105026", path="left"},
      {map="191104002", door= "288"},
      {map="192415750", custom=timeToLeave},
    }
end

function timeToLeave()
    if os.date("%H") == settingsFile.HourBankAfk and os.date("%M")>=settingsFile.MinBankAfkStart and os.date("%M")<=settingsFile.MinBankAfkEnd  then
      global:printMessage("Je reste ici de "..settingsFile.HourBankAfk.."h"..settingsFile.MinBankAfkStart.." à "..settingsFile.HourBankAfk.."h"..settingsFile.MinBankAfkEnd)
      global:delay(20000)
      timeToLeave()
    else
      global:printSuccess("Fin de la pause banque, on repart vendre !")
      global:reconnectBis(1) -- reco dans 1 min
    end
end

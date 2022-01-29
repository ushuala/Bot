moduleSettings = {}


function moduleSettings:levelJobBeforeHDV()
  retour = 30
  return retour
end

function moduleSettings:levelCharacterJobMin()
  retour = 20
  return retour
end

function moduleSettings:minDoingHDV()
  retour = 0
  if job:level(2)<100 and job:level(24)<100 and job:level(26)<100 and job:level(28)<100 and job:level(36)<100 then
    retour = 5
  elseif job:level(2)<150 and job:level(24)<150 and job:level(26)<150 and job:level(28)<150 and job:level(36)<150 then
    retour = 10
  elseif os.date("%H") >= "19" and os.date("%H") <= "23" and (job:level(2)>100 or job:level(24)>100 or job:level(26)>100 or job:level(28)>100 or job:level(36)>100) then
    retour = 20
  else
    retour = 15
  end
  return retour
end

function moduleSettings:nbKamasMin()
  retour = 15000
  return retour
end

function moduleSettings:nbKamasMax()
  if character:serverName() == "Julith" then
    retour =  12000000000
  else
    retour =1200000
  end
  return retour
end

function moduleSettings:prixAbo()
  retour = 0
  if character:serverName() == "Julith" or character:serverName() == "Agride" then
    retour = 900000
  end
  if character:serverName() == "Ilyzaelle" or character:serverName() == "Jahash" then
    retour = 500000
  end
  return retour
end

function moduleSettings:lvMetierOtomai()
  retour = 201
  return retour
end

function moduleSettings:lvPersoOtomai()
  retour = 30
  return retour
end

function moduleSettings:timeFarmLevel()
  retour = 5
  return retour
end

moduleSettings.HourBankAfk = "66666"
moduleSettings.MinBankAfkStart ="00"
moduleSettings.MinBankAfkEnd = "59"
moduleSettings.MinGiveBank = "29"

local function has_value (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end
    return false
end

return moduleSettings

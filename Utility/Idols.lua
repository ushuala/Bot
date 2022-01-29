module = {}

function module:setCompoCac()
  global:printMessage("Mise en place de la compo cac...")
  nbIdolSet = 0
  openIdols = developer:createMessage("IdolPartyRegisterRequestMessage")
  openIdols.register = true
  developer:sendMessage(openIdols)
  global:delay(1000)
  if nbIdolSet < 6 then
    if setIdol(16962,64,135,"Yoche magistral") then
      nbIdolSet = nbIdolSet +1
    end
  end
  if nbIdolSet < 6 then
    if setIdol(16866,34,121,"Dynamo magistral") then
      nbIdolSet = nbIdolSet +1
    end
  end
  if nbIdolSet < 6 then
    if setIdol(16961,63,95,"Yoche majeur") then
      nbIdolSet = nbIdolSet +1
    end
  end
  if nbIdolSet < 6 then
    if setIdol(16865,33,81,"Dynamo majeur") then
      nbIdolSet = nbIdolSet +1
    end
  end
  if nbIdolSet < 6 then
    if setIdol(16960,62,55,"Yoche") then
      nbIdolSet = nbIdolSet +1
    end
  end
  if nbIdolSet < 6 then
    if setIdol(16865,32,41,"Dynamo") then
      nbIdolSet = nbIdolSet +1
    end
  end
  if nbIdolSet < 6 then
    if setIdol(16959,61,15,"Yoche mineur") then
      nbIdolSet = nbIdolSet +1
    end
  end
  if nbIdolSet < 6 then
    if setIdol(16358,31,1,"Dynamo mineur") then
      nbIdolSet = nbIdolSet +1
    end
  end
  global:printSuccess("Fin de l'équipement des idoles")
  closeIdols = developer:createMessage("IdolPartyRegisterRequestMessage")
  closeIdols.register = false
  developer:sendMessage(closeIdols)
end

function setIdol(idIdol, idsetIdol, levelMin, nameIdol)
  if inventory:itemCount(idIdol)>0 and character:level() >= levelMin then
    idole = developer:createMessage("IdolSelectRequestMessage")
    idole.idolId = idsetIdol
    idole.activate = true
    idole.party = false
    developer:sendMessage(idole)
    global:printSuccess("Idole "..nameIdol.." équipé !")
    global:delay(1000)
    return true
  else
    global:printError("Impossible de mettre "..nameIdol)
    return false
  end
end

return module

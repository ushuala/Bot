celliDGrp = -1
idGrp = -1
MAX_MONSTER = 2
function move()

end

function botAgro(message)
  if message.informations.infos.hasAVARewardToken == true then
    map:forceFight()
  end

end

function followBot(message)

end

function moveToGroup()

end

function readyAggro(message)
  local groups = map:monsterGroups()
  global:printMessage("Je me prépare à aggresser")
  for i, group in ipairs(groups) do
    if #group.monsters <= MAX_MONSTER then
      global:printMessage("Je vais sur la cell "..group.cellId)
      map:moveToCell(group.cellId)
    end
  end
end

function messagesRegistering()
    developer:registerMessage("MapComplementaryInformationsDataMessage", readyAggro)
    developer:registerMessage("GameMapMovementMessage", readyAggro)
    developer:registerMessage("GameRolePlayShowActorMessage",botAgro)

end

function lanceCombat()
  map:forceFight()
end

function messagesRegistering()
    developer:registerMessage("ExchangeRequestedTradeMessage", echangeBot)
  end

idBotFarm == id du bot farm

  function echangeBot(message)
    global:printSuccess("Reception d'un echange, analyse du joueur...")
    if message.source == idBotFarm then
        global:printSuccess("C'est mon bot "..getNameById(message.source))
        global:delay(1000)
        acceptEchange = developer:createMessage("ExchangeAcceptMessage")
        developer:sendMessage(acceptEchange)
        global:delay(10000)
        exchange:ready()
        global:delay(1000)
        npc:npcBank(-1)
        global:delay(1000)
        exchange:putAllItems()
        global:delay(1000)
        global:printMessage("récupération des kams")
        exchange:getKamas(0)
        global:delay(1000)
        global:leaveDialog()
    else
      global:printError("Echange d'un joueur inconnu")
    end
  end

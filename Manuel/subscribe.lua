-----------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------
------------------------------------ Trajet généré par NoTrade --------------------------------------
---------------------------- Made By Pharwell (Discord : Pharwell#0001) -----------------------------
----------------------- AnkaBot Discord Server: https://discord.gg/3XSQF7ZWNB -----------------------
------------------- https://doc.ankabot.dev/autres/dechiffrer-les-trajets-dotrade -------------------
-----------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------
JSON = (loadfile "JSON.lua")()

serverIdHistory = developer:historicalMessage("SelectedServerDataExtendedMessage")
serverId = serverIdHistory[1].serverId
ogrinesAmountUrl = "https://haapi.ankama.com/json/Ankama/v2/Money/OgrinsAmount"
dofusVersionUrl = "https://launcher.cdn.ankama.com/cytrus.json"
dofusVersionHeaders = {
    "Host",
    "Sec-Fetch-Site",
    "Sec-Fetch-Mode",
    "Accept-Languag",
}

dofusVersionValues = {
    "launcher.cdn.ankama.com",
    "none",
    "no-cors",
    "en-US",
}

fetchHeaders = {
    "Referer",
    "x-flash-version",
    "Host",
}

fetchValues = {
    "app:/DofusInvoker.swf",
    "29,0,0,113",
    "haapi.ankama.com",
}

function messagesRegistering()
	developer:registerMessage("HaapiShopApiKeyMessage", keyHere)
	developer:registerMessage("HaapiConfirmationMessage", confirmationMessage)
    developer:registerMessage("HaapiBuyValidationMessage", subscribe)
end

function keyHere(message)
    apiKey = message.token
    subUrl = "https://haapi.ankama.com/json/Ankama/v4/Shop/SimpleBuy?article_id=11020&currency=OGR&quantity=1&amount=0&APIKEY="..apiKey
    ogrinesRateUrl = "https://haapi.ankama.com/json/Dofus/v3/Bak/Bid/GetOffersOgrines?order_by=rate&order_dir=A&server_id=" .. serverId .. "&APIKEY="..apiKey
    table.insert(fetchHeaders, "APIKEY")
    table.insert(fetchValues, apiKey)
    submitOffer()
end

function confirmationMessage(message)
    transactionKey = message.transaction
    global:delay(1000)
    submitTransaction(transactionKey)
end

function getApiKey()
    --------------------------------------- Get Dofus version
    dofusVersionRAW = developer:getRequestThroughMyIP(dofusVersionUrl, dofusVersionHeaders, dofusVersionValues)
    dofusVersion_pretty = JSON:decode(dofusVersionRAW)
    dofusVersion = dofusVersion_pretty.games.dofus.platforms.windows.main
    clientVersion = string.gsub(dofusVersion, '5.0_','')
    global:printSuccess("clientVersion: "..clientVersion)
    table.insert(fetchHeaders, "User-Agent")
    table.insert(fetchValues, clientVersion)
    ---------------------------------------
    apiKeyRequestMessage = developer:createMessage("HaapiShopApiKeyRequestMessage")
    bufferListRequestMessage = developer:createMessage("HaapiBufferListRequestMessage")
    developer:sendMessage(apiKeyRequestMessage)
    developer:sendMessage(bufferListRequestMessage)
    developer:suspendScriptUntil("HaapiShopApiKeyMessage", 1000, false)
end

function submitOffer()
    ------------------------------------
    currentOgrines_pretty = JSON:decode(getCurrentOgrines())
    currentOgrines = currentOgrines_pretty.amount
    if character:freeMode() == true then
        if currentOgrines >= 1100 then
            wantedOgrines = 0
            subscribe()
        else
            wantedOgrines = 1100 - currentOgrines
            global:printMessage("Wanted ogrines:"..wantedOgrines)
        end
    else
        if currentOgrines >= 1000 then
            wantedOgrines = 0
            subscribe()
        else
            wantedOgrines = 1000 - currentOgrines
            global:printMessage("Wanted ogrines:"..wantedOgrines)
        end
    end
    ------------------------------------
    OgrinesOffers()
    confirmationRequestMessage = developer:createMessage("HaapiConfirmationRequestMessage")
    confirmationRequestMessage.kamas = wantedOgrines*offerRate
    if confirmationRequestMessage.kamas >= character:kamas() then
        global:printError("Insufficient ammount of Kamas")
        global:disconnect()
    end
    confirmationRequestMessage.ogrines = wantedOgrines
    confirmationRequestMessage.rate = offerRate
    confirmationRequestMessage.action = 6
    developer:sendMessage(confirmationRequestMessage)
    developer:suspendScriptUntil("HaapiConfirmationMessage", 2000, false)
end

function submitTransaction(message)
    validationRequestMessage = developer:createMessage("HaapiValidationRequestMessage")
    validationRequestMessage.transaction = message
    developer:sendMessage(validationRequestMessage)
    developer:suspendScriptUntil("HaapiBuyValidationMessage", 3000, false)
end

function getOgrinesOffers()
    ogrinesOffers_RAW = developer:getRequestThroughMyIP(ogrinesRateUrl, fetchHeaders, fetchValues)
    return ogrinesOffers_RAW
end

function OgrinesOffers()
    ogrinesOffers_pretty = JSON:decode(getOgrinesOffers())
    ogrinesOffers = ogrinesOffers_pretty.offers
    for i,v in ipairs(ogrinesOffers) do
        offerRate = ogrinesOffers_pretty.offers[i].rate
        offerAmount = ogrinesOffers_pretty.offers[i].ogrine
        if offerAmount >= 5500 then
            global:printSuccess("Offer Amount: " .. offerAmount .. " -- Rate: " .. offerRate .. " -- " .. wantedOgrines .. " ==> " .. offerRate*wantedOgrines)
            break
        end
    end
end

function getCurrentOgrines()
    currentOgrines_RAW = developer:getRequestThroughMyIP(ogrinesAmountUrl, fetchHeaders, fetchValues)
    return currentOgrines_RAW
end

function subscribe()
    global:printSuccess("Offer completed.")
    currentOgrines_pretty = JSON:decode(getCurrentOgrines())
    currentOgrines = currentOgrines_pretty.amount
    global:printMessage("Current ogrines:"..currentOgrines)
    global:printMessage("Abonnement en cours..")
    global:delay(5000)
    developer:getRequestThroughMyIP(subUrl, fetchHeaders, fetchValues)
    global:delay(5000)
    global:printMessage("Done")
    global:reconnect(0)
end

function move()
    return getApiKey()
end

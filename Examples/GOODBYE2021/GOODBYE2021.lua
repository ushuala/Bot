JSONFile = global:getCurrentScriptDirectory().."\\JSON.lua"
JSON = (loadfile(JSONFile))()

function messagesRegistering()
	developer:registerMessage("HaapiShopApiKeyMessage", _HaapiShopApiKeyMessage)
end

function _HaapiShopApiKeyMessage(message)
	API_KEY = message.token
end

function move()

	-- API KEY
    developer:sendMessage(developer:createMessage("HaapiShopApiKeyRequestMessage"))
    if not developer:suspendScriptUntil("HaapiShopApiKeyMessage", 3000, true) then
    	return
    end
    global:printSuccess("API_KEY : "..API_KEY)

    local headersName = {
    	"APIKEY",
    	"User-Agent",
    	"Referer",
    	"x-flash-version",
		"Host",
    }
    local headersContent = {
    	API_KEY,
    	"Dofus Client 2.62.2.6",
    	"app:/DofusInvoker.swf",
    	"29,0,0,113",
    	"haapi.ankama.com",
    }

    -- FIRST REQUEST
    local response1 = developer:getRequestThroughMyIP("https://haapi.ankama.com/json/Ankama/v4/Kard/ConsumeByCode?code=GOODBYE2021&lang=null&APIKEY="..API_KEY, headersName, headersContent)
    local decodedResponse1 = JSON:decode(response1)
    if decodedResponse1 == nil then
    	global:printError("Error 1")
    	return
    end
    if decodedResponse1["order_list"] == nil then
    	global:printError("Error 2")
    	return
    end
    global:printSuccess("Jeton récupéré avec succès !")

    -- SECOND REQUEST
    local response2 = developer:getRequestThroughMyIP("https://haapi.ankama.com/json/Ankama/v4/Kard/GetByAccountIdWithApiKey?collection_id=2&lang=null&APIKEY="..API_KEY, headersName, headersContent)
    local decodedResponse2 = JSON:decode(response2)
    if decodedResponse2 == nil then
    	global:printError("Error 3")
    	return
    end
    local TokenID = -1
    for _, element in ipairs(decodedResponse2) do
    	if element["kard"] ~= nil and element["kard"]["id"] ~= nil and element["kard"]["id"] == 3681 then
    		TokenID = element["id"]
    	end
    end
    if TokenID == -1 then
    	global:printError("Error 4")
    	return
    end
    global:printSuccess("ID récupéré avec succès !")

    -- THIRD REQUEST
    local response3 = developer:getRequestThroughMyIP("https://haapi.ankama.com/json/Ankama/v4/Kard/ConsumeById?id="..TokenID.."&game_id=1&lang=null&APIKEY="..API_KEY, headersName, headersContent)
    local decodedResponse3 = JSON:decode(response3)
    if decodedResponse3 == nil then
    	global:printError("Error 5")
    	return
    end
    if decodedResponse3["status"] ~= nil then
    	global:printError("L'utilisation du jeton a échoué !")
    	return
    end
    global:printSuccess("L'abonnement s'est déroulé avec succès !")
    global:printSuccess("Made By Pharwell - Powered by AnkaBot")
    global:printSuccess("Made By Pharwell - Powered by AnkaBot")
    global:printSuccess("Made By Pharwell - Powered by AnkaBot")
end

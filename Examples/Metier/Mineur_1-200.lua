

-------------------------------------------------------------
--			    Script réalisé par @Lucide#6139			   --
-------------------------------------------------------------
--				 POWER-LEVELING MINEUR V2              --
-------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------
-- [FR] Le script doit-il afficher tous les messages dans la console ? (Surcharge au bout d'un moment) true : oui | false : non
-- [ENG] Does the script have to write everything in console ? (May overstack) true : yes | false : no
--------------------------------------------------------------------------------------------------------------------------

msgUpdate = false

--------------------------------------------------------------------------------------------------------------------------
-- [FR] Est-ce que le bot doit vendre les ressources récoltees ? true : oui | false : non
-- [ENG] Does the bot have to sell harvested resources ? true : yes | false : no
--------------------------------------------------------------------------------------------------------------------------

sellingMode = true

--------------------------------------------------------------------------------------------------------------------------
-- [FR] Est-ce que le bot doit donner ses ressources récoltées au bot banque ? true: oui | false : non
-- Attention, sellingMode doit être sur false.
-- Remplacez 0 par l'identifiant de votre bot banque.

-- [ENG] Does the bot have to give its harvested resources to the bot bank? true: yes | false: no
-- Warning, sellingMode must be on false.
-- Replace 0 by the ID of your bank bot.
--------------------------------------------------------------------------------------------------------------------------

botBank = false
	IDBotBank_Bonta = 0

--------------------------------------------------------------------------------------------------------------------------
-- [FR] Ceci est la liste de tous les objets à vendre dans ce script.
-- Veillez à modifier la valeur ["Minimum Price"] par le prix minimum pour vendre, en fonction de votre serveur.

-- [ENG] This is the list of all the items for sale in this script.
-- Be sure to change the value ["Minimum Price"] by the minimum price to sell, depending on your server.
--------------------------------------------------------------------------------------------------------------------------
items = {
	{
		["id"] = 312,
		["Name"] = "Fer",
		["Minimum Price"] = 1000,
	},
	{
		["id"] = 441,
		["Name"] = "Cuivre",
		["Minimum Price"] = 2000,
	},
	{
		["id"] = 442,
		["Name"] = "Bronze",
		["Minimum Price"] = 1500,
	},
	{
		["id"] = 443,
		["Name"] = "Kobalte",
		["Minimum Price"] = 2500,
	},
	{
		["id"] = 445,
		["Name"] = "Manganèse",
		["Minimum Price"] = 1500,
	},
	{
		["id"] = 444,
		["Name"] = "Etain",
		["Minimum Price"] = 15000,
	},
	{
		["id"] = 7032,
		["Name"] = "Silicate",
		["Minimum Price"] = 1000,
	},
	{
		["id"] = 350,
		["Name"] = "Argent",
		["Minimum Price"] = 3500,
	},
	{
		["id"] = 446,
		["Name"] = "Bauxite",
		["Minimum Price"] = 3000,
	},
	{
		["id"] = 313,
		["Name"] = "Or",
		["Minimum Price"] = 10000,
	},
	{
		["id"] = 7033,
		["Name"] = "Dolomite",
		["Minimum Price"] = 3000,
	},
	{
		["id"] = 11110,
		["Name"] = "Obsidienne",
		["Minimum Price"] = 65000,
	},
}
--------------------------------------------------------------------------------------------------------------------------


checker = false
OPEN_BAGS = true
triggerHavenBag = true
welT = true
GATHER = {}
banque = false
path1 = {
	{map = "2883593", door = "409"}, -- Banque -> Int -> Sortie
	{map = "147254", path = "havenbag"}, -- Bnauqe Ext -> HavreSac
	--Trajet vers Mine Yjupe--
	{map = "0,0", path = "zaap(88213271)"}, -- Amakna (2,0)
	{map = "-2,0", path = "right"},
	{map = "-1,0", path = "top"},
	{map = "-1,-1", path = "right"},
	{map = "0,-1", path = "top"},
	{map = "0,-2", path = "top"},
	--Fin trajet vers Mine Yjupe--
	--Mine Yjupe--
	{map = "88212250", door = "248"}, -- Entrée
	{map = "97255955", path = "512", gather = true},
	{map = "97256979", path = "248", gather = true},
	{map = "97258003", path = "228", gather = true},
	{map = "97259027", path = "267", gather = true},
	--Derniere map du trajet -> on recommence
	{map = "171966475", path = "havenbag"},
	{map = "57016837", path = "havenbag"},
}

path2 = {
	{map = "97261075", path = "498", gather = true},
	{map = "97259027", path = "194", gather = true},
}

path3 = {
	{map = "97260051", path = "423", gather = true},
	{map = "97259027", path = "havenbag"},
	--Fin Mine Yjupe--
	--Trajet vers Mine Auderie--
	{map = "0,0", path = "zaap(88082704)"}, -- Amakna (5,7)
	{map = "5,7", path = "left"},
	{map = "4,7", path = "left"},
	{map = "3,7", path = "left"},
	{map = "2,7", path = "left"},
	{map = "1,7", path = "left"},
	{map = "0,7", path = "top"},
	{map = "0,6", path = "top"},
	{map = "0,5", path = "top"},
	{map = "0,4", path = "left"},
	{map = "-1,4", path = "left"},
	--Fin trajet vers Mine Auderie--
	--Mine Auderie--
	{map = "88213267", door = "236"}, -- Entrée
	{map = "97255949", path = "376", gather = true},
	{map = "97256973", path = "122", gather = true},
	{map = "97257997", path = "235", gather = true},
}
	
path4 = {
	{map = "97259021", path = "323", gather = true},
	{map = "97257997", path = "451", gather = true},
	{map = "97256973", path = "537", gather = true},
	{map = "97260045", path = "254", gather = true},
}
	
path5 = {
	{map = "97261069", path = "348", gather = true},
	{map = "97260045", path = "291", gather = true},
	{map = "97256973", path = "157", gather = true},
	{map = "97255949", path = "422", gather = true},
	--Fin Mine Auderie--
	--Trajet vers Mine Sadida--
	--A partir du Zaap--
	{map = "0,0", path = "zaap(88082704)"}, -- Amakna (5,7)
	{map = "5,7", path = "bottom"}, -- Zaap (5,7)
	{map = "5,8", path = "bottom"},
	{map = "5,9", path = "left"},
	{map = "4,9", path = "left"},
	{map = "3,9", path = "left"},
	{map = "2,9", path = "left"},
	{map = "1,9", path = "left"},
	--A partir de la mine Auderie
	{map = "0,8", path = "bottom"},
	{map = "0,7", path = "bottom"},
	{map = "88213267", path = "bottom"}, -- (-2,4) Map Ext Entrée Mine Auderie
	{map = "-2,5", path = "bottom"},
	{map = "-2,6", path = "bottom"},
	{map = "-2,7", path = "right"},
	{map = "-1,7", path = "right"},
	{map = "0,9", path = "left"},
	{map = "-1,9", path = "left"},
	{map = "-2,9", path = "left"},
	--Fin trajet vers Mine Sadi--
	--Mine Sadida--
	{map = "88213774", door = "353"},
	{map = "97259013", path = "276", gather = true},
	{map = "97256967", path = "194", gather = true},
	{map = "97260039", path = "262", gather = true},
	{map = "97257993", path = "122", gather = true},
	{map = "97261065", path = "236", gather = true},
	{map = "97259019", path = "276", gather = true},
}

path6 = {
	{map = "97260043", path = "451", gather = true},
	{map = "97259019", path = "438", gather = true},
	{map = "97261065", path = "213", gather = true},
	{map = "97255947", path = "199", gather = true},
	{map = "97256971", path = "234", gather = true},
}

path7 = {
	{map = "97261067", path = "521", gather = true},
	{map = "97256971", path = "239", gather = true},
}

path8 = {
	{map = "97257995", path = "374", gather = true},
	{map = "97256971", path = "503", gather = true},
	{map = "97255947", path = "500", gather = true},
	{map = "97261065", path = "479", gather = true},
	{map = "97257993", path = "537", gather = true},
	{map = "97260039", path = "241", gather = true},
	{map = "97261063", path = "331", gather = true},
}
	
path9 = {
	{map = "97259017", path = "436", gather = true},
	{map = "97261063", path = "296", gather = true},
	{map = "97255945", path = "332", gather = true},
}

path10 = {
	{map = "97260041", path = "354", gather = true},
	{map = "97255945", path = "213", gather = true},
}
	
path11 = {
	{map = "97256969", path = "401", gather = true},
	{map = "97255945", path = "416", gather = true},
	{map = "97261063", path = "459", gather = true},
	{map = "97260039", path = "451", gather = true},
	{map = "97256967", path = "518", gather = true},
	{map = "97259013", path = "258", gather = true},
	{map = "97260037", path = "303", gather = true},
}
	
path12 = {
	{map = "97257991", path = "464", gather = true},
	{map = "97260037", path = "352", gather = true},
	{map = "97261061", path = "290", gather = true},
}
	
path13 = {
	{map = "97259015", path = "451", gather = true},
	{map = "97261061", path = "284", gather = true},
}
	
path14 = {
	{map = "97255943", path = "403", gather = true},
	{map = "97261061", path = "458", gather = true},
	{map = "97260037", path = "430", gather = true},
	{map = "97259013", path = "494", gather = true},
}
	
path15 = {
	{map = "97257989", path = "havenbag"},
	{map = "0,0", path = "zaap(88213271)"}, -- Amakna (2,0)
}
--Fin Mine Sadi--
--Mine Herale--
path15bis = {
	{map = "97257989", path = "havenbag"},
	--Trajet vers Mine Herale--
	{map = "0,0", path = "zaap(88082704)"}, -- Amakna (5,7)
	{map = "5,7", path = "bottom"},
	{map = "5,8", path = "bottom"},
	{map = "5,9", path = "bottom"},
	{map = "5,10", path = "bottom"},
	{map = "5,11", path = "bottom"},
	{map = "5,12", path = "bottom"},
	{map = "5,13", path = "bottom"},
	{map = "5,14", path = "bottom"},
	{map = "5,15", path = "bottom"},
	{map = "5,16", path = "bottom"},
	{map = "5,17", path = "bottom"},
	{map = "5,18", path = "bottom"},
	--Fin trajet vers Mine Herale--
	--Mine Herale--
	{map = "88082692", door = "332"}, -- Entrée
	{map = "97260033", path = "183", gather = true},
}
	
path16 = {
	{map = "97261059", path = "417", gather = true},
	{map = "97260033", path = "405", gather = true},
	{map = "97261057", path = "421", gather = true},
}
	
path17 = {
	{map = "97259011", path = "276", gather = true},
	{map = "97261057", path = "235", gather = true},
	{map = "97255939", path = "446"},
	{map = "97256963", path = "492", gather = true},
	{map = "97257987", path = "492", gather = true},
}

path18 = {
	{map = "97260035", path = "havenbag"},
	{map = "0,0", path = "zaap(88213271)"}, -- Amakna (2,0)
}
	
path18bis = {
	{map = "97260033", path = "452", gather = true},
	{map = "88082692", path = "right"},
	--Fin Mine Herale--
	--Trajet vers Mine Kobalte--
	--Depart du Zaap--
	{map = "0,0", path = "zaap(88082704)"}, -- Amakna (5,7)
	{map = "5,7", path = "bottom"},
	{map = "5,8", path = "bottom"},
	{map = "5,9", path = "bottom"},
	{map = "5,10", path = "bottom"},
	{map = "5,11", path = "bottom"},
	{map = "5,12", path = "bottom"},
	{map = "5,13", path = "bottom"},
	{map = "5,14", path = "bottom"},
	{map = "5,15", path = "bottom"},
	{map = "5,16", path = "bottom"},
	{map = "5,17", path = "bottom"},
	{map = "5,18", path = "bottom"},
	--Sortie Mine Herale--
	{map = "6,19", path = "right"},
	{map = "7,19", path = "right"},
	{map = "8,19", path = "bottom"},
	{map = "8,20", path = "right"},
	{map = "9,20", path = "right"},
	{map = "10,20", path = "right"},
	{map = "11,20", path = "right"},
	{map = "12,20", path = "right"},
	{map = "13,20", path = "right"},
	{map = "14,20", path = "top"},
	{map = "14,19", path = "top"},
	{map = "14,18", path = "top"},
	{map = "14,17", path = "top"},
	{map = "14,16", path = "top"},
	{map = "14,15", path = "top"},
	--Fin trajet vers Mine Herale--
	--Mine Kobalte--
	{map = "88087305", door = "403"}, -- Entrée
	{map = "117440512", door = "222", gather = true},
	{map = "117441536", door = "167", gather = true},
	{map = "117442560", door = "488", gather = true},
	{map = "117443584", door = "221", gather = true},
	{map = "117440514", door = "293", gather = true},
	{map = "117441538", door = "251", gather = true},
}
	
path19 = {
	{map = "117442562", path = "havenbag"},
	--Fin Mine Kobalte--
	--Trajet vers Mine Hipouce--
	{map = "0,0", path = "zaap(171967506)"}, -- Routes des Roulottes
	{map = "-25,12", path = "bottom"},
	{map = "-25,13", path = "bottom"},
	{map = "-25,14", path = "right"},
	{map = "-24,14", path = "right"},
	{map = "-23,14", path = "bottom"},
	{map = "-23,15", path = "bottom"},
	{map = "-23,16", path = "bottom"},
	{map = "-23,17", path = "right"},
	{map = "-22,17", path = "bottom"},
	{map = "-22,18", path = "bottom"},
	{map = "-22,19", path = "bottom"},
	{map = "-22,20", path = "bottom"},
	{map = "-22,21", path = "left"},
	--Fin trajet vers Mine Hipouce
	--Mine Hipouce--
	{map = "173018629", door = "82"}, -- Entrée
	{map = "178784260", door = "421"},
	{map = "178783236", door = "555", gather = true},
	{map = "178783232", door = "204", gather = true},
}
	
path20 = {
	{map = "178784256", door = "505", gather = true},
	{map = "178783232", door = "403", gather = true},
	{map = "178783234", door = "281", gather = true},
	{map = "178782210", door = "185", gather = true},
	{map = "178782208", door = "421", gather = true},
}

path21 = {
	{map = "173017606", path = "havenbag"},
	--Fin Mine Hipouce--
	{map = "0,0", path = "zaap(88213271)"}, -- Amakna (2,0)
}

path21bis = {
	{map = "173017606", path = "havenbag"},
	--Fin Mine Hipouce--
	{ map="0,0", path="zaap(206307842)" },
    { map = "207619076", path = "451"},
    { map = "206307842", path = "right"},
    { map = "21,-29", path = "bottom"},
    { map = "21,-28", path = "right"},
    { map = "22,-28", path = "bottom"},
    { map = "22,-27", path = "right"},
    { map = "23,-27", path = "right"},
    { map = "24,-27", path = "right", gather = true},
    { map = "25,-27", path = "right", gather = true},
    { map = "26,-27", path = "right", gather = true},
    { map = "27,-27", path = "bottom", gather = true},
    { map = "27,-26", path = "left", gather = true},
    { map = "26,-26", path = "left", gather = true},
    { map = "25,-26", path = "bottom", gather = true},
    { map = "25,-25", path = "right", gather = true},
    { map = "26,-25", path = "bottom", gather = true},
    { map = "26,-24", path = "left", gather = true},
    { map = "25,-24", path = "bottom", gather = true},
    { map = "25,-23", path = "bottom", gather = true},
    { map = "205260292", door = "303", gather = true},
    { map = "207619084", door = "220", gather = true},
    { map = "207620108", path = "right", gather = true}, -- Missing CellID || Not sure
    { map = "207621132", door = "478", gather = true},
}
	
path21ter = {
	{ map = "207619084", door = "452", gather = true},
	{ map = "207621132", door = "478", gather = true},
    { map = "207620108", door = "438", gather = true},
    {map = "205260292", path = "left", gather = true},
    {map = "24,-22", path = "top", gather = true},
    {map = "24,-23", path = "top", gather = true},
    {map = "24,-24", path = "top"},
    {map = "24,-25", path = "left", gather = true},
    {map = "23,-25", path = "left", gather = true},
    {map = "22,-25", path = "top", gather = true},
    {map = "22,-26", path = "havenbag", gather = true},
}

path22 = {
	--Trajet vers Mine Estrone--
	{map = "0,0", path = "zaap(171967506)"}, -- Routes des Roulottes
	{map = "-25,12", path = "top"},
	{map = "-25,11", path = "top"},
	{map = "-25,10", path = "top"},
	{map = "-25,9", path = "top"},
	{map = "-25,8", path = "top"},
	{map = "-25,7", path = "left"},
	{map = "-26,7", path = "top"},
	{map = "-26,6", path = "top"},
	--Fin trajet vers Mine Estrone--
	--Mine Estrone--
	{map = "171966987", door = "397"}, -- Entrée
	{map = "178785286", door = "99", gather = true},
}
	
path23 = {
	{map = "178785288", door = "558", gather = true},
	{map = "178785286", door = "559", gather = true},
	{map = "171966987", path = "left", gather = true},
	--Fin Mine Estrone--
}
	
path24 = {
	{map = "171966475", path = "havenbag"},
	{map = "0,0", path = "zaap(54172969)"}, -- La Bourgade Frigost
	{map = "-78,-41", path = "top"},
	{map = "-78,-42", path = "top"},
	{map = "-78,-43", path = "top"},
	{map = "-78,-44", path = "top"},
	{map = "-78,-45", path = "right"},
	{map = "-77,-45", path = "right"},
	{map = "-76,-45", path = "top"},
	{map = "-76,-46", path = "top"},
	{map = "-76,-47", path = "right"},
	{map = "-75,-47", path = "right"},
	{map = "-74,-47", path = "right"},
	{map = "-73,-47", path = "right"},
	{map = "-72,-47", path = "right"},
	{map = "-71,-47", path = "right"},
	{map = "-70,-47", path = "right"},
	{map = "-69,-47", path = "right"},
	{map = "-68,-47", path = "right"},
	{map = "-67,-47", path = "top"},
	{map = "-67,-48", path = "top"},
	{map = "-67,-49", path = "top"},
	{map = "-67,-50", path = "right"},
	{map = "-66,-50", path = "right"},
	{map = "-65,-50", path = "right"},
	{map = "-64,-50", path = "right"},
	{map = "-63,-50", path = "top"},
	{map = "-63,-51", path = "top"},
	{map = "-63,-52", path = "right"},
	{map = "-62,-52", path = "right"},
	{map = "-61,-52", path = "top"},
	{map = "-61,-53", path = "top"},
	{map = "-61,-54", path = "right"},
	{map = "-60,-54", path = "top"},
	{map = "-60,-55", path = "right"},
	{map = "-59,-55", path = "top"},
	{map = "-59,-56", path = "right"},
	{map = "-58,-56", path = "top"},
	{map = "-58,-57", path = "top"},
	{map = "-58,-58", path = "right"},
	{map = "-57,-58", path = "right"},
	{map = "-56,-58", path = "top"},
	{map = "-56,-59", path = "top"},
	{map = "-56,-60", path = "top"},
	{map = "-56,-61", path = "top"},
	{map = "-56,-62", path = "top"},
	{map = "-56,-63", path = "right"},
	{map = "-55,-63", path = "top"},
	{map = "54161216", door = "261"}, -- Entrée
	{map = "57017859", gather = true, path = 359}
	
}
	
path25 = {
	{map = "57017861", path = "270", gather = true},
	{map = "57017859", gather = true, path = 206},
	{map = "54161216", path = "206", gather = true},
	{map = "57016835", path = "220", gather = true},
	{map = "56885763", path = "207", gather = true},
}
	
path26 = {
	{map = "56886787", path = "396", gather = true},
	{map = "56885763", path = "436", gather = true},
	{map = "57016835", path = "257", gather = true},
}

selectedPath = path1

function serverChecker()
	if checker then
		SCRIPT_VERSION = "2.0.0.8"
		local serverVersion = developer:getRequest("https://lucide.icu/SecurityChecks/M001_v2.txt")
		if (serverVersion ~= SCRIPT_VERSION) then
			global:printSuccess("Mineur - leveling 1-200 [v2] - version "..SCRIPT_VERSION..".")
			global:printSuccess("Réalisé par @Lucide#6139. Acheté sur https://dotrade.fr !")
		    global:printError("Une mise à jour obligatoire de ce script est à réaliser.")
		    global:printError("Merci de bien vouloir l'effectuer sur https://dotrade.fr")
		    global:finishScript()
		else
			global:printSuccess("Mineur - leveling 1-200 [v2] - version "..SCRIPT_VERSION..".")
			global:printSuccess("Réalisé par @Lucide#6139. Acheté sur https://dotrade.fr !")
			global:printSuccess("Vous disposez de la dernière version de ce script.")
			checker = false
		end
	end
end

function phenix()
	global:printError("Fonction Phenix non implantée.")
	global:finishScript()
end

function bank()
	serverChecker()
	if triggerHavenBag then
		return {
			{map = map:currentMap(), custom = shutTrigger, path = "havenbag"},
		}
	end
	if sellingMode then
		return {
			{map = "0,0", path = "zaap(147768)"},
			{map = "147768", path = "zaapi(146741)"},
			{map = "146741", custom = sellItems, path = "zaapi(147254)"},
			{map = "147254", door = "383"},
			{map = "2885641", path = "424", custom = npcBanking},
		}
	elseif not sellingMode and not botBank then
		return {
			{map = "0,0", path = "zaap(147768)"},
			{map = "147768", path = "zaapi(147254)"},
			{map = "147254", door = "383"},
			{map = "2885641", path = "424", custom = npcBanking},
		}
	elseif not sellingMode and botBank then
		return {
			{map = "0,0", path = "zaap(147768)"},
			{map = "147768", path = "zaapi(147254)"},
			{map = "147254", door = "383"},
			{map = "2885641", path = "424", custom = botBanking},
		}
	end
end

function pathSelection()
	if map:currentMapId() == 147768 then -- Bonta
		selectedPath = path1
		--Mine Yjupe--
	elseif map:currentMapId() == 88213271 then -- Zaap (2,0)
		selectedPath = path1
	elseif map:currentMapId() == 97261075 then
		selectedPath = path2
	elseif map:currentMapId() == 97260051 then
		selectedPath = path3
		--Fin Mine Yjupe--
		--Mine Auderie--
	elseif map:currentMapId() == 97259021 then
		selectedPath = path4
	elseif map:currentMapId() == 97261069 then
		selectedPath = path5
		--Fin Mine Auderie
		--Mine Sadida--
	elseif map:currentMapId() == 88213774 then
		selectedPath = path5
	elseif map:currentMapId() == 97260043 then
		selectedPath = path6
	elseif map:currentMapId() == 97261067 then
		selectedPath = path7
	elseif map:currentMapId() == 97257995 then
		selectedPath = path8
	elseif map:currentMapId() == 97259017 then
		selectedPath = path9
	elseif map:currentMapId() == 97260041 then
		selectedPath = path10
	elseif map:currentMapId() == 97256969 then
		selectedPath = path11
	elseif map:currentMapId() == 97257991 then
		selectedPath = path12
	elseif map:currentMapId() == 97259015 then
		selectedPath = path13
	elseif map:currentMapId() == 97255943 then
		selectedPath = path14
	elseif map:currentMapId() == 97257989 then
		if job:level(24) < 40 then
			selectedPath = path15
		elseif job:level(24) >= 40 then
			selectedPath = path15bis
		end
		--Fin Mine Sadida--
		--Mine Herale--
	elseif map:currentMapId() == 97261059 then
		selectedPath = path16
	elseif map:currentMapId() == 97259011 then
		selectedPath = path17
	elseif map:currentMapId() == 97260035 then
		if job:level(24) < 60 then
			selectedPath = path18
		elseif job:level(24) >= 60 then
			selectedPath = path18bis
		end
		--Fin Mine Herale
		--Pandala Kobalte--
	elseif map:currentMapId() == 117442562 then
		selectedPath = path19
		--Fin Kobalte--
		--Mine Hipouce--
	elseif map:currentMapId() == 178784256 then
		selectedPath = path20
		--Fin Mine Hipouce--
		--Pandla Silicate--
	elseif map:currentMapId() == 173017606 then
		if job:level(24) < 100 then	
			selectedPath = path21
		elseif job:level(24) >= 100 then
			selectedPath = path21bis
		end
	elseif map:currentMapId() == 207621132 then
		selectedPath = path21ter
		--Fin Pandala Silicate--
		--Mine Estrone--
	elseif map:currentMap() == "22,-26" then
		selectedPath = path22
	elseif map:currentMapId() == 178785288 then
		selectedPath = path23
		--Fin Mine Estrone--
	elseif map:currentMapId() == 171966475 then --Retour au début
		if job:level(24) < 180 then
			selectedPath = path1
		--Mine Frigost--
		else
			selectedPath = path24
		end
	elseif map:currentMapId() == 57017861 then
		selectedPath = path25
	elseif map:currentMapId() == 56886787 then
		selectedPath = path26
	elseif map:currentMapId() == 57016837 then -- Retour au début
		selectedPath = path1
		--Apres Banque--
	elseif map:currentMapId() == 147254 then -- Banque Ext
		selectedPath = path1
	elseif map:currentMapId() == 2883593 then -- Banque Int
		selectedPath = path1
		--Fin Apres Banque--
	end
end

function botBanking()
	local attempt = 3
	if map:isPlayerOnMap(IDBotBank_Bonta) then
		while attempt > 0 do
			if attempt > 1 then
				if exchange:launchExchangeWithPlayer(IDBotBank_Bonta) then
					exchange:putAllItems()
					global:delay(3000)
					exchange:ready()
					attempt = -1
					global:printSuccess("Echange avec le bot banque terminé avec succès.")
					shutBank()
				else
					global:printError("Le bot banque est actuellement indisponible, je re-tente dans 10 secondes.")
					attempt = attempt - 1
					global:printError("Tentative(s) restante(s) : "..tostring(attempt)..".")
					global:delay(10000)
				end
			elseif attempt == 0 then
				global:printMessage("Les multiples tentatives d'échange avec le bot banque ont échouées.")
				global:printMessage("Dépôt de l'inventaire en banque.")
				npc:npc(-1)
				npc:reply(-1)
				exchange:putAllItems()
				global:leaveDialog()
				attempt = -1
				shutBank()
			end
		end
	else
		global:printError("Le bot banque n'est pas présent.")
		global:printMessage("Dépôt de l'inventaire en banque.")
		npc:npc(-1)
		npc:reply(-1)
		exchange:putAllItems()
		global:delay(1500)
		global:leaveDialog()
		attempt = -1
		shutBank()
	end
end

function shutBank()
	banque = false
end

function shutTrigger()
	triggerHavenBag = false
end

function sellItems()
	if map:currentMap() == "-30,-53" then
		npc:npc(515264,5)
	elseif map:currentMap() == "4,-17" then
		npc:npc(515220,5)
	end
	getPrices()
	while sale:availableSpace() > 0 do
		for i in ipairs(prices) do
			if sale:getPriceItem(items[i]["id"],3) > (items[i]["Minimum Price"]-1) then
				while prices[i]["Count"] ~= 0 and inventory:itemCount(items[i]["id"]) >= 100 do
					alternativePrint("Mise en vente de 100 "..items[i]["Name"].." au prix de "..(prices[i]["Prix"]-1).." kamas.")
					sale:sellItem(items[i]["id"],100,prices[i]["Prix"])
					prices[i]["Count"] = prices[i]["Count"] - 1
					global:delay(500)
				end
			end
		end
		break
	end
	global:printMessage("Actualisation des prix démarrée. Cette action peut durer un moment, merci de bien vouloir patienter...")
	updatePrices()
	global:printMessage("Actualisation des prix terminée.")
	global:delay(500)
	global:leaveDialog()
end

function getPrices()
	prices = {
		{
			["Name"] = "Fer",
			["Prix"] = sale:getPriceItem(items[1]["id"],3),
			["Count"] = 7,
		},
		{
			["Name"] = "Cuivre",
			["Prix"] = sale:getPriceItem(items[2]["id"],3),
			["Count"] = 7,
		},
		{
			["Name"] = "Bronze",
			["Prix"] = sale:getPriceItem(items[3]["id"],3),
			["Count"] = 7,
		},
		{
			["Name"] = "Kobalte",
			["Prix"] = sale:getPriceItem(items[4]["id"],3),
			["Count"] = 7,
		},
		{
			["Name"] = "Manganèse",
			["Prix"] = sale:getPriceItem(items[5]["id"],3),
			["Count"] = 10,
		},
		{
			["Name"] = "Etain",
			["Prix"] = sale:getPriceItem(items[6]["id"],3),
			["Count"] = 10,
		},
		{
			["Name"] = "Silicate",
			["Prix"] = sale:getPriceItem(items[8]["id"],3),
			["Count"] = 10,
		},
		{
			["Name"] = "Argent",
			["Prix"] = sale:getPriceItem(items[9]["id"],3),
			["Count"] = 10,
		},
		{
			["Name"] = "Bauxite",
			["Prix"] = sale:getPriceItem(items[9]["id"],3),
			["Count"] = 10,
		},
		{
			["Name"] = "Or",
			["Prix"] = sale:getPriceItem(items[9]["id"],3),
			["Count"] = 10,
		},
		{
			["Name"] = "Dolomite",
			["Prix"] = sale:getPriceItem(items[9]["id"],3),
			["Count"] = 10,
		},
		{
			["Name"] = "Obsidienne",
			["Prix"] = sale:getPriceItem(items[9]["id"],3),
			["Count"] = 10,
		},
	}
end

function npcBanking()
    npc:npcBank(-1)
    global:delay(1000)
    exchange:putAllItems()
    global:delay(1000)
    exchange:getKamas(0)
    global:leaveDialog()
    global:delay(1000)
    shutBank()
end

function updatePrices()
	itemsInSales = sale:itemsOnSale()
	GUIDlist = {}
	for n = 1, itemsInSales do
		local GUID = sale:getItemGUID(n)
		table.insert(GUIDlist,GUID)
	end
	for m,tempGUID in ipairs(GUIDlist) do
		local myActualPrice = sale:getItemPrice(m)
		local itemID = sale:getItemGID(m)
		local actualPrice = sale:getPriceItem(itemID,3)
		for i in ipairs(items) do
			if items[i]["id"] == itemID then
				alternativePrint("------------------------------------------------------")
				alternativePrint("Nom de l'objet : ["..items[i]["Name"].."].")
				alternativePrint("")
				alternativePrint("Prix minimum : "..items[i]["Minimum Price"].." kamas.")
				alternativePrint("Mon prix actuel : "..myActualPrice.." kamas.")
				alternativePrint("Prix affiché en HdV : "..actualPrice.." kamas.")
				alternativePrint("Identifiant unique & privé du lot : "..tempGUID..".")
				alternativePrint("------------------------------------------------------")
				local tempmyActualPrice = sale:getItemPrice(m)
				local tempactualPrice = sale:getPriceItem(itemID,3)
				if tempmyActualPrice > items[i]["Minimum Price"] and tempmyActualPrice > tempactualPrice and tempactualPrice > items[i]["Minimum Price"] then
					alternativePrint("Le prix doit être actualisé.")
					if actualPrice == myActualPrice then
						alternativePrint("Actualisation d'un lot de 100 ["..items[i]["Name"].."] au prix de "..tempactualPrice.." kamas.")
						sale:editPrice(tempGUID,tempactualPrice,100)
					else
						alternativePrint("Actualisation d'un lot de 100 ["..items[i]["Name"].."] au prix de "..(tempactualPrice-1).." kamas.")
						sale:editPrice(tempGUID,tempactualPrice-1,100)
					end
				else
					alternativePrint("Le prix ne doit pas être actualisé.")
				end
			end
		end
	end
end

function alternativePrint(message)
	if msgUpdate then
		global:printMessage(message)
	end
end

function wT()
	if welT then
		global:printMessage("Pour que je puisse fonctionner sans encombre, il me faut les Zaaps suivants : ...")
		global:delay(500)
		global:printMessage("- Astrub")
		global:printMessage("- Village d'Amakna")
		global:printMessage("- Coin des Bouftous")
		global:printMessage("- Route des Roulottes")
		global:printMessage("- Pandala (Neutre)")
		global:printMessage("- Frigost (La Bourgade)")
		global:printMessage("- Bonta")
		global:delay(500)
		welT = false
	end
end

function move()
	pathSelection()
	if banque then
		return bank()
	end
	if not triggerHavenBag then
		triggerHavenBag = true
	end
	for x,y in pairs(selectedPath) do
		if y.map == map:currentMap() or y.map == tostring(map:currentMapId()) then
			return selectedPath
		end
	end
	return {
		{map = map:currentMap(), path = "havenbag"},
	}
end

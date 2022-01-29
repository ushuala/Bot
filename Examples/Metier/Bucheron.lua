

-------------------------------------------------------------
--        LE PARTAGE DE TRAJETS PAYANTS EST INTERDIT.      --
--			    Script réalisé par @Lucide#6139			   --
-------------------------------------------------------------
--				   POWER-LEVELING BÛCHERON V2              --
-------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------
-- [FR] Est-ce que le bot doit vendre les ressources récoltees ? true : oui | false : non
-- [ENG] Does the bot have to sell harvested resources ? true : yes | false : no
--------------------------------------------------------------------------------------------------------------------------

sellingMode = true

--------------------------------------------------------------------------------------------------------------------------
-- [FR] Est-ce que le bot doit donner ses ressources récoltées au bot banque ? true: oui | false : non
-- Attention, sellingMode doit être sur false.
-- Il vous sera nécessaire d'utiliser deux bots banque différents, un à la banque d'Astrub, l'autre à la banque de Bonta.
-- Remplacez 0 par l'identifiant de chaque bot banque.

-- [ENG] Does the bot have to give its harvested resources to the bot bank? true: yes | false: no
-- Warning, sellingMode must be on false.
-- You will need to use two different bank bots, one at Astrub's bank, the other at Bonta's bank.
-- Replace 0 by the ID of each bank bot.
--------------------------------------------------------------------------------------------------------------------------

botBank = false
	IDBotBank_Astrub = 0
	IDBotBank_Bonta = 0

--------------------------------------------------------------------------------------------------------------------------
-- [FR] Ceci est la liste de tous les objets à vendre dans ce script.
-- Veillez à modifier la valeur ["Minimum Price"] par le prix minimum pour vendre, en fonction de votre serveur.

-- [ENG] This is the list of all the items for sale in this script.
-- Be sure to change the value ["Minimum Price"] by the minimum price to sell, depending on your server.
--------------------------------------------------------------------------------------------------------------------------

items = {
	{
		["id"] = 303,
		["Name"] = "Bois de Frêne",
		["Minimum Price"] = 500,
	},
	{
		["id"] = 473,
		["Name"] = "Bois de Chataîgnier",
		["Minimum Price"] = 500,
	},
	{
		["id"] = 476,
		["Name"] = "Bois de Noyer",
		["Minimum Price"] = 800,
	},
	{
		["id"] = 460,
		["Name"] = "Bois de Chêne",
		["Minimum Price"] = 1000,
	},
	{
		["id"] = 471,
		["Name"] = "Bois d'Erable",
		["Minimum Price"] = 1500,
	},
	{
		["id"] = 2357,
		["Name"] = "Bois d'Oliviolet",
		["Minimum Price"] = 9000,
	},
	{
		["id"] = 474,
		["Name"] = "Bois de Merisier",
		["Minimum Price"] = 20000,
	},
	{
		["id"] = 449,
		["Name"] = "Bois d'Ebene",
		["Minimum Price"] = 25000,
	},
	{
		["id"] = 472,
		["Name"] = "Bois de Charme",
		["Minimum Price"] = 15000,
	},
}

--------------------------------------------------------------------------------------------------------------------------


function serverChecker()
	if checker then
		SCRIPT_VERSION = "2.0.0.3"
		local serverVersion = developer:getRequest("https://lucide.icu/SecurityChecks/B001_v2.txt")
		if (serverVersion ~= SCRIPT_VERSION) then
			global:printSuccess("Bûcheron - leveling 1-200 [2] - version "..SCRIPT_VERSION..".")
			global:printSuccess("Réalisé par @Lucide#6139. Acheté sur https://dotrade.fr !")
		    global:printError("Une mise à jour obligatoire de ce script est à réaliser.")
		    global:printError("Merci de bien vouloir l'effectuer sur https://dotrade.fr")
		    global:finishScript()
		else
			global:printSuccess("Bûcheron - leveling 1-200 [2] - version "..SCRIPT_VERSION..".")
			global:printSuccess("Réalisé par @Lucide#6139. Acheté sur https://dotrade.fr !")
			global:printSuccess("Vous disposez de la dernière version de ce script.")
			checker = false
		end
	end
end

checker = true
triggerHavenBag = true
OPEN_BAGS = true
banque = false

path1 = {
	{map = "189530124", path = "left", gather = true},
	{map = "0,0", path = "zaap(191105026)"},
	{map = "4,-18", path = "right"},
	{map = "5,-18", path = "bottom"},
	{map = "5,-17", path = "bottom"},
	{map = "5,-16", path = "bottom"},
	{map = "4,-15", path = "bottom", gather = true},
	{map = "5,-15", path = "left"},
	{map = "4,-14", path = "left"},
	{map = "3,-14", path = "left"},
	{map = "2,-14", path = "left", gather = true},
	{map = "1,-14", path = "left", gather = true},
	{map = "0,-14", path = "top", gather = true},
	{map = "0,-15", path = "left", gather = true},
	{map = "-1,-15", path = "bottom", gather = true},
	{map = "-1,-14", path = "left", gather = true},
	{map = "-2,-14", path = "left", gather = true},
	{map = "-3,-14", path = "top", gather = true},
	{map = "-3,-15", path = "top", gather = true},
	{map = "-3,-16", path = "right", gather = true},
	{map = "-2,-16", path = "right", gather = true},
	{map = "-1,-16", path = "right", gather = true},
	{map = "0,-16", path = "top", gather = true},
	{map = "0,-17", path = "left", gather = true},
	{map = "-1,-17", path = "left", gather = true},
	{map = "-3,-17", path = "top", gather = true},
	{map = "1,-18", path = "top", gather = true},
	{map = "-3,-18", path = "right", gather = true},
	{map = "-2,-18", path = "right", gather = true},
	{map = "-1,-18", path = "right", gather = true},
	{map = "0,-18", path = "right", gather = true},
	{map = "1,-19", path = "left", gather = true},
	{map = "0,-19", path = "left", gather = true},
	{map = "-1,-19", path = "left", gather = true},
	{map = "-2,-19", path = "left", gather = true},
	{map = "-3,-19", path = "top", gather = true},
	{map = "0,-20", path = "top", gather = true},
	{map = "-3,-21", path = "top", gather = true},
	{map = "-3,-20", path = "right", gather = true},
	{map = "-2,-20", path = "right", gather = true},
	{map = "-1,-20", path = "right", gather = true},
	{map = "0,-21", path = "left", gather = true},
	{map = "-1,-21", path = "left", gather = true},
	{map = "-2,-21", path = "left", gather = true},
	{map = "-3,-22", path = "right", gather = true},
	{map = "-2,-22", path = "right", gather = true},
	{map = "-1,-22", path = "right", gather = true},
	{map = "0,-22", path = "right", gather = true},
	{map = "1,-22", path = "right", gather = true},
	{map = "2,-22", path = "top", gather = true},
	{map = "2,-23", path = "left", gather = true},
	{map = "1,-23", path = "left", gather = true},
	{map = "0,-23", path = "left", gather = true},
	{map = "-1,-23", path = "left", gather = true},
	{map = "-2,-23", path = "top", gather = true},
	{map = "-2,-24", path = "right", gather = true},
	{map = "-1,-24", path = "right", gather = true},
	{map = "0,-24", path = "right", gather = true},
	{map = "1,-24", path = "right", gather = true},
	{map = "2,-24", path = "top", gather = true},
	{map = "2,-25", path = "left", gather = true},
	{map = "1,-25", path = "left", gather = true},
	{map = "0,-25", path = "left", gather = true},
	{map = "-1,-25", path = "left", gather = true},
	{map = "-2,-25", path = "top", gather = true},
	{map = "-2,-26", path = "right", gather = true},
	{map = "-1,-26", path = "right", gather = true},
	{map = "0,-26", path = "right", gather = true},
	{map = "1,-26", path = "right", gather = true},
	{map = "2,-26", path = "top", gather = true},
	{map = "2,-27", path = "left", gather = true},
	{map = "1,-27", path = "left", gather = true},
	{map = "0,-27", path = "left", gather = true},
	{map = "-1,-27", path = "left", gather = true},
	{map = "-2,-27", path = "top", gather = true},
	{map = "-2,-28", path = "right", gather = true},
	{map = "-1,-28", path = "right", gather = true},
	{map = "0,-28", path = "right", gather = true},
	{map = "1,-28", path = "right", gather = true},
	{map = "2,-28", path = "top", gather = true},
	{map = "2,-29", path = "top", gather = true},
	{map = "2,-30", path = "right", gather = true},
	{map = "3,-30", path = "bottom"},
	{map = "3,-29", path = "bottom"},
	{map = "3,-28", path = "bottom"},
	{map = "3,-27", path = "bottom"},
	{map = "3,-26", path = "bottom"},
	{map = "3,-24", path = "bottom"},
	{map = "3,-25", path = "bottom"},
	{map = "3,-23", path = "bottom"},
	{map = "3,-22", path = "right"},
	{map = "4,-22", path = "bottom"},
	{map = "4,-21", path = "bottom"},
	{map = "4,-20", path = "bottom"},
	{map = "4,-19", path = "bottom"},
}

path2 = {
	{map = "162791424", path = "zaap(84806401)"},
	{map = "-5,-23", path = "left", gather = true},
	{map = "-6,-23", path = "bottom", gather = true},
	{map = "-6,-22", path = "bottom", gather = true},
	{map = "-6,-21", path = "bottom", gather = true},
	{map = "-6,-20", path = "bottom", gather = true},
	{map = "-6,-19", path = "left", gather = true},
	{map = "-7,-19", path = "left", gather = true},
	{map = "-8,-19", path = "top", gather = true},
	{map = "-8,-20", path = "right", gather = true},
	{map = "-7,-20", path = "top", gather = true},
	{map = "-7,-21", path = "top", gather = true},
	{map = "-7,-22", path = "top", gather = true},
	{map = "-7,-23", path = "left", gather = true},
	{map = "-7,-25", path = "left", gather = true},
	{map = "-8,-23", path = "top", gather = true},
	{map = "-7,-24", path = "top", gather = true},
	{map = "-8,-25", path = "top", gather = true},
	{map = "-7,-26", path = "top", gather = true},
	{map = "-8,-24", path = "right", gather = true},
	{map = "-8,-26", path = "right", gather = true},
	{map = "-8,-29", path = "right", gather = true},
	{map = "-9,-32", path = "right", gather = true},
	{map = "-8,-31", path = "left", gather = true},
	{map = "-7,-30", path = "left", gather = true},
	{map = "-7,-28", path = "left", gather = true},
	{map = "-7,-27", path = "top", gather = true},
	{map = "-8,-28", path = "top", gather = true},
	{map = "-7,-29", path = "top", gather = true},
	{map = "-8,-30", path = "top", gather = true},
	{map = "-9,-31", path = "top", gather = true},
	{map = "-8,-32", path = "right", gather = true},
	{map = "-7,-32", path = "bottom", gather = true},
	{map = "-7,-31", path = "right", gather = true},
	{map = "-6,-31", path = "top", gather = true},
	{map = "-6,-32", path = "top", gather = true},
	{map = "-6,-33", path = "left", gather = true},
	{map = "-7,-33", path = "left", gather = true},
	{map = "-8,-33", path = "left", gather = true},
	{map = "-9,-33", path = "top", gather = true},
	{map = "-9,-34", path = "left", gather = true},
	{map = "-10,-33", path = "left", gather = true},
	{map = "-11,-32", path = "left", gather = true},
	{map = "-10,-34", path = "bottom", gather = true},
	{map = "-11,-33", path = "bottom", gather = true},
	{map = "-12,-32", path = "top", gather = true},
	{map = "-12,-33", path = "top", gather = true},
	{map = "-12,-34", path = "top", gather = true},
	{map = "-12,-35", path = "top", gather = true},
	{map = "-14,-35", path = "left", gather = true},
	{map = "-15,-36", path = "left", gather = true},
	{map = "-17,-35", path = "left", gather = true},
	{map = "-16,-35", path = "left", gather = true},
	{map = "-15,-35", path = "top", gather = true},
	{map = "-13,-35", path = "left", gather = true},
	{map = "-18,-35", path = "top", gather = true},
	{map = "-12,-36", path = "left", gather = true},
	{map = "-13,-36", path = "bottom", gather = true},
	{map = "-16,-36", path = "bottom", gather = true},
	{map = "-18,-36", path = "left", gather = true},
	{map = "-19,-36", path = "left", gather = true},
	{map = "-17,-43", path = "top", gather = true},
	{map = "-17,-44", path = "top", gather = true},
	{map = "-17,-46", path = "top", gather = true},
	{map = "-17,-45", path = "top", gather = true},
	{map = "-20,-36", path = "top", gather = true},
	{map = "-19,-37", path = "top", gather = true},
	{map = "-20,-37", path = "right", gather = true},
	{map = "-19,-38", path = "left", gather = true},
	{map = "-20,-38", path = "top", gather = true},
	{map = "-20,-39", path = "top", gather = true},
	{map = "-20,-40", path = "right", gather = true},
	{map = "-19,-40", path = "right", gather = true},
	{map = "-18,-40", path = "top", gather = true},
	{map = "-18,-41", path = "top", gather = true},
	{map = "-17,-42", path = "top", gather = true},
	{map = "-18,-42", path = "right", gather = true},
	{map = "-17,-47", path = "zaap(84806401)"},
}

path3 = {
	{map = "162791424", path = "zaap(147590153)"},
	{map = "-16,-46", path = "right", gather = true},
	{map = "-14,-47", path = "right", gather = true},
	{map = "-13,-47", path = "right", gather = true},
	{map = "-12,-47", path = "top", gather = true},
	{map = "-12,-48", path = "left", gather = true},
	{map = "-13,-48", path = "left", gather = true},
	{map = "-14,-48", path = "left", gather = true},
	{map = "-15,-48", path = "top", gather = true},
	{map = "-15,-49", path = "top", gather = true},
	{map = "-15,-50", path = "right", gather = true},
	{map = "-14,-50", path = "bottom", gather = true},
	{map = "-14,-49", path = "right", gather = true},
	{map = "-13,-49", path = "right", gather = true},
	{map = "-12,-49", path = "right", gather = true},
	{map = "-11,-49", path = "top", gather = true},
	{map = "-11,-50", path = "left", gather = true},
	{map = "-12,-50", path = "left", gather = true},
	{map = "-13,-50", path = "top", gather = true},
	{map = "-13,-51", path = "left", gather = true},
	{map = "-14,-51", path = "left", gather = true},
	{map = "-15,-51", path = "top", gather = true},
	{map = "-15,-52", path = "right", gather = true},
	{map = "-14,-52", path = "right", gather = true},
	{map = "-13,-52", path = "right", gather = true},
	{map = "-12,-52", path = "right", gather = true},
	{map = "-11,-52", path = "top", gather = true},
	{map = "-11,-53", path = "left", gather = true},
	{map = "-12,-53", path = "left", gather = true},
	{map = "-13,-53", path = "left", gather = true},
	{map = "-14,-53", path = "left", gather = true},
	{map = "-15,-53", path = "top", gather = true},
	{map = "-15,-54", path = "right", gather = true},
	{map = "-14,-54", path = "right", gather = true},
	{map = "-13,-54", path = "top", gather = true},
	{map = "-13,-55", path = "right", gather = true},
	{map = "-12,-55", path = "bottom", gather = true},
	{map = "-12,-54", path = "right", gather = true},
	{map = "-11,-54", path = "top", gather = true},
	{map = "-11,-55", path = "top", gather = true},
	{map = "-11,-56", path = "top", gather = true},
	{map = "-11,-57", path = "left", gather = true},
	{map = "-12,-57", path = "top", gather = true},
	{map = "-12,-58", path = "left", gather = true},
	{map = "-13,-58", path = "bottom", gather = true},
	{map = "-13,-57", path = "bottom", gather = true},
	{map = "-13,-56", path = "left", gather = true},
	{map = "-14,-56", path = "left", gather = true},
	{map = "-15,-56", path = "top", gather = true},
	{map = "-15,-57", path = "right", gather = true},
	{map = "-14,-57", path = "top", gather = true},
	{map = "-14,-58", path = "left", gather = true},
	{map = "-15,-58", path = "top", gather = true},
	{map = "-15,-59", path = "right", gather = true},
	{map = "-14,-59", path = "right", gather = true},
	{map = "-13,-59", path = "right", gather = true},
	{map = "-12,-59", path = "right", gather = true},
	{map = "-11,-59", path = "bottom", gather = true},
	{map = "-11,-58", path = "right", gather = true},
	{map = "-10,-58", path = "bottom", gather = true},
	{map = "-14,-46", path = "top", gather = true},
	{map = "-15,-46", path = "bottom", gather = true},
	{map = "-15,-45", path = "right", gather = true},
	{map = "-14,-45", path = "top", gather = true},
	{map = "-17,-47", path = "bottom", gather = true},
	{map = "-17,-46", path = "right", gather = true},
}

path4 = {
	{map = "162791424", path = "zaap(147590153)"},
    {map = "-16,-46", path = "right", gather = true},
	{map = "-14,-47", path = "right", gather = true},
	{map = "-13,-47", path = "right", gather = true},
	{map = "-12,-47", path = "top", gather = true},
	{map = "-12,-48", path = "left", gather = true},
	{map = "-13,-48", path = "left", gather = true},
	{map = "-14,-48", path = "left", gather = true},
	{map = "-15,-48", path = "top", gather = true},
	{map = "-15,-49", path = "top", gather = true},
	{map = "-15,-50", path = "right", gather = true},
	{map = "-14,-50", path = "bottom", gather = true},
	{map = "-14,-49", path = "right", gather = true},
	{map = "-13,-49", path = "right", gather = true},
	{map = "-12,-49", path = "right", gather = true},
	{map = "-11,-49", path = "top", gather = true},
	{map = "-11,-50", path = "left", gather = true},
	{map = "-12,-50", path = "left", gather = true},
	{map = "-13,-50", path = "top", gather = true},
	{map = "-13,-51", path = "left", gather = true},
	{map = "-14,-51", path = "left", gather = true},
	{map = "-15,-51", path = "top", gather = true},
	{map = "-15,-52", path = "right", gather = true},
	{map = "-14,-52", path = "right", gather = true},
	{map = "-13,-52", path = "right", gather = true},
	{map = "-12,-52", path = "right", gather = true},
	{map = "-11,-52", path = "top", gather = true},
	{map = "-11,-53", path = "left", gather = true},
	{map = "-12,-53", path = "left", gather = true},
	{map = "-13,-53", path = "left", gather = true},
	{map = "-14,-53", path = "left", gather = true},
	{map = "-15,-53", path = "top", gather = true},
	{map = "-15,-54", path = "right", gather = true},
	{map = "-14,-54", path = "right", gather = true},
	{map = "-13,-54", path = "top", gather = true},
	{map = "-13,-55", path = "right", gather = true},
	{map = "-12,-55", path = "bottom", gather = true},
	{map = "-12,-54", path = "right", gather = true},
	{map = "-11,-54", path = "top", gather = true},
	{map = "-11,-55", path = "top", gather = true},
	{map = "-11,-56", path = "top", gather = true},
	{map = "-11,-57", path = "left", gather = true},
	{map = "-12,-57", path = "top", gather = true},
	{map = "-12,-58", path = "left", gather = true},
	{map = "-13,-58", path = "bottom", gather = true},
	{map = "-13,-57", path = "bottom", gather = true},
	{map = "-13,-56", path = "left", gather = true},
	{map = "-14,-56", path = "left", gather = true},
	{map = "-15,-56", path = "top", gather = true},
	{map = "-15,-57", path = "right", gather = true},
	{map = "-14,-57", path = "top", gather = true},
	{map = "-14,-58", path = "left", gather = true},
	{map = "-15,-58", path = "top", gather = true},
	{map = "-15,-59", path = "right", gather = true},
	{map = "-14,-59", path = "right", gather = true},
	{map = "-13,-59", path = "right", gather = true},
	{map = "-12,-59", path = "right", gather = true},
	{map = "-11,-59", path = "bottom", gather = true},
	{map = "-11,-58", path = "right", gather = true},
	{map = "-10,-58", path = "bottom", gather = true},
	{map = "-14,-46", path = "top", gather = true},
	{map = "-15,-46", path = "bottom", gather = true},
	{map = "-15,-45", path = "right", gather = true},
	{map = "-14,-45", path = "top", gather = true},
	{map = "-17,-47", path = "bottom", gather = true},
	{map = "-17,-46", path = "right", gather = true},
	{map = "-13,-45", path = "bottom", gather = true},
	{map = "-27,-36", path = "bottom", gather = true},
	{map = "-27,-35", path = "right", gather = true},
	{map = "-26,-35", path = "right", gather = true},
	{map = "-25,-35", path = "bottom", gather = true},
	{map = "-25,-34", path = "left", gather = true},
	{map = "-26,-34", path = "left", gather = true},
	{map = "-27,-34", path = "bottom", gather = true},
	{map = "-27,-33", path = "right", gather = true},
	{map = "-26,-33", path = "bottom", gather = true},
	{map = "-26,-32", path = "left", gather = true},
	{map = "-27,-32", path = "bottom", gather = true},
	{map = "-27,-31", path = "bottom", gather = true},
	{map = "-27,-30", path = "left", gather = true},
	{map = "-28,-30", path = "bottom", gather = true},
	{map = "-28,-29", path = "right", gather = true},
	{map = "-27,-29", path = "bottom", gather = true},
	{map = "-27,-28", path = "left", gather = true},
	{map = "-28,-28", path = "left", gather = true},
	{map = "-29,-28", path = "bottom", gather = true},
	{map = "-29,-27", path = "bottom", gather = true},
	{map = "-29,-25", path = "bottom", gather = true},
	{map = "-29,-26", path = "bottom", gather = true},
	{map = "-29,-24", path = "bottom", gather = true},
	{map = "-29,-22", path = "bottom", gather = true},
	{map = "-29,-23", path = "bottom", gather = true},
	{map = "-29,-21", path = "right", gather = true},
	{map = "-28,-21", path = "bottom", gather = true},
	{map = "-28,-20", path = "right", gather = true},
	{map = "-27,-20", path = "bottom", gather = true},
	{map = "-27,-19", path = "left", gather = true},
	{map = "-28,-19", path = "bottom", gather = true},
	{map = "-28,-18", path = "right", gather = true},
	{map = "-27,-18", path = "bottom", gather = true},
	{map = "-27,-17", path = "right", gather = true},
	{map = "-26,-17", path = "right", gather = true},
	{map = "-25,-17", path = "bottom", gather = true},
	{map = "-25,-16", path = "left", gather = true},
	{map = "-26,-16", path = "bottom", gather = true},
	{map = "-26,-15", path = "bottom", gather = true},
	{map = "-26,-14", path = "left", gather = true},
	{map = "-27,-14", path = "left", gather = true},
	{map = "-28,-14", path = "bottom", gather = true},
	{map = "-28,-13", path = "bottom", gather = true},
	{map = "-28,-12", path = "right", gather = true},
	{map = "-27,-12", path = "right", gather = true},
	{map = "-25,-12", path = "right", gather = true},
	{map = "-26,-12", path = "right", gather = true},
	{map = "-24,-13", path = "top", gather = true},
	{map = "-24,-12", path = "top", gather = true},
	{map = "-24,-14", path = "top", gather = true},
	{map = "-24,-15", path = "top", gather = true},
	{map = "-24,-16", path = "right", gather = true},
	{map = "-23,-16", path = "bottom", gather = true},
	{map = "-23,-15", path = "right", gather = true},
	{map = "-22,-15", path = "right", gather = true},
	{map = "-21,-15", path = "top", gather = true},
	{map = "-21,-16", path = "right", gather = true},
	{map = "-20,-16", path = "right", gather = true},
	{map = "-19,-16", path = "top", gather = true},
	{map = "-19,-17", path = "top", gather = true},
	{map = "-19,-18", path = "right", gather = true},
	{map = "-18,-18", path = "bottom", gather = true},
	{map = "-18,-17", path = "right", gather = true},
	{map = "-17,-17", path = "bottom", gather = true},
	{map = "-17,-16", path = "bottom", gather = true},
	{map = "-17,-14", path = "bottom", gather = true},
	{map = "-17,-15", path = "bottom", gather = true},
	{map = "-17,-13", path = "bottom", gather = true},
	{map = "-17,-12", path = "right", gather = true},
	{map = "-16,-12", path = "bottom", gather = true},
	{map = "-16,-11", path = "right", gather = true},
	{map = "-10,-57", path = "bottom", gather = true},
	{map = "-10,-56", path = "bottom", gather = true},
	{map = "-10,-55", path = "bottom", gather = true},
	{map = "-10,-54", path = "bottom", gather = true},
	{map = "-10,-53", path = "bottom", gather = true},
	{map = "-10,-52", path = "bottom", gather = true},
	{map = "-10,-51", path = "bottom", gather = true},
	{map = "-10,-50", path = "bottom", gather = true},
	{map = "-10,-49", path = "bottom", gather = true},
	{map = "-10,-48", path = "right", gather = true},
	{map = "-9,-48", path = "right", gather = true},
	{map = "-8,-48", path = "bottom", gather = true},
	{map = "-8,-47", path = "bottom", gather = true},
	{map = "-8,-46", path = "left", gather = true},
	{map = "-9,-46", path = "left", gather = true},
	{map = "-10,-46", path = "left", gather = true},
	{map = "-11,-46", path = "left", gather = true},
	{map = "-12,-46", path = "left", gather = true},
	{map = "-13,-46", path = "bottom", gather = true},
	{map = "-12,-45", path = "right", gather = true},
	{map = "-11,-45", path = "right", gather = true},
	{map = "-10,-45", path = "right", gather = true},
	{map = "-9,-45", path = "bottom", gather = true},
	{map = "-9,-44", path = "bottom", gather = true},
	{map = "-9,-43", path = "bottom", gather = true},
	{map = "-9,-42", path = "left", gather = true},
	{map = "-10,-42", path = "left", gather = true},
	{map = "-11,-42", path = "top", gather = true},
	{map = "-11,-43", path = "top", gather = true},
	{map = "-11,-44", path = "left", gather = true},
	{map = "-12,-44", path = "bottom", gather = true},
	{map = "-12,-43", path = "bottom", gather = true},
	{map = "-12,-42", path = "left", gather = true},
	{map = "-13,-42", path = "top", gather = true},
	{map = "-13,-43", path = "top", gather = true},
	{map = "-13,-44", path = "left", gather = true},
}

path5 = {
	{map = "162791424", path = "zaap(154642)"},
	{map = "-47,19", path = "left"},
	{map = "-48,19", path = "left"},
	{map = "-46,18", path = "left"},
	{map = "-47,18", path = "bottom"},
	{map = "-49,19", path = "top"},
	{map = "-49,18", path = "top"},
	{map = "-49,17", path = "top"},
	{map = "-49,16", path = "top"},
	{map = "-49,15", path = "top"},
	{map = "-49,14", path = "top"},
	{map = "-49,13", path = "top"},
	{map = "-49,12", path = "left"},
	{map = "-50,12", path = "left", gather = true},
	{map = "-51,12", path = "left", gather = true},
	{map = "-52,12", path = "top", gather = true},
	{map = "-52,11", path = "top", gather = true},
	{map = "-52,10", path = "left", gather = true},
	{map = "-54,10", path = "bottom", gather = true},
	{map = "-54,11", path = "left", gather = true},
	{map = "-55,11", path = "bottom", gather = true},
	{map = "-55,12", path = "bottom", gather = true},
	{map = "-55,13", path = "left", gather = true},
	{map = "-56,13", path = "bottom", gather = true},
	{map = "-56,14", path = "bottom", gather = true},
	{map = "-56,15", path = "bottom", gather = true},
	{map = "-56,16", path = "bottom", gather = true},
	{map = "-56,17", path = "bottom", gather = true},
	{map = "-56,18", path = "bottom", gather = true},
	{map = "-56,19", path = "bottom", gather = true},
	{map = "-56,20", path = "right", gather = true},
	{map = "-55,20", path = "top", gather = true},
	{map = "-55,19", path = "top", gather = true},
	{map = "-55,18", path = "top", gather = true},
	{map = "-55,17", path = "top", gather = true},
	{map = "-55,16", path = "top", gather = true},
	{map = "-55,15", path = "top", gather = true},
	{map = "-55,14", path = "right", gather = true},
	{map = "-54,14", path = "top", gather = true},
	{map = "-54,13", path = "right", gather = true},
	{map = "-53,13", path = "bottom", gather = true},
	{map = "-53,14", path = "bottom", gather = true},
	{map = "-53,15", path = "left", gather = true},
	{map = "-54,15", path = "bottom", gather = true},
	{map = "-54,16", path = "bottom", gather = true},
	{map = "-54,17", path = "bottom", gather = true},
	{map = "-54,18", path = "bottom", gather = true},
	{map = "-54,19", path = "bottom", gather = true},
	{map = "-54,20", path = "bottom", gather = true},
	{map = "-54,21", path = "right", gather = true},
	{map = "-53,21", path = "top", gather = true},
	{map = "-53,19", path = "top", gather = true},
	{map = "-52,19", path = "left", gather = true},
	{map = "-53,20", path = "right", gather = true},
	{map = "-53,18", path = "right", gather = true},
	{map = "-52,18", path = "top", gather = true},
	{map = "-52,17", path = "top", gather = true},
	{map = "-52,20", path = "top", gather = true},
	{map = "-52,16", path = "top", gather = true},
	{map = "-52,15", path = "top", gather = true},
	{map = "-52,14", path = "top", gather = true},
	{map = "-52,13", path = "right", gather = true},
	{map = "-51,13", path = "bottom", gather = true},
	{map = "-51,14", path = "bottom", gather = true},
	{map = "-51,15", path = "right", gather = true},
	{map = "-50,15", path = "bottom", gather = true},
	{map = "-50,16", path = "left", gather = true},
	{map = "-51,16", path = "bottom", gather = true},
	{map = "-51,17", path = "right", gather = true},
	{map = "-50,17", path = "bottom", gather = true},
	{map = "-50,18", path = "left", gather = true},
	{map = "-51,18", path = "bottom", gather = true},
	{map = "-51,19", path = "bottom", gather = true},
	{map = "-51,20", path = "bottom", gather = true},
	{map = "-51,21", path = "right"},
	{map = "-50,21", path = "right"},
	{map = "-49,21", path = "top"},
	{map = "-49,20", path = "top"},
	{map = "-53,10", path = "left", gather = true},
}

selectedPath = path1

function pathSelection()
	wT()
    if job:level(2) < 70 then
    	GATHER = {1,33,34,8}
        selectedPath = path1
    elseif job:level(2) >= 70 and job:level(2) < 75 then
    	GATHER = {98,8,34}
        selectedPath = path2
    elseif (job:level(2) >= 75) and (job:level(2) < 100) then
		GATHER = {31,8,34}
        selectedPath = path3
    elseif (job:level(2) >= 100) and (job:level(2) < 140) then
		GATHER = {31,8,34,28,35,259,29}
    	selectedPath = path4
    elseif (job:level(2) >= 140) then
		GATHER = {259,29,32,257}
    	selectedPath = path5
    end
end

function bank()
	pathSelection()
	banque = true
	if selectedPath == path1 then
		selectedBank = "Astrub"
	elseif selectedPath == path4 or selectedPath == path5 or selectedPath == path2 or selectedPath == path3 then
		selectedBank = "Bonta"
	end
	if triggerHavenBag then
		return {
			{map = map:currentMap(), custom = shutTrigger, path = "havenbag"},
		}
	end
	if selectedBank == "Astrub" then
		if sellingMode then
			return {
				{map = "0,0", path = "zaap(191105026)"},
				{map = "5,-18", path = "bottom"},
				{map = "5,-17", path = "left"},
				{map = "4,-17", custom = sellItems, path = "top"},
				{map = "191104002", door = "288"},
				{map = "192415750", path = "409", custom = npcBanking},
			}
		elseif not sellingMode and not botBank then
			return {
				{map = "0,0", path = "zaap(191105026)"},
				{map = "5,-18", path = "left"},
				{map = "191104002", door = "288"},
				{map = "192415750", path = "409", custom = npcBanking},
			}
		elseif not sellingMode and botBank then
			return {
				{map = "0,0", path = "zaap(191105026)"},
				{map = "5,-18", path = "left"},
				{map = "191104002", door = "288"},
				{map = "192415750", path = "409", custom = botBanking},
			}
		end
	elseif selectedBank == "Bonta" then
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
end

function botBanking()
	local attempt = 3
	if selectedPath == path1 or selectedPath == path2 or selectedPath == path3 then
		IDBotBank = IDBotBank_Astrub
	else
		IDBotBank = IDBotBank_Bonta
	end
	if map:isPlayerOnMap(IDBotBank) then
		while attempt > 0 do
			if attempt > 1 then
				if exchange:launchExchangeWithPlayer(IDBotBank) then
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
					global:printSuccess("Mise en vente de 100 "..items[i]["Name"].." au prix de "..(prices[i]["Prix"]-1).." kamas.")
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
				global:printMessage("------------------------------------------------------")
				global:printMessage("Nom de l'objet : ["..items[i]["Name"].."].")
				global:printMessage("")
				global:printMessage("Prix minimum : "..items[i]["Minimum Price"].." kamas.")
				global:printMessage("Mon prix actuel : "..myActualPrice.." kamas.")
				global:printMessage("Prix affiché en HdV : "..actualPrice.." kamas.")
				global:printMessage("Identifiant unique & privé du lot : "..tempGUID..".")
				global:printMessage("------------------------------------------------------")
				local tempmyActualPrice = sale:getItemPrice(m)
				local tempactualPrice = sale:getPriceItem(itemID,3)
				if tempmyActualPrice > items[i]["Minimum Price"] and tempmyActualPrice > tempactualPrice and tempactualPrice > items[i]["Minimum Price"] then
					global:printMessage("Le prix doit être actualisé.")
					if actualPrice == myActualPrice then
						global:printSuccess("Actualisation d'un lot de 100 ["..items[i]["Name"].."] au prix de "..tempactualPrice.." kamas.")
						sale:editPrice(tempGUID,tempactualPrice,100)
					else
						global:printSuccess("Actualisation d'un lot de 100 ["..items[i]["Name"].."] au prix de "..(tempactualPrice-1).." kamas.")
						sale:editPrice(tempGUID,tempactualPrice-1,100)
					end
				else
					global:printMessage("Le prix ne doit pas être actualisé.")
				end
			end
		end
	end
end

items = {
	{
		["id"] = 303,
		["Name"] = "Bois de Frêne",
		["Minimum Price"] = 500,
	},
	{
		["id"] = 473,
		["Name"] = "Bois de Chataîgnier",
		["Minimum Price"] = 500,
	},
	{
		["id"] = 476,
		["Name"] = "Bois de Noyer",
		["Minimum Price"] = 800,
	},
	{
		["id"] = 460,
		["Name"] = "Bois de Chêne",
		["Minimum Price"] = 1000,
	},
	{
		["id"] = 471,
		["Name"] = "Bois d'Erable",
		["Minimum Price"] = 1500,
	},
	{
		["id"] = 2357,
		["Name"] = "Bois d'Oliviolet",
		["Minimum Price"] = 9000,
	},
	{
		["id"] = 474,
		["Name"] = "Bois de Merisier",
		["Minimum Price"] = 20000,
	},
	{
		["id"] = 449,
		["Name"] = "Bois d'Ebene",
		["Minimum Price"] = 25000,
	},
	{
		["id"] = 472,
		["Name"] = "Bois de Charme",
		["Minimum Price"] = 15000,
	},
}

function getPrices()
	prices = {
		{
			["Name"] = "Bois de Frêne",
			["Prix"] = sale:getPriceItem(items[1]["id"],3),
			["Count"] = 7,
		},
		{
			["Name"] = "Bois de Chataîgnier",
			["Prix"] = sale:getPriceItem(items[2]["id"],3),
			["Count"] = 7,
		},
		{
			["Name"] = "Bois de Noyer",
			["Prix"] = sale:getPriceItem(items[3]["id"],3),
			["Count"] = 7,
		},
		{
			["Name"] = "Bois de Chêne",
			["Prix"] = sale:getPriceItem(items[4]["id"],3),
			["Count"] = 7,
		},
		{
			["Name"] = "Bois d'Erable",
			["Prix"] = sale:getPriceItem(items[5]["id"],3),
			["Count"] = 10,
		},
		{
			["Name"] = "Bois d'Oliviolet",
			["Prix"] = sale:getPriceItem(items[6]["id"],3),
			["Count"] = 10,
		},
		{
			["Name"] = "Bois de Merisier",
			["Prix"] = sale:getPriceItem(items[8]["id"],3),
			["Count"] = 10,
		},
		{
			["Name"] = "Bois d'Ebene",
			["Prix"] = sale:getPriceItem(items[9]["id"],3),
			["Count"] = 10,
		},
		{
			["Name"] = "Bois de Charme",
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

function move()
	serverChecker()
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

welT = true

function wT()
	if welT == true then
		global:printMessage("Pour que je puisse fonctionner sans encombre, il me faut les Zaaps suivants : ...")
		global:delay(500)
		global:printMessage("- Astrub")
		global:printMessage("- Plaines Rocheuses")
		global:printMessage("- Plaines des Porkass")
		global:printMessage("- Bonta")
		global:printMessage("- Otomaï")
		global:delay(500)
		welT = false
	end
end

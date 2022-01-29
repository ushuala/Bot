

-------------------------------------------------------------
--			    Script réalisé par @Lucide#6139			   --
-------------------------------------------------------------
--				 POWER-LEVELING ALCHIMISTE V2              --
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
		["id"] = 421,
		["Name"] = "Ortie",
		["Minimum Price"] = 300,
	},
	{
		["id"] = 428,
		["Name"] = "Sauge",
		["Minimum Price"] = 300,
	},
	{
		["id"] = 395,
		["Name"] = "Trèfle à 5 Feuilles",
		["Minimum Price"] = 400,
	},
	{
		["id"] = 380,
		["Name"] = "Menthe Sauvage",
		["Minimum Price"] = 500,
	},
	{
		["id"] = 593,
		["Name"] = "Orchidée Freyesque",
		["Minimum Price"] = 500,
	},
	{
		["id"] = 594,
		["Name"] = "Edelweiss",
		["Minimum Price"] = 5000,
	},
	{
		["id"] = 7059,
		["Name"] = "Graine de Pandouille",
		["Minimum Price"] = 4000,
	},
	{
		["id"] = 16385,
		["Name"] = "Ginseng",
		["Minimum Price"] = 15000,
	},
	{
		["id"] = 16387,
		["Name"] = "Belladone",
		["Minimum Price"] = 20000,
	},
}
--------------------------------------------------------------------------------------------------------------------------


function serverChecker()
	if checker then
		SCRIPT_VERSION = "2.0.0.4"
		local serverVersion = developer:getRequest("https://lucide.icu/SecurityChecks/A001_v2.txt")
		if (serverVersion ~= SCRIPT_VERSION) then
			global:printSuccess("Alchimiste - leveling 1-200 [2] - version "..SCRIPT_VERSION..".")
			global:printSuccess("Réalisé par @Lucide#6139. Acheté sur https://dotrade.fr !")
		    global:printError("Une mise à jour obligatoire de ce script est à réaliser.")
		    global:printError("Merci de bien vouloir l'effectuer sur https://dotrade.fr")
		    global:finishScript()
		else
			global:printSuccess("Alchimiste - leveling 1-200 [2] - version "..SCRIPT_VERSION..".")
			global:printSuccess("Réalisé par @Lucide#6139. Acheté sur https://dotrade.fr !")
			global:printSuccess("Vous disposez de la dernière version de ce script.")
			checker = false
		end
	end
end

checker = true
triggerHavenBag = false
OPEN_BAGS = true
banque = false

path1 = {
    {map = "2883593", path = "havenbag"},
	{map = "0,0", path = "zaap(191105026)"},
	{map = "5,-18", path = "bottom"},
	{map = "5,-17", path = "bottom", gather = true},
	{map = "5,-16", path = "bottom", gather = true},
	{map = "5,-15", path = "left", gather = true},
	{map = "4,-15", path = "left", gather = true},
	{map = "3,-15", path = "bottom", gather = true},
	{map = "8,-14", path = "right"},
	{map = "3,-14", path = "right", gather = true},
	{map = "4,-14", path = "right", gather = true},
	{map = "5,-14", path = "right", gather = true},
	{map = "6,-14", path = "right", gather = true},
	{map = "7,-14", path = "right", gather = true},
	{map = "9,-14", path = "right", gather = true},
	{map = "10,-14", path = "bottom", gather = true},
	{map = "10,-13", path = "left", gather = true},
	{map = "9,-13", path = "left", gather = true},
	{map = "8,-13", path = "left", gather = true},
	{map = "7,-13", path = "left", gather = true},
	{map = "6,-13", path = "left", gather = true},
	{map = "5,-13", path = "left", gather = true},
	{map = "4,-13", path = "left", gather = true},
	{map = "3,-13", path = "bottom", gather = true},
	{map = "3,-12", path = "right", gather = true},
	{map = "4,-12", path = "right", gather = true},
	{map = "5,-12", path = "right", gather = true},
	{map = "6,-12", path = "right", gather = true},
	{map = "7,-12", path = "right", gather = true},
	{map = "8,-12", path = "right", gather = true},
	{map = "9,-12", path = "right", gather = true},
	{map = "10,-12", path = "right", gather = true},
	{map = "11,-12", path = "bottom", gather = true},
	{map = "11,-11", path = "left", gather = true},
	{map = "9,-11", path = "left", gather = true},
	{map = "8,-11", path = "left", gather = true},
	{map = "7,-11", path = "left", gather = true},
	{map = "6,-11", path = "left", gather = true},
	{map = "5,-11", path = "left", gather = true},
	{map = "3,-11", path = "bottom", gather = true},
	{map = "3,-10", path = "right", gather = true},
	{map = "4,-10", path = "right", gather = true},
	{map = "5,-10", path = "right", gather = true},
	{map = "6,-10", path = "right", gather = true},
	{map = "7,-10", path = "right", gather = true},
	{map = "8,-10", path = "bottom", gather = true},
	{map = "8,-9", path = "left", gather = true},
	{map = "6,-9", path = "left", gather = true},
	{map = "5,-9", path = "left", gather = true},
	{map = "3,-9", path = "left", gather = true},
	{map = "7,-9", path = "left"},
	{map = "4,-9", path = "left"},
	{map = "10,-11", path = "left"},
	{map = "4,-11", path = "left"},
	{map = "2,-9", path = "top"},
	{map = "2,-11", path = "top"},
	{map = "2,-12", path = "top"},
	{map = "2,-13", path = "top"},
	{map = "2,-14", path = "top"},
	{map = "2,-15", path = "top", gather = true},
	{map = "4,-16", path = "right"},
	{map = "4,-18", path = "right"},
	{map = "2,-16", path = "right", gather = true},
	{map = "3,-16", path = "right", gather = true},
	{map = "2,-10", path = "left"},
	{map = "1,-10", path = "top"},
	{map = "1,-11", path = "right"},
}

path2 = {
    {map = "2883593", path = "havenbag"},
	{map = "0,0", path = "zaap(191105026)"},
	{map = "192415750", path = "424"},
	{map = "2,-9", path = "top"},
	{map = "2,-10", path = "top"},
	{map = "2,-11", path = "top"},
	{map = "2,-12", path = "top"},
	{map = "2,-13", path = "top"},
	{map = "2,-14", path = "top"},
	{map = "3,-9", path = "top"},
	{map = "4,-9", path = "top"},
	{map = "5,-9", path = "top"},
	{map = "6,-9", path = "top"},
	{map = "7,-9", path = "top"},
	{map = "8,-9", path = "top"},
	{map = "9,-10", path = "top"},
	{map = "8,-10", path = "top"},
	{map = "7,-10", path = "top"},
	{map = "6,-10", path = "top"},
	{map = "5,-10", path = "top"},
	{map = "4,-10", path = "top"},
	{map = "3,-10", path = "top"},
	{map = "3,-11", path = "top"},
	{map = "4,-11", path = "top"},
	{map = "5,-11", path = "top"},
	{map = "6,-11", path = "top"},
	{map = "7,-11", path = "top"},
	{map = "8,-11", path = "top"},
	{map = "9,-11", path = "top"},
	{map = "10,-11", path = "top"},
	{map = "11,-11", path = "top"},
	{map = "10,-12", path = "top"},
	{map = "9,-12", path = "top"},
	{map = "8,-12", path = "top"},
	{map = "7,-12", path = "top"},
	{map = "6,-12", path = "top"},
	{map = "5,-12", path = "top"},
	{map = "4,-12", path = "top"},
	{map = "3,-12", path = "top"},
	{map = "3,-13", path = "top"},
	{map = "4,-13", path = "top"},
	{map = "5,-13", path = "top"},
	{map = "6,-13", path = "top"},
	{map = "7,-13", path = "top"},
	{map = "8,-13", path = "top"},
	{map = "9,-13", path = "top"},
	{map = "10,-13", path = "top"},
	{map = "11,-12", path = "left"},
	{map = "10,-14", path = "left"},
	{map = "9,-14", path = "left"},
	{map = "8,-14", path = "left"},
	{map = "7,-14", path = "left"},
	{map = "6,-14", path = "left"},
	{map = "5,-14", path = "top"},
	{map = "5,-15", path = "top"},
	{map = "5,-16", path = "top"},
	{map = "5,-17", path = "top"},
	{map = "4,-14", path = "top"},
	{map = "3,-14", path = "top"},
	{map = "2,-16", path = "right"},
	{map = "2,-15", path = "right"},
	{map = "3,-15", path = "right"},
	{map = "3,-16", path = "right"},
	{map = "4,-16", path = "right"},
	{map = "4,-15", path = "right"},
	{map = "5,-18", path = "left"},
	{map = "4,-18", path = "left"},
	{map = "3,-18", path = "left"},
	{map = "2,-18", path = "left"},
	{map = "1,-18", path = "left"},
	{map = "0,-18", path = "bottom", gather = true},
	{map = "0,-17", path = "bottom", gather = true},
	{map = "0,-16", path = "bottom", gather = true},
	{map = "0,-15", path = "left", gather = true},
	{map = "-1,-15", path = "left", gather = true},
	{map = "-2,-15", path = "left", gather = true},
	{map = "-4,-15", path = "top", gather = true},
	{map = "-3,-15", path = "left"},
	{map = "-4,-16", path = "right"},
	{map = "-3,-16", path = "right", gather = true},
	{map = "-2,-16", path = "right", gather = true},
	{map = "-1,-16", path = "top", gather = true},
	{map = "-1,-17", path = "left", gather = true},
	{map = "-2,-17", path = "left"},
	{map = "-3,-17", path = "left", gather = true},
	{map = "-4,-17", path = "left"},
	{map = "-5,-17", path = "top"},
	{map = "-5,-18", path = "right", gather = true},
	{map = "-4,-18", path = "right", gather = true},
	{map = "-3,-18", path = "right", gather = true},
	{map = "-2,-18", path = "right", gather = true},
	{map = "-1,-18", path = "top", gather = true},
	{map = "-1,-19", path = "left", gather = true},
	{map = "-2,-19", path = "left", gather = true},
	{map = "-3,-19", path = "top", gather = true},
	{map = "-3,-20", path = "right", gather = true},
	{map = "-1,-20", path = "right", gather = true},
	{map = "0,-20", path = "top", gather = true},
	{map = "-2,-20", path = "right"},
	{map = "0,-21", path = "left", gather = true},
	{map = "-1,-21", path = "left", gather = true},
	{map = "-2,-21", path = "left", gather = true},
	{map = "-3,-21", path = "top", gather = true},
	{map = "-3,-22", path = "right", gather = true},
	{map = "-2,-22", path = "right"},
	{map = "-1,-22", path = "right"},
	{map = "0,-22", path = "right", gather = true},
	{map = "2,-22", path = "top"},
	{map = "2,-23", path = "top", gather = true},
	{map = "2,-24", path = "top"},
	{map = "2,-25", path = "left", gather = true},
	{map = "0,-25", path = "bottom", gather = true},
	{map = "0,-24", path = "bottom", gather = true},
	{map = "0,-23", path = "left", gather = true},
	{map = "-1,-23", path = "left", gather = true},
	{map = "1,-25", path = "left"},
	{map = "1,-22", path = "right"},
	{map = "-2,-23", path = "left"},
	{map = "-3,-23", path = "left"},
	{map = "-4,-23", path = "bottom"},
	{map = "-4,-22", path = "bottom"},
	{map = "-4,-21", path = "bottom"},
	{map = "-4,-20", path = "bottom"},
	{map = "-4,-19", path = "left"},
	{map = "-5,-19", path = "left"},
	{map = "-6,-19", path = "bottom"},
	{map = "-6,-17", path = "bottom"},
	{map = "-6,-18", path = "bottom"},
	{map = "-6,-16", path = "right"},
	{map = "-5,-16", path = "bottom"},
	{map = "-5,-15", path = "bottom"},
	{map = "-5,-14", path = "right", gather = true},
	{map = "-4,-14", path = "right"},
	{map = "-2,-14", path = "right"},
	{map = "-3,-14", path = "right"},
	{map = "-1,-14", path = "right"},
	{map = "0,-14", path = "right"},
	{map = "1,-14", path = "top"},
	{map = "1,-15", path = "top"},
	{map = "1,-16", path = "top"},
	{map = "1,-17", path = "top"},
}

path3 = {
    {map = "2883593", path = "havenbag" },
	{map = "0,0", path = "zaap(73400320)"},
	{map = "5,-18", path = "zaap(73400320)"},
	{map = "84935175", path = "425"},
	{map = "-16,4", path = "left"},
	{map = "-17,4", path = "left"},
	{map = "5,-18", path = "left"},
	{map = "4,-18", path = "left"},
	{map = "3,-18", path = "left"},
	{map = "2,-18", path = "left"},
	{map = "1,-18", path = "left"},
	{map = "-2,-20", path = "bottom"},
	{map = "2,-25", path = "left"},
	{map = "1,-25", path = "left"},
	{map = "2,-23", path = "left"},
	{map = "1,-23", path = "left"},
	{map = "0,-25", path = "bottom"},
	{map = "0,-23", path = "bottom"},
	{map = "0,-24", path = "bottom"},
	{map = "0,-22", path = "bottom"},
	{map = "-1,-23", path = "bottom"},
	{map = "-1,-22", path = "bottom"},
	{map = "0,-21", path = "bottom"},
	{map = "-1,-21", path = "bottom"},
	{map = "-1,-20", path = "bottom"},
	{map = "0,-20", path = "bottom"},
	{map = "0,-19", path = "bottom"},
	{map = "-1,-19", path = "bottom"},
	{map = "-3,-20", path = "bottom"},
	{map = "-3,-21", path = "bottom"},
	{map = "-2,-21", path = "bottom"},
	{map = "-3,-22", path = "bottom"},
	{map = "-3,-19", path = "bottom"},
	{map = "-2,-19", path = "bottom"},
	{map = "0,-18", path = "left"},
	{map = "-1,-18", path = "left"},
	{map = "-2,-18", path = "left"},
	{map = "-3,-18", path = "left"},
	{map = "-4,-18", path = "left"},
	{map = "0,-17", path = "left"},
	{map = "-1,-17", path = "left"},
	{map = "-2,-17", path = "left"},
	{map = "-3,-17", path = "left"},
	{map = "-4,-17", path = "left"},
	{map = "-5,-17", path = "left"},
	{map = "-5,-18", path = "left"},
	{map = "0,-16", path = "left"},
	{map = "-1,-16", path = "left"},
	{map = "-2,-16", path = "left"},
	{map = "-3,-16", path = "left"},
	{map = "-4,-16", path = "left"},
	{map = "0,-15", path = "left"},
	{map = "-1,-15", path = "left"},
	{map = "-2,-15", path = "left"},
	{map = "-3,-15", path = "left"},
	{map = "-4,-15", path = "left"},
	{map = "-5,-14", path = "top"},
	{map = "-5,-15", path = "top"},
	{map = "-5,-16", path = "top"},
	{map = "-6,-18", path = "left"},
	{map = "-6,-17", path = "left"},
	{map = "-7,-18", path = "bottom"},
	{map = "-7,-17", path = "bottom"},
	{map = "-7,-16", path = "bottom"},
	{map = "-7,-15", path = "bottom"},
	{map = "-7,-14", path = "bottom"},
	{map = "-7,-13", path = "bottom"},
	{map = "-7,-11", path = "bottom"},
	{map = "-7,-12", path = "bottom"},
	{map = "-7,-10", path = "bottom"},
	{map = "-7,-9", path = "bottom"},
	{map = "-7,-8", path = "bottom"},
	{map = "-7,-7", path = "left"},
	{map = "-8,-7", path = "left"},
	{map = "-9,-7", path = "left"},
	{map = "-10,-7", path = "left"},
	{map = "-11,-7", path = "left"},
	{map = "-12,-7", path = "left"},
	{map = "-13,-7", path = "bottom"},
	{map = "-13,-6", path = "left"},
	{map = "-14,-6", path = "left"},
	{map = "-15,-6", path = "left"},
	{map = "-16,-6", path = "bottom"},
	{map = "-16,-5", path = "bottom"},
	{map = "-16,-4", path = "bottom"},
	{map = "-16,-3", path = "bottom"},
	{map = "-16,-2", path = "bottom"},
	{map = "-16,-1", path = "bottom"},
	{map = "-16,0", path = "bottom"},
	{map = "-16,1", path = "left"},
	{map = "-17,1", path = "left"},
	{map = "-18,1", path = "bottom"},
	{map = "-18,2", path = "bottom"},
	{map = "-18,3", path = "bottom"},
	{map = "-18,4", path = "left", gather = true},
	{map = "-19,4", path = "left", gather = true},
	{map = "-20,4", path = "left", gather = true},
	{map = "-21,4", path = "left", gather = true},
	{map = "-22,4", path = "top", gather = true},
	{map = "-22,3", path = "right", gather = true},
	{map = "-21,3", path = "right", gather = true},
	{map = "-20,3", path = "right", gather = true},
	{map = "-19,3", path = "top", gather = true},
	{map = "-19,2", path = "left", gather = true},
	{map = "-20,2", path = "left", gather = true},
	{map = "-21,2", path = "left", gather = true},
	{map = "-22,2", path = "left", gather = true},
	{map = "-23,2", path = "top", gather = true},
	{map = "-23,1", path = "right", gather = true},
	{map = "-22,1", path = "top", gather = true},
	{map = "-20,1", path = "top", gather = true},
	{map = "-21,0", path = "bottom", gather = true},
	{map = "-19,0", path = "bottom", gather = true},
	{map = "-19,1", path = "right", gather = true},
	{map = "-22,0", path = "right", gather = true},
	{map = "-21,1", path = "right", gather = true},
	{map = "-20,0", path = "top", gather = true},
	{map = "-20,-1", path = "right"},
	{map = "-19,-1", path = "bottom"},
}

path4 = {
	{map = "2883593", path = "havenbag"},
	{map = "162791424", path = "zaap(154642)"},
	{map = "86511105", path = "452"},
	{map = "5,-18", path = "zaap(154642)"},
	{map = "26,-37", path = "zaap(154642)"},
	{map = "-23,1", path = "right"},
	{map = "-23,2", path = "right"},
	{map = "-22,2", path = "right"},
	{map = "-22,1", path = "right"},
	{map = "-22,0", path = "right"},
	{map = "-22,3", path = "right"},
	{map = "-22,4", path = "right"},
	{map = "-21,4", path = "right"},
	{map = "-21,3", path = "right"},
	{map = "-21,2", path = "right"},
	{map = "-21,1", path = "right"},
	{map = "-21,0", path = "right"},
	{map = "-20,1", path = "right"},
	{map = "-19,1", path = "right"},
	{map = "-18,1", path = "right"},
	{map = "-17,1", path = "right"},
	{map = "-20,4", path = "top"},
	{map = "-20,3", path = "top"},
	{map = "-20,2", path = "top"},
	{map = "-19,4", path = "top"},
	{map = "-19,3", path = "top"},
	{map = "-19,2", path = "top"},
	{map = "-19,0", path = "bottom"},
	{map = "-20,0", path = "bottom"},
	{map = "27,-37", path = "left", gather = true},
	{map = "28,-37", path = "left", gather = true},
	{map = "28,-39", path = "bottom", gather = true},
	{map = "28,-40", path = "bottom", gather = true},
	{map = "28,-41", path = "bottom", gather = true},
	{map = "28,-38", path = "bottom"},
	{map = "28,-42", path = "bottom"},
	{map = "28,-43", path = "bottom", gather = true},
	{map = "22,-42", path = "bottom"},
	{map = "20,-37", path = "bottom"},
	{map = "20,-35", path = "bottom"},
	{map = "20,-34", path = "bottom"},
	{map = "20,-33", path = "right"},
	{map = "23,-31", path = "bottom"},
	{map = "26,-30", path = "top"},
	{map = "28,-31", path = "right"},
	{map = "28,-34", path = "top"},
	{map = "24,-36", path = "right"},
	{map = "25,-36", path = "right"},
	{map = "26,-36", path = "top"},
	{map = "20,-36", path = "bottom"},
	{map = "20,-39", path = "bottom"},
	{map = "20,-38", path = "bottom"},
	{map = "21,-40", path = "bottom"},
	{map = "22,-41", path = "bottom"},
	{map = "27,-43", path = "right"},
	{map = "28,-35", path = "top"},
	{map = "28,-36", path = "top"},
	{map = "28,-33", path = "top"},
	{map = "26,-31", path = "top"},
	{map = "26,-32", path = "top"},
	{map = "29,-31", path = "top"},
	{map = "29,-32", path = "top"},
	{map = "29,-33", path = "left"},
	{map = "27,-31", path = "right"},
	{map = "27,-32", path = "bottom"},
	{map = "26,-33", path = "right"},
	{map = "27,-33", path = "right"},
	{map = "21,-31", path = "right"},
	{map = "22,-31", path = "right"},
	{map = "23,-30", path = "right"},
	{map = "24,-30", path = "right"},
	{map = "25,-30", path = "right"},
	{map = "23,-42", path = "left"},
	{map = "24,-42", path = "left"},
	{map = "25,-42", path = "left"},
	{map = "26,-42", path = "left"},
	{map = "27,-42", path = "left"},
	{map = "21,-39", path = "left"},
	{map = "22,-40", path = "left"},
	{map = "21,-33", path = "bottom"},
	{map = "21,-32", path = "bottom"},
	{map = "-51,12", path = "left", gather = true},
	{map = "-52,11", path = "left", gather = true},
	{map = "-54,11", path = "top", gather = true},
	{map = "-55,10", path = "bottom", gather = true},
	{map = "-55,13", path = "left", gather = true},
	{map = "-56,13", path = "bottom", gather = true},
	{map = "-56,15", path = "right", gather = true},
	{map = "-55,15", path = "right", gather = true},
	{map = "-54,15", path = "right", gather = true},
	{map = "-53,15", path = "top", gather = true},
	{map = "-51,13", path = "bottom", gather = true},
	{map = "-51,14", path = "right", gather = true},
	{map = "-50,14", path = "bottom", gather = true},
	{map = "-50,15", path = "left", gather = true},
	{map = "-51,15", path = "left", gather = true},
	{map = "-52,15", path = "bottom", gather = true},
	{map = "-52,16", path = "right", gather = true},
	{map = "-51,16", path = "bottom", gather = true},
	{map = "-51,17", path = "right", gather = true},
	{map = "-50,18", path = "left", gather = true},
	{map = "-51,18", path = "bottom", gather = true},
	{map = "-51,19", path = "left", gather = true},
	{map = "-52,19", path = "bottom", gather = true},
	{map = "-52,20", path = "left", gather = true},
	{map = "-53,20", path = "left", gather = true},
	{map = "-54,20", path = "bottom", gather = true},
	{map = "-54,21", path = "left", gather = true},
	{map = "-55,21", path = "top", gather = true},
	{map = "-52,12", path = "top"},
	{map = "-54,10", path = "left(336)"},
	{map = "-55,11", path = "bottom"},
	{map = "-55,12", path = "bottom"},
	{map = "-56,14", path = "bottom"},
	{map = "-53,14", path = "top"},
	{map = "-53,13", path = "right", gather = true},
	{map = "-52,13", path = "right"},
	{map = "-53,11", path = "left"},
	{map = "-54,12", path = "top"},
	{map = "-53,12", path = "left", gather = true},
	{map = "-50,17", path = "bottom"},
	{map = "-55,20", path = "top"},
	{map = "-55,19", path = "right"},
	{map = "-54,18", path = "top"},
	{map = "-54,17", path = "left"},
	{map = "-56,16", path = "bottom"},
	{map = "-56,20", path = "bottom"},
	{map = "-56,17", path = "bottom", gather = true},
	{map = "-56,18", path = "bottom", gather = true},
	{map = "-56,19", path = "bottom", gather = true},
	{map = "-55,17", path = "top", gather = true},
	{map = "-54,19", path = "top", gather = true},
	{map = "-55,16", path = "left", gather = true},
	{map = "-56,21", path = "bottom", gather = true},
	{map = "-56,22", path = "right", gather = true},
	{map = "-54,22", path = "right", gather = true},
	{map = "-53,22", path = "right", gather = true},
	{map = "-55,22", path = "right"},
	{map = "-52,22", path = "top"},
	{map = "-52,21", path = "right", gather = true},
	{map = "-51,21", path = "right"},
	{map = "-50,21", path = "right"},
	{map = "-49,21", path = "top"},
	{map = "-49,20", path = "top"},
	{map = "-49,19", path = "top"},
	{map = "-49,18", path = "top"},
	{map = "-49,17", path = "top"},
	{map = "-49,16", path = "top"},
	{map = "-49,15", path = "top"},
	{map = "-49,14", path = "top"},
	{map = "-49,13", path = "top"},
	{map = "-49,12", path = "left"},
	{map = "-50,12", path = "left"},
	{map = "-48,19", path = "left"},
	{map = "-47,19", path = "left"},
	{map = "-46,19", path = "left"},
	{map = "-47,21", path = "top"},
	{map = "-47,20", path = "top"},
	{map = "-46,18", path = "bottom"},
}

selectedPath = path1

function pathSelection()
	wT()
    if job:level(26) < 40 then
    	GATHER = {254,255}
        selectedPath = path1
    elseif job:level(26) >= 40 and job:level(26) < 80 then
    	GATHER = {67,66}
        selectedPath = path2
    elseif job:level(26) >= 80 and job:level(26) < 140 then
    	GATHER = {68}
        selectedPath = path3
    elseif job:level(26) >= 140 and job:level(26) <= 200 then
    	GATHER = {256,257}
    	selectedPath = path4
    end
end

function bank()
	pathSelection()
	banque = true
	if selectedPath == path1 then
		selectedBank = "Astrub"
	elseif selectedPath == path2 or selectedPath == path3 or selectedPath == path4 then
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

function getPrices()
	prices = {
		{
			["Name"] = "Ortie",
			["Prix"] = sale:getPriceItem(items[1]["id"],3),
			["Count"] = 7,
		},
		{
			["Name"] = "Sauge",
			["Prix"] = sale:getPriceItem(items[2]["id"],3),
			["Count"] = 7,
		},
		{
			["Name"] = "Trèfle à 5 Feuilles",
			["Prix"] = sale:getPriceItem(items[3]["id"],3),
			["Count"] = 7,
		},
		{
			["Name"] = "Menthe Sauvage",
			["Prix"] = sale:getPriceItem(items[4]["id"],3),
			["Count"] = 7,
		},
		{
			["Name"] = "Orchidée Freyesque",
			["Prix"] = sale:getPriceItem(items[5]["id"],3),
			["Count"] = 10,
		},
		{
			["Name"] = "Edelweiss",
			["Prix"] = sale:getPriceItem(items[6]["id"],3),
			["Count"] = 10,
		},
		{
			["Name"] = "Ginseng",
			["Prix"] = sale:getPriceItem(items[8]["id"],3),
			["Count"] = 10,
		},
		{
			["Name"] = "Belladone",
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

percentValueFromPrice = 80
function updatePrices()
    itemsInSales = sale:itemsOnSale()
    GUIDlist = {}
    for n = 1, itemsInSales do
        local GUID = sale:getItemGUID(n)
        table.insert(GUIDlist,GUID)
    end
    for m,tempGUID in ipairs(GUIDlist) do

        itemID = sale:getItemGID(m) -- ID de l'item
        itemName = inventory:itemNameId(itemID) -- Nom de l'item

        myActualPrice = sale:getItemPrice(m) -- Mon prix actuel
        actualPrice = sale:getPriceItem(itemID,3) -- Prix actuel
        --myPriceInMemory = global:remember("BNR"..itemID) -- Prix en mémoire
        averagePrice = (sale:getAveragePriceItem(itemID,1)*100)*(percentValueFromPrice/100) -- Prix moyen
        global:printMessage("---------------------------------------------------------------------------------")
        global:printSuccess("Nom de l'objet : ["..itemName.."].")
        global:printMessage("Prix minimum : "..averagePrice.." kamas. (lot de 100)")
        global:printMessage("Mon prix actuel : "..myActualPrice.." kamas.")
        global:printMessage("Prix affiché en HdV : "..actualPrice.." kamas.")
        if myActualPrice == actualPrice then
            global:printSuccess("Inutile d'actualiser, j'ai le prix le plus bas.")
            if global:remember("BNR"..itemID) == nil then
                global:addInMemory("BNR"..itemID,actualPrice)
            else
                global:editInMemory("BNR"..itemID,actualPrice)
            end
        elseif myActualPrice > actualPrice then
            global:printError("Actualisation nécessaire, mon prix de vente est supérieur au prix actuel...")
            if actualPrice < averagePrice then
                global:printError("Actualisation annulée, le prix auquel je dois actualiser le lot de ressource est trop faible.")
            else
                if global:remember("BNR"..itemID) == nil then
                    global:addInMemory("BNR"..itemID,actualPrice)
                end
                if global:remember("BNR"..itemID) > actualPrice then
                    global:editInMemory("BNR"..itemID,actualPrice-1)
                end
                sale:editPrice(tempGUID,global:remember("BNR"..itemID),100)
            end
        end
    end
end

function myPriceWillBeTheLowest(arg)
    if global:remember("A001" .. arg) == nil then -- Si je n'ai pas encore cet objet en mémoire
        global:printError("Prix inconnu. Ajout en mémoire.")
        global:addInMemory("A001" .. arg, actualPrice-1) -- J'ajoute son ID et MON prix en mémoire.
    end
    if global:remember("A001" .. arg) == actualPrice then
        global:printError("Prix identique.")
        return true -- Si le prix actuel est équivalent à MON prix en mémoire, je renvoi true (j'ai le prix le plus bas)
    else
        global:printMessage(global:remember("A001"..arg))
        global:editInMemory("A001"..arg, actualPrice-1) -- Sinon, j'attribue à l'item le prix actuel - 1 kama (qui deviendra le prix auquel je vais mettre en vente
    end
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
		global:printMessage("- Otomai")
		global:printMessage("- Village des Eleveurs")
		global:printMessage("- Bonta")
		global:delay(500)
		welT = false
	end
end

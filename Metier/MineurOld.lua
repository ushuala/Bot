OPEN_BAGS = true
GATHER = {}
module = {}
start = 1

path1 = {
	{map = "2883593", door = "409"}, -- Banque -> Int -> Sortie
	{map = "147254", path = "havenbag"}, -- Bnauqe Ext -> HavreSac
	--Trajet vers Mine Yjupe--
	{map = "0,0", path = "zaap(88213271)"}, -- Amakna (2,0)
	{map = "162791424", path = "zaap(88213271)"},
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
	{map = "97260035", path = "havenbag"},
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
		{map = "173017606", path = "havenbag"},
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

function pathSelection()
	if map:currentMapId() == 147768 or map:currentMapId() == 146741 or map:currentMapId()==212601349 or map:currentMapId() == 90703872 or map:currentMapId() == 192416776 or map:currentMapId() == 191106052 then -- Bonta
		global:printMessage("path1 du début")
		selectedPath = path1
		--Mine Yjupe--
	elseif map:currentMapId() == 88213271 then -- Zaap (2,0)
		global:printMessage("path1")
		selectedPath = path1
	elseif map:currentMapId() == 97261075 then
		global:printMessage("path2")
		selectedPath = path2
	elseif map:currentMapId() == 97260051 then
		global:printMessage("path3")
		selectedPath = path3
		--Fin Mine Yjupe--
		--Mine Auderie--
	elseif map:currentMapId() == 97259021 then
		global:printMessage("path4")
		selectedPath = path4
	elseif map:currentMapId() == 97261069 then
		global:printMessage("path5")
		selectedPath = path5
		--Fin Mine Auderie
		--Mine Sadida--
	elseif map:currentMapId() == 88213774 then
		global:printMessage("path5")
		selectedPath = path5
	elseif map:currentMapId() == 97260043 then
		global:printMessage("path6")
		selectedPath = path6
	elseif map:currentMapId() == 97261067 then
		global:printMessage("path7")
		selectedPath = path7
	elseif map:currentMapId() == 97257995 then
		global:printMessage("path8")
		selectedPath = path8
	elseif map:currentMapId() == 97259017 then
		global:printMessage("path9")
		selectedPath = path9
	elseif map:currentMapId() == 97260041 then
		global:printMessage("path10")
		selectedPath = path10
	elseif map:currentMapId() == 97256969 then
		global:printMessage("path11")
		selectedPath = path11
	elseif map:currentMapId() == 97257991 then
		global:printMessage("path12")
		selectedPath = path12
	elseif map:currentMapId() == 97259015 then
		global:printMessage("path13")
		selectedPath = path13
	elseif map:currentMapId() == 97255943 then
		global:printMessage("path14")
		selectedPath = path14
	elseif map:currentMapId() == 97257989 then
		global:printMessage("path15")
		if job:level(24) < 40 then
			selectedPath = path15
		elseif job:level(24) >= 40 then
			selectedPath = path15bis
		end
		--Fin Mine Sadida--
		--Mine Herale--
	elseif map:currentMapId() == 97261059 then
		global:printMessage("path16")
		selectedPath = path16
	elseif map:currentMapId() == 97259011 then
		global:printMessage("path17")
		selectedPath = path17
	elseif map:currentMapId() == 97260035 then
		global:printMessage("path18")
		if job:level(24) < 60 then
			selectedPath = path18
		elseif job:level(24) >= 60 then
			selectedPath = path18bis
		end
		--Fin Mine Herale
		--Pandala Kobalte--
	elseif map:currentMapId() == 117442562 then
		global:printMessage("path19")
		selectedPath = path19
		--Fin Kobalte--
		--Mine Hipouce--
	elseif map:currentMapId() == 178784256 then
		global:printMessage("path20")
		selectedPath = path20
		--Fin Mine Hipouce--
		--Pandla Silicate-- TOFIX
--	elseif map:currentMapId() == 173017606 then
	--	if job:level(24) < 100 then
--			selectedPath = path21
--elseif job:level(24) >= 100 then
--			selectedPath = path21bis
--		end
	--elseif map:currentMapId() == 207621132 then
	--	selectedPath = path21ter
		--Fin Pandala Silicate--
		--Mine Estrone--
	--elseif map:currentMap() == "22,-26" then
	elseif map:currentMapId() == "173017606" then
		global:printMessage("path22")
		selectedPath = path22
	elseif map:currentMapId() == 178785288 then
		global:printMessage("path23")
		selectedPath = path23
		--Fin Mine Estrone--
	elseif map:currentMapId() == 171966475 then --Retour au début
		if job:level(24) < 180 then
			global:printMessage("path1")
			selectedPath = path1
		--Mine Frigost--
		else
			global:printMessage("path24")
			selectedPath = path24
		end
	elseif map:currentMapId() == 57017861 then
		global:printMessage("path25")
		selectedPath = path25
	elseif map:currentMapId() == 56886787 then
		global:printMessage("path26")
		selectedPath = path26
	elseif map:currentMapId() == 57016837 then -- Retour au début
		global:printMessage("path1 - retour début")
		selectedPath = path1
		--Apres Banque--
	elseif map:currentMapId() == 147254 then -- Banque Ext
		global:printMessage("path1")
		selectedPath = path1
		--Fin Apres Banque--
	end
end


function module:move()
	pathSelection()
	for x,y in pairs(selectedPath) do
		if y.map == map:currentMap() or y.map == tostring(map:currentMapId()) then
			return selectedPath
		end
	end
	global:printError("Je suis perdu, j'havresac !")
	return {
		{ map = map:currentMapId(), path = "havenbag" },
	}
end

return module

OPEN_BAGS = true
GATHER = {}
module = {}
start = 1

function customMineYjupe()
  random = math.random(0,1)
  if random == 0 then
    map:moveToCell(267) -- à droite
  else
    map:moveToCell(194) -- à gauche
  end
end

mineYjupe = {
  {map = "0,0", path = "zaap(88213271)"}, -- Amakna (2,0) --Fer+Cuivre uniquement
  {map = "162791424", path = "zaap(88213271)"},
  {map = "-2,0", path = "right"},
  {map = "-1,0", path = "top"},
  {map = "-1,-1", path = "right"},
  {map = "0,-1", path = "top"},
  {map = "0,-2", path = "top"},
  {map = "88212250", door = "248"}, -- Entrée
  {map = "97255955", path = "512", gather = true},
  {map = "97256979", path = "248", gather = true},
  {map = "97258003", path = "228", gather = true},
  {map = "97259027", custom = customMineYjupe, gather = true},
  {map = "97261075", path = "havenbag", gather = true},
  {map = "97260051", path = "havenbag", gather = true},
}


mineAuderie =  { -- Fer+Cuivre+Bronze+Kobalte
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
	--Mine Auderie--
	{map = "88213267", door = "236"}, -- Entrée
	{map = "97255949", path = "376", gather = true},
	{map = "97256973", path = "122", gather = true},
	{map = "97257997", path = "235", gather = true},
	{map = "97259021", path = "havenbag", gather = true},
}

mineHeraleMap1Left = true
mineHeraleMap2Bottom = true
function customMineHerale()
  if map:currentMapId() == 97260033 then
    if mineHeraleMap1Left == true then
    mineHeraleMap1Left = false
    map:moveToCell(183)
    else
    mineHeraleMap1Left = true
    map:moveToCell(405)
    end
  end
  if map:currentMapId() == 97261057 then
    if mineHeraleMap2Bottom == true then
    mineHeraleMap2Bottom = false
      map:moveToCell(421)
    else
      mineHeraleMap2Bottom = true
      map:moveToCell(235)
    end
  end
end

mineHerale = { -- Fer + Cuivre + Or
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
	{map = "97260033", custom = customMineHerale, gather = true},
  {map = "97261059", path = "417", gather = true},
  {map = "97261057", custom = customMineHerale, gather = true},
  {map = "97255939", path = "446", gather = true},
  {map = "97256963", path = "492", gather = true},
  {map = "97257987", path = "492", gather = true},
  {map = "97259011", path = "276", gather = true},
  {map = "97260035", path = "havenbag", gather = true},
}


mineKobalte = {
  {map = "0,0", path = "zaap(88085249)"}, -- sufokia
  {map = "10,22", path = "right"},
  {map = "11,22", path = "right"},
  {map = "12,22", path = "top"},
  {map = "12,21", path = "right"},
  {map = "13,21", path = "top"},
  {map = "13,20", path = "top"},
  {map = "13,19", path = "top"},
  {map = "13,18", path = "top"},
  {map = "13,17", path = "top"},
  {map = "13,16", path = "top"},
  {map = "13,15", path = "top"},
  {map = "13,14", path = "right"},
  {map = "14,14", door = "403"},
  {map = "117440512", door = "222", gather = true},
  {map = "117441536", door = "167", gather = true},
  {map = "117442560", door = "488", gather = true},
  {map = "117443584", door = "221", gather = true},
  {map = "117440514", door = "293", gather = true},
  {map = "117441538", door = "251", gather = true},
  {map = "117442562", path = "havenbag", gather = true},
}
mineHipouceDroite = true
mineHipouceDroite2 = true
function customMineHipouce()
  if map:currentMapId() == 178783236 then
    if mineHipouceDroite == true then
      mineHipouceDroite = false
      map:door(555)
    else
      mineHipouceDroite = true
      map:door(309)
    end
  end
  if map:currentMapId() == 178783232 then
    if mineHipouceDroite2 == true then
      mineHipouceDroite2 = false
      map:door(403)
    else
      mineHipouceDroite2 = true
      map:door(200)
    end
  end
end

mineHipouce = { --  kobalte
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
	{map = "173018629", door = "82"}, -- Entrée
	{map = "178784260", door = "421", gather = true},
  {map = "178783236", custom=customMineHipouce, gather = true},
  {map = "178783232", custom=customMineHipouce, gather = true},
  {map = "178783234", door = "281", gather = true},
  {map = "178782210", door = "185", gather = true},
  {map = "178782208", door = "138", gather = true},
  {map = "178782214", door = "507", gather = true},
  {map = "178782216", door = "422", gather = true},
  {map = "178782218", door="476", gather = true},
  {map = "178782220", path="havenbag", gather = true},
}

function talkToPnjSakai()
  npc:npc(1359,3)
  global:delay(1500)
  npc:reply(8109)
  global:delay(1500)
  npc:reply(8110)
  global:delay(1500)
  npc:reply(8111)
end
dansLaMineSakai = true
goLeftMineSakai = true
function customMineSakai()
  if map:currentMapId() == 54159148 then
    if dansLaMineSakai == true then
      dansLaMineSakai = false
      map:door(174)
    else
      dansLaMineSakai = true
      map:changeMap("top")
    end
  end
    if map:currentMapId() == 57016839 then
      if goLeftMineSakai == true then
        goLeftMineSakai = false
        map:moveToCell(298)
      else
        goLeftMineSakai = true
        map:moveToCell(442)
      end
    end
end
mineEstrone = { --etain
  {map = "0,0", path = "zaap(171967506)"}, -- Routes des Roulottes
	{map = "-25,12", path = "top"},
	{map = "-25,11", path = "top"},
	{map = "-25,10", path = "top"},
	{map = "-25,9", path = "top"},
	{map = "-25,8", path = "top"},
	{map = "-25,7", path = "left"},
	{map = "-26,7", path = "top"},
	{map = "-26,6", path = "top"},
  {map = "171966987", door = "397"}, -- Entrée
  {map = "178785286", door = "99", gather = true},
  {map = "178785288", path = "havenbag", gather = true},
}


mineHurlement = { -- etain
  {map = "0,0", path = "zaap(164364304)"}, --routes roca
  {map = "-20,-20", path = "bottom"},
  {map = "-20,-19", path = "bottom"},
  {map = "-20,-18", path = "bottom"},
  {map = "-20,-17", path = "bottom"},
  {map = "-20,-16", path = "bottom"},
  {map = "-20,-15", path = "bottom"},
  {map = "-20,-14", path = "bottom"},
  {map = "-20,-13", path = "bottom"},
  {map = "-20,-12", path = "bottom"},
  {map = "-20,-11", path = "bottom"},
  {map = "-20,-10", path = "bottom"},
  {map = "-20,-9", path = "left"},
  {map = "-21,-9", path = "bottom"},
  {map = "-21,-8", path = "bottom"},
  {map = "-21,-7", door = "166"},
  {map = "178784264", path="havenbag", gather = true}
}

mineSaharach = { --argent bauxite or
  {map = "0,0", path = "zaap(173278210)"},
  {map = "15,-58", path = "top"},
  {map = "15,-59", path = "top"},
  {map = "15,-60", path = "right"},
  {map = "173278720", door = "133"},
  {map = "173935364", door = "297", gather=true},
  {map = "173936388", door = "450", gather=true},
  {map = "173937412", door = "382", gather=true},
  {map = "173938436", door = "367", gather=true},
  {map = "173939460", path = "havenbag", gather=true},
}

mineSakai = { --obsidienne etc
  {map = "0,0", path = "zaap(68419587)"}, -- port de madrestam
  { map = "68419587", path = "bottom" },
  { map = "68419588", gather = true, path = "right" },
  { map = "68420100", gather = true, path = "right" },
  { map = "68420612", path = "right" },
  { map = "68421124", path = "right" },
  { map = "68421636", path = "right"},
  { map = "68422148", custom = talkToPnjSakai },
  { map = "54159142", path = "left" },
  { map = "54159655", path = "left" },
  { map = "54160168", path = "top"},
  { map = "54160169", path = "top"},
  { map = "54160170", path = "top"},
  { map = "54160171", path = "right"},
  { map = "54159659", path = "right"},
  { map = "54159147", path = "top"},
  { map = "54159148", custom = customMineSakai},
  { map = "57017863", gather = true, path = "429"},
  { map = "54159149", path = "right"},
  { map = "54158637", door = "376", done = false },
  { map = "57016839", gather = true, custom=customMineSakai},
  { map = "56886791", path="442",gather = true},
  { map = "56885767", gather = true, path = "havenbag"},
}


selectedPath = mineYjupe
mineYjupe.label = "mine Yjupe"
mineAuderie.label="mine Auderie"
mineHerale.label="mine Herale"
mineHipouce.label="mine Hipouce"
mineKobalte.label="mine Kobalte"
mineHurlement.label="mine Hurlement"
mineEstrone.label="mine Estrone"
mineSakai.label="mine Sakai"
mineSaharach.label="mine Saharach"
listMine60={mineYjupe,mineAuderie,mineHerale}
listMine100={mineYjupe,mineAuderie,mineHerale,mineHipouce,mineKobalte}
listMine160={mineHurlement,mineEstrone,mineHipouce,mineKobalte,mineYjupe,mineAuderie,mineHerale}
listMine199={mineHurlement,mineEstrone,mineHipouce,mineKobalte,mineSaharach,mineHerale, mineYjupe}
listMine200={mineHurlement,mineEstrone,mineSakai,mineSaharach,mineHerale,mineYjupe}
lastIndex = 1

function pathSelection()
  if map:currentMapId() == 162791424 then --on ne change de map que si on est en havresac
    if job:level(24) < 60 then
      index = math.random(1,#listMine60)
      while index == lastIndex do
        index = math.random(1,#listMine60)
      end
      lastIndex = index
      global:printMessage("En route vers "..listMine60[index].label)
      selectedPath = listMine60[index]
    elseif job:level(24) < 100 then
      index = math.random(1,#listMine100)
      while index == lastIndex do
        index = math.random(1,#listMine100)
      end
      lastIndex = index
      global:printMessage("En route vers "..listMine100[index].label)
      selectedPath = listMine100[index]
    elseif job:level(24) < 160 then
      index = math.random(1,#listMine160)
      while index == lastIndex do
        index = math.random(1,#listMine160)
      end
      lastIndex = index
      global:printMessage("En route vers "..listMine160[index].label)
      selectedPath = listMine160[index]
    elseif job:level(24) <= 200 then -- to fix sakai
      index = math.random(1,#listMine199)
      while index == lastIndex do
        index = math.random(1,#listMine199)
      end
      lastIndex = index
      global:printMessage("En route vers "..listMine199[index].label)
      selectedPath = listMine199[index]
    elseif job:level(24) == 200 then
      index = math.random(1,#listMine200)
      while index == lastIndex do
        index = math.random(1,#listMine200)
      end
      lastIndex = index
      global:printMessage("En route vers "..listMine200[index].label)
      selectedPath = listMine200[index]
    end
  end
end


function module:move()
	pathSelection()
	for x,y in pairs(selectedPath) do
		if (y.map == map:currentMap() or y.map == tostring(map:currentMapId())) then
			return selectedPath
		end
	end
	global:printError("Je suis perdu, j'havresac !")
	return {
		{ map = map:currentMapId(), path = "havenbag" },
	}
end

return module

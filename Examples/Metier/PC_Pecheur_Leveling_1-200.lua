

OPEN_BAGS = true
function whichArea()
    wT()
    if job:level(36) < 40 then
        GATHER = {
            75,
            71,
            74,
            77,
            76,
            78,
            79,
            81,
            263,
            264,
            265,
            266,
            267,
            268,
            269,
            270,
            271,
            272,
            273,
            274,
            132,
            290,
            112
        }
        return mapAction(firstArea)
    elseif job:level(36) >= 40 and job:level(36) < 60 then
        GATHER = {
            75,
            71,
            74,
            77,
            76,
            78,
            79,
            81,
            263,
            264,
            265,
            266,
            267,
            268,
            269,
            270,
            271,
            272,
            273,
            274,
            132,
            290,
            112
        }
        return mapAction(secondArea)
    elseif job:level(36) >= 60 and job:level(36) < 90 then
        GATHER = {
            75,
            71,
            74,
            77,
            76,
            78,
            79,
            81,
            263,
            264,
            265,
            266,
            267,
            268,
            269,
            270,
            271,
            272,
            273,
            274,
            132,
            290,
            112
        }
        return mapAction(thirdArea)
    elseif job:level(36) >= 90 and job:level(36) < 140 then
        GATHER = {
            75,
            71,
            74,
            77,
            76,
            78,
            79,
            81,
            263,
            264,
            265,
            266,
            267,
            268,
            269,
            270,
            271,
            272,
            273,
            274,
            132,
            290,
            112
        }
        if map:onMap(88212481) then
            return {{map = map:currentMap(), custom = getDirection}}
        end
        return mapAction(forthArea)
    elseif job:level(36) >= 140 and job:level(36) <= 200 then
        GATHER = {
	112,
	265,
	266,
	269,
	268
		
        }
        return mapAction(fifthArea)
    end
end
function mapAction(harvestArea)
    for i in pairs(harvestArea) do
        if
            tostring(harvestArea[i]["map"]) == map:currentMap() or
                tostring(harvestArea[i]["map"]) == tostring(map:currentMapId())
         then
            mapTemp = harvestArea[i]
            extraAction()
            myMap = tostring(map:currentMap())
            if harvestArea[i]["path"] ~= nil then
                return {
                    {
                        map = map:currentMap(),
                        path = harvestArea[i]["path"],
                        gather = doGather,
                        fight = doFight,
                        forcegather = doForceGather,
                        forcefight = doForceFight
                    }
                }
            elseif harvestArea[i]["custom"] ~= nil then
                return {
                    {
                        map = map:currentMap(),
                        custom = harvestArea[i]["custom"],
                        gather = doGather,
                        fight = doFight,
                        forcegather = doForceGather,
                        forcefight = doForceFight
                    }
                }
            elseif harvestArea[i]["door"] ~= nil then
                return {
                    {
                        map = map:currentMap(),
                        door = harvestArea[i]["door"],
                        gather = doGather,
                        fight = doFight,
                        forcegather = doForceGather,
                        forcefight = doForceFight
                    }
                }
            end
        end
    end
    return {{map = map:currentMap(), path = "havenbag"}}
end
function extraAction()
    if
        mapTemp["gather"] == nil and mapTemp["fight"] == nil and mapTemp["forcefight"] == nil and
            mapTemp["forcegather"] == nil
     then
        doGather = false
        doFight = false
        doForceGather = false
        doForceFight = false
    elseif
        mapTemp["gather"] == true and mapTemp["fight"] == nil and mapTemp["forcefight"] == nil and
            mapTemp["forcegather"] == nil
     then
        doGather = true
        doFight = false
        doForceGather = false
        doForceFight = false
    elseif
        mapTemp["gather"] == nil and mapTemp["fight"] == true and mapTemp["forcefight"] == nil and
            mapTemp["forcegather"] == nil
     then
        doGather = false
        doFight = true
        doForceGather = false
        doForceFight = false
    elseif
        harvestArea[i]["gather"] == nil and harvestArea[i]["fight"] == nil and harvestArea[i]["forcefight"] == true and
            harvestArea[i]["forcegather"] == true
     then
        doGather = false
        doFight = false
        doForceGather = true
        doForceFight = true
    elseif
        harvestArea[i]["gather"] == nil and harvestArea[i]["fight"] == nil and harvestArea[i]["forcefight"] == true and
            harvestArea[i]["forcegather"] == nil
     then
        doGather = false
        doFight = false
        doForceGather = false
        doForceFight = true
    elseif
        harvestArea[i]["gather"] == nil and harvestArea[i]["fight"] == nil and harvestArea[i]["forcefight"] == nil and
            harvestArea[i]["forcegather"] == true
     then
        doGather = false
        doFight = false
        doForceGather = true
        doForceFight = true
    end
end
function move()
    return whichArea()
end
firstArea = {
    {map = "99095051", path = "410"},
    {map = "0,0", path = "zaap(68552706)"},
    {map = "3,-5", path = "right"},
    {map = "4,-5", path = "bottom"},
    {map = "4,-4", path = "bottom"},
    {map = "4,-3", path = "left", gather = true},
    {map = "3,-3", path = "bottom", gather = true},
    {map = "3,-2", path = "bottom", gather = true},
    {map = "3,-1", path = "right"},
    {map = "4,-1", path = "right"},
    {map = "5,-1", path = "right", gather = true},
    {map = "6,-1", path = "right", gather = true},
    {map = "7,-1", path = "bottom", gather = true},
    {map = "7,0", path = "right", gather = true},
    {map = "8,0", path = "bottom", gather = true},
    {map = "8,1", path = "right", gather = true},
    {map = "9,1", path = "bottom", gather = true},
    {map = "9,2", path = "bottom"},
    {map = "9,3", path = "bottom"},
    {map = "9,4", path = "right"},
    {map = "10,4", path = "right"},
    {map = "11,4", path = "right"},
    {map = "12,4", path = "top"},
    {map = "12,3", path = "left", gather = true},
    {map = "11,3", path = "left", gather = true},
    {map = "10,3", path = "top", gather = true},
    {map = "10,2", path = "top", gather = true},
    {map = "10,1", path = "right", gather = true},
    {map = "11,1", path = "bottom"},
    {map = "11,2", path = "right", gather = true},
    {map = "12,2", path = "top", gather = true},
    {map = "12,1", path = "top"},
    {map = "12,0", path = "left"},
    {map = "11,0", path = "left"},
    {map = "10,0", path = "left"},
    {map = "9,0", path = "top", gather = true},
    {map = "9,-1", path = "left"},
    {map = "8,-1", path = "top", gather = true},
    {map = "8,-2", path = "left"},
    {map = "7,-2", path = "left"},
    {map = "6,-2", path = "top", gather = true},
    {map = "6,-3", path = "left", gather = true},
    {map = "5,-3", path = "bottom", gather = true},
    {map = "5,-2", path = "left", gather = true},
    {map = "4,-2", path = "top", gather = true},
    {map = "2,-2", path = "right"}
}
secondArea = {
    {map = "99095051", path = "410"},
    {map = "0,0", path = "zaap(68552706)"},
    {map = "3,-5", path = "top"},
    {map = "3,-6", path = "right"},
    {map = "4,-6", path = "right"},
    {map = "5,-6", path = "right"},
    {map = "6,-6", path = "right"},
    {map = "7,-6", path = "right", gather = true},
    {map = "8,-6", path = "bottom", gather = true},
    {map = "8,-5", path = "bottom", gather = true},
    {map = "8,-4", path = "left", gather = true},
    {map = "7,-4", path = "bottom", gather = true},
    {map = "7,-3", path = "right", gather = true},
    {map = "8,-3", path = "right", gather = true},
    {map = "9,-3", path = "bottom", gather = true},
    {map = "9,-2", path = "bottom", gather = true},
    {map = "9,-1", path = "right"},
    {map = "10,-1", path = "right", gather = true},
    {map = "11,-1", path = "top", gather = true},
    {map = "11,-2", path = "right", gather = true},
    {map = "12,-2", path = "top", gather = true},
    {map = "12,-3", path = "right", gather = true},
    {map = "13,-3", path = "bottom", gather = true},
    {map = "13,-2", path = "bottom", gather = true},
    {map = "13,-1", path = "left(56)", gather = true},
    {map = "12,-1", path = "bottom"},
    {map = "12,0", path = "right"},
    {map = "13,0", path = "bottom", gather = true},
    {map = "13,1", path = "left", gather = true},
    {map = "12,1", path = "left"},
    {map = "11,1", path = "left"},
    {map = "10,1", path = "left(336)"},
    {map = "9,1", path = "bottom"},
    {map = "9,2", path = "bottom"},
    {map = "9,3", path = "right"},
    {map = "10,3", path = "right"},
    {map = "11,3", path = "right", gather = true},
    {map = "12,3", path = "bottom", gather = true},
    {map = "12,4", path = "right", gather = true},
    {map = "13,4", path = "bottom", gather = true},
    {map = "13,5", path = "bottom", gather = true},
    {map = "13,6", path = "bottom", gather = true},
    {map = "13,7", path = "bottom", gather = true},
    {map = "13,8", path = "left", gather = true},
    {map = "12,8", path = "bottom", gather = true},
    {map = "12,9", path = "left", gather = true},
    {map = "11,9", path = "bottom", gather = true},
    {map = "11,10", path = "right", gather = true},
    {map = "12,10", path = "bottom", gather = true},
    {map = "12,11", path = "left", gather = true},
    {map = "11,11", path = "left"},
    {map = "10,11", path = "left"},
    {map = "9,11", path = "left"},
    {map = "7,-2", path = "top"},
    {map = "7,-1", path = "top"},
    {map = "7,0", path = "top"},
    {map = "7,1", path = "top"},
    {map = "7,2", path = "top"},
    {map = "7,3", path = "top"},
    {map = "7,4", path = "top"},
    {map = "7,5", path = "top"},
    {map = "7,6", path = "top"},
    {map = "7,7", path = "top"},
    {map = "7,8", path = "top"},
    {map = "7,9", path = "top"},
    {map = "7,10", path = "top"},
    {map = "7,11", path = "top"},
    {map = "8,11", path = "left"}
}
thirdArea = {
    {map = "99095051", path = "410"},
    {map = "0,0", path = "zaap(68552706)"},
    {map = "3,-5", path = "right"},
    {map = "4,-5", path = "bottom"},
    {map = "4,-4", path = "bottom"},
    {map = "4,-3", path = "left", gather = true},
    {map = "3,-3", path = "bottom", gather = true},
    {map = "3,-2", path = "bottom", gather = true},
    {map = "3,-1", path = "right"},
    {map = "4,-1", path = "right"},
    {map = "5,-1", path = "right", gather = true},
    {map = "6,-1", path = "right", gather = true},
    {map = "7,-1", path = "bottom", gather = true},
    {map = "7,0", path = "right", gather = true},
    {map = "8,0", path = "bottom", gather = true},
    {map = "8,1", path = "right", gather = true},
    {map = "9,1", path = "bottom", gather = true},
    {map = "9,2", path = "bottom"},
    {map = "9,3", path = "bottom"},
    {map = "9,4", path = "right"},
    {map = "10,4", path = "right"},
    {map = "12,3", path = "left", gather = true},
    {map = "11,3", path = "left", gather = true},
    {map = "10,3", path = "top", gather = true},
    {map = "10,2", path = "top", gather = true},
    {map = "10,1", path = "right", gather = true},
    {map = "11,1", path = "bottom"},
    {map = "11,2", path = "right", gather = true},
    {map = "12,2", path = "top", gather = true},
    {map = "6,-2", path = "top", gather = true},
    {map = "6,-3", path = "left", gather = true},
    {map = "5,-3", path = "bottom", gather = true},
    {map = "5,-2", path = "left", gather = true},
    {map = "4,-2", path = "top", gather = true},
    {map = "2,-2", path = "right"},
    {map = "11,4", path = "bottom"},
    {map = "11,5", path = "bottom"},
    {map = "11,6", path = "bottom"},
    {map = "11,7", path = "bottom"},
    {map = "12,11", path = "top", gather = true},
    {map = "12,9", path = "top", gather = true},
    {map = "12,8", path = "right", gather = true},
    {map = "13,8", path = "top", gather = true},
    {map = "13,7", path = "top", gather = true},
    {map = "13,6", path = "top", gather = true},
    {map = "13,5", path = "top", gather = true},
    {map = "13,4", path = "left", gather = true},
    {map = "12,4", path = "top", gather = true},
    {map = "12,1", path = "right"},
    {map = "13,1", path = "top", gather = true},
    {map = "13,0", path = "left", gather = true},
    {map = "12,0", path = "top"},
    {map = "12,-1", path = "right(83)"},
    {map = "13,-1", path = "top", gather = true},
    {map = "13,-2", path = "top", gather = true},
    {map = "13,-3", path = "left", gather = true},
    {map = "12,-3", path = "left", gather = true},
    {map = "11,-3", path = "bottom", gather = true},
    {map = "11,-2", path = "bottom", gather = true},
    {map = "11,-1", path = "left", gather = true},
    {map = "10,-1", path = "left", gather = true},
    {map = "9,-1", path = "top", gather = true},
    {map = "9,-2", path = "top", gather = true},
    {map = "9,-3", path = "left", gather = true},
    {map = "8,-3", path = "left", gather = true},
    {map = "7,-3", path = "top", gather = true},
    {map = "7,-4", path = "right(111)"},
    {map = "8,-4", path = "top", gather = true},
    {map = "8,-5", path = "top", gather = true},
    {map = "8,-6", path = "left", gather = true},
    {map = "7,-6", path = "left", gather = true},
    {map = "6,-6", path = "left"},
    {map = "5,-6", path = "left"},
    {map = "4,-6", path = "bottom"},
    {map = "12,10", path = "left", gather = true},
    {map = "11,10", path = "top"},
    {map = "11,9", path = "right"},
    {map = "11,8", path = "left"},
    {map = "10,8", path = "bottom"},
    {map = "10,9", path = "bottom"},
    {map = "10,10", path = "bottom"},
    {map = "10,11", path = "right"},
    {map = "11,11", path = "right"}
}
forthArea = {
    {map = "99095051", path = "410"},
    {map = "0,0", path = "zaap(88212481)"},
    {map = "-1,24", custom = getDirection},
    {map = "-2,24", path = "left", gather = true},
    {map = "-3,24", path = "left", gather = true},
    {map = "-4,24", path = "left", gather = true},
    {map = "-5,24", path = "bottom"},
    {map = "-5,25", path = "left", gather = true},
    {map = "-6,25", path = "bottom", gather = true},
    {map = "-6,26", path = "right", gather = true},
    {map = "-5,26", path = "bottom", gather = true},
    {map = "-6,27", path = "left", gather = true},
    {map = "-7,27", path = "bottom", gather = true},
    {map = "-7,28", path = "bottom", gather = true},
    {map = "-7,29", path = "bottom", gather = true},
    {map = "-7,30", path = "bottom"},
    {map = "-7,31", path = "bottom", gather = true},
    {map = "-7,32", path = "right", gather = true},
    {map = "-4,32", path = "right", gather = true},
    {map = "-3,32", path = "top", gather = true},
    {map = "-3,30", path = "right", gather = true},
    {map = "-2,30", path = "right", gather = true},
    {map = "-1,30", path = "top", gather = true},
    {map = "-1,29", path = "left", gather = true},
    {map = "-2,29", path = "left", gather = true},
    {map = "-3,29", path = "left", gather = true},
    {map = "-4,29", path = "top", gather = true},
    {map = "-4,28", path = "right"},
    {map = "-3,28", path = "right"},
    {map = "-2,28", path = "top", gather = true},
    {map = "-2,27", path = "top", gather = true},
    {map = "-2,26", path = "right"},
    {map = "-1,26", path = "top", gather = true},
    {map = "-1,25", path = "left", gather = true},
    {map = "-5,27", path = "bottom", gather = true},
    {map = "-5,28", path = "left", gather = true},
    {map = "-6,28", path = "top"},
    {map = "-3,31", path = "left", gather = true},
    {map = "-4,31", path = "top", gather = true},
    {map = "-4,30", path = "right", gather = true},
    {map = "-6,32", path = "top", gather = true},
    {map = "-6,31", path = "right", gather = true},
    {map = "-5,31", path = "bottom", gather = true},
    {map = "-5,32", path = "right", gather = true},
    {map = "0,24", path = "bottom"},
    {map = "0,25", path = "bottom"},
    {map = "0,26", path = "bottom"},
    {map = "0,27", path = "bottom"},
    {map = "0,28", path = "bottom"},
    {map = "0,29", path = "bottom"},
    {map = "0,30", path = "right"},
    {map = "1,30", path = "bottom"},
    {map = "1,31", path = "bottom", gather = true},
    {map = "0,31", path = "bottom", gather = true},
    {map = "-1,31", path = "right", gather = true},
    {map = "-2,32", path = "top", gather = true},
    {map = "-2,31", path = "right", gather = true},
    {map = "-2,33", path = "top", gather = true},
    {map = "-2,34", path = "top", gather = true},
    {map = "-1,34", path = "left", gather = true},
    {map = "0,34", path = "left", gather = true},
    {map = "1,34", path = "left", gather = true},
    {map = "1,33", path = "bottom", gather = true},
    {map = "1,32", path = "bottom", gather = true},
    {map = "0,32", path = "havenbag"},
    {map = "-2,25", path = "havenbag"}
}
fifthArea = {
        { map = "162791424", path = "zaap(207619076)"},    
        {map = "207619076", path = "436"},
		{map = "206307842", path = "top", gather = true},
		{map = "20,-30", path = "top", gather = true},
		{map = "20,-31", path = "left", gather = true},
		{map = "19,-31", path = "bottom", gather = true},
		{map = "19,-30", path = "bottom", gather = true},
		{map = "19,-29", path = "bottom", gather = true},
		{map = "19,-28", path = "right", gather = true},
		{map = "20,-28", path = "bottom", gather = true},
		{map = "20,-27", path = "bottom", gather = true},
		{map = "20,-26", path = "left", gather = true},
		{map = "19,-26", path = "bottom", gather = true},
		{map = "19,-25", path = "bottom", gather = true},
		{map = "19,-24", path = "left", gather = true},
		{map = "18,-24", path = "bottom", gather = true},
		{map = "18,-23", path = "bottom", gather = true},
		{map = "18,-22", path = "right", gather = true},
		{map = "19,-22", path = "bottom", gather = true},
		{map = "19,-21", path = "right", gather = true},
		{map = "20,-21", path = "bottom", gather = true},
		{map = "20,-20", path = "right", gather = true},
		{map = "21,-20", path = "top", gather = true},
		{map = "21,-21", path = "top", gather = true},
		{map = "21,-22", path = "right", gather = true},
		{map = "22,-22", path = "right", gather = true},
		{map = "23,-22", path = "top", gather = true},
		{map = "23,-23", path = "left(532)", gather = true},
		{map = "22,-23", door = "128", gather = true},
		{map = "22,-24", path = "left", gather = true},
		{map = "21,-24", path = "left", gather = true},
		{map = "20,-24", path = "top", gather = true},
		{map = "20,-25", path = "right", gather = true},
		{map = "21,-25", path = "top", gather = true},
		{map = "21,-26", path = "top", gather = true},
		{map = "21,-27", path = "right", gather = true},
		{map = "22,-27", path = "right", gather = true},
		{map = "23,-27", path = "top", gather = true},
		{map = "23,-28", path = "top", gather = true},
		{map = "23,-29", path = "left", gather = true},
		{map = "22,-29", path = "bottom", gather = true},
		{map = "22,-28", path = "left", gather = true},
		{map = "21,-28", path = "top", gather = true},
		{map = "21,-29", path = "top", gather = true},
		{map = "21,-30", path = "left", gather = true},
}
function bank()
    if
        map:currentMapId() ~= 162791424 and map:currentMap() ~= "3,-5" and map:currentMap() ~= "4,-5" and
            map:currentMap() ~= "4,-4" and
            map:currentMap() ~= "4,-3" and
            map:currentMap() ~= "4,-2" and
            map:currentMap() ~= "3,-2" and
            map:currentMapId() ~= 88081177 and
            map:currentMapId() ~= 99095051
     then
        return {{map = map:currentMap(), path = "havenbag"}}
    end
    return {
        {map = "162791424", path = "zaap(68552706)"},
        {map = "3,-5", path = "right"},
        {map = "4,-5", path = "bottom"},
        {map = "4,-4", path = "bottom"},
        {map = "4,-3", path = "bottom"},
        {map = "4,-2", path = "left"},
        {map = "3,-2", path = "left"},
        {map = "88081177", door = "216"},
        {map = "99095051", custom = npcBank}
    }
end
function npcBank()
    npc:npcBank(-1)
    global:delay(1000)
    exchange:putAllItems()
    global:delay(1000)
    global:leaveDialog()
    global:delay(1000)
    map:moveToCell(410)
end
function lost()
    if map:currentMapId() ~= 162791424 then
        return {{map = map:currentMap(), path = "havenbag"}}
    end
    if job:level(36) < 90 then
        global:delay(1000)
        return {{map = "162791424", path = "zaap(68552706)"}}
    elseif job:level(36) >= 90 and job:level(36) < 140 then
        global:delay(1000)
        return {{map = "162791424", path = "zaap(88212481)"}}
    else
        global:delay(1000)
        return {{map = "162791424", path = "zaap(13605)"}}
    end
end
welT = true
function wT()
    if welT then
        global:printMessage("Bonjour " .. character:name() .. " !")
        global:delay(1000)
        global:printSuccess("Obtenu via Dotrade.fr, partenaire officiel de SnowBot.")
        global:delay(1000)
        global:printError("Le partage et la revente de scripts payants sont strictement interdits.")
        global:delay(1000)
        global:printMessage("Pour que je puisse fonctionner sans encombre, Zaaps requis : ...")
        global:delay(500)
        global:printMessage("- Astrub")
        global:printMessage("- Pandala Neutre")
        global:printMessage("- Chateau d'Amakna")
        global:printMessage("- Plaine des Scarafeuilles")
        global:printMessage("- Otomai")
        welT = false
    end
end
right, left = false, true
function getDirection()
    if right then
        right = false
        left = true
        return map:changeMap("right")
    elseif left then
        right = true
        left = false
        return map:changeMap("left")
    end
end

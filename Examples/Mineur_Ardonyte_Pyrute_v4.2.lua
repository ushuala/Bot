-------------------------------------------------------------
--                   ARDONITE X PYRUTE v4                  --
-------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------
-- [FR] Est-ce que le bot doit vendre les minérais récoltés ? true : oui | false : non
-- /!\ Incompatible avec le craft d'alliage ! /!\
-- [ENG] Does the bot have to sell harvested resources ? true : yes | false : no
-- /!\ Not compatible with alliage crafting ! /!\
--------------------------------------------------------------------------------------------------------------------------

doIhaveToSellMinerals = true

--------------------------------------------------------------------------------------------------------------------------
-- [FR] Est-ce que le bot doit craft des alliages ? true : oui | false : non
-- [ENG] Does the bot have to craft alliages ? true : yes | false : no
--------------------------------------------------------------------------------------------------------------------------

doIhaveToCraftAlliage = false -- true = oui | false = non
    doPyrute = false           -- craft Pyrute
    doArdonite = false        -- craft Ardonite
    doRutile = false

--------------------------------------------------------------------------------------------------------------------------
-- [FR] Est-ce que le bot doit vendre les alliages ? Si oui, par lot de combien ? true : oui | false : non
-- [ENG] Does the bot have to sell alliages ? If yes, by batches of how much ? true : yes | false : no
--------------------------------------------------------------------------------------------------------------------------

doIhaveToSellAlliage = false -- true = oui | false = non
sellAlliageByBatchesOf = 10  -- 1 ou 10
--------------------------------------------------------------------------------------------------------------------------

mine1 = {
    { map="57016837", path="havenbag" },
    { map="8912911", path="havenbag" },
    { map="144931", path="havenbag"},
    { map="0,0", path="zaap(88212746)" },
    { map="-1,13", path="top" },
    { map="-1,12", path="top" },
    { map="-1,11", path="top" },
    { map="-1,10", path="top" },
    { map="-1,9", path="left" },
    { map="-2,9", path="left" },
    { map="88213774", door="353" },
    { map="97259013", gather = true, path="276" },
    { map="97256967", gather = true, path="194" },
    { map="97260039", path="262" },
    { map="97257993", path="122" },
    { map="97261065", path="213" },
    { map="97255947", path="199" },
    { map="97256971", path="234" }
}

mine2 = {
    { map="97261067", path="521" },
    { map="97256971", path="503" },
    { map="97255947", path="500" },
    { map="97261065", path="479" },
    { map="97257993", path="537" },
    { map="97260039", path="241" },
    { map="97261063", path="331" }
}

mine3 = {
    { map="97259017", gather = true, path="436" },
    { map="97261063", path="296" },
    { map="97255945", path="332" }
}


mine4 = {

    { map="97260041", gather = true, path="354" },
    { map="97255945", path="213" }
}

mine5 = {
    { map="97256969", gather = true, path="401" },
    { map="97255945", path="416" },
    { map="97261063", path="459" },
    { map="97260039", path="451" },
    { map="97256967", path="518" },
    { map="97259013", path="258" },
    { map="97260037", path="352" }
}

mine6 = {
    { map="97261061", gather = true, path="458" },
    { map="97260037", path="430" },
    { map="97259013", path="403" },
    { map="88213774", path="right" },
    { map="-2,9", path="right" },
    { map="-1,9", path="top" },
    { map="-1,8", door="369" },
    { map="-2,8", path="left" },
    { map="-3,8", path="left" },
    { map="-4,8", path="top" },
    { map="-4,7", path="left" },
    { map="-5,7", path="left" },
    { map="104071169", path="left" },
    { map="104202753", door="100" },
    { map="104859143", gather = true, path="160" },
    { map="104860167", gather = true, path="205" },
    { map="104861191", gather = true, changeMap="457" }
}

mine7 = {
    { map="104861191", gather = true, path="457" },
    { map="104860167", gather = true, path="478" },
    { map="104859143", gather = true, path="171" }
}

mine8 = {
    { map="104862215", gather = true, path="472" },
    { map="104859143", gather = true, path="543" },
    { map="104202753", path="right" },
    { map="104071169", path="top" },
    { map="104071168", door="213" },
    { map="104860165", gather = true, path="408" },
    { map="104858119", path="255" }
}

mine9 = {
    { map="104862213", gather = true, path="376" },
    { map="104858119", path="207" },
    { map="104860165", gather = true, path="444" },
    { map="104071168", path="top" },
    { map="104071425", door="199" }
}

mine10 = {
    { map="104859139", gather = true, path="444" },
    { map="104071425", path="right" },
    { map="-5,5", path="right" },
    { map="-4,5", path="top" },
    { map="-4,4", path="top" },
    { map="-4,3", path="top" },
    { map="104072452", door="248" },
    { map="104858121", gather = true, path="348" },
    { map="104860169", gather = true, path="263" },
    { map="104861193", gather = true, path="248" }
}

mine11 = {
    { map="104862217", gather = true, path="369" },
    { map="104861193", gather = true, path="254" }
}

mine12 = {
    { map="104859145", gather = true, path="457" },
    { map="104858121", gather = true, path="507" },
    { map="104072452", path="bottom" },
    { map="104072451", path="bottom" },
    { map="104072450", path="bottom" },
    { map="104072449", path="bottom" },
    { map="104072192", path="bottom" },
    { map="104072193", path="bottom" },
    { map="104072194", path="right" },
    { map="104072706", path="right" },
    { map="104073218", door="246" },
    { map="88212751", path="right" },
    { map="0,8", path="top" },
    { map="0,7", path="top" },
    { map="0,6", path="top" },
    { map="0,5", path="top" },
    { map="0,4", path="left" },
    { map="-1,4", path="top" },
    { map="-1,3", path="top" },
    { map="-1,2", path="top" },
    { map="-1,1", path="top" },
    { map="-1,0", path="top" },
    { map="-1,-1", path="top" },
    { map="-1,-2", path="left" },
    { map="-2,-2", path="top" },
    { map="-2,-3", path="top" },
    { map="-2,-4", path="top" },
    { map="185862148", door="367" },
    { map="97255951", path="203" },
    { map="97256975", path="323" },
    { map="97257999", path="268" },
    { map="97260047", gather = true, path="379" }
}

mine13 = {
    { map="97261071", gather = true, path="248" },
    { map="97260047", gather = true, path="432" },
    { map="97257999", path="247" }
}

mine14 = {
    { map="97259023", gather = true, path="451" },
    { map="97257999", path="403" },
    { map="97256975", path="497" },
    { map="97255951", path="361" }
}

mine15 = {
    { map="0,0", path="zaap(88085249)" },
    { map="10,22", path="top" },
    { map="10,21", path="left" },
    { map="9,21", path="left" },
    { map="8,21", path="left" },
    { map="7,21", path="left" },
    { map="6,21", path="left" },
    { map="5,21", path="top" },
    { map="5,20", path="top" },
    { map="88082692", door="332" },
    { map="97260033", path="405" },
    { map="97261057", path="235" },
    { map="97255939", gather = true, path="446" },
    { map="97256963", gather = true, path="492" },
    { map="97257987", path="492" }
}

mine16 = {
    { map="97260035", gather = true, path="288" },
    { map="97257987", path="212" },
    { map="97261057", path="227" },
    { map="97260033", path="452" },
    { map="88082692", path="right" },
    { map="6,19", path="right" },
    { map="7,19", path="bottom" },
    { map="7,20", path="right" },
    { map="8,20", path="right" },
    { map="9,20", path="right" },
    { map="10,20", path="right" },
    { map="11,20", path="right" },
    { map="12,20", path="right" },
    { map="13,20", path="right" },
    { map="14,20", path="top" },
    { map="14,19", path="top" },
    { map="14,18", path="top" },
    { map="14,17", path="top" },
    { map="14,16", path="top" },
    { map="14,15", path="top" },
    { map="88087305", door="403" },
    { map="117440512", door="222" },
    { map="117441536", gather = true, door="167" },
    { map="117442560", gather = true, door="488" },
    { map="117443584", gather = true, door="221" },
    { map="117440514", gather = true, door="293" },
    { map="117441538", gather = true, door="251" },
    { map="117442562", gather = true, path="havenbag" },
    { map="0,0", path="zaap(164364304)" },
    { map="-20,-20", path="top" },
    { map="-20,-21", path="top" },
    { map="-20,-22", path="top" },
    { map="-20,-23", path="top" },
    { map="-20,-24", path="top" },
    { map="-20,-25", path="top" },
    { map="-20,-26", path="top" },
    { map="-20,-27", path="left" },
    { map="-21,-27", path="left" },
    { map="164496393", door="200" },
    { map="168036352", gather = true, door="242" },
    { map="168035328", door="188" },
    { map="168034304", door="184" },
    { map="168034306", gather = true, path="341" },
    { map="168034308", door="464" },
    { map="168034310", gather = true, door="493" },
    { map="168034312", gather = true, door="215" },
    { map="168167424", door="289" }
}

mine17 = {
    { map="164102664", path="havenbag" },
    { map="0,0", path="zaap(164364304)" },
    { map="-20,-20", path="bottom" },
    { map="-20,-19", path="bottom" },
    { map="-20,-18", path="bottom" },
    { map="-20,-17", path="bottom" },
    { map="-20,-16", path="left" },
    { map="-21,-16", path="bottom" },
    { map="-21,-15", path="bottom" },
    { map="-21,-14", path="left" },
    { map="-22,-14", path="left" },
    { map="-23,-14", path="left" },
    { map="-24,-14", path="bottom" },
    { map="-24,-13", path="bottom" },
    { map="-24,-12", path="left" },
    { map="-25,-12", path="left" },
    { map="-26,-12", path="left" },
    { map="-27,-12", path="left" },
    { map="-28,-12", path="left" },
    { map="-29,-12", path="bottom" },
    { map="-29,-11", path="bottom" },
    { map="100141313", door="198" },
    { map="123470337", gather = true, door="352" }
}

mine18 = {
    { map="123470339", gather = true, door="376" },
    { map="123470337", gather = true, door="163" },
    { map="123471361", gather = true, door="404" },
    { map="123472385", door="255" },
    { map="123472387", gather = true, door="491" }
}

mine19 = {
    { map="123471363", gather = true, door="173" },
    { map="123472387", gather = true, door="516" },
    { map="123472385", door="552" },
    { map="123471361", gather = true, door="535" },
    { map="123470337", gather = true, door="473" },
    { map="100141313", path="bottom" },
    { map="-29,-9", path="right" },
    { map="-28,-9", path="right" },
    { map="-27,-9", path="right" },
    { map="-26,-9", path="right" },
    { map="-25,-9", path="right" },
    { map="-24,-9", path="right" },
    { map="-23,-9", path="right" },
    { map="-22,-9", path="bottom" },
    { map="-22,-8", path="bottom" },
    { map="-22,-7", path="right" },
    { map="171707908", door="166" }
}

mine20 = {
    { map="178784264", gather = true, door="532" },
    { map="-21,-7", path="left" },
    { map="-22,-7", path="left" },
    { map="-23,-7", path="bottom" },
    { map="-23,-6", path="left" },
    { map="-24,-6", path="bottom" },
    { map="-24,-5", path="bottom" },
    { map="-24,-4", path="bottom" },
    { map="-24,-3", path="left" },
    { map="-25,-3", path="left" },
    { map="-26,-3", path="bottom" },
    { map="-26,-2", path="bottom" },
    { map="-26,-1", path="bottom" },
    { map="-26,0", path="bottom" },
    { map="-26,1", path="bottom" },
    { map="-26,2", path="bottom" },
    { map="-26,3", path="bottom" },
    { map="-26,4", path="bottom" },
    { map="171966987", door="397" },
    { map="178785286", gather = true, door="99" }
}

mine21 = {
    { map="178785288", gather = true, door="558" },
    { map="178785286", gather = true, door="559" },
    { map="-26,5", path="right" },
    { map="-25,5", path="bottom" },
    { map="-25,6", path="bottom" },
    { map="-25,7", path="bottom" },
    { map="-25,8", path="bottom" },
    { map="-25,9", path="bottom" },
    { map="-25,10", path="bottom" },
    { map="-25,11", path="bottom" },
    { map="-25,12", path="bottom" },
    { map="-25,13", path="bottom" },
    { map="-25,14", path="right" },
    { map="-24,14", path="right" },
    { map="-23,14", path="bottom" },
    { map="-23,15", path="bottom" },
    { map="-23,16", path="bottom" },
    { map="-23,17", path="right" },
    { map="-22,17", path="bottom" },
    { map="-22,18", path="bottom" },
    { map="-22,19", path="bottom" },
    { map="-22,20", path="left" },
    { map="-23,20", path="bottom" },
    { map="173018629", door="82" },
    { map="178784260", door="421" },
    { map="178783236", gather = true, door="309" },
    { map="178782214", gather = true, door="507" },
    { map="178782216", door="422" },
    { map="178782218", door="476" }
}

mine22 = {
    { map="178782220", gather = true, door="57" },
    { map="178782218", door="122" },
    { map="178782216", door="122" },
    { map="178782214", gather = true, door="150" },
    { map="178783236", gather = true, door="555" },
    { map="178783232", gather = true, door="406" }
}

mine23 = {
    { map="178782208", gather = true, door="138" },
    { map="178783232", gather = true, door="403" }
}

mine24 = {
    { map="178783234", gather = true, door="203" },
    { map="178783232", gather = true, door="200" },
    { map="178783236", gather = true, door="138" },
    { map="178784260", door="279" },
    { map="173018629", path="right" },
    { map="-22,21", path="right" },
    { map="-21,21", path="right" },
    { map="-20,21", path="right" },
    { map="-19,21", path="right" },
    { map="-18,21", path="right" },
    { map="172491782", door="373" },
    { map="178783240", gather = true, door="277" },
    { map="178783242", gather = true, path="havenbag" },
    { map="0,0", path="zaap(156240386)" },
    { map="-3,-42", path="right" },
    { map="-2,-42", path="right" },
    { map="156241410", door="149" },
    { map="133431302", door="179" },
    { map="133431300", gather = true, door="165" },
    { map="133431298", door="432" },
    { map="133432322", gather = true, door="348" },
    { map="133433346", gather = true, door="177"}
}

mine25 = {
    { map="133433344", gather = true, door="515" },
    { map="133433346", gather = true, door="338" },
    { map="133432322", gather = true, door="116" },
    { map="133432320", gather = true, door="134" },
    { map="133432578", gather = true, path="havenbag" },
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

mine25bis = {
    { map = "207621132", door = "478", gather = true},
    { map = "207620108", door = "438", gather = true},
    {map = "207619084", door = "452", gather = true}, -- Missing CellID || Not sure
    {map = "205260292", path = "left", gather = true},
    {map = "24,-22", path = "top", gather = true},
    {map = "24,-23", path = "top", gather = true},
    {map = "24,-24", path = "top"},
    {map = "24,-25", path = "left", gather = true},
    {map = "23,-25", path = "left", gather = true},
    {map = "22,-25", path = "top", gather = true},
    {map = "22,-26", path = "havenbag", gather = true},
}

mine26 = {
    { map="14639", gather = true, path="havenbag" },
    { map="0,0", path="zaap(173278210)" },
    { map="15,-59", path="top" },
    { map="15,-58", path="top" },
    { map="15,-60", path="right" },
    { map="173278720", door="133" },
    { map="173935364", gather = true, door="297" },
    { map="173936388", gather = true, door="450" },
    { map="173937412", gather = true, door="382" },
    { map="173938436", gather = true, door="367" },
    { map="173939460", gather = true, door="468" }
}

mine27 = {
    { map="173539332", path="havenbag" },
    { map="0,0", path="zaap(54172969)" },
    { map="-78,-41", path="top" },
    { map="-78,-42", path="top" },
    { map="-78,-43", path="top" },
    { map="-78,-44", path="top" },
    { map="-78,-45", path="right" },
    { map="-77,-45", path="right" },
    { map="-76,-45", path="top" },
    { map="-76,-46", path="top" },
    { map="-76,-47", path="right" },
    { map="-75,-47", path="right" },
    { map="-74,-47", path="right" },
    { map="-73,-47", path="right" },
    { map="-72,-47", path="right" },
    { map="-71,-47", path="right" },
    { map="-70,-47", path="right" },
    { map="-69,-47", path="right" },
    { map="-68,-47", path="right" },
    { map="-67,-47", path="top" },
    { map="-67,-48", path="top" },
    { map="-67,-49", path="top" },
    { map="-67,-50", path="right" },
    { map="-66,-50", path="right" },
    { map="-65,-50", path="right" },
    { map="-64,-50", path="right" },
    { map="-63,-50", path="top" },
    { map="-63,-51", path="top" },
    { map="-63,-52", path="right" },
    { map="-62,-52", path="right" },
    { map="-61,-52", path="top" },
    { map="-61,-53", path="top" },
    { map="-61,-54", path="right" },
    { map="-60,-54", path="top" },
    { map="-60,-55", path="right" },
    { map="-59,-55", path="top" },
    { map="-59,-56", path="right" },
    { map="-58,-56", path="top" },
    { map="-58,-57", path="top" },
    { map="-58,-58", path="right" },
    { map="-57,-58", path="right" },
    { map="-56,-58", path="top" },
    { map="-56,-59", path="top" },
    { map="-56,-60", path="top" },
    { map="-56,-61", path="top" },
    { map="-56,-62", path="top" },
    { map="-56,-63", path="right" },
    { map="-55,-63", path="top" },
    { map="54161216", door="261" },
    { map="57017859", path="359", gather = true }
}

mine28 = {
    { map="57017861", path="270", gather = true },
    { map="57017859", path="206", gather = true },
    { map="57016835", path="220", gather = true },
    { map="56885763", path="207", gather = true }
}

mine29 = {
    { map="56886787", path="396", gather = true },
    { map="56885763", path="436", gather = true },
    { map="57016835", path="257", gather = true }
}

selectedPath = mine25

GATHER={25,24,37,52,54,26,114,113,135}
OPEN_BAGS,goBank,goCraft,goSell = true,false,false,false

function bank()
    banque = true
    -- DEBUG MINES BWORK --
    -- MINE [-7,7] --
    while map:currentMap() == "-7,7" do
        return {
            {map = "104861191", path = "457"},
            {map = "104860167", path = "478"},
            {map = "104862215", path = "472"},
            {map = "104859143", path = "543"},
            {map = "104202753", path = "havenbag"},

        }
    end
    -- MINE [-6,5] --
    while map:currentMap() == "-6,5" do
        return {
            {map = "104859139", path = "444"},
            {map = "104071425", path = "havenbag"},
        }
    end
    -- MINE [-4,2] --
    while map:currentMap() == "-4,2" do
        return {
            {map = "104862217", path = "369"},
            {map = "104861193", path = "254"},
            {map = "104860169", path = "379"},
            {map = "104859145", path = "457"},
            {map = "104858121", path = "507"},
            {map = "104072452", path = "havenbag"},
        }
    end
    -- FIN DEBUG MINES BWORK --
    -- DEBUG MINE ROUTES ROCAILLEUSES --
    while map:currentMap() == "-22,-27" do
        return {
            {map = "168035328", door = "458"},
            {map = "168036352", door = "458"},
            {map = "164496393", path = "havenbag"},
        }
    end
    while map:currentMap() == "-24,-26" do
        return {
            {map = "168034304", door = "184"},
        }
    end
    while map:currentMap() == "-24,-27" do
        return {
            {map = "168034308", door = "464"},
            {map = "168034310", door = "493"},
            {map = "168034312", door = "215"},
            {map = "168034306", path = "341"},
        }
    end
    while map:currentMap() == "-27,-27" do
        return {
            {map = "168167424", door = "289"},
        }
    end
    -- FIN DEBUG MINE ROUTES ROCAILLEUSES --
    if selectedPath == mine2 or
        selectedPath == mine3 or
        selectedPath == mine4 or
        selectedPath == mine5 or
        selectedPath == mine6 or
        selectedPath == mine7 or
        selectedPath == mine8 or
        selectedPath == mine9 or
        selectedPath == mine10 or
        selectedPath == mine11 or
        selectedPath == mine12 or
        selectedPath == mine13 or
        selectedPath == mine14 then
            selectedPath = mine15
    elseif selectedPath == mine18 or
        selectedPath == mine19 or
        selectedPath == mine20 or
        selectedPath == mine21 or
        selectedPath == mine22 or
        selectedPath == mine23 then
            selectedPath = mine24
    elseif selectedPath == mine28 or
        selectedPath == mine29 then
            selectedPath = mine1
    end
    if doIhaveToSellMinerals then
        if map:currentMap()~="0,0"and map:currentMapId()~=144419 and map:currentMapId()~=142376 and map:currentMapId()~=144931 and map:currentMapId()~=8912911 then
            return { { map = map:currentMap(), path="havenbag" } }
        end
        return {
            {map="0,0",path="zaap(144419)"},
            {map="144419",path="zaapi(142376)"},
            {map="142376",custom=sellMinerals,path="zaapi(144931)"},
            {map="144931",door="175"},
            {map="8912911",custom=npcBank,path="409"}
        }
    end
    if doIhaveToCraftAlliage then
        if goCraft then
            return {
                {map="144931",path="zaapi(141346)"},
            {map="141346",door="332"},
            {map="13369863",custom=craftAlliage,path="401"}
            }
    elseif goSell then
        return {
            {map="141346",path="zaapi(142376)"},
            {map="142376",custom=sellAlliage, path="zaapi(144931)"}
        }
    else
        if map:currentMap()~="0,0" and map:currentMapId()~=144419 and map:currentMap()~="-26,35"and map:currentMapId()~=144931 and map:currentMapId()~=8912911 and map:currentMapId()~=141346 and map:currentMapId()~=144931 and map:currentMapId()~=13369863 then
            return {
                {map=map:currentMap(),path="havenbag"}
            }
        end
        return {
            {map="0,0",path="zaap(144419)"},
            {map="-26,35",path="left"},
            {map="144931",door="175"},
            {map="8912911",custom=npcBank,path="409"},
            {map="141346",path="zaapi(144931)"}
        }
        end
    end
    if not doIhaveToSellMinerals and not doIhaveToCraftAlliage then if map:currentMap()~="0,0"and map:currentMapId()~=144419 and map:currentMapId()~=144931 and map:currentMapId()~=8912911 then
        return {
            {map=map:currentMap(),path="havenbag"}
        }
    end
    return {
        {map="0,0",path="zaap(144419)"},
        {map="144419",path="zaapi(144931)"},
        {map="144931",door="175"},
        {map="8912911",custom=npcBank,path="409"}
    }
    end
end

function sellMinerals()
    npc:npc(515275,5)
    price1 = sale:getPriceItem(11110,3)
    price2 = sale:getPriceItem(7032,3)
    price3 = sale:getPriceItem(445,3)
    price4 = sale:getPriceItem(446,3)
    price5 = sale:getPriceItem(7033,3)
    price6 = sale:getPriceItem(350,3)
    price7 = sale:getPriceItem(313,3)
    price8 = sale:getPriceItem(444,3)
    while inventory:itemCount(11110)>=100 and sale:availableSpace()>0 do
        sale:sellItem(11110,100,(price1-1))
    end
    while inventory:itemCount(7032)>=100 and sale:availableSpace()>0 do
        sale:sellItem(7032,100,(price2-1))
    end
    while inventory:itemCount(445)>=100 and sale:availableSpace()>0 do
        sale:sellItem(445,100,(price3-1))
    end
    while inventory:itemCount(446)>=100 and sale:availableSpace()>0 do
        sale:sellItem(446,100,(price4-1))
    end
    while inventory:itemCount(7033)>=100 and sale:availableSpace()>0 do
        sale:sellItem(7033,100,(price5-1))
    end
    while inventory:itemCount(350)>=100 and sale:availableSpace()>0 do
        sale:sellItem(350,100,(price6-1))
    end
    while inventory:itemCount(313)>=100 and sale:availableSpace()>0 do
        sale:sellItem(313,100,(price7-1))
    end
    while inventory:itemCount(444)>=100 and sale:availableSpace()>0 do
        sale:sellItem(444,100,(price8-1))
    end
    global:printMessage("Actualisation des prix en Hôtel de Vente...")
    sale:updateAllItems()
    global:printMessage("Actualisation terminée !")
    global:printSuccess("Je vais déposer l'excédent de minerais en banque.")
    global:leaveDialog()
    goBank = false
    goCraft = false
    goSell = false
end


function sellAlliage()
    npc:npc(515275,5)
    if sale:availableSpace()>0 then
        if doArdonite then
            if sellAlliageByBatchesOf==10 then
                while sale:availableSpace()>0 and inventory:itemCount(12728)>=10 do
                    sale:sellItem(12728,10,sale:getPriceItem(12728,2)-1)
                end
            elseif sellAlliageByBatchesOf==1 then
                while sale:availableSpace()>0 and inventory:itemCount(12728)>=10 do
                    sale:sellItem(12728,1,sale:getPriceItem(12728,1)-1)
                end
            end
        elseif doPyrute then
            if sellAlliageByBatchesOf==10 then
                while sale:availableSpace()>0 and inventory:itemCount(7035)>=10 do
                    sale:sellItem(7035,10,sale:getPriceItem(7035,2)-1)
                end
            elseif sellAlliageByBatchesOf==1 then
                while sale:availableSpace()>0 and inventory:itemCount(7035)>=10 do
                    sale:sellItem(7035,1,sale:getPriceItem(7035,1)-1)
                end
            end
        elseif doRutile then
            if sellAlliageByBatchesOf==10 then
                while sale:availableSpace()>0 and inventory:itemCount(7036)>=10 do
                    sale:sellItem(7036,10,sale:getPriceItem(7036,2)-1)
                end
            elseif sellAlliageByBatchesOf==1 then
                while sale:availableSpace()>0 and inventory:itemCount(7036)>=1 do
                    sale:sellItem(7036,1,sale:getPriceItem(7036,1)-1)
                end
            end
        end
    else
        global:printError("Mon Hôtel de Vente des Ressources est complet.")
        global:printSuccess("Retour à la session de récoltes.")
        goBank = false
        goSell = false
        goCraft = false
        banque = false
    end
    saleSpot = sale:availableSpace()
    if saleSpot>0 then
        goBank = true
        goSell = false
        goCraft = false
    else
        global:printSuccess("Mon Hôtel de Vente des Ressources est complet.")
        global:printSuccess("Retour à la session de récoltes.")
        goBank = false
        goSell = false
        goCraft = false
        banque = false
    end
    global:leaveDialog()
end

function npcBank()
    npc:npcBank(-1)
    global:delay(1000)
    exchange:putAllItems()
    if doIhaveToSellMinerals then
        global:delay(500)
        global:delay(500)
        banque = false
        goCraft = false
        goBank = false
    elseif doIhaveToCraftAlliage then
        maxPods = inventory:podsMax()*95/100
        doableCraftByPods=maxPods/(8*5*10)
        if doArdonite then
            temp_doableCraftByRessources = math.min(exchange:storageItemQuantity(11110),exchange:storageItemQuantity(7032),exchange:storageItemQuantity(445),exchange:storageItemQuantity(446),exchange:storageItemQuantity(7033),exchange:storageItemQuantity(350),exchange:storageItemQuantity(313),exchange:storageItemQuantity(444))
            doableCraftByRessources = temp_doableCraftByRessources/10-temp_doableCraftByRessources%10
            doableCraft = math.min(doableCraftByRessources,doableCraftByPods)
            if doableCraft >= 3 then
                exchange:getItem(11110,doableCraft*10)
                exchange:getItem(7032,doableCraft*10)
                exchange:getItem(445,doableCraft*10)
                exchange:getItem(446,doableCraft*10)
                exchange:getItem(7033,doableCraft*10)
                exchange:getItem(350,doableCraft*10)
                exchange:getItem(313,doableCraft*10)
                exchange:getItem(444,doableCraft*10)
                global:delay(500)
                goCraft = true
                goBank = false
                goSell = false
            else
                goCraft = false
                goBank = false
                goSell = false
                banque = false
            end
        elseif doPyrute then
            temp_doableCraftByRessources = math.min(exchange:storageItemQuantity(443),exchange:storageItemQuantity(7032),exchange:storageItemQuantity(445),exchange:storageItemQuantity(446),exchange:storageItemQuantity(7033),exchange:storageItemQuantity(350),exchange:storageItemQuantity(313),exchange:storageItemQuantity(444))
            doableCraftByRessources = temp_doableCraftByRessources/10-temp_doableCraftByRessources%10
            doableCraft = math.min(doableCraftByRessources,doableCraftByPods)
            if doableCraft >= 3 then
                exchange:getItem(443,doableCraft*10)
                exchange:getItem(7032,doableCraft*10)
                exchange:getItem(445,doableCraft*10)
                exchange:getItem(446,doableCraft*10)
                exchange:getItem(7033,doableCraft*10)
                exchange:getItem(350,doableCraft*10)
                exchange:getItem(313,doableCraft*10)
                exchange:getItem(444,doableCraft*10)
                global:delay(500)
                goCraft = true
                goBank = false
                goSell = false
            else
                goCraft = false
                goBank = false
                goSell = false
                banque = false
            end
        elseif doRutile then
            temp_doableCraftByRessources = math.min(exchange:storageItemQuantity(443),exchange:storageItemQuantity(445), exchange:storageItemQuantity(446),exchange:storageItemQuantity(7032),exchange:storageItemQuantity(350),exchange:storageItemQuantity(313),exchange:storageItemQuantity(444))
            doableCraftByRessources = temp_doableCraftByRessources/10-temp_doableCraftByRessources%10
            doableCraft = math.min(doableCraftByRessources,doableCraftByPods)
            if doableCraft >= 3 then
                exchange:getItem(443,doableCraft*10)
                exchange:getItem(7032,doableCraft*10)
                exchange:getItem(445,doableCraft*10)
                exchange:getItem(446,doableCraft*10)
                exchange:getItem(350,doableCraft*10)
                exchange:getItem(313,doableCraft*10)
                exchange:getItem(444,doableCraft*10)
                global:delay(500)
                goCraft = true
                goBank = false
                goSell = false
            else
                goCraft = false
                goBank = false
                goSell = false
                banque = false
            end
        end
    elseif not doIhaveToSellAlliage and not doIhaveToSellMinerals and not doIhaveToCraftAlliage then
        banque = false
        goCraft = false
        goBank = false
    end
    global:leaveDialog()
    return map:moveToCell(424)
end

function craftAlliage()
    map:door(276)
    global:delay(750)
    if doArdonite then
        craft:putItem(11110,10)
        craft:putItem(7033,10)
    elseif doPyrute then
        craft:putItem(443,10)
        craft:putItem(7033,10)
    end
    craft:putItem(7032,10)
    craft:putItem(445,10)
    craft:putItem(446,10)
    if doRutile then
        craft:putItem(443,10)
    end
    craft:putItem(350,10)
    craft:putItem(313,10)
    craft:putItem(444,10)
    craft:changeQuantityToCraft(doableCraft)
    craft:ready()
    global:delay(550)
    global:leaveDialog()
    if doIhaveToSellAlliage then
        goSell = true
        goCraft = false
        goBank = false
    else
        goSell = false
        goCraft = false
        goBank = true
    end
end

welT = true

function move()
    wT()
    if banque then
        return bank()
    end
    for a,b in pairs(selectPath()) do
        if b.map == map:currentMap() or b.map == tostring(map:currentMapId()) then
            return selectedPath
        end
    end
    return lost()
end

function lost()
    return {
        { map = map:currentMap(), path="havenbag"}
    }
end

function wT()
    if welT then
        welT = false
        if doIhaveToSellMinerals and doIhaveToCraftAlliage or doIhaveToSellMinerals and doIhaveToSellAlliage then
            global:printError("La combinaison d'options choisies est impossible.")
            global:printError("Impossible de vendre des minerais et produire/vendre d'alliages en même temps")
            global:finishScript()
        end
        if doIhaveToSellMinerals then
            global:printSuccess("Choix de l'utilisateur : Vente de Minerais activée.")
        elseif doIhaveToCraftAlliage then
            if doArdonite and doPyrute then
                global:printError("Impossible de produire à la fois des Pyrutes et des Ardonites.")
                global:printError("Arrêt du script.")
                global:finishScript()
            elseif doArdonite then
                global:printSuccess("Choix de l'utilisateur : Production d'Ardonites activée.")
            elseif doPyrute then
                global:printSuccess("Choix de l'utilisateur : Production de Pyrutes activée.")
            elseif doRutile then
                global:printSuccess("Choix de l'utilisateur : Production de Rutile activée.")
            end
            if doIhaveToSellAlliage then
                global:printSuccess("Choix de l'utilisateur : Mise en vente automatique des alliages activée.")
            else
                global:printError("Choix de l'utilisateur : Mise en vente automatique des alliages désactivée.")
            end
        end
        if not doIhaveToSellAlliage and not doIhaveToCraftAlliage and not doIhaveToSellMinerals then
            global:printError("Aucune option n'a été choisie par l'utilisateur.")
            global:printError("Je vais me contenter de récolter les minerais sans vendre ni produire d'alliages.")
        end
    end
end

function selectPath()
    if map:currentMapId() == 88212746 then
        selectedPath = mine1
    elseif map:currentMapId() == 97261067 then
        selectedPath = mine2
    elseif map:currentMapId() == 97259017 then
        selectedPath = mine3
    elseif map:currentMapId() == 97260041 then
        selectedPath = mine4
    elseif map:currentMapId() == 97256969 then
        selectedPath = mine5
    elseif map:currentMapId() == 97261061 then
        selectedPath = mine6
    elseif map:currentMapId() == 104861191 then
        selectedPath = mine7
    elseif map:currentMapId() == 104862215 then
        selectedPath = mine8
    elseif map:currentMapId() == 104862213 then
        selectedPath = mine9
    elseif map:currentMapId() == 104859139 then
        selectedPath = mine10
    elseif map:currentMapId() == 104862217 then
        selectedPath = mine11
    elseif map:currentMapId() == 104859145 then
        selectedPath = mine12
    elseif map:currentMapId() == 97261071 then
        selectedPath = mine13
    elseif map:currentMapId() == 97259023 then
        selectedPath = mine14
    elseif map:currentMapId() == 97255951 and selectedPath == mine14 then
        selectedPath = mine15
    elseif map:currentMapId() == 97260035 then
        selectedPath = mine16
    elseif map:currentMapId() == 164102664 then
        selectedPath = mine17
    elseif map:currentMapId() == 123470339 then
        selectedPath = mine18
    elseif map:currentMapId() == 123471363 then
        selectedPath = mine19
    elseif map:currentMapId() == 178784264 then
        selectedPath = mine20
    elseif map:currentMapId() == 178785288 then
        selectedPath = mine21
    elseif map:currentMapId() == 178782220 then
        selectedPath = mine22
    elseif map:currentMapId() == 178782208 then
        selectedPath = mine23
    elseif map:currentMapId() == 178783234 then
        selectedPath = mine24
    elseif map:currentMapId() == 133433344 then
        selectedPath = mine25
    elseif map:currentMapId() == 207621132 then
        selectedPath = mine25bis
    elseif map:currentMap() == "22,-26" then
        selectedPath = mine26
    elseif map:currentMapId() == 173539332 then
        selectedPath = mine27
    elseif map:currentMapId() == 57017861 then
        selectedPath = mine28
    elseif map:currentMapId() == 56886787 then
        selectedPath = mine29
    elseif map:currentMapId() == 57016837 then
        selectedPath = mine1
    elseif map:currentMapId() == 144931 then
        selectedPath = mine1
    elseif map:currentMapId() == 8912911 then
        selectedPath = mine1
    end
    return selectedPath
end

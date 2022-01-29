--[[---------------------------------------------------------
	Prérequis :
	- Enclos vide , tout l'elevage en etable 
	- 5 objets minimum par type
	- 2 attitudes 
	- connecter le bot sur la map ou se trouve l'enclos avant de le lancer
	
	----------------  A SAVOIR  ------------------
	
	Lien :  https://wiki-dofus.eu/w/Dragodindes
	
	ACHETER DES DRAGODINDE DE PUR RACE #Hitler  ( http://www.catsthatlooklikehitler.com/cgi-bin/seigmiaow.pl? ) 
	
	----------------  A SAVOIR  ------------------
	On commence sans le mode xp pour rendre les dd montables. Mode XP FALSE	
	
	Quand elles sont montables et au max caractéristique on les fais xp jusqu'au lvl 5.
	
	Ensuite surement la fécondation, on verra ... #salope
-----------------------------------------------------------]]

-- ############ PARAMETRAGE UTILISATEUR ############
-- AI_FILE = ".lua"

MODE_FECONDATION = false -- ARRETE LE SCRIPT UNE FOIS LES FECONDATIONS FAITES

-- Partie XP des Dragodindes ,pensez a bien sauvegarder le zaap de la zone
MODE_XP_DD_BONTA = false
MODE_XP_DD_BRAKMAR = false
TP_MARIAGE = false -- Une mule devra etre placer devant l'enclos de destination


--############# PARTIE PARAMETRAGE ENCLOS NE MODIFIER QUE SI VOUS SAVEZ CE QUE VOUS FAITES ##############
MODE_DEBUG = false -- A activer uniquement si necessaire
RANDOM_PRINT = true
USAGE_ATTITUDE = false -- Permet d'activer ou desactiver l'usage des attitudes
LIMIT_PADDOCK = 10 -- Taille enclos 10 par default pour les enclos publics , mettre 5 si c'est l'enclos d'astrub
enclosprive = { 258, 271, 299, 300, 287 }
enclosprivecell = 231
REFRESH_OBJECT = true
ELEVAGE_ENCLOS_PRIVE_SPECIAL_MAP = 76024322
ELEVAGE_ENCLOS_PRIVE_SPECIAL_ID = 259

-- END-IGNORE --

-- BEGIN-ENCODE --
-- ############ PARTIE DECLARATION DE VARIABLES ( NE PAS MODIFIER) ############
ID_CARESSEUR = 1 
ID_FOUDROYEUR = 2
ID_DRAGOFESSE = 3
ID_ABREUVOIR = 4
ID_BAFFEUR = 5 
ID_MANGEOIRE = 6
ID_ATTITUDE_REPOUSSE = -1
ID_ATTITUDE_ATTIRE = -1


objectdictionary =
 {
    {type = ID_CARESSEUR,id = { 
      7622,7623,7624,7628,7733,7734,7735,7736,7737,7738,7739,7740,7741,
      7742,7743,7744,7745,7746,14758,14759,14760,14761,14762,14763,14764,
      14765,14766,14767,14768,14769,14770,14771,14793,15707,16289,17416,
      17739,19930,21519
    }},
    {type = ID_FOUDROYEUR,id = {
        7775,7776,7777,7778,7779,7780,7781,7782,7783,7784,7785,7786,7787,
        7788,7789,7790,7791,7792,7793,7794,7795,7796,7797,7798,14719,14721,
        14722,14723,14734,14724,14725,14726,14767,14728,14729,14730,14731,14785,
        14790,14276,15706,17738,19922,19923,19924


    }},
    {type = ID_DRAGOFESSE, id = {
        7634,7635,7637,7636,7691,7692,7693,7694,7695,7696,7697,7698,7699,7700,
        14744,14745,14746,14747,14748,14749,14750,14751,14752,14753,14754,14755,
        14756,14757,14787,14792,14976,15275,15363,16290,19928,1992,21516


    }},
    {type = ID_ABREUVOIR,id = {
        7590,7591,7592,7593,7594,7595,7596,7597,7598,7599,7600,7601,7602,7603,7604,
        7605,7673,7674,7675,7676,7677,7678,7679,7682,14707,14708,14709,14710,14711,
        14712,14713,14714,14715,14716,14717,14718,14789,15709,16287,19917,19918,19919,
        19927,22178


    }},
    {type = ID_BAFFEUR,id = {
        7625,7626,7627,7629,7755,7756,7757,7758,7759,7760,7761,7762,7763,
        7764,7765,7766,7767,7768,7769,7770,7771,7772,7773,7774,14732,14733,
        14734,14735,14736,14737,14738,14739,14740,14741,14742,14743,14786,
        14791,15096,15277,15708,16291,17038,19925,19926,22179


    }},
    {type = ID_MANGEOIRE,id = {
        7606,7607,7608,7609,7611,7612,7613,7614,7615,7616,7617,7618,7619,
        7620,7621,7683,7684,7685,7686,7687,7688,7689,7690,14772,14773,14775,
        14776,14777,14778,14779,14781,14782,14783,14783,14784,14788,14794,16288,
        17740,19931,19932,22176,21518


    }}
}

SKILL_UID_DOOR = -1
bool = true
START = false
COUNT = 0
COUNT_VERIF = 0
CELL_PING = 0
ELEM_ID = -1
ELEVAGE_BONTA = false
ELEVAGE_ASTRUB = false
ELEVAGE_BRAKMAR = false
INTERFACE_OPEN = false
--COUNT_LOVE = 0
REFRESH_MESSAGE = 3000
--COUNT_STAMINA = 0
--COUNT_MATURITY = 0
AFTER_CRASH = true
FIRST_ITERATION = 0
FIRST_ITERATION_VERIF = 0
ACTUAL_LOVE = -1
ACTUAL_MATURITY = -1
ACTUAL_MATURITYMAX = -1
ACTUAL_MESSAGE = -1
ACTUAL_STAMINA = -1
ACTUAL_SERENITY = -1
ACTUAL_LIMIT = -1
ACTUAL_ID = -1
ACTUAL_TYPE = -1
ACTUAL_FECONDATION = -1
ACTUAL_ENERGYMAX = -1
ACTUAL_ENERGY = -1
READ_COUNT = true
TO_REFRESH = false
TO_REMOVE = false
TO_UPDATE = false
TO_REMOVE_MESSAGE = -1
STOP_SCRIPT = false
REFRESHED_MAP = false
FIRST_USE = true
ACTUAL_UID_ACTUALISATION = -1
ACTUALISATION_UID_CRASH = false
FIRST_CHECK = false
OK_EMOTE = true
READ_UPDATE = false
OK_OPEN = true
OKEMOTE = false
OLD_MESSAGE = -1
ON_PLACE = false
OK_MOUNT = false

objets = {
    {id = ID_CARESSEUR, qtt = 0, uid = {}},
    {id = ID_FOUDROYEUR, qtt = 0, uid = {}},
    {id = ID_DRAGOFESSE, qtt = 0, uid = {}},
    {id = ID_ABREUVOIR, qtt = 0, uid = {}},
    {id = ID_BAFFEUR, qtt = 0, uid = {}},
    {id = ID_MANGEOIRE, qtt = 0, uid = {}}
}
uidcaresseur = {}
uidfoudroyeur = {}
uiddragofesse = {}
uidabreuvoir = {}
uidbaffeur = {}
uidmangeoire = {}
contextual = {}
mountid = {}
feconded = {}
enclosbonta = {217, 231, 259, 260, 246}
enclosbrakmar = {327, 342, 343, 315, 300}
enclosastrub = {342, 356, 357, 329, 315}
bontacell = 218
brakmarcell = 299
astrubcell = 314
counter = 0
OK_UPDATE = false
actualcell = -1
mount = -1
FIRST_TRY = true

-- ############ PARTIE FONCTIONS ( NE PAS MODIFIER) ############

function move()
    if(MODE_XP_DD_BONTA) then
        ELEVAGE_BONTA = true
        actualcell = bontacell
        AFTER_CRASH = false
    
        if map:currentMapId() == 150328 then
            global:printSuccess("Enclos bonta")
           
            if (map:onCell(219) == false) then
                map:moveToCell(219)
                global:delay(1000)
            end
            
            return {
                
                {map = "150328", custom = paddock},
            }

        else
            if(TP_MARIAGE) then
                return {
                    { map = "150470656", fight = true},
                    { map = "150471680", custom = echelle},
                    { map = "-26,35", custom = tpmariage},
                }
            else
                if map:currentMapId() == 150470656 then
                    global:delay(2000)
                end

            return {
                    { map = "150470656", fight = true},
                    { map = "150471680", custom = echelle},
                    { map = "-32,-56", path = "zaapi(149816)"},
                    { map = "149816", path = "left"},
                    
                    
            }
        
            end
        end
    elseif(MODE_XP_DD_BRAKMAR) then
        AFTER_CRASH = false
        ELEVAGE_BRAKMAR = true
        actualcell = brakmarcell
    
        if map:currentMapId() == 147493 then
            global:printSuccess("Enclos brakmar")
          
            if (map:onCell(271) == false) then
                map:moveToCell(271)
                global:delay(1000)
            end
            --global:printError("02")
            return {
                
                {map = "147493", custom = paddock},
            }


        else

            if(TP_MARIAGE) then
                return {
                    { map = "150470656", fight = true},
                    { map = "150471680", custom = echelle},
                    { map = "-26,35", custom = tpmariage},
                }
            else
                if map:currentMapId() == 150470656 then
                    global:delay(1000)
                end

            return {
                    { map = "150470656", forcefight = true},
                    { map = "150471680", custom = echelle},
                    { map = "-26,35", path = "zaapi(147493)"},
                    
                    
                    
            }
            
        end
    end
        


    end
    if( not MODE_XP_DD_BONTA and not MODE_XP_DD_BRAKMAR) then
        attitudedetect()
        if(developer:suspendScriptUntil(GameDataPaddockObjectListAddMessage, 3000,false) == false) then
            global:printError("[Debug] Reconnexion apres crash non détéctée")
            end

        if( map:currentMapId() == 150328) then
            ELEVAGE_BONTA = true
            global:printSuccess("Elevage a Bonta")
        elseif (map:currentMapId()  == 188744199 ) then
            ELEVAGE_ASTRUB = true
            global:printSuccess("Elevage a Astrub")
        elseif(map:currentMapId()  == 147493) then
            ELEVAGE_BRAKMAR = true
            global:printSuccess("Elevage a Brakmar")
        else
            ELEVAGE_ENCLOS_PRIVE = true 
            global:printSuccess("Elevage en enclos privé")
        end

        if ELEVAGE_BONTA then
		global:printSuccess("278")
            actualcell = bontacell
            return {
                {map = "150328", custom = verif}
            }
        elseif ELEVAGE_ASTRUB then
            emptytable(enclosbonta)
            enclosbonta = {table.unpack(enclosastrub)}
            actualcell = astrubcell
            return {
                {map = "188744199", custom = verif}
            }
        elseif ELEVAGE_BRAKMAR then
            emptytable(enclosbonta)
            enclosbonta = {table.unpack(enclosbrakmar)}
            actualcell = brakmarcell
            return {
                {map = "147493", custom = verif}
            }
        elseif ELEVAGE_ENCLOS_PRIVE then
            emptytable(enclosbonta)
            enclosbonta = {table.unpack(enclosprive)}
            actualcell = enclosprivecell
            return {
                {map = tostring(map:currentMapId()), custom = verif}
            }
        end
    end
end

function messagesRegistering()
    
    developer:registerMessage("InteractiveUsedMessage", refresh)
    developer:registerMessage("ObjectAddedMessage", refreshuid)
    developer:registerMessage("ObjectQuantityMessage", refreshuid2)
    developer:registerMessage("GameDataPaddockObjectRemoveMessage", refreshcell)
    developer:registerMessage("ExchangeStartOkMountMessage", mountupdateinfo)
    developer:registerMessage("GameDataPaddockObjectAddMessage", objectinfo)
    developer:registerMessage("InteractiveUseErrorMessage", closeinterface)
    developer:registerMessage("GameDataPaddockObjectListAddMessage", listtoremove)
    developer:registerMessage("ExchangeLeaveMessage", mountupdateinfo)
    developer:registerMessage("ExchangeMountsStableBornAddMessage", bornmount)
    developer:registerMessage("MountDataMessage", refreshinfo)
    developer:registerMessage("GameRolePlayShowActorMessage", contextualid)
    developer:registerMessage("ObjectDeletedMessage", deletedobject)
    developer:registerMessage("MountEmoteIconUsedOkMessage", okreact)
    developer:registerMessage("GameMapMovementMessage", fightcheck)
end

-- function messagesRegistering()
    
    -- developer:registerMessage(5745, refresh)
    -- developer:registerMessage("ObjectAddedMessage", refreshuid)
    -- developer:registerMessage(3023, refreshuid2)
    -- developer:registerMessage(5993, refreshcell)
    -- developer:registerMessage("ExchangeStartOkMountMessage", mountupdateinfo)
    -- developer:registerMessage(5990, objectinfo)
    -- developer:registerMessage(6384, closeinterface)
    -- developer:registerMessage(5992, listtoremove)
    -- developer:registerMessage(5628, mountupdateinfo)
    -- developer:registerMessage(6557, bornmount)
    -- developer:registerMessage("MountDataMessage", refreshinfo)
    -- developer:registerMessage("GameRolePlayShowActorMessage", contextualid)
    -- developer:registerMessage(3024, deletedobject)
    -- developer:registerMessage(5978, okreact)
    -- developer:registerMessage(951, fightcheck)
-- end



function paddock()
	-- global:printError("paddock()")
    READ_COUNT = true
	
   global:printError("001")
    openinterface()
    -- global:finishScript()
   global:printError("002")
   -- developer:registerMessage(5991, choppedd) stabledMountsDescription
   -- developer:registerMessage("stabledMountsDescription", choppedd)
    developer:registerMessage("ExchangeStartOkMountWithOutPaddockMessage", choppedd)
   global:printError("003")
   developer:suspendScriptUntil("ExchangeStartOkMountWithOutPaddockMessage", 2000,false)
	global:leaveDialog()
   


	global:printError("004")
    sifflet()
    inventory:useItem(10973)
    
    
    
end

function fightcheck(message)
	-- global:printError("fightcheck()")
   if map:currentMapId() == 150470656 then
        global:printSuccess("[Info] Les monstres sont en mouvement , nouvelle tentative de lancement de combat")
        actorId = message.actorId
        map:moveToCell(message.keyMovements[1])
        global:delay(200)
        monMessage = developer:createMessage("GameRolePlayAttackMonsterRequestMessage")
        monMessage.monsterGroupId = actorId
        developer:sendMessage(monMessage)
    end
end

function echelle()
    map:door(149)

end

function sifflet()
    global:printSuccess("[Info] On monte sur la monture")
    monMessage = developer:createMessage("MountToggleRidingRequestMessage")
    developer:sendMessage(monMessage)
end

function tpmariage(message) 
    global:printSuccess("[Info] On se teleporte au conjoint")
    monMessage = developer:createMessage("FriendSpouseJoinRequestMessage")
    developer:sendMessage(monMessage)
end

function choppedd(message)
	-- global:printError("choppedd()")

 
     if (READ_COUNT == true) then
        counter = 0
        if(mount ~= -1) then
             monMessage = developer:createMessage("ExchangeHandleMountsMessage")
             --global:printError("2")
             monMessage.actionType = 1
            -- global:printError("3")
             monMessage.ridesId = {mount}
            -- global:printError("4")
             developer:sendMessage(monMessage)
            global:delay(200)
        end
          global:printSuccess("[Info] On équipe une monture inférieur au niveau 5")
         for _, value in pairs(message.stabledMountsDescription) do
            if value.level < 5 then
				 -- global:printSuccess("395")
                counter = -1
                mount = value.id
                local message = developer:createMessage("ExchangeHandleMountsMessage") -- je crée le message
				global:printSuccess("399")
                message.actionType = 2 -- je définie actionType du message = 2
                message.ridesId = {value.id} -- je crée le tableau ridesId
                developer:sendMessage(message) -- j'envoie le message
                global:leaveDialog()
				global:printSuccess("405")
                global:printSuccess("[Info] 0")
                mount:setXpRatio(90)
                global:printSuccess("[Info] 1")
                break -- je quitte le for
            end
         end

          if counter == 0 then
            global:printSuccess("[Info] Toutes les dragodindes ont été up")
            global:finishScript() 
        end

        READ_COUNT = false
    end
   
end



function read(message)
	-- global:printError("read()")

    if (READ_COUNT == true) then
        REFRESH_MESSAGE = message


        READ_COUNT = false
    end

    --global:delay(3000)

    --removeobject(217)
end



function contextualid(message)

	-- global:printError("contextualid()")

   -- local function verifuserdata()
     --   if (message.informations.ownerName) then
      --      return
      --  end
  --  end

    if (OK_MOUNT == false) then
  --  global:printSuccess("Contextual "..COMPTEUR_CONTEXTUAL)
    return
  end

   local function verifuserdata()
        if (message.informations.ownerName) then
            return
        end
    end

    if (OK_MOUNT and  pcall(verifuserdata)) then
        id = message.informations.contextualId
        table.insert(contextual, id)
        global.printSuccess("[Info] ID contextuelle enrengistré : "..id)
        OK_MOUNT = false
    end
end



function listtoremove(message)
	-- global:printError("listtoremove()")

    if(map:currentMapId() == 149816) then
        return
    end
    if(AFTER_CRASH == true) then

    global:printSuccess("Reconnexion apres une deconnexion")
    attitudedetect()
    if( map:currentMapId() == 150328) then
        ELEVAGE_BONTA = true
        actualcell = bontacell
        global:printSuccess("Elevage a Bonta")
        -- local message = developer:historicalMessage(226)[1]
		local message = developer:historicalMessage(("MapComplementaryInformationsDataMessage"))[1]
        SKILL_UID_DOOR = message.integereractiveElements[3].enabledSkills[1].skillInstanceUid
        ELEM_ID = message.integereractiveElements[3].elementId 
        if (map:onCell(219) == false) then
        map:moveToCell(219)
        global:delay(4000)
    end
    elseif (map:currentMapId()  == 188744199 ) then
         -- local message = developer:historicalMessage(226)[1]
		 local message = developer:historicalMessage(("MapComplementaryInformationsDataMessage"))[1]
        SKILL_UID_DOOR = message.integereractiveElements[2].enabledSkills[1].skillInstanceUid
        ELEM_ID = message.integereractiveElements[2].elementId
        ELEVAGE_ASTRUB = true
        emptytable(enclosbonta)
        enclosbonta = {table.unpack(enclosastrub)}
        actualcell = astrubcell
        global:printSuccess("Elevage a Astrub")
        if (map:onCell(299) == false) then
            map:moveToCell(299)
            global:delay(4000)
        end

    elseif(map:currentMapId()  == 147493) then
        -- local message = developer:historicalMessage(226)[1]
		 local message = developer:historicalMessage(("MapComplementaryInformationsDataMessage"))[1]
        SKILL_UID_DOOR = message.integereractiveElements[1].enabledSkills[1].skillInstanceUid
        ELEM_ID = message.integereractiveElements[1].elementId
        emptytable(enclosbonta)
        enclosbonta = {table.unpack(enclosbrakmar)}
        actualcell = brakmarcell
        ELEVAGE_BRAKMAR = true
        global:printSuccess("Elevage a Brakmar")
        if (map:onCell(271) == false) then
        map:moveToCell(271)
        global:delay(4000)
    end

    else
        ELEVAGE_ENCLOS_PRIVE = true 
        global:printSuccess("Elevage en enclos privé")
        emptytable(enclosbonta)
        enclosbonta = {table.unpack(enclosprive)}
        actualcell = enclosprivecell
    end


    
    


	global:printSuccess("528")
    AFTER_CRASH = false
    TO_REMOVE = true
    TO_REMOVE_MESSAGE = message
    REFRESHED_MAP = false
    listobjectsaftercrash(TO_REMOVE_MESSAGE)
    TO_REMOVE = false
end
end

function deletedobject(message)
    global:printError("[Info] Object supprimer de l'inventaire")
end

function okreact(message)
	-- global:printError("okreact()")

    if(RANDOM_PRINT) then
        local keygeneration2 = math.random(1,40)
        if(keygeneration2 == 28) then
         global:printSuccess("[Info] La Dragodinde a réagi a l'attitude.")
        end
    else
         global:printSuccess("[Info] La Dragodinde a réagi a l'attitude.")
    end
    if OKEMOTE then
        OKEMOTE = false
    else
        OKEMOTE = true
    end
    
end

function fecondation(msg)
		-- global:printError("fecondation()")

    toplaceobjectbonta(6)
    local count_femelle = 0
    local count_male = 0
    local male = {}
    local femelle = {}

    for i, v in ipairs(msg.stabledMountsDescription) do
        if(v.sex == false and v.isFecondationReady == true) then
            count_male = count_male +1
            table.insert(male, v.id)
        elseif(v.sex == true and v.isFecondationReady == true) then
            count_femelle = count_femelle +1
            table.insert(femelle, v.id)
        end

     end
    global:printMessage("Vous avez "..count_male.." males et "..count_femelle.." femelles disponible")

    for i=1,math.min(count_male,count_femelle) do
       
        openinterface()
        toplacemount(male[i])
        global:delay(300)
        toplacemount(femelle[i])
        global:delay(300)
        ACTUAL_LIMIT = -1
        closeinterface()
        
        index = #contextual
         repeat
            monMessage = developer:createMessage("MountInformationInPaddockRequestMessage")
            monMessage.mapRideId = contextual[index]
            developer:sendMessage(monMessage)

            developer:suspendScriptUntil("MountDataMessage", 10000,false)
        until ACTUAL_LIMIT ~= -1

         repeat
            monMessage = developer:createMessage("MountInformationInPaddockRequestMessage")
            monMessage.mapRideId = contextual[index]
            developer:sendMessage(monMessage)
            local x

             x = developer:suspendScriptUntil("MountDataMessage", 5000,false)
            if (x and OKEMOTE) then
                sendemote(ID_ATTITUDE_ATTIRE)
                OKEMOTE = false
            elseif (OKEMOTE == false) then
                sendemote(ID_ATTITUDE_REPOUSSE)
             end


        until ACTUAL_FECONDATION == false
       global:printMessage("Le couple numero : "..i.." s'est reproduit")
       toplacemountinstable(male[i])
       toplacemountinstable(femelle[i])
    end

    global:printError("[Debug] Retrait objet numéro  " .. objets[6].uid[1] .. " a la cellule " .. enclosbonta[1])
    removeobject(enclosbonta[1])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
    global:printError("[Debug] Retrait objet numéro  " .. objets[6].uid[2] .. " a la cellule " .. enclosbonta[2])
    removeobject(enclosbonta[2])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
    global:printError("[Debug] Retrait objet numéro  " .. objets[6].uid[3] .. " a la cellule " .. enclosbonta[3])
    removeobject(enclosbonta[3])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
    global:printError("[Debug] Retrait objet numéro  " .. objets[6].uid[4] .. " a la cellule " .. enclosbonta[4])
    removeobject(enclosbonta[4])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
    global:printError("[Debug] Retrait objet numéro  " .. objets[6].uid[5] .. " a la cellule " .. enclosbonta[5])
    removeobject(enclosbonta[5])
    emptytable(contextual)

    global:finishScript()
end

function verif()
		-- global:printError("verif()")

    bool = false
    AFTER_CRASH = false
	global:printError("640")
 
    if (ELEVAGE_BONTA) then
		global:printError("685")
        local message = developer:historicalMessage("MapComplementaryInformationsDataMessage")[1]
        SKILL_UID_DOOR = message.integereractiveElements[3].enabledSkills[1].skillInstanceUid
        ELEM_ID = message.integereractiveElements[3].elementId       
    if (map:onCell(219) == false) then
	global:printSuccess("E647")
        map:moveToCell(219)
        global:delay(4000)
		-- add
	elseif (map:onCell(219) == true) then
		global:printSuccess("E53")
	
	
    end
    elseif (ELEVAGE_ASTRUB) then
        -- local message = developer:historicalMessage(226)[1]
		 local message = developer:historicalMessage(("MapComplementaryInformationsDataMessage"))[1]
        SKILL_UID_DOOR = message.integereractiveElements[2].enabledSkills[1].skillInstanceUid
        ELEM_ID = message.integereractiveElements[2].elementId
        if (map:onCell(299) == false) then
            map:moveToCell(299)
            global:delay(4000)
        end
    elseif (ELEVAGE_BRAKMAR) then
        -- local message = developer:historicalMessage(226)[1]
		 local message = developer:historicalMessage(("MapComplementaryInformationsDataMessage"))[1]
        SKILL_UID_DOOR = message.integereractiveElements[1].enabledSkills[1].skillInstanceUid
        ELEM_ID = message.integereractiveElements[1].elementId
    if (map:onCell(271) == false) then
        map:moveToCell(271)
        global:delay(4000)
    end
    end

    --wait(3)
    if (TO_REMOVE == true) then
        REFRESHED_MAP = true
    else
        listobjects()
    end
    TO_REMOVE = false




    READ_COUNT = true
    openinterface()
    developer:registerMessage("ExchangeStartOkMountWithOutPaddockMessage", read)
    developer:suspendScriptUntil("ExchangeStartOkMountWithOutPaddockMessage", 2000,false)
    if(ELEVAGE_ENCLOS_PRIVE and REFRESH_MESSAGE == -1) then
        repeat
            closeinterface()
            wait(1)
            openinterface()
            FIRST_TRY = true
            developer:suspendScriptUntil("ExchangeStartOkJobIndexMessage", 2000,false)
         until REFRESH_MESSAGE ~= -1

    end

    closeinterface() 
    returnoncell()
    if(MODE_FECONDATION) then
        fecondation(REFRESH_MESSAGE)
    end

    analyseenclos(REFRESH_MESSAGE)

    verif2()
end
function readarray(a) 
	global:printError("readarray()")

   -- for i,v in ipairs(a) do global:printMessage(v) end
   return
end

function verif2()
	-- global:printError("verif2()")

    repeat
        global:printSuccess("[Info] Recensement des montures : " .. #feconded .. "  ont été up.")
        READ_COUNT = true
        OLD_MESSAGE = REFRESH_MESSAGE
        repeat
            developer:registerMessage("ExchangeStartOkMountWithOutPaddockMessage", read)
            openinterface()
            developer:registerMessage("ExchangeStartOkMountWithOutPaddockMessage", read)
            ver = developer:suspendScriptUntil("ExchangeStartOkMountWithOutPaddockMessage", 3000,false)
                if(ELEVAGE_ENCLOS_PRIVE) then
                    FIRST_TRY = true
                    closeinterface()
                    wait(1)
                    openinterface()
                     developer:suspendScriptUntil("ExchangeStartOkMountMessage", 2000,false)
                end
            closeinterface() 
returnoncell()
        until OLD_MESSAGE ~= REFRESH_MESSAGE
        wait(2)
        global:printSuccess("[Info] Nouvelle analyse")
        analyseenclos(REFRESH_MESSAGE)
    until #mountid == #feconded
end

function sendemote(id)
	-- global:printError("sendemote()")

    if(USAGE_ATTITUDE) then
       
        local keygeneration = math.random(100,130)
        if(keygeneration == 125) then
            monMessage = developer:createMessage("EmotePlayRequestMessage")
            monMessage.emoteId = id
            developer:sendMessage(monMessage)
        

        

        if OK_EMOTE then
            OK_EMOTE = false
        else
            return
        end
    end
end
end

function tried(t, valuestried, valuesuntried)
	global:printError("tried()")

    local tmp = {}
    for i = 1, #t do
        for j = 1, #t do
            if (valuestried[i] == valuesuntried[j]) then
                tmp = t[i]
                t[i] = t[j]
                t[j] = tmp
            end
        end
    end
end

function returnoncell()
	-- global:printError("returnoncell()")

     if (ELEVAGE_BONTA) then               
        if (map:onCell(219) == false) then
            map:moveToCell(219)
            global:delay(100)
            monMessage = developer:createMessage("GameMapChangeOrientationRequestMessage")
            monMessage.direction = 5
            developer:sendMessage(monMessage)
            global:delay(100)

        end
    elseif (ELEVAGE_ASTRUB) then

        if (map:onCell(299) == false) then
            map:moveToCell(299)
            global:delay(100)
            monMessage = developer:createMessage("GameMapChangeOrientationRequestMessage")
            monMessage.direction = 5
            developer:sendMessage(monMessage)
            global:delay(100)
        end
    elseif (ELEVAGE_BRAKMAR) then

        if (map:onCell(271) == false) then
            map:moveToCell(271)
            global:delay(100)
            monMessage = developer:createMessage("GameMapChangeOrientationRequestMessage")
            monMessage.direction = 3
            developer:sendMessage(monMessage)
            global:delay(100)
        end
    end
end

function bornmount(message)
    printSuccess("[Info] Bravo vous avez eu " .. #message.mountDescription .. " naissances.")
end



function attitudedetect()
	-- global:printError("attitudedetect()")

    local firstattitude = -1
    local secondattitude = -1
    -- local message = developer:historicalMessage(5689)[1]
	local message = developer:historicalMessage("EmoteListMessage")[1]
    tomessage = message.emoteIds
    global:printError("Liste des attitudes du personnage : ")
    for i,v in ipairs(tomessage) do 
        global:printMessage(attitudetostring(v))
         if(v == 10 or v == 2 or v == 3 ) then
            firstattitude = v
        elseif (v == 8 or v == 4 or v == 6) then
            secondattitude = v
        end
    end
     global:printError("On vérifie que vous disposez d'une attitude pour faire avancer et attirer la monture.")

     if(firstattitude == -1 or secondattitude == -1) then
        global:printError("Vous n'avez pas les attitudes requises on désactive la fonction attitude.")
        USAGE_ATTITUDE = false
    else
        global:printSuccess("Vous avez les attitudes requises , votre dragodinde seront monter grace aux attitudes suivante :" .."["..attitudetostring(firstattitude).."]".." et ".."["..attitudetostring(secondattitude).."]")
        ID_ATTITUDE_ATTIRE = firstattitude
        ID_ATTITUDE_REPOUSSE = secondattitude
    end

    
end


function refreshinfo(message)
    --developer:suspendScriptUntil(12123, 700)
    savedmessage = message
    ACTUAL_LIMIT = savedmessage.mountData.boostLimiter
    ACTUAL_LOVE = savedmessage.mountData.love
    ACTUAL_STAMINA = savedmessage.mountData.stamina
    ACTUAL_MATURITY = savedmessage.mountData.maturity
    ACTUAL_SERENITY = savedmessage.mountData.serenity
    ACTUAL_MATURITYMAX = savedmessage.mountData.maturityForAdult
    ACTUAL_ENERGY = savedmessage.mountData.energy
    ACTUAL_ENERGYMAX = savedmessage.mountData.energyMax
    ACTUAL_FECONDATION = savedmessage.mountData.isFecondationReady
    ACTUAL_MESSAGE = savedmessage

    return
end

function analyseenclos(msg)
    global:printSuccess("################ ANALYSE DE L'ETABLE ################")
    TO_REFRESH = false
    READ_COUNT = false
    local first = ""
    --closeinterface() 

    local COUNT_STAMINA = 0
    local COUNT_MATURITY = 0
    local COUNT_LOVE = 0
    local COUNT_ENERGY = 0
    local compteur_energy = 1
    local compteur_love = 1
    local compteur_maturite = 1
    local compteur_endurance = 1
    local compteur_up_serenity_to_love = 1
    local compteur_down_serenity_to_stamina = 1
    local compteur_up_serenity_to_maturity = 1
    local compteur_down_serenity_to_maturity = 1
    local uplove = {}
    local upmaturity = {}
    local upstamina = {}
    local upenergy = {}
    local upserenitytolove = {}
    local downserenitytostamina = {}
    local upserenitytomaturity = {}
    local downserenitytomaturity = {}

    local mountinenclos = {}
    local values_love = {}
    local values_maturity = {}
    local values_stamina = {}
    local values_energy = {}
    local values_up_serenity_love = {}
    local values_down_serenity_maturity = {}
    local values_up_serenity_maturity = {}
    local values_down_serenity_stamina = {}
    local count_values_energy = 0
    local count_values_love = 0
    local count_values_maturity = 0
    local count_values_stamina = 0
    local count_values_up_serenity_love = 0
    local count_values_down_serenity_maturity = 0
    local count_values_up_serenity_maturity = 0
    local count_values_down_serenity_stamina = 0
    message = msg
    emptytable(mountid)
    -- global:printError("Début d'analyse")
    for i, v in ipairs(message.stabledMountsDescription) do
        -- global:printMessage("A1.1")
       -- global:printMessage("Information Dragodinde : "..i.." D'ID :"..message.stabledMountsDescription[i].id.." "..v.serenity.." ".." "..v.maturity.." "..v.boostLimiter )
        -- global:printMessage("A1.1")
        table.insert(mountid, v.id)

        --mountid[i] = message.stabledMountsDescription[i].id
        --  global:printMessage("A1.1.2")

        if (v.maturity == v.maturityForAdult and v.serenity > -500 and v.stamina < 7500 and v.boostLimiter < 240) or (v.love > 7500 and v.serenity > -500 and v.stamina < 7500 and v.boostLimiter < 240) or (v.love < 7500 and v.serenity > -500 and v.stamina < 7500 and v.boostLimiter < 240) then
            if (compteur_down_serenity_to_stamina <= LIMIT_PADDOCK) then
                table.insert(downserenitytostamina, v.id)
                table.insert(values_down_serenity_stamina, v.serenity)
                compteur_down_serenity_to_stamina = compteur_down_serenity_to_stamina + 1
            end
            count_values_down_serenity_stamina = count_values_down_serenity_stamina + 1
        end
  
      if ( (v.maturity == v.maturityForAdult and v.serenity < 500 and v.love < 7500 and v.boostLimiter < 240) or (v.stamina > 7500 and v.serenity < 500 and v.love < 7500 and v.boostLimiter < 240) or (v.stamina < 7500 and v.serenity < 500 and v.love < 7500 and v.boostLimiter < 240)) then
            if (compteur_up_serenity_to_love <= LIMIT_PADDOCK) then
                table.insert(upserenitytolove, v.id)
                table.insert(values_up_serenity_love, v.serenity)
                compteur_up_serenity_to_love = compteur_up_serenity_to_love + 1
            end
            count_values_up_serenity_love = count_values_up_serenity_love + 1
        end
        if (v.maturity ~= v.maturityForAdult and v.serenity >= 1500 and v.love >= 7500 and v.boostLimiter < 240)  then
            --global:printError("DEBUG 3 ")
            if (compteur_down_serenity_to_maturity <= LIMIT_PADDOCK) then
                table.insert(downserenitytomaturity, v.id)
                table.insert(values_down_serenity_maturity, v.serenity)
                compteur_down_serenity_to_maturity = compteur_down_serenity_to_maturity + 1
            end
            count_values_down_serenity_maturity = count_values_down_serenity_maturity + 1
        end
        if (v.maturity ~= v.maturityForAdult and v.serenity <= -1500 and v.stamina >= 7500 and v.boostLimiter < 240) then
            --global:printError("DEBUG 4 ")
            if (compteur_up_serenity_to_maturity <= LIMIT_PADDOCK) then 
                table.insert(upserenitytomaturity, v.id)
                table.insert(values_up_serenity_maturity, v.serenity)
                compteur_up_serenity_to_maturity = compteur_up_serenity_to_maturity + 1
            end
            count_values_up_serenity_maturity = count_values_up_serenity_maturity + 1
        end
        if (v.love < 7500 and v.serenity >= 500 and v.boostLimiter < 240) then
            -- global:printError("DEBUG 5 ")
            --  global:printMessage("BAR D'AMOUR < 7500")
            if (compteur_love <= LIMIT_PADDOCK) then
                table.insert(uplove, v.id)
                table.insert(values_love, v.love)
                compteur_love = compteur_love + 1
            end
            COUNT_LOVE = COUNT_LOVE + 1
        end
        if (v.maturity < v.maturityForAdult and v.serenity < 1500 and v.serenity > -1500 and v.boostLimiter < 240) then
           -- global:printMessage("On passe dans la boucle pour la monture d'id : "..v.id.." et de fatigue : "..v.boostLimiter)
            --  global:printMessage("BAR DE MATURITE < 10000")
            -- global:printError("NOUS DEVONS MONTER LA MATURITE")
            if (compteur_maturite <= LIMIT_PADDOCK) then
               -- global:printMessage("Puis on passe ici ")
                table.insert(upmaturity, v.id)
                table.insert(values_maturity, v.maturity)
                compteur_maturite = compteur_maturite + 1

            --  global:printError("DEBUG 6 ")
            end
            COUNT_MATURITY = COUNT_MATURITY + 1
        end
        if (v.stamina < 7500 and v.serenity <= -500 and v.boostLimiter < 240) then
            -- global:printError("DEBUG 7 ")
            --  global:printMessage("BAR D'ENDURANCE < 7500 NOUS DEVONS MONTER L'ENDURANCE")
            --  global:printError("NOUS DEVONS MONTER L'ENDURANCE")
            if (compteur_endurance <= LIMIT_PADDOCK) then
                table.insert(upstamina, v.id)
                table.insert(values_stamina, v.stamina)
                compteur_endurance = compteur_endurance + 1
            end
            COUNT_STAMINA = COUNT_STAMINA + 1
        end

        if (v.stamina >= 7500 and v.love >= 7500 and v.maturity == v.maturityForAdult and v.boostLimiter < 240 and v.energy < v.energyMax ) then
            -- global:printError("DEBUG 7 ")
            --  global:printMessage("BAR D'ENDURANCE < 7500 NOUS DEVONS MONTER L'ENDURANCE")
            --  global:printError("NOUS DEVONS MONTER L'ENDURANCE")
            if (compteur_energy <= LIMIT_PADDOCK) then
                table.insert(upenergy, v.id)
                table.insert(values_energy, v.energy)
                compteur_energy = compteur_energy + 1
            end
            COUNT_ENERGY = COUNT_ENERGY + 1
        end

        
        if (v.isFecondationReady) then
            if (tablefind(feconded, v.id) == false) then
                table.insert(feconded, v.id)
            end
        end
        --global:delay(400)
    end

    global:printSuccess("[Info] Fin d'analyse , " .. #message.stabledMountsDescription .. " montures ont été analysées")

    if
        (count_values_up_serenity_love > 0 and COUNT_STAMINA == 0 and count_values_up_serenity_maturity == 0 and
            COUNT_MATURITY == 0)
     then
        --  local tmp = {table.unpack(values_up_serenity_love)}
        --table.sort(
        --          tmp,
        --        function(a, b)
        --          return a > b
        --    end
        --)
        --  tried(upserenitytolove, tmp, values_up_serenity_love)
        first = "OK_UP_SERENITY_TO_LOVE"
    elseif (count_values_up_serenity_maturity > 0 and COUNT_STAMINA == 0) then
        -- local tmp = {table.unpack(values_up_serenity_maturity)}
        --table.sort(
        --          tmp,
        --        function(a, b)
        --          return a > b
        --    end
        --)
        -- tried(upserenitytomaturity, tmp, values_up_serenity_maturity)
        first = "OK_UP_SERENITY_TO_MATURITY"
    elseif (count_values_down_serenity_maturity > 0 and COUNT_LOVE == 0) then
        --  local tmp = {table.unpack(values_down_serenity_maturity)}
        --  table.sort(
        --   tmp,
        --  function(a, b)
        --     return a < b
        --  end
        --  )
        --  tried(downserenitytomaturity, tmp, values_down_serenity_maturity)
        first = "OK_DOWN_SERENITY_TO_MATURITY"
    elseif
        (count_values_down_serenity_stamina > 0 and COUNT_MATURITY == 0 and count_values_down_serenity_maturity == 0 and
            COUNT_LOVE == 0)
     then
        --  local tmp = {table.unpack(values_down_serenity_stamina)}
        --table.sort(
        -- tmp,
        --  function(a, b)
        --   return a < b
        -- end
        --  )
        -- tried(downserenitytostamina, tmp, values_down_serenity_stamina)
        first = "OK_DOWN_SERENITY_TO_STAMINA"
    elseif
           (COUNT_STAMINA > 0 and COUNT_STAMINA >= COUNT_MATURITY and COUNT_STAMINA >= COUNT_LOVE) or
           (COUNT_STAMINA > 0 and COUNT_STAMINA == COUNT_MATURITY and COUNT_STAMINA >= COUNT_LOVE) or
           (COUNT_STAMINA > 0 and COUNT_STAMINA == COUNT_LOVE and COUNT_STAMINA >= COUNT_MATURITY)
     then
        --  local tmp = {table.unpack(values_stamina)}
        --table.sort(
        --          tmp,
        --        function(a, b)
        --          return a > b
        --    end
        --)
        --   tried(upstamina, tmp, values_stamina)
        --global:printMessage("DEBUG : "..COUNT_STAMINA)
        first = "OK_STAMINA"
    elseif
        (COUNT_LOVE > 0 and COUNT_LOVE >= COUNT_STAMINA and COUNT_LOVE >= COUNT_MATURITY) or
        (COUNT_LOVE > 0 and COUNT_LOVE == COUNT_MATURITY and COUNT_LOVE > COUNT_STAMINA) or
        (COUNT_LOVE > 0 and COUNT_LOVE == COUNT_STAMINA and COUNT_LOVE > COUNT_MATURITY)
     then

        --  local tmp = {table.unpack(values_love)}
        --table.sort(
        --          tmp,
        --        function(a, b)
        --          return a > b
        --    end
        --)
        --  tried(uplove, tmp, values_love)
        first = "OK_LOVE"
    elseif
        (COUNT_MATURITY > 0 and COUNT_MATURITY >= COUNT_STAMINA and COUNT_MATURITY >= COUNT_LOVE) or
        (COUNT_MATURITY > 0 and  COUNT_MATURITY == COUNT_LOVE and COUNT_MATURITY > COUNT_STAMINA) or
        (COUNT_MATURITY > 0 and  COUNT_MATURITY == COUNT_STAMINA and COUNT_MATURITY > COUNT_LOVE)
     then
        -- local tmp = {table.unpack(values_maturity)}
        --table.sort(
        --          tmp,
        --        function(a, b)
        --          return a > b
        --    end
        --)
        -- tried(upmaturity, tmp, values_maturity)
        first = "OK_MATURITY"

    elseif
        (COUNT_MATURITY == COUNT_STAMINA and COUNT_MATURITY == COUNT_LOVE and COUNT_MATURITY == 0 and COUNT_ENERGY > 0) 
     then
        -- local tmp = {table.unpack(values_maturity)}
        --table.sort(
        --          tmp,
        --        function(a, b)
        --          return a > b
        --    end
        --)
        -- tried(upmaturity, tmp, values_maturity)
        first = "OK_ENERGY"

    elseif
        (COUNT_STAMINA == COUNT_MATURITY and COUNT_MATURITY == COUNT_LOVE and COUNT_LOVE == 0  and COUNT_ENERGY == 0 and
            (#upserenitytolove + #upserenitytomaturity + #downserenitytomaturity + #downserenitytostamina +
                #upserenitytomaturity +
                #upserenitytolove +
                #downserenitytomaturity +
                #downserenitytostamina) ==
                0)
     then

        global:printError("Aucune monture de préte a etre mise en enclos pour l'instant.On deconnecte le bot pour 1h.")

        TO_REFRESH = true
        READ_COUNT = true
        global:reconnect(1)

        return
    end

    global:printSuccess(
        "" ..
            COUNT_STAMINA ..
                " " ..
                    COUNT_MATURITY ..
                        " " ..
                            COUNT_LOVE ..
                                " " ..
                                    #upserenitytolove ..
                                        " " ..
                                            #upserenitytomaturity ..
                                                " " .. #downserenitytomaturity .. " " .. #downserenitytostamina .. " "..COUNT_ENERGY
    )
    global:printSuccess("[Info] Trie par ordre de priorité effectué")
    --global:printError("First ==  "..first)

    if (first == "OK_STAMINA") then
        ACTUAL_TYPE = 2
        toplaceobjectbonta(2)
        global:printSuccess("[Info] L'endurance sera montée en premier")
        openinterface()
        for i = 1, #upstamina do
            for j = 1, #message.stabledMountsDescription do
                if
                    message.stabledMountsDescription[j].id == upstamina[i] and
                        message.stabledMountsDescription[j].serenity <= -500
                 then
                    toplacemount(upstamina[i])
                    table.insert(mountinenclos, upstamina[i])
                --global:printSuccess("Monture numéro "..message.stabledMountsDescription[j].id.." vient d'étre poser en enclos")
                end
            end
        end
        closeinterface()
        returnoncell()
    elseif (first == "OK_MATURITY") then
        ACTUAL_TYPE = 4
        toplaceobjectbonta(4)
        global:printSuccess("[Info] La maturité sera montée en premier")
        openinterface()
        global:printSuccess("[Debug] la taille de la table maturité est : "..#upmaturity)
        for i = 1, #upmaturity do
            for j = 1, #message.stabledMountsDescription do
                if
                    message.stabledMountsDescription[j].id == upmaturity[i] and
                        message.stabledMountsDescription[j].serenity < 1500 and
                        message.stabledMountsDescription[j].serenity > -1500
                 then
              -- global:printSuccess("[Debug] ON TROUVE L ID DE LA MONTURE : ".. message.stabledMountsDescription[j].id)

                    toplacemount(upmaturity[i])
                    table.insert(mountinenclos, upmaturity[i])
                --global:printSuccess("Monture numéro "..message.stabledMountsDescription[j].id.." vient d'étre poser en enclos")
                end
            end
        end
        closeinterface()
        returnoncell()
    elseif (first == "OK_LOVE") then
        ACTUAL_TYPE = 3
        toplaceobjectbonta(3)
        global:printSuccess("[Info] L'amour sera montée en premier")
        openinterface()
        for i = 1, #uplove do
            for j = 1, #message.stabledMountsDescription do
                if
                    message.stabledMountsDescription[j].id == uplove[i] and
                        message.stabledMountsDescription[j].serenity >= 500
                 then
                    toplacemount(uplove[i])
                    table.insert(mountinenclos, uplove[i])
                --global:printSuccess("Monture numéro "..message.stabledMountsDescription[j].id.." vient d'étre poser en enclos")
                end
            end
        end
        closeinterface()
        returnoncell()
    elseif (first == "OK_DOWN_SERENITY_TO_STAMINA") then
        ACTUAL_TYPE = 5
        toplaceobjectbonta(5)
        global:printSuccess("[Info] La bar de sérénité sera abaissée en premier pour up l'endurance ")
        openinterface()
        for i = 1, #downserenitytostamina do
            for j = 1, #message.stabledMountsDescription do
                if
                    message.stabledMountsDescription[j].id == downserenitytostamina[i] and
                        message.stabledMountsDescription[j].serenity > -500
                 then
                    toplacemount(downserenitytostamina[i])
                    table.insert(mountinenclos, downserenitytostamina[i])
                --global:printSuccess("Monture numéro "..message.stabledMountsDescription[j].id.." vient d'étre poser en enclos")
                end
            end
        end
        closeinterface()
        returnoncell()
    elseif (first == "OK_DOWN_SERENITY_TO_MATURITY") then
        ACTUAL_TYPE = 5
        toplaceobjectbonta(5)
        global:printSuccess("[Info] La bar de sérénité sera abaissée en premier pour up la maturité  ")
        openinterface()
        for i = 1, #downserenitytomaturity do
            for j = 1, #message.stabledMountsDescription do
                if
                    message.stabledMountsDescription[j].id == downserenitytomaturity[i] and
                        message.stabledMountsDescription[j].serenity >= 1500
                 then
                    toplacemount(downserenitytomaturity[i])
                    table.insert(mountinenclos, downserenitytomaturity[i])
                --global:printSuccess("Monture numéro "..message.stabledMountsDescription[j].id.." vient d'étre poser en enclos")
                end
            end
        end
        closeinterface()
        returnoncell()
    elseif (first == "OK_UP_SERENITY_TO_MATURITY") then
        ACTUAL_TYPE = 1
        toplaceobjectbonta(1)
        global:printSuccess("[Info] La bar de sérénité sera montée en premier pour up la maturité ")
        openinterface()
        for i = 1, #upserenitytomaturity do
            for j = 1, #message.stabledMountsDescription do
                if
                    message.stabledMountsDescription[j].id == upserenitytomaturity[i] and
                        message.stabledMountsDescription[j].serenity <= -1500
                 then
                    toplacemount(upserenitytomaturity[i])
                    table.insert(mountinenclos, upserenitytomaturity[i])  
                --global:printSuccess("Monture numéro "..message.stabledMountsDescription[j].id.." vient d'étre poser en enclos")
                end
            end
        end
        closeinterface()
        returnoncell()
    elseif (first == "OK_UP_SERENITY_TO_LOVE") then
        ACTUAL_TYPE = 1
        toplaceobjectbonta(1)
        global:printSuccess("[Info] La bar de sérénité sera montée en premier pour up l'amour ")
        openinterface()
        for i = 1, #upserenitytolove do
            for j = 1, #message.stabledMountsDescription do
                if
                    message.stabledMountsDescription[j].id == upserenitytolove[i] and
                        message.stabledMountsDescription[j].serenity < 500
                 then
                    toplacemount(upserenitytolove[i])
                    table.insert(mountinenclos, upserenitytolove[i])
                -- global:printSuccess("Monture numéro "..message.stabledMountsDescription[j].id.." vient d'étre poser en enclos")
                end
            end
        end
        closeinterface()
        returnoncell()

    elseif (first == "OK_ENERGY") then
        ACTUAL_TYPE = 6
        toplaceobjectbonta(6)
        global:printSuccess("[Info] La bar d'énéergie sera montée en premier ")
        openinterface()
        for i = 1, #upenergy do 
            for j = 1, #message.stabledMountsDescription do
                if
                    message.stabledMountsDescription[j].id == upenergy[i]
                 then
                    toplacemount(upenergy[i])
                    table.insert(mountinenclos, upenergy[i])  
                --global:printSuccess("Monture numéro "..message.stabledMountsDescription[j].id.." vient d'étre poser en enclos")
                end
            end
        end
        closeinterface()
        returnoncell()
    end

    global:printSuccess("################ FIN D'ANALYSE DE L'ETABLE ################")

    global:printSuccess("################ DEBUT TRAITEMENT EN ENCLOS ################")

    --global:delay(3000)for

    local index = 1
  --  global:printMessage("Debug before while :"..#mountinenclos.." "..#upserenitytolove .." "..#upserenitytomaturity.." "..#downserenitytomaturity.." "..#downserenitytostamina.." "..index)
  --  global:printMessage("Countenu table mount : ")
    --readarray(mountinenclos)
    if(first == "OK_UP_SERENITY_TO_LOVE") then
    -- global:printMessage("Countenu table upserenity : "..{table.unpack(upserenitytolove)})
    -- global:printMessage("Countenu table upser : ")
     -- readarray(upserenitytolove)
    elseif(first == "OK_UP_SERENITY_TO_MATURITY") then
         -- global:printMessage("Countenu table upserm : ")
--global:printMessage("Countenu table upserenitytwo : "..{table.unpack(upserenitytomaturity)})
     -- readarray(upserenitytomaturity)
    elseif(first == "OK_DOWN_SERENITY_TO_MATURITY") then
      --   global:printMessage("Countenu table downserm : ")
    -- global:printMessage("Countenu table downserenity : "..{table.unpack(downserenitytomaturity)})
     -- readarray(downserenitytomaturity)
    elseif(first == "OK_DOWN_SERENITY_TO_STAMINA") then
      --   global:printMessage("Countenu table downsers : ")
      --  global:printMessage("Countenu table downserenity two : "..{table.unpack(downserenitytostamina)})
        -- readarray(downserenitytostamina)
     elseif(first == "OK_ENERGY") then
       --  global:printMessage("Countenu table energy : ")
      --  global:printMessage("Countenu table downserenity two : "..{table.unpack(downserenitytostamina)})
        -- readarray(upenergy)

    end


    while  (index <= #mountinenclos ) do
          --  global:printMessage("Debug in while :"..#mountinenclos.." "..#upserenitytolove .." "..#upserenitytomaturity.." "..#downserenitytomaturity.." "..#downserenitytostamina.." ".." "..#upenergy.." "..index)
         --  global:printMessage("Countenu table mount : ")
   -- readarray(mountinenclos)
   if(first == "OK_UP_SERENITY_TO_LOVE") then
    -- global:printMessage("Countenu table upserenity : "..{table.unpack(upserenitytolove)})
    -- global:printMessage("Countenu table upser : ")
     -- readarray(upserenitytolove)
    elseif(first == "OK_UP_SERENITY_TO_MATURITY") then
      --   global:printMessage("Countenu table upserm : ")
--global:printMessage("Countenu table upserenitytwo : "..{table.unpack(upserenitytomaturity)})
     -- readarray(upserenitytomaturity)
    elseif(first == "OK_DOWN_SERENITY_TO_MATURITY") then
        -- global:printMessage("Countenu table downserm : ")
    -- global:printMessage("Countenu table downserenity : "..{table.unpack(downserenitytomaturity)})
     -- readarray(downserenitytomaturity)
    elseif(first == "OK_DOWN_SERENITY_TO_STAMINA") then
       --  global:printMessage("Countenu table downsers : ")
      --  global:printMessage("Countenu table downserenity two : "..{table.unpack(downserenitytostamina)})
        -- readarray(downserenitytostamina)
    elseif(first == "OK_ENERGY") then
       --  global:printMessage("Countenu table energy : ")
      --  global:printMessage("Countenu table downserenity two : "..{table.unpack(downserenitytostamina)})
        -- readarray(upenergy)
    end
        
        global:printSuccess("[Info] On récupére les informations de l'enclos")
        ON_PLACE = true
        ACTUAL_ID = mountinenclos[index]
        TO_UPDATE = true
        ACTUAL_LIMIT = -1
        global:printSuccess("[Info] On surveille en premier la monture  : " .. mountinenclos[index])
         if(contextual[index] == nil) then
            toplacemountinstable(mountinenclos[index])
         global:printMessage("On retire la monture de l'enclos pour cause de : Mauvaise lecture de l'id contextuel ")

        
         else


        repeat
            monMessage = developer:createMessage("MountInformationInPaddockRequestMessage")
            monMessage.mapRideId = contextual[index]
            developer:sendMessage(monMessage)

            developer:suspendScriptUntil("MountDataMessage", 10000,false)
        until ACTUAL_LIMIT ~= -1

        if (first == "OK_LOVE") then
           
            if ACTUAL_LIMIT == 240 or ACTUAL_LOVE > 7500 or ACTUAL_SERENITY < 200 then
                toplacemountinstable(mountinenclos[index])
                global:printMessage("On retire la monture de l'enclos pour cause de : ")

                if (ACTUAL_LIMIT == 240) then
                    global:printSuccess("Fatigue")
                elseif (ACTUAL_LOVE > 7500) then
                    global:printSuccess("Amour suffisant")
                else
                    global:printError("Dépassement bar de sérénité")
                end
            else
                repeat
                    monMessage = developer:createMessage("MountInformationInPaddockRequestMessage")
                    monMessage.mapRideId = contextual[index]
                    developer:sendMessage(monMessage)
                    local x

                    x = developer:suspendScriptUntil("MountDataMessage", 5000,false)
                    if(MODE_DEBUG) then
                   global:printMessage("Fatigue :" .. ACTUAL_LIMIT .. " Amour :" .. ACTUAL_LOVE)
                     end
                    if (x and OKEMOTE) then
                        sendemote(ID_ATTITUDE_ATTIRE)
                        OKEMOTE = false
                    elseif (OKEMOTE == false) then
                        sendemote(ID_ATTITUDE_REPOUSSE)

                        

                    --  developer:suspendScriptUntil("MountDataMessage", 5000)
                    end

                    -- global:delay(4000)
                    --   developer:suspendScriptUntil("MountDataMessage", 10000)

                until ACTUAL_LIMIT == 240 or ACTUAL_LOVE > 7500 or ACTUAL_SERENITY < 200
                toplacemountinstable(mountinenclos[index])
                global:printMessage("On retire la monture de l'enclos pour cause de : ")

                if (ACTUAL_LIMIT == 240) then
                    global:printSuccess("Fatigue")
                elseif (ACTUAL_LOVE > 7500) then
                    global:printSuccess("Amour suffisant")
                else
                    global:printError("Dépassement bar de sérénité")
                end
            end
        elseif (first == "OK_MATURITY") then
            --  global:printMessage("ON ATTEND 5 MIN " .. ACTUAL_LIMIT .. " MATURITE :" .. ACTUAL_MATURITY)

            if
                ACTUAL_LIMIT == 240 or ACTUAL_MATURITY == ACTUAL_MATURITYMAX or ACTUAL_SERENITY < -1500 or
                    ACTUAL_SERENITY > 1500
             then
                toplacemountinstable(mountinenclos[index])
                global:printMessage("On retire la monture de l'enclos pour cause de : ")
                if (ACTUAL_LIMIT == 240) then
                    global:printSuccess("Fatigue")
                elseif (ACTUAL_MATURITY == ACTUAL_MATURITYMAX) then
                    global:printSuccess("Maturité suffisante")
                else
                    global:printError("Dépassement bar de sérénité")
                end
            else
                repeat
                    monMessage = developer:createMessage("MountInformationInPaddockRequestMessage")
                    monMessage.mapRideId = contextual[index]
                    developer:sendMessage(monMessage)
                    local x
                    x = developer:suspendScriptUntil("MountDataMessage", 5000,false)
                    if(MODE_DEBUG) then
                    global:printMessage("Fatigue :" .. ACTUAL_LIMIT .. " Maturité :" .. ACTUAL_MATURITY)
                     end

                    if (x and OKEMOTE) then
                        sendemote(ID_ATTITUDE_ATTIRE)
                        OKEMOTE = false
                    elseif (OKEMOTE == false) then
                        sendemote(ID_ATTITUDE_REPOUSSE)

                        OKEMOTE = true

                    -- developer:suspendScriptUntil("MountDataMessage", 5000)
                    end
                until --global:delay(4000)
                ACTUAL_LIMIT == 240 or ACTUAL_MATURITY == ACTUAL_MATURITYMAX or ACTUAL_SERENITY < -1500 or
                    ACTUAL_SERENITY > 1500

                toplacemountinstable(mountinenclos[index])
                global:printMessage("On retire la monture de l'enclos pour cause de : ")
                if (ACTUAL_LIMIT == 240) then
                    global:printSuccess("Fatigue")
                elseif (ACTUAL_MATURITY == ACTUAL_MATURITYMAX) then
                    global:printSuccess("Maturité suffisante")
                else
                    global:printError("Dépassement bar de sérénité")
                end
            end
        elseif (first == "OK_STAMINA") then
            -- global:printMessage("ON ATTEND 5 MIN " .. ACTUAL_LIMIT .. " MATURITE :" .. ACTUAL_STAMINA)

            if ACTUAL_LIMIT == 240 or ACTUAL_STAMINA > 7500 or ACTUAL_SERENITY > -200 then
                toplacemountinstable(mountinenclos[index])
                global:printMessage("On retire la monture de l'enclos pour cause de : ")
                if (ACTUAL_LIMIT == 240) then
                    global:printSuccess("Fatigue")
                elseif (ACTUAL_STAMINA > 7500) then
                    global:printSuccess("Endurance suffisante")
                else
                    global:printError("Dépassement bar de sérénité")
                end
            else
                repeat
                    monMessage = developer:createMessage("MountInformationInPaddockRequestMessage")
                    monMessage.mapRideId = contextual[index]
                    developer:sendMessage(monMessage)
                    local x
                    x = developer:suspendScriptUntil("MountDataMessage", 5000,false)

                    local generateur = math.random(70, 80)

                    if(MODE_DEBUG) then
                   global:printMessage("Fatigue :" .. ACTUAL_LIMIT .. " Endurance :" .. ACTUAL_STAMINA)
                     end

                    if (x and generateur == 75) then
                        sendemote(ID_ATTITUDE_ATTIRE)
                    elseif (OKEMOTE == false) then
                        sendemote(ID_ATTITUDE_REPOUSSE)

                    -- developer:suspendScriptUntil("MountDataMessage", 5000)
                    end
                until --global:delay(4000)
                ACTUAL_LIMIT == 240 or ACTUAL_STAMINA > 7500 or ACTUAL_SERENITY > -200
                toplacemountinstable(mountinenclos[index])
                global:printMessage("On retire la monture de l'enclos pour cause de : ")
                if (ACTUAL_LIMIT == 240) then
                    global:printSuccess("Fatigue")
                elseif (ACTUAL_STAMINA > 7500) then
                    global:printSuccess("Endurance suffisante")
                else
                    global:printError("Dépassement bar de sérénité")
                end
            end
        elseif (first == "OK_ENERGY") then
            -- global:printMessage("ON ATTEND 5 MIN " .. ACTUAL_LIMIT .. " MATURITE :" .. ACTUAL_STAMINA)

            if ACTUAL_LIMIT == 240 or ACTUAL_ENERGY == ACTUAL_ENERGYMAX then
                toplacemountinstable(mountinenclos[index])
                global:printMessage("On retire la monture de l'enclos pour cause de : ")
                if (ACTUAL_LIMIT == 240) then
                    global:printSuccess("Fatigue")
                elseif (ACTUAL_ENERGY == ACTUAL_ENERGYMAX) then
                    global:printSuccess("Energie suffisante")
                else
                    global:printError("Autre")
                end
            else
                repeat
                    monMessage = developer:createMessage("MountInformationInPaddockRequestMessage")
                    monMessage.mapRideId = contextual[index]
                    developer:sendMessage(monMessage)
                    local x
                    x = developer:suspendScriptUntil("MountDataMessage", 5000,false)

                    local generateur = math.random(70, 80)

                    if(MODE_DEBUG) then
                   global:printMessage("Fatigue :" .. ACTUAL_LIMIT .. " Endurance :" .. ACTUAL_STAMINA)
                     end

                    if (x and generateur == 75) then
                        sendemote(ID_ATTITUDE_ATTIRE)
                    elseif (OKEMOTE == false) then
                        sendemote(ID_ATTITUDE_REPOUSSE)

                    -- developer:suspendScriptUntil("MountDataMessage", 5000)
                    end
                until --global:delay(4000)
                ACTUAL_LIMIT == 240 or ACTUAL_ENERGY == ACTUAL_ENERGYMAX
                toplacemountinstable(mountinenclos[index])
                global:printMessage("On retire la monture de l'enclos pour cause de : ")
                if (ACTUAL_LIMIT == 240) then
                    global:printSuccess("Fatigue")
                elseif (ACTUAL_ENERGY == ACTUAL_ENERGYMAX) then
                    global:printSuccess("Energie suffisante")
                else
                    global:printError("Autre")
                end
            end
        elseif (first == "OK_UP_SERENITY_TO_LOVE") then
            -- global:printMessage("ON ATTEND 5 MIN " .. ACTUAL_LIMIT .. " MATURITE :" .. ACTUAL_SERENITY)

            if ACTUAL_LIMIT == 240 or ACTUAL_SERENITY > 2400 then
                toplacemountinstable(mountinenclos[index])
                global:printMessage("On retire la monture de l'enclos pour cause de : ")
                if (ACTUAL_LIMIT == 240) then
                    global:printSuccess("Fatigue")
                else
                    global:printSuccess("Sérenité suffisante")
                end
            else
                repeat
                    monMessage = developer:createMessage("MountInformationInPaddockRequestMessage")
                    monMessage.mapRideId = contextual[index]
                    developer:sendMessage(monMessage)
                    local x
                    x = developer:suspendScriptUntil("MountDataMessage", 10000,false)
                    if(MODE_DEBUG) then
                   global:printMessage("Fatigue :" .. ACTUAL_LIMIT .. " Sérenité :" .. ACTUAL_SERENITY)
                    end

                    if (x and OKEMOTE) then
                        sendemote(ID_ATTITUDE_ATTIRE)
                        OKEMOTE = false
                    elseif (OKEMOTE == false) then
                        sendemote(ID_ATTITUDE_REPOUSSE)

                        OKEMOTE = true

                    -- developer:suspendScriptUntil("MountDataMessage", 5000)
                    end
                until --global:delay(4000)
                ACTUAL_LIMIT == 240 or ACTUAL_SERENITY > 2400
                toplacemountinstable(mountinenclos[index])
                global:printMessage("On retire la monture de l'enclos pour cause de : ")
                if (ACTUAL_LIMIT == 240) then
                    global:printSuccess("Fatigue")
                else
                    global:printSuccess("Sérenité suffisante")
                end
            end
        elseif (first == "OK_DOWN_SERENITY_TO_STAMINA") then
            -- global:printMessage("ON ATTEND 5 MIN " .. ACTUAL_LIMIT .. " MATURITE :" .. ACTUAL_SERENITY)

            if ACTUAL_LIMIT == 240 or ACTUAL_SERENITY < -2400 then
                toplacemountinstable(mountinenclos[index])
                global:printMessage("On retire la monture de l'enclos pour cause de : ")
                if (ACTUAL_LIMIT == 240) then
                    global:printSuccess("Fatigue")
                else
                    global:printSuccess("Sérenité suffisante")
                end
            else
                repeat
                    monMessage = developer:createMessage("MountInformationInPaddockRequestMessage")
                    monMessage.mapRideId = contextual[index]
                    developer:sendMessage(monMessage)
                    local x
                    x = developer:suspendScriptUntil("MountDataMessage", 10000,false)
                    if(MODE_DEBUG) then
                    global:printMessage("Fatigue :" .. ACTUAL_LIMIT .. " Sérenité :" .. ACTUAL_SERENITY)
                    end
                    if (x and OKEMOTE) then
                        sendemote(ID_ATTITUDE_ATTIRE)
                        OKEMOTE = false
                    elseif (OKEMOTE == false) then
                        sendemote(ID_ATTITUDE_REPOUSSE)

                        OKEMOTE = true

                    --  developer:suspendScriptUntil("MountDataMessage", 5000)
                    end
                until --global:delay(4000)
                ACTUAL_LIMIT == 240 or ACTUAL_SERENITY < -2400
                toplacemountinstable(mountinenclos[index])
                global:printMessage("On retire la monture de l'enclos pour cause de : ")
                if (ACTUAL_LIMIT == 240) then
                    global:printSuccess("Fatigue")
                else
                    global:printSuccess("Sérenité suffisante")
                end
            end
        elseif (first == "OK_DOWN_SERENITY_TO_MATURITY") then
            -- global:printMessage("Fatigue :" .. ACTUAL_LIMIT .. " Serenité :" .. ACTUAL_SERENITY)

            if ACTUAL_LIMIT == 240 or ACTUAL_SERENITY < 1500 then
                toplacemountinstable(mountinenclos[index])
                global:printMessage("On retire la monture de l'enclos pour cause de : ")
                if (ACTUAL_LIMIT == 240) then
                    global:printSuccess("Fatigue")
                else
                    global:printSuccess("Sérenité suffisante")
                end
            else
                repeat
                    monMessage = developer:createMessage("MountInformationInPaddockRequestMessage")
                    monMessage.mapRideId = contextual[index]
                    developer:sendMessage(monMessage)
                    local x
                    x = developer:suspendScriptUntil("MountDataMessage", 10000,false)
                    if(MODE_DEBUG) then
                        global:printMessage("Fatigue :" .. ACTUAL_LIMIT .. " Serenité :" .. ACTUAL_SERENITY)
                    end

                    if (x and OKEMOTE) then
                        sendemote(ID_ATTITUDE_ATTIRE)
                        OKEMOTE = false
                    elseif (OKEMOTE == false) then
                        sendemote(ID_ATTITUDE_REPOUSSE)

                        OKEMOTE = true

                    -- developer:suspendScriptUntil("MountDataMessage", 5000)
                    end
                until -- global:delay(4000)
                ACTUAL_LIMIT == 240 or ACTUAL_SERENITY < 1500
                toplacemountinstable(mountinenclos[index])
                global:printMessage("On retire la monture de l'enclos pour cause de : ")
                if (ACTUAL_LIMIT == 240) then
                    global:printSuccess("Fatigue")
                else
                    global:printSuccess("Sérenité suffisante")
                end
            end
        elseif (first == "OK_UP_SERENITY_TO_MATURITY") then
            if ACTUAL_LIMIT == 240 or ACTUAL_SERENITY > -1500 then
                toplacemountinstable(mountinenclos[index])
                global:printMessage("On retire la monture de l'enclos pour cause de : ")
                if (ACTUAL_LIMIT == 240) then
                    global:printSuccess("Fatigue")
                else
                    global:printSuccess("Sérenité suffisante")
                end
            else
                repeat
                    monMessage = developer:createMessage("MountInformationInPaddockRequestMessage")
                    monMessage.mapRideId = contextual[index]

                    developer:sendMessage(monMessage)
                    local x
                    x = developer:suspendScriptUntil("MountDataMessage", 5000,false)
                    if(MODE_DEBUG) then
                   global:printMessage("Fatigue :" .. ACTUAL_LIMIT .. " Serenité :" .. ACTUAL_SERENITY)
                    end

                    if (x and OKEMOTE) then
                        sendemote(ID_ATTITUDE_ATTIRE)
                        OKEMOTE = false
                    elseif (OKEMOTE == false) then
                        sendemote(ID_ATTITUDE_REPOUSSE)

                        OKEMOTE = true

                    -- developer:suspendScriptUntil("MountDataMessage", 5000)
                    end
                until -- global:delay(4000)
                ACTUAL_LIMIT == 240 or ACTUAL_SERENITY > -1500
                toplacemountinstable(mountinenclos[index])
                global:printMessage("On retire la monture de l'enclos pour cause de : ")
                if (ACTUAL_LIMIT == 240) then
                    global:printSuccess("Fatigue")
                else
                    global:printSuccess("Sérenité suffisante")
                end
            end
        end
    end

        index = index + 1
   end

    
    ON_PLACE = false
    if first == "OK_STAMINA" then
        -- wait(1)
        global:printError("[Debug] Retrait objet numéro  " .. objets[2].uid[1] .. " a la cellule " .. enclosbonta[1])
        removeobject(enclosbonta[1])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
        global:printError("[Debug] Retrait objet numéro  " .. objets[2].uid[2] .. " a la cellule " .. enclosbonta[2])
        removeobject(enclosbonta[2])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
        global:printError("[Debug] Retrait objet numéro  " .. objets[2].uid[3] .. " a la cellule " .. enclosbonta[3])
        removeobject(enclosbonta[3])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
        global:printError("[Debug] Retrait objet numéro  " .. objets[2].uid[4] .. " a la cellule " .. enclosbonta[4])
        removeobject(enclosbonta[4])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
        global:printError("[Debug] Retrait objet numéro  " .. objets[2].uid[5] .. " a la cellule " .. enclosbonta[5])
        removeobject(enclosbonta[5])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)

        -- wait(2)
        counter = counter + #upstamina
        emptytable(upstamina)
        emptytable(mountinenclos)
        emptytable(contextual)
    elseif first == "OK_MATURITY" then
        -- wait(1)
        global:printError("[Debug] Retrait objet numéro  " .. objets[4].uid[1] .. " a la cellule " .. enclosbonta[1])
        removeobject(enclosbonta[1])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
        global:printError("[Debug] Retrait objet numéro  " .. objets[4].uid[2] .. " a la cellule " .. enclosbonta[2])
        removeobject(enclosbonta[2])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
        global:printError("[Debug] Retrait objet numéro  " .. objets[4].uid[3] .. " a la cellule " .. enclosbonta[3])
        removeobject(enclosbonta[3])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
        global:printError("[Debug] Retrait objet numéro  " .. objets[4].uid[4] .. " a la cellule " .. enclosbonta[4])
        removeobject(enclosbonta[4])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
        global:printError("[Debug] Retrait objet numéro  " .. objets[4].uid[5] .. " a la cellule " .. enclosbonta[5])
        removeobject(enclosbonta[5])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
        counter = counter + #upmaturity
        emptytable(upmaturity)
        emptytable(mountinenclos)
        emptytable(contextual)
    elseif first == "OK_ENERGY" then
        -- wait(1)
        global:printError("[Debug] Retrait objet numéro  " .. objets[6].uid[1] .. " a la cellule " .. enclosbonta[1])
        removeobject(enclosbonta[1])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
        global:printError("[Debug] Retrait objet numéro  " .. objets[6].uid[2] .. " a la cellule " .. enclosbonta[2])
        removeobject(enclosbonta[2])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
        global:printError("[Debug] Retrait objet numéro  " .. objets[6].uid[3] .. " a la cellule " .. enclosbonta[3])
        removeobject(enclosbonta[3])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
        global:printError("[Debug] Retrait objet numéro  " .. objets[6].uid[4] .. " a la cellule " .. enclosbonta[4])
        removeobject(enclosbonta[4])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
        global:printError("[Debug] Retrait objet numéro  " .. objets[6].uid[5] .. " a la cellule " .. enclosbonta[5])
        removeobject(enclosbonta[5])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
        counter = counter + #upmaturity
        emptytable(upmaturity)
        emptytable(mountinenclos)
        emptytable(contextual)
    elseif first == "OK_LOVE" then
        --  wait(1)
        global:printError("[Debug] Retrait objet numéro  " .. objets[3].uid[1] .. " a la cellule " .. enclosbonta[1])
        removeobject(enclosbonta[1])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
        global:printError("[Debug] Retrait objet numéro  " .. objets[3].uid[2] .. " a la cellule " .. enclosbonta[2])
        removeobject(enclosbonta[2])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
        global:printError("[Debug] Retrait objet numéro  " .. objets[3].uid[3] .. " a la cellule " .. enclosbonta[3])
        removeobject(enclosbonta[3])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
        global:printError("[Debug] Retrait objet numéro  " .. objets[3].uid[4] .. " a la cellule " .. enclosbonta[4])
        removeobject(enclosbonta[4])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
        global:printError("[Debug] Retrait objet numéro  " .. objets[3].uid[5] .. " a la cellule " .. enclosbonta[5])
        removeobject(enclosbonta[5])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
        counter = counter + #uplove
        emptytable(uplove)
        emptytable(mountinenclos)
        emptytable(contextual)
    elseif first == "OK_DOWN_SERENITY_TO_STAMINA" then
        -- wait(1)
        global:printError("[Debug] Retrait objet numéro  " .. objets[5].uid[1] .. " a la cellule " .. enclosbonta[1])
        removeobject(enclosbonta[1])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
        global:printError("[Debug] Retrait objet numéro  " .. objets[5].uid[2] .. " a la cellule " .. enclosbonta[2])
        removeobject(enclosbonta[2])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
        global:printError("[Debug] Retrait objet numéro  " .. objets[5].uid[3] .. " a la cellule " .. enclosbonta[3])
        removeobject(enclosbonta[3])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
        global:printError("[Debug] Retrait objet numéro  " .. objets[5].uid[4] .. " a la cellule " .. enclosbonta[4])
        removeobject(enclosbonta[4])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
        global:printError("[Debug] Retrait objet numéro  " .. objets[5].uid[5] .. " a la cellule " .. enclosbonta[5])
        removeobject(enclosbonta[5])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
        counter = counter + #downserenitytostamina
        emptytable(downserenitytostamina)
        emptytable(mountinenclos)
        emptytable(contextual)
    elseif first == "OK_DOWN_SERENITY_TO_MATURITY" then
        -- wait(1)
        global:printError("[Debug] Retrait objet numéro  " .. objets[5].uid[1] .. " a la cellule " .. enclosbonta[1])
        removeobject(enclosbonta[1])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
        global:printError("[Debug] Retrait objet numéro  " .. objets[5].uid[2] .. " a la cellule " .. enclosbonta[2])
        removeobject(enclosbonta[2])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
        global:printError("[Debug] Retrait objet numéro  " .. objets[5].uid[3] .. " a la cellule " .. enclosbonta[3])
        removeobject(enclosbonta[3])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
        global:printError("[Debug] Retrait objet numéro  " .. objets[5].uid[4] .. " a la cellule " .. enclosbonta[4])
        removeobject(enclosbonta[4])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
        global:printError("[Debug] Retrait objet numéro  " .. objets[5].uid[5] .. " a la cellule " .. enclosbonta[5])
        removeobject(enclosbonta[5])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
        counter = counter + #downserenitytomaturity
        emptytable(downserenitytomaturity)
        emptytable(mountinenclos)
        emptytable(contextual)
    elseif first == "OK_UP_SERENITY_TO_LOVE" then
        -- wait(1)
        global:printError("[Debug] Retrait objet numéro  " .. objets[1].uid[1] .. " a la cellule " .. enclosbonta[1])
        removeobject(enclosbonta[1])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
        global:printError("[Debug] Retrait objet numéro  " .. objets[1].uid[2] .. " a la cellule " .. enclosbonta[2])
        removeobject(enclosbonta[2])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
        global:printError("[Debug] Retrait objet numéro  " .. objets[1].uid[3] .. " a la cellule " .. enclosbonta[3])
        removeobject(enclosbonta[3])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
        global:printError("[Debug] Retrait objet numéro  " .. objets[1].uid[4] .. " a la cellule " .. enclosbonta[4])
        removeobject(enclosbonta[4])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
        global:printError("[Debug] Retrait objet numéro  " .. objets[1].uid[5] .. " a la cellule " .. enclosbonta[5])
        removeobject(enclosbonta[5])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
        counter = counter + #upserenitytolove
        emptytable(upserenitytolove)
        emptytable(mountinenclos)
        emptytable(contextual)
    elseif first == "OK_UP_SERENITY_TO_MATURITY" then
        global:printError("[Debug] Retrait objet numéro  " .. objets[1].uid[1] .. " a la cellule " .. enclosbonta[1])
        removeobject(enclosbonta[1])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
        global:printError("[Debug] Retrait objet numéro  " .. objets[1].uid[2] .. " a la cellule " .. enclosbonta[2])
        removeobject(enclosbonta[2])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
        global:printError("[Debug] Retrait objet numéro  " .. objets[1].uid[3] .. " a la cellule " .. enclosbonta[3])
        removeobject(enclosbonta[3])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
        global:printError("[Debug] Retrait objet numéro  " .. objets[1].uid[4] .. " a la cellule " .. enclosbonta[4])
        removeobject(enclosbonta[4])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
        global:printError("[Debug] Retrait objet numéro  " .. objets[1].uid[5] .. " a la cellule " .. enclosbonta[5])
        removeobject(enclosbonta[5])
        --developer:suspendScriptUntil("ObjectAddedMessage", 30000)
        counter = counter + #upserenitytomaturity
        emptytable(upserenitytomaturity)
        emptytable(mountinenclos)
        emptytable(contextual)
    --wait(1)
    end

    READ_COUNT = true
    TO_REFRESH = true
    openinterface()
    TO_REFRESH = true
    closeinterface() 
    returnoncell()
    --global:delay(5000)
   
    return
    -- end
end

function emptytable(t)
    for k in pairs(t) do
        t[k] = nil
    end
end

function mountupdateinfo(message)
  
    if(TO_REMOVE == true and READ_UPDATE == true) then
        global:printSuccess("Remise en etable des dragodindes")
        READ_UPDATE = false
        for i=1,#message.paddockedMountsDescription do
            toplacemountinstable(message.paddockedMountsDescription[i].id)           
        end
        
    elseif(FIRST_TRY) then
        global:printSuccess("On passe par la")


        REFRESH_MESSAGE = message
        FIRST_TRY = false
    

       
    end


end

function objectinfo(message)
    if(ON_PLACE) then
        msg = message
        poscell = -1
        if(msg.paddockItemDescription.durability.durability == 0 and INTERFACE_OPEN == false) then
            global:printError("[Info] L'objet a la cellule "..msg.paddockItemDescription.cellId.." est a 0")
            global:printError("[Info] On tente de changer l'objet si votre stock le permet")
            if(ACTUAL_TYPE ~= -1) then
                if(objets[ACTUAL_TYPE].qtt > #enclosbonta and REFRESH_OBJECT) then
                    global:printSuccess("[Info] Stock suffisant")
                    for t=1,#enclosbonta do
                        if(msg.paddockItemDescription.cellId == enclosbonta[t]) then
                            poscell = t
                        end

                    end
                    if(poscell ~= -1) then
                       
                        removeobject(msg.paddockItemDescription.cellId)
                        developer:suspendScriptUntil("ObjectAddedMessage", 2000,false)
                        global:printError("[Debug] 00 POSCell : "..poscell .." UID : "..objets[ACTUAL_TYPE].uid[objets[ACTUAL_TYPE].qtt])
                         local tmpbobject = objets[ACTUAL_TYPE].uid[poscell]
                        objets[ACTUAL_TYPE].uid[poscell] = objets[ACTUAL_TYPE].uid[objets[ACTUAL_TYPE].qtt]
                        objets[ACTUAL_TYPE].uid[objets[ACTUAL_TYPE].qtt] = tmpbobject
                        table.remove(objets[ACTUAL_TYPE].uid,objets[ACTUAL_TYPE].qtt)

                        objets[ACTUAL_TYPE].qtt = objets[ACTUAL_TYPE].qtt - 1

                        if (objets[ACTUAL_TYPE].id == ID_CARESSEUR) then
                            uidcaresseur[poscell] = {olduid = objets[ACTUAL_TYPE].uid[poscell], newuid = -1, cell = msg.paddockItemDescription.cellId}
                        elseif (objets[ACTUAL_TYPE].id == ID_FOUDROYEUR) then
                       
                            uidfoudroyeur[poscell] = {olduid = objets[ACTUAL_TYPE].uid[poscell], newuid = -1, cell = msg.paddockItemDescription.cellId}
                        elseif (objets[ACTUAL_TYPE].id == ID_DRAGOFESSE) then
                          
                            uiddragofesse[poscell] = {olduid = objets[ACTUAL_TYPE].uid[poscell], newuid = -1, cell = msg.paddockItemDescription.cellId}
                        elseif (objets[ACTUAL_TYPE].id == ID_ABREUVOIR) then
                            
                            uidabreuvoir[poscell] = {olduid = objets[ACTUAL_TYPE].uid[poscell], newuid = -1, cell = msg.paddockItemDescription.cellId}
                        elseif (objets[ACTUAL_TYPE].id == ID_BAFFEUR) then
                            uidbaffeur[poscell] = {olduid = objets[ACTUAL_TYPE].uid[poscell], newuid = -1, cell = msg.paddockItemDescription.cellId}
                        elseif (objets[ACTUAL_TYPE].id == ID_MANGEOIRE) then
                            uidmangeoire[poscell] = {olduid = objets[ACTUAL_TYPE].uid[poscell], newuid = -1, cell = msg.paddockItemDescription.cellId}
                        -- wait(1)
                        end
                        global:printError("[Debug] Cell : "..msg.paddockItemDescription.cellId .." UID : "..objets[ACTUAL_TYPE].uid[poscell])

                        toplaceobject(objets[ACTUAL_TYPE].uid[poscell],msg.paddockItemDescription.cellId )
                        if(objets[ACTUAL_TYPE].qtt < #enclosbonta) then
                             global:printError("[Info] Vous devez remplacer vos objets !!")
                             global:finishScript()

                        end

                        

                    end


                else
                    objets[ACTUAL_TYPE].qtt = objets[ACTUAL_TYPE].qtt -1
                     global:printError("[Info] Stock insuffisant")
                    if(objets[ACTUAL_TYPE].qtt < 1) then
                         global:printError("[Info] Vous devez remplacer vos objets !!")
                            global:finishScript()
                    end

                end
            end

        end
    end
end


function closeinterface() 

    -- monMessage = developer:createMessage(5501)
    --developer:sendMessage(monMessage)
    global:leaveDialog()
    global:delay(200)
    
    INTERFACE_OPEN = false

    --global:delay(3000)
end

function openinterface()
    INTERFACE_OPEN = true
    if (ELEVAGE_BONTA) then
        --map:useById(486788,2) 
        --map:door(actualcell)
        --npc:npc(111520130,)
        --npc:npcBank(-1)
        if(MODE_XP_DD_BONTA) then
            map:door(actualcell)
        else

         -- local message = developer:historicalMessage(226)[1]
		 local message = developer:historicalMessage(("MapComplementaryInformationsDataMessage"))[1]
        SKILL_UID_DOOR = message.integereractiveElements[3].enabledSkills[1].skillInstanceUid
        ELEM_ID = message.integereractiveElements[3].elementId 

        monMessage = developer:createMessage("InteractiveUseRequestMessage")
                 monMessage.elemId = ELEM_ID
                 monMessage.skillInstanceUid = SKILL_UID_DOOR
             
             developer:sendMessage(monMessage)
        end

       -- developer:suspendScriptUntil(5991, 15000)
    elseif (ELEVAGE_BRAKMAR) then
      --  map:useById(438860,)
       --map:door(actualcell)
       -- developer:suspendScriptUntil(5991, 15000)
       if(MODE_XP_DD_BRAKMAR) then
        map:door(actualcell)
       else

        -- local message = developer:historicalMessage(226)[1]
		 local message = developer:historicalMessage(("MapComplementaryInformationsDataMessage"))[1]
        SKILL_UID_DOOR = message.integereractiveElements[1].enabledSkills[1].skillInstanceUid
        ELEM_ID = message.integereractiveElements[1].elementId

               monMessage = developer:createMessage("InteractiveUseRequestMessage")
                 monMessage.elemId = ELEM_ID
                 monMessage.skillInstanceUid = SKILL_UID_DOOR      
             developer:sendMessage(monMessage)
            end

    elseif (ELEVAGE_ASTRUB) then
      map:door(actualcell)

    elseif (ELEVAGE_ENCLOS_PRIVE) then 
        if(map:currentMapId() == ELEVAGE_ENCLOS_PRIVE_SPECIAL_MAP) then
            -- local message = developer:historicalMessage(226)[1]
		 local message = developer:historicalMessage(("MapComplementaryInformationsDataMessage"))[1]
            SKILL_UID_DOOR = message.integereractiveElements[2].enabledSkills[1].skillInstanceUid
            ELEM_ID = message.integereractiveElements[2].elementId

               monMessage = developer:createMessage("InteractiveUseRequestMessage")
                 monMessage.elemId = ELEM_ID
                 monMessage.skillInstanceUid = SKILL_UID_DOOR      
             developer:sendMessage(monMessage)
         -- map:useById(ELEVAGE_ENCLOS_PRIVE_SPECIAL_ID,) 
        
        else
            map:door(actualcell)
        end
       -- developer:suspendScriptUntil(5991, 15000)
    end

    --global:delay(2000)
end

function refresh(message)
    COUNT = 0
end

function refreshcell(message)
    CELL_PING = message.cellId
end

function refreshuid(message)
    pos = -1
    newuid = message.objectt.objecttUID
    if(CELL_PING == 0) then
        return
    end
    global:printError("[Debug] Mise a jour objet : " .. newuid .. " cell :" .. CELL_PING)

    if (ACTUAL_TYPE == 1) then
        for j = 1, #uidcaresseur do
            if (uidcaresseur[j].cell == CELL_PING) then
                pos = j
                uidcaresseur[j].newuid = newuid
            --global:printError(" Mise a jour du tableau d'UID ")
            end
        end
        for i = 1, #objets[1].uid do
            --global:printError("[DEBUG] : Mon i :"..i.."et mon pos : "..pos)
            if (i == pos) then
                global:printError(
                    "[Debug] Mise a jour du tableau d'objets , ancien UID :  " ..
                        objets[1].uid[pos] .. " , nouveau  : " .. newuid .. " qui est a la cellule : " .. CELL_PING
                )
                objets[1].uid[pos] = newuid
            end
        end
    elseif (ACTUAL_TYPE == 2) then
        for j = 1, #uidfoudroyeur do
            if (uidfoudroyeur[j].cell == CELL_PING) then
                pos = j
                uidfoudroyeur[j].newuid = newuid
            --global:printError(" 2 MISE A JOUR TABLEAU UID ")
            end
        end
        for i = 1, #objets[2].uid do
            -- global:printError("[DEBUG] : Mon i :"..i.."et mon pos : "..pos)
            if (i == pos) then
                global:printError(
                    "[Debug] Mise a jour du tableau d'objets , ancien UID :  " ..
                        objets[2].uid[pos] .. " , nouveau  : " .. newuid .. " qui est a la cellule : " .. CELL_PING
                )
                objets[2].uid[pos] = newuid
            end
        end
    elseif (ACTUAL_TYPE == 3) then
        for j = 1, #uiddragofesse do
            if (uiddragofesse[j].cell == CELL_PING) then
                pos = j
                uiddragofesse[j].newuid = newuid
            --global:printError(" 2 MISE A JOUR TABLEAU UID ")
            end
        end
        for i = 1, #objets[3].uid do
            --global:printError("[DEBUG] : Mon i :"..i.."et mon pos : "..pos)
            if (i == pos) then
                global:printError(
                    "[Debug] Mise a jour du tableau d'objets , ancien UID :  " ..
                        objets[3].uid[pos] .. " , nouveau  : " .. newuid .. " qui est a la cellule : " .. CELL_PING
                )
                objets[3].uid[pos] = newuid
            end
        end
    elseif (ACTUAL_TYPE == 4) then
        for j = 1, #uidabreuvoir do
            if (uidabreuvoir[j].cell == CELL_PING) then
                pos = j
                uidabreuvoir[j].newuid = newuid
            --global:printError(" 2 MISE A JOUR TABLEAU UID ")
            end
        end
        for i = 1, #objets[4].uid do
            --global:printError("[DEBUG] : Mon i :"..i.."et mon pos : "..pos)
            if (i == pos) then
                global:printError(
                    "[Debug] Mise a jour du tableau d'objets , ancien UID :  " ..
                        objets[4].uid[pos] .. " , nouveau  : " .. newuid .. " qui est a la cellule : " .. CELL_PING
                )
                objets[4].uid[pos] = newuid
            end
        end
    elseif (ACTUAL_TYPE == 5) then
        for j = 1, #uidbaffeur do
            if (uidbaffeur[j].cell == CELL_PING) then
                pos = j
                uidbaffeur[j].newuid = newuid
            --global:printError(" 2 MISE A JOUR TABLEAU UID ")
            end
        end
        for i = 1, #objets[5].uid do
            --global:printError("[DEBUG] : Mon i :"..i.."et mon pos : "..pos)
            if (i == pos) then
                global:printError(
                    "[Debug] Mise a jour du tableau d'objets , ancien UID :  " ..
                        objets[5].uid[pos] .. " , nouveau  : " .. newuid .. " qui est a la cellule : " .. CELL_PING
                )
                objets[5].uid[pos] = newuid
            end
        end
    elseif (ACTUAL_TYPE == 6) then
        for j = 1, #uidmangeoire do
            if (uidmangeoire[j].cell == CELL_PING) then
                pos = j
                uidmangeoire[j].newuid = newuid
            --global:printError(" 2 MISE A JOUR TABLEAU UID ")
            end
        end
        for i = 1, #objets[4].uid do
            --global:printError("[DEBUG] : Mon i :"..i.."et mon pos : "..pos)
            if (i == pos) then
                global:printError(
                    "[Debug] Mise a jour du tableau d'objets , ancien UID :  " ..
                        objets[6].uid[pos] .. " , nouveau  : " .. newuid .. " qui est a la cellule : " .. CELL_PING
                )
                objets[6].uid[pos] = newuid
            end
        end
    end

    if (ACTUALISATION_UID_CRASH == true) then
        ACTUAL_UID_ACTUALISATION = newuid
            ACTUALISATION_UID_CRASH = false

    end
end

function refreshuid2(message)
    pos = -1
    --global:printError("REFRESHUID 2 ")
    newuid = message.objecttUID
    if(CELL_PING == 0) then
        return
    end
    global:printError("[Debug] Mise a jour objet : " .. newuid .. " cell :" .. CELL_PING)

    if (ACTUAL_TYPE == 1) then
        for j = 1, #uidcaresseur do
            if (uidcaresseur[j].cell == CELL_PING) then
                pos = j
                uidcaresseur[j].newuid = newuid
            --global:printError(" 2 MISE A JOUR TABLEAU UID ")
            end
        end
        for i = 1, #objets[1].uid do
            --global:printError("[DEBUG] : Mon i :"..i.."et mon pos : "..pos)
            if (i == pos) then
                global:printError(
                    "[Debug] Mise a jour du tableau d'objets , ancien UID :  " ..
                        objets[1].uid[pos] .. " , nouveau  : " .. newuid .. " qui est a la cellule " .. CELL_PING
                )
                objets[1].uid[pos] = newuid
            end
        end
    elseif (ACTUAL_TYPE == 2) then
        for j = 1, #uidfoudroyeur do
            if (uidfoudroyeur[j].cell == CELL_PING) then
                pos = j
                uidfoudroyeur[j].newuid = newuid
            -- global:printError(" 2 MISE A JOUR TABLEAU UID ")
            end
        end
        for i = 1, #objets[2].uid do
            --global:printError("[DEBUG] : Mon i :"..i.."et mon pos : "..pos)
            if (i == pos) then
                global:printError(
                    "[Debug] Mise a jour du tableau d'objets , ancien UID :  " ..
                        objets[2].uid[pos] .. " , nouveau  : " .. newuid .. " qui est a la cellule " .. CELL_PING
                )
                objets[2].uid[pos] = newuid
            end
        end
    elseif (ACTUAL_TYPE == 3) then
        for j = 1, #uiddragofesse do
            if (uiddragofesse[j].cell == CELL_PING) then
                pos = j
                uiddragofesse[j].newuid = newuid
            --global:printError(" 2 MISE A JOUR TABLEAU UID ")
            end
        end
        for i = 1, #objets[3].uid do
            --global:printError("[DEBUG] : Mon i :"..i.."et mon pos : "..pos)
            if (i == pos) then
                global:printError(
                    "[Debug] Mise a jour du tableau d'objets , ancien UID :  " ..
                        objets[3].uid[pos] .. " , nouveau  : " .. newuid .. " qui est a la cellule " .. CELL_PING
                )
                objets[3].uid[pos] = newuid
            end
        end
    elseif (ACTUAL_TYPE == 4) then
        for j = 1, #uidabreuvoir do
            if (uidabreuvoir[j].cell == CELL_PING) then
                pos = j
                uidabreuvoir[j].newuid = newuid
            --global:printError(" 2 MISE A JOUR TABLEAU UID ")
            end
        end
        for i = 1, #objets[4].uid do
            --global:printError("[DEBUG] : Mon i :"..i.."et mon pos : "..pos)
            if (i == pos) then
                global:printError(
                    "[Debug] Mise a jour du tableau d'objets , ancien UID :  " ..
                        objets[4].uid[pos] .. " , nouveau  : " .. newuid .. " qui est a la cellule " .. CELL_PING
                )
                objets[4].uid[pos] = newuid
            end
        end
    elseif (ACTUAL_TYPE == 5) then
        for j = 1, #uidbaffeur do
            if (uidbaffeur[j].cell == CELL_PING) then
                pos = j
                uidbaffeur[j].newuid = newuid
            --global:printError(" 2 MISE A JOUR TABLEAU UID ")
            end
        end
        for i = 1, #objets[5].uid do
            --global:printError("[DEBUG] : Mon i :"..i.."et mon pos : "..pos)
            if (i == pos) then
                global:printError(
                    "[Debug] Mise a jour du tableau d'objets , ancien UID :  " ..
                        objets[5].uid[pos] .. " , nouveau  : " .. newuid .. " qui est a la cellule " .. CELL_PING
                )
                objets[5].uid[pos] = newuid
            end
        end

    elseif (ACTUAL_TYPE == 6) then
        for j = 1, #uidmangeoire do
            if (uidmangeoire[j].cell == CELL_PING) then
                pos = j
                uidmangeoire[j].newuid = newuid
            --global:printError(" 2 MISE A JOUR TABLEAU UID ")
            end
        end
        for i = 1, #objets[4].uid do
            --global:printError("[DEBUG] : Mon i :"..i.."et mon pos : "..pos)
            if (i == pos) then
                global:printError(
                    "[Debug] Mise a jour du tableau d'objets , ancien UID :  " ..
                        objets[6].uid[pos] .. " , nouveau  : " .. newuid .. " qui est a la cellule : " .. CELL_PING
                )
                objets[6].uid[pos] = newuid
            end
        end
    end
    if (ACTUALISATION_UID_CRASH == true) then
        ACTUAL_UID_ACTUALISATION = newuid
        ACTUALISATION_UID_CRASH = false

    end
end

function toplacemount(id)
 
    OK_MOUNT = true
    monMessage = developer:createMessage("ExchangeHandleMountsMessage")
    monMessage.actionType = 6
    monMessage.ridesId = {id}
    --global:delay(800)

    developer:sendMessage(monMessage)
    developer:suspendScriptUntil("GameRolePlayShowActorMessage", 5000,false)

    OK_MOUNT = false
    global:printError("[Debug] La monture numéro " .. id .. " vient d'étre poser en enclos")
 

end

function toplacemountinstable(id)
    openinterface()
    monMessage = developer:createMessage("ExchangeHandleMountsMessage")
    monMessage.actionType = 7
    monMessage.ridesId = {id}
    --global:delay(1000)
    --global:delay(800)

    developer:sendMessage(monMessage)

    global:printError("[Debug] La monture numéro " .. id .. " vient d'étre poser en etable")
    closeinterface() 
returnoncell()
end

function toplaceobjectbonta(typeid)
    global:printSuccess("[Info] On place les objets de type :" .. typeid .. " dans l'enclos ")
    ON_PLACE = false
    for i=1 ,#enclosbonta do
        global:printError("[Debug] Placement objet numéro  " .. objets[typeid].uid[i] .. " a la cellule " .. enclosbonta[i])
        toplaceobject(objets[typeid].uid[i], enclosbonta[i])
        -- wait(1)
        if (objets[typeid].id == ID_CARESSEUR) then
            -- wait(1)
            uidcaresseur[i] = {olduid = objets[typeid].uid[i], newuid = -1, cell = enclosbonta[i]}
        elseif (objets[typeid].id == ID_FOUDROYEUR) then
            -- wait(1)
            uidfoudroyeur[i] = {olduid = objets[typeid].uid[i], newuid = -1, cell = enclosbonta[i]}
        elseif (objets[typeid].id == ID_DRAGOFESSE) then
            -- wait(1)
            uiddragofesse[i] = {olduid = objets[typeid].uid[i], newuid = -1, cell = enclosbonta[i]}
        elseif (objets[typeid].id == ID_ABREUVOIR) then
            -- wait(1)
            uidabreuvoir[i] = {olduid = objets[typeid].uid[i], newuid = -1, cell = enclosbonta[i]}
        elseif (objets[typeid].id == ID_BAFFEUR) then
            uidbaffeur[i] = {olduid = objets[typeid].uid[i], newuid = -1, cell = enclosbonta[i]}
        elseif (objets[typeid].id == ID_MANGEOIRE) then
            uidmangeoire[i] = {olduid = objets[typeid].uid[i], newuid = -1, cell = enclosbonta[i]}
        -- wait(1)
        end
        global:delay(1000)
        --global:printSuccess("DEBUG PLACE OBJECT : "..uidcaresseur[i].olduid..uidcaresseur[i].newuid..uidcaresseur[i].cell)
    end
end

function toplaceobject(uid, cell)
    monMessage = developer:createMessage("ObjectUseOnCellMessage")
    monMessage.cells = cell
    monMessage.objecttUID = uid
    developer:sendMessage(monMessage)
    --global:delay(2000)
     --developer:registerMessage(5990, objectinfo)
   -- developer:suspendScriptUntil(5990, 500)
end

function removeobject(cell)
    monMessage = developer:createMessage("PaddockRemoveItemRequestMessage")
    monMessage.cellId = cell
    developer:sendMessage(monMessage)
    --developer:registerMessage("ObjectAddedMessage", refreshuid)
    developer:suspendScriptUntil("ObjectAddedMessage", 500,false)
    global:delay(100)
end

function toremoveobjectbonta(typeid)
    local d = 1
    repeat
        global:printError(
            "[Debug] Retrait objet numéro  " .. objets[typeid].uid[d] .. " a la cellule " .. enclosbonta[d]
        )
        removeobject(enclosbonta[d])

        wait(5)
        d = d + 1
    until d == 6
end

function listobjects()
    -- monMessage = developer:historicalMessage(3016)[1]
	monMessage = developer:historicalMessage("InventoryContentMessage")[1]
global:printSuccess("2473")
    for dicoindex = 1, #objectdictionary do
        for i = 1, #monMessage.objectts do
            for dicoindexid = 1, #objectdictionary[dicoindex].id do
                if objectdictionary[dicoindex].id[dicoindexid] == monMessage.objectts[i].objecttGID then
                    
                    if (monMessage.objectts[i].effects[1].diceNum > 0) then
                        for j = 1, monMessage.objectts[i].quantity do
                            global:printError(
                                "[Debug] Sauvegarde de l'UID de l'objet " ..
                                    inventory:itemNameId(monMessage.objectts[i].objecttGID) ..
                                        " avec une quantité de : " .. monMessage.objectts[i].quantity
                            )

                            table.insert(objets[dicoindex].uid, monMessage.objectts[i].objecttUID)
                        end

                        objets[dicoindex].qtt = objets[dicoindex].qtt + monMessage.objectts[i].quantity
                    else

                        global:printError(
                            "[Info] " ..
                                inventory:itemNameId(monMessage.objectts[i].objecttGID) ..
                                    " X " ..
                                        monMessage.objectts[i].quantity .. " a 0 utilisations réstantes."
                        )
                    end
               
                end
            end
        end
    end

    if
        (objets[1].qtt < 5 or objets[2].qtt < 5 or objets[3].qtt < 5 or objets[4].qtt < 5 or objets[5].qtt < 5 or
            objets[6].qtt < 5)
     then
        global:printError(
            "[Erreur] Mauvaise quantité d'objets merci de verifier que vous disposez bien d'au moins 5 objets par type et qu'ils sont utilisables."
        )
        --global:printSuccess(table.unpack(objectdictionary[1].id))
        for i = 1, #objets do
            global:printError(objets[i].qtt)
        end
       global:finishScript()
    end
end

function max(a)
    local values = {}

    for k, v in pairs(a) do
        values[#values + 1] = v
    end
    table.sort(values)

    return values[#values]
end

function tablefind(tab, el)
    for indexbis, value in pairs(tab) do
        if value == el then
            return true
        else
            return false
        end
    end
    return false
end

function tablefind2(tab, el)
    for k, v in pairs(tab) do
        global:printError("On cherche dans le dico si el  "..el.."equivaut a v  "..v)
        if v == el then
            return true
        else
            return false
        end
    end
    return false
end





function callmap()
    monMessage = developer:createMessage("MapInformationsRequestMessage")
    monMessage.mapId = map:currentMapId()
    developer:sendMessage(monMessage)
    --developer:suspendScriptUntil(226, 2000)
    --developer:suspendScriptUntil(5992, 2000)
end

function testouverture()
    -- body
end

function listobjectsaftercrash(message)

    
    if (REFRESHED_MAP == false) then    
        closeinterface()
           
            -- monMessage = developer:historicalMessage(3016)[1]
			monMessage = developer:historicalMessage("InventoryContentMessage")[1]
			
            global:printError(
                    "[Debug] Actualisation des objets"
                )
            for dicoindex = 1, #objectdictionary do
                for i = 1, #monMessage.objectts do
                    for dicoindexid = 1, #objectdictionary[dicoindex].id do
                        if objectdictionary[dicoindex].id[dicoindexid] == monMessage.objectts[i].objecttGID then
                            if (monMessage.objectts[i].effects[1].diceSide > 0) then
                                for j = 1, monMessage.objectts[i].quantity do
                                    global:printError(
                                        "[Debug] Sauvegarde de l'UID de l'objet " ..
                                            inventory:itemNameId(monMessage.objectts[i].objecttGID) ..
                                                " avec une quantité de : " .. monMessage.objectts[i].quantity
                                    )

                                    table.insert(objets[dicoindex].uid, monMessage.objectts[i].objecttUID)
                                end

                                objets[dicoindex].qtt = objets[dicoindex].qtt + monMessage.objectts[i].quantity
                            else

                                global:printError(
                                    "[Info] " ..
                                        inventory:itemNameId(monMessage.objectts[i].objecttGID) ..
                                            " X " ..
                                                monMessage.objectts[i].quantity .. " a 0 utilisations réstantes."
                                )
                            end
                        end
                    end
                end
            end

           
        end

        local localuid = {}

--global:printSuccess("1 "..#message.paddockItemDescription)
        for i = 1, #message.paddockItemDescription do
            ACTUALISATION_UID_CRASH = true
            monMessage = developer:createMessage("PaddockRemoveItemRequestMessage")
             monMessage.cellId = message.paddockItemDescription[i].cellId
            developer:sendMessage(monMessage)
             developer:suspendScriptUntil("ObjectAddedMessage", 2000, false)
           
            table.insert(localuid, ACTUAL_UID_ACTUALISATION)
        end
--global:printSuccess("2 "..#message.paddockItemDescription)
        --global:printMessage("L7")

        ACTUALISATION_UID_CRASH = false

        for dicoindex = 1, #objectdictionary do
--global:printSuccess("4 "..#message.paddockItemDescription)

             for i = 1, #message.paddockItemDescription do
--global:printSuccess("5 "..#message.paddockItemDescription)

                for dicoindexid = 1, #objectdictionary[dicoindex].id do
--global:printSuccess("6 "..dicoindexid)

                    if (objectdictionary[dicoindex].id[dicoindexid] == message.paddockItemDescription[i].objecttGID) then
                        global:printError(
                            "[Debug] Sauvegarde de l'UID de l'objet " ..
                                inventory:itemNameId(message.paddockItemDescription[i].objecttGID) ..
                                    " avec une quantité de : 1"

                        )
                        --global:printSuccess("9 "..dicoindexid)
                        table.insert(objets[dicoindex].uid, localuid[i])
                        objets[dicoindex].qtt = objets[dicoindex].qtt + 1
                    end
                   -- global:printSuccess("7 "..dicoindexid)

                end


           
            
              end

    --global:printMessage("L8")
        end

--global:printSuccess("3 "..#message.paddockItemDescription)
                READ_UPDATE = true
            openinterface()
             developer:suspendScriptUntil("ExchangeStartOkMountMessage",2000,false)
             closeinterface()


              if
                (objets[1].qtt < 5 or objets[2].qtt < 5 or objets[3].qtt < 5 or objets[4].qtt < 5 or objets[5].qtt < 5 or
                    objets[6].qtt < 5)
             then
                global:printError(
                    "[Erreur] Mauvaise quantité d'objets merci de verifier que vous disposez bien d'au moins 5 objets par type et qu'ils sont utilisables."
                )
                --global:printSuccess(table.unpack(objectdictionary[1].id))
                for i = 1, #objets do
                    global:printError(objets[i].qtt)
                end
                global:finishScript()
            end
            

global:printSuccess("Actualisation terminé")
end

function wait(seconds)
    local start = os.time()
    repeat
    until os.time() > start + seconds
end

function idmounttostring(id)
    if (id == 100) then
        return ("Muldo Emeraude")
    elseif (id == 99) then
        return ("Muldo Prune")
    elseif (id == 98) then
        return ("Muldo Turquoise")
    elseif (id == 97) then
        return ("Muldo Ivoire")
    elseif (id == 96) then
        return ("Muldo Amande")
    elseif (id == 95) then
        return ("Muldo Roux")
    elseif (id == 94) then
        return ("Muldo Doré")
    elseif (id == 93) then
        return ("Muldo Pourpre")
    elseif (id == 92) then
        return ("Muldo Indigo")
    elseif (id == 91) then
        return ("Muldo Ebène")
    elseif (id == 90) then
        return ("Muldo Orchidée")
    elseif (id == 93) then
        return ("Muldo Amande")
    elseif (id == 101) then
        return ("Muldo Doré et Pourpre")
    elseif (id == 102) then
        return ("Muldo Indigo et Pourpre")
    elseif (id == 103) then
        return ("Muldo Ebène et Pourpre")
    elseif (id == 104) then
        return ("Muldo Orchidée et Pourpre")
    elseif (id == 105) then
        return ("Muldo Doré et Orchidée")
    elseif (id == 106) then
        return ("Muldo Indigo et Orchidée")
    elseif (id == 107) then
        return ("Muldo Ebène et Orchidée")
    elseif (id == 108) then
        return ("Muldo Doré et Indigo")
    elseif (id == 109) then
        return ("Muldo Ebène et Indigo")
    elseif (id == 110) then
        return ("Muldo Doré et Ebène")
    elseif (id == 111) then
        return ("Muldo Roux et Pourpre")
    elseif (id == 112) then
        return ("Muldo Roux et Orchidée")
    elseif (id == 113) then
        return ("Muldo Roux et Indigo")
    elseif (id == 114) then
        return ("Muldo Roux et Ebène")
    elseif (id == 115) then
        return ("Muldo Roux et Doré")
    elseif (id == 116) then
        return ("Muldo Roux et Amande")
    elseif (id == 117) then
        return ("Muldo Pourpre et Amande")
    elseif (id == 118) then
        return ("Muldo Orchidée et Amande")
    elseif (id == 119) then
        return ("Muldo Indigo et Amande")
    elseif (id == 120) then
        return ("Muldo Ebène et Amande")
    elseif (id == 121) then
        return ("Muldo Doré et Amande")
    elseif (id == 122) then
        return ("Muldo Pourpre et Ivoire")
    elseif (id == 123) then
        return ("Muldo Orchidée et Ivoire")
    elseif (id == 124) then
        return ("Muldo Indigo et Ivoire")
    elseif (id == 125) then
        return ("Muldo Ebène et Ivoire")
    elseif (id == 126) then
        return ("Muldo Doré et Ivoire")
    elseif (id == 127) then
        return ("Muldo Roux et Ivoire")
    elseif (id == 138) then
        return ("Muldo Amande et Ivoire")
    elseif (id == 139) then
        return ("Muldo Turquoise et Ivoire")
    elseif (id == 140) then
        return ("Muldo Turquoise et Pourpre")
    elseif (id == 141) then
        return ("Muldo Turquoise et Indigo")
    elseif (id == 142) then
        return ("Muldo Turquoise et Ebène")
    elseif (id == 143) then
        return ("Muldo Turquoise et Roux")
    elseif (id == 144) then
        return ("Muldo Turquoise et Amande")
    elseif (id == 145) then
        return ("Muldo Turquoise et Doré")
    elseif (id == 146) then
        return ("Muldo Prune et Pourpre")
    elseif (id == 147) then
        return ("Muldo Prune et Orchidée")
    elseif (id == 148) then
        return ("Muldo Prune et Indigo")
    elseif (id == 149) then
        return ("Muldo Prune et Ebène")
    elseif (id == 150) then
        return ("Muldo Prune et Doré")
    elseif (id == 151) then
        return ("Muldo Prune et Roux")
    elseif (id == 152) then
        return ("Muldo Prune et Amande")
    elseif (id == 153) then
        return ("Muldo Prune et Ivoire")
    elseif (id == 154) then
        return ("Muldo Prune et Turquoise")
    elseif (id == 155) then
        return ("Muldo Prune et Emeraude")
    elseif (id == 156) then
        return ("Muldo Pourpre et Emeraude")
    elseif (id == 157) then
        return ("Muldo Orchidée et Emeraude")
    elseif (id == 158) then
        return ("Muldo Indigo et Emeraude")
    elseif (id == 159) then
        return ("Muldo Ebène et Emeraude")
    elseif (id == 160) then
        return ("Muldo Doré et Emeraude")
    elseif (id == 161) then
        return ("Muldo Roux et Emeraude")
    elseif (id == 162) then
        return ("Muldo Amande et Emeraude")
    elseif (id == 163) then
        return ("Muldo Ivoire et Emeraude")
    elseif (id == 164) then
        return ("Muldo Turquoise et Emeraude")
    elseif (id == 165) then
        return ("Muldo Turquoise et Orchidée")
    elseif (id == 167) then
        return ("Muldo Doré Sauvage")
    elseif (id == 168) then
        return ("Muldo Pourpre Sauvage")
    elseif (id == 169) then
        return ("Muldo Indigo Sauvage")
    elseif (id == 170) then
        return ("Muldo Ebène Sauvage")
    elseif (id == 171) then
        return ("Muldo Orchidée Sauvage")
    elseif (id == 1) then
        return ("Dragodinde Amande Sauvage")
    elseif (id == 3) then
        return ("Dragodinde Ebène")
    elseif (id == 6) then
        return ("Dragodinde Rousse Sauvage")
    elseif (id == 9) then
        return ("Dragodinde Ebène et Ivoire")
    elseif (id == 10) then
        return ("Dragodinde Rousse")
    elseif (id == 11) then
        return ("Dragodinde Ivoire et Rousse")
    elseif (id == 12) then
        return ("Dragodinde Ebène et Rousse")
    elseif (id == 15) then
        return ("Dragodinde Turquoise")
    elseif (id == 16) then
        return ("Dragodinde Ivoire")
    elseif (id == 17) then
        return ("Dragodinde Indigo")
    elseif (id == 18) then
        return ("Dragodinde Dorée")
    elseif (id == 19) then
        return ("Dragodinde Pourpre")
    elseif (id == 20) then
        return ("Dragodinde Amande")
    elseif (id == 21) then
        return ("Dragodinde Emeraude")
    elseif (id == 22) then
        return ("Dragodinde Orchidée")
    elseif (id == 23) then
        return ("Dragodinde Prune")
    elseif (id == 33) then
        return ("Dragodinde Amande et Dorée")
    elseif (id == 34) then
        return ("Dragodinde Amande et Ebène")
    elseif (id == 35) then
        return ("Dragodinde Amande et Emeraude")
    elseif (id == 36) then
        return ("Dragodinde Amande et Indigo")
    elseif (id == 37) then
        return ("Dragodinde Amande et Ivoire")
    elseif (id == 38) then
        return ("Dragodinde Amande et Rousse")
    elseif (id == 39) then
        return ("Dragodinde Amande et Turquoise")
    elseif (id == 40) then
        return ("Dragodinde Amande et Orchidée")
    elseif (id == 41) then
        return ("Dragodinde Amande et Pourpre")
    elseif (id == 42) then
        return ("Dragodinde Dorée et Ebène")
    elseif (id == 43) then
        return ("Dragodinde Dorée et Emeraude")
    elseif (id == 44) then
        return ("Dragodinde Dorée et Indigo")
    elseif (id == 45) then
        return ("Dragodinde Dorée et Ivoire")
    elseif (id == 46) then
        return ("Dragodinde Dorée et Rousse")
    elseif (id == 47) then
        return ("Dragodinde Dorée et Turquoise")
    elseif (id == 48) then
        return ("Dragodinde Dorée et Orchidée")
    elseif (id == 49) then
        return ("Dragodinde Dorée et Pourpre")
    elseif (id == 50) then
        return ("Dragodinde Ebène et Emeraude")
    elseif (id == 51) then
        return ("Dragodinde Ebène et Indigo")
    elseif (id == 52) then
        return ("Dragodinde Ebène et Turquoise")
    elseif (id == 53) then
        return ("Dragodinde Ebène et Orchidée")
    elseif (id == 54) then
        return ("Dragodinde Ebène et Pourpre")
    elseif (id == 55) then
        return ("Dragodinde Emeraude et Indigo")
    elseif (id == 56) then
        return ("Dragodinde Emeraude et Ivoire")
    elseif (id == 57) then
        return ("Dragodinde Emeraude et Rousse")
    elseif (id == 58) then
        return ("Dragodinde Emeraude et Turquoise")
    elseif (id == 59) then
        return ("Dragodinde Emeraude et Orchidée")
    elseif (id == 60) then
        return ("Dragodinde Emeraude et Pourpre")
    elseif (id == 61) then
        return ("Dragodinde Indigo et Ivoire")
    elseif (id == 62) then
        return ("Dragodinde Indigo et Rousse")
    elseif (id == 63) then
        return ("Dragodinde Indigo et Turquoise")
    elseif (id == 64) then
        return ("Dragodinde Indigo et Orchidée")
    elseif (id == 65) then
        return ("Dragodinde Indigo et Pourpre")
    elseif (id == 66) then
        return ("Dragodinde Ivoire et Turquoise")
    elseif (id == 67) then
        return ("Dragodinde Ivoire et Orchidée")
    elseif (id == 68) then
        return ("Dragodinde Ivoire et Pourpre")
    elseif (id == 69) then
        return ("Dragodinde Turquoise et Rousse")
    elseif (id == 70) then
        return ("Dragodinde Orchidée et Rousse")
    elseif (id == 71) then
        return ("Dragodinde Pourpre et Rousse")
    elseif (id == 72) then
        return ("Dragodinde Turquoise et Orchidée")
    elseif (id == 73) then
        return ("Dragodinde Turquoise et Pourpre")
    elseif (id == 74) then
        return ("Dragodinde Dorée Sauvage")
    elseif (id == 75) then
        return ("Dragodinde Squelette")
    elseif (id == 76) then
        return ("Dragodinde Orchidée et Pourpre")
    elseif (id == 77) then
        return ("Dragodinde Prune et Amande")
    elseif (id == 78) then
        return ("Dragodinde Prune et Dorée")
    elseif (id == 79) then
        return ("Dragodinde Prune et Ebène")
    elseif (id == 80) then
        return ("Dragodinde Prune et Emeraude")
    elseif (id == 82) then
        return ("Dragodinde Prune et Indigo")
    elseif (id == 83) then
        return ("Dragodinde Prune et Ivoire")
    elseif (id == 84) then
        return ("Dragodinde Prune et Rousse")
    elseif (id == 85) then
        return ("Dragodinde Prune et Turquoise")
    elseif (id == 86) then
        return ("Dragodinde Prune et Orchidée")
    elseif (id == 87) then
        return ("Dragodinde Prune et Pourpre")
    elseif (id == 88) then
        return ("Dragodinde en armure")
    elseif (id == 89) then
        return ("Dragodinde à Plumes")
    else
        return ("Id monture introuvable")
    end
end

function attitudetostring(id)
if(id == 1  ) then
 return ("S'asseoir")
elseif(id == 2 ) then
 return ("Faire un signe de la main")
elseif(id == 3  ) then
 return ("Applaudir")
elseif(id == 4  ) then
 return ("Se mettre en colère")
elseif(id == 5  ) then
 return ("Montrer sa peur")
elseif(id == 6  ) then
 return ("Brandir son arme")
elseif(id == 7  ) then
 return ("Jouer de la flûte")
elseif(id == 8  ) then
 return ("Lâcher les gaz")
elseif(id == 9  ) then
 return ("Saluer")
elseif(id == 10 ) then
 return ("Faire un bisou")
elseif(id == 11 ) then
 return ("Pierre")
elseif(id == 12 ) then
 return ("Feuille")
elseif(id == 13 ) then
 return ("Ciseaux")
elseif(id == 14 ) then
 return ("Croiser les bras")
elseif(id == 15 ) then
 return ("Montrer du doigt")
elseif(id == 16 ) then
 return (". . . . .")
elseif(id == 17 ) then
 return ("Manger")
elseif(id == 18 ) then
 return ("Boire une bière")
elseif(id == 19 ) then
 return ("S allonger")
elseif(id == 21 ) then
 return ("Champion")
elseif(id == 22 ) then
 return ("Aura de puissance")
elseif(id == 23 ) then
 return ("Aura vampyrique")
elseif(id == 24 ) then
 return ("Rire")
elseif(id == 25 ) then
 return ("Refuser")
elseif(id == 26 ) then
 return ("Pleurer")
elseif(id == 27 ) then
 return ("Danser")
elseif(id == 28 ) then
 return ("Jouer de la guitare")
elseif(id == 29 ) then
 return ("Jongler")
elseif(id == 30 ) then
 return ("Lire un livre")
elseif(id == 32 ) then
 return ("Joie")
elseif(id == 33 ) then
 return ("Trace")
elseif(id == 34 ) then
 return ("Mains sur les hanches")
elseif(id == 35 ) then
 return ("Fleurs")
elseif(id == 36 ) then
 return ("Être frigorifié")
elseif(id == 37 ) then
 return ("Éternuer")
elseif(id == 38 ) then
 return ("Manolias")
elseif(id == 39 ) then
 return ("Avoir froid")
elseif(id == 40 ) then
 return ("Aura bleutée de l ornithorynque ancestral")
elseif(id == 41 ) then
 return ("Bâiller")
elseif(id == 42 ) then
 return ("Sautiller")
elseif(id == 43 ) then
 return ("Lever le pouce")
elseif(id == 44 ) then
 return ("Baisser le pouce")
elseif(id == 46 ) then
 return ("Affamé")
elseif(id == 48 ) then
 return ("Piou")
elseif(id == 49 ) then
 return ("Coucou")
elseif(id == 50 ) then
 return ("Jouer aux cartes")
elseif(id == 51 ) then
 return ("Super-héros")
elseif(id == 52 ) then
 return ("Supplier")
elseif(id == 55 ) then
 return ("Aura de Nelween")
elseif(id == 56 ) then
 return ("Offrir un cadeau")
elseif(id == 57 ) then
 return ("Téméraire")
elseif(id == 58 ) then
 return ("S agenouiller")
elseif(id == 61 ) then
 return ("Boire une potion")
elseif(id == 63 ) then
 return ("Lézard")
elseif(id == 64 ) then
 return ("Stok")
elseif(id == 65 ) then
 return ("Salut Vulkain")
elseif(id == 66 ) then
 return ("Se prosterner")
elseif(id == 67 ) then
 return ("Avoir chaud")
elseif(id == 68 ) then
 return ("Gonfler ses muscles")
elseif(id == 69 ) then
 return ("Lire une carte")
elseif(id == 70 ) then
 return ("Ogrine")
elseif(id == 71 ) then
 return ("Poing levé")
elseif(id == 72 ) then
 return ("Pied de nez")
elseif(id == 73 ) then
 return ("Attirer l attention")
elseif(id == 74 ) then
 return ("Motus")
elseif(id == 75 ) then
 return ("Se frotter les mains")
elseif(id == 76 ) then
 return ("Facepaume")
elseif(id == 77 ) then
 return ("Garde-à-vous")
elseif(id == 78 ) then
 return ("Ola")
elseif(id == 79 ) then
 return ("Se frapper le front")
elseif(id == 80 ) then
 return ("Mains derrière le dos")
elseif(id == 81 ) then
 return ("Kamarena")
elseif(id == 82 ) then
 return ("Siffler")
elseif(id == 84 ) then
 return ("Longue-Vue")
elseif(id == 85 ) then
 return ("Loupe")
elseif(id == 87 ) then
 return ("Huer")
elseif(id == 88 ) then
 return ("Encourager")
elseif(id == 89 ) then
 return ("Se boucher les oreilles")
elseif(id == 90 ) then
 return ("Halouine")
elseif(id == 91 ) then
 return ("Fiole de Chichala")
elseif(id == 92 ) then
 return ("Écrire")
elseif(id == 93 ) then
 return ("Défourailler son arme")
elseif(id == 94 ) then
 return ("Tirer sa langue")
elseif(id == 95 ) then
 return ("Kramouflage")
elseif(id == 96 ) then
 return ("Brandir son bouclier")
elseif(id == 97 ) then
 return ("Étendard de Guilde")
elseif(id == 98 ) then
 return ("Étendard d Alliance")
elseif(id == 99 ) then
 return ("Clepsydre")
elseif(id == 100) then
 return ("Eau de la Fontaine de Noffoub")
elseif(id == 101) then
 return ("Dévorer une Cawotte")
elseif(id == 102) then
 return ("Faire peur")
elseif(id == 103) then
 return ("Offrir un gâteau")
elseif(id == 104) then
 return ("Roboculaire")
elseif(id == 105) then
 return ("Boxer")
elseif(id == 106) then
 return ("Agiter le drapeau blanc")
elseif(id == 107) then
 return ("Cracheur de Feu")
elseif(id == 108) then
 return ("S envoler")
elseif(id == 109) then
 return ("Ver de terre")
elseif(id == 110) then
 return ("Phorrer le sol")
elseif(id == 111) then
 return ("Renifler le sol")
elseif(id == 112) then
 return ("Chercher un trésor")
elseif(id == 113) then
 return ("Localiser un portail")
elseif(id == 114) then
 return ("Ouvrir un portail de poche")
elseif(id == 115) then
 return ("Guérisseur")
elseif(id == 116) then
 return ("Croque-mort")
elseif(id == 117) then
 return ("Richissime")
elseif(id == 118) then
 return ("Rugir")
elseif(id == 119) then
 return ("Criminel")
elseif(id == 120) then
 return ("Explosif")
elseif(id == 121) then
 return ("Intemporel")
elseif(id == 122) then
 return ("Transcendant")
elseif(id == 123) then
 return ("Hanter (familier)")
elseif(id == 124) then
 return ("Se dandiner (familier)")
elseif(id == 125) then
 return ("Piétiner (familier)")
elseif(id == 126) then
 return ("Enflammer (familier)")
elseif(id == 127) then
 return ("Se protéger")
elseif(id == 128) then
 return ("Peindre")
elseif(id == 129) then
 return ("Sylvestre")
elseif(id == 130) then
 return ("Colère de Bolgrot")
elseif(id == 131) then
 return ("Explosion de couleurs")
elseif(id == 132) then
 return ("Vaporeux")
elseif(id == 133) then
 return ("S abriter sous un parasol")
elseif(id == 134) then
 return ("Pêcheur")
elseif(id == 135) then
 return ("Balistique")
elseif(id == 136) then
 return ("Éthylique")
elseif(id == 137) then
 return ("Élémentaire")
elseif(id == 138) then
 return ("Duelliste")
elseif(id == 139) then
 return ("Déployer les ailes bontariennes")
elseif(id == 140) then
 return ("Déployer les ailes brâkmariennes")
elseif(id == 141) then
 return ("Jouer à pile ou face")
elseif(id == 142) then
 return ("Chanceux")
elseif(id == 143) then
 return ("Sanguinolent")
elseif(id == 144) then
 return ("Bienfaisant")
elseif(id == 146) then
 return ("Psychotique")
elseif(id == 147) then
 return ("Animal")
elseif(id == 148) then
 return ("Indestructible")
elseif(id == 149) then
 return ("Gonfler un ballon")
elseif(id == 150) then
 return ("Expérimenter")
end
end


-- END-ENCODE --



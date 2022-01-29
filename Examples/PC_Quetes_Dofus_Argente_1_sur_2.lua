-----------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------
--------------------------------  TRAJET DÉCHIFRÉ AVEC NoTrade --------------------------------------
------------------------ CREATED BY Pharwell (Discord : Pharwell#2714) ------------------------------
-------------------- NoTrade DISCORD SERVER: https://discord.gg/EYJXKVryNm --------------------------
---- https://forum.cheat-gam3.com/threads/notrade-v1-1-cest-fini-le-monopole-des-trajets.207876/ ----
-----------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------







COMBAT17 = 1



DELAY = 2000



CHEMIN = character:name().."_dofus_argenté_partie_1.lua"



function move()

    if ETAPE == nil then

        file = io.open(CHEMIN, "r")

        if file == nil then

            file = io.open(CHEMIN, "w")

            file:write(0)

            io.close(file)

        else

            ETAPE = file:read()

            io.close(file)

        end

    end

    lecture()

    if ETAPE == 0 then

        return{

            { map = "153092354", door = "409" },

            { map = "152044547", path = "right", custom = increment},--IOP

            { map = "152043521", path = "right", custom = increment},--CRA

            { map = "152045573", path = "right", custom = increment},--SACRIEUR

            { map = "152046593", path = "right", custom = increment},--ENIRIPSA

            { map = "152046599", path = "right", custom = increment},--SRAM

            { map = "152044553", path = "right", custom = increment},--OUGINACK

            { map = "152043523", path = "right", custom = increment},--OSAMODA

            { map = "152046595", path = "right", custom = increment},--ENUTROF

            { map = "152044545", path = "right", custom = increment},--ECAFLIP

            { map = "152045575", path = "right", custom = increment},--STEAMER

            { map = "152045571", path = "right", custom = increment},--FECA

            { map = "152043529", path = "right", custom = increment},--HUPPERMAGE

            { map = "152043527", path = "right", custom = increment},--ZOBAL

            { map = "152043525", path = "right", custom = increment},--PANDAWA

            { map = "152045569", path = "right", custom = increment},--ELIOTOPE

            { map = "152046597", path = "right", custom = increment},--SADIDA

            { map = "152044549", path = "right", custom = increment},--ROUBLARD

            { map = "152044551", path = "right", custom = increment },--XELOR

        }

    elseif ETAPE == 1 then

        if inventory:itemCount(2478) < 1 then

            return{

                { map = "154010883", path = "top" },

                { map = "-2,-4", path = "right|top", fight = true },

                { map = "-2,-5", path = "left|right|top|bottom", fight = true },

                { map = "-3,-5", path = "right|top", fight = true },

                { map = "-3,-6", path = "right|bottom", fight = true },

                { map = "-2,-6", path = "right|left|bottom", fight = true },

                { map = "-1,-6", path = "left|bottom", fight = true },

                { map = "-1,-5", path = "right|top|left|bottom", fight = false },

                { map = "-1,-4", path = "top|left", fight = true },

                { map = "0,-4", path = "top|left", fight = true },

                { map = "0,-5", path = "left|bottom", fight = true },

            }

        elseif inventory:itemCount(2478) >= 1 then

            return{

                { map = "-3,-6", path = "right" },

                { map = "-2,-6", path = "right" },

                { map = "-1,-6", path = "bottom" },

                { map = "-3,-5", path = "right" },

                { map = "-2,-5", path = "right" },

                { map = "-1,-5", path = "right" },

                { map = "0,-5", path = "bottom" },

                { map = "-2,-3", path = "top" },

                { map = "-2,-4", path = "right" },

                { map = "-1,-4", path = "right" },

                { map = "0,-4", path = "right", custom = increment },

            }

        end

    elseif ETAPE == 2 then

        if inventory:itemCount(2476) < 1 then

            return{

                { map = "-3,-3", path = "right" },

                { map = "-2,-3", path = "right" },

                { map = "-1,-3", path = "right" },

                { map = "0,-3", path = "right" },

                { map = "1,-3", path = "top" },

                { map = "1,-5", path = "right|bottom", fight = true },

                { map = "2,-5", path = "right|left|bottom", fight = true },

                { map = "3,-5", path = "left|bottom", fight = true },

                { map = "2,-4", path = "right|left|top", fight = true },

                { map = "3,-4", path = "right|left|top", fight = true },

                { map = "4,-4", path = "left", fight = true },

                { map = "1,-4", path = "right|top", fight = true },

            }

        elseif inventory:itemCount(2476) >= 1 then

            return{

                { map = "1,-5", path = "bottom" },

                { map = "2,-5", path = "bottom" },

                { map = "3,-5", path = "bottom" },

                { map = "4,-4", path = "left" },

                { map = "3,-4", path = "left" },

                { map = "2,-4", path = "left" },

                { map = "1,-4", path = "bottom", custom = increment },

            }

        end

    elseif ETAPE == 3 then

        if inventory:itemCount(2473) < 1 then

            return{

                { map = "-2,-3", path = "right" },

                { map = "-1,-3", path = "right" },

                { map = "0,-3", path = "right" },

                { map = "2,-3", path = "right|left", fight = true },

                { map = "1,-3", path = "right", fight = true },

                { map = "3,-3", path = "left", fight = true },

            }

        elseif inventory:itemCount(2473) >= 1 then

            return{

                { map = "3,-3", path = "left" },

                { map = "2,-3", path = "left" },

                { map = "1,-3", path = "bottom", custom = increment },

            }

        end

    elseif ETAPE == 4 then

        if inventory:itemCount(2475) < 1 then

            return{

                { map = "-2,-3", path = "right" },

                { map = "-1,-3", path = "right" },

                { map = "0,-3", path = "right" },

                { map = "1,-3", path = "bottom" },

                { map = "1,-2", path = "right|bottom", fight = true },

                { map = "2,-2", path = "right|left|bottom", fight = true },

                { map = "3,-2", path = "left|bottom", fight = true },

                { map = "2,-1", path = "right|left|top|bottom", fight = true },

                { map = "1,-1", path = "right|top|bottom", fight = true },

                { map = "1,0", path = "right|top", fight = true },

                { map = "2,0", path = "left|top", fight = true },

                { map = "3,-1", path = "left|top", fight = true },

            }

        elseif inventory:itemCount(2475) >= 1 then

            return{

                { map = "1,-2", path = "bottom" },

                { map = "2,-2", path = "bottom" },

                { map = "3,-2", path = "bottom" },

                { map = "1,-1", path = "right" },

                { map = "2,-1", path = "right" },

                { map = "2,0", path = "top" },

                { map = "1,0", path = "top" },

                { map = "3,-1", path = "bottom", custom = increment },

            }

        end

    elseif ETAPE == 5 then

        if inventory:itemCount(2474) < 1 then

            return{

                { map = "-2,-3", path = "right" },

                { map = "-1,-3", path = "right" },

                { map = "0,-3", path = "right" },

                { map = "1,-3", path = "right" },

                { map = "2,-3", path = "right" },

                { map = "3,-3", path = "bottom" },

                { map = "3,-2", path = "bottom" },

                { map = "3,-1", path = "bottom" },

                { map = "3,0", path = "right|bottom", fight = true },  

                { map = "3,1", path = "right|top", fight = true },  

                { map = "4,1", path = "left|top", fight = true },  

                { map = "4,0", path = "right|left|top|bottom", fight = true },  

                { map = "4,-1", path = "right|bottom", fight = true },  

                { map = "5,-1", path = "left|bottom", fight = true },  

                { map = "5,0", path = "left|top", fight = true },  

            }

        elseif inventory:itemCount(2474) >= 1 then

            return{

                { map = "5,-1", path = "left" },

                { map = "5,0", path = "left" },

                { map = "4,0", path = "left" },

                { map = "4,-1", path = "bottom" },

                { map = "4,1", path = "left" },

                { map = "3,1", path = "top" },

                { map = "3,0", path = "top" },

                { map = "3,-1", path = "top" },

                { map = "3,-2", path = "left" },

                { map = "2,-2", path = "left" },

                { map = "1,-2", path = "left", custom = increment },

            }

        end

    elseif ETAPE == 6 then

        if inventory:itemCount(2477) < 1 then

            return{

                { map = "-2,-3", path = "bottom" },

                { map = "0,-2", path = "left", fight = true },

                { map = "-1,-2", path = "right|left|bottom", fight = true },

                { map = "-2,-2", path = "right|bottom", fight = true },

                { map = "-2,-1", path = "right|top|bottom", fight = true },

                { map = "-1,-1", path = "left|top", fight = true },

                { map = "-2,0", path = "right|top", fight = true },

                { map = "-1,0", path = "left", fight = true },

            }

        elseif inventory:itemCount(2477) >= 1 then

            return{

                { map = "-1,-6", path = "bottom" },

                { map = "-1,0", path = "left" },

                { map = "-2,0", path = "top" },

                { map = "-1,-1", path = "top" },

                { map = "-2,-1", path = "top" },

                { map = "0,-2", path = "left" },

                { map = "-1,-2", path = "left" },

                { map = "-2,-2", path = "top", custom = increment },

            }

        end

    elseif ETAPE == 7 then

        if character:level() < 12 then

            return{

                { map = "-2,-3", path = "right" },

                { map = "-1,-3", path = "right" },

                { map = "0,-3", path = "right" },

                { map = "1,-3", path = "right" },

                { map = "2,-3", path = "right" },

                { map = "3,-3", path = "bottom" },

                { map = "3,-2", path = "bottom" },

                { map = "3,-1", path = "bottom" },

                { map = "3,0", path = "right|bottom", fight = true },  

                { map = "3,1", path = "right|top", fight = true },  

                { map = "4,1", path = "left|top", fight = true },  

                { map = "4,0", path = "right|left|top|bottom", fight = true },  

                { map = "4,-1", path = "right|bottom", fight = true },  

                { map = "5,-1", path = "left|bottom", fight = true },  

                { map = "5,0", path = "left|top", fight = true },  

            }

        elseif character:level() >= 12 then

            return{

                { map = "-2,-3", path = "left" },

                { map = "-1,-3", path = "left" },

                { map = "0,-3", path = "left" },

                { map = "1,-3", path = "left" },

                { map = "2,-3", path = "left" },

                { map = "3,-3", path = "left" },

                { map = "4,1", path = "top" },

                { map = "3,1", path = "top" },

                { map = "5,0", path = "left" },

                { map = "5,-1", path = "left" },

                { map = "4,-1", path = "bottom" },

                { map = "4,0", path = "left" },

                { map = "3,0", path = "top" },

                { map = "3,-1", path = "top" },

                { map = "3,-2", path = "top" },

                { map = "154010883", custom = fin_de_la_preparation },

            }

        end

    elseif ETAPE == 8 then

        return {

            { map = "152044547", custom = increment, door = "262" },--IOP

            { map = "152043521", custom = increment, door = "262" },--CRA

            { map = "152045573", custom = increment, door = "262" },--SACRIEUR

            { map = "152046593", custom = increment, door = "262" },--ENIRIPSA

            { map = "152046599", custom = increment, door = "262" },--SRAM

            { map = "152044553", custom = increment, door = "262" },--OUGINACK

            { map = "152043523", custom = increment, door = "262" },--OSAMODA

            { map = "152046595", custom = increment, door = "262" },--ENUTROF

            { map = "152044545", custom = increment, door = "262" },--ECAFLIP

            { map = "152045575", custom = increment, door = "262" },--STEAMER

            { map = "152045571", custom = increment, door = "262" },--FECA

            { map = "152043529", custom = increment, door = "262" },--HUPPERMAGE

            { map = "152043527", custom = increment, door = "262" },--ZOBAL

            { map = "152043525", custom = increment, door = "262" },--PANDAWA

            { map = "152045569", custom = increment, door = "262" },--ELIOTOPE

            { map = "152046597", custom = increment, door = "262" },--SADIDA

            { map = "152044549", custom = increment, door = "262" },--ROUBLARD

            { map = "152044551", custom = increment, door = "262" },--XELOR

        }

    elseif ETAPE == 9 then

        return{

            { map = "153092354", custom = quete1_1 },

            { map = "153093380", custom = quete1_2 },

        }

    elseif ETAPE == 10 then

        return {

            { map = "153092354", custom = quete2_1 },

            { map = "153092356", custom = quete2_2 },

        }

    elseif ETAPE == 11 then

        return {

            { map = "153092356", custom = quete2_3 },

            { map = "153092354", custom = quete2_4 },



            { map = "152044547", custom = quete3_1 },--IOP

            { map = "152043521", custom = quete3_1 },--CRA

            { map = "152045573", custom = quete3_1 },--SACRIEUR

            { map = "152046593", custom = quete3_1 },--ENIRIPSA

            { map = "152046599", custom = quete3_1 },--SRAM

            { map = "152044553", custom = quete3_1 },--OUGINACK

            { map = "152043523", custom = quete3_1 },--OSAMODA

            { map = "152046595", custom = quete3_1 },--ENUTROF

            { map = "152044545", custom = quete3_1 },--ECAFLIP

            { map = "152045575", custom = quete3_1 },--STEAMER

            { map = "152045571", custom = quete3_1 },--FECA

            { map = "152043529", custom = quete3_1 },--HUPPERMAGE

            { map = "152043527", custom = quete3_1 },--ZOBAL

            { map = "152043525", custom = quete3_1 },--PANDAWA

            { map = "152045569", custom = quete3_1 },--ELIOTOPE

            { map = "152046597", custom = quete3_1 },--SADIDA

            { map = "152044549", custom = quete3_1 },--ROUBLARD

            { map = "152044551", custom = quete3_1 },--XELOR



            { map = "154010883", custom = quete3_2 },

            { map = "154010371", custom = quete4_1 },

            { map = "153878787", custom = quete4_2 },

            { map = "153357316", custom = quete4_3 },

        }

    elseif ETAPE == 12 then

        return {

            { map = "153878787", custom = quete4_4 },

            { map = "153879299", custom = quete4_5 },

            { map = "1,-4", path = "left" },

            { map = "153878788", door = "315" },

            { map = "153356294", custom = quete4_6 },

        }

    elseif ETAPE == 13 then

        return {

            { map = "153878788", path = "left" },

            { map = "154010372", path = "bottom" },

            { map = "154010371", custom = quete4_7 },

            { map = "0,-3", path = "right" },

            { map = "1,-3", path = "right" },

            { map = "153879811", door = "285" },

            { map = "153356296", custom = quete4_8 },

        }

    elseif ETAPE == 14 then

        return {

            { map = "153879811", path = "bottom" },

            { map = "2,-2", path = "bottom" },

            { map = "2,-1", custom = quete5_1 },

        }

    elseif ETAPE == 15 then

        return {

            { map = "2,-1", path = "left" },

            { map = "1,-1", path = "top" },

            { map = "1,-2", path = "left" },

            { map = "0,-2", path = "top" },

            { map = "153878787", door = "326" },

            { map = "153357316", custom = quete5_2 },

        }       

    elseif ETAPE == 16 then

        return {

            { map = "153878787", path = "left" },

            { map = "-1,-3", path = "left" },

            { map = "-2,-3", custom = quete5_3 },

        }

    elseif ETAPE == 17 then

        return {

            { map = "-2,-4", path = "right" },

            { map = "-1,-4", path = "right" },

            { map = "0,-4", path = "right" },

            { map = "1,-4", path = "right" },

            { map = "2,-4", path = "bottom" },

            { map = "153879811", door = "285" },

            { map = "153356296", custom = quete5_4 },

        }

    elseif ETAPE == 18 then

        return {

            { map = "153879811", path = "bottom" },

            { map = "2,-2", path = "bottom" },

            { map = "2,-1", path = "bottom" },

            { map = "2,0", path = "right" },

            { map = "3,0", path = "right" },

            { map = "4,0", path = "right" },

            { map = "5,0", path = "top" },

            { map = "5,-1", custom = quete6_1 },

            { map = "153881088", door = "284" },

            { map = "152836096", custom = quete6_2 },

        }

    elseif ETAPE == 19 then

        return {

            { map = "152836096", custom = quete6_3 },

            { map = "5,-1", path = "bottom" },

            { map = "5,0", path = "left" },

            { map = "4,0", path = "left" },

            { map = "3,0", path = "top" },

            { map = "3,-1", path = "left" },

            { map = "2,-1", path = "top" },

            { map = "2,-2", path = "top" },

            { map = "153879811", door = "285" },

            { map = "153356296", custom = quete6_4 },

        }

    elseif ETAPE == 20 then

        return {

            { map = "153879811", path = "right" },

            { map = "3,-3", path = "right" },

            { map = "4,-3", custom = quete7_1 },

        }

    elseif ETAPE == 21 then

        return {

            { map = "192416776", custom = quete7_2 },

            { map = "4,-3", path = "left" },

            { map = "3,-3", path = "left" },

            { map = "2,-3", path = "left" },

            { map = "1,-3", path = "left" },

            { map = "0,-3", path = "left" },

            { map = "-1,-3", custom = quete8_1 },

            { map = "-1,-4", path = "top" },

            { map = "-1,-5", path = "right" },

            { map = "0,-5", path = "right" },

            { map = "1,-5", path = "right" },

            { map = "2,-5", custom = quete8_2 },

        }

    elseif ETAPE == 22 then

        return {

            { map = "1,-5", path = "left" },

            { map = "0,-5", path = "left" },

            { map = "-1,-5", path = "bottom" },

            { map = "-1,-4", path = "bottom" },

            { map = "-1,-3", custom = quete8_3 },

        }

    elseif ETAPE == 23 then

        return {

            { map = "-2,-3", path = "bottom" },

            { map = "-2,-2", custom = quete9_1 },

            { map = "-1,-2", path = "right" },

            { map = "0,-2", path = "bottom" },

            { map = "0,-1", path = "right" },

            { map = "1,-1", custom = quete9_2},

            { map = "1,-2", path = "top" },

            { map = "1,-3", path = "top" },

            { map = "1,-4", path = "top" },

            { map = "1,-5", custom = quete9_3 },

            { map = "0,-5", custom = quete9_4 },

            { map = "0,-4", path = "bottom" },

            { map = "0,-3", custom = quete9_5 },

        }

    elseif ETAPE == 24 then

        return {

            { map = "-1,-3", custom = quete9_6 },

            { map = "-1,-4", path = "top" },

            { map = "-1,-5", path = "top" },

            { map = "-1,-6", custom = quete10_1 },

            { map = "-2,-6", path = "bottom" },

            { map = "-2,-5", path = "bottom" },

            { map = "-2,-4", path = "bottom" },

            { map = "-2,-3", path = "bottom" },

            { map = "-2,-2", path = "bottom" },

            { map = "-2,-1", path = "bottom" },

            { map = "-2,0", path = "right" },

            { map = "-1,0", path = "bottom" },

            { map = "-1,1", custom = quete10_2 },

        }

    elseif ETAPE == 25 then

        return{

            { map = "-1,0", path = "left" }, 

            { map = "-2,0", path = "top" },

            { map = "-2,-1", path = "top" },

            { map = "-2,-2", path = "top" },

            { map = "-2,-3", path = "right" },

            { map = "-1,-3", custom = quete10_3 },

            { map = "-1,-4", path = "right" },

            { map = "153878788", door = "315" },

            { map = "153356294", custom = quete11_1 },

            { map = "153356292", custom = quete11_2 },

        }

    elseif ETAPE == 26 then

        return{

            { map = "153356292", custom = quete11_3 },

            { map = "153356294", custom = quete12_1 },

        }

    elseif ETAPE == 27 then

        condition_12()

        if global:getCountFight() ~= 4 then

            return{

                { map = "153878788", path = "left", fight = true },

                { map = "-1,-4", path = "left", fight = true },

                { map = "-2,-4", path = "top", fight = true },

                { map = "-2,-5", path = "left", fight = true },

                { map = "-3,-5", path = "top", fight = true },

                { map = "-3,-6", path = "right", fight = true },

                { map = "-2,-6", path = "right", fight = true },

                { map = "-1,-6", path = "bottom", fight = true },

                { map = "-1,-5", path = "right", fight = true },

                { map = "0,-5", path = "bottom", fight = true },

            }

        else

            return{

                { map = "-3,-6", path = "right" },

                { map = "-3,-5", path = "right" },

                { map = "-1,-6", path = "bottom" },

                { map = "-2,-6", path = "bottom" },

                { map = "-2,-5", path = "bottom" },

                { map = "-1,-5", path = "bottom" },

                { map = "-2,-4", path = "bottom" },

                { map = "-1,-4", path = "bottom" },

                { map = "0,-5", path = "bottom" },

                { map = "0,-4", path = "bottom" },

                { map = "-2,-3", path = "right" },

                { map = "-1,-3", path = "right" },

                { map = "0,-3", custom = increment, path = "top" },

            }

        end

    elseif ETAPE == 28 then

        return{

            { map = "153878788", door = "315" },

            { map = "153356294", custom = quete13_1 },

        }

    elseif ETAPE == 29 then

        condition_13()

        if global:getCountFight() ~= 3 then

            return{

                { map = "153878788", path = "bottom" },

                { map = "0,-3", path = "bottom" },

                { map = "0,-2", path = "left", fight = true },

                { map = "-1,-2", path = "bottom", fight = true },

                { map = "-1,-1", path = "left", fight = true },

                { map = "-2,-1", path = "top", fight = true },

                { map = "-2,-2", path = "right", fight = true },

            }

        else

            return{

                { map = "-1,-1", path = "top" },

                { map = "-2,-1", path = "top" },

                { map = "-2,-2", path = "top" },

                { map = "-1,-2", path = "top" },

                { map = "0,-2", path = "top" },

                { map = "-2,-3", path = "right" },

                { map = "-1,-3", path = "right" },

                { map = "0,-3", increment, path = "top" },

            }

        end

    elseif ETAPE == 30 then

        return{

            { map = "153878788", door = "315" },

            { map = "153356294", custom = quete14_1 },

        }

    elseif ETAPE == 31 then

        condition_14()

        if global:getCountFight() ~= 4 then

            return{

                { map = "153878788", path = "right" },

                { map = "1,-4", path = "right", fight = true },

                { map = "2,-4", path = "right", fight = true },

                { map = "3,-4", path = "top", fight = true },

                { map = "3,-5", path = "left", fight = true },

                { map = "2,-5", path = "left", fight = true },

                { map = "1,-5", path = "bottom", fight = true },

            }

        else

            return {

                { map = "3,-5", path = "left" },

                { map = "2,-5", path = "left" },

                { map = "1,-5", path = "left" },

                { map = "4,-4", path = "left" },

                { map = "3,-4", path = "left" },

                { map = "2,-4", path = "left" },

                { map = "1,-4", path = "top" },

                { map = "0,-5", custom = increment, path = "bottom" },

            }

        end

    elseif ETAPE == 32 then

        return{

            { map = "153878788", door = "315" },

            { map = "153356294", custom = quete15_1 },

        }

    elseif ETAPE == 33 then

        condition_15()

        if global:getCountFight() ~= 3 then

            return{

                { map = "153878788", path = "bottom" },

                { map = "0,-3", path = "right" },

                { map = "1,-3", path = "bottom" },

                { map = "1,-2", path = "bottom", fight = true },

                { map = "1,-1", path = "bottom", fight = true },

                { map = "1,0", path = "right", fight = true },

                { map = "2,0", path = "top", fight = true },

                { map = "2,-1", path = "right", fight = true },

                { map = "3,-1", path = "top", fight = true },

                { map = "3,-2", path = "left", fight = true },

                { map = "2,-2", path = "left", fight = true },

            }

        else

            return{

                { map = "2,0", path = "top" },

                { map = "1,0", path = "top" },

                { map = "1,-1", path = "top" },

                { map = "2,-1", path = "top" },

                { map = "3,-1", path = "top" },

                { map = "1,-2", path = "top" },

                { map = "3,-2", path = "left" },

                { map = "2,-2", path = "left" },

                { map = "1,-3", path = "top" },

                { map = "1,-4", custom = increment, path = "left" },

            }

        end

    elseif ETAPE == 34 then

        return{

            { map = "153878788", door = "315" },

            { map = "153356294", custom = quete16_1 },

        }

    elseif ETAPE == 35 then

        return{

            { map = "153878788", path = "right" },

            { map = "1,-4", path = "bottom" },

            { map = "1,-3", path = "bottom" },

            { map = "1,-2", path = "bottom" },

            { map = "1,-1", path = "bottom" },

            { map = "1,0", custom = quete16_2 },

        }

    elseif ETAPE == 36 then

        return{

            { map = "1,0", path = "top" },

            { map = "1,-1", path = "top" },

            { map = "1,-2", path = "top" },

            { map = "1,-3", path = "top" },

            { map = "1,-4", path = "left" },

            { map = "153878788", door = "315" },

            { map = "153356294", custom = quete16_3 },

        }

    elseif ETAPE == 37 then

        return{

            { map = "153878788", path = "right" },

            { map = "1,-4", path = "right" },

            { map = "2,-4", path = "right" },

            { map = "3,-4", path = "bottom" },

            { map = "3,-3", path = "bottom" },

            { map = "3,-2", path = "bottom" },

            { map = "3,-1", path = "bottom" },

            { map = "3,0", path = "bottom", fight = true },

            { map = "3,1", path = "right", fight = true },

            { map = "153881090", door = "361"},

            { map = "153356288", custom = quete17_1 },

        }

    elseif ETAPE == 38 then

        return{

            { map = "153356288", path = "410" },

            { map = "153881090", path = "top", fight = true},

            { map = "153881089", path = "top", fight = true},

            { map = "4,-1", path = "right" },

            { map = "5,-1", path = "bottom" },

            { map = "5,0", path = "left", custom = increment },

        }

    elseif ETAPE == 39 then

        condition_17()

        if global:getCountFight() ~= 4  then

            return{

                { map = "1,-4", path = "right" },

                { map = "2,-4", path = "right" },

                { map = "3,-4", path = "bottom" },

                { map = "3,-3", path = "bottom" },

                { map = "3,-2", path = "bottom" },

                { map = "3,-1", path = "bottom" },

                { map = "4,0", path = "bottom", fight = true },

                { map = "4,1", path = "left", fight = true },

                { map = "3,1", path = "top", fight = true },

                { map = "3,0", path = "right", fight = true },

            }

        else

            return{

                { map = "3,0", path = "top" },

                { map = "4,1", path = "left" },

                { map = "3,2", path = "left" },

                { map = "3,1", path = "top" },

                { map = "3,0", path = "top" },

                { map = "3,-1", path = "top" },

                { map = "3,-2", path = "top" },

                { map = "3,-3", path = "top" },

                { map = "3,-4", path = "left" },

                { map = "2,-4", path = "left" },

                { map = "1,-4", path = "left" },

                { map = "153878788", door = "315" },

                { map = "153356294", custom = quete17_2 },

            }

        end

    elseif ETAPE == 40 then

        return{

            { map = "153878788", path = "bottom" },

            { map = "0,-3", custom = quete18_1 },

        }

    elseif ETAPE == 41 then

        if inventory:itemCount(289) < 14 then

            ble()

            return{

                { map = "-1,-3", path = "top", gather = true },

                { map = "-1,-4", path = "top", gather = true },

                { map = "-1,-5", path = "top", gather = true },

                { map = "-1,-6", path = "left", gather = true },

                { map = "-2,-6", path = "left", gather = true },

                { map = "-3,-6", path = "bottom", gather = true },

                { map = "-3,-5", path = "right", gather = true },

                { map = "-2,-5", path = "bottom", gather = true },

                { map = "-2,-4", path = "bottom", gather = true },

                { map = "-2,-3", path = "right", gather = true },

            }

        elseif inventory:itemCount(289) >= 14 then

            return{

                { map = "-3,-6", path = "bottom" },

                { map = "-2,-6", path = "bottom" },

                { map = "-1,-6", path = "bottom" },

                { map = "-1,-5", path = "bottom" },

                { map = "-2,-5", path = "bottom" },

                { map = "-3,-5", path = "right" },

                { map = "-2,-4", path = "right" },

                { map = "-2,-3", path = "top" },

                { map = "-1,-3", path = "top" },

                { map = "154010372", door = "274" },

                { map = "153354242", custom = quete18_2 },

            }

        end

    elseif ETAPE == 42 then

        if inventory:itemCount(421) < 16 then

            ortie()

            return{

                { map = "0,-4", path = "right" },

                { map = "-1,-4", path = "right" },

                { map = "1,-4", path = "right", gather = true },

                { map = "2,-4", path = "right", gather = true },

                { map = "3,-3", path = "left", gather = true },

                { map = "2,-3", path = "left", gather = true },

                { map = "3,-4", path = "bottom", gather = true },

                { map = "1,-3", path = "top", gather = true },

            }

        elseif inventory:itemCount(421) >= 16 then

            return{

                { map = "3,-4", path = "left" },

                { map = "3,-3", path = "left" },

                { map = "2,-4", path = "left" },

                { map = "2,-3", path = "left" },

                { map = "1,-3", path = "left" },

                { map = "1,-4", path = "bottom" },

                { map = "0,-3", path = "left" },

                { map = "-1,-3", path = "left" },

                { map = "-2,-3", path = "bottom" },

                { map = "154010882", door = "186" },

                { map = "153355270", custom = quete18_3 },

            }

        end

    elseif ETAPE == 43 then

        if inventory:itemCount(1782) < 4 then

            goujon()

            return{

                { map = "-2,-2", path = "right|bottom", gather = true },

                { map = "-2,-1", path = "right|top", gather = true },

                { map = "-1,-1", path = "left|top", gather = true },

                { map = "-1,-2", path = "right|left|bottom", gather = true },

                { map = "0,-2", path = "left|bottom", gather = true },

                { map = "0,-1", path = "top", gather = true },

            }

        elseif inventory:itemCount(1782) >= 4 then

            return{

                { map = "-2,-2", path = "right" },

                { map = "-1,-2", path = "right" },

                { map = "-2,-1", path = "right" },

                { map = "-1,-1", path = "top" },

                { map = "0,-2", path = "bottom" },

                { map = "153878785", door = "301" },

                { map = "153354246", custom = quete18_4 },

            }

        end

    elseif ETAPE == 44 then

        return{

            { map = "0,-1", path = "top" },

            { map = "0,-2", path = "top" },

            { map = "0,-3", custom = quete18_5 },

        }

    elseif ETAPE == 45 then

        return{

            { map = "1,-3", custom = buy_ressource, path = "right" },

            { map = "2,-3", path = "top" },

            { map = "153879812", door = "330" },

            { map = "153355264", custom = quete19_1 },

        }

    elseif ETAPE == 46 then

        return{

            { map = "153879812", path = "bottom" },

            { map = "2,-3", path = "bottom" },

            { map = "153879810", door = "315" },

            { map = "153355266", custom = quete19_2 },

        }

    elseif ETAPE == 47 then

        return{

            { map = "153879810", path = "top" },

            { map = "2,-3", path = "left" },

            { map = "1,-3", path = "left" },

            { map = "0,-3", custom = quete19_3 },

        }

    elseif ETAPE == 48 then

        return{

            { map = "1,-3", path = "top" },

            { map = "153879300", door = "329" },

            { map = "153355272", custom = quete20_1 },

        }

    elseif ETAPE == 49 then

        return{

            { map = "153879300", path = "bottom" },

            { map = "1,-3", path = "bottom" },

            { map = "1,-2", path = "left" },

            { map = "153878786", door = "315" },

            { map = "153354244", custom = quete20_2 },

        }

    elseif ETAPE == 50 then

        return{

            { map = "153878786", path = "top" },

            { map = "0,-3", custom = quete20_3 },

        }

    elseif ETAPE == 51 then

        return{

            { map = "1,-3", path = "bottom" },

            { map = "153879298", door = "341" },

            { map = "153354248", custom = quete21_1 },

        }

    elseif ETAPE == 52 then

        return{

            { map = "153879298", path = "right" },

            { map = "153879810", door = "315" },

            { map = "153355266", custom = quete21_2 },

        }

    elseif ETAPE == 53 then

        return{

            { map = "153879810", path = "top" },

            { map = "2,-3", path = "top" },

            { map = "153879812", door = "330" },

            { map = "153355264", custom = quete21_3 },

        }

    elseif ETAPE == 54 then

        return{

            { map = "153879812", path = "bottom" },

            { map = "2,-3", path = "left" },

            { map = "1,-3", path = "left" },

            { map = "0,-3", custom = quete21_4 },

        }

    elseif ETAPE == 55 then

        return{

            { map = "1,-3", path = "bottom" },

            { map = "1,-2", custom = quete22_1 },

        }

    elseif ETAPE == 56 then

        return{

            { map = "1,-3", path = "left" },

            { map = "153878787", door = "326" },

            { map = "153357316", custom = quete22_2 },

        }

    elseif ETAPE == 57 then

        return{

            { map = "153878787", path = "left" },

            { map = "-1,-3", path = "top" },

            { map = "154010372", door = "274" },

            { map = "153354242", custom = quete22_3 },

        }

    elseif ETAPE == 58 then

        return{

            { map = "154010372", path = "right" },

            { map = "0,-4", path = "right" },

            { map = "1,-4", path = "bottom" },

            { map = "1,-3", path = "bottom" },

            { map = "1,-2", custom = quete22_4 },

            { map = "2,-2", path = "top" },

            { map = "2,-3", custom = quete22_5 },

        }

    elseif ETAPE == 59 then

        return{

            { map = "2,-2", path = "left" },

            { map = "1,-2", custom = quete22_6 },

            { map = "1,-1", path = "right" },

            { map = "2,-1", path = "right" },

            { map = "3,-1", path = "bottom" },

            { map = "3,0", path = "right" },

            { map = "4,0", path = "top" },

            { map = "4,-1", path = "right" },

            { map = "153881600", custom = quete23_1 },

            { map = "152829952", forcefight = true },--Salle 1

            { map = "152830976", forcefight = true },--Salle 2

            { map = "152832000", forcefight = true },--Salle 3

            { map = "152833024", forcefight = true },--Salle 4

            { map = "152834048", forcefight = true },--Salle 5

            { map = "152835072", custom = quete23_2 },

        }

    elseif ETAPE == 60 then

        return{

            { map = "153881600", path = "bottom" },

            { map = "5,0", path = "left" },

            { map = "4,0", path = "left" },

            { map = "3,0", path = "top" },

            { map = "3,-1", path = "top" },

            { map = "3,-2", path = "top" },

            { map = "3,-3", path = "top" },

            { map = "3,-4", path = "top" },

            { map = "3,-5", custom = quete24_1 },

            { map = "2,-5", path = "bottom" },

            { map = "153879812", custom = increment, door = "198" },

        }

    elseif ETAPE == 61 then

        if inventory:itemCount(16999) < 3 then

            return{

                { map = "153358338", fight = true, door = "158" },

                { map = "153358336", fight = true, door = "459" },

            }

        elseif inventory:itemCount(16999) >= 3 then

            return{

                { map = "153358338", door = "376" },

                { map = "153358336", door = "459" },

                { map = "153879812", path = "top" },

                { map = "2,-5", path = "right" },

                { map = "3,-5", custom = quete24_2 },

            }

        end

    elseif ETAPE == 62 then

        return{

            { map = "3,-4", path = "bottom" },

            { map = "3,-3", path = "left" },

            { map = "2,-3", path = "left" },

            { map = "1,-3", path = "left" },

            { map = "153878787", custom = quete25_1 },

            { map = "153357316", custom = quete25_2 },

            { map = "153358340", custom = quete25_3 },

        }

    elseif ETAPE == 63 then

        return{

            { map = "153358340", door = "313" },

            { map = "153357316", custom = quete25_4 },

            { map = "153878787", path = "right" },

        }

    end

end



function ecriture()

	file = io.open(CHEMIN, "w")

	if ETAPE == nil then

		file:write(0)

	else

		file:write(ETAPE)

	end

	io.close(file)

end



function lecture()

	file = io.open(CHEMIN, "r")

	ETAPE = file:read()

  io.close(file)

	ETAPE = tonumber(ETAPE)

end



function increment()

	ETAPE = ETAPE + 1

	ecriture()

  AVANCEMENT = (ETAPE/63) * 100

  AVANCEMENT = arrondir(AVANCEMENT)

	global:printSuccess("[INFO] - Avancement du script à "..AVANCEMENT.."%")

end



function arrondir(num)

  for str in tostring(num):gmatch("[%d-]+.%d") do

      return tonumber(str)

  end

end



function fin_de_la_preparation()

    increment()

    inventory:equipItem(2478,0)--Amulette

    inventory:equipItem(2475,2)--Anneau

    inventory:equipItem(2477,3)--Ceinture

    inventory:equipItem(2476,5)--Bottes

    inventory:equipItem(2474,6)--Chapeau

    inventory:equipItem(2473,7)--Cape



    inventory:deleteItem(519,inventory:itemCount(519))--Poudre de perlinpainpain

    inventory:deleteItem(16513,inventory:itemCount(16513))--Pétale diaphane

    inventory:deleteItem(16512,inventory:itemCount(16512))--Plume chmérique

    inventory:deleteItem(367,inventory:itemCount(367))--Oeuf de tofu

    inventory:deleteItem(16503,inventory:itemCount(16503))--Amulette de l'aventurier

    inventory:deleteItem(2478,inventory:itemCount(2478))--Coiffe âtome



    inventory:deleteItem(16511,inventory:itemCount(16511))--Laine céleste

    inventory:deleteItem(385,inventory:itemCount(385))--bave de bouftou

    inventory:deleteItem(16505,inventory:itemCount(16505))--Animulette

    

    inventory:deleteItem(16518,inventory:itemCount(16518))--Feu intérieur

    inventory:deleteItem(1984,inventory:itemCount(1984))--Cendres éternelles



    map:door(369)

end



function boucle17()

    COMBAT17 = COMBAT17 + 1

end



function condition_12()

    if not reset_12 then

        global:resetCountFight()

        reset_12 = true

    end



    if global:getCountFight() == 0 then

        FORCE_MONSTERS = {979}

    elseif global:getCountFight() == 1 then

        FORCE_MONSTERS = {980}

    elseif global:getCountFight() == 2 then

        FORCE_MONSTERS = {981}

    elseif global:getCountFight() == 3 then

        FORCE_MONSTERS = {970}

    end



end



function condition_13()

    if not reset_13 then

        global:resetCountFight()

        reset_13 = true

    end



    if global:getCountFight() == 0 then

        FORCE_MONSTERS = {4110}

    elseif global:getCountFight() == 1 then

        FORCE_MONSTERS = {4109}

    elseif global:getCountFight() == 2 then

        FORCE_MONSTERS = {4108}

    end



end



function condition_14()

    if not reset_14 then

        global:resetCountFight()

        reset_14 = true

    end



    if global:getCountFight() == 0 then

        FORCE_MONSTERS = {971}

    elseif global:getCountFight() == 1 then

        FORCE_MONSTERS = {972}

    elseif global:getCountFight() == 2 then

        FORCE_MONSTERS = {973}

    elseif global:getCountFight() == 3 then

        FORCE_MONSTERS = {984}

    end



end



function condition_15()

    if not reset_15 then

        global:resetCountFight()

        reset_15 = true

    end



    if global:getCountFight() == 0 then

        FORCE_MONSTERS = {982}

    elseif global:getCountFight() == 1 then

        FORCE_MONSTERS = {4105}

    elseif global:getCountFight() == 2 then

        FORCE_MONSTERS = {4106}

    end



end



function condition_17()

    if not reset_17 then

        global:resetCountFight()

        reset_17 = true

    end



    if global:getCountFight() == 0 then

        FORCE_MONSTERS = {4046}

    elseif global:getCountFight() == 1 then

        FORCE_MONSTERS = {4047}

    elseif global:getCountFight() == 2 then

        FORCE_MONSTERS = {4048}

    elseif global:getCountFight() == 3 then

        FORCE_MONSTERS = {4049}

    end



end



function buy_ressource()

    npc:npc(-1,6)

    sale:buyItem(303,10,100000000)

    sale:buyItem(303,10,100000000)

    sale:buyItem(312,10,100000000)

    sale:buyItem(312,10,100000000)

    global:leaveDialog()

end



function ble()

    GATHER = {38} 

end



function ortie()

    GATHER = {254} 

end



function goujon()

    GATHER = {75} 

end



function frene()

    GATHER = {1} 

end



function fer()

    GATHER = {17} 

end



function quete1_1()

    map:moveToCell(371)

    global:delay(DELAY)

    npc:npc(2897,3)

    npc:reply(-1)

    global:leaveDialog()

    global:delay(DELAY)

    map:door(276)

end



function quete1_2()

  increment()

  npc:npc(2895,3)

  npc:reply(-1)

  npc:reply(-1)

  global:leaveDialog()

  map:door(395)

  map:door(340)

  map:door(297)

  map:door(258)

  map:door(303)

  global.delay(DELAY)

  map:door(442)

  craft:putItem(421,1)

  craft:putItem(303,1)

  craft:putItem(312,1)

  craft:putItem(289,1)

  craft:putItem(1782,1)

  craft:ready()

  global:leaveDialog()

  npc:npc(2895,3)

  npc:reply(-1)

  global.delay(DELAY)

  map:door(438)

end



function quete2_1()

    npc:npc(2897,3)

    npc:reply(-1)

    global:leaveDialog()

    global:delay(DELAY)

    map:door(189)

end



function quete2_2()

    increment()

    npc:npc(2896,3)

   npc:reply(-1)

    global:leaveDialog()

    global:delay(DELAY)

    npc:npc(2930,3)

    npc:reply(-1)

end



function quete2_3()

    npc:npc(2896,3)

    npc:reply(-1)

    global:leaveDialog()

    global:delay(DELAY)

    map:door(396)

end



function quete2_4()

    npc:npc(2897,3)

    npc:reply(-1)

end



function quete3_1()

    npc:npc(2897,3)

    npc:reply(-1)

    global:leaveDialog()

    global:delay(DELAY)

    map:door(230)

    global:leaveDialog()

    map:door(438)

    global:leaveDialog()

    map:door(362)

    global:leaveDialog()

    global:delay(DELAY)

    npc:npc(2897,3)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

end



function quete3_2()

    npc:npc(2892,3)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    global:leaveDialog()

    map:changeMap("right")

end



function quete4_1()

    npc:npc(2905,3)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    global:leaveDialog()

    map:changeMap("right")

end



function quete4_2()

    npc:npc(2899,3)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    global:leaveDialog()

    map:door(326)

end



function quete4_3()

    increment()

    global:delay(DELAY)

    npc:npc(2885,3)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    map:moveToCell(411)

end



function quete4_4()

    --

    map:changeMap("right")

end



function quete4_5()

    npc:npc(2910,3)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    map:changeMap("top")

end



function quete4_6()

    increment()

    npc:npc(2880,3)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    map:moveToCell(452)

end



function quete4_7()

    npc:npc(2905,3)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    map:changeMap("right")

end



function quete4_8()

    increment()

    npc:npc(1515,3)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    global:leaveDialog()

    map:door(426)

    global:leaveDialog()

    npc:npc(1515,3)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    global:leaveDialog()

    map:moveToCell(401)

end



function quete5_1()

    increment()

    npc:npc(2904,3)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

end



function quete5_2()

    increment()

    npc:npc(2909,3)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    map:moveToCell(411)

end



function quete5_3()

    increment()

    npc:npc(2892,3)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-2)

    npc:reply(-1)

    npc:reply(-2)

    npc:reply(-2)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    map:changeMap("top")

end



function quete5_4()

    increment()

    npc:npc(1515,3)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    map:moveToCell(401)

end



function quete6_1()

    npc:npc(2907,3)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    map:changeMap("left")

end



function quete6_2()

    increment()

    npc:npc(2911,3)

    npc:reply(-1)

end



function quete6_3()

    npc:npc(2898,3)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

end



function quete6_4()

    increment()

    npc:npc(1515,3)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    map:moveToCell(401)

end



function quete7_1()

    increment()

    npc:npc(4360,3)

    npc:reply(-1)

    npc:reply(-1)

    global:delay(DELAY)

    npc:npc(4398,3)

end



function quete7_2()

    global:leaveDialog()

    npc:npc(4355,3)

    npc:reply(-1)

    global:leaveDialog()

    global:delay(DELAY)

    map:door(455)

end



function quete8_1()

    npc:npc(2905,3)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    map:changeMap("top")

end



function quete8_2()

    increment()

    npc:npc(2882,3)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    global:delay(DELAY)

    map:door(303)

    npc:reply(-1)

    global:delay(DELAY)

    map:changeMap("left")

end



function quete8_3()

    increment()

    npc:npc(2905,3)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    map:changeMap("left")

end



function quete9_1()

    map:door(471)

    global:leaveDialog()

    map:changeMap("right")

end



function quete9_2()

    map:door(415)

    global:leaveDialog()

    map:changeMap("top")

end



function quete9_3()

    map:door(344)

    global:leaveDialog()

    map:changeMap("left")

end



function quete9_4()

    map:door(286)

    global:leaveDialog()

    map:changeMap("bottom")

end



function quete9_5()

    increment()

    map:door(485)

    global:leaveDialog()

    map:changeMap("left")

end



function quete9_6()

    npc:npc(2905,3)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    map:changeMap("top")

end



function quete10_1()

    npc:npc(2887,3)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    global:delay(DELAY)

    map:door(234)

    global:delay(DELAY)

    global:leaveDialog()

    map:changeMap("left")

end



function quete10_2()

    increment()

    npc:npc(2906,3)

    npc:reply(-1)

    npc:reply(-1)

    global:delay(DELAY)

    map:door(369)

    global:delay(DELAY)

    global:leaveDialog()

    map:changeMap("top")

end



function quete10_3()

    npc:npc(2905,3)

    npc:reply(-1)

    npc:reply(-1)

    map:changeMap("top")

end



function quete11_1()

    npc:npc(2880,3)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    global:delay(DELAY)

    map:door(215)

end



function quete11_2()

    increment()

    npc:npc(2894,3)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

end



function quete11_3()

    npc:npc(2894,3)

    npc:reply(-1)

    npc:reply(-1)

    map:door(374)

end



function quete12_1()

    increment()

    npc:npc(2880,3)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    map:moveToCell(452)

end



function quete13_1()

    increment()

    npc:npc(2880,3)

    npc:reply(-1)

    npc:reply(-1)

    map:moveToCell(452)

end



function quete14_1()

    increment()

    npc:npc(2880,3)

    npc:reply(-1)

    npc:reply(-1)

    map:moveToCell(452)

end



function quete15_1()

    increment()

    npc:npc(2880,3)

    npc:reply(-1)

    npc:reply(-1)

    map:moveToCell(452)

end



function quete16_1()

    increment()

    npc:npc(2880,3)

    npc:reply(-1)

    npc:reply(-1)

    map:moveToCell(452)

end



function quete16_2()

    increment()

    npc:npc(2908,3)

    npc:reply(-1)

end



function quete16_3()

    increment()

    npc:npc(2880,3)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    map:moveToCell(452)

end



function quete17_1()

    increment()

    map:door(343)

    npc:npc(2938,3)

    npc:reply(-1)

end



function quete17_2()

    increment()

    npc:npc(2880,3)

    npc:reply(-1)

    npc:reply(-1)

    map:moveToCell(452)

end



function quete18_1()

    increment()

    npc:npc(2899,3)

    npc:reply(-1)

    npc:reply(-2)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    map:changeMap("left")

end



function quete18_2()

    increment()

    map:door(285)

    craft:putItem(289,4)

    craft:ready()

    global:leaveDialog()

    map:moveToCell(424)

end



function quete18_3()

    increment()

    map:door(230)

    craft:putItem(421,4)

    craft:ready()

    global:leaveDialog()

    map:moveToCell(415)

end



function quete18_4()

    increment()

    map:door(285)

    craft:putItem(1782,4)

    craft:ready()

    global:leaveDialog()

    map:moveToCell(397)

end



function quete18_5()

    increment()

    npc:npc(2899,3)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    map:changeMap("right")

end



function quete19_1()

    increment()

    map:door(245)

    craft:putItem(303,10)

    craft:putItem(312,6)

    craft:ready()

    global:leaveDialog()

    map:moveToCell(313)

end



function quete19_2()

    increment()

    map:door(342)

    craft:putItem(312,4)

    craft:putItem(303,6)

    craft:ready()

    global:leaveDialog()

    map:moveToCell(385)

end



function quete19_3()

    increment()

    npc:npc(2899,3)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    map:changeMap("right")

end



function quete20_1()

    increment()

    map:door(372)

    craft:putItem(16512,2)

    craft:putItem(303,2)

    craft:ready()

    global:leaveDialog()

    map:door(372)

    craft:putItem(16518,2)

    craft:putItem(312,1) 

    craft:ready()   

    global:leaveDialog()

    map:moveToCell(382)

end



function quete20_2()

    increment()

    map:door(384)

    craft:putItem(16513,2)

    craft:putItem(303,2)

    craft:ready()

    global:leaveDialog()

    map:door(384)

    craft:putItem(16522,2)

    craft:putItem(421,2)

    craft:ready()    

    global:leaveDialog()

    map:door(312)

    craft:putItem(1984,2)

    craft:putItem(312,1)

    craft:ready()

    global:leaveDialog()

    map:door(312)

    craft:putItem(16511,2)

    craft:putItem(421,2)

    craft:ready()    

    global:leaveDialog()

    map:moveToCell(410)

end



function quete20_3()

    increment()

    npc:npc(2899,3)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    map:changeMap("right")

end



function quete21_1()

    increment()

    map:door(286)

    craft:putItem(16524,3)

    craft:putItem(1984,5)

    craft:ready()

    global:leaveDialog()

    map:door(328)

end



function quete21_2()

    increment()

    map:door(353)

    craft:putItem(16513,3)

    craft:putItem(16511,3)

    craft:ready()

    global:leaveDialog()

    map:moveToCell(385)

end



function quete21_3()

    increment()

    map:door(317)

    craft:putItem(312,1)

    craft:putItem(16511,5)

    craft:ready()

    global:leaveDialog()

    map:moveToCell(313)

end



function quete21_4()

    increment()

    npc:npc(2899,3)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    map:changeMap("right")

end



function quete22_1()

    increment()

    npc:npc(2886,3)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    global:delay(DELAY)

    inventory:useItem(16517)

    global:leaveDialog()

    map:changeMap("top")    

end



function quete22_2()

    increment()

    npc:npc(2885,3)

    npc:reply(-1)

    npc:reply(-2)

    map:moveToCell(411)

end



function quete22_3()

    increment()

    map:door(285)

    craft:putItem(289,10)

    craft:putItem(519,4)

    craft:putItem(367,2)

    craft:putItem(6765,1)

    craft:putItem(385,4)

    craft:putItem(1984,4)

    craft:ready()

    global:leaveDialog()

    map:moveToCell(424)

end



function quete22_4()

    npc:npc(2886,3)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    map:changeMap("right") 

end



function quete22_5()

    increment()

    npc:npc(2881,3)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    map:changeMap("bottom") 

end



function quete22_6()

    npc:npc(2886,3)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    map:changeMap("bottom") 

end



function quete23_1()

    npc:npc(2907,3)

    npc:reply(-2)

    npc:reply(-1)

end



function quete23_2()

    increment()

    npc:npc(2936,3)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

end



function quete24_1()

    npc:npc(2888,3)

    npc:reply(-1)

    npc:reply(-1)

    npc:reply(-1)

    map:changeMap("left")

end



function quete24_2()

    increment()

    npc:npc(2888,3)

    npc:reply(-1)

    npc:reply(-1)

    map:changeMap("bottom")

end



function quete25_1()

    map:door(361)

    local message = developer:createMessage("QuestStartRequestMessage")

    message.questId = 1633

    developer:sendMessage(message)

    global:leaveDialog()

    map:door(326)

end



function quete25_2()

    npc:npc(2885,3)

    npc:reply(-1)

    npc:reply(-1)

    global:delay(DELAY)

    npc:npc(2885,3)

    npc:reply(-2)

    npc:reply(-1)

    map:door(387)  

end



function quete25_3()

    increment()

    map:door(328)

    map:moveToCell(354)

    global:delay(DELAY)

    map:door(328)

    global:delay(DELAY)

    npc:npc(2912,3)

    npc:reply(-1)

end



function quete25_4()

    npc:npc(2885,3)

    npc:reply(-1)

    npc:reply(-1)

    map:moveToCell(411)

end




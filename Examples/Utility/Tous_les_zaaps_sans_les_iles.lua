-- Créateur : Dovahkiin#0995
-- Correction du script partagé sur Ankabot
-- Date de correction : 09/11/2021

ETAPE = 0 -- Mettre 0 si lancé depuis incarnam et 1 si lancé depuis le Zaap Astrub

function move()
    if ETAPE == 0 then
            return{
                { map = "153092354", door = "409" },
                { map = "152044547", path = "right" },--IOP
                { map = "152043521", path = "right" },--CRA
                { map = "152045573", path = "right" },--SACRIEUR
                { map = "152046593", path = "right" },--ENIRIPSA
                { map = "152046599", path = "right" },--SRAM
                { map = "152044553", path = "right" },--OUGINACK
                { map = "152043523", path = "right" },--OSAMODA
                { map = "152046595", path = "right" },--ENUTROF
                { map = "152044545", path = "right" },--ECAFLIP
                { map = "152045575", path = "right" },--STEAMER
                { map = "152045571", path = "right" },--FECA
                { map = "152043529", path = "right" },--HUPPERMAGE
                { map = "152043527", path = "right" },--ZOBAL
                { map = "152043525", path = "right" },--PANDAWA
                { map = "152045569", path = "right" },--ELIOTOPE
                { map = "152046597", path = "right" },--SADIDA
                { map = "152044549", path = "right" },--ROUBLARD
                { map = "152044551", path = "right" },--XELOR
                { map = "0,-4", path = "bottom"},
                { map = "-3,-5", path = "right"},
                { map = "-3,-6", path = "right"},
                { map = "-2,-5", path = "bottom"},
                { map = "-2,-6", path = "bottom"},
                { map = "-1,-6", path = "bottom"},
                { map = "-1,-5", path = "bottom"},
                { map = "0,-5", path = "bottom"},
                { map = "-1,-4", path = "bottom"},
                { map = "-2,-4", path = "right"},
                { map = "154010883", path = "right", custom = increment },
            }
    elseif ETAPE == 1 then
       return {
        --Zaap plaine des porkass
        { map = "-1,-3", path = "right" },
        { map = "0,-3", path = "right" },
        { map = "1,-3", path = "right" },
        { map = "2,-3", path = "right" },
        { map = "3,-3", path = "right" },
        { map = "4,-3", custom = pnjastrub },
        { map = "192416776", custom = arrive_astrub },
        { map = "191106048", path = "left" },
        { map = "5,-19", path = "bottom" },
        { map = "5,-18", path = "left" },
        { map = "4,-18", path = "left" },
        { map = "3,-18", path = "left" },
        { map = "2,-18", path = "left" },
        { map = "1,-18", path = "left" },
        { map = "0,-18", path = "left" },
        { map = "-1,-18", path = "left" },
        { map = "-2,-18", path = "left" },
        { map = "-3,-18", path = "left" },
        { map = "-4,-18", path = "left" },
        { map = "-5,-18", path = "top" },
        { map = "-5,-19", path = "top" },
        { map = "-5,-20", path = "top" },
        { map = "-5,-21", path = "top" },
        { map = "-5,-22", custom = increment, path = "top" },
       }
    elseif ETAPE == 2 then
       return {
        --Zaap Tainela
        { map = "-5,-23", path = "top" },
        { map = "-5,-24", path = "top" },
        { map = "-5,-25", path = "top" },
        { map = "-5,-26", path = "top" },
        { map = "-5,-27", path = "top" },
        { map = "-5,-28", path = "top" },
        { map = "-5,-29", path = "right" },
        { map = "-4,-29", path = "right" },
        { map = "-3,-29", path = "right" },
        { map = "-2,-29", path = "right" },
        { map = "-1,-29", path = "right" },
        { map = "0,-29", path = "right" },
        { map = "1,-29", path = "top" },
        { map = "1,-30", path = "top" },
        { map = "1,-31", custom = increment, path = "top" },
       }
    elseif ETAPE == 3 then
       return {
        --Zaap Lac de cania
        { map = "1,-32", path = "bottom" },
        { map = "1,-31", path = "bottom" },
        { map = "1,-30", path = "bottom" },
        { map = "1,-29", path = "left" },
        { map = "0,-29", path = "left" },
        { map = "-1,-29", path = "left" },
        { map = "-2,-29", path = "left" },
        { map = "-3,-29", path = "top" },
        { map = "-3,-30", path = "top" },
        { map = "-3,-31", path = "top" },
        { map = "-3,-32", path = "top" },
        { map = "-3,-33", path = "top" },
        { map = "-3,-34", path = "top" },
        { map = "-3,-35", path = "top" },
        { map = "-3,-36", path = "top" },
        { map = "-3,-37", path = "top" },
        { map = "-3,-38", path = "top" },
        { map = "-3,-39", path = "top" },
        { map = "-3,-40", path = "top" },
        { map = "-3,-41", custom = increment, path = "top" },
       }
    elseif ETAPE == 4 then
       return {
        --Zaap Plaines rocheuses
        { map = "-3,-42", path = "top" },
        { map = "-3,-43", path = "top" },
        { map = "-3,-44", path = "top" },
        { map = "-3,-45", path = "top" },
        { map = "-3,-46", path = "top" },
        { map = "-3,-47", path = "left" },
        { map = "-4,-47", path = "left" },
        { map = "-5,-47", path = "left" },
        { map = "-6,-47", path = "left" },
        { map = "-7,-47", path = "left" },
        { map = "-8,-47", path = "left" },
        { map = "-9,-47", path = "left" },
        { map = "-10,-47", path = "left" },
        { map = "-11,-47", path = "left" },
        { map = "-12,-47", path = "left" },
        { map = "-13,-47", path = "left" },
        { map = "-14,-47", path = "left" },
        { map = "-15,-47", path = "left" },
        { map = "-16,-47", custom = increment, path = "left" },
       }
    elseif ETAPE == 5 then
       return {
        --Zaap Bonta
        { map = "-17,-47", path = "left" },
        { map = "-18,-47", path = "left" },
        { map = "-19,-47", path = "left" },
        { map = "-20,-47", path = "left" },
        { map = "-21,-47", path = "left" },
        { map = "-22,-47", path = "left" },
        { map = "-23,-47", path = "bottom" },
        { map = "-23,-46", path = "left" },
        { map = "-24,-46", path = "top" },
        { map = "-24,-47", path = "left" },
        { map = "-25,-47", path = "left" },
        { map = "-26,-47", path = "left" },
        { map = "-27,-47", path = "left" },
        { map = "-28,-47", path = "left" },
        { map = "-29,-47", path = "top" },
        { map = "-29,-48", path = "top" },
        { map = "-29,-49", path = "top" },
        { map = "-29,-49", path = "top" },
        { map = "-29,-50", path = "left" },
        { map = "-30,-50", path = "left" },
        { map = "-31,-50", path = "top" },
        { map = "-31,-51", path = "top" },
        { map = "-31,-52", path = "top" },
        { map = "-31,-53", path = "top" },
        { map = "-31,-54", path = "left" },
        { map = "-32,-54", path = "top" },
        { map = "-32,-55", path = "top" },
        { map = "147768", path = "zaapi(145203)"},
        { map = "145203", custom = achatMoon, path = "zaapi(147769)" },
        { map = "-32,-57", path = "top" },
        { map = "-32,-58", path = "top" },
        { map = "-32,-59", path = "top" },
        { map = "-32,-60", path = "right" },
        { map = "-31,-60", path = "right" },
        { map = "-30,-60", path = "right" },
        { map = "-29,-60", path = "right" },
        { map = "-28,-60", path = "right" },
        { map = "-27,-60", path = "right" },
        { map = "-26,-60", door = "426" },
        { map = "-26,-59", custom = increment, path = "110" },
       }
    elseif ETAPE == 6 then
       return {
            { map = "-26,-60", path = "top" },
            { map = "-26,-61", path = "left" },
            { map = "-27,-61", path = "left" },
            { map = "-28,-61", path = "bottom" },
            { map = "-28,-60", path = "bottom" },
            { map = "-28,-59", path = "bottom" },
            { map = "-28,-58", path = "bottom" },
            { map = "-28,-57", path = "bottom" },
            { map = "-28,-56", path = "left" },
            { map = "-29,-56", path = "bottom" },
            { map = "-29,-55", path = "bottom" },
            { map = "-29,-54", path = "bottom" },
            { map = "-29,-53", path = "bottom" },
            { map = "-29,-52", path = "left" },
            { map = "-30,-52", path = "left" },
            { map = "-31,-52", path = "left" },
            { map = "-32,-52", path = "left" },
            { map = "-33,-52", path = "left" },
            { map = "-34,-52", path = "left" },
            { map = "-35,-52", path = "left" },
            { map = "-36,-52", path = "top" },
            { map = "-36,-53", path = "top" },
            { map = "-36,-54", path = "top" },
            { map = "-36,-55", path = "top" },
            { map = "-36,-56", path = "right" },
            { map = "-35,-56", path = "top" },
            { map = "-35,-57", path = "right" },
            { map = "-34,-57", path = "top" },
            { map = "-34,-58", path = "top" },
            { map = "-34,-59", path = "right" },
            { map = "-33,-59", path = "right" },
            { map = "-32,-59", path = "right" },
            { map = "-31,-59", path = "right" },
            { map = "-30,-59", path = "right" },
            { map = "-29,-59", path = "top" },
            { map = "-29,-60", path = "top" },
            { map = "-29,-61", path = "top" },
            { map = "-29,-62", path = "top" },
            { map = "-29,-63", path = "right" },
            { map = "-28,-63", path = "right" },
            { map = "-27,-63", path = "right" },
            { map = "-26,-63", path = "right" },
            { map = "-25,-63", path = "right" },
            { map = "-24,-63", path = "bottom" },
            { map = "-24,-62", path = "bottom" },
            { map = "-24,-61", path = "right" },
            { map = "-23,-61", path = "bottom" },
            { map = "-23,-60", path = "bottom" },
            { map = "-23,-59", path = "bottom" },
            { map = "-23,-58", path = "bottom" },
            { map = "-23,-57", path = "bottom" },
            { map = "-23,-56", path = "left" },
            { map = "-24,-56", path = "left" },
            { map = "-25,-56", path = "left" },
            { map = "-26,-56", path = "bottom" },
            { map = "-26,-55", path = "bottom" },
            { map = "-26,-54", path = "bottom" },
            { map = "-26,-53", path = "bottom" },
            { map = "-26,-52", path = "bottom" },
            { map = "-26,-51", path = "bottom" },
            { map = "-26,-50", path = "bottom" },
            { map = "-26,-49", path = "left" },
            { map = "-27,-49", path = "left" },
            { map = "-28,-49", path = "left" },
            { map = "-29,-49", path = "bottom" },
            { map = "-29,-48", path = "bottom", custom = increment },
       }
    elseif ETAPE == 7 then
       return {
        --Zaap Champs de cania
        { map = "-29,-47", path = "bottom" },
        { map = "-29,-46", path = "bottom" },
        { map = "-29,-45", path = "bottom" },
        { map = "-29,-44", path = "bottom" },
        { map = "-29,-43", path = "bottom" },
        { map = "-29,-42", path = "bottom" },
        { map = "-29,-41", path = "right" },
        { map = "-28,-41", path = "right" },
        { map = "-27,-41", path = "bottom" },
        { map = "-27,-40", path = "bottom" },
        { map = "-27,-39", path = "bottom" },
        { map = "-27,-38", path = "bottom" },
        { map = "-27,-37", custom = increment, path = "bottom" },
       }
    elseif ETAPE == 8 then
       return {
        --Zaap Routes rocailleuses
        { map = "-27,-36", path = "right" },
        { map = "-26,-36", path = "right" },
        { map = "-25,-36", path = "right" },
        { map = "-24,-36", path = "right" },
        { map = "-23,-36", path = "right" },
        { map = "-22,-36", path = "right" },
        { map = "-21,-36", path = "right" },
        { map = "-20,-36", path = "bottom" },
        { map = "-20,-35", path = "bottom" },
        { map = "-20,-34", path = "bottom" },
        { map = "-20,-33", path = "bottom" },
        { map = "-20,-32", path = "bottom" },
        { map = "-20,-31", path = "bottom" },
        { map = "-20,-30", path = "bottom" },
        { map = "-20,-29", path = "bottom" },
        { map = "-20,-28", path = "bottom" },
        { map = "-20,-27", path = "bottom" },
        { map = "-20,-26", path = "bottom" },
        { map = "-20,-25", path = "bottom" },
        { map = "-20,-24", path = "bottom" },
        { map = "-20,-23", path = "bottom" },
        { map = "-20,-22", path = "bottom" },
        { map = "-20,-21", custom = increment, path = "bottom" },
       }
    elseif ETAPE == 9 then
       return {
        --Zaap Massif de cania
        { map = "-20,-20", path = "right" },
        { map = "-19,-20", path = "right" },
        { map = "-18,-20", path = "right" },
        { map = "-17,-20", path = "right" },
        { map = "-16,-20", path = "right" },
        { map = "-15,-20", path = "right" },
        { map = "-14,-20", path = "right" },
        { map = "-13,-20", path = "top" },
        { map = "-13,-21", path = "top" },
        { map = "-13,-22", path = "top" },
        { map = "-13,-23", path = "top" },
        { map = "-13,-24", path = "top" },
        { map = "-13,-25", path = "top" },
        { map = "-13,-26", path = "top" },
        { map = "-13,-27", custom = increment, path = "top" },
       }
    elseif ETAPE == 10 then
       return {
        --Zaap Village des eleveurs
        { map = "-13,-28", path = "bottom" },
        { map = "-13,-27", path = "bottom" },
        { map = "-13,-26", path = "bottom" },
        { map = "-13,-25", path = "bottom" },
        { map = "-13,-24", path = "bottom" },
        { map = "-13,-23", path = "bottom" },
        { map = "-13,-22", path = "bottom" },
        { map = "-13,-21", path = "bottom" },
        { map = "-13,-20", path = "left" },
        { map = "-14,-20", path = "left" },
        { map = "-15,-20", path = "left" },
        { map = "-16,-20", path = "left" },
        { map = "-17,-20", path = "left" },
        { map = "-18,-20", path = "left" },
        { map = "-19,-20", path = "left" },
        { map = "-20,-20", path = "right" },
        { map = "-19,-20", path = "right" },
        { map = "-18,-20", path = "right" },
        { map = "-17,-20", path = "right" },
        { map = "-16,-20", path = "bottom" },
        { map = "-16,-19", path = "bottom" },
        { map = "-16,-18", path = "bottom" },
        { map = "-16,-17", path = "bottom" },
        { map = "-16,-16", path = "bottom" },
        { map = "-16,-15", path = "bottom" },
        { map = "-16,-14", path = "bottom" },
        { map = "-16,-13", path = "bottom" },
        { map = "-16,-12", path = "bottom" },
        { map = "-16,-11", path = "bottom" },
        { map = "-16,-10", path = "right" },
        { map = "-15,-10", path = "right" },
        { map = "-14,-10", path = "right" },
        { map = "-13,-10", path = "bottom" },
        { map = "-13,-9", path = "bottom" },
        { map = "-13,-8", path = "bottom" },
        { map = "-13,-7", path = "bottom" },
        { map = "-13,-6", path = "bottom" },
        { map = "-13,-5", path = "bottom" },
        { map = "-13,-4", path = "bottom" },
        { map = "-13,-3", path = "bottom" },
        { map = "-13,-2", path = "bottom" },
        { map = "-13,-1", path = "bottom" },
        { map = "-13,0", path = "bottom" },
        { map = "-13,1", path = "left" },
        { map = "-14,1", path = "left" },
        { map = "-15,1", custom = increment, path = "left" },
       }
    elseif ETAPE == 11 then
       return {
        --Zaap Routes des roulottes
        { map = "-16,1", path = "top" },
        { map = "-16,0", path = "left" },
        { map = "-17,0", path = "left" },
        { map = "-18,0", path = "left" },
        { map = "-19,0", path = "top" },
        { map = "-19,-1", path = "left" },
        { map = "-20,-1", path = "bottom" },
        { map = "-20,0", path = "left" },
        { map = "-21,0", path = "left" },
        { map = "-22,0", path = "top" },
        { map = "-22,-1", path = "left" },
        { map = "-23,-1", path = "left" },
        { map = "-24,-1", path = "left(280)" },
        { map = "-25,-1", path = "bottom" },
        { map = "-25,0", path = "bottom" },
        { map = "-25,1", path = "bottom" },
        { map = "-25,2", path = "bottom" },
        { map = "-25,3", path = "bottom" },
        { map = "-25,4", path = "bottom" },
        { map = "-25,5", path = "bottom" },
        { map = "-25,6", path = "bottom" },
        { map = "-25,7", path = "bottom" },
        { map = "-25,8", path = "bottom" },
        { map = "-25,9", path = "bottom" },
        { map = "-25,10", path = "bottom" },
        { map = "-25,11", custom = increment, path = "bottom" },
       }
    elseif ETAPE == 12 then
       return {
        --Zaap Brakmar
        { map = "-25,12", path = "right" },
        { map = "-24,12", path = "right" },
        { map = "-23,12", path = "right" },
        { map = "-22,12", path = "bottom" },
        { map = "-22,13", path = "right" },
        { map = "-21,13", path = "bottom" },
        { map = "-21,14", path = "bottom" },
        { map = "-21,15", path = "bottom" },
        { map = "-21,16", path = "bottom" },
        { map = "-21,17", path = "bottom" },
        { map = "-21,18", path = "bottom" },
        { map = "-21,19", path = "bottom" },
        { map = "-21,20", path = "bottom" },
        { map = "-21,21", path = "bottom" },
        { map = "-21,22", path = "bottom" },
        { map = "-21,23", path = "bottom" },
        { map = "-21,24", path = "bottom" },
        { map = "-21,25", path = "bottom" },
        { map = "-21,26", path = "bottom" },
        { map = "-21,27", path = "bottom" },
        { map = "-21,28", path = "bottom" },
        { map = "-21,29", path = "left" },
        { map = "-22,29", path = "left" },
        { map = "-23,29", path = "left" },
        { map = "-24,29", path = "bottom" },
        { map = "-24,30", path = "left" },
        { map = "-25,30", path = "bottom" },
        { map = "-26,31", path = "bottom" },
        { map = "-26,32", path = "bottom" },
        { map = "-26,33", path = "bottom" },
        { map = "-26,34", path = "bottom" },
        { map = "-26,35", path = "bottom"},
        { map = "-26,36", path = "bottom" },
        { map = "-26,37", path = "right" },
        { map = "-25,37", path = "right(363)" },
        { map = "-24,37", path = "bottom" },
        { map = "-24,38", path = "bottom" },
        { map = "-24,39", path = "bottom" },
        { map = "-24,40", path = "bottom" },
        { map = "-24,41", path = "left" },
        { map = "-25,41", path = "left" },
        { map = "-26,41", custom = increment, path = "bottom" },
       }
    elseif ETAPE == 13 then
       return {
        { map = "-26,42", path = "top" },
        { map = "-26,41", door = "49" },
        { map = "-28,36", custom = increment, door = "198" },--verifiez la redondance de map
       }
    elseif ETAPE == 14 then
        return {
            { map = "-26,41", path = "top" },
            { map = "-26,40", path = "right" },
            { map = "-25,40", path = "right" },
            { map = "-24,40", path = "right" },
            { map = "-23,40", path = "right" },
            { map = "-22,40", path = "right" },
            { map = "-21,40", path = "right" },
            { map = "-20,40", path = "top" },
            { map = "-20,39", path = "left" },
            { map = "-21,39", path = "left" },
            { map = "-22,39", path = "left" },
            { map = "-23,39", path = "left" },
            { map = "-24,39", path = "left" },
            { map = "-25,39", path = "left" },
            { map = "-26,39", path = "left" },
            { map = "-27,39", path = "left" },
            { map = "-28,39", path = "left" },
            { map = "-29,39", path = "top" },
            { map = "-29,38", path = "left" },
            { map = "-30,38", path = "top" },
            { map = "-30,37", path = "top" },
            { map = "-30,36", path = "top" },
            { map = "-30,35", path = "top" },
            { map = "-30,34", path = "right" },
            { map = "-29,34", path = "top" },
            { map = "-29,33", path = "right" },
            { map = "-28,33", path = "right" },
            { map = "-27,33", path = "right" },
            { map = "-26,33", path = "right" },
            { map = "-25,33", path = "right" },
            { map = "-24,33", path = "right" },
            { map = "-23,33", path = "bottom" },
            { map = "-23,34", path = "right" },
            { map = "-22,34", path = "right" },
            { map = "-21,34", path = "right", custom = increment },
        }
    elseif ETAPE == 15 then
       return {
        --Zaap Terres desacrees
        { map = "-20,34", path = "right" },
        { map = "-19,34", path = "right" },
        { map = "-18,34", path = "right" },
        { map = "-17,34", path = "right" },
        { map = "-16,34", custom = increment, path = "bottom" },
       }
    elseif ETAPE == 16 then
       return {
        { map = "-16,35", path = "top" },
        { map = "-16,34", path = "right" },
        { map = "-15,34", path = "top" },
        { map = "-15,33", path = "top" },
        { map = "-15,32", path = "top" },
        { map = "-15,31", path = "top" },
        { map = "-15,30", path = "top" },
        { map = "-15,29", path = "top" },
        { map = "-15,28", path = "left" },
        { map = "-16,28", door = "332" },
        { map = "-16,29", path = "left" },
        { map = "-17,29", door = "11" },
        { map = "-17,28", path = "top" },
        { map = "-17,27", path = "right" },
        { map = "-16,27", path = "top" },
        { map = "-16,26", path = "right" },
        { map = "-15,26", custom = increment, door = "187" },
       }
    elseif ETAPE == 17 then
       return {
        --Zaap Plaine des scarafeuilles
        { map = "-15,25", path = "left" },
        { map = "-16,25", path = "bottom" },
        { map = "-16,26", path = "bottom" },
        { map = "-16,27", path = "left" },
        { map = "-17,27", path = "bottom" },
        { map = "-17,28", path = "left(532)" },
        { map = "-17,29", path = "right" },
        { map = "-16,29", door = "147" },
        { map = "-16,28", path = "right" },
        { map = "-15,28", path = "right" },
        { map = "-14,28", path = "right" },
        { map = "-13,28", path = "right" },
        { map = "-12,28", path = "right" },
        { map = "-11,28", path = "right" },
        { map = "-10,28", path = "right" },
        { map = "-9,28", path = "top" },
        { map = "-9,27", path = "top" },
        { map = "-9,26", path = "right" },
        { map = "-8,26", door = "530" },
        { map = "-7,26", path = "right" },
        { map = "-6,26", path = "right" },
        { map = "-5,26", path = "right" },
        { map = "-4,26", path = "right" },
        { map = "-3,26", path = "right" },
        { map = "-2,26", path = "top" },
        { map = "-2,25", path = "top" },
        { map = "-2,24", custom = increment, path = "right" },
       }
    elseif ETAPE == 18 then
       return {
        --Zaap Rivage sufokien
        { map = "-1,24", path = "right" },
        { map = "0,24", path = "right" },
        { map = "1,24", path = "right" },
        { map = "2,24", path = "right" },
        { map = "3,24", path = "right" },
        { map = "4,24", path = "top" },
        { map = "4,23", path = "top" },
        { map = "4,22", path = "right" },
        { map = "5,22", path = "right" },
        { map = "6,22", path = "right" },
        { map = "7,22", path = "right" },
        { map = "8,22", path = "right" },
        { map = "9,22", custom = increment, path = "right" },
       }
    elseif ETAPE == 19 then
       return {
        --Zaap Sufokia
        { map = "10,22", path = "right" },
        { map = "11,22", path = "right" },
        { map = "12,22", path = "right" },
        { map = "13,22", path = "right" },
        { map = "14,22", path = "right" },
        { map = "15,22", path = "right" },
        { map = "16,22", path = "bottom" },
        { map = "16,23", path = "left" },
        { map = "15,23", path = "bottom" },
        { map = "15,24", path = "bottom" },
        { map = "15,25", path = "left" },
        { map = "14,25", path = "left" },
        { map = "13,25", path = "bottom", custom = increment },
       }
    elseif ETAPE == 20 then
       return {
        --Zaap Bord de la for�t malefique
        { map = "13,26", path = "right" },
        { map = "14,26", path = "right" },
        { map = "15,26", path = "top" },
        { map = "15,25", path = "top" },
        { map = "15,24", path = "top" },
        { map = "15,23", path = "right" },
        { map = "16,23", path = "top" },
        { map = "16,22", path = "left" },
        { map = "15,22", path = "left" },
        { map = "14,22", path = "left" },
        { map = "13,22", path = "left" },
        { map = "12,22", path = "left" },
        { map = "11,22", path = "left" },
        { map = "10,22", path = "left" },
        { map = "9,22", path = "left" },
        { map = "8,22", path = "left" },
        { map = "7,22", path = "left" },
        { map = "6,22", path = "left" },
        { map = "5,22", path = "left" },
        { map = "4,22", path = "left" },
        { map = "3,22", path = "left" },
        { map = "2,22", path = "left" },
        { map = "1,22", path = "top" },
        { map = "1,21", path = "top" },
        { map = "1,20", path = "top" },
        { map = "1,19", path = "top" },
        { map = "1,18", path = "top" },
        { map = "1,17", path = "top" },
        { map = "1,16", path = "top" },
        { map = "1,15", path = "top" },
        { map = "1,14", path = "top" },
        { map = "1,13", path = "left" },
        { map = "0,13", custom = increment, path = "left" },
       }
    elseif ETAPE == 21 then
       return {
        --Zaap Le coin des bouftous
        { map = "-1,13", path = "right" },
        { map = "0,13", path = "right" },
        { map = "1,13", path = "right" },
        { map = "2,13", path = "right" },
        { map = "3,13", path = "right" },
        { map = "4,13", path = "right" },
        { map = "5,13", path = "top" },
        { map = "5,12", path = "top" },
        { map = "5,11", path = "top" },
        { map = "5,10", path = "top" },
        { map = "5,9", path = "top" },
        { map = "5,8", custom = increment, path = "top" },
       }
    elseif ETAPE == 22 then
       return {
        --Zaap Port de madrestam
        { map = "5,7", path = "top" },
        { map = "5,6", path = "top" },
        { map = "5,5", path = "top" },
        { map = "5,4", path = "top" },
        { map = "5,3", path = "top" },
        { map = "5,2", path = "top" },
        { map = "5,1", path = "top" },
        { map = "5,0", path = "top" },
        { map = "5,-1", path = "top" },
        { map = "5,-2", path = "top" },
        { map = "5,-3", path = "right" },
        { map = "6,-3", path = "right" },
        { map = "7,-3", custom = increment, path = "top" },
       }
    elseif ETAPE == 23 then
       return {
        --Zaap Chateau d'amakna
        { map = "7,-4", path = "top" },
        { map = "7,-5", path = "right" },
        { map = "8,-5", path = "top" },
        { map = "8,-6", path = "left" },
        { map = "7,-6", path = "left" },
        { map = "6,-6", path = "left" },
        { map = "5,-6", path = "left" },
        { map = "4,-6", path = "left" },
        { map = "3,-6", custom = increment, path = "bottom" },
       }
    elseif ETAPE == 24 then
       return {
        --Zaap Montagne des craqueleurs
        { map = "3,-5", path = "right" },
        { map = "4,-5", path = "top" },
        { map = "4,-6", path = "top" },
        { map = "4,-7", path = "top" },
        { map = "4,-8", path = "left" },
        { map = "4,-9", path = "left" },
        { map = "3,-9", path = "left" },
        { map = "2,-9", path = "left" },
        { map = "1,-9", path = "left" },
        { map = "0,-9", path = "left" },
        { map = "-1,-9", path = "top" },
        { map = "-1,-10", path = "left" },
        { map = "-2,-10", path = "bottom" },
        { map = "-2,-9", path = "left" },
        { map = "-3,-9", path = "left" },
        { map = "-4,-9", path = "left" },
        { map = "-5,-9", custom = increment, path = "bottom" },
       }
    elseif ETAPE == 25 then
       return {
        --Zaap Village d'amakna
        { map = "-5,-8", path = "top" },
        { map = "-5,-9", path = "left" },
        { map = "-6,-9", path = "bottom" },
        { map = "-6,-8", path = "bottom" },
        { map = "-6,-7", path = "right" },
        { map = "-5,-7", path = "right" },
        { map = "-4,-7", path = "bottom" },
        { map = "-4,-6", path = "right(55)" },
        { map = "-3,-6", path = "right" },
        { map = "-2,-6", path = "bottom" },
        { map = "-2,-5", path = "right" },
        { map = "-1,-5", path = "right" },
        { map = "0,-5", path = "bottom" },
        { map = "0,-4", path = "bottom" },
        { map = "0,-3", path = "bottom" },
        { map = "0,-2", path = "bottom" },
        { map = "0,-1", path = "bottom" },
        { map = "0,0", path = "left" },
        { map = "-1,0", custom = increment, path = "left" },
       }
    elseif ETAPE == 26 then
       return {
        --Zaap Ile de la cawotte
        { map = "-2,0", path = "right" },
        { map = "-1,0", path = "right" },
        { map = "0,0", path = "right" },
        { map = "1,0", path = "right" },
        { map = "2,0", path = "right" },
        { map = "3,0", path = "right" },
        { map = "4,0", path = "right" },
        { map = "5,0", path = "right" },
        { map = "6,0", path = "right" },
        { map = "7,0", path = "top" },
        { map = "7,-1", path = "top" },
        { map = "7,-2", path = "top" },
        { map = "7,-3", path = "right" },
        { map = "8,-3", path = "right" },
        { map = "9,-3", path = "bottom" },
        { map = "9,-2", custom = bateau1 },
        { map = "24,-2", path = "top" },
        { map = "24,-3", path = "top" },
        { map = "24,-4", custom = increment, path = "right" },
       }
    elseif ETAPE == 27 then
       return {
        --Zaap Dunes des ossements
        { map = "25,-4", path = "left" },
        { map = "24,-4", path = "bottom" },
        { map = "24,-3", path = "bottom" },
        { map = "24,-2", custom = bateau2 },
        { map = "9,-2", path = "top" },
        { map = "9,-3", path = "top" },
        { map = "9,-4", path = "top" },
        { map = "9,-5", path = "right" },
        { map = "10,-5", path = "right" },
        { map = "11,-5", path = "top" },
        { map = "11,-6", path = "right" },
        { map = "12,-6", custom = bateau3 },
        { map = "14,-55", path = "top" },
        { map = "14,-56", path = "top" },
        { map = "14,-57", path = "right" },
        { map = "15,-57", path = "top" },
        { map = "15,-58", custom = final},
        }
    end
end

function increment()
    ETAPE = ETAPE + 1
    global:printSuccess("ETAPE "..ETAPE.." !")
end

function final()
    global:printSuccess("Script terminé ! Tu possèdes tous les zaaps disponibles" )
end

function pnjastrub()
    npc:npc(4398, 3)
    npc:reply(-1)
    npc:reply(-1)
end

function bateau1()
    npc:npc(134,3)
    npc:reply(-1)
    npc:reply(-1)
end

function bateau2()
    npc:npc(136,3)
    npc:reply(-1)
end

function bateau3()
    npc:npc(3464,3)
    npc:reply(-1)
end

function arrive_astrub()
    map:changeMap("bottom")
end

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
        { map = "15,-57", custom = increment, path = "top" },
       }
    elseif ETAPE == 28 then
        return{
            { map = "15,-58", path = "bottom" },
            { map = "15,-57", path = "bottom" },
            { map = "15,-56", path = "left" },
            { map = "14,-56", path = "bottom" },
            { map = "14,-55", custom = bateau3 },
            { map = "12,-6", path = "left" },
            { map = "11,-6", path = "bottom" },
            { map = "11,-5", path = "left" },
            { map = "10,-5", path = "left" },
            { map = "9,-5", path = "bottom" },
            { map = "9,-4", path = "bottom" },
            { map = "9,-3", path = "left" },
            { map = "8,-3", path = "left" },
            { map = "7,-3", path = "bottom" },
            { map = "7,-2", path = "bottom" },
            { map = "7,-1", path = "bottom" },
            { map = "7,0", path = "bottom" },
            { map = "7,1", path = "bottom" },
            { map = "7,2", path = "bottom" },
            { map = "7,3", path = "bottom" },
            { map = "7,4", path = "bottom" },
            { map = "7,5", path = "bottom" },
            { map = "7,6", path = "bottom" },
            { map = "7,7", path = "bottom" },
            { map = "7,8", path = "bottom" },
            { map = "7,9", path = "bottom" },
            { map = "7,10", path = "bottom" },
            { map = "7,11", path = "bottom" },
            { map = "7,12", path = "bottom" },
            { map = "7,13", path = "bottom" },
            { map = "7,14", path = "bottom" },
            { map = "7,15", path = "bottom" },
            { map = "7,16", path = "bottom" },
            { map = "7,17", path = "bottom" },
            { map = "7,18", path = "bottom" },
            { map = "7,19", path = "bottom" },
            { map = "7,20", path = "bottom" },
            { map = "7,21", path = "bottom" },
            { map = "7,22", path = "right" },
            { map = "8,22", path = "right" },
            { map = "9,22", path = "right" },
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
            { map = "15,25", path = "right" },
            { map = "16,25", path = "right" },
            { map = "17,25", path = "right" },
            { map = "18,25", path = "right" },
            { map = "19,25", path = "right" },
            { map = "20,25", path = "top" },
            { map = "20,24", path = "right" },
            { map = "21,24", path = "top" },
            { map = "21,23", custom = otomai_0, path = "right" },
            { map = "22,23", custom = increment, path = "left" },
        }
    elseif ETAPE == 29 then
        return{
            { map = "90707714", path = "bottom" },
            { map = "90707714", path = "bottom" },
            { map = "90707713", path = "left" },
            { map = "90707201", path = "left" },
            { map = "90706689", path = "left" },
            { map = "90706177", path = "left" },
            { map = "90705665", path = "bottom" },
            { map = "90705408", path = "bottom" },
            { map = "90705409", path = "left" },
            { map = "90704897", path = "left" },
            { map = "15,26", path = "right" },
            { map = "16,26", path = "bottom" },
            { map = "16,27", path = "left" },
            { map = "15,27", path = "bottom" },
            { map = "15,28", custom = otomai_1 },
            { map = "26214400", forcefight = true },
            { map = "26215424", forcefight = true },
            { map = "26216448", forcefight = true },
            { map = "26217472", custom = otomai_2 },
            { map = "153090", custom = otomai_3 },
        }
    elseif ETAPE == 30 then
        -- Zaap Village côtier
            return{
                { map = "-44,2", path = "right" },
                { map = "153090", custom = otomai_4 },
            }
    elseif ETAPE == 31 then
        -- Zaap Village de la Canopée
        return{
            { map = "-44,21", path = "left" },
            { map = "-45,21", path = "top" },
            { map = "154132", path = "left" },
            { map = "-46,20", path = "top" },
            { map = "-46,19", path = "top" },
            { map = "-46,18", path = "left" },
            { map = "-47,18", path = "bottom" },
            { map = "-47,19", path = "left" },
            { map = "-48,19", path = "left" },
            { map = "-49,19", path = "bottom" },
            { map = "-49,20", path = "bottom" },
            { map = "-49,21", path = "left" },
            { map = "-50,21", path = "left" },
            { map = "-51,21", path = "top" },
            { map = "-51,20", path = "left" },
            { map = "-52,20", path = "top" },
            { map = "-52,19", path = "left" },
            { map = "63964929", path = "top" },
            { map = "63964930", path = "top" },
            { map = "63964931", door = "469" },
            { map = "25694213", path = "271" },
            { map = "24118275", path = "top" },
            { map = "24118274", path = "left" },
            { map = "24117762", path = "top" },
            { map = "24117761", door = "296" },
            { map = "25690112", path = "right" },
            { map = "25690624", path = "345" },
            { map = "24118802", path = "right" },
            { map = "24119314", path = "539"},
            { map = "24118789", path = "left" },
            { map = "24118277", path = "left" },
            { map = "24117765", door = "120" },
            { map = "25691650", path = "bottom" },
            { map = "25691652", path = "bottom" },
            { map = "25691654", path = "388" },
            { map = "24117767", path = "top" },
            { map = "24117766", path = "right" },
            { map = "24118278", path = "bottom" },
            { map = "24118279", path = "right" },
            { map = "24118791", path = "433" },
            { map = "25691144", path = "bottom" },
            { map = "25691146", path = "240" },
            { map = "25692680", path = "146" },
            { map = "20973569", path = "left" },
            { map = "20973057", path = "top" },
            { map = "20973056", path = "top" },
            { map = "20973313", path = "left", custom = increment },
        }
    elseif ETAPE == 32 then
        -- Zaap Frigost
        return{
            { map = "20972801", path = "havenbag"},
            { map = "162791424", path = "zaap(191105026)"},
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
            { map = "-5,-18", path = "left" },
            { map = "-6,-18", path = "left" },
            { map = "-7,-18", path = "left" },
            { map = "-8,-18", path = "left" },
            { map = "-9,-18", path = "left" },
            { map = "-10,-18", path = "left" },
            { map = "-11,-18", path = "left" },
            { map = "-12,-18", path = "left" },
            { map = "-13,-18", path = "left" },
            { map = "-14,-18", path = "left" },
            { map = "-15,-18", path = "left" },
            { map = "-16,-18", path = "left" },
            { map = "-17,-18", path = "left" },
            { map = "-18,-18", path = "left" },
            { map = "-19,-18", path = "left" },
            { map = "-20,-18", path = "bottom" },
            { map = "-20,-17", path = "bottom" },
            { map = "-20,-16", path = "bottom" },
            { map = "-20,-15", path = "left" },
            { map = "-21,-15", path = "left" },
            { map = "-22,-15", path = "left" },
            { map = "-23,-15", path = "left" },
            { map = "-24,-15", path = "left" },
            { map = "-25,-15", path = "left" },
            { map = "-26,-15", path = "left" },
            { map = "-27,-15", path = "left" },
            { map = "-28,-15", path = "left" },
            { map = "-29,-15", path = "left" },
            { map = "-30,-15", path = "left" },
            { map = "-31,-15", path = "left" },
            { map = "-32,-15", path = "left" },
            { map = "-33,-15", path = "left(140)" },
            { map = "-34,-16", custom = frigost_1 },
            { map = "56623104", custom = frigost_2 },
            { map = "56624128", custom = frigost_3 },
            { map = "56625152", custom = frigost_4 },
            { map = "54175012", custom = frigost_5 },
            { map = "-80,-38", path = "top" },
            { map = "-80,-39", path = "top" },
            { map = "-80,-40", path = "top" },
            { map = "-80,-41", path = "right" },
            { map = "-79,-41", path = "right" },
            { map = "-78,-41", custom = increment },
        }
    elseif ETAPE == 33 then
        -- Zaap Moon + Alliance
        return{
            { map = "54172969", path = "havenbag"},
            { map = "162791424", path = "zaap(88082704)"},
            { map = "88082704", path = "right" },
            { map = "88083216", path = "bottom" },
            { map = "88083215", path = "bottom" },
            { map = "88083214", path = "right" },
            { map = "88083726", path = "right" },
            { map = "88084238", path = "bottom" },
            { map = "88084237", path = "right" },
            { map = "88084749", path = "right" },
            { map = "88085261", path = "right" },
            { map = "88085773", custom = goMoon, door = "355" },
            { map = "156893704", path = "right" },
            { map = "156762120", path = "havenbag"},
            { map = "162791424", path = "zaap(191105026)"},
            { map = "191105026", path = "right" },
            { map = "191106050", path = "right" },
            { map = "188746756", path = "right" },
            { map = "193332228", path = "top" },
            { map = "193332227", path = "top" },
            { map = "193332226", path = "right" },
            { map = "193331714", path = "right" },
            { map = "193200130", path = "right" },
            { map = "193200642", path = "right" },
            { map = "193201154", path = "top" },
            { map = "193201153", custom = debutPandala, path = "left" },
        }
    elseif ETAPE == 34 then
        -- Zaap Pandala
        return{
            { map = "193200641", fight = true, path = "left" },
            { map = "193200129", fight = true, path = "left" },
            { map = "193331713", fight = true, path = "bottom" },
            { map = "193331714", fight = true, path = "right" },
            { map = "193200130", fight = true, path = "right" },
            { map = "193200642", fight = true, path = "right" },
            { map = "193201154", fight = true, path = "top" },
            { map = "193201153", custom = suitePandala, path = "left" },
        }
    elseif ETAPE == 35 then
        return{
            { map = "193200641", path = "left" },
            { map = "193200129", path = "left" },
            { map = "193331713", path = "left" },
            { map = "193332225", path = "left" },
            { map = "188746753", path = "left" },
            { map = "188746241", path = "left" },
            { map = "188745729", path = "left" },
            { map = "188745217", path = "left" },
            { map = "188744705", door = "198" },
            { map = "192417798", custom = seringue_1, path = "right" },
        }
    elseif ETAPE == 36 then
        return{
            { map = "192417798", path = "right" },
            { map = "188744705", door = "412" },
            { map = "192937988", custom = seringue_2 },
        }
    elseif ETAPE == 37 then
        return{
            { map = "192937988", path = "396" },
            { map = "188744705", path = "bottom" },
            { map = "188744706", path = "right" },
            { map = "188745218", path = "bottom" },
            { map = "191104000", path = "bottom" },
            { map = "191104002", path = "bottom" },
            { map = "191104004", custom = seringue_3, path = "right" },
            { map = "191105028", path = "right" },
            { map = "191106052", path = "top" },
            { map = "191106050", custom = seringue_4, path = "top" },
        }
    elseif ETAPE == 38 then
        return{
            { map = "191106050", path = "top" },
            { map = "191106048", path = "left" },
            { map = "191105024", path = "left" },
            { map = "191104000", path = "top" },
            { map = "188745218", path = "top" },
            { map = "188745217", path = "left" },
            { map = "188744705", door = "412" },
            { map = "192937988", custom = craftVaccin, path = "396" },
        }
    elseif ETAPE == 39 then
        return{
            { map = "192937988", path = "396" },
            { map = "188744705", door = "198" },
            { map = "192417798", custom = goVaccin, path = "left" },
        }
    elseif ETAPE == 40 then
        return{
            { map = "188744705", path = "right" },
            { map = "188745217", path = "right" },
            { map = "188745729", path = "right" },
            { map = "188746241", path = "right" },
            { map = "188746753", path = "right" },
            { map = "193332225", path = "right" },
            { map = "193331713", path = "right" },
            { map = "193200129", path = "right" },
            { map = "193200641", path = "right" },
            { map = "193201153", path = "right" },
            { map = "189399809", path = "right" },
            { map = "189268737", path = "right" },
            { map = "206307331", custom = entreePandala },
            { map = "207620100", custom = bouleRose, path = "429" },
            { map = "207619076", path = "451" },
            { map = "206307842", custom = final },
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

function otomai_0()
    idnpc = "217"
	npc:npc(tonumber(idnpc), 6)
    sale:buyItem(2553, 1, 15000) -- [Gros Boulet]
    sale:buyItem(2551, 1, 10000) -- [Oreille de Foufayteur]
    sale:buyItem(429, 1, 10000) -- [Pointe de Flèche du Chafer d'Élite]
    sale:buyItem(429, 1, 10000)
    sale:buyItem(399, 1, 10000) -- [Huile de Sésame]
    sale:buyItem(2617, 1, 10000) -- [Tranche de Nodkoko]
    sale:buyItem(2618, 1, 10000) -- [Kokopaille]
    sale:buyItem(1002, 1, 10000) -- [Tronc de Kokoko]
    sale:buyItem(8759, 1, 10000) -- [Coffret maudit du Flib]
    npc:leaveDialog()
end

function otomai_1()
    global:printSuccess("LANCEMENT DE LA QU�TES : LE NOUVEAU MONDE")
    npc:npc(925,3)
    npc:reply(-1)
    npc:reply(-1)
    npc:reply(-1)
    global:delay(2000)
    npc:npc(925,3)
    npc:reply(-1)
    global:leaveDialog()
    global:delay(2000)
    npc:npc(925,3)
    npc:reply(-1)
end

function otomai_2()
    npc:npc(925,3)
    npc:reply(-1)
end

function otomai_3()
    increment()
    global:printSuccess("LANCEMENT DE LA QU�TES : L'�LE DES NAUFRAG�S")
    npc:npc(925,3)
    npc:reply(-1)
    npc:reply(-1)
    npc:reply(-1)
    map:changeMap("left")
end

function otomai_4()
    increment()
    npc:npc(925,3)
    npc:reply(-1)
    npc:reply(-1)
    npc:reply(-1)
    global:leaveDialog()
    npc:npc(925,3)
    npc:reply(-1)
end

function frigost_1()
    npc:npc(1236,3)
    npc:reply(-1)
end

function frigost_2()
    npc:npc(1236,3)
    npc:reply(-1)
end

function frigost_3()
    npc:npc(1236,3)
    npc:reply(-1)
end

function frigost_4()
    npc:npc(1236,3)
    npc:reply(-1)
end

function frigost_5()
    npc:npc(1236,3)
    global:leaveDialog()
    map:changeMap("right(83)")
end

function achatMoon()
    idnpc = "282"
	npc:npc(tonumber(idnpc), 6)
    sale:buyItem(1019, 1, 10000)
    sale:buyItem(1021, 1, 10000)
    npc:leaveDialog()
end

function goMoon()
	inventory:equipItem(1021, 7)
	inventory:equipItem(1019, 6)
	npc:npc(153,3)
	npc:reply(26261)
	npc:reply(26260)
	npc:reply(26259)
	npc:reply(26258)
	npc:reply(26255)
end

function debutPandala()
    increment()
	npc:npc(5604,3)
	npc:reply(53698)
	npc:reply(54266)
	npc:reply(54265)
	npc:reply(54264)
end

function suitePandala()
	increment()
	npc:npc(5604,3)
	npc:reply(54270)
	npc:reply(54269)
	npc:reply(54268)
	npc:reply(54267)
end

function seringue_1()
	increment()
	npc:npc(4334,3)
	npc:reply(54278)
	npc:reply(54277)
	npc:reply(54276)
	npc:reply(54275)
	npc:reply(54274)
	npc:reply(54273)
	npc:reply(54272)
	npc:reply(54271)
end

function seringue_2()
	increment()
	npc:npc(4344,3)
	npc:reply(54279)
	npc:reply(54283)
	npc:reply(54282)
	npc:reply(54281)
	npc:reply(54280)
end

function seringue_3()
    idnpc = "340"
	npc:npc(tonumber(idnpc), 6)
    sale:buyItem(421, 10, 1000) -- Ortie
    sale:buyItem(421, 10, 1000)
    sale:buyItem(421, 10, 1000)
    sale:buyItem(421, 10, 1000)
    sale:buyItem(421, 10, 1000)
    sale:buyItem(2449, 1, 10000) -- Tique
    sale:buyItem(2449, 1, 10000)
    sale:buyItem(2449, 1, 10000)
    sale:buyItem(2449, 1, 10000)
    sale:buyItem(2449, 1, 10000)
    npc:leaveDialog()
end

function seringue_4()
	increment()
	npc:npc(4319,3)
	npc:reply(54288)
	npc:reply(54287)
	npc:reply(54286)
	npc:reply(54285)
	npc:reply(54284)
end

function goVaccin()
	increment()
	npc:npc(4334,3)
	npc:reply(54293)
	npc:reply(54292)
	npc:reply(54291)
	npc:reply(54290)
	npc:reply(54289)
end

function entreePandala()
	npc:npc(5605,3)
	npc:reply(54298)
	npc:reply(54297)
	npc:reply(54296)
	npc:reply(54295)
	npc:reply(54294)
	inventory:useItem(23043)
end

function bouleRose()
	npc:npc(5677,3)
	npc:reply(54308)
	npc:reply(54307)
	npc:reply(54306)
	npc:reply(54305)
	npc:reply(54304)
	npc:reply(54303)
	npc:reply(54302)
	npc:reply(54301)
	npc:reply(54300)
	npc:reply(54299)
end

function craftVaccin()
	map:door(270)
    global:printSuccess("Accès à la table de craft.")
    global:delay(500)
    craft:putItem(421,50)
    global:delay(500)
    craft:putItem(2449,5)
    global:delay(500)
    craft:putItem(23038,1)
    global:delay(500)
    craft:ready()
    global:printSuccess("Craft termine.")
    global:leaveDialog()
	increment()
end

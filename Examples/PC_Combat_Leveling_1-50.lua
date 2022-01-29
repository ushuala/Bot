-----------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------
--------------------------------  TRAJET DÉCHIFRÉ AVEC NoTrade --------------------------------------
------------------------ CREATED BY Pharwell (Discord : Pharwell#2714) ------------------------------
-------------------- NoTrade DISCORD SERVER: https://discord.gg/EYJXKVryNm --------------------------
---- https://forum.cheat-gam3.com/threads/notrade-v1-1-cest-fini-le-monopole-des-trajets.207876/ ----
-----------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------


PANOPLIE = 0--à éditer de 1 à 6 (cf la documentation "à lire")
ETAPE = 0--En cas de secour
AUTO_DELETE = {519,16513,16512,367,2478,16511,385,16503,16505,16518,1984,16515,16524,310,311,16522,287,6897,6898,6899,6900,6901,6902,16829,16832,641,374,6791,6789,2663,306,6796,6794,2662,309,2318,6842,6797,6795,2661,2659}




function etape()
	if character:level() >= 25 and character:level() < 30 then
		ETAPE = 11
		global:printSuccess("ETAPE = 11")
	elseif character:level() >= 30 and character:level() < 35 then
		ETAPE = 12
		global:printSuccess("ETAPE = 12")
	elseif character:level() >= 35 and character:level() < 40 then
		ETAPE = 13
		global:printSuccess("ETAPE = 13")
	elseif character:level() >= 40 and character:level() < 50 then
		ETAPE = 14
		global:printSuccess("ETAPE = 14")
	end
end

function move()
	etape()
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
				{ map = "-2,-3", path = "right" },
				{ map = "-1,-3", path = "right" },
				{ map = "0,-3", path = "right" },
				{ map = "1,-3", path = "right" },
				{ map = "2,-3", path = "right" },
				{ map = "3,-3", path = "right" },
				{ map = "4,1", path = "top" },
				{ map = "3,1", path = "top" },
				{ map = "5,0", path = "left" },
				{ map = "5,-1", path = "left" },
				{ map = "4,-1", path = "bottom" },
				{ map = "4,0", path = "left" },
				{ map = "3,0", path = "top" },
				{ map = "3,-1", path = "top" },
				{ map = "3,-2", path = "top" },
				{ map = "4,-3", custom = pnjastrub },
				{ map = "192416776", custom = arrive_astrub },
			}
		end
	elseif ETAPE == 8 then
		if character:level() < 20 then
			if PANOPLIE == 1 then
				violet_1()
				if inventory:itemCount(CAPE) < 1 or inventory:itemCount(COIFFE) < 1 or inventory:itemCount(ANNEAU) < 1 or inventory:itemCount(BOTTES) < 1 or inventory:itemCount(CEINTURE) < 1 or inventory:itemCount(AMULETTE) < 1 then
					return{
						{ map = "3,-14", path = "top" },
						{ map = "6,-19", path = "bottom", fight = true },
						{ map = "6,-18", path = "right", fight = true },
						{ map = "7,-18", path = "bottom", fight = true },
						{ map = "7,-17", path = "bottom", fight = true },
						{ map = "7,-16", path = "bottom", fight = true },
						{ map = "7,-15", path = "left", fight = true },
						{ map = "6,-15", path = "top", fight = true },
						{ map = "6,-16", path = "left", fight = true },
						{ map = "5,-16", path = "bottom", fight = true },
						{ map = "5,-15", path = "left", fight = true },
						{ map = "4,-15", path = "top", fight = true },
						{ map = "4,-16", path = "left", fight = true },
						{ map = "3,-16", path = "bottom", fight = true },
						{ map = "3,-15", path = "left", fight = true },
						{ map = "2,-15", path = "left", fight = true },
						{ map = "1,-15", path = "top", fight = true },
						{ map = "1,-16", path = "right", fight = true },
						{ map = "2,-16", path = "top", fight = true },
						{ map = "2,-17", path = "left", fight = true },
						{ map = "1,-17", path = "top", fight = true },
						{ map = "1,-18", path = "right", fight = true },
						{ map = "2,-18", path = "top", fight = true },
						{ map = "2,-19", path = "left", fight = true },
						{ map = "1,-19", path = "top", fight = true },
						{ map = "1,-20", path = "top", fight = true },
						{ map = "1,-21", path = "right", fight = true },
						{ map = "2,-21", path = "bottom", fight = true },
						{ map = "2,-20", path = "right", fight = true },
						{ map = "3,-20", path = "top", fight = true },
						{ map = "3,-21", path = "right", fight = true },
						{ map = "4,-21", path = "right", fight = true },
						{ map = "5,-21", path = "right", fight = true },
						{ map = "6,-21", path = "right", fight = true },
						{ map = "7,-21", path = "bottom", fight = true },
						{ map = "7,-20", path = "left", fight = true },
						{ map = "6,-20", path = "left", fight = true },
						{ map = "5,-20", path = "left", fight = true },
						{ map = "4,-20", path = "bottom", fight = true },
						{ map = "4,-19", path = "left", fight = true },
						{ map = "3,-19", path = "bottom", fight = true },
						{ map = "3,-18", path = "bottom", fight = true },
						{ map = "3,-17", path = "right", fight = true },
						{ map = "4,-17", path = "right", fight = true },
						{ map = "5,-17", path = "top", fight = true },
						{ map = "5,-18", path = "top", fight = true },
						{ map = "5,-19", path = "right", fight = true },
					}
				elseif inventory:itemCount(CAPE) >= 1 and inventory:itemCount(COIFFE) >= 1 and inventory:itemCount(ANNEAU) >= 1 and inventory:itemCount(BOTTES) >= 1 and inventory:itemCount(CEINTURE) >= 1 and inventory:itemCount(AMULETTE) >= 1 then
					return{
						{ map = "1,-21", path = "right" },
						{ map = "2,-21", path = "right" },
						{ map = "3,-21", path = "right" },
						{ map = "4,-21", path = "right" },
						{ map = "5,-21", path = "right" },
						{ map = "6,-21", path = "right" },
						{ map = "7,-21", path = "bottom" },
						{ map = "7,-20", path = "bottom" },
						{ map = "7,-19", path = "bottom" },
						{ map = "1,-20", path = "right" },
						{ map = "2,-20", path = "right" },
						{ map = "3,-20", path = "right" },
						{ map = "4,-20", path = "right" },
						{ map = "5,-20", path = "right" },
						{ map = "6,-20", path = "right" },
						{ map = "1,-18", path = "right" },
						{ map = "2,-18", path = "right" },
						{ map = "3,-18", path = "right" }, 
						{ map = "4,-18", path = "right" },
						{ map = "5,-18", path = "right" },
						{ map = "6,-18", path = "right" },
						{ map = "1,-15", path = "right" },
						{ map = "2,-15", path = "right" },
						{ map = "3,-15", path = "right" },
						{ map = "4,-15", path = "right" },
						{ map = "5,-15", path = "right" },
						{ map = "6,-15", path = "right" },
						{ map = "1,-16", path = "right" },
						{ map = "2,-16", path = "right" },
						{ map = "3,-16", path = "right" },
						{ map = "4,-16", path = "right" },
						{ map = "5,-16", path = "right" },
						{ map = "6,-16", path = "right" },
						{ map = "7,-15", path = "top" },
						{ map = "7,-16", path = "top" },
						{ map = "3,-19", path = "right" },
						{ map = "4,-19", path = "right" },
						{ map = "5,-19", path = "right" },
						{ map = "3,-17", path = "right" },
						{ map = "4,-17", path = "right" },
						{ map = "5,-17", path = "right" },
						{ map = "6,-17", path = "top" },
						{ map = "1,-17", path = "top" },
						{ map = "1,-19", path = "bottom" },
						{ map = "6,-19", path = "bottom" },
						{ map = "7,-17", path = "top" },
						{ map = "7,-18", custom = stuff_2 },
					}
				end
			elseif PANOPLIE == 2 then
				rouge_1()
				if inventory:itemCount(CAPE) < 1 or inventory:itemCount(COIFFE) < 1 or inventory:itemCount(ANNEAU) < 1 or inventory:itemCount(BOTTES) < 1 or inventory:itemCount(CEINTURE) < 1 or inventory:itemCount(AMULETTE) < 1 then
					return{
						{ map = "3,-14", path = "top" },
						{ map = "6,-19", path = "bottom", fight = true },
						{ map = "6,-18", path = "right", fight = true },
						{ map = "7,-18", path = "bottom", fight = true },
						{ map = "7,-17", path = "bottom", fight = true },
						{ map = "7,-16", path = "bottom", fight = true },
						{ map = "7,-15", path = "left", fight = true },
						{ map = "6,-15", path = "top", fight = true },
						{ map = "6,-16", path = "left", fight = true },
						{ map = "5,-16", path = "bottom", fight = true },
						{ map = "5,-15", path = "left", fight = true },
						{ map = "4,-15", path = "top", fight = true },
						{ map = "4,-16", path = "left", fight = true },
						{ map = "3,-16", path = "bottom", fight = true },
						{ map = "3,-15", path = "left", fight = true },
						{ map = "2,-15", path = "left", fight = true },
						{ map = "1,-15", path = "top", fight = true },
						{ map = "1,-16", path = "right", fight = true },
						{ map = "2,-16", path = "top", fight = true },
						{ map = "2,-17", path = "left", fight = true },
						{ map = "1,-17", path = "top", fight = true },
						{ map = "1,-18", path = "right", fight = true },
						{ map = "2,-18", path = "top", fight = true },
						{ map = "2,-19", path = "left", fight = true },
						{ map = "1,-19", path = "top", fight = true },
						{ map = "1,-20", path = "top", fight = true },
						{ map = "1,-21", path = "right", fight = true },
						{ map = "2,-21", path = "bottom", fight = true },
						{ map = "2,-20", path = "right", fight = true },
						{ map = "3,-20", path = "top", fight = true },
						{ map = "3,-21", path = "right", fight = true },
						{ map = "4,-21", path = "right", fight = true },
						{ map = "5,-21", path = "right", fight = true },
						{ map = "6,-21", path = "right", fight = true },
						{ map = "7,-21", path = "bottom", fight = true },
						{ map = "7,-20", path = "left", fight = true },
						{ map = "6,-20", path = "left", fight = true },
						{ map = "5,-20", path = "left", fight = true },
						{ map = "4,-20", path = "bottom", fight = true },
						{ map = "4,-19", path = "left", fight = true },
						{ map = "3,-19", path = "bottom", fight = true },
						{ map = "3,-18", path = "bottom", fight = true },
						{ map = "3,-17", path = "right", fight = true },
						{ map = "4,-17", path = "right", fight = true },
						{ map = "5,-17", path = "top", fight = true },
						{ map = "5,-18", path = "top", fight = true },
						{ map = "5,-19", path = "right", fight = true },
					}
				elseif inventory:itemCount(CAPE) >= 1 and inventory:itemCount(COIFFE) >= 1 and inventory:itemCount(ANNEAU) >= 1 and inventory:itemCount(BOTTES) >= 1 and inventory:itemCount(CEINTURE) >= 1 and inventory:itemCount(AMULETTE) >= 1 then
					return{
						{ map = "1,-21", path = "right" },
						{ map = "2,-21", path = "right" },
						{ map = "3,-21", path = "right" },
						{ map = "4,-21", path = "right" },
						{ map = "5,-21", path = "right" },
						{ map = "6,-21", path = "right" },
						{ map = "7,-21", path = "bottom" },
						{ map = "7,-20", path = "bottom" },
						{ map = "7,-19", path = "bottom" },
						{ map = "1,-20", path = "right" },
						{ map = "2,-20", path = "right" },
						{ map = "3,-20", path = "right" },
						{ map = "4,-20", path = "right" },
						{ map = "5,-20", path = "right" },
						{ map = "6,-20", path = "right" },
						{ map = "1,-18", path = "right" },
						{ map = "2,-18", path = "right" },
						{ map = "3,-18", path = "right" }, 
						{ map = "4,-18", path = "right" },
						{ map = "5,-18", path = "right" },
						{ map = "6,-18", path = "right" },
						{ map = "1,-15", path = "right" },
						{ map = "2,-15", path = "right" },
						{ map = "3,-15", path = "right" },
						{ map = "4,-15", path = "right" },
						{ map = "5,-15", path = "right" },
						{ map = "6,-15", path = "right" },
						{ map = "1,-16", path = "right" },
						{ map = "2,-16", path = "right" },
						{ map = "3,-16", path = "right" },
						{ map = "4,-16", path = "right" },
						{ map = "5,-16", path = "right" },
						{ map = "6,-16", path = "right" },
						{ map = "7,-15", path = "top" },
						{ map = "7,-16", path = "top" },
						{ map = "3,-19", path = "right" },
						{ map = "4,-19", path = "right" },
						{ map = "5,-19", path = "right" },
						{ map = "3,-17", path = "right" },
						{ map = "4,-17", path = "right" },
						{ map = "5,-17", path = "right" },
						{ map = "6,-17", path = "top" },
						{ map = "1,-17", path = "top" },
						{ map = "1,-19", path = "bottom" },
						{ map = "6,-19", path = "bottom" },
						{ map = "7,-17", path = "top" },
						{ map = "7,-18", custom = stuff_2 },
					}
				end
			elseif PANOPLIE == 3 then
				bleu_1()
				if inventory:itemCount(CAPE) < 1 or inventory:itemCount(COIFFE) < 1 or inventory:itemCount(ANNEAU) < 1 or inventory:itemCount(BOTTES) < 1 or inventory:itemCount(CEINTURE) < 1 or inventory:itemCount(AMULETTE) < 1 then
					return{
						{ map = "3,-14", path = "top" },
						{ map = "6,-19", path = "bottom", fight = true },
						{ map = "6,-18", path = "right", fight = true },
						{ map = "7,-18", path = "bottom", fight = true },
						{ map = "7,-17", path = "bottom", fight = true },
						{ map = "7,-16", path = "bottom", fight = true },
						{ map = "7,-15", path = "left", fight = true },
						{ map = "6,-15", path = "top", fight = true },
						{ map = "6,-16", path = "left", fight = true },
						{ map = "5,-16", path = "bottom", fight = true },
						{ map = "5,-15", path = "left", fight = true },
						{ map = "4,-15", path = "top", fight = true },
						{ map = "4,-16", path = "left", fight = true },
						{ map = "3,-16", path = "bottom", fight = true },
						{ map = "3,-15", path = "left", fight = true },
						{ map = "2,-15", path = "left", fight = true },
						{ map = "1,-15", path = "top", fight = true },
						{ map = "1,-16", path = "right", fight = true },
						{ map = "2,-16", path = "top", fight = true },
						{ map = "2,-17", path = "left", fight = true },
						{ map = "1,-17", path = "top", fight = true },
						{ map = "1,-18", path = "right", fight = true },
						{ map = "2,-18", path = "top", fight = true },
						{ map = "2,-19", path = "left", fight = true },
						{ map = "1,-19", path = "top", fight = true },
						{ map = "1,-20", path = "top", fight = true },
						{ map = "1,-21", path = "right", fight = true },
						{ map = "2,-21", path = "bottom", fight = true },
						{ map = "2,-20", path = "right", fight = true },
						{ map = "3,-20", path = "top", fight = true },
						{ map = "3,-21", path = "right", fight = true },
						{ map = "4,-21", path = "right", fight = true },
						{ map = "5,-21", path = "right", fight = true },
						{ map = "6,-21", path = "right", fight = true },
						{ map = "7,-21", path = "bottom", fight = true },
						{ map = "7,-20", path = "left", fight = true },
						{ map = "6,-20", path = "left", fight = true },
						{ map = "5,-20", path = "left", fight = true },
						{ map = "4,-20", path = "bottom", fight = true },
						{ map = "4,-19", path = "left", fight = true },
						{ map = "3,-19", path = "bottom", fight = true },
						{ map = "3,-18", path = "bottom", fight = true },
						{ map = "3,-17", path = "right", fight = true },
						{ map = "4,-17", path = "right", fight = true },
						{ map = "5,-17", path = "top", fight = true },
						{ map = "5,-18", path = "top", fight = true },
						{ map = "5,-19", path = "right", fight = true },
					}
				elseif inventory:itemCount(CAPE) >= 1 and inventory:itemCount(COIFFE) >= 1 and inventory:itemCount(ANNEAU) >= 1 and inventory:itemCount(BOTTES) >= 1 and inventory:itemCount(CEINTURE) >= 1 and inventory:itemCount(AMULETTE) >= 1 then
					return{
						{ map = "1,-21", path = "right" },
						{ map = "2,-21", path = "right" },
						{ map = "3,-21", path = "right" },
						{ map = "4,-21", path = "right" },
						{ map = "5,-21", path = "right" },
						{ map = "6,-21", path = "right" },
						{ map = "7,-21", path = "bottom" },
						{ map = "7,-20", path = "bottom" },
						{ map = "7,-19", path = "bottom" },
						{ map = "1,-20", path = "right" },
						{ map = "2,-20", path = "right" },
						{ map = "3,-20", path = "right" },
						{ map = "4,-20", path = "right" },
						{ map = "5,-20", path = "right" },
						{ map = "6,-20", path = "right" },
						{ map = "1,-18", path = "right" },
						{ map = "2,-18", path = "right" },
						{ map = "3,-18", path = "right" }, 
						{ map = "4,-18", path = "right" },
						{ map = "5,-18", path = "right" },
						{ map = "6,-18", path = "right" },
						{ map = "1,-15", path = "right" },
						{ map = "2,-15", path = "right" },
						{ map = "3,-15", path = "right" },
						{ map = "4,-15", path = "right" },
						{ map = "5,-15", path = "right" },
						{ map = "6,-15", path = "right" },
						{ map = "1,-16", path = "right" },
						{ map = "2,-16", path = "right" },
						{ map = "3,-16", path = "right" },
						{ map = "4,-16", path = "right" },
						{ map = "5,-16", path = "right" },
						{ map = "6,-16", path = "right" },
						{ map = "7,-15", path = "top" },
						{ map = "7,-16", path = "top" },
						{ map = "3,-19", path = "right" },
						{ map = "4,-19", path = "right" },
						{ map = "5,-19", path = "right" },
						{ map = "3,-17", path = "right" },
						{ map = "4,-17", path = "right" },
						{ map = "5,-17", path = "right" },
						{ map = "6,-17", path = "top" },
						{ map = "1,-17", path = "top" },
						{ map = "1,-19", path = "bottom" },
						{ map = "6,-19", path = "bottom" },
						{ map = "7,-17", path = "top" },
						{ map = "7,-18", custom = stuff_2 },
					}
				end
			elseif PANOPLIE == 4 then
				jaune_1()
				if inventory:itemCount(CAPE) < 1 or inventory:itemCount(COIFFE) < 1 or inventory:itemCount(ANNEAU) < 1 or inventory:itemCount(BOTTES) < 1 or inventory:itemCount(CEINTURE) < 1 or inventory:itemCount(AMULETTE) < 1 then
					return{
						{ map = "3,-14", path = "top" },
						{ map = "6,-19", path = "bottom", fight = true },
						{ map = "6,-18", path = "right", fight = true },
						{ map = "7,-18", path = "bottom", fight = true },
						{ map = "7,-17", path = "bottom", fight = true },
						{ map = "7,-16", path = "bottom", fight = true },
						{ map = "7,-15", path = "left", fight = true },
						{ map = "6,-15", path = "top", fight = true },
						{ map = "6,-16", path = "left", fight = true },
						{ map = "5,-16", path = "bottom", fight = true },
						{ map = "5,-15", path = "left", fight = true },
						{ map = "4,-15", path = "top", fight = true },
						{ map = "4,-16", path = "left", fight = true },
						{ map = "3,-16", path = "bottom", fight = true },
						{ map = "3,-15", path = "left", fight = true },
						{ map = "2,-15", path = "left", fight = true },
						{ map = "1,-15", path = "top", fight = true },
						{ map = "1,-16", path = "right", fight = true },
						{ map = "2,-16", path = "top", fight = true },
						{ map = "2,-17", path = "left", fight = true },
						{ map = "1,-17", path = "top", fight = true },
						{ map = "1,-18", path = "right", fight = true },
						{ map = "2,-18", path = "top", fight = true },
						{ map = "2,-19", path = "left", fight = true },
						{ map = "1,-19", path = "top", fight = true },
						{ map = "1,-20", path = "top", fight = true },
						{ map = "1,-21", path = "right", fight = true },
						{ map = "2,-21", path = "bottom", fight = true },
						{ map = "2,-20", path = "right", fight = true },
						{ map = "3,-20", path = "top", fight = true },
						{ map = "3,-21", path = "right", fight = true },
						{ map = "4,-21", path = "right", fight = true },
						{ map = "5,-21", path = "right", fight = true },
						{ map = "6,-21", path = "right", fight = true },
						{ map = "7,-21", path = "bottom", fight = true },
						{ map = "7,-20", path = "left", fight = true },
						{ map = "6,-20", path = "left", fight = true },
						{ map = "5,-20", path = "left", fight = true },
						{ map = "4,-20", path = "bottom", fight = true },
						{ map = "4,-19", path = "left", fight = true },
						{ map = "3,-19", path = "bottom", fight = true },
						{ map = "3,-18", path = "bottom", fight = true },
						{ map = "3,-17", path = "right", fight = true },
						{ map = "4,-17", path = "right", fight = true },
						{ map = "5,-17", path = "top", fight = true },
						{ map = "5,-18", path = "top", fight = true },
						{ map = "5,-19", path = "right", fight = true },
					}
				elseif inventory:itemCount(CAPE) >= 1 and inventory:itemCount(COIFFE) >= 1 and inventory:itemCount(ANNEAU) >= 1 and inventory:itemCount(BOTTES) >= 1 and inventory:itemCount(CEINTURE) >= 1 and inventory:itemCount(AMULETTE) >= 1 then
					return{
						{ map = "1,-21", path = "right" },
						{ map = "2,-21", path = "right" },
						{ map = "3,-21", path = "right" },
						{ map = "4,-21", path = "right" },
						{ map = "5,-21", path = "right" },
						{ map = "6,-21", path = "right" },
						{ map = "7,-21", path = "bottom" },
						{ map = "7,-20", path = "bottom" },
						{ map = "7,-19", path = "bottom" },
						{ map = "1,-20", path = "right" },
						{ map = "2,-20", path = "right" },
						{ map = "3,-20", path = "right" },
						{ map = "4,-20", path = "right" },
						{ map = "5,-20", path = "right" },
						{ map = "6,-20", path = "right" },
						{ map = "1,-18", path = "right" },
						{ map = "2,-18", path = "right" },
						{ map = "3,-18", path = "right" }, 
						{ map = "4,-18", path = "right" },
						{ map = "5,-18", path = "right" },
						{ map = "6,-18", path = "right" },
						{ map = "1,-15", path = "right" },
						{ map = "2,-15", path = "right" },
						{ map = "3,-15", path = "right" },
						{ map = "4,-15", path = "right" },
						{ map = "5,-15", path = "right" },
						{ map = "6,-15", path = "right" },
						{ map = "1,-16", path = "right" },
						{ map = "2,-16", path = "right" },
						{ map = "3,-16", path = "right" },
						{ map = "4,-16", path = "right" },
						{ map = "5,-16", path = "right" },
						{ map = "6,-16", path = "right" },
						{ map = "7,-15", path = "top" },
						{ map = "7,-16", path = "top" },
						{ map = "3,-19", path = "right" },
						{ map = "4,-19", path = "right" },
						{ map = "5,-19", path = "right" },
						{ map = "3,-17", path = "right" },
						{ map = "4,-17", path = "right" },
						{ map = "5,-17", path = "right" },
						{ map = "6,-17", path = "top" },
						{ map = "1,-17", path = "top" },
						{ map = "1,-19", path = "bottom" },
						{ map = "6,-19", path = "bottom" },
						{ map = "7,-17", path = "top" },
						{ map = "7,-18", custom = stuff_2 },
					}
				end
			elseif PANOPLIE == 5 then
				vert_1()
				if inventory:itemCount(CAPE) < 1 or inventory:itemCount(COIFFE) < 1 or inventory:itemCount(ANNEAU) < 1 or inventory:itemCount(BOTTES) < 1 or inventory:itemCount(CEINTURE) < 1 or inventory:itemCount(AMULETTE) < 1 then
					return{
						{ map = "3,-14", path = "top" },
						{ map = "6,-19", path = "bottom", fight = true },
						{ map = "6,-18", path = "right", fight = true },
						{ map = "7,-18", path = "bottom", fight = true },
						{ map = "7,-17", path = "bottom", fight = true },
						{ map = "7,-16", path = "bottom", fight = true },
						{ map = "7,-15", path = "left", fight = true },
						{ map = "6,-15", path = "top", fight = true },
						{ map = "6,-16", path = "left", fight = true },
						{ map = "5,-16", path = "bottom", fight = true },
						{ map = "5,-15", path = "left", fight = true },
						{ map = "4,-15", path = "top", fight = true },
						{ map = "4,-16", path = "left", fight = true },
						{ map = "3,-16", path = "bottom", fight = true },
						{ map = "3,-15", path = "left", fight = true },
						{ map = "2,-15", path = "left", fight = true },
						{ map = "1,-15", path = "top", fight = true },
						{ map = "1,-16", path = "right", fight = true },
						{ map = "2,-16", path = "top", fight = true },
						{ map = "2,-17", path = "left", fight = true },
						{ map = "1,-17", path = "top", fight = true },
						{ map = "1,-18", path = "right", fight = true },
						{ map = "2,-18", path = "top", fight = true },
						{ map = "2,-19", path = "left", fight = true },
						{ map = "1,-19", path = "top", fight = true },
						{ map = "1,-20", path = "top", fight = true },
						{ map = "1,-21", path = "right", fight = true },
						{ map = "2,-21", path = "bottom", fight = true },
						{ map = "2,-20", path = "right", fight = true },
						{ map = "3,-20", path = "top", fight = true },
						{ map = "3,-21", path = "right", fight = true },
						{ map = "4,-21", path = "right", fight = true },
						{ map = "5,-21", path = "right", fight = true },
						{ map = "6,-21", path = "right", fight = true },
						{ map = "7,-21", path = "bottom", fight = true },
						{ map = "7,-20", path = "left", fight = true },
						{ map = "6,-20", path = "left", fight = true },
						{ map = "5,-20", path = "left", fight = true },
						{ map = "4,-20", path = "bottom", fight = true },
						{ map = "4,-19", path = "left", fight = true },
						{ map = "3,-19", path = "bottom", fight = true },
						{ map = "3,-18", path = "bottom", fight = true },
						{ map = "3,-17", path = "right", fight = true },
						{ map = "4,-17", path = "right", fight = true },
						{ map = "5,-17", path = "top", fight = true },
						{ map = "5,-18", path = "top", fight = true },
						{ map = "5,-19", path = "right", fight = true },
					}
				elseif inventory:itemCount(CAPE) >= 1 and inventory:itemCount(COIFFE) >= 1 and inventory:itemCount(ANNEAU) >= 1 and inventory:itemCount(BOTTES) >= 1 and inventory:itemCount(CEINTURE) >= 1 and inventory:itemCount(AMULETTE) >= 1 then
					return{
						{ map = "1,-21", path = "right" },
						{ map = "2,-21", path = "right" },
						{ map = "3,-21", path = "right" },
						{ map = "4,-21", path = "right" },
						{ map = "5,-21", path = "right" },
						{ map = "6,-21", path = "right" },
						{ map = "7,-21", path = "bottom" },
						{ map = "7,-20", path = "bottom" },
						{ map = "7,-19", path = "bottom" },
						{ map = "1,-20", path = "right" },
						{ map = "2,-20", path = "right" },
						{ map = "3,-20", path = "right" },
						{ map = "4,-20", path = "right" },
						{ map = "5,-20", path = "right" },
						{ map = "6,-20", path = "right" },
						{ map = "1,-18", path = "right" },
						{ map = "2,-18", path = "right" },
						{ map = "3,-18", path = "right" }, 
						{ map = "4,-18", path = "right" },
						{ map = "5,-18", path = "right" },
						{ map = "6,-18", path = "right" },
						{ map = "1,-15", path = "right" },
						{ map = "2,-15", path = "right" },
						{ map = "3,-15", path = "right" },
						{ map = "4,-15", path = "right" },
						{ map = "5,-15", path = "right" },
						{ map = "6,-15", path = "right" },
						{ map = "1,-16", path = "right" },
						{ map = "2,-16", path = "right" },
						{ map = "3,-16", path = "right" },
						{ map = "4,-16", path = "right" },
						{ map = "5,-16", path = "right" },
						{ map = "6,-16", path = "right" },
						{ map = "7,-15", path = "top" },
						{ map = "7,-16", path = "top" },
						{ map = "3,-19", path = "right" },
						{ map = "4,-19", path = "right" },
						{ map = "5,-19", path = "right" },
						{ map = "3,-17", path = "right" },
						{ map = "4,-17", path = "right" },
						{ map = "5,-17", path = "right" },
						{ map = "6,-17", path = "top" },
						{ map = "1,-17", path = "top" },
						{ map = "1,-19", path = "bottom" },
						{ map = "6,-19", path = "bottom" },
						{ map = "7,-17", path = "top" },
						{ map = "7,-18", custom = stuff_2 },
					}
				end
			elseif PANOPLIE == 6 then
				rose_1()
				if inventory:itemCount(CAPE) < 1 or inventory:itemCount(COIFFE) < 1 or inventory:itemCount(ANNEAU) < 1 or inventory:itemCount(BOTTES) < 1 or inventory:itemCount(CEINTURE) < 1 or inventory:itemCount(AMULETTE) < 1 then
					return{
						{ map = "3,-14", path = "top" },
						{ map = "6,-19", path = "bottom", fight = true },
						{ map = "6,-18", path = "right", fight = true },
						{ map = "7,-18", path = "bottom", fight = true },
						{ map = "7,-17", path = "bottom", fight = true },
						{ map = "7,-16", path = "bottom", fight = true },
						{ map = "7,-15", path = "left", fight = true },
						{ map = "6,-15", path = "top", fight = true },
						{ map = "6,-16", path = "left", fight = true },
						{ map = "5,-16", path = "bottom", fight = true },
						{ map = "5,-15", path = "left", fight = true },
						{ map = "4,-15", path = "top", fight = true },
						{ map = "4,-16", path = "left", fight = true },
						{ map = "3,-16", path = "bottom", fight = true },
						{ map = "3,-15", path = "left", fight = true },
						{ map = "2,-15", path = "left", fight = true },
						{ map = "1,-15", path = "top", fight = true },
						{ map = "1,-16", path = "right", fight = true },
						{ map = "2,-16", path = "top", fight = true },
						{ map = "2,-17", path = "left", fight = true },
						{ map = "1,-17", path = "top", fight = true },
						{ map = "1,-18", path = "right", fight = true },
						{ map = "2,-18", path = "top", fight = true },
						{ map = "2,-19", path = "left", fight = true },
						{ map = "1,-19", path = "top", fight = true },
						{ map = "1,-20", path = "top", fight = true },
						{ map = "1,-21", path = "right", fight = true },
						{ map = "2,-21", path = "bottom", fight = true },
						{ map = "2,-20", path = "right", fight = true },
						{ map = "3,-20", path = "top", fight = true },
						{ map = "3,-21", path = "right", fight = true },
						{ map = "4,-21", path = "right", fight = true },
						{ map = "5,-21", path = "right", fight = true },
						{ map = "6,-21", path = "right", fight = true },
						{ map = "7,-21", path = "bottom", fight = true },
						{ map = "7,-20", path = "left", fight = true },
						{ map = "6,-20", path = "left", fight = true },
						{ map = "5,-20", path = "left", fight = true },
						{ map = "4,-20", path = "bottom", fight = true },
						{ map = "4,-19", path = "left", fight = true },
						{ map = "3,-19", path = "bottom", fight = true },
						{ map = "3,-18", path = "bottom", fight = true },
						{ map = "3,-17", path = "right", fight = true },
						{ map = "4,-17", path = "right", fight = true },
						{ map = "5,-17", path = "top", fight = true },
						{ map = "5,-18", path = "top", fight = true },
						{ map = "5,-19", path = "right", fight = true },
					}
				elseif inventory:itemCount(CAPE) >= 1 and inventory:itemCount(COIFFE) >= 1 and inventory:itemCount(ANNEAU) >= 1 and inventory:itemCount(BOTTES) >= 1 and inventory:itemCount(CEINTURE) >= 1 and inventory:itemCount(AMULETTE) >= 1 then
					return{
						{ map = "1,-21", path = "right" },
						{ map = "2,-21", path = "right" },
						{ map = "3,-21", path = "right" },
						{ map = "4,-21", path = "right" },
						{ map = "5,-21", path = "right" },
						{ map = "6,-21", path = "right" },
						{ map = "7,-21", path = "bottom" },
						{ map = "7,-20", path = "bottom" },
						{ map = "7,-19", path = "bottom" },
						{ map = "1,-20", path = "right" },
						{ map = "2,-20", path = "right" },
						{ map = "3,-20", path = "right" },
						{ map = "4,-20", path = "right" },
						{ map = "5,-20", path = "right" },
						{ map = "6,-20", path = "right" },
						{ map = "1,-18", path = "right" },
						{ map = "2,-18", path = "right" },
						{ map = "3,-18", path = "right" }, 
						{ map = "4,-18", path = "right" },
						{ map = "5,-18", path = "right" },
						{ map = "6,-18", path = "right" },
						{ map = "1,-15", path = "right" },
						{ map = "2,-15", path = "right" },
						{ map = "3,-15", path = "right" },
						{ map = "4,-15", path = "right" },
						{ map = "5,-15", path = "right" },
						{ map = "6,-15", path = "right" },
						{ map = "1,-16", path = "right" },
						{ map = "2,-16", path = "right" },
						{ map = "3,-16", path = "right" },
						{ map = "4,-16", path = "right" },
						{ map = "5,-16", path = "right" },
						{ map = "6,-16", path = "right" },
						{ map = "7,-15", path = "top" },
						{ map = "7,-16", path = "top" },
						{ map = "3,-19", path = "right" },
						{ map = "4,-19", path = "right" },
						{ map = "5,-19", path = "right" },
						{ map = "3,-17", path = "right" },
						{ map = "4,-17", path = "right" },
						{ map = "5,-17", path = "right" },
						{ map = "6,-17", path = "top" },
						{ map = "1,-17", path = "top" },
						{ map = "1,-19", path = "bottom" },
						{ map = "6,-19", path = "bottom" },
						{ map = "7,-17", path = "top" },
						{ map = "7,-18", custom = stuff_2 },
					}
				end
			end
		elseif character:level() >= 20 and character:level() < 30 then
			if PANOPLIE == 1 then
				violet_2()
				if inventory:itemCount(CAPE) < 1 or inventory:itemCount(COIFFE) < 1 or inventory:itemCount(ANNEAU) < 1 or inventory:itemCount(BOTTES) < 1 or inventory:itemCount(CEINTURE) < 1 or inventory:itemCount(AMULETTE) < 1 then
					return{
						{ map = "3,-14", path = "top" },
						{ map = "6,-19", path = "bottom", fight = true },
						{ map = "6,-18", path = "right", fight = true },
						{ map = "7,-18", path = "bottom", fight = true },
						{ map = "7,-17", path = "bottom", fight = true },
						{ map = "7,-16", path = "bottom", fight = true },
						{ map = "7,-15", path = "left", fight = true },
						{ map = "6,-15", path = "top", fight = true },
						{ map = "6,-16", path = "left", fight = true },
						{ map = "5,-16", path = "bottom", fight = true },
						{ map = "5,-15", path = "left", fight = true },
						{ map = "4,-15", path = "top", fight = true },
						{ map = "4,-16", path = "left", fight = true },
						{ map = "3,-16", path = "bottom", fight = true },
						{ map = "3,-15", path = "left", fight = true },
						{ map = "2,-15", path = "left", fight = true },
						{ map = "1,-15", path = "top", fight = true },
						{ map = "1,-16", path = "right", fight = true },
						{ map = "2,-16", path = "top", fight = true },
						{ map = "2,-17", path = "left", fight = true },
						{ map = "1,-17", path = "top", fight = true },
						{ map = "1,-18", path = "right", fight = true },
						{ map = "2,-18", path = "top", fight = true },
						{ map = "2,-19", path = "left", fight = true },
						{ map = "1,-19", path = "top", fight = true },
						{ map = "1,-20", path = "top", fight = true },
						{ map = "1,-21", path = "right", fight = true },
						{ map = "2,-21", path = "bottom", fight = true },
						{ map = "2,-20", path = "right", fight = true },
						{ map = "3,-20", path = "top", fight = true },
						{ map = "3,-21", path = "right", fight = true },
						{ map = "4,-21", path = "right", fight = true },
						{ map = "5,-21", path = "right", fight = true },
						{ map = "6,-21", path = "right", fight = true },
						{ map = "7,-21", path = "bottom", fight = true },
						{ map = "7,-20", path = "left", fight = true },
						{ map = "6,-20", path = "left", fight = true },
						{ map = "5,-20", path = "left", fight = true },
						{ map = "4,-20", path = "bottom", fight = true },
						{ map = "4,-19", path = "left", fight = true },
						{ map = "3,-19", path = "bottom", fight = true },
						{ map = "3,-18", path = "bottom", fight = true },
						{ map = "3,-17", path = "right", fight = true },
						{ map = "4,-17", path = "right", fight = true },
						{ map = "5,-17", path = "top", fight = true },
						{ map = "5,-18", path = "top", fight = true },
						{ map = "5,-19", path = "right", fight = true },
					}
				elseif inventory:itemCount(CAPE) >= 1 and inventory:itemCount(COIFFE) >= 1 and inventory:itemCount(ANNEAU) >= 1 and inventory:itemCount(BOTTES) >= 1 and inventory:itemCount(CEINTURE) >= 1 and inventory:itemCount(AMULETTE) >= 1 then
					return{
						{ map = "1,-21", path = "right" },
						{ map = "2,-21", path = "right" },
						{ map = "3,-21", path = "right" },
						{ map = "4,-21", path = "right" },
						{ map = "5,-21", path = "right" },
						{ map = "6,-21", path = "right" },
						{ map = "7,-21", path = "bottom" },
						{ map = "7,-20", path = "bottom" },
						{ map = "7,-19", path = "bottom" },
						{ map = "1,-20", path = "right" },
						{ map = "2,-20", path = "right" },
						{ map = "3,-20", path = "right" },
						{ map = "4,-20", path = "right" },
						{ map = "5,-20", path = "right" },
						{ map = "6,-20", path = "right" },
						{ map = "1,-18", path = "right" },
						{ map = "2,-18", path = "right" },
						{ map = "3,-18", path = "right" }, 
						{ map = "4,-18", path = "right" },
						{ map = "5,-18", path = "right" },
						{ map = "6,-18", path = "right" },
						{ map = "1,-15", path = "right" },
						{ map = "2,-15", path = "right" },
						{ map = "3,-15", path = "right" },
						{ map = "4,-15", path = "right" },
						{ map = "5,-15", path = "right" },
						{ map = "6,-15", path = "right" },
						{ map = "1,-16", path = "right" },
						{ map = "2,-16", path = "right" },
						{ map = "3,-16", path = "right" },
						{ map = "4,-16", path = "right" },
						{ map = "5,-16", path = "right" },
						{ map = "6,-16", path = "right" },
						{ map = "7,-15", path = "top" },
						{ map = "7,-16", path = "top" },
						{ map = "3,-19", path = "right" },
						{ map = "4,-19", path = "right" },
						{ map = "5,-19", path = "right" },
						{ map = "3,-17", path = "right" },
						{ map = "4,-17", path = "right" },
						{ map = "5,-17", path = "right" },
						{ map = "6,-17", path = "top" },
						{ map = "1,-17", path = "top" },
						{ map = "1,-19", path = "bottom" },
						{ map = "6,-19", path = "bottom" },
						{ map = "7,-17", path = "top" },
						{ map = "7,-18", custom = stuff_2 },
					}
				end
			elseif PANOPLIE == 2 then
				rouge_2()
				if inventory:itemCount(CAPE) < 1 or inventory:itemCount(COIFFE) < 1 or inventory:itemCount(ANNEAU) < 1 or inventory:itemCount(BOTTES) < 1 or inventory:itemCount(CEINTURE) < 1 or inventory:itemCount(AMULETTE) < 1 then
					return{
						{ map = "3,-14", path = "top" },
						{ map = "6,-19", path = "bottom", fight = true },
						{ map = "6,-18", path = "right", fight = true },
						{ map = "7,-18", path = "bottom", fight = true },
						{ map = "7,-17", path = "bottom", fight = true },
						{ map = "7,-16", path = "bottom", fight = true },
						{ map = "7,-15", path = "left", fight = true },
						{ map = "6,-15", path = "top", fight = true },
						{ map = "6,-16", path = "left", fight = true },
						{ map = "5,-16", path = "bottom", fight = true },
						{ map = "5,-15", path = "left", fight = true },
						{ map = "4,-15", path = "top", fight = true },
						{ map = "4,-16", path = "left", fight = true },
						{ map = "3,-16", path = "bottom", fight = true },
						{ map = "3,-15", path = "left", fight = true },
						{ map = "2,-15", path = "left", fight = true },
						{ map = "1,-15", path = "top", fight = true },
						{ map = "1,-16", path = "right", fight = true },
						{ map = "2,-16", path = "top", fight = true },
						{ map = "2,-17", path = "left", fight = true },
						{ map = "1,-17", path = "top", fight = true },
						{ map = "1,-18", path = "right", fight = true },
						{ map = "2,-18", path = "top", fight = true },
						{ map = "2,-19", path = "left", fight = true },
						{ map = "1,-19", path = "top", fight = true },
						{ map = "1,-20", path = "top", fight = true },
						{ map = "1,-21", path = "right", fight = true },
						{ map = "2,-21", path = "bottom", fight = true },
						{ map = "2,-20", path = "right", fight = true },
						{ map = "3,-20", path = "top", fight = true },
						{ map = "3,-21", path = "right", fight = true },
						{ map = "4,-21", path = "right", fight = true },
						{ map = "5,-21", path = "right", fight = true },
						{ map = "6,-21", path = "right", fight = true },
						{ map = "7,-21", path = "bottom", fight = true },
						{ map = "7,-20", path = "left", fight = true },
						{ map = "6,-20", path = "left", fight = true },
						{ map = "5,-20", path = "left", fight = true },
						{ map = "4,-20", path = "bottom", fight = true },
						{ map = "4,-19", path = "left", fight = true },
						{ map = "3,-19", path = "bottom", fight = true },
						{ map = "3,-18", path = "bottom", fight = true },
						{ map = "3,-17", path = "right", fight = true },
						{ map = "4,-17", path = "right", fight = true },
						{ map = "5,-17", path = "top", fight = true },
						{ map = "5,-18", path = "top", fight = true },
						{ map = "5,-19", path = "right", fight = true },
					}
				elseif inventory:itemCount(CAPE) >= 1 and inventory:itemCount(COIFFE) >= 1 and inventory:itemCount(ANNEAU) >= 1 and inventory:itemCount(BOTTES) >= 1 and inventory:itemCount(CEINTURE) >= 1 and inventory:itemCount(AMULETTE) >= 1 then
					return{
						{ map = "1,-21", path = "right" },
						{ map = "2,-21", path = "right" },
						{ map = "3,-21", path = "right" },
						{ map = "4,-21", path = "right" },
						{ map = "5,-21", path = "right" },
						{ map = "6,-21", path = "right" },
						{ map = "7,-21", path = "bottom" },
						{ map = "7,-20", path = "bottom" },
						{ map = "7,-19", path = "bottom" },
						{ map = "1,-20", path = "right" },
						{ map = "2,-20", path = "right" },
						{ map = "3,-20", path = "right" },
						{ map = "4,-20", path = "right" },
						{ map = "5,-20", path = "right" },
						{ map = "6,-20", path = "right" },
						{ map = "1,-18", path = "right" },
						{ map = "2,-18", path = "right" },
						{ map = "3,-18", path = "right" }, 
						{ map = "4,-18", path = "right" },
						{ map = "5,-18", path = "right" },
						{ map = "6,-18", path = "right" },
						{ map = "1,-15", path = "right" },
						{ map = "2,-15", path = "right" },
						{ map = "3,-15", path = "right" },
						{ map = "4,-15", path = "right" },
						{ map = "5,-15", path = "right" },
						{ map = "6,-15", path = "right" },
						{ map = "1,-16", path = "right" },
						{ map = "2,-16", path = "right" },
						{ map = "3,-16", path = "right" },
						{ map = "4,-16", path = "right" },
						{ map = "5,-16", path = "right" },
						{ map = "6,-16", path = "right" },
						{ map = "7,-15", path = "top" },
						{ map = "7,-16", path = "top" },
						{ map = "3,-19", path = "right" },
						{ map = "4,-19", path = "right" },
						{ map = "5,-19", path = "right" },
						{ map = "3,-17", path = "right" },
						{ map = "4,-17", path = "right" },
						{ map = "5,-17", path = "right" },
						{ map = "6,-17", path = "top" },
						{ map = "1,-17", path = "top" },
						{ map = "1,-19", path = "bottom" },
						{ map = "6,-19", path = "bottom" },
						{ map = "7,-17", path = "top" },
						{ map = "7,-18", custom = stuff_2 },
					}
				end
			elseif PANOPLIE == 3 then
				bleu_2()
				if inventory:itemCount(CAPE) < 1 or inventory:itemCount(COIFFE) < 1 or inventory:itemCount(ANNEAU) < 1 or inventory:itemCount(BOTTES) < 1 or inventory:itemCount(CEINTURE) < 1 or inventory:itemCount(AMULETTE) < 1 then
					return{
						{ map = "3,-14", path = "top" },
						{ map = "6,-19", path = "bottom", fight = true },
						{ map = "6,-18", path = "right", fight = true },
						{ map = "7,-18", path = "bottom", fight = true },
						{ map = "7,-17", path = "bottom", fight = true },
						{ map = "7,-16", path = "bottom", fight = true },
						{ map = "7,-15", path = "left", fight = true },
						{ map = "6,-15", path = "top", fight = true },
						{ map = "6,-16", path = "left", fight = true },
						{ map = "5,-16", path = "bottom", fight = true },
						{ map = "5,-15", path = "left", fight = true },
						{ map = "4,-15", path = "top", fight = true },
						{ map = "4,-16", path = "left", fight = true },
						{ map = "3,-16", path = "bottom", fight = true },
						{ map = "3,-15", path = "left", fight = true },
						{ map = "2,-15", path = "left", fight = true },
						{ map = "1,-15", path = "top", fight = true },
						{ map = "1,-16", path = "right", fight = true },
						{ map = "2,-16", path = "top", fight = true },
						{ map = "2,-17", path = "left", fight = true },
						{ map = "1,-17", path = "top", fight = true },
						{ map = "1,-18", path = "right", fight = true },
						{ map = "2,-18", path = "top", fight = true },
						{ map = "2,-19", path = "left", fight = true },
						{ map = "1,-19", path = "top", fight = true },
						{ map = "1,-20", path = "top", fight = true },
						{ map = "1,-21", path = "right", fight = true },
						{ map = "2,-21", path = "bottom", fight = true },
						{ map = "2,-20", path = "right", fight = true },
						{ map = "3,-20", path = "top", fight = true },
						{ map = "3,-21", path = "right", fight = true },
						{ map = "4,-21", path = "right", fight = true },
						{ map = "5,-21", path = "right", fight = true },
						{ map = "6,-21", path = "right", fight = true },
						{ map = "7,-21", path = "bottom", fight = true },
						{ map = "7,-20", path = "left", fight = true },
						{ map = "6,-20", path = "left", fight = true },
						{ map = "5,-20", path = "left", fight = true },
						{ map = "4,-20", path = "bottom", fight = true },
						{ map = "4,-19", path = "left", fight = true },
						{ map = "3,-19", path = "bottom", fight = true },
						{ map = "3,-18", path = "bottom", fight = true },
						{ map = "3,-17", path = "right", fight = true },
						{ map = "4,-17", path = "right", fight = true },
						{ map = "5,-17", path = "top", fight = true },
						{ map = "5,-18", path = "top", fight = true },
						{ map = "5,-19", path = "right", fight = true },
					}
				elseif inventory:itemCount(CAPE) >= 1 and inventory:itemCount(COIFFE) >= 1 and inventory:itemCount(ANNEAU) >= 1 and inventory:itemCount(BOTTES) >= 1 and inventory:itemCount(CEINTURE) >= 1 and inventory:itemCount(AMULETTE) >= 1 then
					return{
						{ map = "1,-21", path = "right" },
						{ map = "2,-21", path = "right" },
						{ map = "3,-21", path = "right" },
						{ map = "4,-21", path = "right" },
						{ map = "5,-21", path = "right" },
						{ map = "6,-21", path = "right" },
						{ map = "7,-21", path = "bottom" },
						{ map = "7,-20", path = "bottom" },
						{ map = "7,-19", path = "bottom" },
						{ map = "1,-20", path = "right" },
						{ map = "2,-20", path = "right" },
						{ map = "3,-20", path = "right" },
						{ map = "4,-20", path = "right" },
						{ map = "5,-20", path = "right" },
						{ map = "6,-20", path = "right" },
						{ map = "1,-18", path = "right" },
						{ map = "2,-18", path = "right" },
						{ map = "3,-18", path = "right" }, 
						{ map = "4,-18", path = "right" },
						{ map = "5,-18", path = "right" },
						{ map = "6,-18", path = "right" },
						{ map = "1,-15", path = "right" },
						{ map = "2,-15", path = "right" },
						{ map = "3,-15", path = "right" },
						{ map = "4,-15", path = "right" },
						{ map = "5,-15", path = "right" },
						{ map = "6,-15", path = "right" },
						{ map = "1,-16", path = "right" },
						{ map = "2,-16", path = "right" },
						{ map = "3,-16", path = "right" },
						{ map = "4,-16", path = "right" },
						{ map = "5,-16", path = "right" },
						{ map = "6,-16", path = "right" },
						{ map = "7,-15", path = "top" },
						{ map = "7,-16", path = "top" },
						{ map = "3,-19", path = "right" },
						{ map = "4,-19", path = "right" },
						{ map = "5,-19", path = "right" },
						{ map = "3,-17", path = "right" },
						{ map = "4,-17", path = "right" },
						{ map = "5,-17", path = "right" },
						{ map = "6,-17", path = "top" },
						{ map = "1,-17", path = "top" },
						{ map = "1,-19", path = "bottom" },
						{ map = "6,-19", path = "bottom" },
						{ map = "7,-17", path = "top" },
						{ map = "7,-18", custom = stuff_2 },
					}
				end
			elseif PANOPLIE == 4 then
				jaune_2()
				if inventory:itemCount(CAPE) < 1 or inventory:itemCount(COIFFE) < 1 or inventory:itemCount(ANNEAU) < 1 or inventory:itemCount(BOTTES) < 1 or inventory:itemCount(CEINTURE) < 1 or inventory:itemCount(AMULETTE) < 1 then
					return{
						{ map = "3,-14", path = "top" },
						{ map = "6,-19", path = "bottom", fight = true },
						{ map = "6,-18", path = "right", fight = true },
						{ map = "7,-18", path = "bottom", fight = true },
						{ map = "7,-17", path = "bottom", fight = true },
						{ map = "7,-16", path = "bottom", fight = true },
						{ map = "7,-15", path = "left", fight = true },
						{ map = "6,-15", path = "top", fight = true },
						{ map = "6,-16", path = "left", fight = true },
						{ map = "5,-16", path = "bottom", fight = true },
						{ map = "5,-15", path = "left", fight = true },
						{ map = "4,-15", path = "top", fight = true },
						{ map = "4,-16", path = "left", fight = true },
						{ map = "3,-16", path = "bottom", fight = true },
						{ map = "3,-15", path = "left", fight = true },
						{ map = "2,-15", path = "left", fight = true },
						{ map = "1,-15", path = "top", fight = true },
						{ map = "1,-16", path = "right", fight = true },
						{ map = "2,-16", path = "top", fight = true },
						{ map = "2,-17", path = "left", fight = true },
						{ map = "1,-17", path = "top", fight = true },
						{ map = "1,-18", path = "right", fight = true },
						{ map = "2,-18", path = "top", fight = true },
						{ map = "2,-19", path = "left", fight = true },
						{ map = "1,-19", path = "top", fight = true },
						{ map = "1,-20", path = "top", fight = true },
						{ map = "1,-21", path = "right", fight = true },
						{ map = "2,-21", path = "bottom", fight = true },
						{ map = "2,-20", path = "right", fight = true },
						{ map = "3,-20", path = "top", fight = true },
						{ map = "3,-21", path = "right", fight = true },
						{ map = "4,-21", path = "right", fight = true },
						{ map = "5,-21", path = "right", fight = true },
						{ map = "6,-21", path = "right", fight = true },
						{ map = "7,-21", path = "bottom", fight = true },
						{ map = "7,-20", path = "left", fight = true },
						{ map = "6,-20", path = "left", fight = true },
						{ map = "5,-20", path = "left", fight = true },
						{ map = "4,-20", path = "bottom", fight = true },
						{ map = "4,-19", path = "left", fight = true },
						{ map = "3,-19", path = "bottom", fight = true },
						{ map = "3,-18", path = "bottom", fight = true },
						{ map = "3,-17", path = "right", fight = true },
						{ map = "4,-17", path = "right", fight = true },
						{ map = "5,-17", path = "top", fight = true },
						{ map = "5,-18", path = "top", fight = true },
						{ map = "5,-19", path = "right", fight = true },
					}
				elseif inventory:itemCount(CAPE) >= 1 and inventory:itemCount(COIFFE) >= 1 and inventory:itemCount(ANNEAU) >= 1 and inventory:itemCount(BOTTES) >= 1 and inventory:itemCount(CEINTURE) >= 1 and inventory:itemCount(AMULETTE) >= 1 then
					return{
						{ map = "1,-21", path = "right" },
						{ map = "2,-21", path = "right" },
						{ map = "3,-21", path = "right" },
						{ map = "4,-21", path = "right" },
						{ map = "5,-21", path = "right" },
						{ map = "6,-21", path = "right" },
						{ map = "7,-21", path = "bottom" },
						{ map = "7,-20", path = "bottom" },
						{ map = "7,-19", path = "bottom" },
						{ map = "1,-20", path = "right" },
						{ map = "2,-20", path = "right" },
						{ map = "3,-20", path = "right" },
						{ map = "4,-20", path = "right" },
						{ map = "5,-20", path = "right" },
						{ map = "6,-20", path = "right" },
						{ map = "1,-18", path = "right" },
						{ map = "2,-18", path = "right" },
						{ map = "3,-18", path = "right" }, 
						{ map = "4,-18", path = "right" },
						{ map = "5,-18", path = "right" },
						{ map = "6,-18", path = "right" },
						{ map = "1,-15", path = "right" },
						{ map = "2,-15", path = "right" },
						{ map = "3,-15", path = "right" },
						{ map = "4,-15", path = "right" },
						{ map = "5,-15", path = "right" },
						{ map = "6,-15", path = "right" },
						{ map = "1,-16", path = "right" },
						{ map = "2,-16", path = "right" },
						{ map = "3,-16", path = "right" },
						{ map = "4,-16", path = "right" },
						{ map = "5,-16", path = "right" },
						{ map = "6,-16", path = "right" },
						{ map = "7,-15", path = "top" },
						{ map = "7,-16", path = "top" },
						{ map = "3,-19", path = "right" },
						{ map = "4,-19", path = "right" },
						{ map = "5,-19", path = "right" },
						{ map = "3,-17", path = "right" },
						{ map = "4,-17", path = "right" },
						{ map = "5,-17", path = "right" },
						{ map = "6,-17", path = "top" },
						{ map = "1,-17", path = "top" },
						{ map = "1,-19", path = "bottom" },
						{ map = "6,-19", path = "bottom" },
						{ map = "7,-17", path = "top" },
						{ map = "7,-18", custom = stuff_2 },
					}
				end
			elseif PANOPLIE == 5 then
				vert_2()
				if inventory:itemCount(CAPE) < 1 or inventory:itemCount(COIFFE) < 1 or inventory:itemCount(ANNEAU) < 1 or inventory:itemCount(BOTTES) < 1 or inventory:itemCount(CEINTURE) < 1 or inventory:itemCount(AMULETTE) < 1 then
					return{
						{ map = "3,-14", path = "top" },
						{ map = "6,-19", path = "bottom", fight = true },
						{ map = "6,-18", path = "right", fight = true },
						{ map = "7,-18", path = "bottom", fight = true },
						{ map = "7,-17", path = "bottom", fight = true },
						{ map = "7,-16", path = "bottom", fight = true },
						{ map = "7,-15", path = "left", fight = true },
						{ map = "6,-15", path = "top", fight = true },
						{ map = "6,-16", path = "left", fight = true },
						{ map = "5,-16", path = "bottom", fight = true },
						{ map = "5,-15", path = "left", fight = true },
						{ map = "4,-15", path = "top", fight = true },
						{ map = "4,-16", path = "left", fight = true },
						{ map = "3,-16", path = "bottom", fight = true },
						{ map = "3,-15", path = "left", fight = true },
						{ map = "2,-15", path = "left", fight = true },
						{ map = "1,-15", path = "top", fight = true },
						{ map = "1,-16", path = "right", fight = true },
						{ map = "2,-16", path = "top", fight = true },
						{ map = "2,-17", path = "left", fight = true },
						{ map = "1,-17", path = "top", fight = true },
						{ map = "1,-18", path = "right", fight = true },
						{ map = "2,-18", path = "top", fight = true },
						{ map = "2,-19", path = "left", fight = true },
						{ map = "1,-19", path = "top", fight = true },
						{ map = "1,-20", path = "top", fight = true },
						{ map = "1,-21", path = "right", fight = true },
						{ map = "2,-21", path = "bottom", fight = true },
						{ map = "2,-20", path = "right", fight = true },
						{ map = "3,-20", path = "top", fight = true },
						{ map = "3,-21", path = "right", fight = true },
						{ map = "4,-21", path = "right", fight = true },
						{ map = "5,-21", path = "right", fight = true },
						{ map = "6,-21", path = "right", fight = true },
						{ map = "7,-21", path = "bottom", fight = true },
						{ map = "7,-20", path = "left", fight = true },
						{ map = "6,-20", path = "left", fight = true },
						{ map = "5,-20", path = "left", fight = true },
						{ map = "4,-20", path = "bottom", fight = true },
						{ map = "4,-19", path = "left", fight = true },
						{ map = "3,-19", path = "bottom", fight = true },
						{ map = "3,-18", path = "bottom", fight = true },
						{ map = "3,-17", path = "right", fight = true },
						{ map = "4,-17", path = "right", fight = true },
						{ map = "5,-17", path = "top", fight = true },
						{ map = "5,-18", path = "top", fight = true },
						{ map = "5,-19", path = "right", fight = true },
					}
				elseif inventory:itemCount(CAPE) >= 1 and inventory:itemCount(COIFFE) >= 1 and inventory:itemCount(ANNEAU) >= 1 and inventory:itemCount(BOTTES) >= 1 and inventory:itemCount(CEINTURE) >= 1 and inventory:itemCount(AMULETTE) >= 1 then
					return{
						{ map = "1,-21", path = "right" },
						{ map = "2,-21", path = "right" },
						{ map = "3,-21", path = "right" },
						{ map = "4,-21", path = "right" },
						{ map = "5,-21", path = "right" },
						{ map = "6,-21", path = "right" },
						{ map = "7,-21", path = "bottom" },
						{ map = "7,-20", path = "bottom" },
						{ map = "7,-19", path = "bottom" },
						{ map = "1,-20", path = "right" },
						{ map = "2,-20", path = "right" },
						{ map = "3,-20", path = "right" },
						{ map = "4,-20", path = "right" },
						{ map = "5,-20", path = "right" },
						{ map = "6,-20", path = "right" },
						{ map = "1,-18", path = "right" },
						{ map = "2,-18", path = "right" },
						{ map = "3,-18", path = "right" }, 
						{ map = "4,-18", path = "right" },
						{ map = "5,-18", path = "right" },
						{ map = "6,-18", path = "right" },
						{ map = "1,-15", path = "right" },
						{ map = "2,-15", path = "right" },
						{ map = "3,-15", path = "right" },
						{ map = "4,-15", path = "right" },
						{ map = "5,-15", path = "right" },
						{ map = "6,-15", path = "right" },
						{ map = "1,-16", path = "right" },
						{ map = "2,-16", path = "right" },
						{ map = "3,-16", path = "right" },
						{ map = "4,-16", path = "right" },
						{ map = "5,-16", path = "right" },
						{ map = "6,-16", path = "right" },
						{ map = "7,-15", path = "top" },
						{ map = "7,-16", path = "top" },
						{ map = "3,-19", path = "right" },
						{ map = "4,-19", path = "right" },
						{ map = "5,-19", path = "right" },
						{ map = "3,-17", path = "right" },
						{ map = "4,-17", path = "right" },
						{ map = "5,-17", path = "right" },
						{ map = "6,-17", path = "top" },
						{ map = "1,-17", path = "top" },
						{ map = "1,-19", path = "bottom" },
						{ map = "6,-19", path = "bottom" },
						{ map = "7,-17", path = "top" },
						{ map = "7,-18", custom = stuff_2 },
					}
				end
			elseif PANOPLIE == 6 then
				rose_2()
				if inventory:itemCount(CAPE) < 1 or inventory:itemCount(COIFFE) < 1 or inventory:itemCount(ANNEAU) < 1 or inventory:itemCount(BOTTES) < 1 or inventory:itemCount(CEINTURE) < 1 or inventory:itemCount(AMULETTE) < 1 then
					return{
						{ map = "3,-14", path = "top" },
						{ map = "6,-19", path = "bottom", fight = true },
						{ map = "6,-18", path = "right", fight = true },
						{ map = "7,-18", path = "bottom", fight = true },
						{ map = "7,-17", path = "bottom", fight = true },
						{ map = "7,-16", path = "bottom", fight = true },
						{ map = "7,-15", path = "left", fight = true },
						{ map = "6,-15", path = "top", fight = true },
						{ map = "6,-16", path = "left", fight = true },
						{ map = "5,-16", path = "bottom", fight = true },
						{ map = "5,-15", path = "left", fight = true },
						{ map = "4,-15", path = "top", fight = true },
						{ map = "4,-16", path = "left", fight = true },
						{ map = "3,-16", path = "bottom", fight = true },
						{ map = "3,-15", path = "left", fight = true },
						{ map = "2,-15", path = "left", fight = true },
						{ map = "1,-15", path = "top", fight = true },
						{ map = "1,-16", path = "right", fight = true },
						{ map = "2,-16", path = "top", fight = true },
						{ map = "2,-17", path = "left", fight = true },
						{ map = "1,-17", path = "top", fight = true },
						{ map = "1,-18", path = "right", fight = true },
						{ map = "2,-18", path = "top", fight = true },
						{ map = "2,-19", path = "left", fight = true },
						{ map = "1,-19", path = "top", fight = true },
						{ map = "1,-20", path = "top", fight = true },
						{ map = "1,-21", path = "right", fight = true },
						{ map = "2,-21", path = "bottom", fight = true },
						{ map = "2,-20", path = "right", fight = true },
						{ map = "3,-20", path = "top", fight = true },
						{ map = "3,-21", path = "right", fight = true },
						{ map = "4,-21", path = "right", fight = true },
						{ map = "5,-21", path = "right", fight = true },
						{ map = "6,-21", path = "right", fight = true },
						{ map = "7,-21", path = "bottom", fight = true },
						{ map = "7,-20", path = "left", fight = true },
						{ map = "6,-20", path = "left", fight = true },
						{ map = "5,-20", path = "left", fight = true },
						{ map = "4,-20", path = "bottom", fight = true },
						{ map = "4,-19", path = "left", fight = true },
						{ map = "3,-19", path = "bottom", fight = true },
						{ map = "3,-18", path = "bottom", fight = true },
						{ map = "3,-17", path = "right", fight = true },
						{ map = "4,-17", path = "right", fight = true },
						{ map = "5,-17", path = "top", fight = true },
						{ map = "5,-18", path = "top", fight = true },
						{ map = "5,-19", path = "right", fight = true },
					}
				elseif inventory:itemCount(CAPE) >= 1 and inventory:itemCount(COIFFE) >= 1 and inventory:itemCount(ANNEAU) >= 1 and inventory:itemCount(BOTTES) >= 1 and inventory:itemCount(CEINTURE) >= 1 and inventory:itemCount(AMULETTE) >= 1 then
					return{
						{ map = "1,-21", path = "right" },
						{ map = "2,-21", path = "right" },
						{ map = "3,-21", path = "right" },
						{ map = "4,-21", path = "right" },
						{ map = "5,-21", path = "right" },
						{ map = "6,-21", path = "right" },
						{ map = "7,-21", path = "bottom" },
						{ map = "7,-20", path = "bottom" },
						{ map = "7,-19", path = "bottom" },
						{ map = "1,-20", path = "right" },
						{ map = "2,-20", path = "right" },
						{ map = "3,-20", path = "right" },
						{ map = "4,-20", path = "right" },
						{ map = "5,-20", path = "right" },
						{ map = "6,-20", path = "right" },
						{ map = "1,-18", path = "right" },
						{ map = "2,-18", path = "right" },
						{ map = "3,-18", path = "right" }, 
						{ map = "4,-18", path = "right" },
						{ map = "5,-18", path = "right" },
						{ map = "6,-18", path = "right" },
						{ map = "1,-15", path = "right" },
						{ map = "2,-15", path = "right" },
						{ map = "3,-15", path = "right" },
						{ map = "4,-15", path = "right" },
						{ map = "5,-15", path = "right" },
						{ map = "6,-15", path = "right" },
						{ map = "1,-16", path = "right" },
						{ map = "2,-16", path = "right" },
						{ map = "3,-16", path = "right" },
						{ map = "4,-16", path = "right" },
						{ map = "5,-16", path = "right" },
						{ map = "6,-16", path = "right" },
						{ map = "7,-15", path = "top" },
						{ map = "7,-16", path = "top" },
						{ map = "3,-19", path = "right" },
						{ map = "4,-19", path = "right" },
						{ map = "5,-19", path = "right" },
						{ map = "3,-17", path = "right" },
						{ map = "4,-17", path = "right" },
						{ map = "5,-17", path = "right" },
						{ map = "6,-17", path = "top" },
						{ map = "1,-17", path = "top" },
						{ map = "1,-19", path = "bottom" },
						{ map = "6,-19", path = "bottom" },
						{ map = "7,-17", path = "top" },
						{ map = "7,-18", custom = stuff_2 },
					}
				end
			end
		end
	elseif ETAPE == 9 then
		piou_20()
		suppression()
		if character:level() < 20 then
			return{
				{ map = "3,-14", path = "top" },
				{ map = "6,-19", path = "bottom", fight = true },
				{ map = "6,-18", path = "right", fight = true },
				{ map = "7,-18", path = "bottom", fight = true },
				{ map = "7,-17", path = "bottom", fight = true },
				{ map = "7,-16", path = "bottom", fight = true },
				{ map = "7,-15", path = "left", fight = true },
				{ map = "6,-15", path = "top", fight = true },
				{ map = "6,-16", path = "left", fight = true },
				{ map = "5,-16", path = "bottom", fight = true },
				{ map = "5,-15", path = "left", fight = true },
				{ map = "4,-15", path = "top", fight = true },
				{ map = "4,-16", path = "left", fight = true },
				{ map = "3,-16", path = "bottom", fight = true },
				{ map = "3,-15", path = "left", fight = true },
				{ map = "2,-15", path = "left", fight = true },
				{ map = "1,-15", path = "top", fight = true },
				{ map = "1,-16", path = "right", fight = true },
				{ map = "2,-16", path = "top", fight = true },
				{ map = "2,-17", path = "left", fight = true },
				{ map = "1,-17", path = "top", fight = true },
				{ map = "1,-18", path = "right", fight = true },
				{ map = "2,-18", path = "top", fight = true },
				{ map = "2,-19", path = "left", fight = true },
				{ map = "1,-19", path = "top", fight = true },
				{ map = "1,-20", path = "top", fight = true },
				{ map = "1,-21", path = "right", fight = true },
				{ map = "2,-21", path = "bottom", fight = true },
				{ map = "2,-20", path = "right", fight = true },
				{ map = "3,-20", path = "top", fight = true },
				{ map = "3,-21", path = "right", fight = true },
				{ map = "4,-21", path = "right", fight = true },
				{ map = "5,-21", path = "right", fight = true },
				{ map = "6,-21", path = "right", fight = true },
				{ map = "7,-21", path = "bottom", fight = true },
				{ map = "7,-20", path = "left", fight = true },
				{ map = "6,-20", path = "left", fight = true },
				{ map = "5,-20", path = "left", fight = true },
				{ map = "4,-20", path = "bottom", fight = true },
				{ map = "4,-19", path = "left", fight = true },
				{ map = "3,-19", path = "bottom", fight = true },
				{ map = "3,-18", path = "bottom", fight = true },
				{ map = "3,-17", path = "right", fight = true },
				{ map = "4,-17", path = "right", fight = true },
				{ map = "5,-17", path = "top", fight = true },
				{ map = "5,-18", path = "top", fight = true },
				{ map = "5,-19", path = "right", fight = true },
			}
		elseif character:level() >= 20 then
			return{
				{ map = "1,-21", path = "right" },
				{ map = "2,-21", path = "right" },
				{ map = "3,-21", path = "right" },
				{ map = "4,-21", path = "right" },
				{ map = "5,-21", path = "right" },
				{ map = "6,-21", path = "right" },
				{ map = "1,-20", path = "right" },
				{ map = "2,-20", path = "right" },
				{ map = "3,-20", path = "right" },
				{ map = "4,-20", path = "right" },
				{ map = "5,-20", path = "right" },
				{ map = "6,-20", path = "right" },
				{ map = "1,-18", path = "right" },
				{ map = "2,-18", path = "right" },
				{ map = "3,-18", path = "right" }, 
				{ map = "4,-18", path = "right" },
				{ map = "5,-18", path = "right" },
				{ map = "6,-18", path = "right" },
				{ map = "1,-15", path = "right" },
				{ map = "2,-15", path = "right" },
				{ map = "3,-15", path = "right" },
				{ map = "4,-15", path = "right" },
				{ map = "5,-15", path = "right" },
				{ map = "6,-15", path = "right" },
				{ map = "1,-16", path = "right" },
				{ map = "2,-16", path = "right" },
				{ map = "3,-16", path = "right" },
				{ map = "4,-16", path = "right" },
				{ map = "5,-16", path = "right" },
				{ map = "6,-16", path = "right" },
				{ map = "7,-15", path = "top" },
				{ map = "7,-16", path = "top" },
				{ map = "3,-19", path = "right" },
				{ map = "4,-19", path = "right" },
				{ map = "5,-19", path = "right" },
				{ map = "3,-17", path = "right" },
				{ map = "4,-17", path = "right" },
				{ map = "5,-17", path = "right" },
				{ map = "6,-17", path = "top" },
				{ map = "1,-17", path = "top" },
				{ map = "1,-19", path = "bottom" },
				{ map = "6,-19", path = "bottom" },
				{ map = "7,-17", path = "top" },
				{ map = "7,-18", path = "top" },
				{ map = "7,-18", path = "top" },
				{ map = "7,-20", path = "top" },
				{ map = "7,-19", path = "top" },
				{ map = "7,-21", path = "left", custom = increment },
			}
		end
	elseif ETAPE == 10 then
		piou_25()
		suppression()
		if character:level() < 25 then
			return{
				{ map = "3,-14", path = "top" },
				{ map = "6,-19", path = "bottom", fight = true },
				{ map = "6,-18", path = "right", fight = true },
				{ map = "7,-18", path = "bottom", fight = true },
				{ map = "7,-17", path = "bottom", fight = true },
				{ map = "7,-16", path = "bottom", fight = true },
				{ map = "7,-15", path = "left", fight = true },
				{ map = "6,-15", path = "top", fight = true },
				{ map = "6,-16", path = "left", fight = true },
				{ map = "5,-16", path = "bottom", fight = true },
				{ map = "5,-15", path = "left", fight = true },
				{ map = "4,-15", path = "top", fight = true },
				{ map = "4,-16", path = "left", fight = true },
				{ map = "3,-16", path = "bottom", fight = true },
				{ map = "3,-15", path = "left", fight = true },
				{ map = "2,-15", path = "left", fight = true },
				{ map = "1,-15", path = "top", fight = true },
				{ map = "1,-16", path = "right", fight = true },
				{ map = "2,-16", path = "top", fight = true },
				{ map = "2,-17", path = "left", fight = true },
				{ map = "1,-17", path = "top", fight = true },
				{ map = "1,-18", path = "right", fight = true },
				{ map = "2,-18", path = "top", fight = true },
				{ map = "2,-19", path = "left", fight = true },
				{ map = "1,-19", path = "top", fight = true },
				{ map = "1,-20", path = "top", fight = true },
				{ map = "1,-21", path = "right", fight = true },
				{ map = "2,-21", path = "bottom", fight = true },
				{ map = "2,-20", path = "right", fight = true },
				{ map = "3,-20", path = "top", fight = true },
				{ map = "3,-21", path = "right", fight = true },
				{ map = "4,-21", path = "right", fight = true },
				{ map = "5,-21", path = "right", fight = true },
				{ map = "6,-21", path = "right", fight = true },
				{ map = "7,-21", path = "bottom", fight = true },
				{ map = "7,-20", path = "left", fight = true },
				{ map = "6,-20", path = "left", fight = true },
				{ map = "5,-20", path = "left", fight = true },
				{ map = "4,-20", path = "bottom", fight = true },
				{ map = "4,-19", path = "left", fight = true },
				{ map = "3,-19", path = "bottom", fight = true },
				{ map = "3,-18", path = "bottom", fight = true },
				{ map = "3,-17", path = "right", fight = true },
				{ map = "4,-17", path = "right", fight = true },
				{ map = "5,-17", path = "top", fight = true },
				{ map = "5,-18", path = "top", fight = true },
				{ map = "5,-19", path = "right", fight = true },
			}
		elseif character:level() >= 25 then
			return{
				{ map = "1,-21", path = "right" },
				{ map = "2,-21", path = "right" },
				{ map = "3,-21", path = "right" },
				{ map = "4,-21", path = "right" },
				{ map = "5,-21", path = "right" },
				{ map = "6,-21", path = "right" },
				{ map = "1,-20", path = "right" },
				{ map = "2,-20", path = "right" },
				{ map = "3,-20", path = "right" },
				{ map = "4,-20", path = "right" },
				{ map = "5,-20", path = "right" },
				{ map = "6,-20", path = "right" },
				{ map = "1,-18", path = "right" },
				{ map = "2,-18", path = "right" },
				{ map = "3,-18", path = "right" }, 
				{ map = "4,-18", path = "right" },
				{ map = "5,-18", path = "right" },
				{ map = "6,-18", path = "right" },
				{ map = "1,-15", path = "right" },
				{ map = "2,-15", path = "right" },
				{ map = "3,-15", path = "right" },
				{ map = "4,-15", path = "right" },
				{ map = "5,-15", path = "right" },
				{ map = "6,-15", path = "right" },
				{ map = "1,-16", path = "right" },
				{ map = "2,-16", path = "right" },
				{ map = "3,-16", path = "right" },
				{ map = "4,-16", path = "right" },
				{ map = "5,-16", path = "right" },
				{ map = "6,-16", path = "right" },
				{ map = "7,-15", path = "top" },
				{ map = "7,-16", path = "top" },
				{ map = "3,-19", path = "right" },
				{ map = "4,-19", path = "right" },
				{ map = "5,-19", path = "right" },
				{ map = "3,-17", path = "right" },
				{ map = "4,-17", path = "right" },
				{ map = "5,-17", path = "right" },
				{ map = "6,-17", path = "top" },
				{ map = "1,-17", path = "top" },
				{ map = "1,-19", path = "bottom" },
				{ map = "6,-19", path = "bottom" },
				{ map = "7,-17", path = "top"  },
				{ map = "7,-18", path = "top"  },
				{ map = "7,-20", path = "top" },
				{ map = "7,-19", path = "top" },
				{ map = "7,-21", path = "top", custom = increment },
			}
		end
	elseif ETAPE == 11 then
		champs_30()
		suppression()
		if character:level() < 30 then
			return{
				{ map = "1,-21", path = "right" },
				{ map = "2,-21", path = "right" },
				{ map = "3,-21", path = "right" },
				{ map = "4,-21", path = "right" },
				{ map = "5,-21", path = "right" },
				{ map = "6,-21", path = "right" },
				{ map = "1,-20", path = "right" },
				{ map = "2,-20", path = "right" },
				{ map = "3,-20", path = "right" },
				{ map = "4,-20", path = "right" },
				{ map = "5,-20", path = "right" },
				{ map = "6,-20", path = "right" },
				{ map = "1,-18", path = "right" },
				{ map = "2,-18", path = "right" },
				{ map = "3,-18", path = "right" }, 
				{ map = "4,-18", path = "right" },
				{ map = "5,-18", path = "right" },
				{ map = "6,-18", path = "right" },
				{ map = "1,-15", path = "right" },
				{ map = "2,-15", path = "right" },
				{ map = "3,-15", path = "right" },
				{ map = "4,-15", path = "right" },
				{ map = "5,-15", path = "right" },
				{ map = "6,-15", path = "right" },
				{ map = "1,-16", path = "right" },
				{ map = "2,-16", path = "right" },
				{ map = "3,-16", path = "right" },
				{ map = "4,-16", path = "right" },
				{ map = "5,-16", path = "right" },
				{ map = "6,-16", path = "right" },
				{ map = "7,-15", path = "top" },
				{ map = "7,-16", path = "top" },
				{ map = "3,-19", path = "right" },
				{ map = "4,-19", path = "right" },
				{ map = "5,-19", path = "right" },
				{ map = "3,-17", path = "right" },
				{ map = "4,-17", path = "right" },
				{ map = "5,-17", path = "right" },
				{ map = "6,-17", path = "top" },
				{ map = "1,-17", path = "top" },
				{ map = "1,-19", path = "bottom" },
				{ map = "6,-19", path = "bottom" },
				{ map = "7,-17", path = "top"  },
				{ map = "7,-18", path = "top"  },
				{ map = "7,-20", path = "top" },
				{ map = "7,-19", path = "top" },
				{ map = "3,-14", path = "right" },
				{ map = "4,-14", path = "right" },
				{ map = "5,-14", path = "right" },
				{ map = "6,-14", path = "right" },
				{ map = "7,-14", path = "top" },
				{ map = "7,-15", path = "top" },
				{ map = "7,-16", path = "top" },
				{ map = "7,-17", path = "top" },
				{ map = "6,-19", path = "bottom" },
				{ map = "6,-18", path = "right" },
				{ map = "7,-18", path = "top" },
				{ map = "7,-19", path = "top" },
				{ map = "7,-20", path = "top" },
				{ map = "7,-21", path = "top" },
				{ map = "7,-22", path = "right", fight = true },
				{ map = "8,-22", path = "right", fight = true },
				{ map = "9,-22", path = "top", fight = true },
				{ map = "9,-23", path = "top", fight = true },
				{ map = "9,-24", path = "left", fight = true },
				{ map = "8,-24", path = "bottom", fight = true },
				{ map = "8,-23", path = "left", fight = true },
				{ map = "7,-23", path = "left", fight = true },
				{ map = "6,-23", path = "left", fight = true },
				{ map = "5,-23", path = "top", fight = true },
				{ map = "5,-24", path = "top", fight = true },
				{ map = "5,-25", path = "right", fight = true },
				{ map = "6,-25", path = "bottom", fight = true },
				{ map = "6,-24", path = "right", fight = true },
				{ map = "7,-24", path = "top", fight = true },
				{ map = "7,-25", path = "top", fight = true },
				{ map = "7,-26", path = "left", fight = true },
				{ map = "6,-26", path = "left", fight = true },
				{ map = "5,-26", path = "top", fight = true },
				{ map = "5,-27", path = "right", fight = true },
				{ map = "6,-27", path = "right", fight = true },
				{ map = "7,-27", path = "top", fight = true },
				{ map = "7,-28", path = "left", fight = true },
				{ map = "6,-28", path = "left", fight = true },
				{ map = "5,-28", path = "top", fight = true },
				{ map = "5,-29", path = "right", fight = true },
				{ map = "6,-29", path = "top", fight = true },
				{ map = "6,-30", path = "left", fight = true },
				{ map = "5,-30", path = "top", fight = true },
				{ map = "5,-31", path = "left", fight = true },
				{ map = "4,-31", path = "left", fight = true },
				{ map = "3,-31", path = "bottom", fight = true },
				{ map = "3,-30", path = "right", fight = true },
				{ map = "4,-30", path = "bottom", fight = true },
				{ map = "4,-29", path = "left", fight = true },
				{ map = "3,-29", path = "bottom", fight = true },
				{ map = "3,-28", path = "right", fight = true },
				{ map = "4,-28", path = "bottom", fight = true },
				{ map = "4,-27", path = "left", fight = true },
				{ map = "3,-27", path = "bottom", fight = true },
				{ map = "3,-26", path = "right", fight = true },
				{ map = "4,-26", path = "bottom", fight = true },
				{ map = "4,-25", path = "left", fight = true },
				{ map = "3,-25", path = "bottom", fight = true },
				{ map = "3,-24", path = "right", fight = true },
				{ map = "4,-24", path = "bottom", fight = true },
				{ map = "4,-23", path = "left", fight = true },
				{ map = "3,-23", path = "bottom", fight = true },
				{ map = "3,-22", path = "right", fight = true },
				{ map = "4,-22", path = "right", fight = true },
				{ map = "5,-22", path = "right", fight = true },
				{ map = "6,-22", path = "right", fight = true },
			}
		elseif character:level() >= 30 then
			return{
				{ map = "3,-31", path = "bottom" },
				{ map = "4,-31", path = "bottom" },
				{ map = "5,-31", path = "bottom" },
				{ map = "3,-30", path = "bottom" },
				{ map = "4,-30", path = "bottom" },
				{ map = "5,-30", path = "bottom" },
				{ map = "6,-30", path = "bottom" },
				{ map = "3,-29", path = "bottom" },
				{ map = "4,-29", path = "bottom" },
				{ map = "5,-29", path = "bottom" },
				{ map = "6,-29", path = "bottom" },
				{ map = "3,-28", path = "bottom" },
				{ map = "4,-28", path = "bottom" },
				{ map = "5,-28", path = "bottom" },
				{ map = "6,-28", path = "bottom" },
				{ map = "7,-28", path = "bottom" },
				{ map = "3,-27", path = "bottom" },
				{ map = "4,-27", path = "bottom" },
				{ map = "5,-27", path = "bottom" },
				{ map = "6,-27", path = "bottom" },
				{ map = "7,-27", path = "bottom" },
				{ map = "3,-26", path = "bottom" },
				{ map = "4,-26", path = "bottom" },
				{ map = "5,-26", path = "bottom" },
				{ map = "6,-26", path = "bottom" },
				{ map = "7,-26", path = "bottom" },
				{ map = "3,-25", path = "bottom" },
				{ map = "4,-25", path = "bottom" },
				{ map = "5,-25", path = "bottom" },
				{ map = "6,-25", path = "bottom" },
				{ map = "7,-25", path = "bottom" },
				{ map = "3,-24", path = "bottom" },
				{ map = "4,-24", path = "bottom" },
				{ map = "5,-24", path = "bottom" },
				{ map = "6,-24", path = "bottom" },
				{ map = "7,-24", path = "bottom" },
				{ map = "8,-24", path = "bottom" },
				{ map = "9,-24", path = "bottom" },
				{ map = "3,-23", path = "bottom" },
				{ map = "4,-23", path = "bottom" },
				{ map = "5,-23", path = "bottom" },
				{ map = "6,-23", path = "bottom" },
				{ map = "7,-23", path = "bottom" },
				{ map = "8,-23", path = "bottom" },
				{ map = "9,-23", path = "bottom" },
				{ map = "3,-22", path = "right" },
				{ map = "4,-22", path = "right" },
				{ map = "5,-22", path = "right" },
				{ map = "6,-22", path = "right" },
				{ map = "7,-22", path = "right" },
				{ map = "9,-22", path = "left" },
				{ map = "8,-22", path = "left", custom = increment },
			}
		end
	elseif ETAPE == 12 then
		champs_35()
		if character:level() < 35 then
			return{
				{ map = "3,-14", path = "right" },
				{ map = "4,-14", path = "right" },
				{ map = "5,-14", path = "right" },
				{ map = "6,-14", path = "right" },
				{ map = "7,-14", path = "top" },
				{ map = "7,-15", path = "top" },
				{ map = "7,-16", path = "top" },
				{ map = "7,-17", path = "top" },
				{ map = "6,-19", path = "bottom" },
				{ map = "6,-18", path = "right" },
				{ map = "7,-18", path = "top" },
				{ map = "7,-19", path = "top" },
				{ map = "7,-20", path = "top" },
				{ map = "7,-21", path = "top" },
				{ map = "7,-22", path = "right", fight = true },
				{ map = "8,-22", path = "right", fight = true },
				{ map = "9,-22", path = "top", fight = true },
				{ map = "9,-23", path = "top", fight = true },
				{ map = "9,-24", path = "left", fight = true },
				{ map = "8,-24", path = "bottom", fight = true },
				{ map = "8,-23", path = "left", fight = true },
				{ map = "7,-23", path = "left", fight = true },
				{ map = "6,-23", path = "left", fight = true },
				{ map = "5,-23", path = "top", fight = true },
				{ map = "5,-24", path = "top", fight = true },
				{ map = "5,-25", path = "right", fight = true },
				{ map = "6,-25", path = "bottom", fight = true },
				{ map = "6,-24", path = "right", fight = true },
				{ map = "7,-24", path = "top", fight = true },
				{ map = "7,-25", path = "top", fight = true },
				{ map = "7,-26", path = "left", fight = true },
				{ map = "6,-26", path = "left", fight = true },
				{ map = "5,-26", path = "top", fight = true },
				{ map = "5,-27", path = "right", fight = true },
				{ map = "6,-27", path = "right", fight = true },
				{ map = "7,-27", path = "top", fight = true },
				{ map = "7,-28", path = "left", fight = true },
				{ map = "6,-28", path = "left", fight = true },
				{ map = "5,-28", path = "top", fight = true },
				{ map = "5,-29", path = "right", fight = true },
				{ map = "6,-29", path = "top", fight = true },
				{ map = "6,-30", path = "left", fight = true },
				{ map = "5,-30", path = "top", fight = true },
				{ map = "5,-31", path = "left", fight = true },
				{ map = "4,-31", path = "left", fight = true },
				{ map = "3,-31", path = "bottom", fight = true },
				{ map = "3,-30", path = "right", fight = true },
				{ map = "4,-30", path = "bottom", fight = true },
				{ map = "4,-29", path = "left", fight = true },
				{ map = "3,-29", path = "bottom", fight = true },
				{ map = "3,-28", path = "right", fight = true },
				{ map = "4,-28", path = "bottom", fight = true },
				{ map = "4,-27", path = "left", fight = true },
				{ map = "3,-27", path = "bottom", fight = true },
				{ map = "3,-26", path = "right", fight = true },
				{ map = "4,-26", path = "bottom", fight = true },
				{ map = "4,-25", path = "left", fight = true },
				{ map = "3,-25", path = "bottom", fight = true },
				{ map = "3,-24", path = "right", fight = true },
				{ map = "4,-24", path = "bottom", fight = true },
				{ map = "4,-23", path = "left", fight = true },
				{ map = "3,-23", path = "bottom", fight = true },
				{ map = "3,-22", path = "right", fight = true },
				{ map = "4,-22", path = "right", fight = true },
				{ map = "5,-22", path = "right", fight = true },
				{ map = "6,-22", path = "right", fight = true },
			}
		elseif character:level() >= 35 then
			return{
				{ map = "3,-14", path = "right" },
				{ map = "4,-14", path = "right" },
				{ map = "5,-14", path = "right" },
				{ map = "6,-14", path = "right" },
				{ map = "7,-14", path = "right" },
				{ map = "8,-14", path = "top" },
				{ map = "8,-15", path = "top" },
				{ map = "3,-31", path = "bottom" },
				{ map = "4,-31", path = "bottom" },
				{ map = "5,-31", path = "bottom" },
				{ map = "3,-30", path = "bottom" },
				{ map = "4,-30", path = "bottom" },
				{ map = "5,-30", path = "bottom" },
				{ map = "6,-30", path = "bottom" },
				{ map = "3,-29", path = "bottom" },
				{ map = "4,-29", path = "bottom" },
				{ map = "5,-29", path = "bottom" },
				{ map = "6,-29", path = "bottom" },
				{ map = "3,-28", path = "bottom" },
				{ map = "4,-28", path = "bottom" },
				{ map = "5,-28", path = "bottom" },
				{ map = "6,-28", path = "bottom" },
				{ map = "7,-28", path = "bottom" },
				{ map = "3,-27", path = "bottom" },
				{ map = "4,-27", path = "bottom" },
				{ map = "5,-27", path = "bottom" },
				{ map = "6,-27", path = "bottom" },
				{ map = "7,-27", path = "bottom" },
				{ map = "3,-26", path = "bottom" },
				{ map = "4,-26", path = "bottom" },
				{ map = "5,-26", path = "bottom" },
				{ map = "6,-26", path = "bottom" },
				{ map = "7,-26", path = "bottom" },
				{ map = "3,-25", path = "bottom" },
				{ map = "4,-25", path = "bottom" },
				{ map = "5,-25", path = "bottom" },
				{ map = "6,-25", path = "bottom" },
				{ map = "7,-25", path = "bottom" },
				{ map = "3,-24", path = "bottom" },
				{ map = "4,-24", path = "bottom" },
				{ map = "5,-24", path = "bottom" },
				{ map = "6,-24", path = "bottom" },
				{ map = "7,-24", path = "bottom" },
				{ map = "8,-24", path = "bottom" },
				{ map = "9,-24", path = "bottom" },
				{ map = "3,-23", path = "bottom" },
				{ map = "4,-23", path = "bottom" },
				{ map = "5,-23", path = "bottom" },
				{ map = "6,-23", path = "bottom" },
				{ map = "7,-23", path = "bottom" },
				{ map = "8,-23", path = "bottom" },
				{ map = "9,-23", path = "bottom" },
				{ map = "3,-22", path = "right" },
				{ map = "4,-22", path = "right" },
				{ map = "5,-22", path = "right" },
				{ map = "6,-22", path = "right" },
				{ map = "7,-22", path = "right" },
				{ map = "9,-22", path = "left" },
				{ map = "8,-22", path = "bottom", custom = increment },
			}
		end
	elseif ETAPE == 13 then
		mine_40()
		if character:level() < 40 then
			return{
				{ map = "3,-14", path = "right" },
				{ map = "4,-14", path = "right" },
				{ map = "5,-14", path = "right" },
				{ map = "6,-14", path = "right" },
				{ map = "7,-14", path = "right" },
				{ map = "8,-14", path = "top" },
				{ map = "6,-19", path = "bottom" },
				{ map = "6,-18", path = "right" },
				{ map = "7,-18", path = "right" },
				{ map = "8,-21", path = "right", fight = true },
				{ map = "9,-21", path = "right", fight = true },
				{ map = "10,-21", path = "right", fight = true },
				{ map = "11,-21", path = "right", fight = true },
				{ map = "12,-21", path = "bottom", fight = true },
				{ map = "12,-20", path = "bottom", fight = true },
				{ map = "12,-19", path = "bottom", fight = true },
				{ map = "12,-18", path = "bottom", fight = true },
				{ map = "12,-17", path = "bottom", fight = true },
				{ map = "12,-16", path = "bottom", fight = true },
				{ map = "12,-15", path = "left", fight = true },
				{ map = "11,-15", path = "left", fight = true },
				{ map = "10,-15", path = "left", fight = true },
				{ map = "9,-15", path = "left", fight = true },
				{ map = "8,-15", path = "top", fight = true },
				{ map = "8,-16", path = "right", fight = true },
				{ map = "9,-16", path = "right", fight = true },
				{ map = "10,-16", path = "right", fight = true },
				{ map = "11,-16", path = "top", fight = true },
				{ map = "11,-17", path = "left", fight = true },
				{ map = "10,-17", path = "left", fight = true },
				{ map = "9,-17", path = "left", fight = true },
				{ map = "8,-17", path = "top", fight = true },
				{ map = "8,-18", path = "right", fight = true },
				{ map = "9,-18", path = "right", fight = true },
				{ map = "10,-18", path = "right", fight = true },
				{ map = "11,-18", path = "top", fight = true },
				{ map = "11,-19", path = "top", fight = true },
				{ map = "11,-20", path = "left", fight = true },
				{ map = "10,-20", path = "left", fight = true },
				{ map = "9,-20", path = "left", fight = true },
				{ map = "8,-20", path = "top", fight = true },
			}
		elseif character:level() >= 40 then
			return{
				{ map = "8,-15", path = "top" },
				{ map = "8,-15", path = "top" },
				{ map = "9,-15", path = "top" },
				{ map = "10,-15", path = "top" },
				{ map = "11,-15", path = "top" },
				{ map = "12,-15", path = "top" },
				{ map = "12,-16", path = "top" },
				{ map = "11,-16", path = "top" },
				{ map = "10,-16", path = "top" },
				{ map = "9,-16", path = "top" },
				{ map = "8,-16", path = "top" },
				{ map = "8,-17", path = "top" },
				{ map = "9,-17", path = "top" },
				{ map = "10,-17", path = "top" },
				{ map = "11,-17", path = "top" },
				{ map = "12,-17", path = "top" },
				{ map = "12,-18", path = "top" },
				{ map = "11,-18", path = "top" },
				{ map = "8,-18", path = "top" },
				{ map = "8,-19", path = "top" },
				{ map = "11,-19", path = "top" },
				{ map = "12,-19", path = "top" },
				{ map = "12,-20", path = "top" },
				{ map = "11,-20", path = "top" },
				{ map = "10,-20", path = "top" },
				{ map = "9,-20", path = "top" },
				{ map = "8,-20", path = "top" },
				{ map = "9,-18", path = "left" },
				{ map = "10,-18", path = "left" },
				{ map = "12,-21", path = "left" },
				{ map = "11,-21", path = "left" },
				{ map = "10,-21", path = "left" },
				{ map = "9,-21", path = "left" },
				{ map = "8,-21", path = "bottom", custom = increment},
			}
		end
	elseif ETAPE == 14 then
		mine_50()
		if character:level() < 50 then
			return{
				{ map = "3,-14", path = "right" },
				{ map = "4,-14", path = "right" },
				{ map = "5,-14", path = "right" },
				{ map = "6,-14", path = "right" },
				{ map = "7,-14", path = "right" },
				{ map = "8,-14", path = "top" },
				{ map = "6,-19", path = "bottom" },
				{ map = "6,-18", path = "right" },
				{ map = "7,-18", path = "right" },
				{ map = "8,-21", path = "right", fight = true },
				{ map = "9,-21", path = "right", fight = true },
				{ map = "10,-21", path = "right", fight = true },
				{ map = "11,-21", path = "right", fight = true },
				{ map = "12,-21", path = "bottom", fight = true },
				{ map = "12,-20", path = "bottom", fight = true },
				{ map = "12,-19", path = "bottom", fight = true },
				{ map = "12,-18", path = "bottom", fight = true },
				{ map = "12,-17", path = "bottom", fight = true },
				{ map = "12,-16", path = "bottom", fight = true },
				{ map = "12,-15", path = "left", fight = true },
				{ map = "11,-15", path = "left", fight = true },
				{ map = "10,-15", path = "left", fight = true },
				{ map = "9,-15", path = "left", fight = true },
				{ map = "8,-15", path = "top", fight = true },
				{ map = "8,-16", path = "right", fight = true },
				{ map = "9,-16", path = "right", fight = true },
				{ map = "10,-16", path = "right", fight = true },
				{ map = "11,-16", path = "top", fight = true },
				{ map = "11,-17", path = "left", fight = true },
				{ map = "10,-17", path = "left", fight = true },
				{ map = "9,-17", path = "left", fight = true },
				{ map = "8,-17", path = "top", fight = true },
				{ map = "8,-18", path = "right", fight = true },
				{ map = "9,-18", path = "right", fight = true },
				{ map = "10,-18", path = "right", fight = true },
				{ map = "11,-18", path = "top", fight = true },
				{ map = "11,-19", path = "top", fight = true },
				{ map = "11,-20", path = "left", fight = true },
				{ map = "10,-20", path = "left", fight = true },
				{ map = "9,-20", path = "left", fight = true },
				{ map = "8,-20", path = "top", fight = true },
			}
		elseif character:level() >= 50 then
			global:printSuccess("ET VOILA UP 50 !")
			return{
				{ map = "12,-21", path = "left" },
				{ map = "12,-20", path = "left" },
				{ map = "12,-19", path = "left" },
				{ map = "12,-18", path = "left" },
				{ map = "12,-17", path = "left" },
				{ map = "12,-16", path = "left" },
				{ map = "12,-15", path = "left" },
				{ map = "11,-15", path = "left" },
				{ map = "11,-16", path = "left" },
				{ map = "11,-17", path = "left" },
				{ map = "11,-21", path = "left" },
				{ map = "11,-20", path = "left" },
				{ map = "11,-18", path = "left" },
				{ map = "10,-18", path = "left" },
				{ map = "10,-17", path = "left" },
				{ map = "10,-16", path = "left" },
				{ map = "10,-15", path = "left" },
				{ map = "9,-15", path = "left" },
				{ map = "9,-16", path = "left" },
				{ map = "9,-17", path = "left" },
				{ map = "9,-18", path = "left" },
				{ map = "10,-20", path = "left" },
				{ map = "10,-21", path = "left" },
				{ map = "9,-21", path = "left" },
				{ map = "9,-20", path = "left" },
				{ map = "8,-15", path = "top" },
				{ map = "8,-16", path = "top" },
				{ map = "8,-17", path = "top" },
				{ map = "8,-21", path = "bottom" },
				{ map = "8,-20", path = "bottom" },
				{ map = "8,-19", path = "bottom" },
				{ map = "11,-19", path = "bottom" },
				{ map = "8,-18", path = "left" },
				{ map = "7,-18", path = "left" },
				{ map = "6,-18", path = "left" },
			}
		end	
	end
end

function increment()
    ETAPE = ETAPE + 1
    global:printSuccess("ETAPE "..ETAPE.." !")
end

function pnjastrub()
	stuff_1()
	global:delay(1000)
	npc:npc(4398,3)
	global:delay(1000)
	npc:reply(-1)
	global:delay(1000)
	npc:reply(-1)
end

function stuff_1()
    increment()
    global:printSuccess("ON EQUIPE LA PANOPLIE DE L'AVENTURIER")
    global:printSuccess("ET ON CHANGE DE ZONE DE FARM POUR XP PLUS VITE")
    global:delay(1000)
    inventory:equipItem(2478,0)--Amulette
    global:delay(1000)
    inventory:equipItem(2477,3)--Ceinture
    global:delay(1000)
    inventory:equipItem(2475,4)--Anneau
    global:delay(1000)
    inventory:equipItem(2476,5)--Bottes
    global:delay(1000)
    inventory:equipItem(2474,6)--Chapeau
    global:delay(1000)
    inventory:equipItem(2473,7)--Cape
    global:delay(1000)
end

function arrive_astrub()
	increment()
	global:printSuccess("ON PART XP ET RECUPERER UNE PANOPLIE PLUS INETRESSANTE")
    map:changeMap("bottom")
end

function violet_1()
	CAPE = 8234
	COIFFE = 8245
	ANNEAU = 8221
	BOTTES = 8227
	CEINTURE = 8239
	AMULETTE = 8215

	MIN_MONSTERS = 1
	MAX_MONSTERS = 4
	FORCE_MONSTERS = {236}
end

function rouge_1()
	CAPE = 8231
	COIFFE = 8243
	ANNEAU = 8219
	BOTTES = 8225
	CEINTURE = 8237
	AMULETTE = 8213

	MIN_MONSTERS = 1
	MAX_MONSTERS = 4
	FORCE_MONSTERS = {489}
end

function bleu_1()
	CAPE = 8232
	COIFFE = 8244
	ANNEAU = 8220
	BOTTES = 8226
	CEINTURE = 8238
	AMULETTE = 8214

	MIN_MONSTERS = 1
	MAX_MONSTERS = 4
	FORCE_MONSTERS = {491}
end

function jaune_1()
	CAPE = 8236
	COIFFE = 8247
	ANNEAU = 8223
	BOTTES = 8229
	CEINTURE = 8241
	AMULETTE = 8217

	MIN_MONSTERS = 1
	MAX_MONSTERS = 4
	FORCE_MONSTERS = {493}
end

function vert_1()
	CAPE = 8233
	COIFFE = 8246
	ANNEAU = 8222
	BOTTES = 8228
	CEINTURE = 8240
	AMULETTE = 8216

	MIN_MONSTERS = 1
	MAX_MONSTERS = 4
	FORCE_MONSTERS = {490}
end

function rose_1()
	CAPE = 8235
	COIFFE = 8248
	ANNEAU = 8224
	BOTTES = 8230
	CEINTURE = 8242
	AMULETTE = 8218

	MIN_MONSTERS = 1
	MAX_MONSTERS = 4
	FORCE_MONSTERS = {492}
end

function violet_2()
	CAPE = 8234
	COIFFE = 8245
	ANNEAU = 8221
	BOTTES = 8227
	CEINTURE = 8239
	AMULETTE = 8215

	MIN_MONSTERS = 1
	MAX_MONSTERS = 6
	FORCE_MONSTERS = {236}
end

function rouge_2()
	CAPE = 8231
	COIFFE = 8243
	ANNEAU = 8219
	BOTTES = 8225
	CEINTURE = 8237
	AMULETTE = 8213

	MIN_MONSTERS = 1
	MAX_MONSTERS = 6
	FORCE_MONSTERS = {489}
end

function bleu_2()
	CAPE = 8232
	COIFFE = 8244
	ANNEAU = 8220
	BOTTES = 8226
	CEINTURE = 8238
	AMULETTE = 8214

	MIN_MONSTERS = 1
	MAX_MONSTERS = 6
	FORCE_MONSTERS = {491}
end

function jaune_2()
	CAPE = 8236
	COIFFE = 8247
	ANNEAU = 8223
	BOTTES = 8229
	CEINTURE = 8241
	AMULETTE = 8217

	MIN_MONSTERS = 1
	MAX_MONSTERS = 6
	FORCE_MONSTERS = {493}
end

function vert_2()
	CAPE = 8233
	COIFFE = 8246
	ANNEAU = 8222
	BOTTES = 8228
	CEINTURE = 8240
	AMULETTE = 8216

	MIN_MONSTERS = 1
	MAX_MONSTERS = 6
	FORCE_MONSTERS = {490}
end

function rose_2()
	CAPE = 8235
	COIFFE = 8248
	ANNEAU = 8224
	BOTTES = 8230
	CEINTURE = 8242
	AMULETTE = 8218

	MIN_MONSTERS = 1
	MAX_MONSTERS = 6
	FORCE_MONSTERS = {492}
end

function stuff_2()
	increment()
	global:printSuccess("ON EQUIPE LA PANOPLIE PIOU ADAPTÉ")
	inventory:equipItem(AMULETTE,0)
    inventory:equipItem(ANNEAU,2)
    inventory:equipItem(CEINTURE,3)
    inventory:equipItem(BOTTES,5)
    inventory:equipItem(COIFFE,6)
    inventory:equipItem(CAPE,7)
    map:changeMap("bottom")
end

function piou_20()
	MIN_MONSTERS = 1
	MAX_MONSTERS = 4
end

function piou_25()
	MIN_MONSTERS = 1
	MAX_MONSTERS = 6
end

function champs_30()
	MIN_MONSTERS = 1
	MAX_MONSTERS = 3
end

function champs_35()
	MIN_MONSTERS = 1
	MAX_MONSTERS = 4
end

function champs_50()
	MIN_MONSTERS = 1
	MAX_MONSTERS = 6
end

function mine_40()
	MIN_MONSTERS = 1
	MAX_MONSTERS = 2
	FORBIDDEN_MONSTERS = {5228}
end

function mine_50()
	MIN_MONSTERS = 1
	MAX_MONSTERS = 3
	FORBIDDEN_MONSTERS = {5228}
end

function suppression()
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

    inventory:deleteItem(16515,inventory:itemCount(16515))--Queue de chapardam

    inventory:deleteItem(16524,inventory:itemCount(16524))--Relique d'incarnam
    inventory:deleteItem(310,inventory:itemCount(310))--Os de chafer

    inventory:deleteItem(311,inventory:itemCount(311))--Eau potable
    inventory:deleteItem(16522,inventory:itemCount(16522))--Peau de gloot

    --Les Amulette
    inventory:deleteItem(8213,inventory:itemCount(8213))
    inventory:deleteItem(8214,inventory:itemCount(8214))
    inventory:deleteItem(8215,inventory:itemCount(8215))
    inventory:deleteItem(8216,inventory:itemCount(8216))
    inventory:deleteItem(8217,inventory:itemCount(8217))
    inventory:deleteItem(8218,inventory:itemCount(8218))

    --Les Anneaux
    inventory:deleteItem(8219,inventory:itemCount(8219))
    inventory:deleteItem(8220,inventory:itemCount(8220))
    inventory:deleteItem(8221,inventory:itemCount(8221))
    inventory:deleteItem(8222,inventory:itemCount(8222))
    inventory:deleteItem(8223,inventory:itemCount(8223))
    inventory:deleteItem(8224,inventory:itemCount(8224))

	--Les Sandales    
    inventory:deleteItem(8225,inventory:itemCount(8225))
    inventory:deleteItem(8226,inventory:itemCount(8226))
    inventory:deleteItem(8227,inventory:itemCount(8227))
    inventory:deleteItem(8228,inventory:itemCount(8228))
    inventory:deleteItem(8229,inventory:itemCount(8229))
    inventory:deleteItem(8230,inventory:itemCount(8230))

    --Les Capes
    inventory:deleteItem(8231,inventory:itemCount(8231))
    inventory:deleteItem(8232,inventory:itemCount(8232))
    inventory:deleteItem(8233,inventory:itemCount(8233))
    inventory:deleteItem(8234,inventory:itemCount(8234))
    inventory:deleteItem(8235,inventory:itemCount(8235))
    inventory:deleteItem(8236,inventory:itemCount(8236))

    --Les Ceintures
    inventory:deleteItem(8237,inventory:itemCount(8237))
    inventory:deleteItem(8238,inventory:itemCount(8238))
    inventory:deleteItem(8239,inventory:itemCount(8239))
    inventory:deleteItem(8240,inventory:itemCount(8240))
    inventory:deleteItem(8241,inventory:itemCount(8241))
    inventory:deleteItem(8242,inventory:itemCount(8242))

    --Les Coiffes
    inventory:deleteItem(8243,inventory:itemCount(8243))
    inventory:deleteItem(8244,inventory:itemCount(8244))
    inventory:deleteItem(8245,inventory:itemCount(8245))
    inventory:deleteItem(8246,inventory:itemCount(8246))
    inventory:deleteItem(8247,inventory:itemCount(8247))
    inventory:deleteItem(8248,inventory:itemCount(8248))
end
function phenix()
	return {
		{ map = "2,-14", custom = resurection },
	}
end

function resurection()
	map:door(313)
	map:changeMap("right")
end


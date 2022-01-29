ETAPEE = 1
printZone = 1

function move()
    global:printMessage("ETAPE "..ETAPEE)
  if ETAPEE == 1 then
    if printZone == 1 then
      global:printMessage("Vers zaap plaine des porkass")
      printZone = 0
    end
       return {
        --Zaap plaine des porkass
          { map = "0,0", path = "zaap(191106048)" },
        { map = "191106048", path = "left" },
        { map = "6,-19", path = "left" },
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
        { map = "1,-15", path = "right" },
        { map = "1,-16", path = "right" },
        { map = "1,-17", path = "top" },
        { map = "2,-15", path = "right" },
        { map = "2,-16", path = "right" },
        { map = "2,-17", path = "top" },
        { map = "7,-15", path = "left" },
        { map = "6,-15", path = "left" },
        { map = "5,-15", path = "top" },
        { map = "4,-15", path = "right" },
        { map = "3,-15", path = "right" },
        { map = "7,-16", path = "left" },
        { map = "6,-16", path = "left" },
        { map = "5,-16", path = "top" },
        { map = "4,-16", path = "right" },
        { map = "3,-16", path = "right" },
        { map = "7,-21", path = "bottom" },
        { map = "7,-20", path = "bottom" },
        { map = "7,-19", path = "bottom" },
        { map = "7,-18", path = "bottom" },
        { map = "7,-17", path = "bottom" },
        { map = "1,-21", path = "bottom" },
        { map = "1,-20", path = "right" },
        { map = "1,-19", path = "top" },
        { map = "2,-21", path = "bottom" },
        { map = "2,-20", path = "right" },
        { map = "2,-19", path = "top" },
        { map = "6,-21", path = "left" },
        { map = "5,-21", path = "left" },
        { map = "4,-21", path = "bottom" },
        { map = "3,-21", path = "left" },
        { map = "6,-20", path = "left" },
        { map = "5,-20", path = "left" },
        { map = "4,-20", path = "bottom" },
        { map = "3,-20", path = "right" },
        { map = "6,-17", path = "left" },
        { map = "5,-17", path = "top" },
        { map = "4,-17", path = "left" },
        { map = "3,-17", path = "top" },
        { map = "4,-19", path = "right" },
        { map = "3,-19", path = "right" },
        { map = "-5,-22", custom = increment, path = "top" },
       }
    elseif ETAPEE == 2 then
      if printZone == 1 then
        global:printMessage("Vers zaap tainela")
        printZone = 0
      end
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
    elseif ETAPEE == 3 then
      if printZone == 1 then
        global:printMessage("Vers zaap Lac de cania")
        printZone = 0
      end
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
    elseif ETAPEE == 4 then
      if printZone == 1 then
        global:printMessage("Vers zaap plaines rocheuses")
        printZone = 0
      end
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
    elseif ETAPEE == 5 then
      if printZone == 1 then
        global:printMessage("Vers zaap Bonta")
        printZone = 0
      end
       return {
        --Zaap Bonta
	--[[-17,-47]]  { map = "147590153", path = "left", done = false },
	--[[-18,-47]]  { map = "147589641", path = "left", done = false },
	--[[-19,-47]]  { map = "147589129", path = "left", done = false },
	--[[-20,-47]]  { map = "147588617", path = "top", done = false },
	--[[-20,-48]]  { map = "147588616", path = "left", done = false },
	--[[-21,-48]]  { map = "147588104", path = "left", done = false },
	--[[-22,-48]]  { map = "147587592", path = "top", done = false },
	--[[-22,-49]]  { map = "147587591", path = "left", done = false },
	--[[-23,-49]]  { map = "147587079", path = "left", done = false },
	--[[-24,-49]]  { map = "159650320", path = "left", done = false },
	--[[-25,-49]]  { map = "159649808", path = "left", done = false },
	--[[-26,-50]]  { map = "212603916", path = "left", done = false },
	--[[-27,-51]]  { map = "212603914", path = "left", done = false },
	--[[-28,-52]]  { map = "212602890", path = "left", done = false },
	--[[-29,-53]]  { map = "212602376", path = "left", done = false },
	--[[-30,-53]]  { map = "212601864", path = "top", done = false },
	--[[-30,-54]]  { map = "212601350", path = "left", done = false },
	--[[-31,-54]]  { map = "212600838", path = "top", done = false },
	--[[-31,-55]]  { map = "212600837", door = "203", custom=increment2, done = false },
       }
    elseif ETAPEE == 7 then
      if printZone == 1 then
        global:printMessage("Vers zaap champs de cania")
        printZone = 0
      end
       return {
        --Zaap Champs de cania
        --[[-31,-56]]  { map = "212600323", path = "bottom", done = false },
--[[-31,-55]]  { map = "212600837", path = "bottom", done = false },
--[[-31,-54]]  { map = "212600838", path = "right", done = false },
--[[-30,-54]]  { map = "212601350", path = "bottom", done = false },
--[[-30,-53]]  { map = "212601864", path = "right", done = false },
--[[-29,-53]]  { map = "212602376", path = "bottom", done = false },
--[[-28,-52]]  { map = "212602890", path = "bottom", done = false },
--[[-27,-51]]  { map = "212603914", path = "right", done = false },
--[[-26,-50]]  { map = "212603916", path = "right", done = false },
--[[-25,-49]]  { map = "159649808", path = "bottom", done = false },
--[[-25,-48]]  { map = "159649809", path = "bottom", done = false },
--[[-25,-47]]  { map = "142088707", path = "bottom", done = false },
--[[-25,-46]]  { map = "142088708", path = "left", done = false },
--[[-26,-46]]  { map = "142088196", path = "bottom", done = false },
--[[-26,-45]]  { map = "142088197", path = "bottom", done = false },
--[[-26,-44]]  { map = "142088198", path = "bottom", done = false },
--[[-26,-43]]  { map = "142088199", path = "bottom", done = false },
--[[-26,-42]]  { map = "142088200", path = "left", done = false },
--[[-27,-42]]  { map = "142087688", path = "bottom", done = false },
--[[-27,-41]]  { map = "142087689", path = "bottom", done = false },
--[[-27,-40]]  { map = "142087690", path = "bottom", done = false },
--[[-27,-39]]  { map = "142087691", path = "bottom", done = false },
--[[-27,-38]]  { map = "142087692", path = "bottom", done = false },
        { map = "-27,-37", custom = increment, path = "bottom" },
       }
    elseif ETAPEE == 8 then
      if printZone == 1 then
        global:printMessage("Vers zaap routes rocailleuses")
        printZone = 0
      end
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
    elseif ETAPEE == 9 then
      if printZone == 1 then
        global:printMessage("Vers zaap massif de cania")
        printZone = 0
      end
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
    elseif ETAPEE == 10 then
      if printZone == 1 then
        global:printMessage("Vers zaap village des eleveurs")
        printZone = 0
      end
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
    elseif ETAPEE == 11 then
      if printZone == 1 then
        global:printMessage("Vers zaap routes des roulottes")
        printZone = 0
      end
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
        { map = "-24,-1", path = "left" },
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
    elseif ETAPEE == 12 then
      if printZone == 1 then
        global:printMessage("Vers zaap Brakmar")
        printZone = 0
      end
       return {
        --Zaap Brakmar
        --[[-25,12]]   { map = "171967506", path = "bottom", done = false },
      	--[[-25,13]]   { map = "171967507", path = "bottom", done = false },
      	--[[-25,14]]   { map = "171967508", path = "bottom", done = false },
      	--[[-25,15]]   { map = "173017857", path = "right", done = false },
      	--[[-24,15]]   { map = "173018369", path = "bottom", done = false },
      	--[[-24,16]]   { map = "173018112", path = "right", done = false },
      	--[[-23,16]]   { map = "173018624", path = "bottom", done = false },
      	--[[-23,17]]   { map = "173018625", path = "right", done = false },
      	--[[-22,17]]   { map = "173019137", path = "bottom", done = false },
      	--[[-22,18]]   { map = "173019138", path = "bottom", done = false },
      	--[[-22,19]]   { map = "173019139", path = "bottom", done = false },
      	--[[-22,20]]   { map = "173019140", path = "bottom", done = false },
      	--[[-22,21]]   { map = "173019141", path = "bottom", done = false },
      	--[[-22,22]]   { map = "173019142", path = "right", done = false },
      	--[[-21,22]]   { map = "173019654", path = "bottom", done = false },
      	--[[-21,23]]   { map = "173019655", path = "bottom", done = false },
      	--[[-21,24]]   { map = "173019656", path = "bottom", done = false },
      	--[[-21,25]]   { map = "173019657", path = "bottom", done = false },
      	--[[-21,26]]   { map = "173019658", path = "bottom", done = false },
      	--[[-21,27]]   { map = "173019659", path = "left", done = false },
      	--[[-22,27]]   { map = "173019147", path = "bottom", done = false },
      	--[[-22,28]]   { map = "173019148", path = "left", done = false },
      	--[[-23,28]]   { map = "173018636", path = "left", done = false },
      	--[[-24,28]]   { map = "173018124", path = "bottom", done = false },
      	--[[-24,29]]   { map = "172232704", path = "bottom", done = false },
      	--[[-24,30]]   { map = "172232705", path = "left", done = false },
      	--[[-25,30]]   { map = "172232193", path = "bottom", done = false },
      	--[[-26,31]]   { map = "212862210", path = "bottom", done = false },
      	--[[-26,32]]   { map = "212862209", path = "bottom", done = false },
      	--[[-26,33]]   { map = "212861952", path = "bottom", done = false },
      	--[[-26,36]]   { map = "212861954", path = "bottom", done = false },
        { map = "-26,37", custom = increment3, path = "right" },
       }
    elseif ETAPEE == 15 then
      if printZone == 1 then
        global:printMessage("Vers zaap terres desacrees")
        printZone = 0
      end
       return {
        --Zaap Terres desacrees
        --[[-26,37]]   { map = "212861955", path = "right", done = false },
	--[[-25,37]]   { map = "212862467", path = "bottom", done = false },
	--[[-25,38]]   { map = "212862469", path = "right", done = false },
	--[[-24,38]]   { map = "212862981", path = "bottom", done = false },
	--[[-24,39]]   { map = "212862982", door = "153", done = false },
	--[[-23,39]]   { map = "212863494", door = "279", done = false },
	--[[-22,39]]   { map = "212864006", door = "158", done = false },
	--[[-22,38]]   { map = "212864005", door = "150", done = false },
	--[[-22,37]]   { map = "212864004", path = "top", done = false },
	--[[-22,36]]   { map = "212864003", path = "right", done = false },
	--[[-21,36]]   { map = "212864515", path = "right", done = false },
	--[[-19,37]]   { map = "172235272", path = "top", done = false },
	--[[-19,36]]   { map = "172235271", path = "right", done = false },
	--[[-18,36]]   { map = "172235783", path = "top", done = false },
	--[[-18,35]]   { map = "172235782", path = "top", done = false },
	--[[-18,34]]   { map = "172235781", path = "top", done = false },
	--[[-18,33]]   { map = "172235780", path = "top", done = false },
	--[[-18,32]]   { map = "172235779", path = "top", done = false },
	--[[-18,31]]   { map = "172753417", path = "right", done = false },
	--[[-17,31]]   { map = "172753929", path = "right", done = false },
	--[[-16,31]]   { map = "172754441", path = "top", done = false },
	--[[-16,30]]   { map = "172754440", path = "right", done = false },
	--[[-15,30]]   { map = "172754952", path = "top", done = false },
	--[[-15,29]]   { map = "172754951", path = "top", done = false },
	--[[-15,28]]   { map = "172754950", path = "left", done = false },
	--[[-16,28]]   { map = "179830787", door = "332", done = false },
	--[[-16,29]]   { map = "179830788", path = "left", done = false },
	--[[-17,29]]   { map = "179962372", door = "11", done = false },
	--[[-17,28]]   { map = "179962371", path = "top", done = false },
	--[[-17,27]]   { map = "179962370", path="right", done = false },
	--[[-17,26]]   { map = "179962369", path = "top", done = false },
	--[[-17,25]]   { map = "179962368", path = "right", done = false },
	--[[-16,25]]   { map = "179830784", path = "bottom", done = false },
  { map = "179830786", path = "top", done = false },
                { map = "-16,26", path = "right" },
                { map = "-15,26", custom = increment2, door = "187" },
       }
    elseif ETAPEE == 17 then
      if printZone == 1 then
        global:printMessage("Vers zaap plaine des scarafeuilles")
        printZone = 0
      end
       return {
        --Zaap Plaine des scarafeuilles
        { map = "-15,25", path = "left" },
        { map = "-16,25", path = "bottom" },
        { map = "-16,26", path = "bottom" },
        { map = "-16,27", path = "left" },
        { map = "-17,27", path = "bottom" },
        { map = "-17,28", path = "left" },
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
    elseif ETAPEE == 18 then
      if printZone == 1 then
        global:printMessage("Vers zaap rivage sufokien")
        printZone = 0
      end
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
    elseif ETAPEE == 19 then
      if printZone == 1 then
        global:printMessage("Vers zaap Sufokia")
        printZone = 0
      end
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
    elseif ETAPEE == 20 then
      if printZone == 1 then
        global:printMessage("Vers zaap bord de la foret malefique")
        printZone = 0
      end
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
    elseif ETAPEE == 21 then
      if printZone == 1 then
        global:printMessage("Vers zaap coin des bouftous")
        printZone = 0
      end
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
    elseif ETAPEE == 22 then
      if printZone == 1 then
        global:printMessage("Vers zaap port de madrestam")
        printZone = 0
      end
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
    elseif ETAPEE == 23 then
      if printZone == 1 then
        global:printMessage("Vers zaap chateau d'amakna")
        printZone = 0
      end
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
    elseif ETAPEE == 24 then
      if printZone == 1 then
        global:printMessage("Vers zaap montage des craqueleurs")
        printZone = 0
      end
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
    elseif ETAPEE == 25 then
      if printZone == 1 then
        global:printMessage("Vers zaap village d'amakna")
        printZone = 0
      end
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
    elseif ETAPEE == 26 then
      if printZone == 1 then
        global:printMessage("Vers zaap dunes des ossements")
        printZone = 0
      end
       return {
        --Zaap Dunes des ossements
        { map = "-2,0", path = "right" },
        { map = "-1,0", path = "right" },
        { map = "0,0", path = "right" },
        { map = "1,0", path = "right" },
        { map = "2,0", path = "right" },
        { map = "3,0", path = "right" },
        { map = "4,0", path = "top" },
        { map = "4,-1", path = "right" },
        { map = "5,-1", path = "top" },
        { map = "5,-2", path = "right" },
        { map = "6,-2", path = "top" },
        { map = "6,-3", path = "right" },
        { map = "7,-3", path = "right" },
        { map = "8,-3", path = "right" },
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
    ETAPEE = ETAPEE + 1
    global:printSuccess("ETAPE exploration "..ETAPEE.." !")
    printZone = 1
end

function increment2()
    ETAPEE = ETAPEE + 2
    global:printSuccess("ETAPE exploration "..ETAPEE.." !")
    printZone = 1
end

function increment3()
    ETAPEE = ETAPEE + 3
    global:printSuccess("ETAPE exploration "..ETAPEE.." !")
    printZone = 1
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

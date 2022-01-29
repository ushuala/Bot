module = {}

CAPE = 8233
COIFFE = 8246
ANNEAU = 8222
BOTTES = 8228
CEINTURE = 8240
AMULETTE = 8216

equipedItem = 0

function pnjastrub()
  global:printSuccess("Go astrub")
	global:delay(1000)
	npc:npc(4398,3)
	global:delay(1000)
	npc:reply(-1)
	global:delay(1000)
	npc:reply(-1)
end

function arrive_astrub()
  global:printSuccess("Je suis arrivé à Astrub level"..character:getLevel())
  map:changeMap("bottom")
end

function equipPanoPiouJaune()
  if inventory:itemCount(AMULETTE) >= 1 then
    inventory:equipItem(AMULETTE,0)
  end
  if inventory:itemCount(ANNEAU) >= 1 then
    inventory:equipItem(ANNEAU,2)
  end
  if inventory:itemCount(CEINTURE) >= 1 then
    inventory:equipItem(CEINTURE,3)
  end
  if inventory:itemCount(BOTTES) >= 1 then
    inventory:equipItem(BOTTES,5)
  end
  if inventory:itemCount(COIFFE) >= 1 then
    inventory:equipItem(COIFFE,6)
  end
  if inventory:itemCount(CAPE) >= 1 then
    inventory:equipItem(CAPE,7)
  end
  equipedItem = 1
end

function module:piou()
  if character:level() == 19 and equipedItem == 0 then
    equipPanoPiouJaune()
  end
  if character:level() < 3 then
    return{
      { map=map:currentMapId(), path="havenbag"},
      { map="162791424", path="zaap(191105026)"},
      { map = "152044547", path = "right"},--IOP
      { map = "152043521", path = "right"},--CRA
      { map = "152045573", path = "right"},--SACRIEUR
      { map = "152046593", path = "right"},--ENIRIPSA
      { map = "152046599", path = "right"},--SRAM
      { map = "152044553", path = "right"},--OUGINACK
      { map = "152043523", path = "right"},--OSAMODA
      { map = "152046595", path = "right"},--ENUTROF
      { map = "152044545", path = "right"},--ECAFLIP
      { map = "152045575", path = "right"},--STEAMER
      { map = "152045571", path = "right"},--FECA
      { map = "152043529", path = "right"},--HUPPERMAGE
      { map = "152043527", path = "right"},--ZOBAL
      { map = "152043525", path = "right"},--PANDAWA
      { map = "152045569", path = "right"},--ELIOTOPE
      { map = "152046597", path = "right"},--SADIDA
      { map = "152044549", path = "right"},--ROUBLARD
      { map = "152044551", path = "right" },--XELOR
      { map = "153092354", door = "409", fight = true},
      { map = "154010883", path = "right", fight = true},
      { map = "154010371", path = "right", fight = true},
      { map = "153878787", path = "right", fight = true},
      { map = "153879299", path = "right", fight = true},
      { map = "153879811", path = "right", fight = true},
      { map = "153880323", path = "right", fight = true},
      { map = "153879811", path = "right", fight = true},
      { map = "4,-3", custom = pnjastrub, fight = true },
      { map = "192416776", path = "bottom" },
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
  else
    return{
      { map=map:currentMapId(), path="havenbag"},
      { map="162791424", path="zaap(191105026)"},
      { map = "152044547", path = "right"},--IOP
      { map = "152043521", path = "right"},--CRA
      { map = "152045573", path = "right"},--SACRIEUR
      { map = "152046593", path = "right"},--ENIRIPSA
      { map = "152046599", path = "right"},--SRAM
      { map = "152044553", path = "right"},--OUGINACK
      { map = "152043523", path = "right"},--OSAMODA
      { map = "152046595", path = "right"},--ENUTROF
      { map = "152044545", path = "right"},--ECAFLIP
      { map = "152045575", path = "right"},--STEAMER
      { map = "152045571", path = "right"},--FECA
      { map = "152043529", path = "right"},--HUPPERMAGE
      { map = "152043527", path = "right"},--ZOBAL
      { map = "152043525", path = "right"},--PANDAWA
      { map = "152045569", path = "right"},--ELIOTOPE
      { map = "152046597", path = "right"},--SADIDA
      { map = "152044549", path = "right"},--ROUBLARD
      { map = "152044551", path = "right" },--XELOR
      { map = "153092354", door = "409"},
      { map = "154010883", path = "right"},
      { map = "154010371", path = "right"},
      { map = "153878787", path = "right"},
      { map = "153879299", path = "right"},
      { map = "153879811", path = "right"},
      { map = "153880323", path = "right"},
      { map = "153879811", path = "right"},
      { map = "4,-3", custom = pnjastrub},
      { map = "192416776", path = "bottom" },
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
  end
end

function module:bouftou()
  return{
    { map=map:currentMapId(), path="havenbag"},
    { map= "162791424", path="zaap(88082704)"},
    { map = "88082704", fight = true, path = "bottom(552)", done = false },
    { map = "88082703", fight = true, gather = false, path = "left(112)", done = false },
    { map = "88082191", fight = true, path = "left(168)", done = false },
    { map = "88081679", fight = true, path = "left(196)", done = false },
    { map = "88081167", fight = true, path = "left(238)", done = false },
    { map = "88080655", fight = true, path = "top(20)", done = false },
    { map = "88080656", fight = true, path = "left(490)", done = false },
    { map = "88212240", fight = true, path = "bottom(541)", done = false },
    { map = "88212239", fight = true, path = "bottom(541)", done = false },
    { map = "88212238", fight = true, path = "right(237)", done = false },
    { map = "88080654", fight = true, path = "right(293)", done = false },
    { map = "88081166", fight = true, path = "right(335)", done = false },
    { map = "88081678", fight = true, path = "right(307)", done = false },
    { map = "88082190", fight = true, path = "right(307)", done = false },
    { map = "88082702", fight = true, path = "bottom(538)", done = false },
    { map = "88082701", fight = true, path = "left(182)", done = false },
    { map = "88082189", fight = true, path = "left(252)", done = false },
    { map = "88081677", fight = true, path = "left(266)", done = false },
    { map = "88081165", fight = true, path = "left(350)", done = false },
    { map = "88080653", fight = true, path = "left(336)", done = false },
    { map = "88212237", fight = true, path = "bottom(542)", done = false },
    { map = "88212236", fight = true, path = "right(251)", done = false },
    { map = "88080652", fight = true, path = "right(279)", done = false },
    { map = "88081164", fight = true, path = "right(265)", done = false },
    { map = "88081676", fight = true, path = "right(265)", done = false },
    { map = "88082188", fight = true, path = "right(279)", done = false },
    { map = "88082700", fight = true, path = "right(279)", done = false },
    { map = "88083212", fight = true, path = "top(5)", done = false },
    { map = "88083213", fight = true, path = "top(19)", done = false },
    { map = "88083214", fight = true, path = "top(5)", done = false },
    { map = "88083215", fight = true, path = "left(462)", done = false },
  }
end

function module:otomai()
  return {
        { map=map:currentMapId(), path="havenbag"},
        { map="153089", path="bottom"},
        { map="153090", custom= leaveNaufrage},
        { map="153621", path="left"},
        { map="162791424", path="zaap(154642)"},
        { map = "154642", path = "top(19)", custom = saveZaapOtomai },
        { map = "154641", path = "top(4)", done = false },
        { map = "154640", path = "left(420)", done = false },
        { map = "155152", path = "top(7)", done = false },
        { map = "155151", path = "top(19)", done = false },
--[[-47,14]]   { map = "155150", fight = true, gather = true, path = "top(17)", done = false },
--[[-47,13]]   { map = "155149", fight = true, path = "top(3)", done = false },
--[[-47,12]]   { map = "155148", fight = true, path = "left(126)", done = false },
--[[-48,12]]   { map = "155660", fight = true, path = "top(8)", done = false },
--[[-48,11]]   { map = "155659", fight = true, path = "top(19)", done = false },
--[[-48,10]]   { map = "155658", fight = true, path = "top(3)", done = false },
--[[-48,9]]    { map = "155657", fight = true, path = "left(434)", done = false },
--[[-49,9]]    { map = "156169", fight = true, path = "top(8)", done = false },
--[[-49,8]]    { map = "156168", fight = true, path = "left(196)", done = false },
--[[-50,8]]    { map = "156680", fight = true, path = "top(5)", done = false },
--[[-50,7]]    { map = "156679", fight = true, path = "top(19)", done = false },
--[[-50,6]]    { map = "156678", fight = true, path = "top(18)", done = false },
--[[-50,5]]    { map = "156677", fight = true, path = "left(168)", done = false },
--[[-51,5]]    { map = "157189", fight = true, path = "top(17)", done = false },
--[[-51,4]]    { map = "157188", fight = true, path = "left(322)", done = false },
--[[-52,4]]    { map = "157700", fight = true, path = "top(5)", done = false },
--[[-52,3]]    { map = "157699", fight = true, path = "top(4)", done = false },
--[[-52,2]]    { map = "157698", fight = true, path = "top(17)", done = false },
--[[-52,1]]    { map = "157697", fight = true, path = "left(420)", done = false },
--[[-53,1]]    { map = "158209", fight = true, path = "left(448)", done = false },
--[[-54,1]]    { map = "158721", fight = true, path = "left(448)", done = false },
--[[-55,1]]    { map = "159233", fight = true, path = "left(448)", done = false },
--[[-56,1]]    { map = "159745", fight = true, path = "left(476)", done = false },
--[[-57,1]]    { map = "160257", fight = true, path = "bottom(553)", done = false },
--[[-57,2]]    { map = "160258", fight = true, path = "bottom(539)", done = false },
--[[-57,3]]    { map = "160259", fight = true, path = "left(504)", done = false },
--[[-58,3]]    { map = "160771", fight = true, path = "bottom(540)", done = false },
--[[-58,4]]    { map = "160772", fight = true, path = "bottom(540)", done = false },
--[[-58,5]]    { map = "160773", fight = true, path = "bottom(554)", done = false },
--[[-58,6]]    { map = "160774", fight = true, path = "bottom(553)", done = false },
--[[-58,7]]    { map = "160775", fight = true, path = "bottom(540)", done = false },
--[[-58,8]]    { map = "160776", fight = true, path = "bottom(540)", done = false },
--[[-58,9]]    { map = "160777", fight = true, path = "bottom(540)", done = false },
--[[-58,10]]   { map = "160778", fight = true, path = "bottom(540)", done = false },
--[[-58,11]]   { map = "160779", fight = true, path = "bottom(553)", done = false },
--[[-58,12]]   { map = "160780", fight = true, path = "bottom(539)", done = false },
--[[-58,13]]   { map = "160781", fight = true, path = "bottom(539)", done = false },
--[[-58,14]]   { map = "160782", fight = true, path = "bottom(539)", done = false },
--[[-58,15]]   { map = "160783", fight = true, path = "bottom(540)", done = false },
--[[-58,16]]   { map = "160784", fight = true, path = "bottom(541)", done = false },
--[[-58,17]]   { map = "160785", fight = true, path = "bottom(542)", done = false },
--[[-58,18]]   { map = "160786", fight = true, path = "bottom(541)", done = false },
--[[-58,19]]   { map = "160787", fight = true, path = "bottom", done = false },
--[[-58,20]]   { map = "160788", fight = true, path = "bottom(555)", done = false },
--[[-58,21]]   { map = "160789", fight = true, path = "bottom(555)", done = false },
--[[-58,22]]   { map = "160790", fight = true, path = "bottom(541)", done = false },
--[[-58,23]]   { map = "160791", fight = true, path = "right(307)", done = false },
--[[-57,23]]   { map = "160279", fight = true, path = "bottom(555)", done = false },
--[[-57,24]]   { map = "160280", fight = true, path = "right(209)", done = false },
--[[-56,24]]   { map = "159768", fight = true, path = "right(279)", done = false },
--[[-55,24]]   { map = "159256", fight = true, path = "right(363)", done = false },
--[[-54,24]]   { map = "158744", fight = true, path = "right(307)", done = false },
--[[-53,24]]   { map = "158232", fight = true, path = "right(265)", done = false },
--[[-52,24]]   { map = "157720", fight = true, path = "right(167)", done = false },
--[[-51,24]]   { map = "157208", fight = true, path = "top(6)", done = false },
--[[-51,23]]   { map = "157207", fight = true, path = "right(265)", done = false },
--[[-50,23]]   { map = "156695", fight = true, path = "top(25)", done = false },
--[[-50,22]]   { map = "156694", fight = true, path = "right(461)", done = false },
--[[-49,22]]   { map = "156182", fight = true, path = "top(8)", done = false },
--[[-49,21]]   { map = "156181", fight = true, path = "top(11)", done = false },
--[[-49,20]]   { map = "156180", path = "right(419)", done = false },
--[[-48,20]]   { map = "155668", path = "top(7)", done = false },
--[[-48,19]]   { map = "155667", path = "right(279)", done = false },
--[[-47,19]]   { map = "155155", path = "right(279)", done = false },
--[[-46,19]]   { map = "154643", path = "top(22)", done = false },
  }
end
function leaveNaufrage()
  npc:npc(925,3)
  npc:reply(-1)
end
function porkass()

end

function saveZaapOtomai()
  map:saveZaap()
end

function saveZaap()
  map:saveZaap()
end

function module:frigost1()
  return {
            { map=map:currentMapId(), path="havenbag"},
                    { map="162791424", path="zaap(54172969)"},
  --[[-78,-40]]  { map = "54172968", fight = true, path = "bottom(538)", done = false },
	--[[-78,-39]]  { map = "54172967", fight = true, path = "right(139)", done = false },
	--[[-77,-39]]  { map = "54172455", fight = true, path = "right(279)", done = false },
	--[[-76,-39]]  { map = "54171943", fight = true, path = "right(293)", done = false },
	--[[-75,-39]]  { map = "54171431", fight = true, path = "right(391)", done = false },
	--[[-74,-39]]  { map = "54170919", fight = true, path = "right(419)", done = false },
	--[[-73,-39]]  { map = "54170407", fight = true, path = "right(419)", done = false },
	--[[-72,-39]]  { map = "54169895", fight = true, path = "top(19)", done = false },
	--[[-72,-40]]  { map = "54169896", fight = true, path = "left(434)", done = false },
	--[[-73,-40]]  { map = "54170408", fight = true, path = "left(364)", done = false },
	--[[-74,-40]]  { map = "54170920", fight = true, path = "left(448)", done = false },
	--[[-75,-40]]  { map = "54171432", fight = true, path = "left(378)", done = false },
	--[[-76,-40]]  { map = "54171944", fight = true, path = "left(322)", done = false },
	--[[-77,-40]]  { map = "54172456", fight = true, path = "top(7)", done = false },
	--[[-77,-41]]  { map = "54172457", fight = true, path = "left(532)", done = false },
	--[[-78,-41]]  { map = "54172969", custom = saveZaap,  fight = true, path = "left|top", done = false},
	--[[-79,-41]]  { map = "54173481", fight = true, path = "left(294)", done = false },
	--[[-80,-41]]  { map = "54173993", fight = true, path = "left(252)", done = false },
	--[[-81,-41]]  { map = "54174505", fight = true, path = "left(252)", done = false },
	--[[-82,-41]]  { map = "54175017", fight = true, path = "left(308)", done = false },
	--[[-83,-41]]  { map = "54175529", fight = true, path = "left(112)", done = false },
	--[[-84,-41]]  { map = "54176041", fight = true, path = "left(280)", done = false },
	--[[-85,-41]]  { map = "54176553", fight = true, path = "top(6)", done = false },
	--[[-85,-42]]  { map = "54176554", fight = true, path = "right(363)", done = false },
	--[[-84,-42]]  { map = "54176042", fight = true, path = "right(391)", done = false },
	--[[-83,-42]]  { map = "54175530", fight = true, path = "right(307)", done = false },
	--[[-82,-42]]  { map = "54175018", fight = true, path = "right(265)", done = false },
	--[[-81,-42]]  { map = "54174506", fight = true, path = "right(349)", done = false },
	--[[-80,-42]]  { map = "54173994", fight = true, path = "right(349)", done = false },
	--[[-79,-42]]  { map = "54173482", fight = true, path = "right(321)", done = false },
	--[[-78,-42]]  { map = "54172970", fight = true, path = "right(377)", done = false },
	--[[-77,-42]]  { map = "54172458", fight = true, path = "top(4)", done = false },
	--[[-77,-43]]  { map = "54172459", fight = true, path = "left(434)", done = false },
	--[[-78,-43]]  { map = "54172971", fight = true, path = "left(378)", done = false },
	--[[-79,-43]]  { map = "54173483", fight = true, path = "left(308)", done = false },
	--[[-80,-43]]  { map = "54173995", fight = true, path = "left(224)", done = false },
	--[[-81,-43]]  { map = "54174507", fight = true, path = "left(280)", done = false },
	--[[-82,-43]]  { map = "54175019", fight = true, path = "left(280)", done = false },
	--[[-83,-43]]  { map = "54175531", fight = true, path = "left(322)", done = false },
	--[[-84,-43]]  { map = "54176043", fight = true, path = "left(294)", done = false },
	--[[-85,-43]]  { map = "54176555", fight = true, path = "top(10)", done = false },
	--[[-85,-44]]  { map = "54176556", fight = true, path = "right(391)", done = false },
	--[[-84,-44]]  { map = "54176044", fight = true, path = "right(363)", done = false },
	--[[-83,-44]]  { map = "54175532", fight = true, path = "right(405)", done = false },
	--[[-82,-44]]  { map = "54175020", fight = true, path = "right(335)", done = false },
	--[[-81,-44]]  { map = "54174508", fight = true, path = "right(321)", done = false },
	--[[-80,-44]]  { map = "54173996", fight = true, path = "right(349)", done = false },
	--[[-79,-44]]  { map = "54173484", fight = true, path = "right(363)", done = false },
	--[[-78,-44]]  { map = "54172972", fight = true, path = "right(391)", done = false },
	--[[-77,-44]]  { map = "54172460", fight = true, path = "right(475)", done = false },
	--[[-76,-44]]  { map = "54171948", fight = true, path = "right(195)", done = false },
	--[[-75,-44]]  { map = "54171436", fight = true, path = "right(377)", done = false },
	--[[-74,-44]]  { map = "54170924", fight = true, path = "bottom(539)", done = false },
	--[[-74,-43]]  { map = "54170923", fight = true, path = "right(237)", done = false },
	--[[-73,-43]]  { map = "54170411", fight = true, path = "bottom(553)", done = false },
	--[[-73,-42]]  { map = "54170410", fight = true, path = "bottom(552)", done = false },
	--[[-73,-41]]  { map = "54170409", fight = true, path = "right(321)", done = false },
	--[[-72,-41]]  { map = "54169897", fight = true, path = "bottom(551)", done = false },
}
end

function module:gobvious()
  return {
  { map = map:currentMapId(), path = "havenbag", done = false },
  	--[[0,0]]      { map = "162791424", path = "zaap(88085249)", done = false },
  	--[[10,22]]    { map = "88085249",custom = saveZaap, path = "right", done = false },
  	--[[11,22]]    { map = "88085761", path = "top", done = false },
  	--[[11,21]]    { map = "88085762", path = "right", done = false },
  	--[[12,21]]    { map = "88086274", path = "top", done = false },
  	--[[12,20]]    { map = "88086275", path = "right", done = false },
  	--[[13,20]]    { map = "88086787", path = "top", done = false },
  	--[[13,19]]    { map = "88086788", path = "top", done = false },
  	--[[13,18]]    { map = "88086789", path = "top", done = false },
  	--[[13,17]]    { map = "88086790", path = "top", done = false },
  	--[[13,16]]    { map = "88086791", path = "top", done = false },
  	--[[13,15]]    { map = "88086792", path = "top", done = false },
  	--[[13,14]]    { map = "88086793", path = "right", done = false },
  	--[[14,14]]    { map = "88087305", door = "403", done = false },
  	--[[15,14]]    { map = "117440512", door = "222", done = false },
  	--[[16,13]]    { map = "117441536", door = "167", done = false },
  	--[[16,12]]    { map = "117442560", door = "488", done = false },
  	--[[17,12]]    { map = "117443584", door = "221", done = false },
  	--[[18,11]]    { map = "117440514", door = "293", done = false },
  	--[[18,10]]    { map = "117441538", door = "251", done = false },
  	--[[18,9]]     { map = "117442562", door = "262", done = false },
  	--[[19,8]]     { map = "117443586", door = "329", done = false },
  	--[[20,8]]     { map = "117444610", door = "303", done = false },
  	--[[20,8]]     { map = "118096384", fight = true, path = "right", done = false },
  	--[[21,8]]     { map = "117964800", fight = true, path = "right|left", done = false },
  	--[[22,8]]     { map = "117965312", fight = true, path = "top", done = false },
  	--[[22,7]]     { map = "117965569", fight = true, path = "top", done = false },
  	--[[22,6]]     { map = "117965570", fight = true, path = "left", done = false },
  	--[[21,6]]     { map = "117965058", fight = true, path = "bottom", done = false },
     { map = "117965057", fight = true, path = "bottom", done = false },

  }
end

function module:ouassingueAstrub()
  return {
      { map=map:currentMapId(), path="havenbag"},
      --[[0,0]]      { map = "162791424", path = "zaap(185860609)", done = false },
--[[-5,-8]]    { map = "185860609", path = "right(181)", done = false },
--[[-4,-8]]    { map = "190972422", fight = true, path = "top(5)", done = false },
--[[-4,-9]]    { map = "190972421", fight = true, path = "right(391)", done = false },
--[[-3,-9]]    { map = "190840837", fight = true, path = "top(4)", done = false },
--[[-3,-10]]   { map = "190840836", fight = true, path = "top(5)", done = false },
--[[-3,-11]]   { map = "190840835", fight = true, path = "top(20)", done = false },
--[[-3,-12]]   { map = "190840834", fight = true, path = "top(8)", done = false },
--[[-3,-13]]   { map = "190840833", fight = true, path = "top(8)", done = false },
--[[-3,-14]]   { map = "190840832", fight = true, path = "right(419)", done = false },
--[[-2,-14]]   { map = "190841344", fight = true, path = "bottom(552)", done = false },
--[[-2,-13]]   { map = "190841345", fight = true, path = "bottom(553)", done = false },
--[[-2,-12]]   { map = "190841346", fight = true, path = "bottom(539)", done = false },
--[[-2,-11]]   { map = "190841347", fight = true, path = "bottom(539)", done = false },
--[[-2,-9]]    { map = "190841349", fight = true, path = "top(9)", done = false },
--[[-2,-10]]   { map = "190841348", fight = true, path = "right(419)", done = false },
--[[-1,-10]]   { map = "190841860", fight = true, path = "top(18)", done = false },
--[[-1,-11]]   { map = "190841859", fight = true, path = "top(19)", done = false },
--[[-1,-12]]   { map = "190841858", fight = true, path = "top(8)", done = false },
--[[-1,-13]]   { map = "190841857", fight = true, path = "top(7)", done = false },
--[[-1,-14]]   { map = "190841856", fight = true, path = "right(293)", done = false },
--[[0,-14]]    { map = "190842368", fight = true, path = "bottom(552)", done = false },
--[[0,-13]]    { map = "190842369", fight = true, gather = true, path = "bottom(553)", done = false },
--[[0,-12]]    { map = "190842370", fight = true, path = "bottom(538)", done = false },
--[[0,-11]]    { map = "190842371", fight = true, path = "bottom(539)", done = false },
--[[0,-10]]    { map = "190842372", fight = true, path = "bottom(552)", done = false },
--[[0,-9]]     { map = "190842373", fight = true, path = "right(195)", done = false },
--[[1,-9]]     { map = "190842885", fight = true, path = "top(7)", done = false },
--[[1,-10]]    { map = "190842884", fight = true, path = "top(8)", done = false },
--[[1,-11]]    { map = "190842883", fight = true, path = "top(8)", done = false },
--[[1,-12]]    { map = "190842882", fight = true, path = "top(7)", done = false },
--[[1,-13]]    { map = "190842881", fight = true, path = "top(19)", done = false },
--[[1,-14]]    { map = "190842880", fight = true, path = "top(5)", done = false },
  }
end

function module:bworkCania()
  return {
      { map=map:currentMapId(), path="havenbag"},
      { map = "162791424", path = "zaap(147590153)", done = false },
	--[[-17,-47]]  { map = "147590153", path = "bottom(541)", done = false },
	--[[-17,-46]]  { map = "147590154", path = "bottom(555)", done = false },
	--[[-17,-45]]  { map = "147590155", path = "right(391)", done = false },
	--[[-16,-45]]  { map = "147590667", path = "right(447)", done = false },
	--[[-15,-45]]  { map = "155975694", path = "bottom(541)", done = false },
	--[[-15,-44]]  { map = "139463681", fight = true, path = "left(350)", done = false },
	--[[-16,-44]]  { map = "139463169", fight = true, path = "left(336)", done = false },
	--[[-17,-44]]  { map = "139462657", fight = true, path = "left(350)", done = false },
	--[[-18,-44]]  { map = "139462145", fight = true, path = "left(336)", done = false },
	--[[-19,-44]]  { map = "139461633", fight = true, path = "left(336)", done = false },
	--[[-20,-44]]  { map = "139461121", fight = true, path = "bottom(539)", done = false },
	--[[-20,-43]]  { map = "139461122", fight = true, path = "right(167)", done = false },
	--[[-19,-43]]  { map = "139461634", fight = true, path = "right(251)", done = false },
	--[[-18,-43]]  { map = "139462146", fight = true, path = "right(223)", done = false },
	--[[-17,-43]]  { map = "139462658", path = "right(265)", done = false },
	--[[-16,-43]]  { map = "139463170", fight = true, path = "right(335)", done = false },
	--[[-15,-43]]  { map = "139463682", fight = true, path = "bottom(538)", done = false },
	--[[-15,-42]]  { map = "139463683", fight = true, path = "left(252)", done = false },
	--[[-16,-42]]  { map = "139463171", fight = true, path = "left(308)", done = false },
	--[[-17,-42]]  { map = "139462659", fight = true, path = "left(308)", done = false },
	--[[-18,-42]]  { map = "139462147", fight = true, path = "left(322)", done = false },
	--[[-19,-42]]  { map = "139461635", fight = true, path = "left(378)", done = false },
	--[[-20,-42]]  { map = "139461123", fight = true, path = "bottom(554)", done = false },
	--[[-20,-41]]  { map = "139461124", fight = true, path = "right(83)", done = false },
	--[[-19,-41]]  { map = "139461636", fight = true, path = "bottom(554)", done = false },
	--[[-19,-40]]  { map = "139461637", fight = true, path = "right(195)", done = false },
	--[[-18,-40]]  { map = "139462149", fight = true, path = "right(223)", done = false },
	--[[-17,-40]]  { map = "139462661", fight = true, path = "right(195)", done = false },
	--[[-16,-40]]  { map = "139463173", fight = true, path = "right(321)", done = false },
	--[[-15,-40]]  { map = "139463685", fight = true, path = "bottom(549)", done = false },
	--[[-15,-39]]  { map = "139463686", fight = true, path = "left(140)", done = false },
	--[[-16,-39]]  { map = "139463174", fight = true, path = "left(196)", done = false },
	--[[-17,-39]]  { map = "139462662", fight = true, path = "left(280)", done = false },
	--[[-18,-39]]  { map = "139462150", fight = true, path = "left(294)", done = false },
	--[[-19,-39]]  { map = "139461638", fight = true, path = "left(364)", done = false },
	--[[-20,-39]]  { map = "139461126", fight = true, path = "bottom(555)", done = false },
	--[[-20,-38]]  { map = "139461127", fight = true, path = "right(167)", done = false },
	--[[-19,-38]]  { map = "139461639", fight = true, path = "right(237)", done = false },
	--[[-18,-38]]  { map = "139462151", fight = true, path = "right(265)", done = false },
	--[[-17,-38]]  { map = "139462663", fight = true, path = "right(251)", done = false },
	--[[-16,-38]]  { map = "139463175", fight = true, path = "right(265)", done = false },
	--[[-15,-38]]  { map = "139463687", fight = true, path = "right(223)", done = false },
	--[[-14,-38]]  { map = "139464199", fight = true, path = "top(4)", done = false },
	--[[-14,-39]]  { map = "139464198", fight = true, path = "top(4)", done = false },
	--[[-14,-40]]  { map = "139464197", fight = true, path = "top(17)", done = false },
	--[[-14,-41]]  { map = "139464196", fight = true, path = "top(18)", done = false },
	--[[-14,-42]]  { map = "139464195", fight = true, path = "top(5)", done = false },
	--[[-14,-43]]  { map = "139464194", fight = true, path = "top(8)", done = false },
	--[[-14,-44]]  { map = "139464193", fight = true, path = "left(280)", done = false },
    }
end

function module:foretOtomai()
  return {
          { map=map:currentMapId(), path="havenbag"},
                { map = "162791424", path = "zaap(154642)", done = false },
          --[[-46,18]]   { map = "154642", path = "left(252)", done = false },
 --[[-47,18]]   { map = "155154", path = "bottom(553)", done = false },
 --[[-47,19]]   { map = "155155", path = "left(238)", done = false },
 --[[-48,19]]   { map = "155667", path = "left(308)", done = false },
 --[[-49,19]]   { map = "156179", path = "left(378)", done = false },
 --[[-50,19]]   { map = "156691", path = "bottom(543)", done = false },
 --[[-50,20]]   { map = "156692", path = "bottom(555)", done = false },
 --[[-50,21]]   { map = "156693", path = "left(182)", done = false },
 --[[-51,21]]   { map = "157205", path = "top(18)", done = false },
 --[[-51,20]]   { map = "63965696", fight = true, path = "left(476)", done = false },
 --[[-52,20]]   { map = "63965184", fight = true, path = "left(434)", done = false },
 --[[-53,20]]   { map = "63964672", path = "bottom(541)", done = false },
 --[[-53,21]]   { map = "63964673", fight = true, path = "left(84)", done = false },
 --[[-54,21]]   { map = "63964161", fight = true, path = "top(20)", done = false },
 --[[-54,20]]   { map = "63964160", fight = true, path = "left(434)", done = false },
 --[[-55,20]]   { map = "63963648", fight = true, path = "left(336)", done = false },
 --[[-56,20]]   { map = "63963136", fight = true, path = "top(11)", done = false },
 --[[-56,19]]   { map = "63963393", fight = true, path = "right(391)", done = false },
 --[[-55,19]]   { map = "63963905", fight = true, path = "right(391)", done = false },
 --[[-54,19]]   { map = "63964417", fight = true, path = "right(363)", done = false },
 --[[-53,19]]   { map = "63964929", fight = true, path = "right(391)", done = false },
 --[[-52,19]]   { map = "63965441", fight = true, path = "right(349)", done = false },
 --[[-51,19]]   { map = "63965953", fight = true, path = "top(17)", done = false },
 --[[-51,18]]   { map = "63965954", fight = true, path = "left(420)", done = false },
 --[[-52,18]]   { map = "63965442", fight = true, path = "left(392)", done = false },
 --[[-53,18]]   { map = "63964930", fight = true, path = "left(266)", done = false },
 --[[-54,18]]   { map = "63964418", fight = true, path = "left(196)", done = false },
 --[[-55,18]]   { map = "63963906", fight = true, path = "left(252)", done = false },
 --[[-56,18]]   { map = "63963394", fight = true, path = "top(24)", done = false },
 --[[-56,17]]   { map = "63963395", fight = true, path = "right(405)", done = false },
 --[[-55,17]]   { map = "63963907", fight = true, path = "top(16)", done = false },
 --[[-55,16]]   { map = "63963908", fight = true, path = "left(350)", done = false },
 --[[-56,16]]   { map = "63963396", fight = true, path = "top(10)", done = false },
 --[[-56,15]]   { map = "63963397", fight = true, path = "right(363)", done = false },
 --[[-55,15]]   { map = "63963909", fight = true, path = "top(3)", done = false },
 --[[-55,14]]   { map = "63963910", fight = true, path = "top(20)", done = false },
 --[[-55,13]]   { map = "63963911", fight = true, path = "top(20)", done = false },
 --[[-55,12]]   { map = "63963912", fight = true, path = "top(7)", done = false },
 --[[-55,11]]   { map = "63963913", fight = true, path = "top(22)", done = false },
 --[[-55,10]]   { map = "63963914", fight = true, path = "top(22)", done = false },
 --[[-55,9]]    { map = "63963915", fight = true, path = "right(433)", done = false },
 --[[-54,9]]    { map = "63964427", fight = true, path = "bottom(548)", done = false },
 --[[-54,10]]   { map = "63964426", fight = true, path = "bottom(549)", done = false },
 --[[-54,11]]   { map = "63964425", fight = true, path = "bottom(551)", done = false },
 --[[-54,12]]   { map = "63964424", fight = true, path = "bottom(552)", done = false },
 --[[-54,13]]   { map = "63964423", fight = true, path = "bottom(540)", done = false },
 --[[-54,14]]   { map = "63964422", fight = true, gather = true, path = "right(153)", done = false },
 --[[-53,14]]   { map = "63964934", fight = true, path = "top(9)", done = false },
 --[[-53,13]]   { map = "63964935", fight = true, path = "top(5)", done = false },
 --[[-53,12]]   { map = "63964936", fight = true, path = "top(11)", done = false },
 --[[-53,11]]   { map = "63964937", fight = true, path = "top(12)", done = false },
 --[[-53,10]]   { map = "63964938", fight = true, path = "right(433)", done = false },
 --[[-52,10]]   { map = "63965450", fight = true, path = "bottom(538)", done = false },
 --[[-52,11]]   { map = "63965449", fight = true, path = "bottom(553)", done = false },
 --[[-52,12]]   { map = "63965448", fight = true, path = "right(293)", done = false },
 --[[-51,12]]   { map = "63965960", fight = true, path = "bottom(552)", done = false },
 --[[-51,13]]   { map = "63965959", fight = true, path = "bottom(539)", done = false },
 --[[-51,14]]   { map = "63965958", fight = true, path = "bottom(553)", done = false },
 --[[-51,15]]   { map = "63965957", fight = true, path = "bottom(553)", done = false },
 --[[-51,16]]   { map = "63965956", fight = true, path = "bottom(554)", done = false },
 --[[-51,17]]   { map = "63965955", fight = true, path = "bottom(554)", done = false },
        }
end

function module:foretPinPerdu()
  return {
          { map=map:currentMapId(), path="havenbag"},
    --[[0,0]]      { map = "162791424", path = "zaap(54172969)", done = false },
--[[-78,-41]]  { map = "54172969", custom=saveZaap, path = "top", done = false },
--[[-78,-42]]  { map = "54172970", path = "top", done = false },
--[[-78,-43]]  { map = "54172971", path = "top", done = false },
--[[-78,-44]]  { map = "54172972", path = "top", done = false },
--[[-78,-45]]  { map = "54172973", path = "right", done = false },
--[[-77,-45]]  { map = "54172461", path = "top", done = false },
--[[-77,-46]]  { map = "54172462", path = "right", done = false },
--[[-76,-46]]  { map = "54171950", path = "top", done = false },
--[[-76,-47]]  { map = "54171951", path = "top", done = false },
--[[-76,-48]]  { map = "54171952", path = "top", done = false },
--[[-76,-49]]  { map = "54171953", fight = true, path = "right", done = false },
--[[-75,-49]]  { map = "54171441", fight = true, path = "right", done = false },
--[[-74,-49]]  { map = "54170929", fight = true, path = "top", done = false },
--[[-74,-50]]  { map = "54170930", fight = true, path = "top", done = false },
--[[-74,-51]]  { map = "54170931", fight = true, path = "top", done = false },
--[[-74,-52]]  { map = "54170932", fight = true, path = "top", done = false },
--[[-74,-53]]  { map = "54170933", fight = true, path = "right", done = false },
--[[-73,-53]]  { map = "54170421", fight = true, path = "right", done = false },
--[[-72,-53]]  { map = "54169909", fight = true, path = "right", done = false },
--[[-71,-53]]  { map = "54169397", fight = true, path = "top", done = false },
--[[-71,-54]]  { map = "54169398", fight = true, path = "right", done = false },
--[[-70,-54]]  { map = "54168886", fight = true, path = "right", done = false },
--[[-69,-54]]  { map = "54168374", fight = true, path = "top", done = false },
--[[-69,-55]]  { map = "54168375", fight = true, path = "top", done = false },
--[[-69,-56]]  { map = "54168376", fight = true, path = "right", done = false },
--[[-68,-56]]  { map = "54167864", fight = true, path = "top", done = false },
--[[-68,-57]]  { map = "54167865", fight = true, path = "top", done = false },
--[[-68,-58]]  { map = "54167866", fight = true, path = "right", done = false },
--[[-67,-58]]  { map = "54167354", fight = true, path = "right", done = false },
--[[-66,-58]]  { map = "54166842", fight = true, path = "right", done = false },
--[[-65,-58]]  { map = "54166330", fight = true, path = "top", done = false },
--[[-65,-59]]  { map = "54166331", fight = true, path = "right", done = false },
--[[-64,-59]]  { map = "54165819", fight = true, path = "top", done = false },
--[[-64,-60]]  { map = "54165820", fight = true, path = "top", done = false },
--[[-64,-61]]  { map = "54165821", fight = true, path = "top", done = false },
--[[-64,-62]]  { map = "54165822", fight = true, path = "right", done = false },
--[[-63,-62]]  { map = "54165310", fight = true, path = "right", done = false },
--[[-62,-62]]  { map = "54164798", fight = true, path = "right", done = false },
--[[-61,-62]]  { map = "54164286", fight = true, path = "right", done = false },
--[[-60,-62]]  { map = "54163774", fight = true, path = "right", done = false },
--[[-59,-62]]  { map = "54163262", fight = true, path = "right", done = false },
--[[-58,-62]]  { map = "54162750", fight = true, path = "right", done = false },
--[[-57,-62]]  { map = "54162238", fight = true, path = "right", done = false },
--[[-56,-62]]  { map = "54161726", fight = true, path = "right", done = false },
--[[-55,-62]]  { map = "54161214", fight = true, path = "right", done = false },
--[[-54,-62]]  { map = "54160702", fight = true, path = "right", done = false },
--[[-53,-62]]  { map = "54160190", fight = true, path = "top", done = false },
--[[-53,-63]]  { map = "54160191", fight = true, path = "left", done = false },
--[[-54,-63]]  { map = "54160703", fight = true, path = "left", done = false },
--[[-55,-63]]  { map = "54161215", fight = true, path = "left", done = false },
--[[-56,-63]]  { map = "54161727", fight = true, path = "left", done = false },
--[[-57,-63]]  { map = "54162239", fight = true, path = "left", done = false },
--[[-58,-63]]  { map = "54162751", fight = true, path = "left", done = false },
--[[-59,-63]]  { map = "54163263", fight = true, path = "left", done = false },
--[[-60,-63]]  { map = "54163775", fight = true, path = "left", done = false },
--[[-61,-63]]  { map = "54164287", fight = true, path = "left", done = false },
--[[-62,-63]]  { map = "54164799", fight = true, path = "left", done = false },
--[[-63,-63]]  { map = "54165311", fight = true, path = "left", done = false },
--[[-64,-63]]  { map = "54165823", fight = true, path = "left", done = false },
--[[-65,-63]]  { map = "54166335", fight = true, path = "bottom", done = false },
--[[-65,-62]]  { map = "54166334", fight = true, path = "right", done = false },
}
end

function module:porkass()
return {
            { map=map:currentMapId(), path="havenbag"},
  --[[0,0]]      { map = "162791424", path = "zaap(84806401)", done = false },
	--[[-5,-23]]   { map = "84806401", fight = true, gather = true, path = "top", done = false },
	--[[-5,-24]]   { map = "84806402", fight = true, gather = true, path = "top", done = false },
	--[[-5,-25]]   { map = "84806403", fight = true, gather = true, path = "top", done = false },
	--[[-5,-26]]   { map = "84806404", fight = true, gather = true, path = "top", done = false },
	--[[-5,-27]]   { map = "84806405", fight = true, gather = true, path = "right", done = false },
	--[[-4,-27]]   { map = "84805893", fight = true, gather = true, path = "top", done = false },
	--[[-4,-28]]   { map = "84805894", fight = true, gather = true, path = "top", done = false },
	--[[-4,-29]]   { map = "126091776", fight = true, gather = true, path = "top", done = false },
	--[[-4,-30]]   { map = "126092033", fight = true, gather = true, path = "top", done = false },
	--[[-4,-31]]   { map = "126092034", fight = true, gather = true, path = "top", done = false },
	--[[-4,-32]]   { map = "126092035", fight = true, gather = true, path = "top", done = false },
	--[[-4,-33]]   { map = "126092036", fight = true, gather = true, path = "right", done = false },
	--[[-3,-33]]   { map = "126092548", fight = true, gather = true, path = "top", done = false },
	--[[-3,-34]]   { map = "126092549", fight = true, gather = true, path = "top", done = false },
	--[[-3,-35]]   { map = "126092550", fight = true, gather = true, path = "top", done = false },
	--[[-3,-36]]   { map = "126092551", fight = true, gather = true, path = "right", done = false },
	--[[-2,-36]]   { map = "126093063", fight = true, gather = true, path = "bottom", done = false },
	--[[-2,-35]]   { map = "126093062", fight = true, gather = true, path = "right", done = false },
	--[[-1,-35]]   { map = "126093574", fight = true, gather = true, path = "right", done = false },
	--[[0,-35]]    { map = "126094086", fight = true, gather = true, path = "right", done = false },
	--[[1,-35]]    { map = "126094598", fight = true, gather = true, path = "top", done = false },
	--[[1,-36]]    { map = "126094599", fight = true, gather = true, path = "top", done = false },
	--[[1,-37]]    { map = "126094600", fight = true, gather = true, path = "left", done = false },
	--[[0,-37]]    { map = "126094088", fight = true, gather = true, path = "left", done = false },
	--[[-1,-37]]   { map = "126093576", fight = true, gather = true, path = "left", done = false },
	--[[-2,-37]]   { map = "126093064", fight = true, gather = true, path = "left", done = false },
	--[[-3,-37]]   { map = "126092552", fight = true, gather = true, path = "left", done = false },
	--[[-4,-37]]   { map = "126092040", fight = true, gather = true, path = "bottom", done = false },
	--[[-4,-36]]   { map = "126092039", fight = true, gather = true, path = "bottom", done = false },
	--[[-4,-35]]   { map = "126092038", fight = true, gather = true, path = "bottom", done = false },
                 { map = "4,-34", fight = true, gather = true, path = "bottom", done = false },
}
end

function module:piouSufokia()
  return{
    { map=map:currentMapId(), path="havenbag"},
    { map="162791424", path="zaap(95422468)"},
    { map = "13,26", path = "left", fight=true},
    { map = "12,26", path = "bottom", fight=true},
      { map = "12,27", path = "left", fight=true},
      { map = "11,27", path = "top", fight=true},
        { map = "11,26", path = "left", fight=true},
        { map = "10,26", path = "top", fight=true},
          { map = "10,25", path = "left", fight=true},
          { map = "9,25", path = "top", fight=true},
          { map = "9,24", path = "right", fight=true},
          { map = "10,24", path = "right", fight=true},
          { map = "11,24", path = "bottom", fight=true},
            { map = "11,25", path = "right", fight=true},
            { map = "12,25", path = "right", fight=true},
            { map = "13,25", path = "bottom", fight=true},
  }
end

function module:ratAmakna()
  return {
                  { map=map:currentMapId(), path="havenbag"},
  --[[0,0]]      { map = "162791424", path = "zaap(68419587)", done = false },
	--[[7,-4]]     { map = "68419587", door = "183", done = false },
	--[[7,-5]]     { map = "101715481", fight = true, path = "234", done = false },
	--[[7,-6]]     { map = "101715479", fight = true, path = "227", done = false },
	--[[7,-7]]     { map = "101715477", fight = true, path = "156", done = false },
	--[[6,-8]]     { map = "101715475", fight = true, path = "219", done = false },
	--[[6,-10]]    { map = "101715473", fight = true, path = "144", done = false },
	--[[6,-11]]    { map = "101715471", fight = true, path = "421", done = false },
	--[[5,-11]]    { map = "101714447", fight = true, path = "310", done = false },
	--[[4,-11]]    { map = "101713423", fight = true, path = "188", done = false },
	--[[4,-12]]    { map = "101713421", fight = true, path = "38", done = false },
	--[[4,-13]]    { map = "101713419", fight = true, path = "446", done = false },
	--[[5,-13]]    { map = "101714443", fight = true, path = "264", done = false },
  }
end

return module

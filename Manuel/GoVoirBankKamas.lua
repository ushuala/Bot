function move()
  return  {
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
  { map ="192416776", path="bottom"},
    { map ="191106048", path="bottom"},
        { map ="191106050", path="left"},
        { map ="191105026", path="bottom"},

  }
end

function pnjastrub()
  global:printSuccess("Go astrub")
	global:delay(1000)
	npc:npc(4398,3)
	global:delay(1000)
	npc:reply(-1)
	global:delay(1000)
	npc:reply(-1)
end

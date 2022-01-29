global:printMessage("Salut je suis au début")

MIN_MONSTERS = 1
MAX_MONSTERS = 4

function move()
  return{
    { map = "5,-17", path = "bottom", fight = true },
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
end

function move()
    return{
      { map = map:currentMapId(), path = "havenbag"},
      { map = "162791424", path = "zaap(164364304)"},
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
      { map = "-20,-20", path = "bottom" },
      { map = "-20,-19", path = "bottom" },
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
        { map = "-79,-41", custom = "right"},
      { map = "-78,-41", custom = stopScript},
  }
end

function stopScript()
  map:changeMap("right")
  global:disconnect()
end

function frigost_1()
    npc:npc(1236,3)
    npc:reply(-1)
    global:delay(1000)
      npc:reply(-1)
end

function frigost_2()
    npc:npc(1236,3)
    npc:reply(-1)
    global:delay(1000)
      npc:reply(-1)
      global:delay(1000)
        npc:reply(-1)
end

function frigost_3()
    npc:npc(1236,3)
    npc:reply(-1)
    global:delay(1000)
    npc:reply(-1)
end

function frigost_4()
    npc:npc(1236,3)
    npc:reply(-1)
    global:delay(1000)
    npc:reply(-1)
    global:delay(1000)
    npc:reply(-1)
end

function frigost_5()
    npc:npc(1236,3)
    global:leaveDialog()
    map:changeMap("right(83)")
end

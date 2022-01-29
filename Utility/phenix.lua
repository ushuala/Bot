modulePhenix = {}

function modulePhenix:phenix()
  return {
    { map ="91753991",door=387, path="havenbag" , custom = equipddSufokia}, --sufokia
    { map = "23330816", path = "bottom", done = false }, -- debut otomai
    { map = "159769", path = "left", done = false },
    { map = "160281", path = "top", done = false },
    { map = "160280", path = "top", done = false },
    { map = "160279", path = "left", done = false },
    { map = "160791", path = "top", done = false },
    { map = "160790", path = "top", done = false },
    { map = "160789", path = "top", done = false },
    { map = "160788", path = "top", done = false },
    { map = "160787", path = "top", done = false },
    { map = "160786", path="havenbag", custom = equipddOtomai}, -- fin otomai
    { map = "153088", custom = equipdd}, -- plage otomai
    { map = "54167851", path = "top" }, -- debut frifri
    { map = "54167852", path = "right" },
    { map = "54167340",custom = equipddFrigost },-- fin frifri
    { map = "128058886", path = "left" },--cania
    { map = "128059398", custom= equipddCania },
    { map = "190843392", custom= equipddAstrub },--fin can
{ map = "190841857", path = "right" },
{ map = "190842881", path = "right" },
    { map = "190840833", path = "right" },
    { map = "190841345", path = "right" },
    { map = "190842369", path = "right" },
    { map = "190843393", path = "top" },
  }
end

function equipddAstrub()
  map:door(313)
  global:delay(3000)
  if inventory:itemCount(14833)>0 and character:level() > 60 then
    inventory:equipItem(14833,8)
    global:printMessage("J'équipe le Siroko")
  end
  map:changeMap("havenbag")
end
function equipddOtomai()
  map:door(354)
  global:delay(3000)
  if inventory:itemCount(14833)>0 and character:level() > 60 then
    inventory:equipItem(14833,8)
    global:printMessage("J'équipe le Siroko")
  end
  map:changeMap("havenbag")
end
function equipddCania()
  map:door(342)
  global:delay(3000)
  if inventory:itemCount(14833)>0 and character:level() > 60 then
    inventory:equipItem(14833,8)
    global:printMessage("J'équipe le Siroko")
  end
  map:changeMap("havenbag")
end
function equipdd()
  map:door(259)
  global:delay(3000)
  if inventory:itemCount(14833)>0 and character:level() > 60 then
    inventory:equipItem(14833,8)
    global:printMessage("J'équipe le Siroko")
  end
  map:changeMap("bottom")
end
function equipddFrigost()
  map:door(219)
  global:delay(3000)
  if inventory:itemCount(14833)>0 and character:level() > 60 then
    inventory:equipItem(14833,8)
    global:printMessage("J'équipe le Siroko")
  end
  map:changeMap("havenbag")
end
function equipddSufokia()
  map:door(387)
  global:delay(3000)
  if inventory:itemCount(14833)>0 and character:level() > 60 then
    inventory:equipItem(14833,8)
    global:printMessage("J'équipe le Siroko")
  end
  map:changeMap("havenbag")
end

return modulePhenix

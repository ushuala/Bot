function move()
  return {
    {map = map:currentMapId(), path="havenbag"},
    {map = "-78,-41", path="left"},
  }
end

function bank()
  return move()
end

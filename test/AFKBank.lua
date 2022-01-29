horaires = {1,7,13,19}
doLoad = true
local function has_value (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end
    return false
end

function move()
  if has_value(horaires,tonumber(os.date("%H"))) then
    doLoad = false
    global:loadAndStart(path)
  else
    doLoad = true
  end
end

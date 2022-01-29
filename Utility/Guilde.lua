module = {}

offset = 0
haveGuild = false
function module:checkGuilde(message)
  guildName = ""
  found = false
  if character:level()>=20 and not haveGuild then
    for _, actor in ipairs(message.actors) do
      if actor.name== character:name() then
        found = true
        for _, option in ipairs(actor.humanoidInfo.optionns) do
          if developer:typeOf(option) == "HumanOptionGuild" then
            guildName = option.guildInformations.guildName
            haveGuild = true
          end
        end
        break
      end
    end
    if haveGuild then
      global:printMessage("On a une guilde : "..guildName..".")
    elseif found then 
      global:printMessage("On n'a pas de guilde !")
      getGuildes(offset)
    end
  end
end

function getGuildes(offset)
  global:delay(1000)
  global:printMessage("Récupération de toutes les guildes...")
  getPlayerApplication = developer:createMessage("GuildGetPlayerApplicationMessage")
  developer:sendMessage(getPlayerApplication)
  summaryRequest = developer:createMessage("GuildSummaryRequestMessage")
  summaryRequest.nameFilter = ""
  summaryRequest.hideFullFilter = false
  summaryRequest.criterionFilter = {}
  summaryRequest.languagesFilter = {}
  summaryRequest.recruitmentTypeFilter = {1}
  summaryRequest.minLevelFilter = 1
  summaryRequest.maxLevelFilter = 200
  summaryRequest.minPlayerLevelFilter = 1
  summaryRequest.maxPlayerLevelFilter = character:level()
  summaryRequest.minSuccessFilter = 0
  summaryRequest.maxSuccessFilter = 21219
  summaryRequest.sortType = 2
  summaryRequest.sortDescending = true
  summaryRequest.offset = offset
  summaryRequest.count = 40
  developer:sendMessage(summaryRequest)
  global:printSuccess("Guildes récupérées!")
end

function module:joinGuilde(message)
  global:printMessage("Analyse des guildes...")
  guildPossible = {}
  for _, guild in ipairs(message.guilds) do
    if guild.recruitment.recruitmentAutoLocked  and guild.recruitment.minLevel < character:level() and guild.recruitment.minSuccess == 0 then
      table.insert(guildPossible, guild)
    end
  end
  global:printSuccess("Fin de l'analyse des guildes, affichage de celles intéressantes...")
  nbGuilds = 0
  for _, v in ipairs(guildPossible) do
    global:printMessage("Guilde : "..v.guildName.." "..v.guildId)
    nbGuilds = nbGuilds +1
  end
  if nbGuilds == 0 then
    offset = offset + 1
    global:printError("Impossible de trouver de guilde, je recherche à l'offset "..offset)
    getGuildes(offset)
  else
    global:delay(3000)
    indexJoinGuild = global:random(1,nbGuilds)
    joinGuild = developer:createMessage("GuildJoinAutomaticallyRequestMessage")
    joinGuild.guildId = guildPossible[indexJoinGuild].guildId
    developer:sendMessage(joinGuild)
    global:printSuccess("J'ai rejoins la guilde "..guildPossible[indexJoinGuild].guildName)
    global:reconnect(0)
  end
end


return module

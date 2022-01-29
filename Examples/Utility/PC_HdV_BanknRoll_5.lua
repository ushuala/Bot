-----------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------
--------------------------------  TRAJET DÉCHIFRÉ AVEC NoTrade --------------------------------------
------------------------ CREATED BY Pharwell (Discord : Pharwell#2714) ------------------------------
-------------------- NoTrade DISCORD SERVER: https://discord.gg/EYJXKVryNm --------------------------
---- https://forum.cheat-gam3.com/threads/notrade-v1-1-cest-fini-le-monopole-des-trajets.207876/ ----
-----------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------

-------------------------------------------------------------
--        LE PARTAGE DE TRAJETS PAYANTS EST INTERDIT.      --
--              Script réalisé par @Lucide#6139            --
-------------------------------------------------------------
--                       BANK'N'ROLL                       --
-------------------------------------------------------------
--    Ajoute ici les IDs des ressources à ne pas vendre.   --
--    Add here IDs of the items you don't want to sell.    --
--
local blackList = {}
-------------------------------------------------------------

bank, market, welT = true, false, true
local function b(blackList, c)
    for d, e in pairs(blackList) do
        if e == c then
            return true
        end
    end
    return false
end
function sellInMarket()
    global:printSuccess("Ouverture de l'Hôtel de Vente...")
    npc:npc(515275, 5)
    for d = 44, 21185 do
        if inventory:itemCount(d) > 99 and inventory:itemWeight(d) > 0 then
            if sale:availableSpace() < 1 then
                global:printSuccess("Mon Hôtel de Vente des Ressources est plein.")
                global:printSuccess("Je vais patienter 30 minutes le temps que mon Hôtel de Vente se vide.")
                global:delay(1800000)
            end
            if b(blackList, d) then
                global:printSuccess(
                    "L'objet ayant pour ID " .. blackList[d] .. " est ignoré car présent dans la blacklist."
                )
                d = d + 1
            else
                if inventory:itemCount(d) > 99 then
                    itemPrice = sale:getPriceItem(d, 3)
                    if itemPrice > 0 then
                        global:printSuccess(d)
                        while inventory:itemCount(d) > 99 and sale:availableSpace() > 0 do
                            global:printSuccess("Mise en vente de l'Object_ID_" .. d .. " par lot de 100.")
                            sale:sellItem(d, 100, itemPrice - 1)
                        end
                    end
                end
            end
        end
    end
    global:printSuccess("Je procède à l'alignement des prix...")
    global:printSuccess("Merci de bien vouloir patienter, cette opération peut durer quelques minutes.")
    sale:updateAllItems()
    global:printSuccess("Alignement des prix terminé.")
    global:delay(300)
    global:leaveDialog()
    global:printSuccess("Fermeture de l'Hôtel de Vente...")
    global:delay(300)
    global:printSuccess("Retour vers la banque de Brâkmar...")
    market, bank = bank, market
end
function move()
    if market then
        return {
            {map = "8912911", path = "424"},
            {map = "144931", path = "zaapi(142376)"},
            {map = "142376", custom = sellInMarket, path = "zaapi(144931)"}
        }
    elseif bank then
        return {
            {map = "142376", path = "zaapi(144931)"},
            {map = "144931", door = "175"},
            {map = "8912911", custom = npcBank, path = "424"},
            {map = "162791424", path = "zaapi(144931)"}
        }
    end
end
function npcBank()
    npc:npcBank(-1)
    exchange:getKamas(0)
    exchange:putAllItems()
    for d = 44, 21185 do
        if inventory:podsP() > 95 then
            global:printSuccess("Mon inventaire est plein.")
            break
        elseif exchange:storageItemQuantity(d) > 100 and not b(blackList, d) then
            qtt = exchange:storageItemQuantity(d)
            while exchange:storageItemQuantity(d) > 99 and
                inventory:podsMax() - inventory:pods() > inventory:itemWeight(d) * 100 do
                global:printSuccess("Je récupère 100x Object_ID_" .. d .. "...")
                exchange:getItem(d, 100)
            end
        end
    end
    global:leaveDialog()
    market, bank = bank, market
end

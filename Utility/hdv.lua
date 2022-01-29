
-- SCRIPT PAR ILM#4914
-- DEPART HDV RESSOURCES BONTA OU BANQUE
-- POD 101%
module = {}

Item_selling = {} -- id = id objet, sale = nbr sale en hdv, price_save = évite de descendre en dessous de son propre prix
black_list = {679,287} -- id item a ne pas vendre


Quantite_max_same_item = 8 -- quantite du meme item max en hdv
coef_prix_mini = 0.15 -- coef par rapport au prix moyen hdv (pas en dessous de 0.7 ou 0.6 svp)
b_take = true
int_take = -1 -- ne pas modif
b_already_in_table = false -- ne pas modif
time_pause = 0.5 -- une fois l'hdv vidé, intervalle de pause entre chaque actualisation de prix

isFullPod = false
needReset = false

function mille(v)
	local s = string.format("%d", math.floor(v))
	local pos = string.len(s) % 3
	if pos == 0 then pos = 3 end
	return string.sub(s, 1, pos) .. string.gsub(string.sub(s, pos+1), "(...)", ".%1")
end


function go_sleep()
	global:printMessage("p'tite pause et on r'commence.")
	global:delay(time_pause * 60000)
end

function print_table()
	global:printError("------------------------  RECAP HDV ---------------------------")
	for _, v in ipairs(Item_selling) do
		global:printMessage(inventory:itemNameId(v.id) .. ", total vente : " .. v.sale)
	end
	global:printError("---------------------------------------------------------------")
end

function check_hdv()
	npc:npc(568, 5)
	for i = 1, sale:ItemsOnSale() do
		b_already_in_table = false
	--	global:printMessage(inventory:itemNameId(sale:GetItemGID(i)))
		if sale:GetItemQuantity(i) == 100 then
			for _, v in ipairs(Item_selling) do
				if v.id == sale:GetItemGID(i) then
					v.sale = v.sale + 1
			--		global:printMessage(inventory:itemNameId(v.id) .. ", + 1 vente, total : " .. v.sale)
					b_already_in_table = true
				end
			end
			if not b_already_in_table then
				table.insert(Item_selling, {id = sale:GetItemGID(i), sale = 1, price_save = 0})
		--		global:printMessage(inventory:itemNameId(sale:GetItemGID(i)) .. ", + 1 vente, total : 1")
			end
		end
	end
	global:leaveDialog()
	print_table()
	b_goBANK = true
	b_begin = false
	map:changeMap("top")
end


function get_pod()
	a = inventory:podsMax() - inventory:pods() -11
	return a
end

index_banque = 1
on_do_break = false
b_bl = false

function take_item()
	global:delay(500)
	npc:npcBank(-1)
	global:delay(500)
	exchange:putAllItems()
	global:delay(500)
	exchange:getKamas(0)
	for g = index_banque, 20000 do
		if exchange:storageItemQuantity(g) > 99 then
			b_bl = false
			global:printMessage(inventory:itemNameId(g) .." > 99")
			b_take = true
			for j,k in ipairs(black_list) do
					if g == k then
						global:printError(" object black list")
						b_bl = true
					end
			end
			if not b_bl then
				int_take = math.floor(exchange:storageItemQuantity(g)/100)
				global:printMessage("lot total :".. int_take)
				if int_take > Quantite_max_same_item then
					int_take = Quantite_max_same_item
				end
				global:printMessage("on prend max : ".. int_take .. " lot")
				b_already_in_table = false
				for _, v in ipairs(Item_selling) do
					if v.id == g then
						if v.sale >= Quantite_max_same_item then
							global:printError(inventory:itemNameId(v.id) .. " deja en vente plus de " .. Quantite_max_same_item .. "fois")
							b_take = false
						elseif v.sale < Quantite_max_same_item then
							nbSlotHDVForItem = Quantite_max_same_item - v.sale
							if int_take >= nbSlotHDVForItem then
								int_take = nbSlotHDVForItem
							end
							global:printMessage("Déjà" .. v.sale .. "lot hdv, on prend " .. int_take .. "lots en plus")
							b_already_in_table = true
						end
					end
				end
				if b_take then
					for j = 1, int_take do
						if inventory:itemWeight(g)*100 > get_pod() -200 then
							global:printSuccess("[BANQUE] Full Pods : go HDV")
							isFullPod = true
							index_banque = g - 1
							on_do_break = true
							break
						else
							exchange:getItem(g,100)
							global:printSuccess("[BANQUE]" .. inventory:itemNameId(g) .. " x " .. 100 .. " pris en banque")
						end
					end
					if not b_already_in_table then
						table.insert(Item_selling, {id = g, sale = 0})
					end
				end
			end
		end
		if on_do_break then
			on_do_break = false
			break
		end
		if g == 19998 then
			finish = true
		end
	end
	index_banque = 1
	global:printMessage("go vente")
	global:leaveDialog()
	b_goBANK = false
	b_goHDV = true
	print_table()
	map:door(518)
end

function sell_items()
	npc:npc(568, 5)

	b_goHDV = false
	b_goBANK = true

	for j, v in ipairs(Item_selling) do
		if v.id ~= 0 then
			v.sale = 0
			for i = 1, sale:ItemsOnSale() do
				if sale:GetItemGID(i) == v.id and sale:GetItemQuantity(i) == 100 then
					v.sale = v.sale + 1
					my_price = sale:GetItemPrice(i)
					hdv_price = sale:GetPriceItem(v.id, 3)
					prix_min = sale:getAveragePriceItem(v.id, 3) * coef_prix_mini
					if my_price ~= hdv_price and v.price_save ~= hdv_price then -- pas le meme prix que hdv, et pas le meme prix que la save
						v.price_save = hdv_price - 1
					else
						v.price_save = hdv_price
					end
					if my_price ~= hdv_price and v.price_save > prix_min then
						if v.price_save > sale:getAveragePriceItem(v.id, 3) * 10 then
							v.price_save = sale:getAveragePriceItem(v.id, 3) * 10
						end
							global:printError("[Vente] Mise à jour de 100 x [" .. inventory:itemNameId(v.id) .. "] : " .. mille(v.price_save) .. " Kamas.")
							sale:EditPrice(sale:GetItemGUID(i), v.price_save, 100)
					end
				end
			end
			hdv_price = sale:GetPriceItem(v.id, 3)
			prix_min = sale:getAveragePriceItem(v.id, 3) * coef_prix_mini
			while inventory:itemCount(v.id) >= 100 do
				if sale:availableSpace() == 0 then
					break
				end -- verif
				if hdv_price == 0 then
					global:printSuccess("[Vente] Mise en vente de 100 x [" .. inventory:itemNameId(v.id) .. "] : " .. sale:getAveragePriceItem(v.id, 3) * 2 .. " Kamas.")
					sale:SellItem(v.id, 100,  sale:getAveragePriceItem(v.id, 3) * 3)
				end
				if hdv_price - 1 > prix_min then
					if hdv_price > sale:getAveragePriceItem(v.id, 3) * 10 then
						hdv_price = sale:getAveragePriceItem(v.id, 3) * 10
					end
					global:printSuccess("[Vente] Mise en vente de 100 x [" .. inventory:itemNameId(v.id) .. "] : " .. hdv_price - 1 .. " Kamas.")
					sale:SellItem(v.id, 100, hdv_price - 1)
				else
					global:printError("[Vente] Mise en vente impossible de 100 x [" .. inventory:itemNameId(v.id) .. "], Hdv : " .. mille(hdv_price) .. " Kamas (Prix minimum : " .. mille(prix_min) .. ").")
					break
				end
				v.sale = v.sale + 1
			end
		end
	end
	npc:leaveDialog()


	if finish or sale:availableSpace() <= 0 then
		go_sleep()
	end
	map:changeMap("top")
end

b_goHDV = false
b_goBANK = false
b_begin = true
b_firstFinish = true


function module:move()
	if finish and b_firstFinish then
		print_table()
		b_firstFinish = false
		global:printSuccess("Banque vide, passage en mode actualisation")
	end
	if b_begin then
		global:printMessage("Direction HDV pour verif ce qu'on a !")
		if map:onMap("212601350") then
			check_hdv()
		elseif map:onMap("212601349") then
			map:changeMap("bottom")
		elseif map:onMap("212601348") then
			map:changeMap("bottom")
		elseif map:onMap("212601347") then
			map:changeMap("bottom")
		elseif map:onMap("212600322") then
			map:changeMap("right")
		elseif map:onMap("217060352") then
			map:door(518)
		else
			global:printMessage("Fin du begin!")
		end
	elseif b_goBANK then
		global:printMessage("Direction la banque !")
		if map:onMap("212601350") then
			map:changeMap("top")
		elseif map:onMap("212601349") then
			map:changeMap("top")
		elseif map:onMap("212601348") then
			map:changeMap("top")
		elseif map:onMap("212601347") then
			map:door(421)
		elseif map:onMap("212600322") then
			global:printMessage("Rentrons dans la banque !")
			map:door(512)
		elseif map:onMap("217060352") then
			take_item()
		else
		end
	elseif b_goHDV then
		global:printMessage("Direction l'HDV !")
		if map:onMap("212601350") then
			sell_items()
		elseif map:onMap("212601349") then
			map:changeMap("bottom")
		elseif map:onMap("212601348") then
			map:changeMap("bottom")
		elseif map:onMap("212601347") then
			map:changeMap("bottom")
		elseif map:onMap("212600322") then
			map:changeMap("right")
		elseif map:onMap("217060352") then
			map:door(518)
		else
			global:printMessage("Fin go HDV!")
		end
	end

	if map:onMap("162791424") then
		global:printMessage("Havre sac vers Zaap bonta !")
		map:changeMap("zaap(212600323)")
	elseif map:onMap("-31,-56") then
		global:printMessage("Zaap bonta -> banque bonta!")
		map:changeMap("top")
	else
		global:printError("Je suis perdu")
		global:printError(tostring(map:currentMap()))
	--	Si on est pas sur une maap inconnue -> havreSac
		return {
			{map = map:currentMap(), path = "havenbag"},
		}
	end



end

function  module:bank()
end

return module

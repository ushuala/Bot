Ushuala
#5669
!Paups, KC L1MITLESS

Ushuala — 15/01/2021
Spour ca j'me dis
En vrai deco les bots la nuit
C pas deconnant
KC L1MITLESS — 15/01/2021
Pour le mineur c'est bien
Car il pex bien
Mais pour les autres
!Paups — 15/01/2021
@Ushuala
j'viens de trouver un soucis au fait pas pouvoir changer les stack max en HDV par métier
Mon pêcheur j'veux tout vendre pck y'a pas mal de poissons qui ont un bon prix
par contre l'alchi
en sois il ramasse plus que la belladone et le ginseng et c'est les seules qui valent qlq chose atm
sauf que du coup il en met que 10 stack de chaque en hdv donc que 20 stack en tout
Ushuala — 15/01/2021
Oui
T'as 2 solutions
Soit tu dupliques Bankn et tu l'appelles genre Bankn2.lua
Et dans ce cas dans ton fichier alchi tu appelles le bon fichier bankn2
!Paups — 15/01/2021
ouais j'vois
Ushuala — 15/01/2021
Soit il faudrait que je fasse quelque chose qui prend en compte le nombre de stacks en banque, et ca devient complexe
Oublie pas que ton bot fait une pause toutes les heures
Donc meme si il en met que 10
Ca fait 1000 ginseng belladone par h
!Paups — 15/01/2021
Après là c'est sûrement a cause du bug parce que j'avais pas pris le nouveau bankn
mais y'a que du ginseng et de la belladone en hdv
Ushuala — 15/01/2021
Ué normal il a que ca ton alchi
Moi aussi ils en mettent 12 stacks et ils stop
-- SCRIPT PAR ILM#4914
-- DEPART HDV RESSOURCES BONTA OU BANQUE
-- POD 101%
module = {}

Item_selling = {} -- id = id objet, sale = nbr sale en hdv, price_save = évite de descendre en dessous de son propre prix
black_list = {679} -- id item a ne pas vendre


Quantite_max_same_item = 12 -- quantite du meme item max en hdv
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
	--global:delay(time_pause)
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
	map:changeMap("zaapi(147254)")

end


function get_pod()
	a = inventory:podsMax() - inventory:pods() -11
	return a
end

index_banque = 1
on_do_break = false
b_bl = false

function take_item()

	npc:npcBank(-1)
	global:delay(500)
	exchange:putAllItems()
	exchange:getKamas(0)

	for g = index_banque, 20000 do

		if exchange:storageItemQuantity(g) > 99 then
			b_bl = false
			global:printMessage(inventory:itemNameId(g) .." > 99")
			b_take = true

			for j,k in ipairs(black_list) do
					if g == k then
						global:printError(" object black list")
... (223 lignes restantes)
Réduire
Bankn.lua
9 Ko
jsp si je vous l'avais filé
!Paups — 15/01/2021
ouep
8m1 de sortie
en 24h
sachant que la nuit ca vends vrmt pas bien
Ushuala — 15/01/2021
t'as fait 8m en cash ?
!Paups — 15/01/2021
yy
Ushuala — 15/01/2021
Wah jfais que 5/6m
!Paups — 15/01/2021
Pecheur 2M2
Ushuala — 15/01/2021
Apres je compte pas les chasseurs
!Paups — 15/01/2021
Paysan 2M1
mineur 1M1
bucheron 1M
Ushuala — 15/01/2021
Ah ue toi tu px voir qui rapporte quoi
Moi jvois pas hehe
!Paups — 15/01/2021
30m en tout a peu près
donc en sois j'ai remboursé snow
Ushuala — 15/01/2021
Moi des ce soir j'ai remb tt mon invest
!Paups — 15/01/2021
tu va vendre tes kamas a 1.75 ?
Ushuala — 15/01/2021
Ue j'pense
Juste pr retirer et etre safe
J'ai juste peur que sur paypal il trv un moyen d'me scam genre à recup la thune
!Paups — 15/01/2021
pas si c'est en cadeau a un proche
Ushuala — 15/01/2021
Si il paye avec sa cb et fait opposition à la banque, si
!Paups — 15/01/2021
Ouais enfin pour xx€ faire opposition il a la dalle
﻿
-- SCRIPT PAR ILM#4914
-- DEPART HDV RESSOURCES BONTA OU BANQUE
-- POD 101%
module = {}

Item_selling = {} -- id = id objet, sale = nbr sale en hdv, price_save = évite de descendre en dessous de son propre prix
black_list = {679} -- id item a ne pas vendre


Quantite_max_same_item = 12 -- quantite du meme item max en hdv
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
	--global:delay(time_pause)
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
	map:changeMap("zaapi(147254)")

end


function get_pod()
	a = inventory:podsMax() - inventory:pods() -11
	return a
end

index_banque = 1
on_do_break = false
b_bl = false

function take_item()

	npc:npcBank(-1)
	global:delay(500)
	exchange:putAllItems()
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
				global:printMessage("on prend max :".. int_take .. "lot")

				b_already_in_table = false

				for _, v in ipairs(Item_selling) do
				--	global:printMessage("lot total ")
					if v.id == g then
						if v.sale >= Quantite_max_same_item then
							global:printError(inventory:itemNameId(v.id) .. " deja en vente plus de " .. Quantite_max_same_item .. "fois")
							b_take = false
						elseif v.sale < Quantite_max_same_item then

							int_take = Quantite_max_same_item - v.sale
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

		if g % 1000 == 0 then
			global:printMessage("iteration index : " .. g .."/20000")
		end

		if g == 19998 then
			finish = true
		end

	end
	global:printMessage("go vente")
	global:leaveDialog()
	b_goBANK = false
	b_goHDV = true
	print_table()
	map:moveToCell(424)

end

function sell_items()
	npc:npc(568, 5)

	b_goHDV = false
	b_goBANK = true

	for j, v in ipairs(Item_selling) do


		if v.id ~= 0 then
			v.sale = 0
			for i = 1, sale:ItemsOnSale() do
			--	global:printMessage("boucle hdv")
				if sale:GetItemGID(i) == v.id and sale:GetItemQuantity(i) == 100 then
				--	global:printMessage("item hdv dans la table, vente + 1")
					v.sale = v.sale + 1
					my_price = sale:GetItemPrice(i)
					hdv_price = sale:GetPriceItem(v.id, 3)
					prix_min = sale:getAveragePriceItem(v.id, 3) * coef_prix_mini

				--	global:printMessage("prix mini:" .. prix_min)

					if my_price ~= hdv_price and v.price_save ~= hdv_price then -- pas le meme prix que hdv, et pas le meme prix que la save
						v.price_save = hdv_price - 1
					else
						v.price_save = hdv_price
					end


					if my_price ~= hdv_price and v.price_save > prix_min then
							global:printError("[Vente] Mise à jour de 100 x [" .. inventory:itemNameId(v.id) .. "] : " .. mille(v.price_save) .. " Kamas.")
							sale:EditPrice(sale:GetItemGUID(i), v.price_save, 100)
					else
				--		global:printMessage("[Vente] Mise à jour de 100 x [" .. inventory:itemNameId(v.id) .. "] non nécessaire.")
					end
				end
			end


			hdv_price = sale:GetPriceItem(v.id, 3)
			prix_min = sale:getAveragePriceItem(v.id, 3) * coef_prix_mini
		--	global:printMessage("prix mini:" .. prix_min)
			while inventory:itemCount(v.id) >= 100 do
				if sale:availableSpace() == 0 then
					break
				end -- verif
				if hdv_price == 0 then
					global:printSuccess("[Vente] Mise en vente de 100 x [" .. inventory:itemNameId(v.id) .. "] : " .. hdv_price - 1 .. " Kamas.")
					sale:SellItem(v.id, 100, sale:getAveragePriceItem(v.id, 3) )
				end
				if hdv_price - 1 > prix_min then
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
		--b_goHDV = true
		--b_goBANK = false
		go_sleep()
	end

	map:changeMap("zaapi(147254)")

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
		--global:printError("begin")
		if map:onMap("146741") then
			check_hdv()
		elseif map:onMap("147254") then
			map:changeMap("zaapi(146741)")
		elseif map:onMap("2885641") then
			map:moveToCell(424)
		else
	--		global:printError("PLS begin")
		end
	elseif b_goBANK then
		global:printError("bank")
		if map:onMap("146741") then
			map:changeMap("zaapi(147254)")
		elseif map:onMap("147254") then
			global:printError("bank")
			map:door(383)
		elseif map:onMap("2885641") then
			take_item()
		else
		--	global:printError("PLS bank")
		end
	elseif b_goHDV then
	--	global:printError("hdv")
		if map:onMap("146741") then
			sell_items()
		elseif map:onMap("147254") then
			map:changeMap("zaapi(146741)")
		elseif map:onMap("2885641") then
			map:moveToCell(424)
		else
			--global:printError("PLS hdv")
		end
	end

	if map:onMap("162791424") then
		map:changeMap("zaap(147768)")
	elseif map:onMap("-32,-56") then
		map:changeMap("zaapi(146741)")
	else
	--	Si on est pas sur une maap inconnue -> havreSac
		return {
			{map = map:currentMap(), path = "havenbag"},
		}
	end



end

function  module:bank()
end

return module

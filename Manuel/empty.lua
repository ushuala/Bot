bankFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\Banque.lua]])

global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/Ressource/lance_echange.xml")
function move()
	return bankFile:moveDonRessource()
end

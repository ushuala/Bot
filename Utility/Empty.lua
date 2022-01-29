bankFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\Banque.lua]])
utilityFile = dofile([[C:\Users\Administrator\Documents\Bot\Utility\Utility.lua]])

global:loadConfiguration("C:/Users/Administrator/Documents/Bot/Configs/Ressource/lance_echange.xml")
function move()
	return bankFile:moveDonRessource()
end

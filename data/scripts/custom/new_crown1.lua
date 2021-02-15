function onModalWindow(player, modalWindowId, buttonId, choiceId)  
  
    if modalWindowId == 3000 then
        if buttonId == 105 then
		    player:unregisterEvent("crown")
            local title = "The Oracle: Now, choose your town!"
            local message = "In which town do you want to live?"
            local cityOracle = ModalWindow(ID_CITYORACLE, title, message)
            cityOracle:addButton(100, "Choose")
            cityOracle:addButton(101, "Cancel")

		    cityOracle:addChoice(1, "Carlin")
		    cityOracle:addChoice(2, "Edron")
		    cityOracle:addChoice(3, "Thais")
		    cityOracle:addChoice(4, "Venore")

            cityOracle:setDefaultEnterButton(100)
            cityOracle:setDefaultEscapeButton(101)
            cityOracle:sendToPlayer(player)
        end
    end
end
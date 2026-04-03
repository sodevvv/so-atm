local MainConfig<const> = {
    AtmRequiredItemsForRobbery = "water", -- item requis pour lancer le braquage
    RemoveItemsForBraquage = true, -- si true, l'item requis sont retirés de l'inventaire 
    atmTargetIcon = "fa-solid fa-people-robbery", -- icone du target pour lancer le braquage
    atmTargetTitle = "Braquage ATM", -- titre du target pour lancer le braquage
    AtmRobberyPrice = {min = 550, max = 1000}, -- prix minimum et maximum du braquage
    policeJob = "sasp", -- job de la police
    atmModels = { -- model des ATM
        "prop_atm_03",
        "prop_fleeca_atm",
        "prop_atm_01",
        "prop_atm_02"
    }
}

_ENV.MainConfig = MainConfig

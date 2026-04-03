lib.print.info("ATM Robbery Made by So")

RegisterServerEvent(GetCurrentResourceName() .. ':ATMRobbery')
AddEventHandler(GetCurrentResourceName() .. ':ATMRobbery', function(streetName)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer then
        local ramdomPrice = math.random(MainConfig.AtmRobberyPrice.min, MainConfig.AtmRobberyPrice.max)
        xPlayer.addMoney(ramdomPrice)
        TriggerClientEvent('esx:showNotification', source, "Vous avez gagné ~g~$" .. ramdomPrice)
        local players = ESX.GetExtendedPlayers("job", MainConfig.policeJob)
        for _, officer in pairs(players) do
            TriggerClientEvent('esx:showNotification', officer.source, " Braquage d'ATM en cours a ~y~" .. streetName)
        end
    end
end)

ESX.RegisterServerCallback(GetCurrentResourceName() .. ':GetATMItems', function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer and xPlayer.getInventoryItem(MainConfig.AtmRequiredItemsForRobbery).count > 0 then
        cb(true)
        if MainConfig.RemoveItemsForBraquage then
            xPlayer.removeInventoryItem(MainConfig.AtmRequiredItemsForRobbery, 1)
        end
    else
        cb(false)
    end
end)

lib.print.info("ATM Robbery Made by So")

function getStreet()
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    local streetHash = GetStreetNameAtCoord(coords.x, coords.y, coords.z)
    local streetName = GetStreetNameFromHashKey(streetHash)

    return streetName
end

function startRobbery()
    local ped = PlayerPedId()
    local drillProp = CreateObject(`hei_prop_heist_drill`, 0, 0, 0, true, true, true)
    AttachEntityToEntity(drillProp, ped, GetPedBoneIndex(ped, 28422),0.0, 0.0, 0.0,0.0, 0.0, 0.0, true, true, false, true, 1, true)
    if  lib.progressCircle({
        duration = 8000,
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = {
            move = true,
            car = true,
            combat = true,
        },
        anim = {
            dict = 'anim@heists@fleeca_bank@drilling',
            clip = 'drill_straight_idle',
        },
    }) then
        DeleteEntity(drillProp)
    end

    local success = lib.skillCheck({'easy', 'easy', {areaSize = 60, speedMultiplier = 2}, 'medium'}, {'w', 'a', 's', 'd'})
    if success then
        TriggerServerEvent(GetCurrentResourceName() .. ':ATMRobbery', getStreet())
    else
        ESX.ShowNotification("~r~Vous n'avez pas réussi le braquage !")
    end
end

for _, model in ipairs(MainConfig.atmModels) do
    exports.ox_target:addModel(model, {
        {
            icon = MainConfig.atmTargetIcon,
            label = MainConfig.atmTargetTitle,
            onSelect = function()
                ESX.TriggerServerCallback(GetCurrentResourceName() .. ':GetATMItems', function(cb)
                    if cb then
                        startRobbery()
                    else
                        ESX.ShowNotification("~r~Vous n'avez pas les items nécessaires pour le braquage !")
                    end
                end)
            end
        }
    })
end

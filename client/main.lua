local annoucement_queue = {}

RegisterNetEvent('1-K1Dev-MmoText:AddText')
AddEventHandler('1-K1Dev-MmoText:AddText', function(message)
    table.insert(annoucement_queue, {message = message})

    if #annoucement_queue <= 1 then
        pushAnnoucement()
    end
end)

function pushAnnoucement()
    local message = annoucement_queue[1]
    SendNUIMessage({
        action = 'annouce',
        message = message.message,
    })
    PlaySoundFrontend("Player_Enter_Line", "RDRO_ATL_Sounds", true, 1)
    Citizen.Wait(9500)
    table.remove(annoucement_queue, 1)

    if #annoucement_queue > 0 then
        Citizen.SetTimeout(1000, function()
            pushAnnoucement()
        end)
    end
end
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        if IsPlayerDead(PlayerId()) then
            Citizen.Wait(200)
            
            ResurrectPlayer()

            SetEntityCoordsNoOffset(GetPlayerPed(-1), 173.45, -980.1, 30.07, true, true, true)

            Citizen.Wait(1000)
        end
    end
end)
function ResurrectPlayer()
    local playerPed = PlayerPedId()
    
    NetworkResurrectLocalPlayer(GetEntityCoords(playerPed), true, true, false)
    SetEntityInvincible(playerPed, false)
    ClearPedBloodDamage(playerPed)
    TriggerEvent("playerSpawned")
end
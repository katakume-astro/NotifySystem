ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('astro:cheater')
AddEventHandler('astro:cheater', function()
local xPlayer = ESX.GetPlayerFromId(source)
xPlayer.kick('[ASTRO] Stop')
end)

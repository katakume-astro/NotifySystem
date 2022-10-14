ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('astro:cheater')
AddEventHandler('astro:cheater', function()
local source = source
local sourceXPlayer = ESX.GetPlayerFromId(source)
print(('[^3UWAGA:^7] Gracz ^5%s^7 uzywa prawdopodobnie cheatow!'):format(sourceXPlayer.source))
end)

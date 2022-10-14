ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

function Notify(type, msg, duration)
	if (duration == nil) then duration = 5000 end
	if Config.NotifyType == "mythic_notify" then
		if type == '' or type == nil then type = 'inform' end
		exports['mythic_notify']:DoCustomHudText(type, string.gsub(msg, '(~[rbgypcmuonshw]~)', ''), duration)
	elseif Config.NotifyType == "okokNotify" then
		if type == '' or type == nil then type = 'info' end
		exports['okokNotify']:Alert("", string.gsub(msg, '(~[rbgypcmuonshw]~)', ''), duration, type)
	else
		ESX.ShowNotification(msg)
	end
end

RegisterNetEvent('Astro-NotifySystem:Notify')
AddEventHandler('Astro-NotifySystem:Notify', function(type, msg, duration)
	Notify(type, msg, duration)
end)

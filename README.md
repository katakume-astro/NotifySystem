# NotifySystem and little "ac"
Od dnia dzisiejszego astro development korzysta z tego handlera

## Jak uzywać?
Client : exports['Astro-NotifySystem']:Notify('error', 'blad')

Server : TriggerClientEvent('Astro-NotifySystem:Notify', source, 'error', 'blad')

Server/client : TriggerServerEvent('astro:cheater')

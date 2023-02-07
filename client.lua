RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function()
	if Config.Lager.Blips.Enabled then
		showBlips()
	end
end)

CreateThread(function()
	while true do
	waitTime = 500
	local playerPed 	= PlayerPedId()
	local coords 		= GetEntityCoords(playerPed)
	local imMarker		= false
	for i=1, #Config.StorageLocations, 1 do
		local storageLocation = Config.StorageLocations[i]
		local distance		= GetDistanceBetweenCoords(coords, storageLocation)
			if distance < 10 then
				DrawMarker(20, storageLocation, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, Config.Storage.MarkerColor.r, Config.Storage.MarkerColor.g, Config.Storage.MarkerColor.b, Config.Storage.MarkerColor.a, 200, false, true, 2, nil, nil, false)
				waitTime = 0
			end
			if distance < 1.5 then
				helpNotify(Config.HelpNotificationText)
				imMarker = true
				waitTime = 0
			end
			if imMarker and IsControlJustReleased(0, 38) then
				TriggerEvent('inventory:openHouse', ESX.GetPlayerData().identifier, Config.Storage.Name, Config.Storage.Name, Config.Storage.Size)
			end
		end
		Wait(waitTime)	
	end
end)

function showBlips()
	for  i=1, #Config.StorageLocations, 1 do
	local blipLocation = Config.StorageLocations[i]
	blip = AddBlipForCoord(blipLocation)
	SetBlipSprite(blip, Config.Storage.Blips.Sprite)
	SetBlipScale(blip, Config.Storage.Blips.Size)
	SetBlipColour(blip, Config.Storage.Blips.Color)
	SetBlipAlpha(blip, 255)
	SetBlipAsShortRange(blip, true)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString(Config.Storage.Blips.Name)
	EndTextCommandSetBlipName(blip)
	end
end

function helpNotify(msg)
	BeginTextCommandDisplayHelp('STRING')
	AddTextComponentSubstringPlayerName(msg)
	EndTextCommandDisplayHelp(0, false, true, -1)
end

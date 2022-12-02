RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function()
	if Config.Lager.Blips.Enabled then
		showBlips()
	end
end)

Citizen.CreateThread(function()
	while true do
	local playerPed 	= PlayerPedId()
	local coords 		= GetEntityCoords(playerPed)
	local imMarker		= false
		for _, info in pairs(Config.Lager) do
		local lagerLocation = Config.Lager.Locations[1]
		local distance		= GetDistanceBetweenCoords(coords, lagerLocation)
			if distance < Config.Lager.MarkerDrawDistance then
				DrawMarker(Config.Lager.MarkerType, lagerLocation, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, Config.Lager.MarkerSize.x, Config.Lager.MarkerSize.y, Config.Lager.MarkerSize.z, Config.Lager.MarkerColor.r, Config.Lager.MarkerColor.g, Config.Lager.MarkerColor.b, 200, false, true, 2, nil, nil, false)
			end
			if distance < 1.5 then
				ESX.ShowHelpNotification(Config.HelpNotificationText)
				imMarker = true
			end
			if imMarker and IsControlJustReleased(0, 38) then
				TriggerEvent('inventory:openHouse', ESX.GetPlayerData().identifier, Config.Lager.Name, Config.Lager.Name, 10000)
			end
		end
		Citizen.Wait(0)	
	end
end)

function showBlips()
	for _, info in pairs(Config.Lager) do
	local blipLocation = Config.Lager.Locations[1]
	blip = AddBlipForCoord(blipLocation)
	SetBlipSprite(blip, Config.Lager.Blips.Sprite)
	SetBlipScale(blip, Config.Lager.Blips.Size)
	SetBlipColour(blip, Config.Lager.Blips.Color)
	SetBlipAlpha(blip, 255)
	SetBlipAsShortRange(blip, true)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString(Config.Lager.Blips.Name)
	EndTextCommandSetBlipName(blip)
	end
end


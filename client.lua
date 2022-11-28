Citizen.CreateThread(function()
	while true do
	local playerPed 	= PlayerPedId()
	local coords 		= GetEntityCoords(playerPed)
	local imMarker		= false
		for i = 1, #Config.Locations, 1 do
		local lagerLocation = Config.Locations[i]
		local distance		= GetDistanceBetweenCoords(coords, lagerLocation)
			if distance < 3.0 then
				DrawMarker(20, lagerLocation, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 155, 0, 0, 200, false, true, 2, nil, nil, false)
			end
			if distance < 1.0 then
				ESX.ShowHelpNotification(Config.HelpNotificationText)
				imMarker = true
			end
			if imMarker and IsControlJustReleased(0, 38) then
				TriggerEvent('inventory:openHouse', ESX.GetPlayerData().identifier, Config.StorageName, Config.StorageName, Config.StorageSize)
			end
		end
	Citizen.Wait(5)	
	end
end)

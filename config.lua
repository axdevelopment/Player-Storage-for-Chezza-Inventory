Config	= {}

Config.HelpNotificationText = 'Drücke ~INPUT_CONTEXT~ um das Lager zu öffnen'		-- help notification text (you can add your own help notification system on client.lua:22)

Config.StorageLocations = {                                                     	-- add as many storages, as you want
	vector3(540.3228, 35.8561, 94.6153), -- lspd
	vector3(1848.6357, 2582.9009, 45.6723) -- sg
}

Config.Storage = {																
	Name				= "Persönliches Lager",  					-- name & id of the storage
	Size				= 100,					-- size of the storages
	MarkerType			= 20,						-- marker type https://docs.fivem.net/docs/game-references/markers/
	MarkerColor 			= {r = 150, g = 49, b = 221, a = 255},		-- color of the marker (rgb), a = alpha (opacity)
	MarkerSize			= {x = 0.5, y = 0.5, z = 0.5},			-- markersize
	MarkerDrawDistance		= 5.0,						-- marker draw distance
	Blips = {
		Enabled			= false,
		Name 			= "Lager",                                          	-- blip name
		Size 			= 0.7,                                              	-- blip size 
		Sprite 			= 525,                                              	-- blip type https://docs.fivem.net/docs/game-references/blips/
		Color			= 32                                            -- blip color https://docs.fivem.net/docs/game-references/blips/#blip-colors
	}
}

Config	= {}

Config.HelpNotificationText = 'Press ~INPUT_CONTEXT~ to open your storage'		-- help notification text (you can add your own help notification system on client.lua:22)

Config.StorageLocations = {                                                     	-- add as many storages, as you want
	vector3(2787.3596, 3515.3413, 54.8345),
	vector3(2790.9263, 3513.1270, 54.8114)
}

Config.Storage = {																
	Name				= "Storage",  					-- name & id of the storage
	Size				= 10000,					-- size of the storages
	MarkerType			= 20,						-- marker type https://docs.fivem.net/docs/game-references/markers/
	MarkerColor 			= {r = 155, g = 0, b = 0, a = 255},		-- color of the marker (rgb), a = alpha (opacity)
	MarkerSize			= {x = 0.5, y = 0.5, z = 0.5},			-- markersize
	MarkerDrawDistance		= 3.0,						-- marker draw distance
	Blips = {
		Enabled			= true,
		Name 			= "Player Storage",                             -- blip name
		Size 			= 0.7,                                          -- blip size 
		Sprite 			= 525,                                          -- blip type https://docs.fivem.net/docs/game-references/blips/
		Color			= 32                                            -- blip color https://docs.fivem.net/docs/game-references/blips/#blip-colors
	}
}

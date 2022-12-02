Config	= {}

Config.HelpNotificationText = 'Drücke ~INPUT_CONTEXT~ um das Lager zu öffnen'	-- help notification text

Config.Lager = {																
	Locations = {                                                           -- add as many storages, as you want
	vector3(2787.3596, 3515.3413, 54.8345),
	vector3(2790.9263, 3513.1270, 54.8114)
	},
	Name				= "Lager",                              -- name & id of the storage
	MarkerType			= 20,					-- marker type https://docs.fivem.net/docs/game-references/markers/
	MarkerColor 		= {r = 155, g = 0, b = 0},			-- color of the marker (rgb)
	MarkerSize			= {x = 0.5, y = 0.5, z = 0.5},		-- markersize
	MarkerDrawDistance	= 3.0,						-- marker draw distance
	Blips = {
		Enabled			= true,
		Name 			= "Lager",                              -- blip name
		Size 			= 0.7,                                  -- blip size 
		Sprite 			= 525,                                  -- blip type https://docs.fivem.net/docs/game-references/blips/
		Color			= 32                                    -- blip color https://docs.fivem.net/docs/game-references/blips/#blip-colors
	}
}

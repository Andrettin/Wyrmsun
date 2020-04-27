function LoadGame(s)
	LoadGameFile = nil
	local loop = true
	
	for key, value in pairs(CustomPlayerData) do
		for i = 1, table.getn(CustomPlayerData[key].Objectives) do
			table.remove(CustomPlayerData[key].Objectives, i)
		end
	end

	while (loop) do
		InitGameVariables()
		LoadedGame = true
		RunningScenario = true
		StartSavedGame(s)
		if (GameResult ~= GameRestart) then
			loop = false
		end
	end

	RunResultsMenu()

	SetCurrentCampaign("")
	SetCurrentQuest("")
	
	InitGameSettings()
	RunningScenario = false
end

function AddLoadGameItems(menu)
	menu:addLabel(_("Load Game"), 384 / 2 * get_scale_factor(), 11 * get_scale_factor())
	local browser = menu:addBrowser("~save", "^.*%.sav%.?g?z?$",
		(384 - 300 - 18) / 2 * get_scale_factor(), (11 + 36) * get_scale_factor(), 318 * get_scale_factor(), 126 * get_scale_factor())

	menu:addHalfButton(_("~!Load"), "l", (384 - 300 - 18) / 2 * get_scale_factor(), (256 - 16 - 27) * get_scale_factor(),
	function()
		if (browser:getSelected() < 0) then
			return
		end
		if not (CanAccessFile("save/" .. browser:getSelectedItem())) then
			GenericDialog("Error", "The file no longer exists.")
			return;
		end
		LoadGameFile = "~save/" .. browser:getSelectedItem()
		if (menu.ingame) then
			StopGame(GameNoResult)
			menu:stopAll()
		else
			menu:stop()
		end
	end)
	
	local sortByCheckBox
	sortByCheckBox = menu:addImageCheckBox(_("Show Latest First"), (384 - 300 - 18) / 2 * get_scale_factor(), (256 - 16 - 27 - 25) * get_scale_factor(),
	function()
		wyr.preferences.SortSaveGamesByTime = sortByCheckBox:isMarked()
		SavePreferences()

		if (wyr.preferences.SortSaveGamesByTime) then
			browser:sortByTime()
		else
			browser:sortByName()
		end
	end)
	sortByCheckBox:setMarked(wyr.preferences.SortSaveGamesByTime)
	if (wyr.preferences.SortSaveGamesByTime) then
		browser:sortByTime()
	end
	menu:addHalfButton(_("~!Cancel"), "c", (384 - ((384 - 300 - 18) / 2) - 106) * get_scale_factor(), (256 - 16 - 27) * get_scale_factor(),
	function() menu:stop() end)
end

function RunLoadGameMenu()
	local menu = WarGameMenu(panel(3))
	menu:resize(384 * get_scale_factor(), 256 * get_scale_factor())
	menu:setDrawMenusUnder(true)

	AddLoadGameItems(menu)

	menu.ingame = false
	menu:run()
end

function RunGameLoadGameMenu()
	local menu = WarGameMenu(panel(3))
	menu:resize(384 * get_scale_factor(), 256 * get_scale_factor())
	menu:setDrawMenusUnder(true)

	AddLoadGameItems(menu)

	menu.ingame = true
	menu:run(false)
end


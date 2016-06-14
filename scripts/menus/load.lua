function LoadGame(s)
	LoadGameFile = nil
	local loop = true

	while (loop) do
		InitGameVariables()
		LoadedGame = true
		RunningScenario = true
		StartSavedGame(s)
		if (GameResult ~= GameRestart) then
			loop = false
		end
		SetCurrentQuest("")
	end

	RunResultsMenu()
	if not (IsNetworkGame()) then
		if (GetCivilizationTechnologyPoints(GetPlayerData(GetThisPlayer(), "RaceName")) > 0 and GameResult == GameVictory and GetCurrentQuest() ~= "" and not IsReplayGame() and not GrandStrategy) then
			RunTechTreeMenu(GetTechTreeCivilizationNumber(GetPlayerData(GetThisPlayer(), "RaceName")))
		end
	end

	InitGameSettings()
	SetPlayerData(GetThisPlayer(), "RaceName", "gnome")
	RunningScenario = false
end

function AddLoadGameItems(menu)
	menu:addLabel(_("Load Game"), 384 / 2, 11)
	local browser = menu:addBrowser("~save", "^.*%.sav%.?g?z?$",
		(384 - 300 - 18) / 2, 11 + 36, 318, 126)

	menu:addHalfButton(_("~!Load"), "l", (384 - 300 - 18) / 2, 256 - 16 - 27,
	function()
		if (browser:getSelected() < 0) then
			return
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
	sortByCheckBox = menu:addImageCheckBox(_("Show Latest First"), (384 - 300 - 18) / 2, 256 - 16 - 27 - 25,
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
	menu:addHalfButton(_("~!Cancel"), "c", 384 - ((384 - 300 - 18) / 2) - 106, 256 - 16 - 27,
	function() menu:stop() end)
end

function RunLoadGameMenu()
	local menu = WarMenu(nil, panel(3), false)
	menu:setSize(384, 256)
	menu:setPosition((Video.Width - 384) / 2, (Video.Height - 256) / 2)
	menu:setDrawMenusUnder(true)

	AddLoadGameItems(menu)

	menu.ingame = false
	menu:run()
end

function RunGameLoadGameMenu()
	local menu = WarGameMenu(panel(3))
	menu:resize(384, 256)
	menu:setDrawMenusUnder(true)

	AddLoadGameItems(menu)

	menu.ingame = true
	menu:run(false)
end


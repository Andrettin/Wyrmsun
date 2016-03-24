
editor_tilesets = { "cave", "conifer_forest_summer", "conifer_forest_autumn", "dungeon", "fairlimbed_forest", "swamp"}

function GetUnitGraphics()
	local unit_graphics_list = {}

	local i
	local f
	local u = 1

	local dirlist = {}
	local dirs = ListDirsInDirectory("graphics/")
	for i,f in ipairs(dirs) do
		dirlist[u] = f .. "/"
		u = u + 1
	end

	for j=1,table.getn(dirlist) do
		if (GetArrayIncludes(ListDirsInDirectory("graphics/" .. dirlist[j]), "units")) then
			local fileslist = ListFilesInDirectory("graphics/" .. dirlist[j] .. "units/")
			for i,f in ipairs(fileslist) do
				table.insert(unit_graphics_list, dirlist[j] .. "units/" .. f)
			end
		end
	end
	
	u = 1
	dirlist = nil
	dirlist = {}
	dirs = ListDirsInDirectory("dlcs/")
	for i,f in ipairs(dirs) do
		dirlist[u] = f .. "/"
		u = u + 1
	end

	for j=1,table.getn(dirlist) do
		if (GetArrayIncludes(ListDirsInDirectory("dlcs/" .. dirlist[j]), "graphics") and GetArrayIncludes(ListDirsInDirectory("dlcs/" .. dirlist[j] .. "graphics/"), "units")) then
			local fileslist = ListFilesInDirectory("dlcs/" .. dirlist[j] .. "graphics/units/")
			for i,f in ipairs(fileslist) do
				table.insert(unit_graphics_list, "dlcs/" .. dirlist[j] .. "graphics/units/" .. f)
			end
		end
	end
	
	
	u = 1
	dirlist = nil
	dirlist = {}
	dirs = ListDirsInDirectory("mods/")
	for i,f in ipairs(dirs) do
		dirlist[u] = f .. "/"
		u = u + 1
	end

	for j=1,table.getn(dirlist) do
		if (GetArrayIncludes(ListDirsInDirectory("mods/" .. dirlist[j]), "graphics") and GetArrayIncludes(ListDirsInDirectory("mods/" .. dirlist[j] .. "graphics/"), "units")) then
			local fileslist = ListFilesInDirectory("mods/" .. dirlist[j] .. "graphics/units/")
			for i,f in ipairs(fileslist) do
				table.insert(unit_graphics_list, "mods/" .. dirlist[j] .. "graphics/units/" .. f)
			end
		end
	end
	
	return unit_graphics_list
end

--  Menu for new map to edit
local function RunEditorNewMapMenu()
	local menu = WarMenu()
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2
	local tilesets = editor_tilesets
	local mapSizes = {"32", "64", "96", "128", "256"}

	menu:addLabel("Map Description:", offx + 208, offy + 104 + 32 * 0, Fonts["game"], false)
	local mapDescription = menu:addTextInputField("", offx + 208, offy + 104 + 32 * 1, 200)
	menu:addLabel("Terrain:", offx + 208, offy + 104 + 32 * 2, Fonts["game"], false)
	local dropDownTileset = menu:addDropDown(editor_tilesets, offx + 208 + 60, offy + 104 + 32 * 2, function() end)
	dropDownTileset:setSize(152, 20)

	menu:addLabel("Size:", offx + 208, offy + 104 + 32 * 3, Fonts["game"], false)
	local mapSizex = menu:addDropDown(mapSizes, offx + 208 + 50, offy + 104 + 32 * 3, function() end)
	mapSizex:setSize(50, 20)
	menu:addLabel("x", offx + 208 + 110, offy + 104 + 32 * 3, Fonts["game"], false)
	local mapSizey = menu:addDropDown(mapSizes, offx + 208 + 125, offy + 104 + 32 * 3, function() end)
	mapSizey:setSize(50, 20)

	menu:addFullButton(_("~!New Map"), "n", offx + 208, offy + 104 + 36 * 5,
	function()
		-- TODO : check value
		Map.Info.Description = mapDescription:getText()
		Map.Info.MapWidth = mapSizes[1 + mapSizex:getSelected()]
		Map.Info.MapHeight = mapSizes[1 + mapSizey:getSelected()]
		Map.Info.Filename = "new_map"
		if (CanAccessFile("scripts/tilesets/" .. string.gsub(editor_tilesets[1 + dropDownTileset:getSelected()], "-", "_") .. ".lua")) then
			LoadTileModels("scripts/tilesets/" .. string.gsub(editor_tilesets[1 + dropDownTileset:getSelected()], "-", "_") .. ".lua")
		else -- if the tileset doesn't exist in the base game, check if any enabled mod has this tileset
			for i=1,table.getn(Mods) do
				if (CanAccessFile(string.gsub(Mods[i], "info.lua", "scripts/tilesets/") .. string.gsub(editor_tilesets[1 + dropDownTileset:getSelected()], "-", "_") .. ".lua")) then
					LoadTileModels(string.gsub(Mods[i], "info.lua", "scripts/tilesets/") .. string.gsub(editor_tilesets[1 + dropDownTileset:getSelected()], "-", "_") .. ".lua")
					break
				end
			end
		end
		menu:stop()
		StartEditor(nil, false)
		ReloadMods()
		RunEditorMenu()
	end)
	menu:addFullButton(_("~!Cancel"), "c", offx + 208, offy + 104 + 36 * 6, function() menu:stop(1); RunEditorMenu() end)
	return menu:run()
end

-- Menu for loading map to edit
local function RunEditorLoadMapMenu(is_mod)
	local menu = WarMenu()
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2
	local labelMapName
	local labelDescription
	local labelNbPlayer
	local labelMapSize
	local edit_button
	
	-- update label content
	local function MapChanged()
		if not (is_mod) then
			labelDescription:setCaption("Name: " .. _(mapinfo.description))
			labelDescription:adjustSize()

			labelMapName:setCaption("File: " .. string.sub(mapname, 6))
			labelMapName:adjustSize()
		
			labelNbPlayer:setCaption("Players: " .. mapinfo.nplayers)
			labelNbPlayer:adjustSize()

			labelMapSize:setCaption("Size: " .. mapinfo.w .. " x " .. mapinfo.h)
			labelMapSize:adjustSize()
		else
			if (modname ~= "") then
				labelDescription:setCaption("Name: " .. _(mapinfo.description))
				labelDescription:adjustSize()

				labelMapName:setCaption("File: " .. string.sub(modname, 6))
				edit_button:setEnabled(true)
			else
				labelDescription:setCaption("")
				labelMapName:setCaption("")
				edit_button:setEnabled(false)
			end
			labelMapName:adjustSize()
		end
	end

	labelDescription = menu:addLabel("", offx + 208, offy + 104 + 32 * 0, Fonts["game"], false)
	labelMapName = menu:addLabel("", offx + 208, offy + 104 + 36 * 1, Fonts["game"], false)
	labelNbPlayer = menu:addLabel("", offx + 208, offy + 104 + 32 * 2, Fonts["game"], false)
	labelMapSize = menu:addLabel("", offx + 208, offy + 104 + 32 * 3, Fonts["game"], false)

	local select_button_string
	if not (is_mod) then
		select_button_string = _("~!Select Map")
	else
		select_button_string = _("~!Select Mod")
	end
	menu:addFullButton(select_button_string, "s", offx + 208, offy + 104 + 36 * 4,
		function()
			if not (is_mod) then
				local oldmapname = mapname
				RunSelectScenarioMenu(is_mod)
				if (mapname ~= oldmapname) then
					GetMapInfo(mapname)
					MapChanged()
				end
			else
				local oldmapname = modname
				RunSelectScenarioMenu(is_mod)
				if (modname ~= oldmapname and modname ~= "") then
					GetMapInfo(modname)
					MapChanged()
				end
			end
		end)

	if not (is_mod) then
		edit_button = menu:addFullButton(_("~!Edit Map"), "e", offx + 208, offy + 104 + 36 * 5, function()
			menu:stop();
			StartEditor(mapname, false);
			ReloadMods();
			RunEditorMenu()
		end)
	else
		edit_button = menu:addFullButton(_("~!Edit Mod"), "e", offx + 208, offy + 104 + 36 * 5, function() menu:stop();
			Map.Info.MapWidth = 32
			Map.Info.MapHeight = 32
			LoadTileModels("scripts/tilesets/" .. string.gsub(editor_tilesets[1], "-", "_") .. ".lua")
			DisableMod(tostring(string.gsub(modname, ".smp", ".sms"))) -- to prevent a mod's changes being applied twice if it is both active and is the mod currently being loaded
			StartEditor(modname, true);
			ReloadMods();
			RunEditorMenu()
		end)
	end
	menu:addFullButton(_("~!Cancel"), "c", offx + 208, offy + 104 + 36 * 6, function() menu:stop(1); RunEditorMenu() end)

	if not (is_mod) then
		GetMapInfo(mapname)
	else
		if (modname ~= "") then
			GetMapInfo(modname)
		end
	end
	MapChanged()
	return menu:run()
end

-- root of the editor menu
function RunEditorMenu()
	SetPlayerData(GetThisPlayer(), "RaceName", "gnome")

	if not (IsMusicPlaying()) then
		PlayMusicName("MenuTheme")
	end

	local menu = WarMenu()
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2

	menu:addLabel(_("~<Map Editor~>"), offx + 320, offy + 212 - 25)
	local buttonNewMap =
	menu:addFullButton(_("~!New Map"), "n", offx + 208, offy + 104 + 36*3, function() RunEditorNewMapMenu(); menu:stop() end)
	menu:addFullButton(_("~!Load Map"), "l", offx + 208, offy + 104 + 36*4, function() RunEditorLoadMapMenu(false); menu:stop() end)
	menu:addFullButton(_("Load ~!Mod"), "m", offx + 208, offy + 104 + 36*5, function() RunEditorLoadMapMenu(true); menu:stop() end)
	menu:addFullButton(_("~!Cancel"), "c", offx + 208, offy + 104 + 36*6, function() menu:stop() end)
	return menu:run()
end

function RunEditorSaveMap(browser, name, menu, save_as_mod)
	local saved = EditorSaveMap(browser.path .. name, save_as_mod)

	ReloadMods() -- reload mods, in case an activated mod is being overwritten
	
	if (saved == -1) then
		local confirm = WarGameMenu(panel(3))
		confirm:resize(300,120)
		if not (save_as_mod) then
			confirm:addLabel("Cannot save map to file:", 300 / 2, 11)
		else
			confirm:addLabel("Cannot save mod to file:", 300 / 2, 11)
		end
		confirm:addLabel(browser.path .. name, 300 / 2, 31)
		confirm:addHalfButton("~!OK", "o", 1 * (300 / 3), 120 - 16 - 27, function() confirm:stop() end)
		confirm:run(false)
	else
		if not (save_as_mod) then
			UI.StatusLine:Set("Saved map to: " .. browser.path .. name)
		else
			UI.StatusLine:Set("Saved mod to: " .. browser.path .. name)
		end
		menu:stop()
	end
end

--
--  Save map from the editor
--
function RunEditorSaveMenu(save_as_mod)
	if not (save_as_mod) then
		local map_has_person_player = false
		for i = 0, 14 do
			if (Map.Info.PlayerType[i] == 5) then
				map_has_person_player = true
				break
			end
		end
		if not (map_has_person_player) then
			GenericDialog("Error", "A map needs to have at least one person player.")
			return
		end
	end
	
	local menu = WarGameMenu(panel(3))

	menu:resize(384, 256)

	if not (save_as_mod) then
		menu:addLabel("Save Map", 384 / 2, 11)
	else
		menu:addLabel("Save as Mod", 384 / 2, 11)
	end

	local t
	local browser
	if not (save_as_mod) then
		t = menu:addTextInputField("map.smp",
			(384 - 300 - 18) / 2, 11 + 24, 318)

		browser = menu:addBrowser(MapDirectories[1], ".smp$",
			(384 - 300 - 18) / 2, 11 + 24 + 22, 318, 126)
	else
		t = menu:addTextInputField("mod.smp",
			(384 - 300 - 18) / 2, 11 + 24, 318)

		browser = menu:addBrowser(ModDirectories[1], ".smp$",
			(384 - 300 - 18) / 2, 11 + 24 + 22, 318, 126)
	end

	local function cb(s)
		t:setText(browser:getSelectedItem())
	end
	browser:setActionCallback(cb)

	menu:addHalfButton(_("~!Cancel"), "c", 384 - ((384 - 300 - 18) / 2) - 106, 256 - 16 - 27, function() menu:stop() end)
	menu:addHalfButton("~!Save", "s", (384 - 300 - 18) / 2, 256 - 16 - 27,
	function()
		local name = t:getText()
		-- check for an empty string
		if (string.len(name) == 0) then
			return
		end
		-- append .smp
		if (string.find(name, ".smp$") == nil) then
			name = name .. ".smp"
		end
		
		-- replace invalid chars with underscore
		local t = {"\\", "/", ":", "*", "?", "\"", "<", ">", "|"}
		table.foreachi(t, function(k,v) name = string.gsub(name, v, "_") end)

		if (browser:exists(name)) then
			local confirm = WarGameMenu(panel(3))
			confirm:resize(300,120)
			confirm:addLabel(name, 300 / 2, 11)
			confirm:addLabel("File exists, are you sure ?", 300 / 2, 31)
			confirm:addHalfButton("~!Yes", "y", 1 * (300 / 3) - 90, 120 - 16 - 27,
			function()
				confirm:stop()
				RunEditorSaveMap(browser, name, menu, save_as_mod)
			end)
			confirm:addHalfButton("~!No", "n", 3 * (300 / 3) - 116, 120 - 16 - 27, function() confirm:stop() end)
			confirm:run(false)
		else
			RunEditorSaveMap(browser, name, menu, save_as_mod)
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

	menu:run(false)
end

--
--  Load a other map to edit.
--
function RunEditorLoadMenu()
-- TODO : fill this function correctly
--[[
--  RunSelectScenarioMenu()
--  if (buttonStatut == 1) then
--    EditorLoadMap(mapname)
--    StartEditor(mapname, false)
--	  ReloadMods()
--  end
--]]
end

--
--  Change player properties from the editor
--
function RunEditorPlayerProperties()
	local menu = WarGameMenu(panel(5))
	local sizeX = 352
	local sizeY = 352

	menu:resize(sizeX, sizeY)
	menu:addLabel("Player Properties", sizeX / 2, 11)

	local types = {"neutral", "nobody", "computer", "person", "rescue-passive", "rescue-active"}
	local civilization_names = GetCivilizations()
	local faction_list = {}
	local ais = { "passive", "land-attack", "northern-wastelands-goblins" }

	local player_list = {}
	local player_properties = {}
	for i = 1,15 do
		player_properties[i] = {}
		player_properties[i]["Type"] = Map.Info.PlayerType[i-1] - 2
		player_properties[i]["Civilization"] = Players[i-1].Race
		player_properties[i]["Faction"] = GetPlayerData(i-1, "Faction")
		player_properties[i]["AI"] = 0
		for j = 1,table.getn(ais) do
			if (ais[j] == Players[i-1].AiName) then player_properties[i].AI = j-1 end
		end
		player_properties[i]["Gold"] = Players[i-1].Resources[1]
		player_properties[i]["Lumber"] = Players[i-1].Resources[2]
		player_properties[i]["Stone"] = Players[i-1].Resources[5]
		table.insert(player_list, "Player " .. i)
	end
	
	local current_player
	local current_player_type
	local current_player_civilization
	local current_player_civilization_label
	local current_player_faction
	local current_player_faction_label
	local current_player_ai
	local current_player_ai_label
	local current_player_gold
	local current_player_gold_label
	local current_player_lumber
	local current_player_lumber_label
	local current_player_stone
	local current_player_stone_label
	
	local function PlayerChanged()
		current_player_type:setSelected(player_properties[current_player:getSelected() + 1].Type)
		current_player_civilization:setSelected(player_properties[current_player:getSelected() + 1].Civilization)
		
		faction_list = GetCivilizationFactionNames(civilization_names[current_player_civilization:getSelected() + 1])
		table.insert(faction_list, "")
		current_player_faction:setList(faction_list)
		current_player_faction:setSelected(GetElementIndexFromArray(faction_list, player_properties[current_player:getSelected() + 1].Faction) - 1)
		current_player_faction:setSize(236, 20)
		
		current_player_ai:setSelected(player_properties[current_player:getSelected() + 1].AI)
		current_player_gold:setText(player_properties[current_player:getSelected() + 1].Gold)
		current_player_lumber:setText(player_properties[current_player:getSelected() + 1].Lumber)
		current_player_stone:setText(player_properties[current_player:getSelected() + 1].Stone)
		local player_active = current_player_type:getSelected() ~= 1
		current_player_civilization:setVisible(player_active)
		current_player_civilization_label:setVisible(player_active)
		current_player_faction:setVisible(player_active)
		current_player_faction_label:setVisible(player_active)
		current_player_ai:setVisible(player_active)
		current_player_ai_label:setVisible(player_active)
		current_player_gold:setVisible(player_active)
		current_player_gold_label:setVisible(player_active)
		current_player_lumber:setVisible(player_active)
		current_player_lumber_label:setVisible(player_active)
		current_player_stone:setVisible(player_active)
		current_player_stone_label:setVisible(player_active)
	end

	current_player = menu:addDropDown(player_list, (sizeX / 2) - 60, 11 + (36 * 1), function(dd) PlayerChanged() end)
	current_player:setSize(120, 20)
		
	menu:addLabel(_("Type:"), 10, 14 + 36 * 2, Fonts["game"], false)
	current_player_type = menu:addDropDown(types, (sizeX / 2) - 60 - 10, 11 + 36 * 2, function(dd)
		player_properties[current_player:getSelected() + 1].Type = current_player_type:getSelected()
		PlayerChanged()
	end)
	current_player_type:setSize(236, 20)
	
	current_player_civilization_label = menu:addLabel(_("Civilization:"), 10, 14 + 36 * 3, Fonts["game"], false)
	current_player_civilization = menu:addDropDown(civilization_names, (sizeX / 2) - 60 - 10, 11 + 36 * 3, function(dd)
		player_properties[current_player:getSelected() + 1].Civilization = current_player_civilization:getSelected()
		PlayerChanged()
	end)
	current_player_civilization:setSize(236, 20)
	
	current_player_faction_label = menu:addLabel(_("Faction:"), 10, 14 + 36 * 4, Fonts["game"], false)
	current_player_faction = menu:addDropDown(faction_list, (sizeX / 2) - 60 - 10, 11 + 36 * 4, function(dd)
		player_properties[current_player:getSelected() + 1].Faction = faction_list[current_player_faction:getSelected() + 1]
	end)
	current_player_faction:setSize(236, 20)
	
	current_player_ai_label = menu:addLabel(_("AI:"), 10, 14 + 36 * 5, Fonts["game"], false)
	current_player_ai = menu:addDropDown(ais, (sizeX / 2) - 60 - 10, 11 + 36 * 5, function(dd)
		player_properties[current_player:getSelected() + 1].AI = current_player_ai:getSelected()
	end)
	current_player_ai:setSize(236, 20)
	
	current_player_gold_label = menu:addLabel(_("Gold:"), 10, 12 + 36 * 6, Fonts["game"], false)
	current_player_gold = menu:addTextInputField(player_properties[current_player:getSelected() + 1].Gold, (sizeX / 2) - 60 - 10, 11 + 36 * 6, 60)

	current_player_lumber_label = menu:addLabel(_("Lumber:"), (sizeX / 2) + 10, 12 + 36 * 6, Fonts["game"], false)
	current_player_lumber = menu:addTextInputField(player_properties[current_player:getSelected() + 1].Lumber, sizeX - 60 - 10, 11 + 36 * 6, 60)

	current_player_stone_label = menu:addLabel(_("Stone:"), 10, 12 + 36 * 7, Fonts["game"], false)
	current_player_stone = menu:addTextInputField(player_properties[current_player:getSelected() + 1].Stone, (sizeX / 2) - 60 - 10, 11 + 36 * 7, 60)

	local function listen()
		player_properties[current_player:getSelected() + 1].Gold = current_player_gold:getText()
		player_properties[current_player:getSelected() + 1].Lumber = current_player_lumber:getText()
		player_properties[current_player:getSelected() + 1].Stone = current_player_stone:getText()
	end
	local listener = LuaActionListener(listen)
	menu:addLogicCallback(listener)
	
	PlayerChanged()
	
	menu:addHalfButton("~!OK", "o", 20 + 48, sizeY - 40,
		function()
			for i = 0, 14 do
				Map.Info.PlayerType[i] = player_properties[i + 1].Type + 2
				Players[i].Race = player_properties[i + 1].Civilization
				SetPlayerData(i, "Faction", player_properties[i + 1].Faction)
				Players[i].AiName = ais[player_properties[i + 1].AI + 1]
				Players[i].Resources[1] = player_properties[i + 1].Gold
				Players[i].Resources[2] = player_properties[i + 1].Lumber
				Players[i].Resources[5] = player_properties[i + 1].Stone
			end
			menu:stop()
		end
	)

	menu:addHalfButton(_("~!Cancel"), "c", 130 + 48, sizeY - 40,
		function() menu:stop() end)

	menu:run(false)
end

--
--  Change player properties from the editor
--
function RunEditorMapProperties()
-- TODO : manage edition of all properties.
	local menu = WarGameMenu(panel(3))

	local sizeX = 384
	local sizeY = 256

	menu:resize(sizeX, sizeY)
	menu:addLabel("Map Properties", sizeX / 2, 11)

	menu:addLabel("Map Name: ", 45, 11 + 36, nil, false)
	local desc = menu:addTextInputField(Map.Info.Description, 15, 36 * 2, 350)

	menu:addLabel("Size: " .. Map.Info.MapWidth .. " x " .. Map.Info.MapHeight, 45, 36 * 3, nil, false)
--	menu:addLabel("Size : ", 15, 36 * 3, nil, false)
--	local sizeX = menu:addTextInputField(Map.Info.MapWidth, 75, 36 * 3, 50)
--	menu:addLabel(" x ", 130, 36 * 3, nil, false)
--	local sizeY = menu:addTextInputField(Map.Info.MapHeight, 160, 36 * 3, 50)

	menu:addLabel("Tileset: ", 45, 36 * 4, nil, false)

	local list = { "Cave", "Conifer Forest (Summer)", "Conifer Forest (Autumn)", "Dungeon", "Fairlimbed Forest", "Swamp"}
	for i=table.getn(list)+1, table.getn(editor_tilesets) do
		table.insert(list, FullyCapitalizeString(string.gsub(editor_tilesets[i], "_", " ")))
	end
	local dropDownTileset = menu:addDropDown(list, 130, 36 * 4, function() end)
	for i = 0,table.getn(list)-1 do
		if (list[1 + i] == Map.Tileset.Name) then dropDownTileset:setSelected(i)
		end
	end
	dropDownTileset:setEnabled(false) -- TODO : manage this properties
	dropDownTileset:setSize(152, 20)

	menu:addHalfButton("~!OK", "o", 1 * (sizeX / 3) - 106 - 10, sizeY - 16 - 27,
		function()
			Map.Info.Description = desc:getText()
			-- TODO : Add others properties
			menu:stop()
		end
	)

	menu:addHalfButton(_("~!Cancel"), "c", 3 * (sizeX / 3) - 106 - 10, sizeY - 16 - 27,
		function() menu:stop() end)

	menu:run(false)
end

function RunEditorCustomDataProperties()
	local menu = WarGameMenu(panel(1))

	menu:addLabel("Custom Data Properties", 128, 11)

	menu:addFullButton("Custom ~!Factions", "f", 16, 40 + 35 * 0, RunEditorFactionProperties)
	menu:addFullButton("Custom ~!Language Words", "l", 16, 40 + 35 * 1, RunEditorLanguageProperties)

	menu:addFullButton("Previous Menu (~<Esc~>)", "escape", 16, 40 + 35 * 6,
		function() menu:stop() end)

	menu:run(false)
end

--
--  Change language properties from the editor
--
function RunEditorLanguageProperties()
	local menu = WarGameMenu(panel(5))
	local sizeX = 352
	local sizeY = 352

	menu:resize(sizeX, sizeY)
	menu:addLabel("Custom Language Words", sizeX / 2, 11)

	local word_type_list = {"noun", "verb", "adjective", "pronoun", "adverb", "conjunction", "adposition", "article"}
	local gender_list = {"masculine", "feminine", "neuter", "no-gender"}
	local name_type_list = {"person-male", "person-female", "province", "settlement", "terrain-hills", "terrain-mountains", "unit-class-barracks", "unit-class-dock", "unit-class-farm", "unit-class-lumber-mill", "unit-class-smithy", "unit-class-stables", "unit-class-town-hall", "unit-class-watch-tower", "unit-class-siege-engine"}
	local word_junction_type_list = {"compound", "separate"}
	local affix_type_list = {"prefix", "infix", "suffix"}

	local language_ident_list = GetLanguages(true)
	RemoveElementFromArray(language_ident_list, "avestan")
	RemoveElementFromArray(language_ident_list, "basque")
	RemoveElementFromArray(language_ident_list, "etruscan")
	RemoveElementFromArray(language_ident_list, "greek")
	RemoveElementFromArray(language_ident_list, "illyrian")
	RemoveElementFromArray(language_ident_list, "minoan")
	RemoveElementFromArray(language_ident_list, "phrygian")
	RemoveElementFromArray(language_ident_list, "proto-slavic")
	RemoveElementFromArray(language_ident_list, "russian")
	RemoveElementFromArray(language_ident_list, "thracian")
	table.sort(language_ident_list)
	local language_list = {}
	for i=1,table.getn(language_ident_list) do
		table.insert(language_list, GetLanguageData(language_ident_list[i], "Name"))
	end
		
	local current_language
	local current_word
	local word_list = {}
	local word_properties = {}
	for i=1,table.getn(language_ident_list) do
		word_list[i] = GetLanguageData(language_ident_list[i], "ModWords", Map.Info.Filename)
	end
	for i=1,table.getn(language_ident_list) do
		word_properties[i] = {}
		for j=1,table.getn(word_list[i]) do
			word_properties[i][j] = {}
			word_properties[i][j].Type = GetLanguageWordData(language_ident_list[i], word_list[i][j], "Type")
			word_properties[i][j].Gender = GetLanguageWordData(language_ident_list[i], word_list[i][j], "Gender")
			word_properties[i][j].Meaning = GetLanguageWordData(language_ident_list[i], word_list[i][j], "Meaning")
			word_properties[i][j].NameTypes = GetLanguageWordData(language_ident_list[i], word_list[i][j], "NameTypes")
			word_properties[i][j].AffixNameTypes = {}
			for k=1,table.getn(word_junction_type_list) do
				word_properties[i][j].AffixNameTypes[k] = {}
				for n=1,table.getn(affix_type_list) do
					word_properties[i][j].AffixNameTypes[k][n] = GetLanguageWordData(language_ident_list[i], word_list[i][j], "AffixNameTypes", word_junction_type_list[k], affix_type_list[n])
				end
			end
		end
	end
	
	CleanLanguageModWords(Map.Info.Filename)
	
	local word_type
	local word_type_label
	local gender
	local gender_label
	local meaning
	local meaning_label
	local name_type
	local name_type_checkbox
	local name_type_label
	local affix_name_type_word_junction_type
	local affix_name_type_affix_type
	local affix_name_type_checkbox
	local delete_word_button
	
	local function NameTypeChanged()
		name_type_checkbox:setMarked(GetArrayIncludes(word_properties[current_language:getSelected() + 1][current_word:getSelected() + 1].NameTypes, name_type_list[name_type:getSelected() + 1]))
		
		affix_name_type_checkbox:setMarked(GetArrayIncludes(word_properties[current_language:getSelected() + 1][current_word:getSelected() + 1].AffixNameTypes[affix_name_type_word_junction_type:getSelected() + 1][affix_name_type_affix_type:getSelected() + 1], name_type_list[name_type:getSelected() + 1]))
	end
	
	local function WordTypeChanged()
		local has_gender = (word_properties[current_language:getSelected() + 1][current_word:getSelected() + 1].Type == "noun" or word_properties[current_language:getSelected() + 1][current_word:getSelected() + 1].Type == "article")

		if (has_gender) then
			if (word_properties[current_language:getSelected() + 1][current_word:getSelected() + 1].Gender == "") then
				word_properties[current_language:getSelected() + 1][current_word:getSelected() + 1].Gender = "neuter"
			end
			gender:setSelected(GetElementIndexFromArray(gender_list, word_properties[current_language:getSelected() + 1][current_word:getSelected() + 1].Gender) - 1)
		else
			word_properties[current_language:getSelected() + 1][current_word:getSelected() + 1].Gender = ""
			gender:setSelected(0)
		end
		
		gender:setVisible(has_gender)
		gender_label:setVisible(has_gender)		
	end
	
	local function WordChanged()
		word_type:setSelected(GetElementIndexFromArray(word_type_list, word_properties[current_language:getSelected() + 1][current_word:getSelected() + 1].Type) - 1)
		
		WordTypeChanged()
		
		meaning:setText(word_properties[current_language:getSelected() + 1][current_word:getSelected() + 1].Meaning)
		
		NameTypeChanged()
	end
	
	local function LanguageChanged(new_word)
		current_word:setList(word_list[current_language:getSelected() + 1])
		current_word:setSize(120, 20)
		if (new_word == nil) then
			current_word:setSelected(0)
		else
			current_word:setSelected(GetElementIndexFromArray(word_list[current_language:getSelected() + 1], new_word) - 1)
		end
		
		local has_words = table.getn(word_list[current_language:getSelected() + 1]) > 0
		
		current_word:setVisible(has_words)
		word_type:setVisible(has_words)
		word_type_label:setVisible(has_words)
		meaning:setVisible(has_words)
		meaning_label:setVisible(has_words)
		name_type:setVisible(has_words)
		name_type_label:setVisible(has_words)
		name_type_checkbox:setVisible(has_words)
		affix_name_type_word_junction_type:setVisible(has_words)
		affix_name_type_affix_type:setVisible(has_words)
		affix_name_type_checkbox:setVisible(has_words)
		delete_word_button:setVisible(has_words)

		if (has_words) then
			WordChanged()
		else
			gender:setVisible(false)
			gender_label:setVisible(false)
		end		
	end

	current_language = menu:addDropDown(language_list, (sizeX / 2) - 60, 11 + (34 * 1), function(dd) LanguageChanged() end)
	current_language:setSize(120, 20)
	current_language:setSelected(0)
		
	current_word = menu:addDropDown(word_list[current_language:getSelected() + 1], (sizeX / 2) - 60, 11 + (34 * 2), function(dd) WordChanged() end)
	current_word:setSize(120, 20)
		
	word_type_label = menu:addLabel(_("Type:"), 10, 14 + 34 * 3, Fonts["game"], false)
	word_type = menu:addDropDown(word_type_list, (sizeX / 2) - 60 - 10, 11 + 34 * 3, function(dd)
		word_properties[current_language:getSelected() + 1][current_word:getSelected() + 1].Type = word_type_list[word_type:getSelected() + 1]
		WordTypeChanged()
	end)
	word_type:setSize(236, 20)
	word_type:setSelected(0)

	meaning_label = menu:addLabel(_("Meaning:"), 10, 12 + 34 * 4, Fonts["game"], false)
	meaning = menu:addTextInputField("", (sizeX / 2) - 60 - 10, 11 + 34 * 4, 120)
			
	gender_label = menu:addLabel(_("Gender:"), 10, 14 + 34 * 5, Fonts["game"], false)
	gender = menu:addDropDown(gender_list, (sizeX / 2) - 60 - 10, 11 + 34 * 5, function(dd)
		word_properties[current_language:getSelected() + 1][current_word:getSelected() + 1].Gender = gender_list[gender:getSelected() + 1]
	end)
	gender:setSize(236, 20)
	gender:setSelected(0)

	name_type_label = menu:addLabel(_("Name Types:"), 10, 14 + 34 * 6, Fonts["game"], false)
	name_type = menu:addDropDown(name_type_list, (sizeX / 2) - 60 - 10, 11 + 34 * 6, function(dd) NameTypeChanged() end)
	name_type:setSize(236 - 19 - 10, 20)
	name_type:setSelected(0)
	
	name_type_checkbox = menu:addImageCheckBox("", sizeX - 19 - 10, 11 + 34 * 6,
	function()
		if (name_type_checkbox:isMarked()) then
			if (GetArrayIncludes(word_properties[current_language:getSelected() + 1][current_word:getSelected() + 1].NameTypes, name_type_list[name_type:getSelected() + 1]) == false) then
				table.insert(word_properties[current_language:getSelected() + 1][current_word:getSelected() + 1].NameTypes, name_type_list[name_type:getSelected() + 1])
			end
		else
			RemoveElementFromArray(word_properties[current_language:getSelected() + 1][current_word:getSelected() + 1].NameTypes, name_type_list[name_type:getSelected() + 1])
		end
	end)
	name_type_checkbox:setMarked(false)

	affix_name_type_word_junction_type = menu:addDropDown(word_junction_type_list, (sizeX / 2) - 60 - 10, 11 + 34 * 7, function(dd) NameTypeChanged() end)
	affix_name_type_word_junction_type:setSize(((236 - 19 - 10) / 2) - 1, 20)
	affix_name_type_word_junction_type:setSelected(0)
	
	affix_name_type_affix_type = menu:addDropDown(affix_type_list, (sizeX / 2) - 60 - 10 + ((236 - 19 - 10) / 2) + 2, 11 + 34 * 7, function(dd) NameTypeChanged() end)
	affix_name_type_affix_type:setSize(((236 - 19 - 10) / 2) - 1, 20)
	affix_name_type_affix_type:setSelected(0)
	
	affix_name_type_checkbox = menu:addImageCheckBox("", sizeX - 19 - 10, 11 + 34 * 7,
	function()
		if (affix_name_type_checkbox:isMarked()) then
			if (GetArrayIncludes(word_properties[current_language:getSelected() + 1][current_word:getSelected() + 1].AffixNameTypes[affix_name_type_word_junction_type:getSelected() + 1][affix_name_type_affix_type:getSelected() + 1], name_type_list[name_type:getSelected() + 1]) == false) then
				table.insert(word_properties[current_language:getSelected() + 1][current_word:getSelected() + 1].AffixNameTypes[affix_name_type_word_junction_type:getSelected() + 1][affix_name_type_affix_type:getSelected() + 1], name_type_list[name_type:getSelected() + 1])
			end
		else
			RemoveElementFromArray(word_properties[current_language:getSelected() + 1][current_word:getSelected() + 1].AffixNameTypes[affix_name_type_word_junction_type:getSelected() + 1][affix_name_type_affix_type:getSelected() + 1], name_type_list[name_type:getSelected() + 1])
		end
	end)
	affix_name_type_checkbox:setMarked(false)

	local function listen()
		local has_words = table.getn(word_list[current_language:getSelected() + 1]) > 0
		if (has_words) then
			word_properties[current_language:getSelected() + 1][current_word:getSelected() + 1].Meaning = meaning:getText()
		end
	end
	local listener = LuaActionListener(listen)
	menu:addLogicCallback(listener)
	
	menu:addHalfButton("~!Add", "a", 20 + 48, sizeY - 36 * 2,
		function()
			local sub_menu = WarGameMenu(panel(3))
			sub_menu:setSize(384, 256)
			sub_menu:setPosition((Video.Width - sub_menu:getWidth()) / 2, (Video.Height - sub_menu:getHeight()) / 2)
			sub_menu:addLabel(_("Create Word"), 176, 11)
			
			local sub_sizeX = 384
			local sub_sizeY = 256

			sub_menu:addLabel(_("Word:"), 10, 12 + 36 * 1, Fonts["game"], false)
			local word_text = sub_menu:addTextInputField("", (sub_sizeX / 2) - 60 - 10, 11 + 36 * 1, 120)
			
			sub_menu:addFullButton("Crea~!te", "t", 176 - (224 / 2), sub_sizeY - 40 * 2,
				function()
					if (word_text:getText() == "") then
						GenericDialog("Error", "The word cannot be empty.")
					elseif (GetArrayIncludes(word_list[current_language:getSelected() + 1], word_text:getText()) or GetArrayIncludes(GetLanguageData(language_ident_list[current_language:getSelected() + 1], "Words"), word_text:getText())) then
						GenericDialog("Error", "There is already another word for that language spelled that way.")
					elseif (IsNameValidForWord(word_text:getText()) == false) then
						GenericDialog("Error", "The word is invalid.")
					else
						local new_word_id = table.getn(word_list[current_language:getSelected() + 1]) + 1
						word_list[current_language:getSelected() + 1][new_word_id] = word_text:getText()
						word_properties[current_language:getSelected() + 1][new_word_id] = {}
						word_properties[current_language:getSelected() + 1][new_word_id].Type = "noun"
						word_properties[current_language:getSelected() + 1][new_word_id].Meaning = ""
						word_properties[current_language:getSelected() + 1][new_word_id].Gender = "neuter"
						word_properties[current_language:getSelected() + 1][new_word_id].NameTypes = {}
						word_properties[current_language:getSelected() + 1][new_word_id].AffixNameTypes = {}
						for k=1,table.getn(word_junction_type_list) do
							word_properties[current_language:getSelected() + 1][new_word_id].AffixNameTypes[k] = {}
							for n=1,table.getn(affix_type_list) do
								word_properties[current_language:getSelected() + 1][new_word_id].AffixNameTypes[k][n] = {}
							end
						end
						
						LanguageChanged(word_text:getText())
						sub_menu:stop()
					end
				end
			)
			sub_menu:addFullButton("~!Cancel", "c", 176 - (224 / 2), sub_sizeY - 40 * 1,
				function()
					sub_menu:stop()
				end
			)
			sub_menu:run(false)
		end
	)
	
	delete_word_button = menu:addHalfButton("~!Delete", "d", 130 + 48, sizeY - 36 * 2,
		function()
			local confirm = WarGameMenu(panel(4))

			confirm:resize(288,128)

			confirm:addLabel("Delete " .. word_list[current_language:getSelected() + 1][current_word:getSelected() + 1], 288 / 2, 11)
			confirm:addLabel("Are you sure? This cannot be undone.", 288 / 2, 45, Fonts["game"])

			confirm:addHalfButton("~!Yes", "y", 1 * (288 / 3) - 90, 120 - 16 - 27,
				function()
					DeleteModWord(language_ident_list[current_language:getSelected() + 1], word_list[current_language:getSelected() + 1][current_word:getSelected() + 1])
					RemoveElementFromArray(word_list[current_language:getSelected() + 1], word_list[current_language:getSelected() + 1][current_word:getSelected() + 1])
					word_properties[current_language:getSelected() + 1][current_word:getSelected() + 1] = nil
					LanguageChanged()
					confirm:stop()
				end
			)

			confirm:addHalfButton("~!No", "n", 3 * (288 / 3) - 116, 120 - 16 - 27,
				function() confirm:stop() end
			)

			confirm:run()
		end
	)
	
	LanguageChanged()
	
	menu:addHalfButton("~!OK", "o", 20 + 48, sizeY - 36 * 1,
		function()
			for i=1,table.getn(word_list) do
				for j=1,table.getn(word_list[i]) do
					local word_definition = {
						Language = language_ident_list[i],
						Type = word_properties[i][j].Type,
						NameTypes = word_properties[i][j].NameTypes,
						Mod = Map.Info.Filename
					}
					if (word_properties[i][j].Meaning ~= "") then
						word_definition.Meanings = {word_properties[i][j].Meaning}
					end
					if (word_properties[i][j].Gender ~= "") then
						word_definition.Gender = word_properties[i][j].Gender
					end
					word_definition.AffixNameTypes = {}
					for k=1,table.getn(word_junction_type_list) do
						for n=1,table.getn(affix_type_list) do
							for o=1,table.getn(word_properties[i][j].AffixNameTypes[k][n]) do
								table.insert(word_definition.AffixNameTypes, word_junction_type_list[k])
								table.insert(word_definition.AffixNameTypes, affix_type_list[n])
								table.insert(word_definition.AffixNameTypes, word_properties[i][j].AffixNameTypes[k][n][o])
							end
						end
					end
					
					DefineLanguageWord(word_list[i][j], word_definition)
				end
			end
			menu:stop()
		end
	)

	menu:addHalfButton(_("~!Cancel"), "c", 130 + 48, sizeY - 36 * 1,
		function() menu:stop() end)

	menu:run(false)
end

--
--  Change faction properties from the editor
--
function RunEditorFactionProperties()
	local menu = WarGameMenu(panel(5))
	local sizeX = 352
	local sizeY = 352

	menu:resize(sizeX, sizeY)
	menu:addLabel("Custom Factions", sizeX / 2, 11)

	local faction_type_list = {"tribe", "polity"}
	local color_list = GetPlayerColors()

	local civilization_ident_list = GetCivilizations()
	table.sort(civilization_ident_list)
	local civilization_list = {}
	for i=1,table.getn(civilization_ident_list) do
		table.insert(civilization_list, GetCivilizationData(civilization_ident_list[i], "Display"))
	end
	
	local language_ident_list = GetLanguages(true)
	RemoveElementFromArray(language_ident_list, "avestan")
	RemoveElementFromArray(language_ident_list, "basque")
	RemoveElementFromArray(language_ident_list, "etruscan")
	RemoveElementFromArray(language_ident_list, "greek")
	RemoveElementFromArray(language_ident_list, "illyrian")
	RemoveElementFromArray(language_ident_list, "minoan")
	RemoveElementFromArray(language_ident_list, "phrygian")
	RemoveElementFromArray(language_ident_list, "proto-slavic")
	RemoveElementFromArray(language_ident_list, "russian")
	RemoveElementFromArray(language_ident_list, "thracian")
	table.sort(language_ident_list)
	local language_list = {}
	for i=1,table.getn(language_ident_list) do
		table.insert(language_list, GetLanguageData(language_ident_list[i], "Name"))
	end
	table.insert(language_ident_list, "")
	table.insert(language_list, "")
		
	local current_civilization
	local current_faction
	local faction_list = {}
	local faction_properties = {}
	for i=1,table.getn(civilization_ident_list) do
		faction_list[i] = GetCivilizationData(civilization_ident_list[i], "Factions", Map.Info.Filename)
	end
	for i=1,table.getn(civilization_ident_list) do
		faction_properties[i] = {}
		for j=1,table.getn(faction_list[i]) do
			faction_properties[i][j] = {}
			faction_properties[i][j].Type = GetFactionData(civilization_ident_list[i], faction_list[i][j], "Type")
			faction_properties[i][j].Color = GetFactionData(civilization_ident_list[i], faction_list[i][j], "Color")
			if (GetFactionData(civilization_ident_list[i], faction_list[i][j], "Language") ~= GetCivilizationData(civilization_ident_list[i], "Language")) then
				faction_properties[i][j].Language = GetFactionData(civilization_ident_list[i], faction_list[i][j], "Language")
			else
				faction_properties[i][j].Language = ""
			end
			faction_properties[i][j].FactionUpgrade = GetFactionData(civilization_ident_list[i], faction_list[i][j], "FactionUpgrade")
			faction_properties[i][j].ParentFaction = GetFactionData(civilization_ident_list[i], faction_list[i][j], "ParentFaction")
		end
	end
	
	local civilization_factions = {}
	local faction_upgrade_list = {}
	for i=1,table.getn(civilization_ident_list) do
		faction_upgrade_list[i] = {}
		civilization_factions[i] = GetCivilizationData(civilization_ident_list[i], "Factions")
		for j=1,table.getn(civilization_factions[i]) do
			if (GetFactionData(civilization_ident_list[i], civilization_factions[i][j], "FactionUpgrade") ~= "" and GetArrayIncludes(faction_upgrade_list[i], GetFactionData(civilization_ident_list[i], civilization_factions[i][j], "FactionUpgrade")) == false) then
				table.insert(faction_upgrade_list[i], GetFactionData(civilization_ident_list[i], civilization_factions[i][j], "FactionUpgrade"))
			end
		end
		table.insert(faction_upgrade_list[i], "")
	end
	
	local parent_faction_list = {}

	local faction_type
	local faction_type_label
	local language
	local language_label
	local color
	local color_label
	local faction_upgrade
	local faction_upgrade_label
	local parent_faction
	local parent_faction_label
	local delete_faction_button
	
	local function FactionChanged()
		faction_type:setSelected(GetElementIndexFromArray(faction_type_list, faction_properties[current_civilization:getSelected() + 1][current_faction:getSelected() + 1].Type) - 1)
		
		language:setSelected(GetElementIndexFromArray(language_ident_list, faction_properties[current_civilization:getSelected() + 1][current_faction:getSelected() + 1].Language) - 1)
		
		color:setSelected(GetElementIndexFromArray(color_list, faction_properties[current_civilization:getSelected() + 1][current_faction:getSelected() + 1].Color) - 1)
		
		faction_upgrade:setSelected(GetElementIndexFromArray(faction_upgrade_list[current_civilization:getSelected() + 1], faction_properties[current_civilization:getSelected() + 1][current_faction:getSelected() + 1].FactionUpgrade) - 1)
		
		parent_faction_list = nil
		parent_faction_list = {}
		for i=1,table.getn(civilization_factions[current_civilization:getSelected() + 1]) do
			if (civilization_factions[current_civilization:getSelected() + 1][i] ~= faction_list[current_civilization:getSelected() + 1][current_faction:getSelected() + 1]) then
				table.insert(parent_faction_list, civilization_factions[current_civilization:getSelected() + 1][i])
			end
		end
		table.insert(parent_faction_list, "")
		parent_faction:setList(parent_faction_list)
		parent_faction:setSize(236, 20)
		parent_faction:setSelected(GetElementIndexFromArray(parent_faction_list, faction_properties[current_civilization:getSelected() + 1][current_faction:getSelected() + 1].ParentFaction) - 1)
	end
	
	local function CivilizationChanged(new_faction)
		current_faction:setList(faction_list[current_civilization:getSelected() + 1])
		current_faction:setSize(120, 20)
		if (new_faction == nil) then
			current_faction:setSelected(0)
		else
			current_faction:setSelected(GetElementIndexFromArray(faction_list[current_civilization:getSelected() + 1], new_faction) - 1)
		end
		
		local has_factions = table.getn(faction_list[current_civilization:getSelected() + 1]) > 0
		
		current_faction:setVisible(has_factions)
		faction_type:setVisible(has_factions)
		faction_type_label:setVisible(has_factions)
		language:setVisible(has_factions)
		language_label:setVisible(has_factions)
		color:setVisible(has_factions)
		color_label:setVisible(has_factions)
		faction_upgrade:setVisible(has_factions)
		faction_upgrade_label:setVisible(has_factions)
		faction_upgrade:setList(faction_upgrade_list[current_civilization:getSelected() + 1])
		faction_upgrade:setSize(236, 20)
		parent_faction:setVisible(has_factions)
		parent_faction_label:setVisible(has_factions)
		delete_faction_button:setVisible(has_factions)

		if (has_factions) then
			FactionChanged()
		end		
	end

	current_civilization = menu:addDropDown(civilization_list, (sizeX / 2) - 60, 11 + (34 * 1), function(dd) CivilizationChanged() end)
	current_civilization:setSize(120, 20)
	current_civilization:setSelected(0)
		
	current_faction = menu:addDropDown(faction_list[current_civilization:getSelected() + 1], (sizeX / 2) - 60, 11 + (34 * 2), function(dd) FactionChanged() end)
	current_faction:setSize(120, 20)
		
	faction_type_label = menu:addLabel(_("Type:"), 10, 14 + 34 * 3, Fonts["game"], false)
	faction_type = menu:addDropDown(faction_type_list, (sizeX / 2) - 60 - 10, 11 + 34 * 3, function(dd)
		faction_properties[current_civilization:getSelected() + 1][current_faction:getSelected() + 1].Type = faction_type_list[faction_type:getSelected() + 1]
	end)
	faction_type:setSize(236, 20)
	faction_type:setSelected(0)

	parent_faction_label = menu:addLabel(_("Parent:"), 10, 14 + 34 * 4, Fonts["game"], false)
	parent_faction = menu:addDropDown(parent_faction_list, (sizeX / 2) - 60 - 10, 11 + 34 * 4, function(dd)
		faction_properties[current_civilization:getSelected() + 1][current_faction:getSelected() + 1].ParentFaction = parent_faction_list[parent_faction:getSelected() + 1]
	end)
	parent_faction:setSize(236, 20)
	parent_faction:setSelected(0)

	language_label = menu:addLabel(_("Language:"), 10, 14 + 34 * 5, Fonts["game"], false)
	language = menu:addDropDown(language_list, (sizeX / 2) - 60 - 10, 11 + 34 * 5, function(dd)
		faction_properties[current_civilization:getSelected() + 1][current_faction:getSelected() + 1].Language = language_ident_list[language:getSelected() + 1]
	end)
	language:setSize(236, 20)
	language:setSelected(0)

	color_label = menu:addLabel(_("Color:"), 10, 14 + 34 * 6, Fonts["game"], false)
	color = menu:addDropDown(color_list, (sizeX / 2) - 60 - 10, 11 + 34 * 6, function(dd)
		faction_properties[current_civilization:getSelected() + 1][current_faction:getSelected() + 1].Color = color_list[color:getSelected() + 1]
	end)
	color:setSize(236, 20)
	color:setSelected(0)

	faction_upgrade_label = menu:addLabel(_("Upgrade:"), 10, 14 + 34 * 7, Fonts["game"], false)
	faction_upgrade = menu:addDropDown({""}, (sizeX / 2) - 60 - 10, 11 + 34 * 7, function(dd)
		faction_properties[current_civilization:getSelected() + 1][current_faction:getSelected() + 1].FactionUpgrade = faction_upgrade_list[current_civilization:getSelected() + 1][faction_upgrade:getSelected() + 1]
	end)
	faction_upgrade:setSize(236, 20)
	faction_upgrade:setSelected(0)

	menu:addHalfButton("~!Add", "a", 20 + 48, sizeY - 36 * 2,
		function()
			local sub_menu = WarGameMenu(panel(3))
			sub_menu:setSize(384, 256)
			sub_menu:setPosition((Video.Width - sub_menu:getWidth()) / 2, (Video.Height - sub_menu:getHeight()) / 2)
			sub_menu:addLabel(_("Create Faction"), 176, 11)
			
			local sub_sizeX = 384
			local sub_sizeY = 256

			sub_menu:addLabel(_("Faction:"), 10, 12 + 36 * 1, Fonts["game"], false)
			local faction_name = sub_menu:addTextInputField("", (sub_sizeX / 2) - 60 - 10, 11 + 36 * 1, 120)
			
			sub_menu:addFullButton("Crea~!te", "t", 176 - (224 / 2), sub_sizeY - 40 * 2,
				function()
					if (faction_name:getText() == "") then
						GenericDialog("Error", "The faction's name cannot be empty.")
					elseif (GetArrayIncludes(faction_list[current_civilization:getSelected() + 1], faction_name:getText()) or GetArrayIncludes(GetFactions(), faction_name:getText())) then
						GenericDialog("Error", "There is already another faction with that name.")
					elseif (IsNameValidForWord(faction_name:getText()) == false) then
						GenericDialog("Error", "The faction's name is invalid.")
					else
						local new_faction_id = table.getn(faction_list[current_civilization:getSelected() + 1]) + 1
						faction_list[current_civilization:getSelected() + 1][new_faction_id] = faction_name:getText()
						faction_properties[current_civilization:getSelected() + 1][new_faction_id] = {}
						faction_properties[current_civilization:getSelected() + 1][new_faction_id].Type = "tribe"
						faction_properties[current_civilization:getSelected() + 1][new_faction_id].Color = GetCivilizationData(civilization_ident_list[current_civilization:getSelected() + 1], "DefaultColor")
						faction_properties[current_civilization:getSelected() + 1][new_faction_id].Language = ""
						faction_properties[current_civilization:getSelected() + 1][new_faction_id].FactionUpgrade = ""
						faction_properties[current_civilization:getSelected() + 1][new_faction_id].ParentFaction = ""
						table.insert(civilization_factions[current_civilization:getSelected() + 1], faction_name:getText())
						
						CivilizationChanged(faction_name:getText())
						sub_menu:stop()
					end
				end
			)
			sub_menu:addFullButton("~!Cancel", "c", 176 - (224 / 2), sub_sizeY - 40 * 1,
				function()
					sub_menu:stop()
				end
			)
			sub_menu:run(false)
		end
	)
	
	delete_faction_button = menu:addHalfButton("~!Delete", "d", 130 + 48, sizeY - 36 * 2,
		function()
			local confirm = WarGameMenu(panel(4))

			confirm:resize(288,128)

			confirm:addLabel("Delete " .. faction_list[current_civilization:getSelected() + 1][current_faction:getSelected() + 1], 288 / 2, 11)
			confirm:addLabel("Are you sure? This cannot be undone.", 288 / 2, 45, Fonts["game"])

			confirm:addHalfButton("~!Yes", "y", 1 * (288 / 3) - 90, 120 - 16 - 27,
				function()
					DeleteModFaction(civilization_ident_list[current_civilization:getSelected() + 1], faction_list[current_civilization:getSelected() + 1][current_faction:getSelected() + 1])
					RemoveElementFromArray(civilization_factions[current_civilization:getSelected() + 1], faction_list[current_civilization:getSelected() + 1][current_faction:getSelected() + 1])
					RemoveElementFromArray(faction_list[current_civilization:getSelected() + 1], faction_list[current_civilization:getSelected() + 1][current_faction:getSelected() + 1])
					faction_properties[current_civilization:getSelected() + 1][current_faction:getSelected() + 1] = nil
					CivilizationChanged()
					confirm:stop()
				end
			)

			confirm:addHalfButton("~!No", "n", 3 * (288 / 3) - 116, 120 - 16 - 27,
				function() confirm:stop() end
			)

			confirm:run()
		end
	)
	
	CivilizationChanged()
	
	menu:addHalfButton("~!OK", "o", 20 + 48, sizeY - 36 * 1,
		function()
			for i=1,table.getn(faction_list) do
				for j=1,table.getn(faction_list[i]) do
					local faction_definition = {
						Civilization = civilization_ident_list[i],
						Type = faction_properties[i][j].Type,
						ParentFaction = faction_properties[i][j].ParentFaction,
						Language = faction_properties[i][j].Language,
						Colors = {faction_properties[i][j].Color},
						FactionUpgrade = faction_properties[i][j].FactionUpgrade,
						Mod = Map.Info.Filename
					}
					
					DefineFaction(faction_list[i][j], faction_definition)
				end
			end
			menu:stop()
		end
	)

	menu:addHalfButton(_("~!Cancel"), "c", 130 + 48, sizeY - 36 * 1,
		function() menu:stop() end)

	menu:run(false)
end

--
--  Main menu in editor.
--
function RunInEditorMenu()
	local menu = WarGameMenu(panel(1))

	menu:addLabel("Editor Menu", 128, 11)

	menu:addFullButton("Save Map (~<F11~>)", "f11", 16, 40, function() RunEditorSaveMenu(false); end)
--	local buttonEditorLoad = -- To be removed when enabled.
--	menu:addFullButton("Load (~<F12~>)", "f12", 16, 40 + 35 * 1, RunEditorLoadMenu)
	menu:addFullButton("Save as ~!Mod", "m", 16, 40 + 35 * 1, function() RunEditorSaveMenu(true); end)
	menu:addFullButton("Map Properties (~<F5~>)", "f5", 16, 40 + 35 * 2, RunEditorMapProperties)
	menu:addFullButton("Player Properties (~<F6~>)", "f6", 16, 40 + 35 * 3, RunEditorPlayerProperties)
	menu:addFullButton("Custom ~!Data", "d", 16, 40 + 35 * 4, RunEditorCustomDataProperties)

--	buttonEditorLoad:setEnabled(false) -- To be removed when enabled.

	menu:addFullButton("E~!xit to Menu", "x", 16, 40 + 35 * 5,
		function() Editor.Running = EditorNotRunning; menu:stopAll(); end)
	menu:addFullButton("Return to Editor (~<Esc~>)", "escape", 16, 40 + 35 * 6,
		function() menu:stop() end)

	menu:run(false)
end

--
--  Function to edit unit properties in the editor
--
function EditUnitProperties()

	if (GetUnitUnderCursor() == nil) then
		return;
	end
	local menu = WarGameMenu(panel(5))
	local sizeX = 352
	local sizeY = 352

	menu:resize(sizeX, sizeY)
	menu:addLabel(_("Unit Properties"), sizeX / 2, 11)

	menu:addLabel(_("Unit Name"), sizeX / 2, 11 + (36 * 1))
	local name_value = menu:addTextInputField(GetUnitVariable(UnitNumber(GetUnitUnderCursor()), "Name"), sizeX / 2 - 60, 11 + (36 * 2), 120)

	local trait_list = GetUnitTypeData(GetUnitVariable(UnitNumber(GetUnitUnderCursor()), "Ident"), "Traits")
	local prefix_list = GetUnitTypeData(GetUnitVariable(UnitNumber(GetUnitUnderCursor()), "Ident"), "Prefixes")
	local suffix_list = GetUnitTypeData(GetUnitVariable(UnitNumber(GetUnitUnderCursor()), "Ident"), "Suffixes")
	table.insert(trait_list, "") -- for if the unit has no trait
	table.insert(prefix_list, "") -- for if the unit has no prefix
	table.insert(suffix_list, "") -- for if the unit has no suffix

	local display_trait_list = {}
	local display_prefix_list = {}
	local display_suffix_list = {}
	
	for i=1,table.getn(trait_list) do
		table.insert(display_trait_list, tostring(string.gsub(trait_list[i], "upgrade%-", "")))
	end
	for i=1,table.getn(prefix_list) do
		table.insert(display_prefix_list, tostring(string.gsub(prefix_list[i], "upgrade%-item%-prefix%-", "")))
	end
	for i=1,table.getn(suffix_list) do
		table.insert(display_suffix_list, tostring(string.gsub(suffix_list[i], "upgrade%-item%-suffix%-", "")))
	end
	
	
	local unit_trait
	local unit_prefix
	local unit_suffix
	local activeCheckBox
	local resource = GetUnitUnderCursor().Type.GivesResource
	local resourceValue

	if (GetUnitBoolFlag(UnitNumber(GetUnitUnderCursor()), "organic") and table.getn(GetUnitTypeData(GetUnitVariable(UnitNumber(GetUnitUnderCursor()), "Ident"), "Traits")) > 0) then
		menu:addLabel(_("Unit Trait"), sizeX / 2, 11 + (36 * 3))
		unit_trait = menu:addDropDown(display_trait_list, (sizeX / 2) - 60, 11 + (36 * 4), function(dd) end)
		unit_trait:setSize(120, 20)
		unit_trait:setSelected(GetElementIndexFromArray(trait_list, GetUnitVariable(UnitNumber(GetUnitUnderCursor()), "Trait")) - 1)
	end

	if ((GetUnitBoolFlag(UnitNumber(GetUnitUnderCursor()), "Building") or GetUnitBoolFlag(UnitNumber(GetUnitUnderCursor()), "Item"))) then
		if (table.getn(GetUnitTypeData(GetUnitVariable(UnitNumber(GetUnitUnderCursor()), "Ident"), "Prefixes")) > 0) then
			menu:addLabel(_("Prefix"), sizeX / 4, 11 + (36 * 3))
			unit_prefix = menu:addDropDown(display_prefix_list, (sizeX / 4) - 60, 11 + (36 * 4), function(dd) end)
			unit_prefix:setSize(120, 20)
			unit_prefix:setSelected(GetElementIndexFromArray(prefix_list, GetUnitVariable(UnitNumber(GetUnitUnderCursor()), "Prefix")) - 1)
		end
		if (table.getn(GetUnitTypeData(GetUnitVariable(UnitNumber(GetUnitUnderCursor()), "Ident"), "Suffixes")) > 0) then
			menu:addLabel(_("Suffix"), math.floor(sizeX * 3 / 4), 11 + (36 * 3))
			unit_suffix = menu:addDropDown(display_suffix_list, math.floor(sizeX * 3 / 4) - 60, 11 + (36 * 4), function(dd) end)
			unit_suffix:setSize(120, 20)
			unit_suffix:setSelected(GetElementIndexFromArray(suffix_list, GetUnitVariable(UnitNumber(GetUnitUnderCursor()), "Suffix")) - 1)
		end
	end

	if (GetUnitUnderCursor().Type.GivesResource == 0) then
		menu:addLabel(_("Artificial Intelligence"), sizeX / 2, 11 + (36 * 5))
		activeCheckBox = menu:addImageCheckBox(_("Active"), sizeX / 2 - 30, 11 + (36 * 6))
		activeCheckBox:setMarked(GetUnitUnderCursor().Active)
	else
		menu:addLabel(_("Amount of") .. " " .. _(CapitalizeString(GetResourceNameById(resource))), sizeX / 2, 11 + (36 * 5))
		resourceValue = menu:addTextInputField(GetUnitUnderCursor().ResourcesHeld, sizeX / 2 - 30, 11 + (36 * 6), 60)
	end
	
	menu:addLabel(_("Hit Points:"), 10 + (sizeX / 4), 12 + 36 * 7, Fonts["game"], false)
	local hp_value = menu:addTextInputField(GetUnitVariable(UnitNumber(GetUnitUnderCursor()), "HitPoints"), (sizeX / 2) - 60 - 10 + (sizeX / 4), 11 + 36 * 7, 60)

	menu:addHalfButton(_("~!OK"), "o", 20 + 48, sizeY - 40,
		function()
			if (tonumber(resourceValue:getText()) == nil) then
				GenericDialog("Error", "The resource amount must be a number.")
			elseif (tonumber(hp_value:getText()) == nil) then
				GenericDialog("Error", "The hit points must be a number.")
			else
				SetUnitVariable(UnitNumber(GetUnitUnderCursor()), "Name", name_value:getText())
				if (GetUnitBoolFlag(UnitNumber(GetUnitUnderCursor()), "organic") and table.getn(GetUnitTypeData(GetUnitVariable(UnitNumber(GetUnitUnderCursor()), "Ident"), "Traits")) > 0) then
					if (trait_list[unit_trait:getSelected() + 1] ~= GetUnitVariable(UnitNumber(GetUnitUnderCursor()), "Trait")) then
						AcquireTrait(UnitNumber(GetUnitUnderCursor()), trait_list[unit_trait:getSelected() + 1])
					end
				end
				if (GetUnitBoolFlag(UnitNumber(GetUnitUnderCursor()), "Building") or GetUnitBoolFlag(UnitNumber(GetUnitUnderCursor()), "Item")) then
					if (table.getn(GetUnitTypeData(GetUnitVariable(UnitNumber(GetUnitUnderCursor()), "Ident"), "Prefixes")) > 0 and prefix_list[unit_prefix:getSelected() + 1] ~= GetUnitVariable(UnitNumber(GetUnitUnderCursor()), "Prefix")) then
						SetUnitVariable(UnitNumber(GetUnitUnderCursor()), "Prefix", prefix_list[unit_prefix:getSelected() + 1])
					end
					if (table.getn(GetUnitTypeData(GetUnitVariable(UnitNumber(GetUnitUnderCursor()), "Ident"), "Suffixes")) > 0 and suffix_list[unit_suffix:getSelected() + 1] ~= GetUnitVariable(UnitNumber(GetUnitUnderCursor()), "Suffix")) then
						SetUnitVariable(UnitNumber(GetUnitUnderCursor()), "Suffix", suffix_list[unit_suffix:getSelected() + 1])
					end
				end
				if (GetUnitUnderCursor().Type.GivesResource ~= 0) then
					GetUnitUnderCursor().ResourcesHeld = resourceValue:getText();
				else
					GetUnitUnderCursor().Active = activeCheckBox:isMarked();
				end
				if (hp_value:getText() ~= GetUnitVariable(UnitNumber(GetUnitUnderCursor()), "HitPoints", "Max")) then
					SetUnitVariable(UnitNumber(GetUnitUnderCursor()), "HitPoints", tonumber(hp_value:getText()))
				end
				menu:stop()
			end
		end
	)
		
	menu:addHalfButton(_("~!Cancel"), "c", 130 + 48, sizeY - 40,
		function() menu:stop() end)
	menu:run(false)
end

--
--  Add new unit types
--
function EditorCreateUnitType()
	local menu = WarGameMenu(panel(3))
	menu:setSize(384, 256)
	menu:setPosition((Video.Width - menu:getWidth()) / 2, (Video.Height - menu:getHeight()) / 2)
	menu:addLabel(_("Create Unit Type"), 176, 11)
			
	local sizeX = 384
	local sizeY = 256

	menu:addLabel(_("Ident:"), 10, 12 + 36 * 1, Fonts["game"], false)
	local unit_type_ident = menu:addTextInputField("unit-", (sizeX / 2) - 60 - 10, 11 + 36 * 1, 120)
			
	menu:addLabel(_("Name:"), 10, 12 + 36 * 2, Fonts["game"], false)
	local unit_type_name = menu:addTextInputField("", (sizeX / 2) - 60 - 10, 11 + 36 * 2, 120)
	
	local unit_types_list = {}
	local potential_unit_types_list = GetUnitTypes()
	for i=1,table.getn(potential_unit_types_list) do
		if (string.find(potential_unit_types_list[i], "template") ~= nil and potential_unit_types_list[i] ~= "unit-template-unit" and potential_unit_types_list[i] ~= "unit-template-building") then
			table.insert(unit_types_list, potential_unit_types_list[i])
		end
	end
--	table.insert(unit_types_list, "")
	
	local parent_unit_type_label = menu:addLabel(_("Parent:"), 10, 14 + 34 * 3, Fonts["game"], false)
	local parent_unit_type = menu:addDropDown(unit_types_list, (sizeX / 2) - 60 - 10, 11 + 34 * 3, function(dd) end)
	parent_unit_type:setSize(236, 20)
--	parent_unit_type:setSelected(GetElementIndexFromArray(unit_types_list, "") - 1)
	parent_unit_type:setSelected(0)
			
	menu:addFullButton("Crea~!te", "t", 176 - (224 / 2), sizeY - 40 * 2,
		function()
			if (string.sub(unit_type_ident:getText(), 0, 5) ~= "unit-") then
				GenericDialog("Error", "The unit type's ident must begin with \"unit-\".")
			elseif (unit_type_ident:getText() == "") then
				GenericDialog("Error", "The unit type's ident cannot be empty.")
			elseif (GetArrayIncludes(GetUnitTypes(), unit_type_ident:getText())) then
				GenericDialog("Error", "There is already another unit type with that ident.")
			elseif (IsNameValidForWord(unit_type_ident:getText()) == false) then
				GenericDialog("Error", "The unit type's ident is invalid.")
			elseif (IsNameValidForWord(unit_type_name:getText()) == false) then
				GenericDialog("Error", "The unit type's name is invalid.")
			else
				local unit_type_definition = {
					Name = unit_type_name:getText(),
					Mod = Map.Info.Filename
				}				
				if (unit_types_list[parent_unit_type:getSelected() + 1] ~= "") then
					unit_type_definition.Parent = unit_types_list[parent_unit_type:getSelected() + 1]
				end
				
				if (unit_types_list[parent_unit_type:getSelected() + 1] == "" or GetUnitTypeData(unit_types_list[parent_unit_type:getSelected() + 1], "Icon") == "") then
					unit_type_definition.Icon = "icon-cancel"
				end
				
				if (unit_types_list[parent_unit_type:getSelected() + 1] == "" or GetUnitTypeData(unit_types_list[parent_unit_type:getSelected() + 1], "Animations") == "") then
					unit_type_definition.Animations = "animations-melee-unit-new"
				end
				
				if (unit_types_list[parent_unit_type:getSelected() + 1] == "" or GetUnitTypeData(unit_types_list[parent_unit_type:getSelected() + 1], "Image") == "") then
					unit_type_definition.Image = {"file", "germanic/units/worker.png", "size", {72, 72}}
				end
				
				DefineUnitType(unit_type_ident:getText(), unit_type_definition)

				menu:stop()
			end
		end
	)
	menu:addFullButton("~!Cancel", "c", 176 - (224 / 2), sizeY - 40 * 1,
		function()
			menu:stop()
		end
	)
	menu:run(false)
end

--
--  Function to edit unit type properties in the editor
--
function EditUnitTypeProperties(unit_type)

	if (unit_type == "" or unit_type == nil) then
		return;
	end
	local menu = WarGameMenu(panel(5))
	local sizeX = 352
	local sizeY = 352

	menu:resize(sizeX, sizeY)
	menu:addLabel(_(GetUnitTypeName(unit_type)) .. " " .. _("Properties"), sizeX / 2, 11)

	local main_properties_button = menu:addFullButton(_("~!Main Properties"), "m", (sizeX / 2) - (224 / 2), sizeY - 40 - (36 * 7),
		function()
			EditUnitTypePropertiesMain(unit_type)
		end
	)

	local graphics_properties_button = menu:addFullButton(_("~!Graphics"), "g", (sizeX / 2) - (224 / 2), sizeY - 40 - (36 * 6),
		function()
			EditUnitTypePropertiesGraphics(unit_type)
		end
	)

	menu:addFullButton(_("S~!tats"), "t", (sizeX / 2) - (224 / 2), sizeY - 40 - (36 * 5),
		function()
			EditUnitTypePropertiesStats(unit_type)
		end
	)

	menu:addFullButton(_("~!Resource Stats"), "r", (sizeX / 2) - (224 / 2), sizeY - 40 - (36 * 4),
		function()
			EditUnitTypePropertiesResourceStats(unit_type)
		end
	)

	menu:addFullButton(_("~!Sounds"), "s", (sizeX / 2) - (224 / 2), sizeY - 40 - (36 * 3),
		function()
			EditUnitTypePropertiesSounds(unit_type)
		end
	)

	local training_properties_button = menu:addFullButton(_("~!Training"), "t", (sizeX / 2) - (224 / 2), sizeY - 40 - (36 * 2),
		function()
			EditUnitTypePropertiesTraining(unit_type)
		end
	)

	menu:addFullButton(_("~!OK"), "o", (sizeX / 2) - (224 / 2), sizeY - 40 - (36 * 1),
		function()
			menu:stop()
		end
	)
	
	if (GetUnitTypeData(unit_type, "Mod") ~= Map.Info.Filename) then
		main_properties_button:setEnabled(false)
		graphics_properties_button:setEnabled(false)
	end

	menu:run(false)
end

function EditUnitTypePropertiesMain(unit_type)

	if (unit_type == "" or unit_type == nil) then
		return;
	end
	local menu = WarGameMenu(panel(5))
	local sizeX = 352
	local sizeY = 352

	menu:resize(sizeX, sizeY)
	menu:addLabel(_(GetUnitTypeName(unit_type)) .. " " .. _("Properties"), sizeX / 2, 11)

	local civilization_list = GetCivilizations()
	table.insert(civilization_list, "")
	local faction_list = {}
	
	local civilization
	local civilization_label
	local faction
	local faction_label
  
	local function CivilizationChanged()
		faction_list = nil
		if (civilization_list[civilization:getSelected() + 1] ~= "") then
			faction_list = GetFactions(civilization_list[civilization:getSelected() + 1])
		else
			faction_list = {}
		end
		table.insert(faction_list, "")
		faction:setList(faction_list)
		faction:setSize(236, 20)
		faction:setSelected(0)
	end
	
	civilization_label = menu:addLabel(_("Civilization:"), 10, 14 + 36 * 1, Fonts["game"], false)
	civilization = menu:addDropDown(civilization_list, (sizeX / 2) - 60 - 10, 11 + 36 * 1, function(dd) CivilizationChanged() end)
	civilization:setSize(236, 20)
	civilization:setSelected(GetElementIndexFromArray(civilization_list, GetUnitTypeData(unit_type, "Civilization")) - 1)
	
	faction_label = menu:addLabel(_("Faction:"), 10, 14 + 36 * 2, Fonts["game"], false)
	faction = menu:addDropDown(faction_list, (sizeX / 2) - 60 - 10, 11 + 36 * 2, function(dd) end)
	faction:setSize(236, 20)

	CivilizationChanged()
	
	faction:setSelected(GetElementIndexFromArray(faction_list, GetUnitTypeData(unit_type, "Faction")) - 1)
	
	menu:addHalfButton("~!OK", "o", 20 + 48, sizeY - 40,
		function()
			local unit_type_definition = {}

			if (civilization_list[civilization:getSelected() + 1] ~= GetUnitTypeData(unit_type, "Civilization")) then
				unit_type_definition.Civilization = civilization_list[civilization:getSelected() + 1]
			end

			if (faction_list[faction:getSelected() + 1] ~= GetUnitTypeData(unit_type, "Faction")) then
				unit_type_definition.Faction = faction_list[faction:getSelected() + 1]
			end

			DefineUnitType(unit_type, unit_type_definition)

			menu:stop()
		end
	)

	menu:addHalfButton(_("~!Cancel"), "c", 130 + 48, sizeY - 40,
		function() menu:stop() end)

	menu:run(false)
end

function EditUnitTypePropertiesGraphics(unit_type)

	if (unit_type == "" or unit_type == nil) then
		return;
	end
	local menu = WarGameMenu(panel(5))
	local sizeX = 352
	local sizeY = 352

	menu:resize(sizeX, sizeY)
	menu:addLabel(_(GetUnitTypeName(unit_type)) .. " " .. _("Properties"), sizeX / 2, 11)

	local unit_graphics_list = GetUnitGraphics()
	
	local animation_list = GetAnimations()
	
	local icon_list = GetIcons()
	
	local unit_graphics
	local unit_graphics_label
	local animation
	local animation_label
	local icon
	local icon_label
  
	unit_graphics_label = menu:addLabel(_("Graphics:"), 10, 14 + 36 * 1, Fonts["game"], false)
	unit_graphics = menu:addDropDown(unit_graphics_list, (sizeX / 2) - 60 - 10, 11 + 36 * 1, function(dd) end)
	unit_graphics:setSize(236, 20)
	unit_graphics:setSelected(GetElementIndexFromArray(unit_graphics_list, GetUnitTypeData(unit_type, "Image")) - 1)
	if (GetUnitTypeData(unit_type, "Image") == "") then
		unit_graphics:setSelected(0)
	else
		unit_graphics:setSelected(GetElementIndexFromArray(unit_graphics_list, GetUnitTypeData(unit_type, "Image")) - 1)
	end
	
	menu:addLabel(_("Frame Width:"), 10, 12 + 36 * 2, Fonts["game"], false)
	local frame_width_value = menu:addTextInputField(GetUnitTypeData(unit_type, "Width"), (sizeX / 2) - 60 - 10, 11 + 36 * 2, 60)

	menu:addLabel(_("Frame Height:"), (sizeX / 2) + 10, 12 + 36 * 2, Fonts["game"], false)
	local frame_height_value = menu:addTextInputField(GetUnitTypeData(unit_type, "Height"), sizeX - 60 - 10, 11 + 36 * 2, 60)
	
	animation_label = menu:addLabel(_("Animations:"), 10, 14 + 36 * 3, Fonts["game"], false)
	animation = menu:addDropDown(animation_list, (sizeX / 2) - 60 - 10, 11 + 36 * 3, function(dd) end)
	animation:setSize(236, 20)
	if (GetUnitTypeData(unit_type, "Animations") == "") then
		animation:setSelected(0)
	else
		animation:setSelected(GetElementIndexFromArray(animation_list, GetUnitTypeData(unit_type, "Animations")) - 1)
	end
	
	icon_label = menu:addLabel(_("Icon:"), 10, 14 + 36 * 4, Fonts["game"], false)
	icon = menu:addDropDown(icon_list, (sizeX / 2) - 60 - 10, 11 + 36 * 4, function(dd) end)
	icon:setSize(236, 20)
	if (GetUnitTypeData(unit_type, "Icon") == "") then
		icon:setSelected(0)
	else
		icon:setSelected(GetElementIndexFromArray(icon_list, GetUnitTypeData(unit_type, "Icon")) - 1)
	end
	
	menu:addHalfButton("~!OK", "o", 20 + 48, sizeY - 40,
		function()
			local graphic_width = 0
			local graphic_height = 0
			local graphic = CGraphic:Get(unit_graphics_list[unit_graphics:getSelected() + 1])
			if (graphic == nil) then
				graphic = CGraphic:New(unit_graphics_list[unit_graphics:getSelected() + 1])
				graphic:Load()
				graphic_width = graphic:getGraphicWidth()
				graphic_height = graphic:getGraphicHeight()
				CGraphic:Free(graphic)
			else
				graphic_width = graphic:getGraphicWidth()
				graphic_height = graphic:getGraphicHeight()
			end

			if (tonumber(frame_width_value:getText()) == nil) then
				GenericDialog("Error", "The frame width must be a number.")
			elseif (tonumber(frame_height_value:getText()) == nil) then
				GenericDialog("Error", "The frame height must be a number.")
			elseif (graphic_width % tonumber(frame_width_value:getText()) ~= 0) then
				GenericDialog("Error", "The image graphic's width (" .. graphic_width .. ") must be divisible by the frame width.")
			elseif (graphic_height % tonumber(frame_height_value:getText()) ~= 0) then
				GenericDialog("Error", "The image graphic's height (" .. graphic_height .. ") must be divisible by the frame height.")
			else
				local unit_type_definition = {}

				if (unit_graphics_list[unit_graphics:getSelected() + 1] ~= GetUnitTypeData(unit_type, "Image")) then
					unit_type_definition.Image = {}
					table.insert(unit_type_definition.Image, "file")
					table.insert(unit_type_definition.Image, unit_graphics_list[unit_graphics:getSelected() + 1])
					if (frame_width_value:getText() ~= GetUnitTypeData(unit_type, "Width") or frame_height_value:getText() ~= GetUnitTypeData(unit_type, "Height")) then
						table.insert(unit_type_definition.Image, "size")
						table.insert(unit_type_definition.Image, {tonumber(frame_width_value:getText()), tonumber(frame_height_value:getText())})
					end
				end

				if (animation_list[animation:getSelected() + 1] ~= GetUnitTypeData(unit_type, "Animations")) then
					unit_type_definition.Animations = animation_list[animation:getSelected() + 1]
				end

				if (icon_list[icon:getSelected() + 1] ~= GetUnitTypeData(unit_type, "Icon")) then
					unit_type_definition.Icon = icon_list[icon:getSelected() + 1]
				end

				DefineUnitType(unit_type, unit_type_definition)

				menu:stop()
			end
		end
	)

	menu:addHalfButton(_("~!Cancel"), "c", 130 + 48, sizeY - 40,
		function() menu:stop() end)

	menu:run(false)
end

function EditUnitTypePropertiesStats(unit_type)

	if (unit_type == "" or unit_type == nil) then
		return;
	end
	local menu = WarGameMenu(panel(5))
	local sizeX = 352
	local sizeY = 352

	menu:resize(sizeX, sizeY)
	menu:addLabel(_(GetUnitTypeName(unit_type)) .. " " .. _("Properties"), sizeX / 2, 11)

	local variables_displayed = {"HitPoints", "BasicDamage", "Armor", "Accuracy", "Evasion", "AttackRange", "SightRange", "Speed", "CriticalStrikeChance", "Backstab", "BonusAgainstMounted", "ThornsDamage", "DaySightRangeBonus", "NightSightRangeBonus"}

	menu:addLabel(_("Hit Points:"), 10, 12 + 36 * 1, Fonts["game"], false)
	local hp_value = menu:addTextInputField(GetUnitTypeData(unit_type, "HitPoints"), (sizeX / 2) - 60 - 10, 11 + 36 * 1, 60)

	menu:addLabel(_("Speed:"), (sizeX / 2) + 10, 12 + 36 * 1, Fonts["game"], false)
	local speed_value = menu:addTextInputField(GetUnitTypeData(unit_type, "Speed"), sizeX - 60 - 10, 11 + 36 * 1, 60)

	menu:addLabel(_("Damage:"), 10, 12 + 36 * 2, Fonts["game"], false)
	local basic_damage_value = menu:addTextInputField(GetUnitTypeData(unit_type, "BasicDamage"), (sizeX / 2) - 60 - 10, 11 + 36 * 2, 60)

	menu:addLabel(_("Armor:"), (sizeX / 2) + 10, 12 + 36 * 2, Fonts["game"], false)
	local armor_value = menu:addTextInputField(GetUnitTypeData(unit_type, "Armor"), sizeX - 60 - 10, 11 + 36 * 2, 60)

	menu:addLabel(_("Accuracy:"), 10, 12 + 36 * 3, Fonts["game"], false)
	local accuracy_value = menu:addTextInputField(GetUnitTypeData(unit_type, "Accuracy"), (sizeX / 2) - 60 - 10, 11 + 36 * 3, 60)

	menu:addLabel(_("Evasion:"), (sizeX / 2) + 10, 12 + 36 * 3, Fonts["game"], false)
	local evasion_value = menu:addTextInputField(GetUnitTypeData(unit_type, "Evasion"), sizeX - 60 - 10, 11 + 36 * 3, 60)

	menu:addLabel(_("Range:"), 10, 12 + 36 * 4, Fonts["game"], false)
	local range_value = menu:addTextInputField(GetUnitTypeData(unit_type, "AttackRange"), (sizeX / 2) - 60 - 10, 11 + 36 * 4, 60)

	menu:addLabel(_("Sight:"), (sizeX / 2) + 10, 12 + 36 * 4, Fonts["game"], false)
	local sight_value = menu:addTextInputField(GetUnitTypeData(unit_type, "SightRange"), sizeX - 60 - 10, 11 + 36 * 4, 60)

	menu:addLabel(_("Crit. Chance:"), 10, 12 + 36 * 5, Fonts["game"], false)
	local critical_strike_chance_value = menu:addTextInputField(GetUnitTypeData(unit_type, "CriticalStrikeChance"), (sizeX / 2) - 60 - 10, 11 + 36 * 5, 60)

	menu:addLabel(_("Backstab:"), (sizeX / 2) + 10, 12 + 36 * 5, Fonts["game"], false)
	local backstab_value = menu:addTextInputField(GetUnitTypeData(unit_type, "Backstab"), sizeX - 60 - 10, 11 + 36 * 5, 60)

	menu:addLabel(_("Vs. Mounted:"), 10, 12 + 36 * 6, Fonts["game"], false)
	local bonus_against_mounted_value = menu:addTextInputField(GetUnitTypeData(unit_type, "BonusAgainstMounted"), (sizeX / 2) - 60 - 10, 11 + 36 * 6, 60)

	menu:addLabel(_("Thorns Dam.:"), (sizeX / 2) + 10, 12 + 36 * 6, Fonts["game"], false)
	local thorns_damage_value = menu:addTextInputField(GetUnitTypeData(unit_type, "ThornsDamage"), sizeX - 60 - 10, 11 + 36 * 6, 60)

	menu:addLabel(_("Day Sight:"), 10, 12 + 36 * 7, Fonts["game"], false)
	local day_sight_range_bonus_value = menu:addTextInputField(GetUnitTypeData(unit_type, "DaySightRangeBonus"), (sizeX / 2) - 60 - 10, 11 + 36 * 7, 60)

	menu:addLabel(_("Night Sight:"), (sizeX / 2) + 10, 12 + 36 * 7, Fonts["game"], false)
	local night_sight_range_bonus_value = menu:addTextInputField(GetUnitTypeData(unit_type, "NightSightRangeBonus"), sizeX - 60 - 10, 11 + 36 * 7, 60)

	for i=1,table.getn(variables_displayed) do
		SetModStat(Map.Info.Filename, unit_type, variables_displayed[i], 0, "Value")
		SetModStat(Map.Info.Filename, unit_type, variables_displayed[i], 0, "Max")
		SetModStat(Map.Info.Filename, unit_type, variables_displayed[i], 0, "Enable")
	end
				
	menu:addFullButton(_("~!OK"), "o", 20 + 48, sizeY - 40,
		function()
			if (tonumber(hp_value:getText()) == nil) then
				GenericDialog("Error", "The hit points must be a number.")
			elseif (tonumber(basic_damage_value:getText()) == nil) then
				GenericDialog("Error", "The basic damage must be a number.")
			elseif (tonumber(armor_value:getText()) == nil) then
				GenericDialog("Error", "The armor must be a number.")
			elseif (tonumber(accuracy_value:getText()) == nil) then
				GenericDialog("Error", "The accuracy must be a number.")
			elseif (tonumber(evasion_value:getText()) == nil) then
				GenericDialog("Error", "The evasion must be a number.")
			elseif (tonumber(range_value:getText()) == nil) then
				GenericDialog("Error", "The range must be a number.")
			elseif (tonumber(sight_value:getText()) == nil) then
				GenericDialog("Error", "The sight must be a number.")
			elseif (tonumber(speed_value:getText()) == nil) then
				GenericDialog("Error", "The speed must be a number.")
			elseif (tonumber(critical_strike_chance_value:getText()) == nil) then
				GenericDialog("Error", "The critical strike chance must be a number.")
			elseif (tonumber(backstab_value:getText()) == nil) then
				GenericDialog("Error", "The backstab bonus must be a number.")
			elseif (tonumber(bonus_against_mounted_value:getText()) == nil) then
				GenericDialog("Error", "The bonus against mounted must be a number.")
			elseif (tonumber(thorns_damage_value:getText()) == nil) then
				GenericDialog("Error", "The thorns damage must be a number.")
			elseif (tonumber(day_sight_range_bonus_value:getText()) == nil) then
				GenericDialog("Error", "The day sight bonus must be a number.")
			elseif (tonumber(night_sight_range_bonus_value:getText()) == nil) then
				GenericDialog("Error", "The night sight bonus must be a number.")
			else
				if (GetUnitTypeData(unit_type, "Mod") == Map.Info.Filename) then
					local unit_type_definition = {}
					
					if (hp_value:getText() ~= GetUnitTypeData(unit_type, "HitPoints")) then
						unit_type_definition.HitPoints = tonumber(hp_value:getText())
					end
					if (basic_damage_value:getText() ~= GetUnitTypeData(unit_type, "BasicDamage")) then
						unit_type_definition.BasicDamage = tonumber(basic_damage_value:getText())
					end
					if (armor_value:getText() ~= GetUnitTypeData(unit_type, "Armor")) then
						unit_type_definition.Armor = tonumber(armor_value:getText())
					end
					if (accuracy_value:getText() ~= GetUnitTypeData(unit_type, "Accuracy")) then
						unit_type_definition.Accuracy = tonumber(accuracy_value:getText())
					end
					if (evasion_value:getText() ~= GetUnitTypeData(unit_type, "Evasion")) then
						unit_type_definition.Evasion = tonumber(evasion_value:getText())
					end
					if (range_value:getText() ~= GetUnitTypeData(unit_type, "AttackRange")) then
						unit_type_definition.MaxAttackRange = tonumber(range_value:getText())
					end
					if (sight_value:getText() ~= GetUnitTypeData(unit_type, "SightRange")) then
						unit_type_definition.SightRange = tonumber(sight_value:getText())
					end
					if (speed_value:getText() ~= GetUnitTypeData(unit_type, "Speed")) then
						unit_type_definition.Speed = tonumber(speed_value:getText())
					end
					if (critical_strike_chance_value:getText() ~= GetUnitTypeData(unit_type, "CriticalStrikeChance")) then
						unit_type_definition.CriticalStrikeChance = tonumber(critical_strike_chance_value:getText())
					end
					if (backstab_value:getText() ~= GetUnitTypeData(unit_type, "Backstab")) then
						unit_type_definition.Backstab = tonumber(backstab_value:getText())
					end
					if (bonus_against_mounted_value:getText() ~= GetUnitTypeData(unit_type, "BonusAgainstMounted")) then
						unit_type_definition.BonusAgainstMounted = tonumber(bonus_against_mounted_value:getText())
					end
					if (thorns_damage_value:getText() ~= GetUnitTypeData(unit_type, "ThornsDamage")) then
						unit_type_definition.ThornsDamage = tonumber(thorns_damage_value:getText())
					end
					if (day_sight_range_bonus_value:getText() ~= GetUnitTypeData(unit_type, "DaySightRangeBonus")) then
						unit_type_definition.DaySightRangeBonus = tonumber(day_sight_range_bonus_value:getText())
					end
					if (night_sight_range_bonus_value:getText() ~= GetUnitTypeData(unit_type, "NightSightRangeBonus")) then
						unit_type_definition.NightSightRangeBonus = tonumber(night_sight_range_bonus_value:getText())
					end
					
					DefineUnitType(unit_type, unit_type_definition)
				else
					if (hp_value:getText() ~= GetUnitTypeData(unit_type, "HitPoints")) then
						SetModStat(Map.Info.Filename, unit_type, "HitPoints", hp_value:getText() - GetUnitTypeData(unit_type, "HitPoints"), "Value")
						SetModStat(Map.Info.Filename, unit_type, "HitPoints", hp_value:getText() - GetUnitTypeData(unit_type, "HitPoints"), "Max")
						SetModStat(Map.Info.Filename, unit_type, "HitPoints", 1, "Enable")
					end
					if (basic_damage_value:getText() ~= GetUnitTypeData(unit_type, "BasicDamage")) then
						SetModStat(Map.Info.Filename, unit_type, "BasicDamage", basic_damage_value:getText() - GetUnitTypeData(unit_type, "BasicDamage"), "Value")
						SetModStat(Map.Info.Filename, unit_type, "BasicDamage", basic_damage_value:getText() - GetUnitTypeData(unit_type, "BasicDamage"), "Max")
						SetModStat(Map.Info.Filename, unit_type, "BasicDamage", 1, "Enable")
					end
					if (armor_value:getText() ~= GetUnitTypeData(unit_type, "Armor")) then
						SetModStat(Map.Info.Filename, unit_type, "Armor", armor_value:getText() - GetUnitTypeData(unit_type, "Armor"), "Value")
						SetModStat(Map.Info.Filename, unit_type, "Armor", armor_value:getText() - GetUnitTypeData(unit_type, "Armor"), "Max")
						SetModStat(Map.Info.Filename, unit_type, "Armor", 1, "Enable")
					end
					if (accuracy_value:getText() ~= GetUnitTypeData(unit_type, "Accuracy")) then
						SetModStat(Map.Info.Filename, unit_type, "Accuracy", accuracy_value:getText() - GetUnitTypeData(unit_type, "Accuracy"), "Value")
						SetModStat(Map.Info.Filename, unit_type, "Accuracy", accuracy_value:getText() - GetUnitTypeData(unit_type, "Accuracy"), "Max")
						SetModStat(Map.Info.Filename, unit_type, "Accuracy", 1, "Enable")
					end
					if (evasion_value:getText() ~= GetUnitTypeData(unit_type, "Evasion")) then
						SetModStat(Map.Info.Filename, unit_type, "Evasion", evasion_value:getText() - GetUnitTypeData(unit_type, "Evasion"), "Value")
						SetModStat(Map.Info.Filename, unit_type, "Evasion", evasion_value:getText() - GetUnitTypeData(unit_type, "Evasion"), "Max")
						SetModStat(Map.Info.Filename, unit_type, "Evasion", 1, "Enable")
					end
					if (range_value:getText() ~= GetUnitTypeData(unit_type, "AttackRange")) then
						SetModStat(Map.Info.Filename, unit_type, "AttackRange", range_value:getText() - GetUnitTypeData(unit_type, "AttackRange"), "Value")
						SetModStat(Map.Info.Filename, unit_type, "AttackRange", range_value:getText() - GetUnitTypeData(unit_type, "AttackRange"), "Max")
						SetModStat(Map.Info.Filename, unit_type, "AttackRange", 1, "Enable")
					end
					if (sight_value:getText() ~= GetUnitTypeData(unit_type, "SightRange")) then
						SetModStat(Map.Info.Filename, unit_type, "SightRange", sight_value:getText() - GetUnitTypeData(unit_type, "SightRange"), "Value")
						SetModStat(Map.Info.Filename, unit_type, "SightRange", sight_value:getText() - GetUnitTypeData(unit_type, "SightRange"), "Max")
						SetModStat(Map.Info.Filename, unit_type, "SightRange", 1, "Enable")
					end
					if (speed_value:getText() ~= GetUnitTypeData(unit_type, "Speed")) then
						SetModStat(Map.Info.Filename, unit_type, "Speed", speed_value:getText() - GetUnitTypeData(unit_type, "Speed"), "Value")
						SetModStat(Map.Info.Filename, unit_type, "Speed", speed_value:getText() - GetUnitTypeData(unit_type, "Speed"), "Max")
						SetModStat(Map.Info.Filename, unit_type, "Speed", 1, "Enable")
					end
					if (critical_strike_chance_value:getText() ~= GetUnitTypeData(unit_type, "CriticalStrikeChance")) then
						SetModStat(Map.Info.Filename, unit_type, "CriticalStrikeChance", critical_strike_chance_value:getText() - GetUnitTypeData(unit_type, "CriticalStrikeChance"), "Value")
						SetModStat(Map.Info.Filename, unit_type, "CriticalStrikeChance", critical_strike_chance_value:getText() - GetUnitTypeData(unit_type, "CriticalStrikeChance"), "Max")
						SetModStat(Map.Info.Filename, unit_type, "CriticalStrikeChance", 1, "Enable")
					end
					if (backstab_value:getText() ~= GetUnitTypeData(unit_type, "Backstab")) then
						SetModStat(Map.Info.Filename, unit_type, "Backstab", backstab_value:getText() - GetUnitTypeData(unit_type, "Backstab"), "Value")
						SetModStat(Map.Info.Filename, unit_type, "Backstab", backstab_value:getText() - GetUnitTypeData(unit_type, "Backstab"), "Max")
						SetModStat(Map.Info.Filename, unit_type, "Backstab", 1, "Enable")
					end
					if (bonus_against_mounted_value:getText() ~= GetUnitTypeData(unit_type, "BonusAgainstMounted")) then
						SetModStat(Map.Info.Filename, unit_type, "BonusAgainstMounted", bonus_against_mounted_value:getText() - GetUnitTypeData(unit_type, "BonusAgainstMounted"), "Value")
						SetModStat(Map.Info.Filename, unit_type, "BonusAgainstMounted", bonus_against_mounted_value:getText() - GetUnitTypeData(unit_type, "BonusAgainstMounted"), "Max")
						SetModStat(Map.Info.Filename, unit_type, "BonusAgainstMounted", 1, "Enable")
					end
					if (thorns_damage_value:getText() ~= GetUnitTypeData(unit_type, "ThornsDamage")) then
						SetModStat(Map.Info.Filename, unit_type, "ThornsDamage", thorns_damage_value:getText() - GetUnitTypeData(unit_type, "ThornsDamage"), "Value")
						SetModStat(Map.Info.Filename, unit_type, "ThornsDamage", thorns_damage_value:getText() - GetUnitTypeData(unit_type, "ThornsDamage"), "Max")
						SetModStat(Map.Info.Filename, unit_type, "ThornsDamage", 1, "Enable")
					end
					if (day_sight_range_bonus_value:getText() ~= GetUnitTypeData(unit_type, "DaySightRangeBonus")) then
						SetModStat(Map.Info.Filename, unit_type, "DaySightRangeBonus", day_sight_range_bonus_value:getText() - GetUnitTypeData(unit_type, "DaySightRangeBonus"), "Value")
						SetModStat(Map.Info.Filename, unit_type, "DaySightRangeBonus", day_sight_range_bonus_value:getText() - GetUnitTypeData(unit_type, "DaySightRangeBonus"), "Max")
						SetModStat(Map.Info.Filename, unit_type, "DaySightRangeBonus", 1, "Enable")
					end
					if (night_sight_range_bonus_value:getText() ~= GetUnitTypeData(unit_type, "NightSightRangeBonus")) then
						SetModStat(Map.Info.Filename, unit_type, "NightSightRangeBonus", night_sight_range_bonus_value:getText() - GetUnitTypeData(unit_type, "NightSightRangeBonus"), "Value")
						SetModStat(Map.Info.Filename, unit_type, "NightSightRangeBonus", night_sight_range_bonus_value:getText() - GetUnitTypeData(unit_type, "NightSightRangeBonus"), "Max")
						SetModStat(Map.Info.Filename, unit_type, "NightSightRangeBonus", 1, "Enable")
					end
				end
				menu:stop()
			end
		end
	)

	--[[
	menu:addHalfButton(_("~!Cancel"), "c", 130 + 48, sizeY - 40,
		function() menu:stop() end)
	--]]

	menu:run(false)
end

function EditUnitTypePropertiesResourceStats(unit_type)

	if (unit_type == "" or unit_type == nil) then
		return;
	end
	local menu = WarGameMenu(panel(5))
	local sizeX = 352
	local sizeY = 352

	menu:resize(sizeX, sizeY)
	menu:addLabel(_(GetUnitTypeName(unit_type)) .. " " .. _("Properties"), sizeX / 2, 11)
	
	local resources_displayed = {"time", "gold", "lumber", "stone"}

	menu:addLabel(_("Time Cost:"), 10, 12 + 36 * 1, Fonts["game"], false)
	local time_cost_value = menu:addTextInputField(GetUnitTypeData(unit_type, "Costs", "time"), (sizeX / 2) - 60 - 10, 11 + 36 * 1, 60)

	menu:addLabel(_("Gold Cost:"), (sizeX / 2) + 10, 12 + 36 * 1, Fonts["game"], false)
	local gold_cost_value = menu:addTextInputField(GetUnitTypeData(unit_type, "Costs", "gold"), sizeX - 60 - 10, 11 + 36 * 1, 60)

	menu:addLabel(_("Lumber Cost:"), 10, 12 + 36 * 2, Fonts["game"], false)
	local lumber_cost_value = menu:addTextInputField(GetUnitTypeData(unit_type, "Costs", "lumber"), (sizeX / 2) - 60 - 10, 11 + 36 * 2, 60)

	menu:addLabel(_("Stone Cost:"), (sizeX / 2) + 10, 12 + 36 * 2, Fonts["game"], false)
	local stone_cost_value = menu:addTextInputField(GetUnitTypeData(unit_type, "Costs", "stone"), sizeX - 60 - 10, 11 + 36 * 2, 60)

	menu:addLabel(_("Gold Proc.:"), 10, 12 + 36 * 3, Fonts["game"], false)
	local gold_processing_value = menu:addTextInputField(GetUnitTypeData(unit_type, "ImproveProduction", "gold"), (sizeX / 2) - 60 - 10, 11 + 36 * 3, 60)

	menu:addLabel(_("Lumber Proc.:"), (sizeX / 2) + 10, 12 + 36 * 3, Fonts["game"], false)
	local lumber_processing_value = menu:addTextInputField(GetUnitTypeData(unit_type, "ImproveProduction", "lumber"),  sizeX - 60 - 10, 11 + 36 * 3, 60)

	menu:addLabel(_("Stone Proc.:"), 10, 12 + 36 * 4, Fonts["game"], false)
	local stone_processing_value = menu:addTextInputField(GetUnitTypeData(unit_type, "ImproveProduction", "stone"), (sizeX / 2) - 60 - 10, 11 + 36 * 4, 60)

	for i=1,table.getn(resources_displayed) do
		SetModStat(Map.Info.Filename, unit_type, "Costs", 0, resources_displayed[i])
		SetModStat(Map.Info.Filename, unit_type, "ImproveProduction", 0, resources_displayed[i])
	end
	
	menu:addFullButton(_("~!OK"), "o", 20 + 48, sizeY - 40,
		function()
			if (tonumber(time_cost_value:getText()) == nil) then
				GenericDialog("Error", "The time cost must be a number.")
			elseif (tonumber(gold_cost_value:getText()) == nil) then
				GenericDialog("Error", "The gold cost must be a number.")
			elseif (tonumber(lumber_cost_value:getText()) == nil) then
				GenericDialog("Error", "The lumber cost must be a number.")
			elseif (tonumber(stone_cost_value:getText()) == nil) then
				GenericDialog("Error", "The stone cost must be a number.")
			elseif (tonumber(gold_processing_value:getText()) == nil) then
				GenericDialog("Error", "The gold processing must be a number.")
			elseif (tonumber(lumber_processing_value:getText()) == nil) then
				GenericDialog("Error", "The lumber processing must be a number.")
			elseif (tonumber(stone_processing_value:getText()) == nil) then
				GenericDialog("Error", "The stone processing must be a number.")
			else
				if (GetUnitTypeData(unit_type, "Mod") == Map.Info.Filename) then
					local unit_type_definition = {}
					
					unit_type_definition.Costs = {}
					unit_type_definition.ImproveProduction = {}
					
					if (time_cost_value:getText() ~= GetUnitTypeData(unit_type, "Costs", "time")) then
						table.insert(unit_type_definition.Costs, "time")
						table.insert(unit_type_definition.Costs, tonumber(time_cost_value:getText()))
					end
					if (gold_cost_value:getText() ~= GetUnitTypeData(unit_type, "Costs", "gold")) then
						table.insert(unit_type_definition.Costs, "gold")
						table.insert(unit_type_definition.Costs, tonumber(gold_cost_value:getText()))
					end
					if (lumber_cost_value:getText() ~= GetUnitTypeData(unit_type, "Costs", "lumber")) then
						table.insert(unit_type_definition.Costs, "lumber")
						table.insert(unit_type_definition.Costs, tonumber(lumber_cost_value:getText()))
					end
					if (stone_cost_value:getText() ~= GetUnitTypeData(unit_type, "Costs", "stone")) then
						table.insert(unit_type_definition.Costs, "stone")
						table.insert(unit_type_definition.Costs, tonumber(stone_cost_value:getText()))
					end
					if (gold_processing_value:getText() ~= GetUnitTypeData(unit_type, "ImproveProduction", "gold")) then
						table.insert(unit_type_definition.ImproveProduction, "gold")
						table.insert(unit_type_definition.ImproveProduction, tonumber(gold_processing_value:getText()))
					end
					if (lumber_processing_value:getText() ~= GetUnitTypeData(unit_type, "ImproveProduction", "lumber")) then
						table.insert(unit_type_definition.ImproveProduction, "lumber")
						table.insert(unit_type_definition.ImproveProduction, tonumber(lumber_processing_value:getText()))
					end
					if (stone_processing_value:getText() ~= GetUnitTypeData(unit_type, "ImproveProduction", "stone")) then
						table.insert(unit_type_definition.ImproveProduction, "stone")
						table.insert(unit_type_definition.ImproveProduction, tonumber(stone_processing_value:getText()))
					end
					
					DefineUnitType(unit_type, unit_type_definition)
				else
					if (time_cost_value:getText() ~= GetUnitTypeData(unit_type, "Costs", "time")) then
						SetModStat(Map.Info.Filename, unit_type, "Costs", time_cost_value:getText() - GetUnitTypeData(unit_type, "Costs", "time"), "time")
					end
					if (gold_cost_value:getText() ~= GetUnitTypeData(unit_type, "Costs", "gold")) then
						SetModStat(Map.Info.Filename, unit_type, "Costs", gold_cost_value:getText() - GetUnitTypeData(unit_type, "Costs", "gold"), "gold")
					end
					if (lumber_cost_value:getText() ~= GetUnitTypeData(unit_type, "Costs", "lumber")) then
						SetModStat(Map.Info.Filename, unit_type, "Costs", lumber_cost_value:getText() - GetUnitTypeData(unit_type, "Costs", "lumber"), "lumber")
					end
					if (stone_cost_value:getText() ~= GetUnitTypeData(unit_type, "Costs", "stone")) then
						SetModStat(Map.Info.Filename, unit_type, "Costs", stone_cost_value:getText() - GetUnitTypeData(unit_type, "Costs", "stone"), "stone")
					end
					if (gold_processing_value:getText() ~= GetUnitTypeData(unit_type, "ImproveProduction", "gold")) then
						SetModStat(Map.Info.Filename, unit_type, "ImproveProduction", gold_processing_value:getText() - GetUnitTypeData(unit_type, "ImproveProduction", "gold"), "gold")
					end
					if (lumber_processing_value:getText() ~= GetUnitTypeData(unit_type, "ImproveProduction", "lumber")) then
						SetModStat(Map.Info.Filename, unit_type, "ImproveProduction", lumber_processing_value:getText() - GetUnitTypeData(unit_type, "ImproveProduction", "lumber"), "lumber")
					end
					if (stone_processing_value:getText() ~= GetUnitTypeData(unit_type, "ImproveProduction", "stone")) then
						SetModStat(Map.Info.Filename, unit_type, "ImproveProduction", stone_processing_value:getText() - GetUnitTypeData(unit_type, "ImproveProduction", "stone"), "stone")
					end
				end
				menu:stop()
			end
		end
	)

	--[[
	menu:addHalfButton(_("~!Cancel"), "c", 130 + 48, sizeY - 40,
		function() menu:stop() end)
	--]]

	menu:run(false)
end

function EditUnitTypePropertiesTraining(unit_type)

	if (unit_type == "" or unit_type == nil) then
		return;
	end
	local menu = WarGameMenu(panel(5))
	local sizeX = 352
	local sizeY = 352

	menu:resize(sizeX, sizeY)
	menu:addLabel(_(GetUnitTypeName(unit_type)) .. " " .. _("Properties"), sizeX / 2, 11)

	local unit_type_list = GetUnitTypes()
	local trained_unit_type_list = GetUnitTypeData(unit_type, "Trains", Map.Info.Filename)
	
	local trains
	local trains_label
	local trains_checkbox
  
	local function TrainedUnitTypeChanged()
		trains_checkbox:setMarked(GetArrayIncludes(trained_unit_type_list, unit_type_list[trains:getSelected() + 1]))
	end
	
	trains_label = menu:addLabel(_("Trains:"), 10, 14 + 36 * 1, Fonts["game"], false)
	trains = menu:addDropDown(unit_type_list, (sizeX / 2) - 60 - 10, 11 + 36 * 1, function(dd) TrainedUnitTypeChanged() end)
	trains:setSize(236 - 19 - 10, 20)
	trains:setSelected(0)
	
	trains_checkbox = menu:addImageCheckBox("", sizeX - 19 - 10, 11 + 36 * 1,
	function()
		if (trains_checkbox:isMarked()) then
			if (GetArrayIncludes(trained_unit_type_list, unit_type_list[trains:getSelected() + 1]) == false) then
				table.insert(trained_unit_type_list, unit_type_list[trains:getSelected() + 1])
			end
		else
			RemoveElementFromArray(trained_unit_type_list, unit_type_list[trains:getSelected() + 1])
		end
	end)

	TrainedUnitTypeChanged()
	
	menu:addLabel(_("Button Pos:"), 10, 12 + 36 * 2, Fonts["game"], false)
	local button_pos_value = menu:addTextInputField(GetUnitTypeData(unit_type, "ButtonPos"), (sizeX / 2) - 60 - 10, 11 + 36 * 2, 60)

	menu:addLabel(_("Hotkey:"), (sizeX / 2) + 10, 12 + 36 * 2, Fonts["game"], false)
	local button_key_value = menu:addTextInputField(GetUnitTypeData(unit_type, "ButtonKey"), sizeX - 60 - 10, 11 + 36 * 2, 60)

	menu:addLabel(_("Hint:"), 10, 12 + 36 * 3, Fonts["game"], false)
	local button_hint_value = menu:addTextInputField(GetUnitTypeData(unit_type, "ButtonHint"), (sizeX / 2) - 60 - 10, 11 + 36 * 3, 180)

	menu:addHalfButton("~!OK", "o", 20 + 48, sizeY - 40,
		function()
			if (tonumber(button_pos_value:getText()) == nil) then
				GenericDialog("Error", "The button pos must be a number.")
			else
				if (GetUnitTypeData(unit_type, "Mod") == Map.Info.Filename) then
					local unit_type_definition = {}

					if (trained_unit_type_list ~= GetUnitTypeData(unit_type, "Trains")) then
						unit_type_definition.Trains = trained_unit_type_list
					end

					if (button_pos_value:getText() ~= GetUnitTypeData(unit_type, "ButtonPos")) then
						unit_type_definition.ButtonPos = tonumber(button_pos_value:getText())
					end

					if (button_key_value:getText() ~= GetUnitTypeData(unit_type, "ButtonKey")) then
						unit_type_definition.ButtonKey = tostring(button_key_value:getText())
					end

					if (button_hint_value:getText() ~= GetUnitTypeData(unit_type, "ButtonHint")) then
						unit_type_definition.ButtonHint = tostring(button_hint_value:getText())
					end

					DefineUnitType(unit_type, unit_type_definition)
				else
					if (trained_unit_type_list ~= GetUnitTypeData(unit_type, "Trains")) then
						SetModTrains(Map.Info.Filename, unit_type, trained_unit_type_list)
					end
				end

				menu:stop()
			end
		end
	)

	menu:addHalfButton(_("~!Cancel"), "c", 130 + 48, sizeY - 40,
		function() menu:stop() end)

	menu:run(false)
end

function EditUnitTypePropertiesSounds(unit_type)

	if (unit_type == "" or unit_type == nil) then
		return;
	end
	local menu = WarGameMenu(panel(5))
	local sizeX = 352
	local sizeY = 352

	menu:resize(sizeX, sizeY)
	menu:addLabel(_(GetUnitTypeName(unit_type)) .. " " .. _("Properties"), sizeX / 2, 11)

	local sound_list = GetSounds()
	table.insert(sound_list, "") -- for instances where the unit does not have a sound of a particular type
  
	menu:addLabel(_("Selected:"), 10, 14 + 36 * 1, Fonts["game"], false)
	local selected_sound = menu:addDropDown(sound_list, (sizeX / 2) - 60 - 10, 11 + 36 * 1, function(dd) end)
	selected_sound:setSize(236, 20)
	selected_sound:setSelected(GetElementIndexFromArray(sound_list, GetUnitTypeData(unit_type, "Sounds", "selected")) - 1)
	
	menu:addLabel(_("Acknowledge:"), 10, 14 + 36 * 2, Fonts["game"], false)
	local acknowledge_sound = menu:addDropDown(sound_list, (sizeX / 2) - 60 - 10, 11 + 36 * 2, function(dd) end)
	acknowledge_sound:setSize(236, 20)
	acknowledge_sound:setSelected(GetElementIndexFromArray(sound_list, GetUnitTypeData(unit_type, "Sounds", "acknowledge")) - 1)
	
	menu:addLabel(_("Attack:"), 10, 14 + 36 * 3, Fonts["game"], false)
	local attack_sound = menu:addDropDown(sound_list, (sizeX / 2) - 60 - 10, 11 + 36 * 3, function(dd) end)
	attack_sound:setSize(236, 20)
	attack_sound:setSelected(GetElementIndexFromArray(sound_list, GetUnitTypeData(unit_type, "Sounds", "attack")) - 1)
	
	menu:addLabel(_("Ready:"), 10, 14 + 36 * 4, Fonts["game"], false)
	local ready_sound = menu:addDropDown(sound_list, (sizeX / 2) - 60 - 10, 11 + 36 * 4, function(dd) end)
	ready_sound:setSize(236, 20)
	ready_sound:setSelected(GetElementIndexFromArray(sound_list, GetUnitTypeData(unit_type, "Sounds", "ready")) - 1)
	
	menu:addLabel(_("Idle:"), 10, 14 + 36 * 5, Fonts["game"], false)
	local idle_sound = menu:addDropDown(sound_list, (sizeX / 2) - 60 - 10, 11 + 36 * 5, function(dd) end)
	idle_sound:setSize(236, 20)
	idle_sound:setSelected(GetElementIndexFromArray(sound_list, GetUnitTypeData(unit_type, "Sounds", "idle")) - 1)
	
	menu:addLabel(_("Help:"), 10, 14 + 36 * 6, Fonts["game"], false)
	local help_sound = menu:addDropDown(sound_list, (sizeX / 2) - 60 - 10, 11 + 36 * 6, function(dd) end)
	help_sound:setSize(236, 20)
	help_sound:setSelected(GetElementIndexFromArray(sound_list, GetUnitTypeData(unit_type, "Sounds", "help")) - 1)
	
	menu:addLabel(_("Dead:"), 10, 14 + 36 * 7, Fonts["game"], false)
	local dead_sound = menu:addDropDown(sound_list, (sizeX / 2) - 60 - 10, 11 + 36 * 7, function(dd) end)
	dead_sound:setSize(236, 20)
	dead_sound:setSelected(GetElementIndexFromArray(sound_list, GetUnitTypeData(unit_type, "Sounds", "dead")) - 1)
	
	menu:addHalfButton("~!OK", "o", 20 + 48, sizeY - 40,
		function()
			if (GetUnitTypeData(unit_type, "Mod") == Map.Info.Filename) then
				local unit_type_definition = {}
				
				unit_type_definition.Sounds = {}
				
				if (sound_list[selected_sound:getSelected() + 1] ~= GetUnitTypeData(unit_type, "Sounds", "selected")) then
					table.insert(unit_type_definition.Sounds, "selected")
					table.insert(unit_type_definition.Sounds, sound_list[selected_sound:getSelected() + 1])
				end
				if (sound_list[acknowledge_sound:getSelected() + 1] ~= GetUnitTypeData(unit_type, "Sounds", "acknowledge")) then
					table.insert(unit_type_definition.Sounds, "acknowledge")
					table.insert(unit_type_definition.Sounds, sound_list[acknowledge_sound:getSelected() + 1])
				end
				if (sound_list[attack_sound:getSelected() + 1] ~= GetUnitTypeData(unit_type, "Sounds", "attack")) then
					table.insert(unit_type_definition.Sounds, "attack")
					table.insert(unit_type_definition.Sounds, sound_list[attack_sound:getSelected() + 1])
				end
				if (sound_list[ready_sound:getSelected() + 1] ~= GetUnitTypeData(unit_type, "Sounds", "ready")) then
					table.insert(unit_type_definition.Sounds, "ready")
					table.insert(unit_type_definition.Sounds, sound_list[ready_sound:getSelected() + 1])
				end
				if (sound_list[idle_sound:getSelected() + 1] ~= GetUnitTypeData(unit_type, "Sounds", "idle")) then
					table.insert(unit_type_definition.Sounds, "idle")
					table.insert(unit_type_definition.Sounds, sound_list[idle_sound:getSelected() + 1])
				end
				if (sound_list[help_sound:getSelected() + 1] ~= GetUnitTypeData(unit_type, "Sounds", "help")) then
					table.insert(unit_type_definition.Sounds, "help")
					table.insert(unit_type_definition.Sounds, sound_list[help_sound:getSelected() + 1])
				end
				if (sound_list[dead_sound:getSelected() + 1] ~= GetUnitTypeData(unit_type, "Sounds", "dead")) then
					table.insert(unit_type_definition.Sounds, "dead")
					table.insert(unit_type_definition.Sounds, sound_list[dead_sound:getSelected() + 1])
				end
				
				DefineUnitType(unit_type, unit_type_definition)
			else
				if (sound_list[selected_sound:getSelected() + 1] ~= GetUnitTypeData(unit_type, "Sounds", "selected")) then
					SetModSound(Map.Info.Filename, unit_type, sound_list[selected_sound:getSelected() + 1], "selected")
				end
				if (sound_list[acknowledge_sound:getSelected() + 1] ~= GetUnitTypeData(unit_type, "Sounds", "acknowledge")) then
					SetModSound(Map.Info.Filename, unit_type, sound_list[acknowledge_sound:getSelected() + 1], "acknowledge")
				end
				if (sound_list[attack_sound:getSelected() + 1] ~= GetUnitTypeData(unit_type, "Sounds", "attack")) then
					SetModSound(Map.Info.Filename, unit_type, sound_list[attack_sound:getSelected() + 1], "attack")
				end
				if (sound_list[ready_sound:getSelected() + 1] ~= GetUnitTypeData(unit_type, "Sounds", "ready")) then
					SetModSound(Map.Info.Filename, unit_type, sound_list[ready_sound:getSelected() + 1], "ready")
				end
				if (sound_list[idle_sound:getSelected() + 1] ~= GetUnitTypeData(unit_type, "Sounds", "idle")) then
					SetModSound(Map.Info.Filename, unit_type, sound_list[idle_sound:getSelected() + 1], "idle")
				end
				if (sound_list[help_sound:getSelected() + 1] ~= GetUnitTypeData(unit_type, "Sounds", "help")) then
					SetModSound(Map.Info.Filename, unit_type, sound_list[help_sound:getSelected() + 1], "help")
				end
				if (sound_list[dead_sound:getSelected() + 1] ~= GetUnitTypeData(unit_type, "Sounds", "dead")) then
					SetModSound(Map.Info.Filename, unit_type, sound_list[dead_sound:getSelected() + 1], "dead")
				end
			end
			menu:stop()
		end
	)

	menu:addHalfButton(_("~!Cancel"), "c", 130 + 48, sizeY - 40,
		function() menu:stop() end)

	menu:run(false)
end

--       _________ __                 __
--      /   _____//  |_____________ _/  |______     ____  __ __  ______
--      \_____  \\   __\_  __ \__  \\   __\__  \   / ___\|  |  \/  ___/
--      /        \|  |  |  | \// __ \|  |  / __ \_/ /_/  >  |  /\___ \
--     /_______  /|__|  |__|  (____  /__| (____  /\___  /|____//____  >
--             \/                  \/          \//_____/            \/
--  ______________________                           ______________________
--                        T H E   W A R   B E G I N S
--         Stratagus - A free fantasy real time strategy game engine
--
--      grand_strategy.lua - Define the grand strategy game mode.
--
--      (c) Copyright 2014 by Andre Novellino Gouvêa
--
--      This program is free software; you can redistribute it and/or modify
--      it under the terms of the GNU General Public License as published by
--      the Free Software Foundation; either version 2 of the License, or
--      (at your option) any later version.
--
--      This program is distributed in the hope that it will be useful,
--      but WITHOUT ANY WARRANTY; without even the implied warranty of
--      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--      GNU General Public License for more details.
--
--      You should have received a copy of the GNU General Public License
--      along with this program; if not, write to the Free Software
--      Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
--

Attacker = ""
Defender = ""

function RunGrandStrategyGameSetupMenu()
	WorldMapOffsetX = 26
	WorldMapOffsetY = 10
	GrandStrategyYear = 25
	GrandStrategyFaction = ""
	SelectedProvince = nil
	Attacker = ""
	Defender = ""

	wyrmsun.playlist = { "music/legends_of_the_north.ogg" }
	SetPlayerData(GetThisPlayer(), "RaceName", "gnome")

	if not (IsMusicPlaying()) then
		PlayMusic("music/legends_of_the_north.ogg")
	end

	local menu = WarMenu()
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2

	local world_list = {"Nidavellir"}
	local world
	local date_list = {"25 AD", "40 AD", "550 AD"}
	local date
	local faction
	local faction_list = {"Norlund Clan", "Shinsplitter Clan", "Shorbear Clan"}

	GrandStrategy = true

	menu:addLabel("~<Grand Strategy Game Setup~>", offx + 640/2 + 12, offy + 72)

	menu:addFullButton("~!Start Game", "s", offx + 208, offy + 212 + (36 * 5),
		function()
			GrandStrategyYear = tonumber(string.sub(date_list[date:getSelected() + 1], 0, -3))
			Load("scripts/" .. string.lower(world_list[world:getSelected() + 1]) .. "_world_map.lua");
			GrandStrategyFaction = faction_list[faction:getSelected() + 1]
			SetPlayerData(GetThisPlayer(), "RaceName", GetFactionFromName(GrandStrategyFaction).Civilization)
			CalculateProvinceBorderTiles()
			RunGrandStrategyGame()
			menu:stop()
		end)
	menu:addFullButton("~!Cancel Game", "c", offx + 208, offy + 212 + (36 * 6),
		function() menu:stop(); end)

	menu:addLabel("~<World:~>", offx + 40, offy + (10 + 120) - 20, Fonts["game"], false)
	world = menu:addDropDown(world_list, offx + 40, offy + 10 + 120,
		function(dd) end)
	world:setSize(152, 20)
	world:setSelected(0)

	menu:addLabel("~<Date:~>", offx + 220, offy + (10 + 120) - 20, Fonts["game"], false)
	date = menu:addDropDown(date_list, offx + 220, offy + 10 + 120,
		function(dd) DateChanged() end)
	date:setSize(152, 20)

	menu:addLabel("~<Faction:~>", offx + 640 - 224 - 16, offy + (10 + 120) - 20, Fonts["game"], false)
	faction = menu:addDropDown(faction_list, offx + 640 - 224 - 16, offy + 10 + 120,
		function(dd) end)
	faction:setSize(152, 20)

	function DateChanged()
		faction_list = {"Norlund Clan", "Shinsplitter Clan", "Shorbear Clan"}
		if (tonumber(string.sub(date_list[date:getSelected() + 1], 0, -3)) >= 29) then
			faction_list = {"Norlund Clan", "Shinsplitter Clan"}
		end
		if (tonumber(string.sub(date_list[date:getSelected() + 1], 0, -3)) >= 400) then
			faction_list = {"Knalga", "Shinsplitter Clan"}
		end
		faction:setList(faction_list)
		faction:setSize(152, 20)
		faction:setSelected(0)
	end

	menu:run()
end

function RunGrandStrategyGame()
	GrandStrategyMenu = WarMenu()
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2

	AddUIElement("ui/dwarf/minimap.png", 0, 24)
	
	RedrawOnScreenTiles()
	
	for key, value in pairs(WorldMapProvinces) do
		for i=1,table.getn(WorldMapProvinces[key].Tiles) do
			-- draw the province's tiles on the minimap
			if (WorldMapProvinces[key].Owner ~= "") then
				DrawWorldMapMinimapTile("tilesets/world/terrain/province_tile_" .. GetFactionFromName(WorldMapProvinces[key].Owner).Color .. ".png", WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2])
			else
				DrawWorldMapMinimapTile("tilesets/world/terrain/province_tile_white.png", WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2])
			end
		end
	end

	for key, value in pairs(WorldMapWaterProvinces) do
		for i=1,table.getn(WorldMapWaterProvinces[key].Tiles) do
			DrawWorldMapMinimapTile("tilesets/world/terrain/ocean.png", WorldMapWaterProvinces[key].Tiles[i][1], WorldMapWaterProvinces[key].Tiles[i][2])
		end
	end

	AddUIElement("ui/dwarf/infopanel.png", 0, 160)

	AddUIElement("ui/dwarf/resource_" .. Video.Width .. ".png", 176, 0)

	AddUIElement("ui/dwarf/buttonpanel_" .. Video.Height .. ".png", 0, 336)
	AddUIElement("ui/dwarf/menubutton.png", 0, 0)

	GrandStrategyMenu:addLabel(GrandStrategyFaction .. ", " .. GrandStrategyYear .. " AD", 88, 6, Fonts["game"], true)
	if (SelectedProvince ~= nil) then
		if (SelectedProvince.Owner ~= "" and SelectedProvince.Owner ~= "Ocean") then
			GrandStrategyMenu:addLabel(SelectedProvince.Name .. ",", 88, 171, Fonts["game"], true)
			GrandStrategyMenu:addLabel(SelectedProvince.Owner, 88, 185, Fonts["game"], true)
		else
			GrandStrategyMenu:addLabel(SelectedProvince.Name, 88, 171, Fonts["game"], true)
		end

		if (CanAttackProvince(SelectedProvince, GrandStrategyFaction)) then
			-- add an attack button for enemy provinces
			local b = GrandStrategyMenu:addImageButton("~!Attack!", "a", 24, 340, function()
				AttackProvince(SelectedProvince)
			end)
			b:setBaseColor(Color(0,0,0,0))
			b:setForegroundColor(Color(0,0,0,0))
			b:setBackgroundColor(Color(0,0,0,0))
			if (GetPlayerData(GetThisPlayer(), "RaceName") == "dwarf") then
				local normal_end_turn_button = CGraphic:New("ui/dwarf/widgets/button-thin-medium-normal.png")
				normal_end_turn_button:Load()
				local pressed_end_turn_button = CGraphic:New("ui/dwarf/widgets/button-thin-medium-pressed.png")
				pressed_end_turn_button:Load()
				b:setNormalImage(normal_end_turn_button)
				b:setPressedImage(pressed_end_turn_button)
				b:setDisabledImage(normal_end_turn_button)
			elseif (GetPlayerData(GetThisPlayer(), "RaceName") == "gnome") then
				local normal_end_turn_button = CGraphic:New("ui/gnome/widgets/button-thin-medium-normal.png")
				normal_end_turn_button:Load()
				local pressed_end_turn_button = CGraphic:New("ui/gnome/widgets/button-thin-medium-pressed.png")
				pressed_end_turn_button:Load()
				b:setNormalImage(normal_end_turn_button)
				b:setPressedImage(pressed_end_turn_button)
				b:setDisabledImage(normal_end_turn_button)
			end
			b:setSize(128, 20)
			b:setFont(Fonts["game"])
		end
	end

	-- add an end turn button
	if (true == false) then -- disable end turn button for now because nothing happens with the passage of turn (i.e. no production) other than attacking provinces, and that is better done by just having attacks result in a turn change
	local b = GrandStrategyMenu:addImageButton("~!End Turn", "e", 24, Video.Height - 22 - 16, function()
		EndTurn()
	end)
	b:setBaseColor(Color(0,0,0,0))
	b:setForegroundColor(Color(0,0,0,0))
	b:setBackgroundColor(Color(0,0,0,0))
	if (GetPlayerData(GetThisPlayer(), "RaceName") == "dwarf") then
		local normal_end_turn_button = CGraphic:New("ui/dwarf/widgets/button-thin-medium-normal.png")
		normal_end_turn_button:Load()
		local pressed_end_turn_button = CGraphic:New("ui/dwarf/widgets/button-thin-medium-pressed.png")
		pressed_end_turn_button:Load()
		b:setNormalImage(normal_end_turn_button)
		b:setPressedImage(pressed_end_turn_button)
		b:setDisabledImage(normal_end_turn_button)
	elseif (GetPlayerData(GetThisPlayer(), "RaceName") == "gnome") then
		local normal_end_turn_button = CGraphic:New("ui/gnome/widgets/button-thin-medium-normal.png")
		normal_end_turn_button:Load()
		local pressed_end_turn_button = CGraphic:New("ui/gnome/widgets/button-thin-medium-pressed.png")
		pressed_end_turn_button:Load()
		b:setNormalImage(normal_end_turn_button)
		b:setPressedImage(pressed_end_turn_button)
		b:setDisabledImage(normal_end_turn_button)
	end
	b:setSize(128, 20)
	b:setFont(Fonts["game"])
	end

	-- add a pseudo-button to bring up the menu
	GrandStrategyMenu:addButton("", "f10", 0, 0,
		function()
			RunGrandStrategyGameMenu()
		end,
	{0, 0})
	GrandStrategyMenu:addButton("", "f11", 0, 0,
		function()
			RunGrandStrategySaveMenu()
		end,
	{0, 0})
	GrandStrategyMenu:addButton("", "f12", 0, 0,
		function()
			RunGrandStrategyLoadGameMenu()
		end,
	{0, 0})

	-- add pseudo-buttons to allow the player to see other parts of the map
	GrandStrategyMenu:addButton("", "up", 0, 0,
		function()
			if (WorldMapOffsetY > 0) then
				WorldMapOffsetY = WorldMapOffsetY - 1;
			end
			RedrawOnScreenTiles()
		end,
	{0, 0})
	GrandStrategyMenu:addButton("", "down", 0, 0,
		function()
			if (WorldMapOffsetY < table.getn(WorldMapTiles) - 1 - math.floor((Video.Height - 16 - 16) / 64)) then
				WorldMapOffsetY = WorldMapOffsetY + 1;
			end
			RedrawOnScreenTiles()
		end,
	{0, 0})

	GrandStrategyMenu:addButton("", "left", 0, 0,
		function()
			if (WorldMapOffsetX > 0) then
				WorldMapOffsetX = WorldMapOffsetX - 1;
			end
			RedrawOnScreenTiles()
		end,
	{0, 0})
	GrandStrategyMenu:addButton("", "right", 0, 0,
		function()
			if (WorldMapOffsetX < table.getn(WorldMapTiles[1]) - 1 - math.floor((Video.Width - 16 - 176) / 64)) then
				WorldMapOffsetX = WorldMapOffsetX + 1;
			end
			RedrawOnScreenTiles()
		end,
	{0, 0})

	GrandStrategyMenu:run()
end

function EndTurn()
	GrandStrategyYear = GrandStrategyYear + 1;
	GrandStrategyMenu:stop();
	RunGrandStrategyGame()
end

function AttackProvince(province)
	local province_map = province.Maps[SyncRand(table.getn(province.Maps)) + 1]
	local maps = {}
	for map_directory=1,table.getn(MapDirectories) do
		-- load the maps
		local i
		local f
		local u = 1

		-- list the subdirectories in the maps folder
		local dirlist = {}
		local dirs = ListDirsInDirectory(MapDirectories[map_directory])
		for i,f in ipairs(dirs) do
			dirlist[u] = f .. "/"
			u = u + 1
		end

		-- get maps in the main maps folder
		u = 1
		local fileslist = ListFilesInDirectory(MapDirectories[map_directory])
		for i,f in ipairs(fileslist) do
			if (string.find(f, "^.*%.smp%.?g?z?$")) then
				maps[u] = MapDirectories[map_directory] .. f
				u = u + 1
			end
		end

		-- get maps in subdirectories of the maps folder
		for i=1,table.getn(dirlist) do
			fileslist = ListFilesInDirectory(MapDirectories[map_directory] .. dirlist[i])
			for i,f in ipairs(fileslist) do
				if (string.find(f, "^.*%.smp%.?g?z?$")) then
					maps[u] = MapDirectories[map_directory] .. dirlist[i] .. f
					u = u + 1
				end
			end
		end

		-- run a map if it shares a name with the randomly chosen map for the province
		for i=1,table.getn(maps) do
			GetMapInfo(maps[i])
			if (mapinfo.description == province_map) then
				Attacker = GrandStrategyFaction
				Defender = province.Owner
				RunMap(maps[i])
				Attacker = ""
				Defender = ""
				if (GameResult == GameVictory) then
					province.Owner = GrandStrategyFaction
				end
				EndTurn();
			end
		end
	end
end

function CalculateProvinceBorderTiles()
	for key, value in pairs(WorldMapProvinces) do
		WorldMapProvinces[key]["BorderTiles"] = {}
		for i=1,table.getn(WorldMapProvinces[key].Tiles) do
			if (GetTileProvince(WorldMapProvinces[key].Tiles[i][1] - 1, WorldMapProvinces[key].Tiles[i][2]) ~= WorldMapProvinces[key]) then
				table.insert(WorldMapProvinces[key].BorderTiles, {WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2]})
			elseif (GetTileProvince(WorldMapProvinces[key].Tiles[i][1] + 1, WorldMapProvinces[key].Tiles[i][2]) ~= WorldMapProvinces[key]) then
				table.insert(WorldMapProvinces[key].BorderTiles, {WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2]})
			elseif (GetTileProvince(WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2] - 1) ~= WorldMapProvinces[key]) then
				table.insert(WorldMapProvinces[key].BorderTiles, {WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2]})
			elseif (GetTileProvince(WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2] + 1) ~= WorldMapProvinces[key]) then
				table.insert(WorldMapProvinces[key].BorderTiles, {WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2]})
			end
		end
	end
end

function GetTileProvince(x, y)
	if (x >= 0 and x < table.getn(WorldMapTiles[1]) and y >= 0 and y < table.getn(WorldMapTiles)) then
		for key, value in pairs(WorldMapProvinces) do
			for i=1,table.getn(WorldMapProvinces[key].Tiles) do
				if (WorldMapProvinces[key].Tiles[i][1] == x and WorldMapProvinces[key].Tiles[i][2] == y) then
					return WorldMapProvinces[key]
				end
			end
		end
		for key, value in pairs(WorldMapWaterProvinces) do
			for i=1,table.getn(WorldMapWaterProvinces[key].Tiles) do
				if (WorldMapWaterProvinces[key].Tiles[i][1] == x and WorldMapWaterProvinces[key].Tiles[i][2] == y) then
					return WorldMapWaterProvinces[key]
				end
			end
		end
		return nil
	else
		return nil
	end
end

function GetFactionFromName(faction)
	for key, value in pairs(Factions) do
		if (Factions[key].Name == faction) then
			return Factions[key]
		end
	end
end

function CanAttackProvince(province, faction)
	if (province.Owner == faction or province.Owner == "Ocean") then
		return false
	end
	
	for i=1,table.getn(province.Tiles) do
		if (GetTileProvince(province.Tiles[i][1] - 1, province.Tiles[i][2]) ~= nil and GetTileProvince(province.Tiles[i][1] - 1, province.Tiles[i][2]).Owner == faction) then
			return true
		elseif (GetTileProvince(province.Tiles[i][1] + 1, province.Tiles[i][2]) ~= nil and GetTileProvince(province.Tiles[i][1] + 1, province.Tiles[i][2]).Owner == faction) then
			return true
		elseif (GetTileProvince(province.Tiles[i][1], province.Tiles[i][2] - 1) ~= nil and GetTileProvince(province.Tiles[i][1], province.Tiles[i][2] - 1).Owner == faction) then
			return true
		elseif (GetTileProvince(province.Tiles[i][1], province.Tiles[i][2] + 1) ~= nil and GetTileProvince(province.Tiles[i][1], province.Tiles[i][2] + 1).Owner == faction) then
			return true
		end
	end

	return false
end

function RunGrandStrategyGameMenu()
	local menu = WarGameMenu(panel(1))

	menu:addLabel("Game Menu", 128, 11)

	menu:addHalfButton("Save (~<F11~>)", "f11", 16, 40,
		function() menu:stop(); RunGrandStrategySaveMenu() end)
	menu:addHalfButton("Load (~<F12~>)", "f12", 16 + 12 + 106, 40,
		function() menu:stop(); RunGrandStrategyLoadGameMenu() end)
--	menu:addFullButton("Options (~<F5~>)", "f5", 16, 40 + 36*1,
--		function() RunGameOptionsMenu() end)
--	menu:addFullButton("Help (~<F1~>)", "f1", 16, 40 + 36*2,
--		function() RunHelpMenu() end)
--	menu:addFullButton("~!Objectives", "o", 16, 40 + 36*3,
--		function() RunObjectivesMenu() end)
	menu:addFullButton("~!End Game", "e", 16, 40 + 36*4,
		function() RunEndGrandStrategyGameMenu() end)
	menu:addFullButton("Return to Game (~<Esc~>)", "escape", 16, 288 - 40,
		function()
			menu:stop()
			GrandStrategyMenu:stop();
			RunGrandStrategyGame()
		end)

	menu:run(false)
end

function RunEndGrandStrategyGameMenu()
	local menu = WarGameMenu(panel(1))

	menu:addLabel("End Game", 128, 11)
--	local b = menu:addFullButton("~!Restart Scenario", "r", 16, 40 + (36 * 0),
--		function() RunRestartConfirmMenu() end)
--	if (IsNetworkGame()) then
--		b:setEnabled(false)
--	end
--	menu:addFullButton("~!Surrender", "s", 16, 40 + (36 * 1),
--		function() RunSurrenderConfirmMenu() end)
	menu:addFullButton("~!Quit to Menu", "q", 16, 40 + (36 * 2),
		function() RunGrandStrategyQuitToMenuConfirmMenu() end)
	menu:addFullButton("E~!xit Program", "x", 16, 40 + (36 * 3),
		function() RunExitConfirmMenu() end)
	menu:addFullButton("Previous (~<Esc~>)", "escape", 16, 248,
		function() menu:stop() end)

	menu:run(false)
end

function RunGrandStrategyQuitToMenuConfirmMenu()
	local menu = WarGameMenu(panel(1))

	menu:addLabel("Are you sure you", 128, 11)
	menu:addLabel("want to quit to", 128, 11 + (24 * 1))
	menu:addLabel("the main menu?", 128, 11 + (24 * 2))
	menu:addFullButton("~!Quit to Menu", "q", 16, 11 + (24 * 3) + 29,
		function()
			StopMusic();
			GrandStrategy = false
			SetPlayerData(GetThisPlayer(), "RaceName", "gnome")
			GrandStrategyMenu:stop() 
			menu:stop()
		end)
	menu:addFullButton("Cancel (~<Esc~>)", "escape", 16, 248,
		function() menu:stop() end)

	menu:run(false)
end

function RunGrandStrategySaveMenu()
	local menu = WarGameMenu(panel(3))
	menu:resize(384, 256)

	menu:addLabel("Save Game", 384 / 2, 11)

	local default_name = GrandStrategyFaction
	local t = {"\\", "/", ":", "*", "?", "\"", "<", ">", "|", " "}
	table.foreachi(t, function(k,v) default_name = string.gsub(default_name, v, "") end)
	
	local t = menu:addTextInputField(default_name,
		(384 - 300 - 18) / 2, 11 + 36, 318)

	menu:addHalfButton("~!Save", "s", (384 - 300 - 18) / 2, 256 - 16 - 27,
		function()
			local name = t:getText()
			-- check for an empty string
			if (string.len(name) == 0) then
				return
			end
			-- replace invalid chars with underscore
			local t = {"\\", "/", ":", "*", "?", "\"", "<", ">", "|", " "}
			table.foreachi(t, function(k,v) name = string.gsub(name, v, "_") end)

			for key, value in pairs(WorldMapProvinces) do
				WorldMapProvinces[key].BorderTiles = nil
			end

			wyr.preferences.GrandStrategySaveGames[name] = {
				SavedWorldMapTiles = WorldMapTiles,
				SavedWorldMapProvinces = WorldMapProvinces,
				SavedWorldMapWaterProvinces = WorldMapWaterProvinces,
				SavedFactions = Factions
			}
			SavePreferences()
			CalculateProvinceBorderTiles()
    			menu:stop()
			GrandStrategyMenu:stop();
			RunGrandStrategyGame()
		end)

	menu:addHalfButton(cancel_name, "c", 384 - ((384 - 300 - 18) / 2) - 106, 256 - 16 - 27,
		function()
			menu:stop()
			GrandStrategyMenu:stop();
			RunGrandStrategyGame()
		end)

	menu:run(false)
end

function RunGrandStrategyLoadGameMenu()
	local menu = WarGameMenu(panel(3))
	menu:resize(384, 256)
	menu:setDrawMenusUnder(true)

	local saved_games_list = {}
	for key, value in pairs(wyr.preferences.GrandStrategySaveGames) do
		table.insert(saved_games_list, key)
	end
	
	menu:addLabel(load_game_name, 384 / 2, 11)
	local saved_games = menu:addDropDown(saved_games_list, (384 - 300 - 18) / 2, 11 + (36 * 1.5),
		function(dd) end)
	saved_games:setSize(152, 20)

	menu:addHalfButton(load_name, "l", (384 - 300 - 18) / 2, 256 - 16 - 27,
		function()
			if (saved_games:getSelected() < 0) then
				return
			end
			WorldMapTiles = wyr.preferences.GrandStrategySaveGames[saved_games_list[saved_games:getSelected() + 1]].SavedWorldMapTiles
			WorldMapProvinces = wyr.preferences.GrandStrategySaveGames[saved_games_list[saved_games:getSelected() + 1]].SavedWorldMapProvinces
			WorldMapWaterProvinces = wyr.preferences.GrandStrategySaveGames[saved_games_list[saved_games:getSelected() + 1]].SavedWorldMapWaterProvinces
			Factions = wyr.preferences.GrandStrategySaveGames[saved_games_list[saved_games:getSelected() + 1]].SavedFactions
			CalculateProvinceBorderTiles()
			menu:stop()
			GrandStrategyMenu:stop();
			RunGrandStrategyGame()
		end)
	menu:addHalfButton(cancel_name, "c", 384 - ((384 - 300 - 18) / 2) - 106, 256 - 16 - 27,
		function()
			menu:stop()
			GrandStrategyMenu:stop();
			RunGrandStrategyGame()
		end)

	menu:run(false)
end

function DrawWorldMapTile(file, tile_x, tile_y)
	if (GetWorldMapTile(tile_x, tile_y) ~= "" and string.find(file, "border") == nil and string.find(file, "sites") == nil) then
		local world_map_tile = CGraphic:New(file)
		world_map_tile:Load()
		OnScreenTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1] = ImageButton("")
		OnScreenTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1]:setActionCallback(
			function()
				SelectedProvince = GetTileProvince(tile_x, tile_y)
				GrandStrategyMenu:stop();
				RunGrandStrategyGame()
			end
		)
		GrandStrategyMenu:add(OnScreenTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1], 176 + 64 * (tile_x - WorldMapOffsetX), 16 + 64 * (tile_y - WorldMapOffsetY))
		OnScreenTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1]:setNormalImage(world_map_tile)
		OnScreenTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1]:setPressedImage(world_map_tile)
		OnScreenTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1]:setDisabledImage(world_map_tile)
		OnScreenTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1]:setSize(64, 64)
		OnScreenTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1]:setBorderSize(0)
	elseif (string.find(file, "border") ~= nil) then -- different method for border graphics
		local world_map_tile = CGraphic:New(file)
		world_map_tile:Load()
		if (string.find(file, "west") ~= nil) then
			OnScreenBorderWestTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1] = ImageButton("")
			OnScreenBorderWestTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1]:setActionCallback(
				function()
					SelectedProvince = GetTileProvince(tile_x, tile_y)
					GrandStrategyMenu:stop();
					RunGrandStrategyGame()
				end
			)
			GrandStrategyMenu:add(OnScreenBorderWestTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1], 176 + 64 * (tile_x - WorldMapOffsetX), 16 + 64 * (tile_y - WorldMapOffsetY))
			OnScreenBorderWestTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1]:setNormalImage(world_map_tile)
			OnScreenBorderWestTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1]:setPressedImage(world_map_tile)
			OnScreenBorderWestTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1]:setDisabledImage(world_map_tile)
			OnScreenBorderWestTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1]:setSize(64, 64)
			OnScreenBorderWestTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1]:setBorderSize(0)
		elseif (string.find(file, "east") ~= nil) then
			OnScreenBorderEastTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1] = ImageButton("")
			OnScreenBorderEastTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1]:setActionCallback(
				function()
					SelectedProvince = GetTileProvince(tile_x, tile_y)
					GrandStrategyMenu:stop();
					RunGrandStrategyGame()
				end
			)
			GrandStrategyMenu:add(OnScreenBorderEastTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1], 176 + 64 * (tile_x - WorldMapOffsetX), 16 + 64 * (tile_y - WorldMapOffsetY))
			OnScreenBorderEastTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1]:setNormalImage(world_map_tile)
			OnScreenBorderEastTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1]:setPressedImage(world_map_tile)
			OnScreenBorderEastTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1]:setDisabledImage(world_map_tile)
			OnScreenBorderEastTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1]:setSize(64, 64)
			OnScreenBorderEastTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1]:setBorderSize(0)
		elseif (string.find(file, "north") ~= nil) then
			OnScreenBorderNorthTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1] = ImageButton("")
			OnScreenBorderNorthTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1]:setActionCallback(
				function()
					SelectedProvince = GetTileProvince(tile_x, tile_y)
					GrandStrategyMenu:stop();
					RunGrandStrategyGame()
				end
			)
			GrandStrategyMenu:add(OnScreenBorderNorthTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1], 176 + 64 * (tile_x - WorldMapOffsetX), 16 + 64 * (tile_y - WorldMapOffsetY))
			OnScreenBorderNorthTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1]:setNormalImage(world_map_tile)
			OnScreenBorderNorthTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1]:setPressedImage(world_map_tile)
			OnScreenBorderNorthTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1]:setDisabledImage(world_map_tile)
			OnScreenBorderNorthTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1]:setSize(64, 64)
			OnScreenBorderNorthTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1]:setBorderSize(0)
		elseif (string.find(file, "south") ~= nil) then
			OnScreenBorderSouthTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1] = ImageButton("")
			OnScreenBorderSouthTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1]:setActionCallback(
				function()
					SelectedProvince = GetTileProvince(tile_x, tile_y)
					GrandStrategyMenu:stop();
					RunGrandStrategyGame()
				end
			)
			GrandStrategyMenu:add(OnScreenBorderSouthTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1], 176 + 64 * (tile_x - WorldMapOffsetX), 16 + 64 * (tile_y - WorldMapOffsetY))
			OnScreenBorderSouthTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1]:setNormalImage(world_map_tile)
			OnScreenBorderSouthTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1]:setPressedImage(world_map_tile)
			OnScreenBorderSouthTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1]:setDisabledImage(world_map_tile)
			OnScreenBorderSouthTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1]:setSize(64, 64)
			OnScreenBorderSouthTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1]:setBorderSize(0)
		end
	elseif (string.find(file, "sites") ~= nil) then -- different method for site graphics
		local world_map_tile = CGraphic:New(file)
		world_map_tile:Load()
		OnScreenSites[table.getn(OnScreenSites) + 1] = ImageButton("")
		OnScreenSites[table.getn(OnScreenSites)]:setActionCallback(
			function()
				SelectedProvince = GetTileProvince(tile_x, tile_y)
				GrandStrategyMenu:stop();
				RunGrandStrategyGame()
			end
		)
		GrandStrategyMenu:add(OnScreenSites[table.getn(OnScreenSites)], 176 + 64 * (tile_x - WorldMapOffsetX), 16 + 64 * (tile_y - WorldMapOffsetY))
		OnScreenSites[table.getn(OnScreenSites)]:setNormalImage(world_map_tile)
		OnScreenSites[table.getn(OnScreenSites)]:setPressedImage(world_map_tile)
		OnScreenSites[table.getn(OnScreenSites)]:setDisabledImage(world_map_tile)
		OnScreenSites[table.getn(OnScreenSites)]:setSize(64, 64)
		OnScreenSites[table.getn(OnScreenSites)]:setBorderSize(0)
	else -- different method for fog tiles
		local world_map_tile = CGraphic:New(file)
		world_map_tile:Load()
		OnScreenTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1] = ImageWidget(world_map_tile)
		GrandStrategyMenu:add(OnScreenTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1], 176 + 64 * (tile_x - WorldMapOffsetX) - 16, 16 + 64 * (tile_y - WorldMapOffsetY) - 16)
	end
end

function DrawWorldMapMinimapTile(file, tile_x, tile_y)
	-- draw tile in the minimap
	local minimap_tile_size_x = 1
	local minimap_tile_size_y = 1
	local minimap_offset_x = 0
	local minimap_offset_y = 0
	if (table.getn(WorldMapTiles) <= 128 and table.getn(WorldMapTiles[1]) <= 128) then
		minimap_tile_size_x = math.floor(128 / table.getn(WorldMapTiles[1]))
		minimap_tile_size_y = math.floor(128 / table.getn(WorldMapTiles))
		if (table.getn(WorldMapTiles[1]) > table.getn(WorldMapTiles)) then
			minimap_tile_size_y = minimap_tile_size_x
			minimap_offset_y = ((128 - math.floor(table.getn(WorldMapTiles) * minimap_tile_size_y)) / 2)
		else
			minimap_tile_size_x = minimap_tile_size_y
			minimap_offset_x = ((128 - math.floor(table.getn(WorldMapTiles[1]) * minimap_tile_size_x)) / 2)
		end
	else
		if (table.getn(WorldMapTiles[1]) > table.getn(WorldMapTiles)) then
			minimap_offset_y = ((128 - math.floor((table.getn(WorldMapTiles) / 2) * minimap_tile_size_y)) / 2)
		else
			minimap_offset_x = ((128 - math.floor((table.getn(WorldMapTiles[1]) / 2) * minimap_tile_size_x)) / 2)
		end
	end

	local minimap_tile = CGraphic:New(file)
	minimap_tile:Load()
	b = ImageButton("")
	b:setActionCallback(
		function()
			WorldMapOffsetX = math.floor(tile_x - (((Video.Width - 16 - 176) / 64) / 2))
			if (WorldMapOffsetX < 0) then
				WorldMapOffsetX = 0
			elseif (WorldMapOffsetX > table.getn(WorldMapTiles[1]) - 1 - math.floor((Video.Width - 16 - 176) / 64)) then
				WorldMapOffsetX = table.getn(WorldMapTiles[1]) - 1 - math.floor((Video.Width - 16 - 176) / 64)
			end

			WorldMapOffsetY = math.floor(tile_y - (((Video.Height - 16 - 16) / 64) / 2))
			if (WorldMapOffsetY < 0) then
				WorldMapOffsetY = 0
			elseif (WorldMapOffsetY > table.getn(WorldMapTiles) - 1 - math.floor((Video.Height - 16 - 16) / 64)) then
				WorldMapOffsetY = table.getn(WorldMapTiles) - 1 - math.floor((Video.Height - 16 - 16) / 64)
			end

			GrandStrategyMenu:stop()
			RunGrandStrategyGame()
		end
	)
	if (table.getn(WorldMapTiles) <= 128 and table.getn(WorldMapTiles[1]) <= 128) then
		GrandStrategyMenu:add(b, 24 + minimap_offset_x + minimap_tile_size_x * tile_x, 26 + minimap_offset_y + minimap_tile_size_y * tile_y)
	elseif (math.fmod(tile_x, 2) == 0 and math.fmod(tile_y, 2) == 0) then -- if one of the sides of the map is larger than 128, then only draw minimap tiles for one of every four tiles
		GrandStrategyMenu:add(b, 24 + minimap_offset_x + minimap_tile_size_x * (tile_x / 2), 26 + minimap_offset_y + minimap_tile_size_y * (tile_y / 2))
	end
	b:setNormalImage(minimap_tile)
	b:setPressedImage(minimap_tile)
	b:setDisabledImage(minimap_tile)
	b:setSize(minimap_tile_size_x, minimap_tile_size_y)
	b:setBorderSize(0)
end

-- draw UI
function AddUIElement(file, x, y)
	local ui_element = CGraphic:New(file)
	ui_element:Load()
	ui_element = ImageWidget(ui_element)
	GrandStrategyMenu:add(ui_element, x, y)
end

function RedrawOnScreenTiles()
	if (OnScreenTiles ~= nil) then
		for i=1,table.getn(OnScreenTiles) do
			for j=1,table.getn(OnScreenTiles[i]) do
				if (OnScreenTiles[i][j] ~= nil) then
					GrandStrategyMenu:remove(OnScreenTiles[i][j])
				end
				if (OnScreenBorderWestTiles[i][j] ~= nil) then
					GrandStrategyMenu:remove(OnScreenBorderWestTiles[i][j])
				end
				if (OnScreenBorderEastTiles[i][j] ~= nil) then
					GrandStrategyMenu:remove(OnScreenBorderEastTiles[i][j])
				end
				if (OnScreenBorderNorthTiles[i][j] ~= nil) then
					GrandStrategyMenu:remove(OnScreenBorderNorthTiles[i][j])
				end
				if (OnScreenBorderSouthTiles[i][j] ~= nil) then
					GrandStrategyMenu:remove(OnScreenBorderSouthTiles[i][j])
				end
			end
		end
	end
	
	if (OnScreenSites ~= nil) then
		for i=1,table.getn(OnScreenSites) do
			GrandStrategyMenu:remove(OnScreenSites[i])
		end
	end

	if (UIFillerRight ~= nil) then
		GrandStrategyMenu:remove(UIFillerRight)
	end
	if (UIStatusLine ~= nil) then
		GrandStrategyMenu:remove(UIStatusLine)
	end

	OnScreenTiles = nil
	OnScreenTiles = {}
	OnScreenBorderWestTiles = nil
	OnScreenBorderWestTiles = {}
	OnScreenBorderEastTiles = nil
	OnScreenBorderEastTiles = {}
	OnScreenBorderNorthTiles = nil
	OnScreenBorderNorthTiles = {}
	OnScreenBorderSouthTiles = nil
	OnScreenBorderSouthTiles = {}
	
	for y=WorldMapOffsetY,(WorldMapOffsetY + math.floor((Video.Height - 16 - 16) / 64)) do
		OnScreenTiles[y - WorldMapOffsetY + 1] = {}
		OnScreenBorderWestTiles[y - WorldMapOffsetY + 1] = {}
		OnScreenBorderEastTiles[y - WorldMapOffsetY + 1] = {}
		OnScreenBorderNorthTiles[y - WorldMapOffsetY + 1] = {}
		OnScreenBorderSouthTiles[y - WorldMapOffsetY + 1] = {}
	end

	OnScreenSites = nil
	OnScreenSites = {}

	for x=WorldMapOffsetX,(WorldMapOffsetX + math.floor((Video.Width - 16 - 176) / 64)) do
		for y=WorldMapOffsetY,(WorldMapOffsetY + math.floor((Video.Height - 16 - 16) / 64)) do
			-- set map tile terrain
			if (GetWorldMapTile(x, y) == "DkPl") then
				DrawWorldMapTile("tilesets/world/terrain/plains.png", x, y)
			elseif (GetWorldMapTile(x, y) == "Hill") then
				DrawWorldMapTile("tilesets/world/terrain/hills_outer.png", x, y)
			elseif (GetWorldMapTile(x, y) == "Mntn") then
				DrawWorldMapTile("tilesets/world/terrain/mountains_outer.png", x, y)
			elseif (GetWorldMapTile(x, y) == "Watr") then
				DrawWorldMapTile("tilesets/world/terrain/ocean.png", x, y)
			end
		end
	end

	for key, value in pairs(WorldMapProvinces) do
		-- draw province borders
		for i=1,table.getn(WorldMapProvinces[key].BorderTiles) do
			if (WorldMapProvinces[key].BorderTiles[i][1] >= WorldMapOffsetX and WorldMapProvinces[key].BorderTiles[i][1] <= math.floor(WorldMapOffsetX + ((Video.Width - 16 - 176) / 64)) and WorldMapProvinces[key].BorderTiles[i][2] >= WorldMapOffsetY and WorldMapProvinces[key].BorderTiles[i][2] <= math.floor(WorldMapOffsetY + ((Video.Height - 16 - 16) / 64))) then
				local west_tile_province = GetTileProvince(WorldMapProvinces[key].BorderTiles[i][1] - 1, WorldMapProvinces[key].BorderTiles[i][2])
				local east_tile_province = GetTileProvince(WorldMapProvinces[key].BorderTiles[i][1] + 1, WorldMapProvinces[key].BorderTiles[i][2])
				local north_tile_province = GetTileProvince(WorldMapProvinces[key].BorderTiles[i][1], WorldMapProvinces[key].BorderTiles[i][2] - 1)
				local south_tile_province = GetTileProvince(WorldMapProvinces[key].BorderTiles[i][1], WorldMapProvinces[key].BorderTiles[i][2] + 1)

				if (west_tile_province ~= WorldMapProvinces[key] and (west_tile_province == nil or west_tile_province.Owner ~= "Ocean")) then
					if (WorldMapProvinces[key].Owner ~= "" and (west_tile_province == nil or west_tile_province.Owner ~= WorldMapProvinces[key].Owner)) then
						DrawWorldMapTile("tilesets/world/terrain/province_border_west_" .. GetFactionFromName(WorldMapProvinces[key].Owner).Color .. ".png", WorldMapProvinces[key].BorderTiles[i][1], WorldMapProvinces[key].BorderTiles[i][2])
					else
						DrawWorldMapTile("tilesets/world/terrain/province_border_west.png", WorldMapProvinces[key].BorderTiles[i][1], WorldMapProvinces[key].BorderTiles[i][2])
					end
				end
				if (east_tile_province ~= WorldMapProvinces[key] and (east_tile_province == nil or east_tile_province.Owner ~= "Ocean")) then
					if (WorldMapProvinces[key].Owner ~= "" and (east_tile_province == nil or east_tile_province.Owner ~= WorldMapProvinces[key].Owner)) then
						DrawWorldMapTile("tilesets/world/terrain/province_border_east_" .. GetFactionFromName(WorldMapProvinces[key].Owner).Color .. ".png", WorldMapProvinces[key].BorderTiles[i][1], WorldMapProvinces[key].BorderTiles[i][2])
					else
						DrawWorldMapTile("tilesets/world/terrain/province_border_east.png", WorldMapProvinces[key].BorderTiles[i][1], WorldMapProvinces[key].BorderTiles[i][2])
					end
				end
				if (north_tile_province ~= WorldMapProvinces[key] and (north_tile_province == nil or north_tile_province.Owner ~= "Ocean")) then
					if (WorldMapProvinces[key].Owner ~= "" and (north_tile_province == nil or north_tile_province.Owner ~= WorldMapProvinces[key].Owner)) then
						DrawWorldMapTile("tilesets/world/terrain/province_border_north_" .. GetFactionFromName(WorldMapProvinces[key].Owner).Color .. ".png", WorldMapProvinces[key].BorderTiles[i][1], WorldMapProvinces[key].BorderTiles[i][2])
					else
						DrawWorldMapTile("tilesets/world/terrain/province_border_north.png", WorldMapProvinces[key].BorderTiles[i][1], WorldMapProvinces[key].BorderTiles[i][2])
					end
				end
				if (south_tile_province ~= WorldMapProvinces[key] and (south_tile_province == nil or south_tile_province.Owner ~= "Ocean")) then
					if (WorldMapProvinces[key].Owner ~= "" and (south_tile_province == nil or south_tile_province.Owner ~= WorldMapProvinces[key].Owner)) then
						DrawWorldMapTile("tilesets/world/terrain/province_border_south_" .. GetFactionFromName(WorldMapProvinces[key].Owner).Color .. ".png", WorldMapProvinces[key].BorderTiles[i][1], WorldMapProvinces[key].BorderTiles[i][2])
					else
						DrawWorldMapTile("tilesets/world/terrain/province_border_south.png", WorldMapProvinces[key].BorderTiles[i][1], WorldMapProvinces[key].BorderTiles[i][2])
					end
				end
			end
		end


		-- draw province settlement
		if (WorldMapProvinces[key].Owner ~= "") then
			if (WorldMapProvinces[key].SettlementLocation[1] >= WorldMapOffsetX and WorldMapProvinces[key].SettlementLocation[1] <= math.floor(WorldMapOffsetX + ((Video.Width - 16 - 176) / 64)) and WorldMapProvinces[key].SettlementLocation[2] >= WorldMapOffsetY and WorldMapProvinces[key].SettlementLocation[2] <= math.floor(WorldMapOffsetY + ((Video.Height - 16 - 16) / 64))) then
				if (GetFactionFromName(WorldMapProvinces[key].Owner).Civilization == "dwarf") then
					DrawWorldMapTile("tilesets/world/sites/dwarven_settlement.png", WorldMapProvinces[key].SettlementLocation[1], WorldMapProvinces[key].SettlementLocation[2])
				elseif (GetFactionFromName(WorldMapProvinces[key].Owner).Civilization == "gnome") then
					DrawWorldMapTile("tilesets/world/sites/gnomish_settlement.png", WorldMapProvinces[key].SettlementLocation[1], WorldMapProvinces[key].SettlementLocation[2])
				end
			end
		end
	end

	-- draw terra incognita tiles after the main ones, so that they may overlap with them a bit
	for x=WorldMapOffsetX,(WorldMapOffsetX + math.floor((Video.Width - 16 - 176) / 64)) do
		for y=WorldMapOffsetY,(WorldMapOffsetY + math.floor((Video.Height - 16 - 16) / 64)) do
			-- set map tile terrain
			if (GetWorldMapTile(x, y) == "") then
				DrawWorldMapTile("tilesets/world/terrain/fog.png", x, y)
			end
		end
	end

	local ui_element = CGraphic:New("ui/dwarf/filler-right_" .. Video.Height .. ".png")
	ui_element:Load()
	UIFillerRight = ImageWidget(ui_element)
	GrandStrategyMenu:add(UIFillerRight, Video.Width - 16, 0)

	local ui_element = CGraphic:New("ui/dwarf/statusline_" .. Video.Width .. ".png")
	ui_element:Load()
	UIStatusLine = ImageWidget(ui_element)
	GrandStrategyMenu:add(UIStatusLine, 176, Video.Height - 16)
end

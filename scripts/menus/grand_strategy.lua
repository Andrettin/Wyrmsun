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
		faction:setList(faction_list)
		faction:setSize(152, 20)
		faction:setSelected(0)
	end

	menu:run()
end

function RunGrandStrategyGame()
	wyrmsun.playlist = { "music/legends_of_the_north.ogg" }
	SetPlayerData(GetThisPlayer(), "RaceName", "gnome")

	if not (IsMusicPlaying()) then
		PlayMusic("music/legends_of_the_north.ogg")
	end

	local menu = WarMenu()
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2

	local function DrawTile(file, x, y)
		local world_map_tile = CGraphic:New(file)
		world_map_tile:Load()
		local b = ImageButton("")
		b:setActionCallback(
			function()
				SelectedProvince = GetTileProvince(x, y)
				menu:stop();
				RunGrandStrategyGame()
			end
		)
		menu:add(b, 176 + 64 * (x - WorldMapOffsetX), 16 + 64 * (y - WorldMapOffsetY))
		b:setNormalImage(world_map_tile)
		b:setPressedImage(world_map_tile)
		b:setDisabledImage(world_map_tile)
		b:setSize(64, 64)
		b:setBorderSize(0)
	end

	for x=WorldMapOffsetX,(WorldMapOffsetX + ((Video.Width - 16 - 176) / 64)) do
		for y=WorldMapOffsetY,(WorldMapOffsetY + ((Video.Height - 16 - 16) / 64)) do
			-- set map tile terrain
			if (GetWorldMapTile(x, y) == "DkPl") then
				DrawTile("tilesets/world/terrain/plains.png", x, y)
			elseif (GetWorldMapTile(x, y) == "Hill") then
				DrawTile("tilesets/world/terrain/hills_outer.png", x, y)
			elseif (GetWorldMapTile(x, y) == "Mntn") then
				DrawTile("tilesets/world/terrain/mountains_outer.png", x, y)
--					if (GetWorldMapTile(x, y + 1) == "Hill") then
--						DrawTile("tilesets/world/terrain/snow_desert_south.png", x, y)
--					elseif (GetWorldMapTile(x - 1, y + 1) == "Hill") then
--						DrawTile("tilesets/world/terrain/snow_desert_southwest.png", x, y)
--					elseif (GetWorldMapTile(x + 1, y + 1) == "Hill") then
--						DrawTile("tilesets/world/terrain/snow_desert_southeast.png", x, y)
--					else
--						DrawTile("tilesets/world/terrain/snow.png", x, y)
--					end
			end
		end
	end

	for key, value in pairs(WorldMapProvinces) do
		-- draw province borders
		for i=1,table.getn(WorldMapProvinces[key].Tiles) do
			if (GetTileProvince(WorldMapProvinces[key].Tiles[i][1] - 1, WorldMapProvinces[key].Tiles[i][2]) ~= WorldMapProvinces[key]) then
				if (WorldMapProvinces[key].Owner ~= "" and (GetTileProvince(WorldMapProvinces[key].Tiles[i][1] - 1, WorldMapProvinces[key].Tiles[i][2]) == nil or GetTileProvince(WorldMapProvinces[key].Tiles[i][1] - 1, WorldMapProvinces[key].Tiles[i][2]).Owner ~= WorldMapProvinces[key].Owner)) then
					DrawTile("tilesets/world/terrain/province_border_west_" .. GetFactionFromName(WorldMapProvinces[key].Owner).Color .. ".png", WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2])
				else
					DrawTile("tilesets/world/terrain/province_border_west.png", WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2])
				end
			end
			if (GetTileProvince(WorldMapProvinces[key].Tiles[i][1] + 1, WorldMapProvinces[key].Tiles[i][2]) ~= WorldMapProvinces[key]) then
				if (WorldMapProvinces[key].Owner ~= "" and (GetTileProvince(WorldMapProvinces[key].Tiles[i][1] + 1, WorldMapProvinces[key].Tiles[i][2]) == nil or GetTileProvince(WorldMapProvinces[key].Tiles[i][1] + 1, WorldMapProvinces[key].Tiles[i][2]).Owner ~= WorldMapProvinces[key].Owner)) then
					DrawTile("tilesets/world/terrain/province_border_east_" .. GetFactionFromName(WorldMapProvinces[key].Owner).Color .. ".png", WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2])
				else
					DrawTile("tilesets/world/terrain/province_border_east.png", WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2])
				end
			end
			if (GetTileProvince(WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2] - 1) ~= WorldMapProvinces[key]) then
				if (WorldMapProvinces[key].Owner ~= "" and (GetTileProvince(WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2] - 1) == nil or GetTileProvince(WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2] - 1).Owner ~= WorldMapProvinces[key].Owner)) then
					DrawTile("tilesets/world/terrain/province_border_north_" .. GetFactionFromName(WorldMapProvinces[key].Owner).Color .. ".png", WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2])
				else
					DrawTile("tilesets/world/terrain/province_border_north.png", WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2])
				end
			end
			if (GetTileProvince(WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2] + 1) ~= WorldMapProvinces[key]) then
				if (WorldMapProvinces[key].Owner ~= "" and (GetTileProvince(WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2] + 1) == nil or GetTileProvince(WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2] + 1).Owner ~= WorldMapProvinces[key].Owner)) then
					DrawTile("tilesets/world/terrain/province_border_south_" .. GetFactionFromName(WorldMapProvinces[key].Owner).Color .. ".png", WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2])
				else
					DrawTile("tilesets/world/terrain/province_border_south.png", WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2])
				end
			end
		end

		-- draw province settlement
		if (WorldMapProvinces[key].Owner ~= "" and WorldMapProvinces[key].SettlementLocation[1] >= WorldMapOffsetX and WorldMapProvinces[key].SettlementLocation[1] < WorldMapOffsetX + ((Video.Width - 16 - 176) / 64) and WorldMapProvinces[key].SettlementLocation[2] >= WorldMapOffsetY and WorldMapProvinces[key].SettlementLocation[2] < WorldMapOffsetY + ((Video.Height - 16 - 16) / 64)) then
			if (GetArrayIncludes(GetCivilizationFactions("dwarf"), WorldMapProvinces[key].Owner)) then
				DrawTile("tilesets/world/sites/dwarven_settlement.png", WorldMapProvinces[key].SettlementLocation[1], WorldMapProvinces[key].SettlementLocation[2])
			elseif (GetArrayIncludes(GetCivilizationFactions("gnome"), WorldMapProvinces[key].Owner)) then
				DrawTile("tilesets/world/sites/gnomish_settlement.png", WorldMapProvinces[key].SettlementLocation[1], WorldMapProvinces[key].SettlementLocation[2])
			end
		end
	end
	
	
	-- draw terra incognita tiles after the main ones, so that they may overlap with them a bit
	for x=WorldMapOffsetX,(WorldMapOffsetX + ((Video.Width - 16 - 176) / 64)) do
		for y=WorldMapOffsetY,(WorldMapOffsetY + ((Video.Height - 16 - 16) / 64)) do
			-- set map tile terrain
			if (GetWorldMapTile(x, y) == "") then
				local world_map_tile = CGraphic:New("tilesets/world/terrain/fog.png")
				world_map_tile:Load()
				world_map_tile = ImageWidget(world_map_tile)
				menu:add(world_map_tile, 176 + 64 * (x - WorldMapOffsetX) - 16, 16 + 64 * (y - WorldMapOffsetY) - 16)
			end
		end
	end

	-- draw UI
	local function AddUIElement(file, x, y)
		local ui_element = CGraphic:New(file)
		ui_element:Load()
		ui_element = ImageWidget(ui_element)
		menu:add(ui_element, x, y)
	end

	AddUIElement("ui/dwarf/infopanel.png", 0, 160)
	AddUIElement("ui/dwarf/filler-right_" .. Video.Height .. ".png", Video.Width - 16, 0)
	AddUIElement("ui/dwarf/resource_" .. Video.Width .. ".png", 176, 0)
	AddUIElement("ui/dwarf/statusline_" .. Video.Width .. ".png", 176, Video.Height - 16)
	AddUIElement("ui/dwarf/buttonpanel_" .. Video.Height .. ".png", 0, 336)
	AddUIElement("ui/dwarf/menubutton.png", 0, 0)
	AddUIElement("ui/dwarf/minimap.png", 0, 24)

	menu:addLabel(GrandStrategyFaction .. ", " .. GrandStrategyYear .. " AD", 88, 6, Fonts["game"], true)
	if (SelectedProvince ~= nil) then
		if (SelectedProvince.Owner ~= "") then
			menu:addLabel(SelectedProvince.Name .. ",", 88, 171, Fonts["game"], true)
			menu:addLabel(SelectedProvince.Owner, 88, 185, Fonts["game"], true)
		else
			menu:addLabel(SelectedProvince.Name, 88, 171, Fonts["game"], true)
		end

		if (CanAttackProvince(SelectedProvince, GrandStrategyFaction)) then
			-- add an attack button for enemy provinces
			local b = menu:addImageButton("~!Attack!", "a", 24, 340, function()
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
	local b = menu:addImageButton("~!End Turn", "e", 24, Video.Height - 22 - 16, function()
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

	-- add a pseudo-button to allow going back
	menu:addButton("", "escape", 0, 0,
		function()
			menu:stop();
		end,
	{0, 0})

	-- add pseudo-buttons to allow the player to see other parts of the map
	menu:addButton("", "up", 0, 0,
		function()
			if (WorldMapOffsetY > 0) then
				WorldMapOffsetY = WorldMapOffsetY - 1;
			end
			menu:stop();
			RunGrandStrategyGame()
		end,
	{0, 0})
	menu:addButton("", "down", 0, 0,
		function()
			if (WorldMapOffsetY < table.getn(WorldMapTiles) - 1 - ((Video.Height - 16 - 16) / 64)) then
				WorldMapOffsetY = WorldMapOffsetY + 1;
			end
			menu:stop();
			RunGrandStrategyGame()
		end,
	{0, 0})

	menu:addButton("", "left", 0, 0,
		function()
			if (WorldMapOffsetX > 0) then
				WorldMapOffsetX = WorldMapOffsetX - 1;
			end
			menu:stop();
			RunGrandStrategyGame()
		end,
	{0, 0})
	menu:addButton("", "right", 0, 0,
		function()
			if (WorldMapOffsetX < table.getn(WorldMapTiles) - 1 - ((Video.Width - 16 - 176) / 64)) then
				WorldMapOffsetX = WorldMapOffsetX + 1;
			end
			menu:stop();
			RunGrandStrategyGame()
		end,
	{0, 0})

	function EndTurn()
		GrandStrategyYear = GrandStrategyYear + 1;
		menu:stop();
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

	menu:run()
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

function GetFactionColor(faction)
	if (faction == "Norlund Clan") then
		return "red"
	elseif (faction == "Shorbear Clan" or faction == "Gnomes") then
		return "blue"
	elseif (faction == "Shinsplitter Clan") then
		return "green"
	else
		return "red"
	end
end

function CanAttackProvince(province, faction)
	if (province.Owner == faction) then
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
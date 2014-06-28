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
			InterfaceState = "Province"
			CalculateTileProvinces()
			CalculateProvinceBorderTiles()
			-- add resource quantities to factions that don't have that set up
			for key, value in pairs(Factions) do
				if (Factions[key].Gold == nil) then
					Factions[key]["Gold"] = 10000
				end
				if (Factions[key].Commodities == nil) then
					Factions[key]["Commodities"] = {}
				end
				if (Factions[key].Commodities.Lumber == nil) then
					Factions[key].Commodities["Lumber"] = 2400
				end
			end
			
			-- initialize province variables
			for key, value in pairs(WorldMapProvinces) do
				if (WorldMapProvinces[key].Units == nil) then
					WorldMapProvinces[key]["Units"] = {}
				end
				if (WorldMapProvinces[key].UnderConstructionUnits == nil) then
					WorldMapProvinces[key]["UnderConstructionUnits"] = {}
				end
				if (WorldMapProvinces[key].MovingUnits == nil) then
					WorldMapProvinces[key]["MovingUnits"] = {}
				end
				if (WorldMapProvinces[key].AttackingUnits == nil) then
					WorldMapProvinces[key]["AttackingUnits"] = {}
				end
				for gsunit_key, gsunit_value in pairs(GrandStrategyUnits) do
					if (WorldMapProvinces[key].Units[gsunit_key] == nil) then
						WorldMapProvinces[key].Units[gsunit_key] = 0
					end
					if (WorldMapProvinces[key].UnderConstructionUnits[gsunit_key] == nil) then
						WorldMapProvinces[key].UnderConstructionUnits[gsunit_key] = 0
					end
					if (WorldMapProvinces[key].MovingUnits[gsunit_key] == nil) then
						WorldMapProvinces[key].MovingUnits[gsunit_key] = 0
					end
					if (WorldMapProvinces[key].AttackingUnits[gsunit_key] == nil) then
						WorldMapProvinces[key].AttackingUnits[gsunit_key] = 0
					end
				end
				if (WorldMapProvinces[key].AttackedBy == nil) then
					WorldMapProvinces[key]["AttackedBy"] = ""
				end
				if (WorldMapProvinces[key].SettlementBuildings == nil) then
					WorldMapProvinces[key]["SettlementBuildings"] = {}
				end
				for gsunit_key, gsunit_value in pairs(GrandStrategyBuildings) do
					if (WorldMapProvinces[key].SettlementBuildings[gsunit_key] == nil) then
						WorldMapProvinces[key].SettlementBuildings[gsunit_key] = 0 -- 0 = not built, 1 = under construction, 2 = built
					end
				end
			end

			SelectedUnits = {}
			for gsunit_key, gsunit_value in pairs(GrandStrategyUnits) do
				SelectedUnits[gsunit_key] = 0
			end

			-- set all non-setup unit costs to 0, to avoid a nil value
			for gsunit_key, gsunit_value in pairs(GrandStrategyUnits) do
				if (GrandStrategyUnits[gsunit_key].Costs.Gold == nil) then
					GrandStrategyUnits[gsunit_key].Costs["Gold"] = 0
				end
				if (GrandStrategyUnits[gsunit_key].Costs.Lumber == nil) then
					GrandStrategyUnits[gsunit_key].Costs["Lumber"] = 0
				end
			end
			for gsunit_key, gsunit_value in pairs(GrandStrategyBuildings) do
				if (GrandStrategyBuildings[gsunit_key].Costs.Gold == nil) then
					GrandStrategyBuildings[gsunit_key].Costs["Gold"] = 0
				end
				if (GrandStrategyBuildings[gsunit_key].Costs.Lumber == nil) then
					GrandStrategyBuildings[gsunit_key].Costs["Lumber"] = 0
				end
				if (GrandStrategyBuildings[gsunit_key].RequiredBuildings == nil) then
					GrandStrategyBuildings[gsunit_key]["RequiredBuildings"] = {}
				end
			end

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
		if (tonumber(string.sub(date_list[date:getSelected() + 1], 0, -3)) >= 550) then
			faction_list = {"Kal Kartha", "Knalga", "Shinsplitter Clan"}
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

	DrawOnScreenTiles()
	DrawGrandStrategyInterface()
	DrawMinimap()
	
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
			DrawOnScreenTiles()
		end,
	{0, 0})
	GrandStrategyMenu:addButton("", "down", 0, 0,
		function()
			if (WorldMapOffsetY < table.getn(WorldMapTiles) - 1 - math.floor((Video.Height - 16 - 16) / 64)) then
				WorldMapOffsetY = WorldMapOffsetY + 1;
			end
			DrawOnScreenTiles()
		end,
	{0, 0})

	GrandStrategyMenu:addButton("", "left", 0, 0,
		function()
			if (WorldMapOffsetX > 0) then
				WorldMapOffsetX = WorldMapOffsetX - 1;
			end
			DrawOnScreenTiles()
		end,
	{0, 0})
	GrandStrategyMenu:addButton("", "right", 0, 0,
		function()
			if (WorldMapOffsetX < table.getn(WorldMapTiles[1]) - 1 - math.floor((Video.Width - 16 - 176) / 64)) then
				WorldMapOffsetX = WorldMapOffsetX + 1;
			end
			DrawOnScreenTiles()
		end,
	{0, 0})

	GrandStrategyMenu:run()
end

function EndTurn()
	GrandStrategyYear = GrandStrategyYear + 1;
	local attack_happened = false

	-- AI moves
	for key, value in pairs(Factions) do
		if (Factions[key].Name ~= GrandStrategyFaction and GetFactionNumProvinces(Factions[key].Name) > 0) then
			AIDoTurn(Factions[key])
		end
	end

	-- collect resources
	for i=1,table.getn(WorldMapResources.Gold) do
		local resource_owner = GetFactionFromName(GetTileProvince(WorldMapResources.Gold[i][1], WorldMapResources.Gold[i][2]).Owner)
		if (resource_owner ~= nil) then
			resource_owner.Gold = resource_owner.Gold + 200
		end
	end
	for i=1,table.getn(WorldMapResources.Lumber) do
		local resource_owner = GetFactionFromName(GetTileProvince(WorldMapResources.Lumber[i][1], WorldMapResources.Lumber[i][2]).Owner)
		if (resource_owner ~= nil) then
			if (ProvinceHasBuildingType(GetTileProvince(WorldMapResources.Lumber[i][1], WorldMapResources.Lumber[i][2]), "Lumber Mill")) then
				resource_owner.Commodities.Lumber = resource_owner.Commodities.Lumber + 125
			else
				resource_owner.Commodities.Lumber = resource_owner.Commodities.Lumber + 100
			end
		end
	end

	for key, value in pairs(WorldMapProvinces) do
		-- construct buildings and train units
		for gsunit_key, gsunit_value in pairs(GrandStrategyBuildings) do
			if (WorldMapProvinces[key].SettlementBuildings[gsunit_key] == 1) then
				WorldMapProvinces[key].SettlementBuildings[gsunit_key] = 2
			end
		end
		for gsunit_key, gsunit_value in pairs(GrandStrategyUnits) do
			WorldMapProvinces[key].Units[gsunit_key] = WorldMapProvinces[key].Units[gsunit_key] + WorldMapProvinces[key].UnderConstructionUnits[gsunit_key] + WorldMapProvinces[key].MovingUnits[gsunit_key]
			WorldMapProvinces[key].UnderConstructionUnits[gsunit_key] = 0
			WorldMapProvinces[key].MovingUnits[gsunit_key] = 0
		end
		
		-- effect attacks
		if (WorldMapProvinces[key].AttackedBy ~= "") then
			AttackProvince(WorldMapProvinces[key], WorldMapProvinces[key].AttackedBy)
			WorldMapProvinces[key].AttackedBy = ""
			attack_happened = true
		end
	end

	if (attack_happened) then
		DrawMinimap()
	end

	DrawGrandStrategyInterface()
	DrawOnScreenTiles()
end

function AttackProvince(province, faction)
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
				Attacker = faction
				if (province.Owner ~= "") then
					Defender = province.Owner
				else
					Defender = province.Name
				end
				AttackingUnits = province.AttackingUnits
				AttackedProvince = province
				
				local victorious_player = ""

				if (Attacker == GrandStrategyFaction or Defender == GrandStrategyFaction) then -- if the human player is involved, run a RTS battle map, and if not autoresolve the battle
					RunMap(maps[i])

					if (GameResult == GameVictory) then
						victorious_player = GrandStrategyFaction
					elseif (Attacker == GrandStrategyFaction) then
						victorious_player = Defender
					elseif (Defender == GrandStrategyFaction) then
						victorious_player = Attacker
					end

					-- set the new unit quantity to the surviving units of the victorious side
					for gsunit_key, gsunit_value in pairs(GrandStrategyUnits) do
						AttackingUnits[gsunit_key] = GetPlayerData(GetFactionPlayer(victorious_player), "UnitTypesCount", GrandStrategyUnits[gsunit_key].UnitType)
					end
				else
					if (GetProvinceAttackerMilitaryScore(province) > GetProvinceMilitaryScore(province)) then -- if military score is the same, then defenders win
						victorious_player = Attacker
					else
						victorious_player = Defender
						for gsunit_key, gsunit_value in pairs(GrandStrategyUnits) do
							AttackingUnits[gsunit_key] = province.Units[gsunit_key]
						end
					end
				end

				if (victorious_player == Attacker) then
					province.Owner = victorious_player
				end
				
				for gsunit_key, gsunit_value in pairs(GrandStrategyUnits) do
					province.Units[gsunit_key] = AttackingUnits[gsunit_key]
				end
				for gsunit_key, gsunit_value in pairs(province.AttackingUnits) do
					province.AttackingUnits[gsunit_key] = 0
				end
				Attacker = ""
				Defender = ""
				AttackingUnits = nil
				AttackedProvince = nil
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

function CalculateTileProvinces()
	TileProvinces = nil
	TileProvinces = {}
	
	for y=1,(table.getn(WorldMapTiles)) do
		TileProvinces[y] = {}
		for x=1,table.getn(WorldMapTiles[1]) do
			TileProvinces[y][x] = ""
		end
	end

	for x=1,table.getn(WorldMapTiles[1]) do
		for y=1,table.getn(WorldMapTiles) do
			for key, value in pairs(WorldMapProvinces) do
				for i=1,table.getn(WorldMapProvinces[key].Tiles) do
					if ((WorldMapProvinces[key].Tiles[i][1] + 1) == x and (WorldMapProvinces[key].Tiles[i][2] + 1) == y) then
						TileProvinces[y][x] = key
					end
				end
			end
			for key, value in pairs(WorldMapWaterProvinces) do
				for i=1,table.getn(WorldMapWaterProvinces[key].Tiles) do
					if ((WorldMapWaterProvinces[key].Tiles[i][1] + 1) == x and (WorldMapWaterProvinces[key].Tiles[i][2] + 1) == y) then
						TileProvinces[y][x] = key
					end
				end
			end
		end
	end
end

function GetTileProvince(x, y)
	if (x >= 0 and x < table.getn(WorldMapTiles[1]) and y >= 0 and y < table.getn(WorldMapTiles)) then
		local tile_province = TileProvinces[y + 1][x + 1]
		if (WorldMapProvinces[tile_province] ~= nil) then
			return WorldMapProvinces[tile_province]
		elseif (WorldMapWaterProvinces[tile_province] ~= nil) then
			return WorldMapWaterProvinces[tile_province]
		else
			return nil
		end
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
	return nil
end

function GetFactionNumProvinces(faction)
	local province_count = 0
	for key, value in pairs(WorldMapProvinces) do
		if (WorldMapProvinces[key].Owner == faction) then
			province_count = province_count + 1
		end
	end
	return province_count
end

function CanAttackProvince(province, faction, province_from)
	if (province.Owner == faction or province.Owner == "Ocean" or (province.AttackedBy ~= "" and province.AttackedBy ~= faction)) then -- province can only be attacked by one player per turn because of mechanical limitations of the current code
		return false
	end
	
	for i=1,table.getn(province.BorderTiles) do
		if (GetTileProvince(province.BorderTiles[i][1] - 1, province.BorderTiles[i][2]) == province_from) then
			return true
		elseif (GetTileProvince(province.BorderTiles[i][1] + 1, province.BorderTiles[i][2]) == province_from) then
			return true
		elseif (GetTileProvince(province.BorderTiles[i][1], province.BorderTiles[i][2] - 1) == province_from) then
			return true
		elseif (GetTileProvince(province.BorderTiles[i][1], province.BorderTiles[i][2] + 1) == province_from) then
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
			GrandStrategyMenu:stop() 
			menu:stopAll()
			ClearGrandStrategyVariables()
			SetPlayerData(GetThisPlayer(), "RaceName", "gnome")
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
				SavedWorldMapResources = WorldMapResources,
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
			WorldMapResources = wyr.preferences.GrandStrategySaveGames[saved_games_list[saved_games:getSelected() + 1]].SavedWorldMapResources
			WorldMapProvinces = wyr.preferences.GrandStrategySaveGames[saved_games_list[saved_games:getSelected() + 1]].SavedWorldMapProvinces
			WorldMapWaterProvinces = wyr.preferences.GrandStrategySaveGames[saved_games_list[saved_games:getSelected() + 1]].SavedWorldMapWaterProvinces
			Factions = wyr.preferences.GrandStrategySaveGames[saved_games_list[saved_games:getSelected() + 1]].SavedFactions
			CalculateTileProvinces()
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
				SetSelectedProvince(GetTileProvince(tile_x, tile_y))
				DrawOnScreenTiles() -- to avoid the tile remaining selected after clicking
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
					SetSelectedProvince(GetTileProvince(tile_x, tile_y))
					DrawOnScreenTiles() -- to avoid the tile remaining selected after clicking
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
					SetSelectedProvince(GetTileProvince(tile_x, tile_y))
					DrawOnScreenTiles() -- to avoid the tile remaining selected after clicking
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
					SetSelectedProvince(GetTileProvince(tile_x, tile_y))
					DrawOnScreenTiles() -- to avoid the tile remaining selected after clicking
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
					SetSelectedProvince(GetTileProvince(tile_x, tile_y))
					DrawOnScreenTiles() -- to avoid the tile remaining selected after clicking
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
				SetSelectedProvince(GetTileProvince(tile_x, tile_y))
				DrawOnScreenTiles() -- to avoid the tile remaining selected after clicking
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

function DrawSettlement(file, tile_x, tile_y, playercolor)
	local world_map_tile = CPlayerColorGraphic:New(file)
	world_map_tile:Load()
	OnScreenSites[table.getn(OnScreenSites) + 1] = PlayerColorImageButton("", playercolor)
	OnScreenSites[table.getn(OnScreenSites)]:setActionCallback(
		function()
			SetSelectedProvince(GetTileProvince(tile_x, tile_y))
			DrawOnScreenTiles() -- to avoid the tile remaining selected after clicking
		end
	)
	GrandStrategyMenu:add(OnScreenSites[table.getn(OnScreenSites)], 176 + 64 * (tile_x - WorldMapOffsetX), 16 + 64 * (tile_y - WorldMapOffsetY))
	OnScreenSites[table.getn(OnScreenSites)]:setNormalImage(world_map_tile)
	OnScreenSites[table.getn(OnScreenSites)]:setPressedImage(world_map_tile)
	OnScreenSites[table.getn(OnScreenSites)]:setDisabledImage(world_map_tile)
	OnScreenSites[table.getn(OnScreenSites)]:setSize(64, 64)
	OnScreenSites[table.getn(OnScreenSites)]:setBorderSize(0)
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

	if ((table.getn(WorldMapTiles) <= 128 and table.getn(WorldMapTiles[1]) <= 128) or (math.fmod(tile_x, 2) == 0 and math.fmod(tile_y, 2) == 0)) then
		local minimap_tile = CGraphic:New(file)
		minimap_tile:Load()
		MinimapTiles[tile_y + 1][tile_x + 1] = ImageButton("")
		MinimapTiles[tile_y + 1][tile_x + 1]:setActionCallback(
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

				DrawOnScreenTiles()
			end
		)
		if (table.getn(WorldMapTiles) <= 128 and table.getn(WorldMapTiles[1]) <= 128) then
			GrandStrategyMenu:add(MinimapTiles[tile_y + 1][tile_x + 1], 24 + minimap_offset_x + minimap_tile_size_x * tile_x, 26 + minimap_offset_y + minimap_tile_size_y * tile_y)
		elseif (math.fmod(tile_x, 2) == 0 and math.fmod(tile_y, 2) == 0) then -- if one of the sides of the map is larger than 128, then only draw minimap tiles for one of every four tiles
			GrandStrategyMenu:add(MinimapTiles[tile_y + 1][tile_x + 1], 24 + minimap_offset_x + minimap_tile_size_x * (tile_x / 2), 26 + minimap_offset_y + minimap_tile_size_y * (tile_y / 2))
		end
		MinimapTiles[tile_y + 1][tile_x + 1]:setNormalImage(minimap_tile)
		MinimapTiles[tile_y + 1][tile_x + 1]:setPressedImage(minimap_tile)
		MinimapTiles[tile_y + 1][tile_x + 1]:setDisabledImage(minimap_tile)
		MinimapTiles[tile_y + 1][tile_x + 1]:setSize(minimap_tile_size_x, minimap_tile_size_y)
		MinimapTiles[tile_y + 1][tile_x + 1]:setBorderSize(0)
		MinimapTiles[tile_y + 1][tile_x + 1]:setBaseColor(Color(0,0,0,0))
		MinimapTiles[tile_y + 1][tile_x + 1]:setForegroundColor(Color(0,0,0,0))
		MinimapTiles[tile_y + 1][tile_x + 1]:setBackgroundColor(Color(0,0,0,0))
	end
end

-- draw UI
function AddUIElement(file, x, y)
	local ui_element = CGraphic:New(file)
	ui_element:Load()
	UIElements[table.getn(UIElements) + 1] = ImageWidget(ui_element)
	GrandStrategyMenu:add(UIElements[table.getn(UIElements)], x, y)
end

function AddGrandStrategyLabel(text, x, y, font, center)
	GrandStrategyLabels[table.getn(GrandStrategyLabels) + 1] = Label(text)
	if (font == nil) then font = Fonts["large"] end
	GrandStrategyLabels[table.getn(GrandStrategyLabels)]:setFont(font)
	GrandStrategyLabels[table.getn(GrandStrategyLabels)]:adjustSize()
	if (center == nil or center == true) then -- center text by default
		x = x - GrandStrategyLabels[table.getn(GrandStrategyLabels)]:getWidth() / 2
	end
	GrandStrategyMenu:add(GrandStrategyLabels[table.getn(GrandStrategyLabels)], x, y)

	return GrandStrategyLabels[table.getn(GrandStrategyLabels)]
end

function AddGrandStrategyImageButton(caption, hotkey, x, y, callback)
	UIElements[table.getn(UIElements) + 1] = ImageButton(caption)
	if (hotkey ~= "") then
		UIElements[table.getn(UIElements)]:setHotKey(hotkey)
	end
	UIElements[table.getn(UIElements)]:setActionCallback(callback)
	GrandStrategyMenu:add(UIElements[table.getn(UIElements)], x, y)
	UIElements[table.getn(UIElements)]:setBorderSize(0) -- Andrettin: make buttons not have the borders they previously had
	return UIElements[table.getn(UIElements)]
end

function AddGrandStrategyBuildingButton(x, y, grand_strategy_building_key)
	local b
	local unit_icon
	if (SelectedProvince.SettlementBuildings[grand_strategy_building_key] < 2) then -- if not built, make icon gray
		b = ImageButton("")
		unit_icon = CGraphic:New(string.sub(GrandStrategyBuildings[grand_strategy_building_key].Icon, 0, -5) .. "_grayed.png", 46, 38)
	else
		b = PlayerColorImageButton("", GetFactionFromName(GrandStrategyFaction).Color)
		unit_icon = CPlayerColorGraphic:New(GrandStrategyBuildings[grand_strategy_building_key].Icon, 46, 38)
	end
	unit_icon:Load()
	UIElements[table.getn(UIElements) + 1] = b
	UIElements[table.getn(UIElements)]:setActionCallback(
		function()
			if (SelectedProvince.SettlementBuildings[grand_strategy_building_key] < 1) then
				BuildStructure(SelectedProvince, grand_strategy_building_key)
			elseif (SelectedProvince.SettlementBuildings[grand_strategy_building_key] >= 2) then
				UseBuilding(SelectedProvince, grand_strategy_building_key)
			end
			DrawGrandStrategyInterface()
		end
	)
	GrandStrategyMenu:add(UIElements[table.getn(UIElements)], x, y)
	UIElements[table.getn(UIElements)]:setBorderSize(0) -- Andrettin: make buttons not have the borders they previously had

--	UIElements[table.getn(UIElements)]:setBaseColor(Color(0,0,0,0))
--	UIElements[table.getn(UIElements)]:setForegroundColor(Color(0,0,0,0))
--	UIElements[table.getn(UIElements)]:setBackgroundColor(Color(0,0,0,0))
	UIElements[table.getn(UIElements)]:setNormalImage(unit_icon)
	UIElements[table.getn(UIElements)]:setPressedImage(unit_icon)
	UIElements[table.getn(UIElements)]:setDisabledImage(unit_icon)
	UIElements[table.getn(UIElements)]:setSize(46, 38)
	UIElements[table.getn(UIElements)]:setFont(Fonts["game"])
	
	return UIElements[table.getn(UIElements)]
end

function AddGrandStrategyUnitButton(x, y, grand_strategy_unit_key)
	UIElements[table.getn(UIElements) + 1] = PlayerColorImageButton("", GetFactionFromName(GrandStrategyFaction).Color)
	UIElements[table.getn(UIElements)]:setActionCallback(
		function()
			DrawGrandStrategyInterface()
		end
	)
	GrandStrategyMenu:add(UIElements[table.getn(UIElements)], x, y)
	UIElements[table.getn(UIElements)]:setBorderSize(0) -- Andrettin: make buttons not have the borders they previously had

--	UIElements[table.getn(UIElements)]:setBaseColor(Color(0,0,0,0))
--	UIElements[table.getn(UIElements)]:setForegroundColor(Color(0,0,0,0))
--	UIElements[table.getn(UIElements)]:setBackgroundColor(Color(0,0,0,0))
	local unit_icon = CPlayerColorGraphic:New(GrandStrategyUnits[grand_strategy_unit_key].Icon, 46, 38)
	unit_icon:Load()
	UIElements[table.getn(UIElements)]:setNormalImage(unit_icon)
	UIElements[table.getn(UIElements)]:setPressedImage(unit_icon)
	UIElements[table.getn(UIElements)]:setDisabledImage(unit_icon)
	UIElements[table.getn(UIElements)]:setSize(46, 38)
	UIElements[table.getn(UIElements)]:setFont(Fonts["game"])
	
	return UIElements[table.getn(UIElements)]
end

function DrawOnScreenTiles()
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
			elseif (GetWorldMapTile(x, y) == "ScFr") then
				DrawWorldMapTile("tilesets/world/terrain/scrub_forest_outer.png", x, y)
			elseif (GetWorldMapTile(x, y) == "Hill") then
				DrawWorldMapTile("tilesets/world/terrain/hills_outer.png", x, y)
			elseif (GetWorldMapTile(x, y) == "Mntn") then
				DrawWorldMapTile("tilesets/world/terrain/mountains_outer.png", x, y)
			elseif (GetWorldMapTile(x, y) == "Watr") then
				DrawWorldMapTile("tilesets/world/terrain/ocean.png", x, y)
			end
		end
	end

	-- draw resources
	for key, value in pairs(WorldMapResources) do
		for i=1,table.getn(WorldMapResources[key]) do
			local resource_site_graphics = ""
			if (key == "Gold") then
				resource_site_graphics = "tilesets/world/sites/gold_mine.png"
			end
			if (resource_site_graphics ~= "" and WorldMapResources[key][i][1] >= WorldMapOffsetX and WorldMapResources[key][i][1] <= math.floor(WorldMapOffsetX + ((Video.Width - 16 - 176) / 64)) and WorldMapResources[key][i][2] >= WorldMapOffsetY and WorldMapResources[key][i][2] <= math.floor(WorldMapOffsetY + ((Video.Height - 16 - 16) / 64))) then
				DrawWorldMapTile(resource_site_graphics, WorldMapResources[key][i][1], WorldMapResources[key][i][2])
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
		if (WorldMapProvinces[key].SettlementLocation[1] >= WorldMapOffsetX and WorldMapProvinces[key].SettlementLocation[1] <= math.floor(WorldMapOffsetX + ((Video.Width - 16 - 176) / 64)) and WorldMapProvinces[key].SettlementLocation[2] >= WorldMapOffsetY and WorldMapProvinces[key].SettlementLocation[2] <= math.floor(WorldMapOffsetY + ((Video.Height - 16 - 16) / 64))) then
			if (WorldMapProvinces[key].Owner ~= "") then
				if (GetFactionFromName(WorldMapProvinces[key].Owner).Civilization == "dwarf") then
--					DrawSettlement("tilesets/world/sites/dwarven_settlement.png", WorldMapProvinces[key].SettlementLocation[1], WorldMapProvinces[key].SettlementLocation[2], GetFactionFromName(WorldMapProvinces[key].Owner).Color)
					DrawWorldMapTile("tilesets/world/sites/dwarven_settlement.png", WorldMapProvinces[key].SettlementLocation[1], WorldMapProvinces[key].SettlementLocation[2])
				elseif (GetFactionFromName(WorldMapProvinces[key].Owner).Civilization == "gnome") then
					DrawWorldMapTile("tilesets/world/sites/gnomish_settlement.png", WorldMapProvinces[key].SettlementLocation[1], WorldMapProvinces[key].SettlementLocation[2])
				end
				
			end

			if (WorldMapProvinces[key].AttackedBy == GrandStrategyFaction) then
				-- draw symbol that the province is being attacked by the human player if that is the case
				DrawWorldMapTile("tilesets/world/sites/attack.png", WorldMapProvinces[key].SettlementLocation[1], WorldMapProvinces[key].SettlementLocation[2])
			elseif (WorldMapProvinces[key].Owner == GrandStrategyFaction) then
				for gsunit_key, gsunit_value in pairs(GrandStrategyUnits) do
					if (WorldMapProvinces[key].MovingUnits[gsunit_key] > 0) then
						-- draw symbol that troops are moving to the province
						DrawWorldMapTile("tilesets/world/sites/move.png", WorldMapProvinces[key].SettlementLocation[1], WorldMapProvinces[key].SettlementLocation[2])
						break
					end
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

function DrawGrandStrategyInterface()
	if (UIElements ~= nil) then
		for i=1,table.getn(UIElements) do
			GrandStrategyMenu:remove(UIElements[i])
		end
	end
	
	if (GrandStrategyLabels ~= nil) then
		for i=1,table.getn(GrandStrategyLabels) do
			GrandStrategyMenu:remove(GrandStrategyLabels[i])
		end
	end

	UIElements = nil
	UIElements = {}

	GrandStrategyLabels = nil
	GrandStrategyLabels = {}

	AddUIElement("ui/dwarf/infopanel.png", 0, 160)

	AddUIElement("ui/dwarf/resource_" .. Video.Width .. ".png", 176, 0)

	AddUIElement("ui/dwarf/buttonpanel_" .. Video.Height .. ".png", 0, 336)
	AddUIElement("ui/dwarf/menubutton.png", 0, 0)

	AddGrandStrategyLabel(GrandStrategyFaction .. ", " .. GrandStrategyYear .. " AD", 88, 6, Fonts["game"], true)
	
	-- add resource quantities
	AddUIElement("ui/gold.png", 176, 0)
	AddGrandStrategyLabel(GetFactionFromName(GrandStrategyFaction).Gold, 176 + 18, 1, Fonts["game"], false)
	AddUIElement("ui/lumber.png", 176 + 75, 0)
	AddGrandStrategyLabel(GetFactionFromName(GrandStrategyFaction).Commodities.Lumber, 176 + 75 + 18, 1, Fonts["game"], false)
	
	if (SelectedProvince ~= nil) then
		if (SelectedProvince.Owner ~= "" and SelectedProvince.Owner ~= "Ocean") then
			AddGrandStrategyLabel(SelectedProvince.Name .. ",", 88, 171, Fonts["game"], true)
			AddGrandStrategyLabel(SelectedProvince.Owner, 88, 185, Fonts["game"], true)
		else
			AddGrandStrategyLabel(SelectedProvince.Name, 88, 171, Fonts["game"], true)
		end

		-- add buttons for buildings and selecting units if is an owned province and in the normal province interface setting
		if (SelectedProvince.Owner == GrandStrategyFaction) then
			if (InterfaceState == "Province") then
				for gsunit_key, gsunit_value in pairs(GrandStrategyUnits) do
					if (IsUnitAvailableForTraining(SelectedProvince, gsunit_key) or SelectedProvince.Units[gsunit_key] > 0) then
						local icon_offset_x = 9 + (GrandStrategyUnits[gsunit_key].X * 56)
						local icon_offset_y = 340 + (GrandStrategyUnits[gsunit_key].Y * (47 + 19 + 4))

						AddGrandStrategyUnitButton(icon_offset_x, icon_offset_y, gsunit_key)
						if (SelectedProvince.UnderConstructionUnits[gsunit_key] > 0) then
							AddGrandStrategyLabel(SelectedProvince.Units[gsunit_key] .. "+" .. SelectedProvince.UnderConstructionUnits[gsunit_key], icon_offset_x + 24, icon_offset_y + 26, Fonts["game"], true)
						else
							AddGrandStrategyLabel(SelectedProvince.Units[gsunit_key], icon_offset_x + 24, icon_offset_y + 26, Fonts["game"], true)
						end

						-- add unit selection arrows
						local b = AddGrandStrategyImageButton("", "", icon_offset_x - 2, icon_offset_y + 40, function()
							if (SelectedUnits[gsunit_key] > 0) then
								SelectedUnits[gsunit_key] = SelectedUnits[gsunit_key] - 1
								DrawGrandStrategyInterface()
							end
						end)
						b:setBaseColor(Color(0,0,0,0))
						b:setForegroundColor(Color(0,0,0,0))
						b:setBackgroundColor(Color(0,0,0,0))
						if (GetPlayerData(GetThisPlayer(), "RaceName") == "dwarf") then
							b:setNormalImage(g_dlslider_n)
							b:setPressedImage(g_dlslider_p)
						else
							b:setNormalImage(g_dlslider_n)
							b:setPressedImage(g_dlslider_p)
						end

						local b = AddGrandStrategyImageButton("", "", icon_offset_x + 2 + 46 - 20, icon_offset_y + 40, function()
							if (SelectedUnits[gsunit_key] < SelectedProvince.Units[gsunit_key]) then
								SelectedUnits[gsunit_key] = SelectedUnits[gsunit_key] + 1
								DrawGrandStrategyInterface()
							end
						end)
						b:setBaseColor(Color(0,0,0,0))
						b:setForegroundColor(Color(0,0,0,0))
						b:setBackgroundColor(Color(0,0,0,0))
						if (GetPlayerData(GetThisPlayer(), "RaceName") == "dwarf") then
							b:setNormalImage(g_drslider_n)
							b:setPressedImage(g_drslider_p)
						else
							b:setNormalImage(g_drslider_n)
							b:setPressedImage(g_drslider_p)
						end

						AddGrandStrategyLabel("~<" .. SelectedUnits[gsunit_key] .. "~>", icon_offset_x + 24, icon_offset_y + 42, Fonts["game"], true)
					end
				end

				for gsunit_key, gsunit_value in pairs(GrandStrategyBuildings) do
					if (IsBuildingAvailable(SelectedProvince, gsunit_key)) then
						local icon_offset_x = 9 + (GrandStrategyBuildings[gsunit_key].X * 56)
						local icon_offset_y = 340 + (GrandStrategyBuildings[gsunit_key].Y * 47)

						AddGrandStrategyBuildingButton(icon_offset_x, icon_offset_y, gsunit_key)

						if (SelectedProvince.SettlementBuildings[gsunit_key] == 1) then -- if is under construction, apply under construction graphics
							AddUIElement("neutral/icons/build_basic_structure_transparent_background.png", icon_offset_x, icon_offset_y)
						end
					end
				end
			elseif (InterfaceState == "Recruit") then
				AddGrandStrategyLabel("Recruit Units", 88, 213, Fonts["game"], true)
				
				-- add units buttons for training
				for gsunit_key, gsunit_value in pairs(GrandStrategyUnits) do
					if (IsUnitAvailableForTraining(SelectedProvince, gsunit_key)) then
						local icon_offset_x = 9 + (GrandStrategyUnits[gsunit_key].X * 56)
						local icon_offset_y = 340 + ((GrandStrategyUnits[gsunit_key].Y - 1) * (47 + 19 + 4))

						AddGrandStrategyUnitButton(icon_offset_x, icon_offset_y, gsunit_key)
						if (SelectedProvince.UnderConstructionUnits[gsunit_key] > 0) then
							AddGrandStrategyLabel(SelectedProvince.Units[gsunit_key] .. "+" .. SelectedProvince.UnderConstructionUnits[gsunit_key], icon_offset_x + 24, icon_offset_y + 26, Fonts["game"], true)
						else
							AddGrandStrategyLabel(SelectedProvince.Units[gsunit_key], icon_offset_x + 24, icon_offset_y + 26, Fonts["game"], true)
						end

						-- add unit training arrows
						local b = AddGrandStrategyImageButton("", "", icon_offset_x - 2, icon_offset_y + 40, function()
							TrainUnitCancel(SelectedProvince, gsunit_key)
							DrawGrandStrategyInterface()
						end)
						b:setBaseColor(Color(0,0,0,0))
						b:setForegroundColor(Color(0,0,0,0))
						b:setBackgroundColor(Color(0,0,0,0))
						if (GetPlayerData(GetThisPlayer(), "RaceName") == "dwarf") then
							b:setNormalImage(g_dlslider_n)
							b:setPressedImage(g_dlslider_p)
						else
							b:setNormalImage(g_dlslider_n)
							b:setPressedImage(g_dlslider_p)
						end

						local b = AddGrandStrategyImageButton("", "", icon_offset_x + 2 + 46 - 20, icon_offset_y + 40, function()
							TrainUnit(SelectedProvince, gsunit_key)
							DrawGrandStrategyInterface()
						end)
						b:setBaseColor(Color(0,0,0,0))
						b:setForegroundColor(Color(0,0,0,0))
						b:setBackgroundColor(Color(0,0,0,0))
						if (GetPlayerData(GetThisPlayer(), "RaceName") == "dwarf") then
							b:setNormalImage(g_drslider_n)
							b:setPressedImage(g_drslider_p)
						else
							b:setNormalImage(g_drslider_n)
							b:setPressedImage(g_drslider_p)
						end

						AddGrandStrategyLabel("~<" .. SelectedProvince.UnderConstructionUnits[gsunit_key] .. "~>", icon_offset_x + 24, icon_offset_y + 42, Fonts["game"], true)
					end
				end

				-- add a button to go back to the main province interface
				local b = AddGrandStrategyImageButton("~!OK", "o", 24, Video.Height - (22 * 2) - 16, function()
					InterfaceState = "Province"
					DrawGrandStrategyInterface()
				end)
				b:setBaseColor(Color(0,0,0,0))
				b:setForegroundColor(Color(0,0,0,0))
				b:setBackgroundColor(Color(0,0,0,0))
				if (GetPlayerData(GetThisPlayer(), "RaceName") == "dwarf") then
					b:setNormalImage(g_dbtn)
					b:setPressedImage(g_dbtp)
				elseif (GetPlayerData(GetThisPlayer(), "RaceName") == "gnome") then
					b:setNormalImage(g_gbtn)
					b:setPressedImage(g_gbtp)
				end
				b:setSize(128, 20)
				b:setFont(Fonts["game"])
			end
		end
	end

	-- add an end turn button
	local b = AddGrandStrategyImageButton("~!End Turn", "e", 24, Video.Height - 22 - 16, function()
		EndTurn()
	end)
	b:setBaseColor(Color(0,0,0,0))
	b:setForegroundColor(Color(0,0,0,0))
	b:setBackgroundColor(Color(0,0,0,0))
	if (GetPlayerData(GetThisPlayer(), "RaceName") == "dwarf") then
		b:setNormalImage(g_dbtn)
		b:setPressedImage(g_dbtp)
	elseif (GetPlayerData(GetThisPlayer(), "RaceName") == "gnome") then
		b:setNormalImage(g_gbtn)
		b:setPressedImage(g_gbtp)
	end
	b:setSize(128, 20)
	b:setFont(Fonts["game"])
end

function DrawMinimap()
	if (UIMinimap ~= nil) then
		GrandStrategyMenu:remove(UIMinimap)
	end

	if (MinimapTiles ~= nil) then
		for i=1,table.getn(MinimapTiles) do
			for j=1,table.getn(MinimapTiles[i]) do
				if (MinimapTiles[i][j] ~= nil) then
					GrandStrategyMenu:remove(MinimapTiles[i][j])
				end
			end
		end
	end
	
	MinimapTiles = nil
	MinimapTiles = {}
	
	for y=1,(table.getn(WorldMapTiles)) do
		MinimapTiles[y] = {}
	end
	
	local ui_element = CGraphic:New("ui/dwarf/minimap.png")
	ui_element:Load()
	UIMinimap = ImageWidget(ui_element)
	GrandStrategyMenu:add(UIMinimap, 0, 24)

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
end

function SetSelectedProvince(province)
	if (province ~= SelectedProvince) then

		-- if the player has units selected and then selects an attackable province, set those units to attack the province
		if (SelectedProvince ~= nil  and CanAttackProvince(province, GrandStrategyFaction, SelectedProvince)) then
			for gsunit_key, gsunit_value in pairs(GrandStrategyUnits) do
				if (SelectedUnits[gsunit_key] > 0) then
					province.AttackedBy = GrandStrategyFaction
					province.AttackingUnits[gsunit_key] = province.AttackingUnits[gsunit_key] + SelectedUnits[gsunit_key]
					SelectedProvince.Units[gsunit_key] = SelectedProvince.Units[gsunit_key] - SelectedUnits[gsunit_key]
					
					-- draw symbol that the province is being attacked by the human player
					DrawWorldMapTile("tilesets/world/sites/attack.png", province.SettlementLocation[1], province.SettlementLocation[2])
				end
			end
		elseif (SelectedProvince ~= nil and SelectedProvince.Owner == province.Owner) then
			for gsunit_key, gsunit_value in pairs(GrandStrategyUnits) do
				if (SelectedUnits[gsunit_key] > 0) then
					province.MovingUnits[gsunit_key] = SelectedUnits[gsunit_key]
					SelectedProvince.Units[gsunit_key] = SelectedProvince.Units[gsunit_key] - SelectedUnits[gsunit_key]

					-- draw symbol that troops are moving to the province
					DrawWorldMapTile("tilesets/world/sites/move.png", province.SettlementLocation[1], province.SettlementLocation[2])
				end
			end
		end

		SelectedProvince = province
		SelectedUnits = nil
		SelectedUnits = {}
		for gsunit_key, gsunit_value in pairs(GrandStrategyUnits) do
			SelectedUnits[gsunit_key] = 0
		end
		DrawGrandStrategyInterface()
	end
end

function AIDoTurn(ai_faction)

	for key, value in pairs(WorldMapProvinces) do
		if (WorldMapProvinces[key].Owner == ai_faction.Name) then
			local desired_infantry_in_province = 10
			local desired_archers_in_province = 6
			local desired_catapults_in_province = 1
			
			for second_key, second_value in pairs(WorldMapProvinces) do
				if (WorldMapProvinces[second_key].Owner ~= ai_faction.Name) then
					if (GetProvinceMilitaryScore(WorldMapProvinces[second_key]) < GetProvinceMilitaryScore(WorldMapProvinces[key])) then
						if (WorldMapProvinces[key].AttackedBy == "" and CanAttackProvince(WorldMapProvinces[second_key], ai_faction.Name, WorldMapProvinces[key])) then -- don't attack from this province if it is already being attacked
							WorldMapProvinces[second_key].AttackedBy = ai_faction.Name
							for gsunit_key, gsunit_value in pairs(GrandStrategyUnits) do
								WorldMapProvinces[second_key].AttackingUnits[gsunit_key] = WorldMapProvinces[key].Units[gsunit_key]
								WorldMapProvinces[key].Units[gsunit_key] = 0
							end
						end
					elseif (GetProvinceMilitaryScore(WorldMapProvinces[second_key]) > 0) then
						desired_infantry_in_province = math.floor(desired_infantry_in_province * (GetProvinceMilitaryScore(WorldMapProvinces[second_key]) * 3 / 2) / 960) -- 960 is the military score of the default desired military units in a province
						desired_archers_in_province = math.floor(desired_archers_in_province * (GetProvinceMilitaryScore(WorldMapProvinces[second_key]) * 3 / 2) / 960)
						desired_catapults_in_province = math.floor(desired_catapults_in_province * (GetProvinceMilitaryScore(WorldMapProvinces[second_key]) * 3 / 2) / 960)
					end
				end
			end

			for gsunit_key, gsunit_value in pairs(GrandStrategyBuildings) do
				if (CanBuildStructure(WorldMapProvinces[key], gsunit_key)) then
					if (GrandStrategyBuildings[gsunit_key].Type == "Town Hall") then
						BuildStructure(WorldMapProvinces[key], gsunit_key)
					elseif (GrandStrategyBuildings[gsunit_key].Type == "Barracks") then
						BuildStructure(WorldMapProvinces[key], gsunit_key)
					elseif (GrandStrategyBuildings[gsunit_key].Type == "Lumber Mill" and (ProvinceHasBuildingType(WorldMapProvinces[key], "Barracks") or ProvinceHasResource(WorldMapProvinces[key], "Lumber"))) then
						BuildStructure(WorldMapProvinces[key], gsunit_key)
					elseif (GrandStrategyBuildings[gsunit_key].Type == "Blacksmith" and ProvinceHasBuildingType(WorldMapProvinces[key], "Barracks") and ProvinceHasBuildingType(WorldMapProvinces[key], "Lumber Mill")) then -- it only makes sense to build blacksmiths at the moment to make ballistas available, and those can only be built if a barracks and a lumber mill are present
						BuildStructure(WorldMapProvinces[key], gsunit_key)
					end
				end
			end

			for gsunit_key, gsunit_value in pairs(GrandStrategyUnits) do
				if (IsUnitAvailableForTraining(WorldMapProvinces[key], gsunit_key)) then
					if (GrandStrategyUnits[gsunit_key].Type == "Infantry") then
						for i=1,desired_infantry_in_province do
							if ((WorldMapProvinces[key].Units[gsunit_key] + WorldMapProvinces[key].UnderConstructionUnits[gsunit_key]) < desired_infantry_in_province and CanTrainUnit(WorldMapProvinces[key], gsunit_key)) then
								TrainUnit(WorldMapProvinces[key], gsunit_key)
							end
						end
					elseif (GrandStrategyUnits[gsunit_key].Type == "Archer") then
						for i=1,desired_archers_in_province do
							if ((WorldMapProvinces[key].Units[gsunit_key] + WorldMapProvinces[key].UnderConstructionUnits[gsunit_key]) < desired_archers_in_province and CanTrainUnit(WorldMapProvinces[key], gsunit_key)) then
								TrainUnit(WorldMapProvinces[key], gsunit_key)
							end
						end
					elseif (GrandStrategyUnits[gsunit_key].Type == "Catapult") then
						for i=1,desired_catapults_in_province do
							if ((WorldMapProvinces[key].Units[gsunit_key] + WorldMapProvinces[key].UnderConstructionUnits[gsunit_key]) < desired_catapults_in_province and CanTrainUnit(WorldMapProvinces[key], gsunit_key)) then
								TrainUnit(WorldMapProvinces[key], gsunit_key)
							end
						end
					end
				end
			end
		end
	end
end

function IsBuildingAvailable(province, grand_strategy_unit_key)
	if (GrandStrategyBuildings[grand_strategy_unit_key].Civilization ~= GetFactionFromName(province.Owner).Civilization) then
		return false
	end

	local has_required_buildings = true
	if (table.getn(GrandStrategyBuildings[grand_strategy_unit_key].RequiredBuildings) > 0) then
		for i=1,table.getn(GrandStrategyBuildings[grand_strategy_unit_key].RequiredBuildings) do
			if (province.SettlementBuildings[GrandStrategyBuildings[grand_strategy_unit_key].RequiredBuildings[i]] < 2) then
				has_required_buildings = false
			end
		end
	end
	if (has_required_buildings == false) then
		return false
	end
	
	return true
end

function CanBuildStructure(province, grand_strategy_unit_key)
	if (province.SettlementBuildings[grand_strategy_unit_key] == 2) then -- can't build if already built
		return false
	end

	if (GetFactionFromName(province.Owner).Gold < GrandStrategyBuildings[grand_strategy_unit_key].Costs.Gold or GetFactionFromName(province.Owner).Commodities.Lumber < GrandStrategyBuildings[grand_strategy_unit_key].Costs.Lumber) then
		return false
	end
	
	return IsBuildingAvailable(province, grand_strategy_unit_key)
end

function BuildStructure(province, grand_strategy_building_key)
	if (GetFactionFromName(province.Owner).Gold >= GrandStrategyBuildings[grand_strategy_building_key].Costs.Gold and GetFactionFromName(province.Owner).Commodities.Lumber >= GrandStrategyBuildings[grand_strategy_building_key].Costs.Lumber) then
		province.SettlementBuildings[grand_strategy_building_key] = 1
		GetFactionFromName(province.Owner).Gold = GetFactionFromName(province.Owner).Gold - GrandStrategyBuildings[grand_strategy_building_key].Costs.Gold
		GetFactionFromName(province.Owner).Commodities.Lumber = GetFactionFromName(province.Owner).Commodities.Lumber - GrandStrategyBuildings[grand_strategy_building_key].Costs.Lumber
	end
end

function CanTrainUnit(province, grand_strategy_unit_key)
	if (GetFactionFromName(province.Owner).Gold < GrandStrategyUnits[grand_strategy_unit_key].Costs.Gold or GetFactionFromName(province.Owner).Commodities.Lumber < GrandStrategyUnits[grand_strategy_unit_key].Costs.Lumber) then
		return false
	end

	return IsUnitAvailableForTraining(province, grand_strategy_unit_key)
end

function IsUnitAvailableForTraining(province, grand_strategy_unit_key)
	if (GrandStrategyUnits[grand_strategy_unit_key].Civilization ~= GetFactionFromName(province.Owner).Civilization) then
		return false
	end

	local has_required_buildings = true
	if (table.getn(GrandStrategyUnits[grand_strategy_unit_key].RequiredBuildings) > 0) then
		for i=1,table.getn(GrandStrategyUnits[grand_strategy_unit_key].RequiredBuildings) do
			if (province.SettlementBuildings[GrandStrategyUnits[grand_strategy_unit_key].RequiredBuildings[i]] < 2) then
				has_required_buildings = false
			end
		end
	end
	if (has_required_buildings == false) then
		return false
	end
	
	return true
end

function TrainUnit(province, grand_strategy_unit_key)
	if (CanTrainUnit(province, grand_strategy_unit_key)) then
		province.UnderConstructionUnits[grand_strategy_unit_key] = province.UnderConstructionUnits[grand_strategy_unit_key] + 1
		GetFactionFromName(province.Owner).Gold = GetFactionFromName(province.Owner).Gold - GrandStrategyUnits[grand_strategy_unit_key].Costs.Gold
		GetFactionFromName(province.Owner).Commodities.Lumber = GetFactionFromName(province.Owner).Commodities.Lumber - GrandStrategyUnits[grand_strategy_unit_key].Costs.Lumber
	end
end

function TrainUnitCancel(province, grand_strategy_unit_key)
	if (province.UnderConstructionUnits[grand_strategy_unit_key] >= 1) then
		province.UnderConstructionUnits[grand_strategy_unit_key] = province.UnderConstructionUnits[grand_strategy_unit_key] - 1
		GetFactionFromName(province.Owner).Gold = GetFactionFromName(province.Owner).Gold + GrandStrategyUnits[grand_strategy_unit_key].Costs.Gold
		GetFactionFromName(province.Owner).Commodities.Lumber = GetFactionFromName(province.Owner).Commodities.Lumber + GrandStrategyUnits[grand_strategy_unit_key].Costs.Lumber
	end
end

function UseBuilding(province, grand_strategy_building_key)
	if (GrandStrategyBuildings[grand_strategy_building_key].Type == "Barracks") then
		InterfaceState = "Recruit"
	end
end

function ClearGrandStrategyVariables()
	GrandStrategy = false
	WorldMapOffsetX = nil
	WorldMapOffsetY = nil
	GrandStrategyYear = nil
	GrandStrategyFaction = nil
	SelectedProvince = nil
	Attacker = nil
	Defender = nil
	Factions = nil
	WorldMapProvinces = nil
	SelectedUnits = nil
	SelectedProvince = nil
	AttackingUnits = nil
	AttackedProvince = nil
	TileProvinces = nil
	InterfaceState = nil

	OnScreenTiles = nil
	OnScreenBorderWestTiles = nil
	OnScreenBorderEastTiles = nil
	OnScreenBorderNorthTiles = nil
	OnScreenBorderSouthTiles = nil
	OnScreenSites = nil
	UIFillerRight = nil
	UIStatusLine = nil

	UIElements = nil
	GrandStrategyLabels = nil

	UIMinimap = nil
	MinimapTiles = nil

	GrandStrategyMenu = nil
end

function ProvinceHasBuildingType(province, building_type)
	for gsunit_key, gsunit_value in pairs(GrandStrategyBuildings) do
		if (GrandStrategyBuildings[gsunit_key].Type == building_type and IsBuildingAvailable(province, gsunit_key) and province.SettlementBuildings[gsunit_key] == 2) then
			return true
		end
	end
	return false
end

function ProvinceHasResource(province, resource)
	for i=1,table.getn(province.Tiles) do
		for j=1,table.getn(WorldMapResources[resource]) do
			if (province.Tiles[i][1] == WorldMapResources[resource][j][1] and province.Tiles[i][2] == WorldMapResources[resource][j][2]) then
				return true
			end
		end
	end

	return false
end

function GetProvinceMilitaryScore(province)
	local military_score = 0
	for gsunit_key, gsunit_value in pairs(GrandStrategyUnits) do
		if (GrandStrategyUnits[gsunit_key].Type == "Infantry") then
			military_score = military_score + (province.Units[gsunit_key] * 50)
		elseif (GrandStrategyUnits[gsunit_key].Type == "Archer") then
			military_score = military_score + (province.Units[gsunit_key] * 60)
		elseif (GrandStrategyUnits[gsunit_key].Type == "Catapult") then
			military_score = military_score + (province.Units[gsunit_key] * 100)
		end
	end
	return military_score
end

function GetProvinceAttackerMilitaryScore(province)
	local military_score = 0
	for gsunit_key, gsunit_value in pairs(GrandStrategyUnits) do
		if (GrandStrategyUnits[gsunit_key].Type == "Infantry") then
			military_score = military_score + (province.AttackingUnits[gsunit_key] * 50)
		elseif (GrandStrategyUnits[gsunit_key].Type == "Archer") then
			military_score = military_score + (province.AttackingUnits[gsunit_key] * 60)
		elseif (GrandStrategyUnits[gsunit_key].Type == "Catapult") then
			military_score = military_score + (province.AttackingUnits[gsunit_key] * 100)
		end
	end
	return military_score
end
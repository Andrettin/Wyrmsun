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
--      (c) Copyright 2014-2016 by Andrettin
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
GrandStrategyEventMap = false
GrandStrategyBattle = false
EventFaction = nil
EventProvince = nil
SecondEventProvince = nil
GrandStrategyWorld = ""
BattalionMultiplier = wyr.preferences.GrandStrategyBattalionMultiplier
GrandStrategyBattleBaseBuilding = wyr.preferences.GrandStrategyBattleBaseBuilding
GrandStrategyMapWidthIndent = 0
GrandStrategyMapHeightIndent = 0
PopulationGrowthThreshold = 2000
MonthsPerTurn = 12

function RunGrandStrategyGameSetupMenu()
	GrandStrategyMapWidth = Video.Width + 64
	GrandStrategyMapHeight = Video.Height - 16 - 186
	WorldMapOffsetX = 0
	WorldMapOffsetY = 0
	GrandStrategyYear = 0
	GrandStrategyMonth = 0
	GrandStrategyFaction = nil
	SelectedProvince = nil
	SelectedHero = ""
	Attacker = ""
	Defender = ""
	GrandStrategyEventMap = false
	GrandStrategyBattle = false
	EventFaction = nil
	EventProvince = nil
	SecondEventProvince = nil
	GrandStrategyWorld = ""
	BattalionMultiplier = wyr.preferences.GrandStrategyBattalionMultiplier
	GrandStrategyBattleBaseBuilding = wyr.preferences.GrandStrategyBattleBaseBuilding
	GrandStrategyMapWidthIndent = 0
	GrandStrategyMapHeightIndent = 0
	ProcessingEndTurn = false

	SetPlayerData(GetThisPlayer(), "RaceName", "gnome")

	if not (IsMusicPlaying()) then
		PlayMusicName("MenuTheme")
	end

	local menu = WarMenu()
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2

	local world_list = {"Earth", "Nidavellir", "Random"}
	local world
	local bookmark_list = {}
	local bookmark
	local date_label
	local date_slider = {}
	local date_minimum = 0
	local date_maximum = 0
	local faction
	local faction_list = {}
	local faction_name_list = {}
	local faction_civilization_list = {}
	local battalions
	local hero_dd
	local hero_list = {}
	local automatic_battles
	local battle_base_building
	local no_randomness
	local no_time_of_day

	local function FactionChanged()
		hero_list = nil
		hero_list = {}
		local custom_heroes = GetCustomHeroes()
		for i=1,table.getn(custom_heroes) do
			if (
				GetCustomHeroData(custom_heroes[i], "Civilization") == faction_civilization_list[faction:getSelected() + 1]
				or GetCivilizationData(GetCustomHeroData(custom_heroes[i], "Civilization"), "ParentCivilization") == faction_civilization_list[faction:getSelected() + 1]
				or GetCustomHeroData(custom_heroes[i], "Civilization") == GetCivilizationData(faction_civilization_list[faction:getSelected() + 1], "ParentCivilization")
			) then
				table.insert(hero_list, custom_heroes[i])
			end
		end
		table.sort(hero_list)
		table.insert(hero_list, "") -- to allow players to choose having no custom hero selected
		hero_dd:setList(hero_list)
		hero_dd:setSize(152, 20)
		hero_dd:setSelected(table.getn(hero_list) - 1)
	end
	
	menu:addLabel(_("~<Grand Strategy Game Setup~>"), offx + 640/2 + 12, offy + 72)

	menu:addFullButton(_("~!Start Game"), "s", offx + 208, offy + 212 + (36 * 4),
		function()
			CleanPlayers() -- for safety
			CleanGrandStrategyGame()
			InitializeGrandStrategyGame()
			GrandStrategy = true
			GrandStrategyGamePaused = false
			GameResult = GameNoResult
			GrandStrategyYear = math.floor(date_slider:getValue())
			if (world_list[world:getSelected() + 1] ~= "Random") then
				InitializeGrandStrategyWorldMap()
				Load("scripts/grand_strategy/" .. string.lower(world_list[world:getSelected() + 1]) .. "_world_map.lua");
				Load("scripts/grand_strategy/" .. string.lower(world_list[world:getSelected() + 1]) .. "_history.lua");
			else
				GenerateRandomWorldMap()
			end
			
			GrandStrategyFaction = GetFactionFromName(faction_list[faction:getSelected() + 1])
			SetPlayerFaction(GetFactionFromName(faction_list[faction:getSelected() + 1]).Civilization, GetFactionFromName(faction_list[faction:getSelected() + 1]).Name)
			SetPlayerData(GetThisPlayer(), "RaceName", GrandStrategyFaction.Civilization)
			StopMusic()
			PlayMusicByGroupAndFactionRandom("map", GrandStrategyFaction.Civilization, GrandStrategyFaction.Name)
			
			GrandStrategyInterfaceState = "Province"
			GrandStrategyMapWidthIndent = 0
			GrandStrategyMapHeightIndent = 0
			CalculateProvinceBorders()
			CalculateProvinceBorderTiles()

			-- initialize commodity variables
			GrandStrategyCommodities = nil
			GrandStrategyCommodities = {}
			GrandStrategyCommodities["Lumber"] = {}
			GrandStrategyCommodities["Stone"] = {}
--			GrandStrategyCommodities["Coal"] = {}

			-- add resource quantities to factions that don't have that set up
			for key, value in pairs(Factions) do
				if (GetFactionResource(Factions[key].Civilization, Factions[key].Name, "copper") == 0) then
					SetFactionResource(Factions[key].Civilization, Factions[key].Name, "copper", 3000)
				end
				if (GetFactionResource(Factions[key].Civilization, Factions[key].Name, "lumber") == 0) then
					SetFactionResource(Factions[key].Civilization, Factions[key].Name, "lumber", 3000)
				end
				if (GetFactionResource(Factions[key].Civilization, Factions[key].Name, "stone") == 0) then
					SetFactionResource(Factions[key].Civilization, Factions[key].Name, "stone", 3000)
				end

				-- provinces owned by the faction, to not have to loop through the provinces each time
				if (Factions[key].OwnedProvinces == nil) then
					Factions[key]["OwnedProvinces"] = {}
				end
				if (Factions[key].DisembarkmentProvinces == nil) then -- provinces where a beachhead has been established for disembarking
					Factions[key]["DisembarkmentProvinces"] = {}
				end
			end
			
			-- initialize province variables
			for key, value in pairs(WorldMapProvinces) do
				-- set the province into its owner's owned provinces list
				if (GetProvinceOwner(WorldMapProvinces[key].Name) ~= "") then
					table.insert(GetFactionFromName(GetProvinceOwner(WorldMapProvinces[key].Name)).OwnedProvinces, key)
				end

				if (WorldMapProvinces[key].Coastal == nil) then
					WorldMapProvinces[key]["Coastal"] = false
				end
				
				if (GrandStrategyFaction ~= nil and GetProvinceOwner(WorldMapProvinces[key].Name) == GrandStrategyFaction.Name) then
					CenterGrandStrategyMapOnTile(WorldMapProvinces[key].SettlementLocation[1], WorldMapProvinces[key].SettlementLocation[2])
				end
			end

			local RandomNumber = 0
			for x=0,GetWorldMapWidth() - 1 do
				for y=0,GetWorldMapHeight() - 1 do
					if (WorldMapTileHasResource(x, y, "lumber", true) and GetWorldMapTileTerrain(x, y) ~= "Conifer Forest" and GetWorldMapTileTerrain(x, y) ~= "Scrub Forest") then -- make tiles into forest if there is a timber lodge there
						if (GrandStrategyWorld == "Nidavellir" or GetWorldMapTileTerrain(x, y) == "Dark Plains") then
							SetWorldMapTileTerrain(x, y, GetWorldMapTerrainTypeId("Scrub Forest"))
						else
							SetWorldMapTileTerrain(x, y, GetWorldMapTerrainTypeId("Conifer Forest"))
						end
					elseif ((WorldMapTileHasResource(x, y, "gold", true) or WorldMapTileHasResource(x, y, "silver", true) or WorldMapTileHasResource(x, y, "copper", true) or WorldMapTileHasResource(x, y, "stone", true)) and GetWorldMapTileTerrain(x, y) ~= "Hills" and GetWorldMapTileTerrain(x, y) ~= "Mountains") then -- make plains tiles into hills if there is a mine or quarry there
						SetWorldMapTileTerrain(x, y, GetWorldMapTerrainTypeId("Hills"))
					elseif (WorldMapTileHasResource(x, y, "grain", true) and GetWorldMapTileTerrain(x, y) ~= "Plains") then
						SetWorldMapTileTerrain(x, y, GetWorldMapTerrainTypeId("Plains"))
					elseif (WorldMapTileHasResource(x, y, "mushrooms", true) and GetWorldMapTileTerrain(x, y) ~= "Dark Plains" and GetWorldMapTileTerrain(x, y) ~= "Hills" and GetWorldMapTileTerrain(x, y) ~= "Mountains" and GetWorldMapTileTerrain(x, y) ~= "Plains") then
						if (GrandStrategyWorld == "Nidavellir") then
							SetWorldMapTileTerrain(x, y, GetWorldMapTerrainTypeId("Dark Plains"))
						else
							SetWorldMapTileTerrain(x, y, GetWorldMapTerrainTypeId("Plains")) -- since dark plains don't have transitions yet
						end
					end
				end
			end
			
			for x=0,GetWorldMapWidth() - 1 do
				for y=0,GetWorldMapHeight() - 1 do
					if (GetWorldMapTileTerrain(x, y) ~= "") then
						CalculateWorldMapTileGraphicTile(x, y)
					end
				end
			end
			
			InitializeGrandStrategyMinimap()

			FinalizeGrandStrategyInitialization()
			
			-- initialize province variables
			for key, value in pairs(WorldMapProvinces) do
				-- if is an empty province with no troops, put 6 infantry in it to prevent extremely easy conquests (do this here so it won't affect the history)
				if (GetProvinceOwner(WorldMapProvinces[key].Name) == "" and GetProvinceMilitaryScore(WorldMapProvinces[key].Name, false, true) == 1) then
					if (GrandStrategyWorld == "Nidavellir") then
						SetProvinceUnitQuantity(WorldMapProvinces[key].Name, "unit-goblin-spearman", 6)
					else
						SetProvinceUnitQuantity(WorldMapProvinces[key].Name, "unit-germanic-warrior", 6)
					end
				end
			end

--			CalculateFactionDisembarkmentProvinces()

			GrandStrategyGameInitialized = true
			SetCurrentCustomHero("")
			
			InitGameSettings() -- initialize scenario variables (i.e. No Randomness)
			
			RunGrandStrategyGame()
			menu:stop()
		end)
	menu:addFullButton(_("~!Load Game"), "l", offx + 208, offy + 212 + (36 * 5),
		function()
			RunGrandStrategyLoadGameMenu()
		end)
	menu:addFullButton(_("~!Cancel Game"), "c", offx + 208, offy + 212 + (36 * 6),
		function()
			menu:stop();
			ClearGrandStrategyVariables()
			SetCurrentCustomHero("")
			SetPlayerData(GetThisPlayer(), "RaceName", "gnome")
		end)

	menu:addLabel(_("World:"), offx + 40, offy + (10 + 120) - 20, Fonts["game"], false)
	world = menu:addDropDown(world_list, offx + 40, offy + 10 + 120,
		function(dd) DateChanged(true) end)
	world:setSize(152, 20)
	world:setTooltip(_("Choose a world to play in, or generate a random world map mixing the factions from the worlds"))

	menu:addLabel(_("Bookmark:"), offx + 220, offy + (10 + 120) - 20, Fonts["game"], false)
	bookmark = menu:addDropDown(bookmark_list, offx + 220, offy + 10 + 120,
		function(dd)
			local bookmark_date = tonumber(string.sub(bookmark_list[bookmark:getSelected() + 1], 0, -3))
			if (string.find(bookmark_list[bookmark:getSelected() + 1], "BC") ~= nil) then
				bookmark_date = bookmark_date * -1
			end
			
			date_slider:setValue(bookmark_date)
			DateChanged(true)
		end
	)
	bookmark:setSize(152, 20)
	
	menu:addLabel(_("Faction:"), offx + 640 - 224 - 16, offy + (10 + 120) - 20, Fonts["game"], false)
	faction = menu:addDropDown(faction_name_list, offx + 640 - 224 - 16, offy + 10 + 120,
		function(dd) FactionChanged(); end)
	faction:setSize(152, 20)

	menu:addLabel(_("Tactical Unit Multiplier:"), offx + 40, offy + (10 + 180) - 20, Fonts["game"], false)
	battalions = menu:addDropDown({"1x", "2x", "3x", "4x", "5x"}, offx + 40, offy + 10 + 180,
		function(dd)
			wyr.preferences.GrandStrategyBattalionMultiplier = battalions:getSelected() + 1
			SavePreferences()
			BattalionMultiplier = wyr.preferences.GrandStrategyBattalionMultiplier
		end)
	battalions:setSize(152, 20)
	battalions:setSelected(wyr.preferences.GrandStrategyBattalionMultiplier - 1)
	battalions:setTooltip(_("Multiplier for the quantity of units in battle (relative to the quantity of strategic map units)"))

	menu:addLabel(_("Custom Hero:"), offx + 220, offy + (10 + 180) - 20, Fonts["game"], false)
	hero_dd = menu:addDropDown(hero_list, offx + 220, offy + 10 + 180,
		function(dd)
			SetCurrentCustomHero(hero_list[hero_dd:getSelected() + 1])
		end
	)
	hero_dd:setSize(152, 20)
	
	automatic_battles = menu:addImageCheckBox(_("Automatic Battles"), offx + 640 - 224 - 16, offy + 10 + 180 + 3,
		function()
			wyr.preferences.AutomaticBattles = automatic_battles:isMarked()
			SavePreferences()
			battle_base_building:setVisible(wyr.preferences.AutomaticBattles == false)
		end
	)
	automatic_battles:setMarked(wyr.preferences.AutomaticBattles)
  
	battle_base_building = menu:addImageCheckBox(_("Battle Base Building"), offx + 640 - 224 - 16, offy + 10 + 220 + 3,
		function()
			wyr.preferences.GrandStrategyBattleBaseBuilding = battle_base_building:isMarked()
			SavePreferences()
			GrandStrategyBattleBaseBuilding = wyr.preferences.GrandStrategyBattleBaseBuilding
		end
	)
	battle_base_building:setMarked(wyr.preferences.GrandStrategyBattleBaseBuilding)
	battle_base_building:setVisible(wyr.preferences.AutomaticBattles == false)
  
	no_randomness = menu:addImageCheckBox(_("No Randomness"), offx + 40, offy + 10 + 220 + 3,
		function()
			wyr.preferences.NoRandomness = no_randomness:isMarked()
			SavePreferences()
		end
	)
	no_randomness:setMarked(wyr.preferences.NoRandomness)
  
	no_time_of_day = menu:addImageCheckBox(_("No Day/Night Cycle"), offx + 220, offy + 10 + 220 + 3,
		function()
			wyr.preferences.NoTimeOfDay = no_time_of_day:isMarked()
			SavePreferences()
		end
	)
	no_time_of_day:setMarked(wyr.preferences.NoTimeOfDay)
  

	local date_label = Label(_("Date: ") .. GetYearString(GrandStrategyYear))
	date_label:setFont(CFont:Get("game"))
	date_label:adjustSize();
	menu:add(date_label, offx + 220, offy + 36 * 7)
	-- slider button to decrease slider value
	local b = menu:addImageLeftSliderButton("", nil, offx + 220 + 76 - 86 - 20, offy + 36 * 7.5, function() date_slider:setValue(date_slider:getValue() - 1); DateChanged() end)
		
	-- slider button to increase slider value
	b = menu:addImageRightSliderButton("", nil, offx + 220 + 76 + 86, offy + 36 * 7.5, function() date_slider:setValue(date_slider:getValue() + 1); DateChanged() end)
		
	-- slider itself
	date_slider = menu:addImageSlider(date_minimum, date_maximum, 172, 18, offx + 220 + 76 - 86, offy + 36 * 7.5, function() DateChanged() end)

	date_slider:setValue(date_minimum)

	local date_minimum_label = Label(GetYearString(date_minimum))
	date_minimum_label:setFont(CFont:Get("small"))
	date_minimum_label:adjustSize();
	menu:addCentered(date_minimum_label, offx + 220 + 76 - 86 - 20 + 11, offy + 36 * 8 + 6)

	local date_maximum_label = Label(GetYearString(date_maximum))
	date_maximum_label:setFont(CFont:Get("small"))
	date_maximum_label:adjustSize();
	menu:addCentered(date_maximum_label, offx + 220 + 76 + 86 + 11, offy + 36 * 8 + 6)

	function DateChanged(ignore_mouse_state)
		if (IsMouseLeftButtonPressed() == false or ignore_mouse_state) then
			CleanGrandStrategyGame()
			
			local old_world = GrandStrategyWorld
			SetGrandStrategyWorld(world_list[world:getSelected() + 1])
			InitializeGrandStrategyGame(false)
				
			if (old_world ~= world_list[world:getSelected() + 1]) then
				if (GrandStrategyWorld == "Earth") then
					date_minimum = -3000 -- beginning of the last wave of Indo-European migrations, which lasted until 2800 BC
					date_maximum = 170 -- beginning of the Marcomannic Wars
--					date_maximum = 486 -- conquest of Syagrius' realm by the Frankish Merovingian king, Clovis
--					date_maximum = 654
					
					bookmark_list = {
						"3000 BC", -- beginning of the last wave of Indo-European migrations, which lasted until 2800 BC
						"2800 BC", -- end of the last wave of the Indo-European migrations and begin of the Single Grave culture in modern Denmark
						"71 BC", -- the Suebic king Ariovistus enters Gaul at the request of the Arverni and the Sequani to fight the Aedui
--						"27 BC", -- Augustus assumes power in Rome
						"9 BC", -- Marbod conquers Bohemia
						"170 AD", -- beginning of the Marcomannic Wars
--						"486 AD", -- conquest of Syagrius' realm by the Frankish Merovingian king, Clovis
--						"1547 AD",
--						"1648 AD", -- Peace of Westphalia
--						"1918 AD" -- end of the Great War
					}
				elseif (GrandStrategyWorld == "Nidavellir") then
					date_minimum = -3000 -- approximate beginning of the Asa's journey to Scandinavia (the Mead of Poetry should have taken place sometime before that)
					date_maximum = 550 -- beginning of The Hammer of Thursagan
					
					bookmark_list = {
						"3000 BC", -- approximate begin of the Asa's journey to Scandinavia (the Mead of Poetry should have taken place sometime before that)
						"25 AD", -- beginning of The Scepter of Fire
						"40 AD", -- end of The Scepter of Fire
						"550 AD" -- beginning of The Hammer of Thursagan
					}
				elseif (GrandStrategyWorld == "Random") then
					date_minimum = -3000
					date_maximum = -3000
					
					bookmark_list = {
						"3000 BC"
					}
				end
				
				date_slider:setScale(date_minimum, date_maximum)
				date_slider:setValue(date_minimum)
				date_minimum_label:setCaption(GetYearString(date_minimum))
				date_minimum_label:adjustSize();
				date_maximum_label:setCaption(GetYearString(date_maximum))
				date_maximum_label:adjustSize();
			end
		end
		
		GrandStrategyYear = math.floor(date_slider:getValue())
		
		date_label:setCaption(_("Date: ") .. GetYearString(GrandStrategyYear))
		date_label:adjustSize();
	
		if (IsMouseLeftButtonPressed() == false or ignore_mouse_state) then
			if (world_list[world:getSelected() + 1] ~= "Random") then
				InitializeGrandStrategyWorldMap()
				Load("scripts/grand_strategy/" .. string.lower(world_list[world:getSelected() + 1]) .. "_world_map.lua");
				Load("scripts/grand_strategy/" .. string.lower(world_list[world:getSelected() + 1]) .. "_history.lua");
				
				faction_list = {}
				faction_name_list = {}
				faction_civilization_list = {}
				for key, value in pairsByKeys(Factions) do
					if (GetFactionProvinceCountPreGame(Factions[key].Name) > 0 and GetCivilizationData(Factions[key].Civilization, "Playable") and GetFactionData(Factions[key].Civilization, Factions[key].Name, "Playable")) then
						table.insert(faction_list, Factions[key].Name)
						table.insert(faction_civilization_list, Factions[key].Civilization)
						table.insert(faction_name_list, GetFactionData(Factions[key].Civilization, Factions[key].Name, "Name"))
					end
				end
			else
				faction_list = {"asa-tribe", "brising-clan", "eikinskjaldi-clan", "khag-tribe", "lggi-tribe", "norlund-clan", "shinsplitter-clan", "shorbear-clan"}
				faction_civilization_list = {"germanic", "dwarf", "dwarf", "goblin", "goblin", "dwarf", "dwarf", "dwarf"}
				faction_name_list = {"Asa Tribe", "Brising Clan", "Eikinskjaldi Clan", "Khag Tribe", "Lggi Tribe", "Norlund Clan", "Shinsplitter Clan", "Shorbear Clan"}
			end

			faction:setList(faction_name_list)
			faction:setSize(152, 20)
			faction:setSelected(0)
			FactionChanged()
			
			bookmark:setList(bookmark_list)
			bookmark:setSize(152, 20)
			local bookmark_found = false
			for i=1,table.getn(bookmark_list) do
				local bookmark_date = tonumber(string.sub(bookmark_list[i], 0, -3))
				if (string.find(bookmark_list[i], "BC") ~= nil) then
					bookmark_date = bookmark_date * -1
				end
				if (GrandStrategyYear >= bookmark_date) then
					bookmark:setSelected(i-1)
					bookmark_found = true
				end
			end
			
			if not (bookmark_found) then
				bookmark:setSelected(0)
			end
		end
	end

	DateChanged()

	menu:run()
end

function RunGrandStrategyGame()
	ClearGrandStrategyUIVariables()

	GrandStrategyMenu = WarGrandStrategyMenu()
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2

	DrawGrandStrategyInterface()
	
	GrandStrategyMenu:run()
end

function EndTurn()
	if (GrandStrategyYear % 10 == 0 and GrandStrategyMonth == 0) then
		GrandStrategyGameSave("autosave")
	end

	ProcessingEndTurn = true
	
--	CalculateFactionDisembarkmentProvinces()
	
	-- AI moves
	for key, value in pairs(Factions) do
		if (Factions[key] ~= GrandStrategyFaction and GetFactionProvinceCount(Factions[key]) > 0) then
			AIDoTurn(Factions[key])
		end
	end

	DoGrandStrategyTurn()

	for key, value in pairs(WorldMapProvinces) do
		local province_owner = GetFactionFromName(GetProvinceOwner(WorldMapProvinces[key].Name))
	
		-- construct buildings, train units and move heroes
		for i, unitName in ipairs(Units) do
			if (IsMilitaryUnit(unitName)) then
				if (GetUnitTypeData(unitName, "Mercenary") and GetProvinceUnderConstructionUnitQuantity(WorldMapProvinces[key].Name, unitName) > 0) then -- if a mercenary group is hired, disable hiring them permanently
					MercenaryGroups[string.gsub(unitName, "-", "_")] = nil
				end
				if (GetProvinceUnitQuantity(WorldMapProvinces[key].Name, unitName) < 0) then
					SetProvinceUnitQuantity(WorldMapProvinces[key].Name, unitName, 0)
				end
				SetProvinceUnitQuantity(WorldMapProvinces[key].Name, unitName, GetProvinceUnitQuantity(WorldMapProvinces[key].Name, unitName) + GetProvinceUnderConstructionUnitQuantity(WorldMapProvinces[key].Name, unitName) + GetProvinceMovingUnitQuantity(WorldMapProvinces[key].Name, unitName))
				SetProvinceUnderConstructionUnitQuantity(WorldMapProvinces[key].Name, unitName, 0)
				SetProvinceMovingUnitQuantity(WorldMapProvinces[key].Name, unitName, 0)
			end
		end
		local grand_strategy_heroes = GetGrandStrategyHeroes()
		for i = 1, table.getn(grand_strategy_heroes) do
			if (GetProvinceHero(WorldMapProvinces[key].Name, grand_strategy_heroes[i]) == 1) then
				SetProvinceHero(WorldMapProvinces[key].Name, grand_strategy_heroes[i], 2)
			end
		end
	end
	
	-- research technologies

	for key, value in pairs(WorldMapProvinces) do
		-- effect attacks
		if (GetProvinceAttackedBy(WorldMapProvinces[key].Name) ~= "") then
			AttackProvince(WorldMapProvinces[key], GetProvinceAttackedBy(WorldMapProvinces[key].Name))
			SetProvinceAttackedBy(WorldMapProvinces[key].Name, "", "")
		end
	end

	CalculateFactionUpkeeps()

	for key, value in pairs(Factions) do
		ChangeFactionResource(Factions[key].Civilization, Factions[key].Name, "copper", - GetFactionUpkeep(Factions[key].Civilization, Factions[key].Name))
	end

	local disbanding_happened = false
	-- disband units if copper is on the negative and upkeep is higher than income
	for key, value in pairs(Factions) do
		if (GetFactionResource(Factions[key].Civilization, Factions[key].Name, "copper") < 0 and GetFactionUpkeep(Factions[key].Civilization, Factions[key].Name) > GetFactionIncome(Factions[key].Civilization, Factions[key].Name, "copper")) then
			disbanding_happened = true
			local disband_quota = GetFactionUpkeep(Factions[key].Civilization, Factions[key].Name) - GetFactionIncome(Factions[key].Civilization, Factions[key].Name, "copper")
			for province_i, province_key in ipairs(Factions[key].OwnedProvinces) do
				for i, unitName in ipairs(Units) do
					if (IsMilitaryUnit(unitName)) then
						if (GetProvinceUnitQuantity(WorldMapProvinces[province_key].Name, unitName) > 0 and GetUnitTypeData(unitName, "Upkeep") > 0) then
							if (disband_quota > GetProvinceUnitQuantity(WorldMapProvinces[province_key].Name, unitName) * GetUnitTypeData(unitName, "Upkeep")) then
								disband_quota = disband_quota - GetProvinceUnitQuantity(WorldMapProvinces[province_key].Name, unitName) * GetUnitTypeData(unitName, "Upkeep")
								SetProvinceUnitQuantity(WorldMapProvinces[province_key].Name, unitName, 0)
							else
								SetProvinceUnitQuantity(WorldMapProvinces[province_key].Name, unitName, GetProvinceUnitQuantity(WorldMapProvinces[province_key].Name, unitName) - math.floor(disband_quota / GetUnitTypeData(unitName, "Upkeep")))
								disband_quota = disband_quota - math.floor(disband_quota / GetUnitTypeData(unitName, "Upkeep")) * GetUnitTypeData(unitName, "Upkeep")
							end
						end
					end
				end
				if (disband_quota == 0) then
					break
				end
			end
		end
	end

	if (disbanding_happened) then
		CalculateFactionUpkeeps()
	end

	DoProspection()
	
	GrandStrategyMonth = GrandStrategyMonth + MonthsPerTurn;
	if (GrandStrategyMonth >= 12) then
		GrandStrategyMonth = 0;
		GrandStrategyYear = GrandStrategyYear + 1;
		if (GrandStrategyYear == 0) then -- the year 0 AD didn't exist
			GrandStrategyYear = GrandStrategyYear + 1;
		end
	end

	DoEvents()

--	if (math.fmod(GrandStrategyYear, 10) == 0) then -- every ten turns, end and restart the menu, to increase performance
--		GrandStrategyMenu:stop();
--		RunGrandStrategyGame()
--	else
		DrawGrandStrategyInterface()
--	end

	-- AI diplomacy
	for key, value in pairs(Factions) do
		if (Factions[key] ~= GrandStrategyFaction and GetFactionProvinceCount(Factions[key]) > 0) then
			AIDoDiplomacy(Factions[key])
		end
	end
	
	-- if AI has responded to a peace offer of the human player, send a message telling the result
	if (GrandStrategyFaction ~= nil) then
		for key, value in pairs(Factions) do
			if (GetFactionDiplomacyStateProposal(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, Factions[key].Civilization, Factions[key].Name) == "peace" and GetFactionDiplomacyState(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, Factions[key].Civilization, Factions[key].Name) == "peace") then
				GrandStrategyGamePaused = true
				local menu = WarGrandStrategyGameMenu(panel(1))
				menu:setDrawMenusUnder(true)

				menu:addLabel("Peace Offer Accepted!", 128, 11)

				local l = MultiLineLabel()
				l:setFont(Fonts["game"])
				l:setSize(228, 128)
				l:setLineWidth(228)
				menu:add(l, 14, 35)
				l:setCaption("My lord, the " .. GetFactionFullName(Factions[key].Civilization, Factions[key].Name) .. " has accepted our peace offer.")

				menu:addFullButton("~!OK", "o", 16, 248,
					function()
						SetFactionDiplomacyStateProposal(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, Factions[key].Civilization, Factions[key].Name, "")
						GrandStrategyGamePaused = false
						menu:stop()
					end)

				menu:run()
			elseif (GetFactionDiplomacyStateProposal(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, Factions[key].Civilization, Factions[key].Name) == "peace" and GetFactionDiplomacyState(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, Factions[key].Civilization, Factions[key].Name) == "war") then
				GrandStrategyGamePaused = true
				local menu = WarGrandStrategyGameMenu(panel(1))
				menu:setDrawMenusUnder(true)

				menu:addLabel("Peace Offer Rejected!", 128, 11)

				local l = MultiLineLabel()
				l:setFont(Fonts["game"])
				l:setSize(228, 128)
				l:setLineWidth(228)
				menu:add(l, 14, 35)
				l:setCaption("My lord, the " .. GetFactionFullName(Factions[key].Civilization, Factions[key].Name) .. " has rejected our peace offer!")

				menu:addFullButton("~!OK", "o", 16, 248,
					function()
						SetFactionDiplomacyStateProposal(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, Factions[key].Civilization, Factions[key].Name, "")
						GrandStrategyGamePaused = false
						menu:stop()
					end)

				menu:run()
			end
		end
	end

	if (GrandStrategyFaction ~= nil and GetFactionProvinceCount(GrandStrategyFaction) == 0) then -- if player lost all provinces, end game
		ClearGrandStrategyUIVariables()
		GrandStrategyMenu:stop()
		ClearGrandStrategyVariables()
		SetPlayerData(GetThisPlayer(), "RaceName", "gnome")
	end
	
	ProcessingEndTurn = false
end

function AttackProvince(province, faction)
	MapAttacker = nil
	MapDefender = nil
	if (province == nil or faction == nil or faction == "") then
		return
	end
	GetMapInfo(GetProvinceData(province.Name, "Map"))
	Attacker = faction
	local empty_province = false
	if (GetProvinceOwner(province.Name) ~= "") then
		Defender = GetProvinceOwner(province.Name)
	else
		Defender = GetProvinceName(province) .. " Province"
		empty_province = true
	end
	local revolt = false
	if (empty_province == false and GetFactionProvinceCount(GetFactionFromName(Attacker)) == 0 and GetFactionDiplomacyState(GetFactionFromName(Attacker).Civilization, Attacker, GetFactionFromName(Defender).Civilization, Defender) == "peace") then -- if the attacker doesn't own any provinces, then this must be a revolt
		revolt = true
	end
	AttackedProvince = province
	
	local victorious_player = ""
	
	local attacker_prestige = math.floor(10 * GetProvinceMilitaryScore(province.Name, false, true) / GetProvinceMilitaryScore(province.Name, true, true)) -- 10 prestige if military scores are equal
	local defender_prestige = math.floor(10 * GetProvinceMilitaryScore(province.Name, true, true) / GetProvinceMilitaryScore(province.Name, false, true)) -- 10 prestige if military scores are equal
	
	local units_lost = {}
	for i, unitName in ipairs(Units) do
		if (IsMilitaryUnit(unitName)) then
			if (GrandStrategyFaction.Name == Attacker) then
				units_lost[string.gsub(unitName, "-", "_")] = GetProvinceAttackingUnitQuantity(province.Name, unitName)
			elseif (GrandStrategyFaction.Name == Defender) then
				units_lost[string.gsub(unitName, "-", "_")] = GetProvinceUnitQuantity(province.Name, unitName)
			end
		end
	end

	if (GrandStrategyFaction ~= nil and (Attacker == GrandStrategyFaction.Name or Defender == GrandStrategyFaction.Name) and wyr.preferences.AutomaticBattles == false) then -- if the human player is involved and automatic battles is deactivated, run a RTS battle map, and if not autoresolve the battle
		if (MapAttacker ~= nil and MapDefender ~= nil) then
			for k=1,mapinfo.nplayers do
				if (k == MapAttacker + 1) then
					if (Defender == GrandStrategyFaction.Name) then
						GameSettings.Presets[k-1].Type = PlayerComputer
					end
				elseif (k == MapDefender + 1) then
					if (Attacker == GrandStrategyFaction.Name) then
						GameSettings.Presets[k-1].Type = PlayerComputer
					end
				else
					GameSettings.Presets[k-1].Type = PlayerNobody
				end
			end
		else
			local person_player_found = false
			local computer_player_found = false
			for k=1,mapinfo.nplayers do
				if (mapinfo.playertypes[k] == "person" and person_player_found == false) then
					person_player_found = true
				elseif (mapinfo.playertypes[k] == "person" and person_player_found == true and computer_player_found == false) then
					GameSettings.Presets[k-1].Type = PlayerComputer
					computer_player_found = true
				elseif (mapinfo.playertypes[k] == "computer" and computer_player_found == false) then
					computer_player_found = true
				elseif (mapinfo.playertypes[k] == "person" or mapinfo.playertypes[k] == "computer") then
					GameSettings.Presets[k-1].Type = PlayerNobody
				end
			end
		end
		GrandStrategyBattle = true
		RunMap(GetProvinceData(province.Name, "Map"))

		if (GameResult == GameVictory) then
			victorious_player = GrandStrategyFaction.Name
		elseif (Attacker == GrandStrategyFaction.Name) then
			victorious_player = Defender
		elseif (Defender == GrandStrategyFaction.Name) then
			victorious_player = Attacker
		end
		local victorious_player_name = ""
		if (GetFactionFromName(victorious_player) ~= nil) then
			victorious_player_name = GetFactionData(GetFactionFromName(victorious_player).Civilization, victorious_player, "Name")
		else
			victorious_player_name = victorious_player
		end
		-- set the new unit quantity to the surviving units of the victorious side
		for i, unitName in ipairs(Units) do
			if (IsOffensiveMilitaryUnit(unitName)) then
				SetProvinceUnitQuantity(province.Name, unitName, math.ceil(GetPlayerData(GetFactionPlayer(victorious_player_name), "UnitTypesStartingNonHeroCount", unitName) / BattalionMultiplier))
			end
		end
		
		local grand_strategy_heroes = GetGrandStrategyHeroes()
		local victorious_player_heroes = GetPlayerData(GetFactionPlayer(victorious_player_name), "Heroes")
		for i = 1, table.getn(grand_strategy_heroes) do
			if (GetProvinceHero(province.Name, grand_strategy_heroes[i]) ~= 0 and GetProvinceHero(province.Name, grand_strategy_heroes[i]) ~= 4) then
				if (GetArrayIncludes(victorious_player_heroes, grand_strategy_heroes[i])) then
					SetProvinceHero(province.Name, grand_strategy_heroes[i], 2)
				else
					SetProvinceHero(province.Name, grand_strategy_heroes[i], 0)
				end
			end
		end
		
		GrandStrategyBattle = false
	else
		local attacker_military_score = GetProvinceMilitaryScore(province.Name, true, true)
		local defender_military_score = GetProvinceMilitaryScore(province.Name, false, true)
		if (attacker_military_score > defender_military_score) then -- if military score is the same, then defenders win
			victorious_player = Attacker
			for i, unitName in ipairs(Units) do
				if (IsOffensiveMilitaryUnit(unitName)) then
					SetProvinceUnitQuantity(province.Name, unitName, round(GetProvinceAttackingUnitQuantity(province.Name, unitName) * (attacker_military_score - defender_military_score) / attacker_military_score)) -- formula for calculating units belonging to the victorious player that were killed
				end
			end
			
			local grand_strategy_heroes = GetGrandStrategyHeroes()
			for i = 1, table.getn(grand_strategy_heroes) do -- kill off defending heroes if the attacking player was the victorious one
				if (GetProvinceHero(province.Name, grand_strategy_heroes[i]) == 2) then
					SetProvinceHero(province.Name, grand_strategy_heroes[i], 0)
				elseif (GetProvinceHero(province.Name, grand_strategy_heroes[i]) == 3) then
					SetProvinceHero(province.Name, grand_strategy_heroes[i], 2)
				end
			end
		else
			victorious_player = Defender
			for i, unitName in ipairs(Units) do
				if (IsOffensiveMilitaryUnit(unitName)) then
					SetProvinceUnitQuantity(province.Name, unitName, round(
						GetProvinceUnitQuantity(province.Name, unitName)
						* (defender_military_score - attacker_military_score)
						/ defender_military_score
					))
				end
			
				local grand_strategy_heroes = GetGrandStrategyHeroes()
				for i = 1, table.getn(grand_strategy_heroes) do -- kill off attacking heroes if the defending player was the victorious one
					if (GetProvinceHero(province.Name, grand_strategy_heroes[i]) == 3) then
						SetProvinceHero(province.Name, grand_strategy_heroes[i], 0)
					end
				end
			end
		end
	end

	for i, unitName in ipairs(Units) do
		if (IsMilitaryUnit(unitName)) then
			if (victorious_player == GrandStrategyFaction.Name) then
				units_lost[string.gsub(unitName, "-", "_")] = units_lost[string.gsub(unitName, "-", "_")] - GetProvinceUnitQuantity(province.Name, unitName)
			end
		end
	end
	
	local units_lost_string = "None"
	local first_unit = true
	for i, unitName in ipairs(Units) do
		if (IsMilitaryUnit(unitName)) then
			if (units_lost[string.gsub(unitName, "-", "_")] ~= nil and units_lost[string.gsub(unitName, "-", "_")] > 0) then
				if not (first_unit) then
					units_lost_string = units_lost_string .. ", "
				else
					first_unit = false
					units_lost_string = ""
				end
				units_lost_string = units_lost_string .. units_lost[string.gsub(unitName, "-", "_")] .. " "
				if (units_lost[string.gsub(unitName, "-", "_")] > 1) then
					units_lost_string = units_lost_string .. GetUnitTypeData(unitName, "NamePlural")
				else
					units_lost_string = units_lost_string .. GetUnitTypeName(unitName)
				end
			end
		end
	end
	
	if (victorious_player == Attacker) then
		local migration = empty_province and GetFactionProvinceCount(GetFactionFromName(Attacker)) == 1 and GetFactionData(GetFactionFromName(Attacker).Civilization, GetFactionFromName(Attacker).Name, "Type") == "tribe"
		AcquireProvince(province, victorious_player)
		if (migration) then
			for province_i, province_key in ipairs(GetFactionFromName(Attacker).OwnedProvinces) do
				for i, unitName in ipairs(Units) do
					if (string.find(unitName, "upgrade-") == nil) then
						if (GetProvinceUnitQuantity(WorldMapProvinces[province_key].Name, unitName) > 1) then
							local quantity_to_move = GetProvinceUnitQuantity(WorldMapProvinces[province_key].Name, unitName)
							if (GetUnitTypeData(unitName, "Class") == "worker") then
								quantity_to_move = quantity_to_move - 1
							end
							ChangeProvinceUnitQuantity(province.Name, unitName, quantity_to_move)
							ChangeProvinceUnitQuantity(WorldMapProvinces[province_key].Name, unitName, - quantity_to_move)
						elseif (IsGrandStrategyBuilding(unitName) and GetProvinceSettlementBuilding(WorldMapProvinces[province_key].Name, unitName)) then
							SetProvinceSettlementBuilding(province.Name, unitName, true)
						end
					end
				end
				local grand_strategy_heroes = GetGrandStrategyHeroes()
				for i = 1, table.getn(grand_strategy_heroes) do -- kill off attacking heroes if the defending player was the victorious one
					if (GetProvinceHero(WorldMapProvinces[province_key].Name, grand_strategy_heroes[i]) ~= 0) then
						SetProvinceHero(province.Name, grand_strategy_heroes[i], GetProvinceHero(WorldMapProvinces[province_key].Name, grand_strategy_heroes[i]))
					end
				end
				SetProvinceCivilization(province.Name, GetFactionFromName(Attacker).Civilization)
				AcquireProvince(WorldMapProvinces[province_key], "")
			end
		end
		
		if (GrandStrategyFaction ~= nil and SelectedProvince == province) then
			if (Attacker == GrandStrategyFaction.Name) then -- this is here to make it so the right interface state happens if the province is selected (a conquered province that is selected will have the interface state switched from diplomacy to province)
				GrandStrategyInterfaceState = "Province"
			elseif (Defender == GrandStrategyFaction.Name) then -- this is here to make it so the right interface state happens if the province is selected (a lost province that is selected will have the interface state switched from province to diplomacy)
				GrandStrategyInterfaceState = "Diplomacy"
			end
		end
		ChangeFactionResource(GetFactionFromName(Attacker).Civilization, GetFactionFromName(Attacker).Name, "prestige", attacker_prestige + 5) -- plus five for acquiring the territory
		if (empty_province == false) then
			ChangeFactionResource(GetFactionFromName(Defender).Civilization, GetFactionFromName(Defender).Name, "prestige", - attacker_prestige - 5) -- minus five for losing the territory
			
			if (revolt) then
				SetFactionDiplomacyState(GetFactionFromName(Attacker).Civilization, Attacker, GetFactionFromName(Defender).Civilization, Defender, "war")
				AcquireFactionTechnologies(GetFactionFromName(Defender).Civilization, GetFactionFromName(Defender).Name, GetFactionFromName(Attacker).Civilization, GetFactionFromName(Attacker).Name)
			end
		end
	else
		if (empty_province == false) then
			ChangeFactionResource(GetFactionFromName(Defender).Civilization, GetFactionFromName(Defender).Name, "prestige", defender_prestige)
		end
		ChangeFactionResource(GetFactionFromName(Attacker).Civilization, GetFactionFromName(Attacker).Name, "prestige", - defender_prestige)
	end
				
	for i, unitName in ipairs(Units) do
		if (IsMilitaryUnit(unitName)) then
			SetProvinceAttackingUnitQuantity(province.Name, unitName, 0)
		end
	end
	if (empty_province == false and GetFactionProvinceCount(GetFactionFromName(Defender)) == 0) then
		local defender_faction_key = GetFactionKeyFromName(Defender)
		for key, value in pairs(Factions) do -- if the defender lost his last province, end wars between him and other factions
			SetFactionDiplomacyState(Factions[key].Civilization, Factions[key].Name, Factions[defender_faction_key].Civilization, Factions[defender_faction_key].Name, "peace")
			SetFactionDiplomacyStateProposal(Factions[key].Civilization, Factions[key].Name, Factions[defender_faction_key].Civilization, Factions[defender_faction_key].Name, "")
		end
		SetFactionCommodityTrade(Factions[defender_faction_key].Civilization, Factions[defender_faction_key].Name, "lumber", 0) -- remove offers and bids from the eliminated faction
		SetFactionCommodityTrade(Factions[defender_faction_key].Civilization, Factions[defender_faction_key].Name, "stone", 0) -- remove offers and bids from the eliminated faction
	end

	if ((Attacker == GrandStrategyFaction.Name or Defender == GrandStrategyFaction.Name) and wyr.preferences.AutomaticBattles) then -- show a battle report if the player was involved in the battle, and has automatic battles activated
		local battle_report_title = "Battle in " .. GetProvinceName(AttackedProvince)
		if (revolt) then
			battle_report_title = "Revolt in " .. GetProvinceName(AttackedProvince)
		end
		local battle_report_message = ""
		if (revolt == false and Defender == GrandStrategyFaction.Name and victorious_player == Defender and empty_province == false) then
			battle_report_message = "My lord, the " .. GetFactionFullName(GetFactionFromName(Attacker).Civilization, Attacker) .. " has made a failed attack against us in " .. GetProvinceName(AttackedProvince) .. "!"
		elseif (revolt == false and Defender == GrandStrategyFaction.Name and victorious_player == Attacker and empty_province == false) then
			battle_report_message = "My lord, the " .. GetFactionFullName(GetFactionFromName(Attacker).Civilization, Attacker) .. " has taken our province of " .. GetProvinceName(AttackedProvince) .. "!"
		elseif (Attacker == GrandStrategyFaction.Name and victorious_player == Defender and empty_province == false) then
			battle_report_message = "My lord, our attack against the " .. GetProvinceName(AttackedProvince) .. " province of the " .. GetFactionFullName(GetFactionFromName(Defender).Civilization, Defender) .. " has failed!"
		elseif (Attacker == GrandStrategyFaction.Name and victorious_player == Attacker and empty_province == false) then
			battle_report_message = "My lord, we have taken the province of " .. GetProvinceName(AttackedProvince) .. " from the " .. GetFactionFullName(GetFactionFromName(Defender).Civilization, Defender) .. "!"
		elseif (Attacker == GrandStrategyFaction.Name and victorious_player == Defender and empty_province) then
			battle_report_message = "My lord, our attempt to conquer the wildlands of " .. GetProvinceName(AttackedProvince) .. " has failed!"
		elseif (Attacker == GrandStrategyFaction.Name and victorious_player == Attacker and empty_province) then
			battle_report_message = "My lord, we have taken the province of " .. GetProvinceName(AttackedProvince) .. "!"
		elseif (revolt and Defender == GrandStrategyFaction.Name and victorious_player == Defender and empty_province == false) then
			battle_report_message = "My lord, a failed revolt to declare the independence of the " .. GetFactionFullName(GetFactionFromName(Attacker).Civilization, Attacker) .. " has occurred in " .. GetProvinceName(AttackedProvince) .. "!"
		elseif (revolt and Defender == GrandStrategyFaction.Name and victorious_player == Attacker and empty_province == false) then
			battle_report_message = "My lord, the province of " .. GetProvinceName(AttackedProvince) .. " has risen in rebellion, resulting in the declaration of independence of the " .. GetFactionFullName(GetFactionFromName(Attacker).Civilization, Attacker) .. "!"
		end
		battle_report_message = battle_report_message .. "\n\nUnits Lost: " .. units_lost_string
		GenericDialog(battle_report_title, battle_report_message)
	end
	
	Attacker = ""
	Defender = ""
	AttackedProvince = nil
	GameResult = GameNoResult
	CleanPlayers()
	SetPlayerData(GetThisPlayer(), "RaceName", GrandStrategyFaction.Civilization)
end

function AcquireProvince(province, faction)
	if (GetProvinceOwner(province.Name) ~= "") then
		RemoveElementFromArray(GetFactionFromName(GetProvinceOwner(province.Name)).OwnedProvinces, GetProvinceKeyFromName(province.Name))
	end
	
	local old_faction = GetProvinceOwner(province.Name)
	
	ChangeProvinceOwner(province, GetFactionFromName(faction))
	
	if (faction ~= "") then
		CalculateFactionIncomes(GetFactionFromName(faction).Civilization, GetFactionFromName(faction).Name)
	end
	if (old_faction ~= "") then
		CalculateFactionIncomes(GetFactionFromName(old_faction).Civilization, GetFactionFromName(old_faction).Name)
	end
	
	if (faction ~= "") then
		table.insert(GetFactionFromName(faction).OwnedProvinces, GetProvinceKeyFromName(province.Name))
		
		if (GetProvinceCivilization(province.Name) == "") then -- if province has no culture, make it that of the one who acquired it
			SetProvinceCivilization(province.Name, GetFactionFromName(faction).Civilization)
		end

		local grand_strategy_heroes = GetGrandStrategyHeroes()
		for i = 1, table.getn(grand_strategy_heroes) do
			if (GetProvinceHero(province.Name, grand_strategy_heroes[i]) == 1) then -- if a hero is moving here, remove him
				SetProvinceHero(province.Name, grand_strategy_heroes[i], 0)
			end
		end
	elseif (faction == "") then
		SetProvinceCivilization(province.Name, "")
		for i, unitName in ipairs(Units) do
			if (IsGrandStrategyBuilding(unitName)) then
				if (GetProvinceSettlementBuilding(province.Name, unitName)) then
					SetProvinceSettlementBuilding(province.Name, unitName, false) -- remove all buildings from an emptied province
				end
			end
		end
		SetProvinceCurrentConstruction(province.Name, "")
	end
	
	UpdateProvinceMinimap(province.Name)
end

function CalculateProvinceBorderTiles()
	for key, value in pairs(WorldMapProvinces) do
		WorldMapProvinces[key]["BorderProvinces"] = {}
		WorldMapProvinces[key].Coastal = false
		for i=1,table.getn(WorldMapProvinces[key].Tiles) do
			if (GetTileProvince(WorldMapProvinces[key].Tiles[i][1] - 1, WorldMapProvinces[key].Tiles[i][2]) ~= WorldMapProvinces[key]) then
				if (GetTileProvince(WorldMapProvinces[key].Tiles[i][1] - 1, WorldMapProvinces[key].Tiles[i][2]) ~= nil and GetArrayIncludes(WorldMapProvinces[key].BorderProvinces, GetProvinceKeyFromName(GetTileProvince(WorldMapProvinces[key].Tiles[i][1] - 1, WorldMapProvinces[key].Tiles[i][2]).Name)) == false) then
					table.insert(WorldMapProvinces[key].BorderProvinces, GetProvinceKeyFromName(GetTileProvince(WorldMapProvinces[key].Tiles[i][1] - 1, WorldMapProvinces[key].Tiles[i][2]).Name))
					if (GetGrandStrategyProvinceData(GetTileProvince(WorldMapProvinces[key].Tiles[i][1] - 1, WorldMapProvinces[key].Tiles[i][2]).Name, "Water")) then
						WorldMapProvinces[key].Coastal = true
					end
				end
			end
			if (GetTileProvince(WorldMapProvinces[key].Tiles[i][1] + 1, WorldMapProvinces[key].Tiles[i][2]) ~= WorldMapProvinces[key]) then
				if (GetTileProvince(WorldMapProvinces[key].Tiles[i][1] + 1, WorldMapProvinces[key].Tiles[i][2]) ~= nil and GetArrayIncludes(WorldMapProvinces[key].BorderProvinces, GetProvinceKeyFromName(GetTileProvince(WorldMapProvinces[key].Tiles[i][1] + 1, WorldMapProvinces[key].Tiles[i][2]).Name)) == false) then
					table.insert(WorldMapProvinces[key].BorderProvinces, GetProvinceKeyFromName(GetTileProvince(WorldMapProvinces[key].Tiles[i][1] + 1, WorldMapProvinces[key].Tiles[i][2]).Name))
					if (GetGrandStrategyProvinceData(GetTileProvince(WorldMapProvinces[key].Tiles[i][1] + 1, WorldMapProvinces[key].Tiles[i][2]).Name, "Water")) then
						WorldMapProvinces[key].Coastal = true
					end
				end
			end
			if (GetTileProvince(WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2] - 1) ~= WorldMapProvinces[key]) then
				if (GetTileProvince(WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2] - 1) ~= nil and GetArrayIncludes(WorldMapProvinces[key].BorderProvinces, GetProvinceKeyFromName(GetTileProvince(WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2] - 1).Name)) == false) then
					table.insert(WorldMapProvinces[key].BorderProvinces, GetProvinceKeyFromName(GetTileProvince(WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2] - 1).Name))
					if (GetGrandStrategyProvinceData(GetTileProvince(WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2] - 1).Name, "Water")) then
						WorldMapProvinces[key].Coastal = true
					end
				end
			end
			if (GetTileProvince(WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2] + 1) ~= WorldMapProvinces[key]) then
				if (GetTileProvince(WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2] + 1) ~= nil and GetArrayIncludes(WorldMapProvinces[key].BorderProvinces, GetProvinceKeyFromName(GetTileProvince(WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2] + 1).Name)) == false) then
					table.insert(WorldMapProvinces[key].BorderProvinces, GetProvinceKeyFromName(GetTileProvince(WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2] + 1).Name))
					if (GetGrandStrategyProvinceData(GetTileProvince(WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2] + 1).Name, "Water")) then
						WorldMapProvinces[key].Coastal = true
					end
				end
			end
		end
	end

	for key, value in pairs(WorldMapWaterProvinces) do
		WorldMapWaterProvinces[key]["BorderProvinces"] = {}
		for i=1,table.getn(WorldMapWaterProvinces[key].Tiles) do
			if (GetTileProvince(WorldMapWaterProvinces[key].Tiles[i][1] - 1, WorldMapWaterProvinces[key].Tiles[i][2]) ~= WorldMapWaterProvinces[key]) then
				if (GetTileProvince(WorldMapWaterProvinces[key].Tiles[i][1] - 1, WorldMapWaterProvinces[key].Tiles[i][2]) ~= nil and GetArrayIncludes(WorldMapWaterProvinces[key].BorderProvinces, GetProvinceKeyFromName(GetTileProvince(WorldMapWaterProvinces[key].Tiles[i][1] - 1, WorldMapWaterProvinces[key].Tiles[i][2]).Name)) == false) then
					table.insert(WorldMapWaterProvinces[key].BorderProvinces, GetProvinceKeyFromName(GetTileProvince(WorldMapWaterProvinces[key].Tiles[i][1] - 1, WorldMapWaterProvinces[key].Tiles[i][2]).Name))
				end
			end
			if (GetTileProvince(WorldMapWaterProvinces[key].Tiles[i][1] + 1, WorldMapWaterProvinces[key].Tiles[i][2]) ~= WorldMapWaterProvinces[key]) then
				if (GetTileProvince(WorldMapWaterProvinces[key].Tiles[i][1] + 1, WorldMapWaterProvinces[key].Tiles[i][2]) ~= nil and GetArrayIncludes(WorldMapWaterProvinces[key].BorderProvinces, GetProvinceKeyFromName(GetTileProvince(WorldMapWaterProvinces[key].Tiles[i][1] + 1, WorldMapWaterProvinces[key].Tiles[i][2]).Name)) == false) then
					table.insert(WorldMapWaterProvinces[key].BorderProvinces, GetProvinceKeyFromName(GetTileProvince(WorldMapWaterProvinces[key].Tiles[i][1] + 1, WorldMapWaterProvinces[key].Tiles[i][2]).Name))
				end
			end
			if (GetTileProvince(WorldMapWaterProvinces[key].Tiles[i][1], WorldMapWaterProvinces[key].Tiles[i][2] - 1) ~= WorldMapWaterProvinces[key]) then
				if (GetTileProvince(WorldMapWaterProvinces[key].Tiles[i][1], WorldMapWaterProvinces[key].Tiles[i][2] - 1) ~= nil and GetArrayIncludes(WorldMapWaterProvinces[key].BorderProvinces, GetProvinceKeyFromName(GetTileProvince(WorldMapWaterProvinces[key].Tiles[i][1], WorldMapWaterProvinces[key].Tiles[i][2] - 1).Name)) == false) then
					table.insert(WorldMapWaterProvinces[key].BorderProvinces, GetProvinceKeyFromName(GetTileProvince(WorldMapWaterProvinces[key].Tiles[i][1], WorldMapWaterProvinces[key].Tiles[i][2] - 1).Name))
				end
			end
			if (GetTileProvince(WorldMapWaterProvinces[key].Tiles[i][1], WorldMapWaterProvinces[key].Tiles[i][2] + 1) ~= WorldMapWaterProvinces[key]) then
				if (GetTileProvince(WorldMapWaterProvinces[key].Tiles[i][1], WorldMapWaterProvinces[key].Tiles[i][2] + 1) ~= nil and GetArrayIncludes(WorldMapWaterProvinces[key].BorderProvinces, GetProvinceKeyFromName(GetTileProvince(WorldMapWaterProvinces[key].Tiles[i][1], WorldMapWaterProvinces[key].Tiles[i][2] + 1).Name)) == false) then
					table.insert(WorldMapWaterProvinces[key].BorderProvinces, GetProvinceKeyFromName(GetTileProvince(WorldMapWaterProvinces[key].Tiles[i][1], WorldMapWaterProvinces[key].Tiles[i][2] + 1).Name))
				end
			end
		end
	end
end

function CalculateFactionDisembarkmentProvinces()
	for key, value in pairs(Factions) do
		Factions[key]["DisembarkmentProvinces"] = nil
		Factions[key]["DisembarkmentProvinces"] = {}

		for province_i, province_key in ipairs(Factions[key].OwnedProvinces) do
			if (WorldMapProvinces[province_key].Coastal) then
				for second_province_key, second_province_value in pairs(WorldMapProvinces) do
					if (WorldMapProvinces[second_province_key].Coastal and (GetProvinceOwner(WorldMapProvinces[second_province_key].Name) == "" or GetFactionDiplomacyState(Factions[key].Civilization, Factions[key].Name, GetFactionFromName(GetProvinceOwner(WorldMapProvinces[second_province_key].Name)).Civilization, GetProvinceOwner(WorldMapProvinces[second_province_key].Name)) == "war") and ProvinceHasSecondaryBorderThroughWaterWith(WorldMapProvinces[province_key], WorldMapProvinces[second_province_key])) then
						table.insert(Factions[key].DisembarkmentProvinces, second_province_key)
					end
				end
			end
		end
	end
end

function GetTileProvince(x, y)
	if (x >= 0 and x < GetWorldMapWidth() and y >= 0 and y < GetWorldMapHeight()) then
		local tile_province = GetProvinceFromName(GetWorldMapTileProvinceName(x, y))
		return tile_province
	else
		return nil
	end
end

function GetFactionFromName(faction)
	if (faction ~= "") then
		return Factions[string.gsub(faction, "-", "_")]
	else
		return nil
	end
end

function GetFactionKeyFromName(faction)
	if (Factions[string.gsub(faction, "-", "_")] ~= nil) then
		return string.gsub(faction, "-", "_")
	else
		return nil
	end
end

function GetProvinceFromName(province_name)
	for key, value in pairs(WorldMapProvinces) do
		if (WorldMapProvinces[key].Name == province_name) then
			return WorldMapProvinces[key]
		end
	end
	for key, value in pairs(WorldMapWaterProvinces) do
		if (WorldMapWaterProvinces[key].Name == province_name) then
			return WorldMapWaterProvinces[key]
		end
	end
	return nil
end

function GetProvinceKeyFromName(province_name)
	for key, value in pairs(WorldMapProvinces) do
		if (WorldMapProvinces[key].Name == province_name) then
			return key
		end
	end
	for key, value in pairs(WorldMapWaterProvinces) do
		if (WorldMapWaterProvinces[key].Name == province_name) then
			return key
		end
	end
	return nil
end

function GetFactionProvinceCount(faction)
	if (faction ~= nil) then
		return table.getn(faction.OwnedProvinces)
	else
		return 0
	end
end

function GetFactionProvinceCountPreGame(faction)
	local province_count = 0
	for key, value in pairs(WorldMapProvinces) do
		if (GetProvinceOwner(WorldMapProvinces[key].Name) == faction) then
			province_count = province_count + 1
		end
	end
	return province_count
end

function GetFactionUnitTypeCount(faction, unit_type, include_under_construction)
	local unit_count = 0
	for province_i, key in ipairs(faction.OwnedProvinces) do
		unit_count = unit_count + GetProvinceUnitQuantity(WorldMapProvinces[key].Name, unit_type)
		if (include_under_construction) then
			unit_count = unit_count + GetProvinceUnderConstructionUnitQuantity(WorldMapProvinces[key].Name, unit_type)
			unit_count = unit_count + GetProvinceMovingUnitQuantity(WorldMapProvinces[key].Name, unit_type)
		end
	end
	return unit_count
end

function GetFactionBuildingTypeCount(faction, building_type)
	local building_count = 0
	for province_i, key in ipairs(faction.OwnedProvinces) do
		if (ProvinceHasBuildingClass(WorldMapProvinces[key].Name, building_type)) then
			building_count = building_count + 1
		end
	end
	return building_count
end

function FactionHasTechnologyType(faction, technology_type)
	for i, unitName in ipairs(Units) do
		if (string.find(unitName, "upgrade-") ~= nil) then
			if (GetUpgradeData(unitName, "Class") == technology_type and GetFactionTechnology(faction.Civilization, faction.Name, unitName)) then
				return true
			end
		end
	end
	return false
end

function FactionHasBorderWith(faction, faction_to)
	for province_i, key in ipairs(faction.OwnedProvinces) do
		if (ProvinceBordersFaction(WorldMapProvinces[key].Name, faction_to.Civilization, faction_to.Name)) then
			return true
		end
	end
	return false
end

function FactionBordersCulture(faction, civilization)
	for province_i, key in ipairs(faction.OwnedProvinces) do
		if (ProvinceBordersCulture(WorldMapProvinces[key], civilization)) then
			return true
		end
	end
	return false
end

function FactionHasSecondaryBorderWith(faction, faction_to)
	for province_i, key in ipairs(faction.OwnedProvinces) do
		for i=1,table.getn(WorldMapProvinces[key].BorderProvinces) do
			if (WorldMapProvinces[WorldMapProvinces[key].BorderProvinces[i]] ~= nil) then
				for j=1,table.getn(WorldMapProvinces[WorldMapProvinces[key].BorderProvinces[i]].BorderProvinces) do
					if (WorldMapProvinces[WorldMapProvinces[WorldMapProvinces[key].BorderProvinces[i]].BorderProvinces[j]] ~= nil and GetProvinceOwner(WorldMapProvinces[WorldMapProvinces[WorldMapProvinces[key].BorderProvinces[i]].BorderProvinces[j]].Name) == faction_to.Name) then
						return true
					end
				end
			elseif (WorldMapWaterProvinces[WorldMapProvinces[key].BorderProvinces[i]] ~= nil) then
				for j=1,table.getn(WorldMapWaterProvinces[WorldMapProvinces[key].BorderProvinces[i]].BorderProvinces) do
					if (WorldMapProvinces[WorldMapWaterProvinces[WorldMapProvinces[key].BorderProvinces[i]].BorderProvinces[j]] ~= nil and GetProvinceOwner(WorldMapProvinces[WorldMapWaterProvinces[WorldMapProvinces[key].BorderProvinces[i]].BorderProvinces[j]].Name) == faction_to.Name) then
						return true
					end
				end
			end
		end
	end
	return false
end

function FactionHasSecondaryBorderThroughWaterWith(faction, faction_to)
	for province_i, key in ipairs(faction.OwnedProvinces) do
		for i=1,table.getn(WorldMapProvinces[key].BorderProvinces) do
			if (WorldMapWaterProvinces[WorldMapProvinces[key].BorderProvinces[i]] ~= nil) then
				for j=1,table.getn(WorldMapWaterProvinces[WorldMapProvinces[key].BorderProvinces[i]].BorderProvinces) do
					if (WorldMapProvinces[WorldMapWaterProvinces[WorldMapProvinces[key].BorderProvinces[i]].BorderProvinces[j]] ~= nil and GetProvinceOwner(WorldMapProvinces[WorldMapWaterProvinces[WorldMapProvinces[key].BorderProvinces[i]].BorderProvinces[j]].Name) == faction_to.Name) then
						return true
					end
				end
			end
		end
	end
	return false
end

function ProvinceHasBorderWith(province, province_to)
	return ProvinceBordersProvince(province.Name, province_to.Name)
end

function ProvinceHasSecondaryBorderThroughWaterWith(province, province_to)
	for i=1,table.getn(province.BorderProvinces) do
		if (WorldMapWaterProvinces[province.BorderProvinces[i]] ~= nil) then
			for j=1,table.getn(WorldMapWaterProvinces[province.BorderProvinces[i]].BorderProvinces) do
				if (WorldMapProvinces[WorldMapWaterProvinces[province.BorderProvinces[i]].BorderProvinces[j]] == province_to) then
					return true
				end
			end
		end
	end
	return false
end

function GetProvinceSecondaryBorderProvincesThroughWater(province)
	local secondary_border_provinces_through_water = {}
	for i=1,table.getn(province.BorderProvinces) do
		if (WorldMapWaterProvinces[province.BorderProvinces[i]] ~= nil) then
			for j=1,table.getn(WorldMapWaterProvinces[province.BorderProvinces[i]].BorderProvinces) do
				if (GetArrayIncludes(province.BorderProvinces, WorldMapWaterProvinces[province.BorderProvinces[i]].BorderProvinces[j]) == false) then
					table.insert(secondary_border_provinces_through_water, WorldMapWaterProvinces[province.BorderProvinces[i]].BorderProvinces[j])
				end
			end
		end
	end
	return secondary_border_provinces_through_water
end

function ProvinceBordersCulture(province, civilization)
	for i=1,table.getn(province.BorderProvinces) do
		if (WorldMapProvinces[province.BorderProvinces[i]] ~= nil and GetProvinceCivilization(WorldMapProvinces[province.BorderProvinces[i]].Name) == civilization) then
			return true
		elseif (WorldMapWaterProvinces[province.BorderProvinces[i]] ~= nil) then -- also check secondary borders through water, so that culture can spread to islands
			for j=1,table.getn(WorldMapWaterProvinces[province.BorderProvinces[i]].BorderProvinces) do
				if (WorldMapProvinces[WorldMapWaterProvinces[province.BorderProvinces[i]].BorderProvinces[j]] ~= nil and GetProvinceCivilization(WorldMapProvinces[WorldMapWaterProvinces[province.BorderProvinces[i]].BorderProvinces[j]].Name) == civilization) then
					return true
				end
			end
		end
	end

	return false
end

function FactionHasCoast(faction)
	for province_i, key in ipairs(faction.OwnedProvinces) do
		if (WorldMapProvinces[key].Coastal) then
			return true
		end
	end
	return false
end

function FactionHasCulture(faction, civilization)
	for province_i, key in ipairs(faction.OwnedProvinces) do
		if (GetProvinceCivilization(WorldMapProvinces[key].Name) == civilization) then
			return true
		end
	end
	return false
end

function RunGrandStrategyGameMenu()
	GrandStrategyGamePaused = true
	local menu = WarGameMenu(panel(1))

	local function RunEndGrandStrategyGameMenu()
		local end_game_menu = WarGameMenu(panel(1))

		local function RunGrandStrategyQuitToMenuConfirmMenu()
			local quit_to_menu_menu = WarGameMenu(panel(1))

			quit_to_menu_menu:addLabel("Are you sure?", 128, 11)
			quit_to_menu_menu:addFullButton("~!Yes", "y", 16, 11 + (36 * 2) + 29,
				function()
					menu:stop()
					end_game_menu:stop()
					quit_to_menu_menu:stop()
					StopMusic();
					ClearGrandStrategyUIVariables()
					GrandStrategyMenu:stop()
					ClearGrandStrategyVariables()
					SetPlayerData(GetThisPlayer(), "RaceName", "gnome")
				end)
			quit_to_menu_menu:addFullButton("~!No", "n", 16, 11 + (36 * 3) + 29,
				function() quit_to_menu_menu:stop() end)

			quit_to_menu_menu:run()
		end
		
		end_game_menu:addLabel("End Game", 128, 11)
	--	local b = end_game_menu:addFullButton("~!Restart Scenario", "r", 16, 40 + (36 * 0),
	--		function() RunRestartConfirmMenu() end)
	--	if (IsNetworkGame()) then
	--		b:setEnabled(false)
	--	end
	--	end_game_menu:addFullButton("~!Surrender", "s", 16, 40 + (36 * 1),
	--		function() RunSurrenderConfirmMenu() end)
		end_game_menu:addFullButton("~!Quit Game", "q", 16, 40 + (36 * 1),
			function() RunGrandStrategyQuitToMenuConfirmMenu() end)
		end_game_menu:addFullButton("E~!xit to Desktop", "x", 16, 40 + (36 * 2),
			function() RunExitConfirmMenu() end)
		end_game_menu:addFullButton("Previous Menu (~<Esc~>)", "escape", 16, 248,
			function() end_game_menu:stop() end)

		end_game_menu:run()
	end
	
	menu:addLabel("Game Menu", 128, 11)

	menu:addFullButton("Save (~<F11~>)", "f11", 16, 40 + 36*0,
		function() menu:stop(); RunGrandStrategySaveMenu() end)
	menu:addFullButton("Load (~<F12~>)", "f12", 16, 40 + 36*1,
		function() menu:stop(); RunGrandStrategyLoadGameMenu() end)
	menu:addFullButton("Encyclopedia (~<F5~>)", "f5", 16, 40 + 36*2,
		function()
			RunEncyclopediaMenu()
			menu:stop()
			ClearGrandStrategyUIVariables()
			GrandStrategyMenu:stop();
			RunGrandStrategyGame()
		end)
--	menu:addFullButton("Help (~<F1~>)", "f1", 16, 40 + 36*2,
--		function() RunHelpMenu() end)
--	menu:addFullButton("~!Objectives", "o", 16, 40 + 36*3,
--		function() RunObjectivesMenu() end)
	menu:addFullButton("~!End Game", "e", 16, 40 + 36*3,
		function() RunEndGrandStrategyGameMenu() end)
	menu:addFullButton("Return to Game (~<Esc~>)", "escape", 16, 288 - 40,
		function()
			menu:stop()
			GrandStrategyGamePaused = false
			ClearGrandStrategyUIVariables()
			GrandStrategyMenu:stop();
			RunGrandStrategyGame()
		end)

	menu:run()
end

function RunGrandStrategySaveMenu()
	GrandStrategyGamePaused = true
	local menu = WarGameMenu(panel(3))
	menu:resize(384, 256)

	menu:addLabel("Save Game", 384 / 2, 11)

	local default_name
	if (GrandStrategyFaction ~= nil) then
		local year_ending = ""
		if (GrandStrategyYear < 0) then
			year_ending = "BC"
		else
			year_ending = "AD"
		end
		default_name = string.gsub(GrandStrategyFaction.Name, "-", "_") .. "_" .. math.abs(GrandStrategyYear) .. "_" .. year_ending
		default_name = string.lower(default_name)
	end
	
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
			GrandStrategyGamePaused = false

			GrandStrategyGameSave(name)
    		menu:stop()
			ClearGrandStrategyUIVariables()
			GrandStrategyMenu:stop();
			RunGrandStrategyGame()
		end)

	menu:addHalfButton(_("~!Cancel"), "c", 384 - ((384 - 300 - 18) / 2) - 106, 256 - 16 - 27,
		function()
			menu:stop()
			GrandStrategyGamePaused = false
			ClearGrandStrategyUIVariables()
			GrandStrategyMenu:stop();
			RunGrandStrategyGame()
		end)

	menu:run()
end

function RunGrandStrategyLoadGameMenu()
	GrandStrategyGamePaused = true
	local menu = WarGameMenu(panel(3))
	menu:resize(384, 256)
	menu:setDrawMenusUnder(true)

	local saved_games_list = {}
	for i, key in ipairs(ListFilesInDirectory("save/grand_strategy/", true)) do
		if (key ~= "preferences.lua") then
			table.insert(saved_games_list, string.sub(key, 0, -5))
		end
	end
	
	menu:addLabel(_("Load Game"), 384 / 2, 11)
	local saved_games = menu:addDropDown(saved_games_list, 384 / 2 - 152 / 2, 11 + (36 * 1.5),
		function(dd) end)
	saved_games:setSize(152, 20)

	menu:addHalfButton(_("~!Load"), "l", (384 - 300 - 18) / 2, 256 - 16 - 27,
		function()
			if (saved_games:getSelected() < 0) then
				return
			end
			CleanPlayers() -- for safety
			SetCurrentCustomHero("")
			CleanGrandStrategyGame()
			
			GrandStrategyGameLoading = true

			GrandStrategy = true
			GrandStrategyGamePaused = false
			GameResult = GameNoResult
			Load("save/grand_strategy/" .. saved_games_list[saved_games:getSelected() + 1] .. ".lua")
			GrandStrategyYear = wyr[saved_games_list[saved_games:getSelected() + 1]].SavedGrandStrategyYear
			GrandStrategyMonth = wyr[saved_games_list[saved_games:getSelected() + 1]].SavedGrandStrategyMonth
			for x=0,GetWorldMapWidth() - 1 do
				for y=0,GetWorldMapHeight() - 1 do
					if (GetWorldMapTileTerrain(x, y) ~= "") then
						CalculateWorldMapTileGraphicTile(x, y)
					end
				end
			end
			
			Factions = wyr[saved_games_list[saved_games:getSelected() + 1]].SavedFactions
			GrandStrategyFaction = GetFactionFromName(wyr[saved_games_list[saved_games:getSelected() + 1]].SavedGrandStrategyFactionName)
			SetPlayerFaction(GetFactionFromName(wyr[saved_games_list[saved_games:getSelected() + 1]].SavedGrandStrategyFactionName).Civilization, GetFactionFromName(wyr[saved_games_list[saved_games:getSelected() + 1]].SavedGrandStrategyFactionName).Name)
			
			StopMusic()
			PlayMusicByGroupAndFactionRandom("map", GrandStrategyFaction.Civilization, GrandStrategyFaction.Name)
			
			WorldMapProvinces = wyr[saved_games_list[saved_games:getSelected() + 1]].SavedWorldMapProvinces
			
			WorldMapWaterProvinces = wyr[saved_games_list[saved_games:getSelected() + 1]].SavedWorldMapWaterProvinces
			
			GrandStrategyCommodities = wyr[saved_games_list[saved_games:getSelected() + 1]].SavedGrandStrategyCommodities
			MercenaryGroups = wyr[saved_games_list[saved_games:getSelected() + 1]].SavedMercenaryGroups
			SavedGrandStrategyEvents = wyr[saved_games_list[saved_games:getSelected() + 1]].SavedGrandStrategyEvents
			LoadEvents("Save")
			SavedGrandStrategyEvents = nil
			CalculateProvinceBorders()
			CalculateProvinceBorderTiles()
			
			SetPlayerData(GetThisPlayer(), "RaceName", GrandStrategyFaction.Civilization)

			for key, value in pairs(WorldMapProvinces) do -- center map on a province of the loaded player's faction
				if (GrandStrategyFaction ~= nil and GetProvinceOwner(WorldMapProvinces[key].Name) == GrandStrategyFaction.Name) then
					CenterGrandStrategyMapOnTile(WorldMapProvinces[key].SettlementLocation[1], WorldMapProvinces[key].SettlementLocation[2])
				end
			end
			
			wyr[saved_games_list[saved_games:getSelected() + 1]] = nil
			
			InitializeGrandStrategyMinimap()
			
			FinalizeGrandStrategyInitialization()
			
			GrandStrategyGameLoading = false
			GrandStrategyGameInitialized = true
			
			menu:stop()
			if (GrandStrategyMenu) then
				ClearGrandStrategyUIVariables()
				GrandStrategyMenu:stop();
			end
			InitGameSettings() -- initialize scenario variables (i.e. No Randomness)
			SetCurrentCustomHero("")
			RunGrandStrategyGame()
		end)
--	menu:addHalfButton("Delete", "", 384 - ((384 - 300 - 18) / 2) - 212, 256 - 16 - 27,
--		function()
--			if (saved_games:getSelected() < 0) then
--				return
--			end
--			wyr.preferences.GrandStrategySaveGames[saved_games_list[saved_games:getSelected() + 1]] = nil
--			SavePreferences()
--			local saved_games_list = {}
--			for key, value in pairs(wyr.preferences.GrandStrategySaveGames) do
--				table.insert(saved_games_list, key)
--			end
--			saved_games:setList(saved_games_list)
--			saved_games:setSize(152, 20)
--		end)
	menu:addHalfButton(_("~!Cancel"), "c", 384 - ((384 - 300 - 18) / 2) - 106, 256 - 16 - 27,
		function()
			menu:stop()
			if (GrandStrategy) then
				GrandStrategyGamePaused = false
				ClearGrandStrategyUIVariables()
				GrandStrategyMenu:stop();
				RunGrandStrategyGame()
			end
		end)

	menu:run()
end

-- draw UI
function AddUIElement(file, x, y)
	local ui_element = CGraphic:New(file)
	ui_element:Load()
	UIElements[table.getn(UIElements) + 1] = ImageWidget(ui_element)
	GrandStrategyMenu:add(UIElements[table.getn(UIElements)], x, y)
	return UIElements[table.getn(UIElements)]
end

function AddGrandStrategyLabel(text, x, y, font, center, multiline)
	if (font == nil) then font = Fonts["large"] end
	if (multiline) then
		GrandStrategyLabels[table.getn(GrandStrategyLabels) + 1] = MultiLineLabel(text)
		GrandStrategyLabels[table.getn(GrandStrategyLabels)]:setFont(font)
		GrandStrategyLabels[table.getn(GrandStrategyLabels)]:setLineWidth(168)
		GrandStrategyLabels[table.getn(GrandStrategyLabels)]:setSize(168, 42)
		if (center == nil or center == true) then -- center text by default
			GrandStrategyLabels[table.getn(GrandStrategyLabels)]:setAlignment(MultiLineLabel.CENTER)
		end

	else
		GrandStrategyLabels[table.getn(GrandStrategyLabels) + 1] = Label(text)
		GrandStrategyLabels[table.getn(GrandStrategyLabels)]:setFont(font)
		GrandStrategyLabels[table.getn(GrandStrategyLabels)]:adjustSize()
		if (center == nil or center == true) then -- center text by default
			x = math.max((x - GrandStrategyLabels[table.getn(GrandStrategyLabels)]:getWidth() / 2), 1)
		end
	end
	GrandStrategyMenu:add(GrandStrategyLabels[table.getn(GrandStrategyLabels)], x, y)

	return GrandStrategyLabels[table.getn(GrandStrategyLabels)]
end

function AddGrandStrategyImageButton(caption, hotkey, x, y, callback)
	UIElements[table.getn(UIElements) + 1] = ImageButton(caption)
	if (hotkey ~= "") then
		UIElements[table.getn(UIElements)]:setHotKey(hotkey)
	end
	UIElements[table.getn(UIElements)]:setActionCallback(
		function()
			PlaySound("click")
			callback()
		end
	)
	GrandStrategyMenu:add(UIElements[table.getn(UIElements)], x, y)
	UIElements[table.getn(UIElements)]:setBorderSize(0) -- Andrettin: make buttons not have the borders they previously had
	return UIElements[table.getn(UIElements)]
end

function AddGrandStrategyThinImageButton(caption, hotkey, x, y, callback, tooltip)
	local b = AddGrandStrategyImageButton(caption, hotkey, x, y, callback)
	b:setBaseColor(Color(0,0,0,0))
	b:setForegroundColor(Color(0,0,0,0))
	b:setBackgroundColor(Color(0,0,0,0))
	local g_btn = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/button-thinest-medium-normal.png")
	local g_btp = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/button-thinest-medium-pressed.png")
	g_btn:Load()
	g_btp:Load()
	b:setNormalImage(g_btn)
	b:setPressedImage(g_btp)
	b:setSize(99, 13)
	b:setFont(Fonts["game"])
	if (tooltip) then
		b:setTooltip(tooltip)
	end
	return b
end
				
function AddGrandStrategyBuildingButton(x, y, unit_type)
	local b
	local unit_icon
	
	local old_unit_type = unit_type
	
	if ((GetProvinceCivilization(SelectedProvince.Name) == "teuton" or GetCivilizationData(GetProvinceCivilization(SelectedProvince.Name), "ParentCivilization") == "teuton") and GetUnitTypeData(unit_type, "Class") == "town-hall" and FactionHasTechnologyType(GrandStrategyFaction, "masonry") == false) then
		unit_type = "unit-germanic-town-hall"
	elseif ((GetProvinceCivilization(SelectedProvince.Name) == "teuton" or GetCivilizationData(GetProvinceCivilization(SelectedProvince.Name), "ParentCivilization") == "teuton") and GetUnitTypeData(unit_type, "Class") == "barracks" and FactionHasTechnologyType(GrandStrategyFaction, "masonry") == false) then
		unit_type = "unit-germanic-barracks"
	elseif ((GetProvinceCivilization(SelectedProvince.Name) == "teuton" or GetCivilizationData(GetProvinceCivilization(SelectedProvince.Name), "ParentCivilization") == "teuton") and GetUnitTypeData(unit_type, "Class") == "lumber-mill" and FactionHasTechnologyType(GrandStrategyFaction, "masonry") == false) then -- special case for the teuton lumber mill
		unit_type = "unit-germanic-carpenters-shop"
	elseif ((GetProvinceCivilization(SelectedProvince.Name) == "teuton" or GetCivilizationData(GetProvinceCivilization(SelectedProvince.Name), "ParentCivilization") == "teuton") and GetUnitTypeData(unit_type, "Class") == "smithy" and FactionHasTechnologyType(GrandStrategyFaction, "masonry") == false) then
		unit_type = "unit-germanic-smithy"
	end
	
	b = PlayerColorImageButton("", GetFactionData(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, "Color"))
	if (GetProvinceSettlementBuilding(SelectedProvince.Name, old_unit_type) == false) then -- if not built, make icon gray
		unit_icon = CIcon:Get(GetUnitTypeData(unit_type, "Icon")).GScale
	else
		unit_icon = CIcon:Get(GetUnitTypeData(unit_type, "Icon")).G
	end
	
	local unit_type_name = GetUnitTypeName(unit_type)
	
	unit_type = old_unit_type
	
	UIElements[table.getn(UIElements) + 1] = b
	UIElements[table.getn(UIElements)]:setActionCallback(
		function()
			PlaySound("click")
			if (GetProvinceCurrentConstruction(SelectedProvince.Name) ~= unit_type and GetProvinceSettlementBuilding(SelectedProvince.Name, unit_type) == false) then
				BuildStructure(SelectedProvince, unit_type)
			elseif (GetProvinceSettlementBuilding(SelectedProvince.Name, unit_type)) then
				UseBuilding(SelectedProvince, unit_type)
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

	local building_cost_tooltip = ""
	if (GetFactionUnitCost(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, unit_type, "copper") > 0) then
		if (building_cost_tooltip == "") then
			building_cost_tooltip = "Costs "
		else
			building_cost_tooltip = building_cost_tooltip .. ", "
		end
		building_cost_tooltip = building_cost_tooltip .. GetFactionUnitCost(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, unit_type, "copper") .. " Copper"
	end
	if (GetFactionUnitCost(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, unit_type, "lumber") > 0) then
		if (building_cost_tooltip == "") then
			building_cost_tooltip = "Costs "
		else
			building_cost_tooltip = building_cost_tooltip .. ", "
		end
		building_cost_tooltip = building_cost_tooltip .. GetFactionUnitCost(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, unit_type, "lumber") .. " Lumber"
	end
	if (GetFactionUnitCost(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, unit_type, "stone") > 0) then
		if (building_cost_tooltip == "") then
			building_cost_tooltip = "Costs "
		else
			building_cost_tooltip = building_cost_tooltip .. ", "
		end
		building_cost_tooltip = building_cost_tooltip .. GetFactionUnitCost(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, unit_type, "stone") .. " Stone"
	end
	
	local building_function_tooltip = ""
	if (GetUnitTypeData(unit_type, "Class") == "town-hall") then
		building_function_tooltip = "More province information and trading of resources\nAllows resource gathering in the province\nIncreases research output"
	elseif (GetUnitTypeData(unit_type, "Class") == "stronghold") then
		building_function_tooltip = "More province information and trading of resources\nProvides defensive towers"
	elseif (GetUnitTypeData(unit_type, "Class") == "barracks") then
		building_function_tooltip = "Recruits units"
	elseif (GetUnitTypeData(unit_type, "Class") == "lumber-mill") then
		building_function_tooltip = "Researches projectile upgrades\nIncreases lumber production efficiency by 25%\nIncreases research output"
	elseif (GetUnitTypeData(unit_type, "Class") == "smithy") then
		building_function_tooltip = "Researches melee weapon, shield and siege weapon upgrades\nIncreases research output"
	elseif (GetUnitTypeData(unit_type, "Class") == "stables") then
		building_function_tooltip = "Allows cavalry units to be trained"
	elseif (GetUnitTypeData(unit_type, "Class") == "temple") then
		building_function_tooltip = "Increases research output"
	elseif (GetUnitTypeData(unit_type, "Class") == "dock") then
		building_function_tooltip = "Allows fishing and attacking nearby coasts\nConnects this province's settlement to your capital"
	elseif (GetUnitTypeData(unit_type, "Class") == "mercenary-camp") then
		building_function_tooltip = "Hires mercenaries and thieves"
	end
	if (GetProvinceSettlementBuilding(SelectedProvince.Name, unit_type)) then
		UIElements[table.getn(UIElements)]:setTooltip("Use " .. unit_type_name .. "\n" .. building_function_tooltip)
	elseif (GetProvinceCurrentConstruction(SelectedProvince.Name) == unit_type) then
		UIElements[table.getn(UIElements)]:setTooltip(unit_type_name .. " in " .. GetProvinceName(SelectedProvince) .. " under construction")
	else
		UIElements[table.getn(UIElements)]:setTooltip("Build " .. unit_type_name .. " in " .. GetProvinceName(SelectedProvince) .. "\n" .. building_cost_tooltip .. "\n" .. building_function_tooltip)
	end
	UIElements[table.getn(UIElements)]:setFrameImage(Preference.IconFrameG)
	UIElements[table.getn(UIElements)]:setPressedFrameImage(Preference.PressedIconFrameG)
	
	return UIElements[table.getn(UIElements)]
end

function AddGrandStrategyUnitButton(x, y, unit_type)
	UIElements[table.getn(UIElements) + 1] = PlayerColorImageButton("", GetFactionData(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, "Color"))
	UIElements[table.getn(UIElements)]:setActionCallback(
		function()
			PlaySound("click")
			DrawGrandStrategyInterface()
		end
	)
	GrandStrategyMenu:add(UIElements[table.getn(UIElements)], x, y)
	UIElements[table.getn(UIElements)]:setBorderSize(0) -- Andrettin: make buttons not have the borders they previously had

--	UIElements[table.getn(UIElements)]:setBaseColor(Color(0,0,0,0))
--	UIElements[table.getn(UIElements)]:setForegroundColor(Color(0,0,0,0))
--	UIElements[table.getn(UIElements)]:setBackgroundColor(Color(0,0,0,0))
	local unit_icon = CIcon:Get(GetUnitTypeData(unit_type, "Icon")).G
	unit_icon:Load()
	UIElements[table.getn(UIElements)]:setNormalImage(unit_icon)
	UIElements[table.getn(UIElements)]:setPressedImage(unit_icon)
	UIElements[table.getn(UIElements)]:setDisabledImage(unit_icon)
	UIElements[table.getn(UIElements)]:setSize(46, 38)
	UIElements[table.getn(UIElements)]:setFont(Fonts["game"])

	if (GetUnitTypeData(unit_type, "Class") == "worker") then
		UIElements[table.getn(UIElements)]:setTooltip("You have " .. GetProvinceUnitQuantity(SelectedProvince.Name, unit_type) .. " " .. GetUnitTypeName(unit_type) .. " units in " .. GetProvinceName(SelectedProvince))
	else
		UIElements[table.getn(UIElements)]:setTooltip("You have " .. GetProvinceUnitQuantity(SelectedProvince.Name, unit_type) .. " " .. GetUnitTypeName(unit_type) .. " regiments in " .. GetProvinceName(SelectedProvince))
	end
	
	return UIElements[table.getn(UIElements)]
end

function AddGrandStrategyTechnologyButton(x, y, unit_type)
	local b
	local unit_icon
	
	b = PlayerColorImageButton("", GetFactionData(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, "Color"))

	if (GetFactionCurrentResearch(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name) == unit_type) then -- if already being researched, make icon gray
		unit_icon = CUpgrade:Get(unit_type).Icon.GScale
	else
		unit_icon = CUpgrade:Get(unit_type).Icon.G
	end
	UIElements[table.getn(UIElements) + 1] = b
	UIElements[table.getn(UIElements)]:setActionCallback(
		function()
			PlaySound("click")
			if (GetFactionCurrentResearch(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name) ~= unit_type and GetFactionTechnology(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, unit_type) == false) then
				ResearchTechnology(SelectedProvince, unit_type)
			elseif (GetFactionCurrentResearch(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name) == unit_type) then
				CancelResearchTechnology(SelectedProvince, unit_type)
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

	local cost_tooltip = ""
	if (CUpgrade:Get(unit_type).GrandStrategyCosts[7] > 0) then -- research cost
		if (cost_tooltip == "") then
			cost_tooltip = "Costs "
		else
			cost_tooltip = cost_tooltip .. ", "
		end
		cost_tooltip = cost_tooltip .. CUpgrade:Get(unit_type).GrandStrategyCosts[7] .. " Research"
	end
	if (CUpgrade:Get(unit_type).GrandStrategyCosts[1] > 0) then -- copper cost
		if (cost_tooltip == "") then
			cost_tooltip = "Costs "
		else
			cost_tooltip = cost_tooltip .. ", "
		end
		cost_tooltip = cost_tooltip .. CUpgrade:Get(unit_type).GrandStrategyCosts[1] .. " Copper"
	end
	if (CUpgrade:Get(unit_type).GrandStrategyCosts[2] > 0) then -- lumber cost
		if (cost_tooltip == "") then
			cost_tooltip = "Costs "
		else
			cost_tooltip = cost_tooltip .. ", "
		end
		cost_tooltip = cost_tooltip .. CUpgrade:Get(unit_type).GrandStrategyCosts[2] .. " Lumber"
	end
	if (CUpgrade:Get(unit_type).GrandStrategyCosts[5] > 0) then -- stone cost
		if (cost_tooltip == "") then
			cost_tooltip = "Costs "
		else
			cost_tooltip = cost_tooltip .. ", "
		end
		cost_tooltip = cost_tooltip .. CUpgrade:Get(unit_type).GrandStrategyCosts[5] .. " Stone"
	end
	if (CUpgrade:Get(unit_type).GrandStrategyCosts[8] > 0) then -- prestige cost
		if (cost_tooltip == "") then
			cost_tooltip = "Costs "
		else
			cost_tooltip = cost_tooltip .. ", "
		end
		cost_tooltip = cost_tooltip .. CUpgrade:Get(unit_type).GrandStrategyCosts[8] .. " prestige"
	end

	if (GetFactionCurrentResearch(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name) == unit_type) then
		UIElements[table.getn(UIElements)]:setTooltip(CUpgrade:Get(unit_type).Name .. " being researched")
	else
		UIElements[table.getn(UIElements)]:setTooltip("Research " .. CUpgrade:Get(unit_type).Name .. "\n" .. cost_tooltip .. "\n" .. GetUpgradeEffectsString(unit_type, true, true))
	end
	UIElements[table.getn(UIElements)]:setFrameImage(Preference.CommandButtonFrameG)
	UIElements[table.getn(UIElements)]:setPressedFrameImage(Preference.CommandButtonFrameG)
	
	return UIElements[table.getn(UIElements)]
end

function AddGrandStrategyHeroButton(x, y, hero_name)
	local b
	local unit_icon
	
	b = PlayerColorImageButton("", GetFactionData(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, "Color"))
	if (SelectedHero == hero_name) then -- if hero is already selected, make icon gray
		unit_icon = CIcon:Get(GetGrandStrategyHeroIcon(hero_name)).GScale
	else
		unit_icon = CIcon:Get(GetGrandStrategyHeroIcon(hero_name)).G
	end
	UIElements[table.getn(UIElements) + 1] = b
	UIElements[table.getn(UIElements)]:setActionCallback(
		function()
			PlaySound("click")
			if (SelectedHero == hero_name) then
				SelectedHero = ""
			else
				SelectedHero = hero_name
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

	if (SelectedHero == hero_name) then
		UIElements[table.getn(UIElements)]:setTooltip("Unselect " .. GetGrandStrategyHeroBestDisplayTitle(hero_name) .. " " .. hero_name)
	else
		UIElements[table.getn(UIElements)]:setTooltip("Select " .. GetGrandStrategyHeroBestDisplayTitle(hero_name) .. " " .. hero_name)
	end
	UIElements[table.getn(UIElements)]:setFrameImage(Preference.IconFrameG)
	UIElements[table.getn(UIElements)]:setPressedFrameImage(Preference.PressedIconFrameG)
	
	return UIElements[table.getn(UIElements)]
end

function AddGrandStrategyMinisterButton(x, y, hero_name)
	UIElements[table.getn(UIElements) + 1] = PlayerColorImageButton("", GetFactionData(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, "Color"))
	UIElements[table.getn(UIElements)]:setActionCallback(
		function()
			PlaySound("click")
			DrawGrandStrategyInterface()
		end
	)
	GrandStrategyMenu:add(UIElements[table.getn(UIElements)], x, y)
	UIElements[table.getn(UIElements)]:setBorderSize(0) -- Andrettin: make buttons not have the borders they previously had

	local unit_icon = CIcon:Get(GetGrandStrategyHeroIcon(hero_name)).G
--	UIElements[table.getn(UIElements)]:setBaseColor(Color(0,0,0,0))
--	UIElements[table.getn(UIElements)]:setForegroundColor(Color(0,0,0,0))
--	UIElements[table.getn(UIElements)]:setBackgroundColor(Color(0,0,0,0))
	UIElements[table.getn(UIElements)]:setNormalImage(unit_icon)
	UIElements[table.getn(UIElements)]:setPressedImage(unit_icon)
	UIElements[table.getn(UIElements)]:setDisabledImage(unit_icon)
	UIElements[table.getn(UIElements)]:setSize(46, 38)
	UIElements[table.getn(UIElements)]:setFont(Fonts["game"])

	UIElements[table.getn(UIElements)]:setTooltip(GetGrandStrategyHeroTooltip(hero_name))
	
	return UIElements[table.getn(UIElements)]
end

function AddGrandStrategyMercenaryButton(x, y, unit_type)
	local b
	local unit_icon
	
	b = PlayerColorImageButton("", GetFactionData(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, "Color"))
	if (GetProvinceUnderConstructionUnitQuantity(SelectedProvince.Name, unit_type) > 0) then -- if mercenary group is already being hired, make icon gray
		unit_icon = CIcon:Get(GetUnitTypeData(unit_type, "Icon")).GScale
	else
		unit_icon = CIcon:Get(GetUnitTypeData(unit_type, "Icon")).G
	end
	UIElements[table.getn(UIElements) + 1] = b
	UIElements[table.getn(UIElements)]:setActionCallback(
		function()
			PlaySound("click")
			if (GetProvinceUnderConstructionUnitQuantity(SelectedProvince.Name, unit_type) < 1) then
				HireMercenary(SelectedProvince, unit_type)
			else
				CancelHireMercenary(SelectedProvince, unit_type)
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

	local cost_tooltip = ""
	if (GetUnitTypeData(unit_type, "Costs", "copper") > 0) then
		if (cost_tooltip == "") then
			cost_tooltip = "Costs "
		else
			cost_tooltip = cost_tooltip .. ", "
		end
		cost_tooltip = cost_tooltip .. GetUnitTypeData(unit_type, "Costs", "copper") * GetUnitTypeData(unit_type, "TrainQuantity") .. " Copper"
	end
	if (GetUnitTypeData(unit_type, "Costs", "lumber") > 0) then
		if (cost_tooltip == "") then
			cost_tooltip = "Costs "
		else
			cost_tooltip = cost_tooltip .. ", "
		end
		cost_tooltip = cost_tooltip .. GetUnitTypeData(unit_type, "Costs", "lumber") * GetUnitTypeData(unit_type, "TrainQuantity") .. " Lumber"
	end
	if (GetUnitTypeData(unit_type, "Costs", "stone") > 0) then
		if (cost_tooltip == "") then
			cost_tooltip = "Costs "
		else
			cost_tooltip = cost_tooltip .. ", "
		end
		cost_tooltip = cost_tooltip .. GetUnitTypeData(unit_type, "Costs", "stone") * GetUnitTypeData(unit_type, "TrainQuantity") .. " Stone"
	end
							
	if (GetUnitTypeData(unit_type, "Upkeep") > 0) then
		cost_tooltip = cost_tooltip .. "\n" .. GetUnitTypeData(unit_type, "Upkeep") * GetUnitTypeData(unit_type, "TrainQuantity") .. " Copper Upkeep"
	end
							
	local regiment_type_name = GetUnitTypeData(unit_type, "NamePlural")
							
	if (GetProvinceUnderConstructionUnitQuantity(SelectedProvince.Name, unit_type) > 0) then
		UIElements[table.getn(UIElements)]:setTooltip("Cancel hiring " .. regiment_type_name)
	else
		UIElements[table.getn(UIElements)]:setTooltip("Hire " .. regiment_type_name .. cost_tooltip)
	end
	UIElements[table.getn(UIElements)]:setFrameImage(Preference.IconFrameG)
	UIElements[table.getn(UIElements)]:setPressedFrameImage(Preference.PressedIconFrameG)
	
	return UIElements[table.getn(UIElements)]
end

function AddGrandStrategyModifierButton(x, y, upgrade_ident)
	UIElements[table.getn(UIElements) + 1] = ImageButton("")
	UIElements[table.getn(UIElements)]:setActionCallback(
		function()
			PlaySound("click")
			DrawGrandStrategyInterface()
		end
	)
	GrandStrategyMenu:add(UIElements[table.getn(UIElements)], x, y)
	UIElements[table.getn(UIElements)]:setBorderSize(0) -- Andrettin: make buttons not have the borders they previously had

	local modifier_icon = CGraphic:New(CUpgrade:Get(upgrade_ident).ModifierGraphicFile)
	modifier_icon:Load()
--	UIElements[table.getn(UIElements)]:setBaseColor(Color(0,0,0,0))
--	UIElements[table.getn(UIElements)]:setForegroundColor(Color(0,0,0,0))
--	UIElements[table.getn(UIElements)]:setBackgroundColor(Color(0,0,0,0))
	UIElements[table.getn(UIElements)]:setNormalImage(modifier_icon)
	UIElements[table.getn(UIElements)]:setPressedImage(modifier_icon)
	UIElements[table.getn(UIElements)]:setDisabledImage(modifier_icon)
	UIElements[table.getn(UIElements)]:setSize(14, 14)
	UIElements[table.getn(UIElements)]:setFont(Fonts["game"])

	UIElements[table.getn(UIElements)]:setTooltip(CUpgrade:Get(upgrade_ident).Name .. "\n" .. GetUpgradeEffectsString(upgrade_ident, true, true))
	
	return UIElements[table.getn(UIElements)]
end

function DrawGrandStrategyInterface()
	if (UIElements ~= nil) then
		for i=1,table.getn(UIElements) do
			if (UIElements[i] ~= nil) then
				GrandStrategyMenu:remove(UIElements[i])
			end
		end
	end
	
	if (GrandStrategyLabels ~= nil) then
		for i=1,table.getn(GrandStrategyLabels) do
			if (GrandStrategyLabels[i] ~= nil) then
				GrandStrategyMenu:remove(GrandStrategyLabels[i])
			end
		end
	end

	UIElements = nil
	UIElements = {}

	GrandStrategyLabels = nil
	GrandStrategyLabels = {}

	if (GrandStrategyFaction ~= nil) then
		if (MonthsPerTurn == 12) then
			AddGrandStrategyLabel(GetFactionData(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, "Name") .. ", " .. GetYearString(GrandStrategyYear, GrandStrategyFaction.Civilization), 81, Video.Height - 186 + 8, Fonts["game"], true, false)
		else
			AddGrandStrategyLabel(GetFactionData(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, "Name") .. ", " .. GetCivilizationData(GrandStrategyFaction.Civilization, "MonthName", GetMonthNameById(GrandStrategyMonth)) .. ", " .. GetYearString(GrandStrategyYear, GrandStrategyFaction.Civilization), 81, Video.Height - 186 + 8, Fonts["game"], true, false)
		end
	end
	
	if (SelectedProvince ~= nil) then
		local province_name_text = GetProvinceName(SelectedProvince)
		if (GetProvinceOwner(SelectedProvince.Name) ~= "" and GetGrandStrategyProvinceData(SelectedProvince.Name, "Water") == false) then
			province_name_text = province_name_text .. ", "
			province_name_text = province_name_text .. GetFactionFullName(GetFactionFromName(GetProvinceOwner(SelectedProvince.Name)).Civilization, GetProvinceOwner(SelectedProvince.Name))
		end
		AddGrandStrategyLabel(province_name_text, UI.InfoPanel.X + 27, UI.InfoPanel.Y + 11, Fonts["game"], true, true)

		-- add buttons for buildings and selecting units if is an owned province and in the normal province interface setting, and show up how many workers the province has
		if (GrandStrategyFaction ~= nil and GetProvinceOwner(SelectedProvince.Name) == GrandStrategyFaction.Name) then
			local faction = ""
			if (GrandStrategyFaction.Civilization == GetProvinceCivilization(SelectedProvince.Name)) then
				faction = GrandStrategyFaction.Name
			end
		
			if (GrandStrategyInterfaceState == "Province") then
				local item_x = 0
				local item_y = 0
				
				-- workers
				for i, unitName in ipairs(Units) do
					if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Class") == "worker") then
						if (GetProvinceUnitQuantity(SelectedProvince.Name, unitName) > 0) then
							local icon_offset_x = Video.Width - 243 + 15 + (item_x * 56)
							local icon_offset_y = Video.Height - 186 + 13 + (item_y * (47 + 19 + 4))

							AddGrandStrategyUnitButton(icon_offset_x, icon_offset_y, unitName)
							AddGrandStrategyLabel(GetProvinceUnitQuantity(SelectedProvince.Name, unitName), icon_offset_x + 24, icon_offset_y + 26, Fonts["game"], true, false)

							item_x = item_x + 1
							if (item_x > 3) then
								item_x = 0
								item_y = item_y + 1
							end
							if (item_y > 2) then
								break
							end
						end
					end
				end
				
				for i, unitName in ipairs(Units) do
					if (IsMilitaryUnit(unitName)) then
						if (GetProvinceUnitQuantity(SelectedProvince.Name, unitName) > 0) then -- don't show available for training but not had units in resolution heights lower than 600
							local icon_offset_x = Video.Width - 243 + 15 + (item_x * 56)
							local icon_offset_y = Video.Height - 186 + 13 + (item_y * (47 + 19 + 4))

							AddGrandStrategyUnitButton(icon_offset_x, icon_offset_y, unitName)
							if (GetProvinceUnderConstructionUnitQuantity(SelectedProvince.Name, unitName) > 0) then
								AddGrandStrategyLabel(GetProvinceUnitQuantity(SelectedProvince.Name, unitName) .. "+" .. GetProvinceUnderConstructionUnitQuantity(SelectedProvince.Name, unitName), icon_offset_x + 24, icon_offset_y + 26, Fonts["game"], true, false)
							else
								AddGrandStrategyLabel(GetProvinceUnitQuantity(SelectedProvince.Name, unitName), icon_offset_x + 24, icon_offset_y + 26, Fonts["game"], true, false)
							end

							-- add unit selection arrows
							local b = AddGrandStrategyImageButton("", "", icon_offset_x - 2, icon_offset_y + 40, function()
								if (GetGrandStrategySelectedUnits(unitName) > 0) then
									SetGrandStrategySelectedUnits(unitName, GetGrandStrategySelectedUnits(unitName) - 1)
									DrawGrandStrategyInterface()
								end
							end)
							b:setBaseColor(Color(0,0,0,0))
							b:setForegroundColor(Color(0,0,0,0))
							b:setBackgroundColor(Color(0,0,0,0))
							local g_lslider_n = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/left-arrow-normal.png")
							local g_lslider_p = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/left-arrow-pressed.png")
							g_lslider_n:Load()
							g_lslider_p:Load()
							b:setNormalImage(g_lslider_n)
							b:setPressedImage(g_lslider_p)
							local regiment_type_name = GetUnitTypeData(unitName, "NamePlural")
							b:setTooltip("Deselect one ".. regiment_type_name .. " regiment")

							local b = AddGrandStrategyImageButton("", "", icon_offset_x + 2 + 46 - 20, icon_offset_y + 40, function()
								if (GetGrandStrategySelectedUnits(unitName) < GetProvinceUnitQuantity(SelectedProvince.Name, unitName)) then
									SetGrandStrategySelectedUnits(unitName, GetGrandStrategySelectedUnits(unitName) + 1)
									DrawGrandStrategyInterface()
								end
							end)
							b:setBaseColor(Color(0,0,0,0))
							b:setForegroundColor(Color(0,0,0,0))
							b:setBackgroundColor(Color(0,0,0,0))
							local g_rslider_n = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/right-arrow-normal.png")
							local g_rslider_p = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/right-arrow-pressed.png")
							g_rslider_n:Load()
							g_rslider_p:Load()
							b:setNormalImage(g_rslider_n)
							b:setPressedImage(g_rslider_p)
							local regiment_type_name = GetUnitTypeData(unitName, "NamePlural")
							b:setTooltip("Select one ".. regiment_type_name .. " regiment")

							AddGrandStrategyLabel(GetGrandStrategySelectedUnits(unitName), icon_offset_x + 24, icon_offset_y + 42, Fonts["game"], true, false)

							item_x = item_x + 1
							if (item_x > 3) then
								item_x = 0
								item_y = item_y + 1
							end
							if (item_y > 2) then
								break
							end
						end
					end
				end

				if (
					GetGrandStrategySelectedTileX() == -1
					or GetGrandStrategySelectedTileY() == -1
					or (GetGrandStrategySelectedTileX() == GetGrandStrategyProvinceData(SelectedProvince.Name, "SettlementX") and GetGrandStrategySelectedTileY() == GetGrandStrategyProvinceData(SelectedProvince.Name, "SettlementY"))
					or (GetProvinceCurrentConstruction(SelectedProvince.Name) == "" and ProvinceHasBuildingClass(SelectedProvince.Name, "town-hall") == false and WorldMapTileHasResource(GetGrandStrategySelectedTileX(), GetGrandStrategySelectedTileY(), "any", true) == false)
				) then
					local item_x = 0
					local item_y = -3
					for i, unitName in ipairs(Units) do
						if (IsGrandStrategyBuilding(unitName)) then
							if (IsBuildingAvailable(SelectedProvince, unitName)) then
								local icon_offset_x = UI.InfoPanel.X + 30 + (item_x * 56)
								local icon_offset_y = UI.InfoPanel.Y + 180 + (item_y * 47) -- change to 343 to make six buildings fit -- was 340, changed to make more than six buildings fit into the screen

								AddGrandStrategyBuildingButton(icon_offset_x, icon_offset_y, unitName)

								if (GetProvinceCurrentConstruction(SelectedProvince.Name) == unitName) then -- if is under construction, apply under construction graphics
									AddUIElement("neutral/icons/build_basic_structure_transparent_background.png", icon_offset_x, icon_offset_y)
								end
								
								item_x = item_x + 1
								if (item_x > 2) then
									item_x = 0
									item_y = item_y + 1
								end
							end
						end
					end
				elseif (GetGrandStrategyTileData({GetGrandStrategySelectedTileX(), GetGrandStrategySelectedTileY()}, "PathwayConstruction") == false) then
--					local build_road_tooltip = "Build roads to connect resource tiles to your capital\nRoads allow more than 200 of a tile's output to be transported\nRoads between provinces allow more than 8 regiments to move or attack\nCosts 200 Copper and 200 Lumber"
					local build_road_tooltip = "Build roads to connect resource tiles to your capital\nRoads allow more than 200 of a tile's output to be transported\nCosts 200 Copper and 200 Lumber"
					-- add a button for building a road
					if (GetGrandStrategyTileData({GetGrandStrategySelectedTileX(), GetGrandStrategySelectedTileY()}, "CanBuildPathway", "road", "north", false)) then
						AddGrandStrategyThinImageButton("Build Road N", "", UI.InfoPanel.X + 72, Video.Height - (15 * 8) - 8, function()
							if (GetGrandStrategyTileData({GetGrandStrategySelectedTileX(), GetGrandStrategySelectedTileY()}, "CanBuildPathway", "road", "north", true)) then
								SetGrandStrategyTileData({GetGrandStrategySelectedTileX(), GetGrandStrategySelectedTileY()}, "PathwayConstruction", "road", "north")
							end
							DrawGrandStrategyInterface()
						end, build_road_tooltip)
					end
					if (GetGrandStrategyTileData({GetGrandStrategySelectedTileX(), GetGrandStrategySelectedTileY()}, "CanBuildPathway", "road", "northwest", false)) then
						AddGrandStrategyThinImageButton("Build Road NW", "", UI.InfoPanel.X + 72, Video.Height - (15 * 7) - 8, function()
							if (GetGrandStrategyTileData({GetGrandStrategySelectedTileX(), GetGrandStrategySelectedTileY()}, "CanBuildPathway", "road", "northwest", true)) then
								SetGrandStrategyTileData({GetGrandStrategySelectedTileX(), GetGrandStrategySelectedTileY()}, "PathwayConstruction", "road", "northwest")
							end
							DrawGrandStrategyInterface()
						end, build_road_tooltip)
					end
					if (GetGrandStrategyTileData({GetGrandStrategySelectedTileX(), GetGrandStrategySelectedTileY()}, "CanBuildPathway", "road", "northeast", false)) then
						AddGrandStrategyThinImageButton("Build Road NE", "", UI.InfoPanel.X + 72, Video.Height - (15 * 6) - 8, function()
							if (GetGrandStrategyTileData({GetGrandStrategySelectedTileX(), GetGrandStrategySelectedTileY()}, "CanBuildPathway", "road", "northeast", true)) then
								SetGrandStrategyTileData({GetGrandStrategySelectedTileX(), GetGrandStrategySelectedTileY()}, "PathwayConstruction", "road", "northeast")
							end
							DrawGrandStrategyInterface()
						end, build_road_tooltip)
					end
					if (GetGrandStrategyTileData({GetGrandStrategySelectedTileX(), GetGrandStrategySelectedTileY()}, "CanBuildPathway", "road", "west", false)) then
						AddGrandStrategyThinImageButton("Build Road W", "", UI.InfoPanel.X + 72, Video.Height - (15 * 5) - 8, function()
							if (GetGrandStrategyTileData({GetGrandStrategySelectedTileX(), GetGrandStrategySelectedTileY()}, "CanBuildPathway", "road", "west", true)) then
								SetGrandStrategyTileData({GetGrandStrategySelectedTileX(), GetGrandStrategySelectedTileY()}, "PathwayConstruction", "road", "west")
							end
							DrawGrandStrategyInterface()
						end, build_road_tooltip)
					end
					if (GetGrandStrategyTileData({GetGrandStrategySelectedTileX(), GetGrandStrategySelectedTileY()}, "CanBuildPathway", "road", "east", false)) then
						AddGrandStrategyThinImageButton("Build Road E", "", UI.InfoPanel.X + 72, Video.Height - (15 * 4) - 8, function()
							if (GetGrandStrategyTileData({GetGrandStrategySelectedTileX(), GetGrandStrategySelectedTileY()}, "CanBuildPathway", "road", "east", true)) then
								SetGrandStrategyTileData({GetGrandStrategySelectedTileX(), GetGrandStrategySelectedTileY()}, "PathwayConstruction", "road", "east")
							end
							DrawGrandStrategyInterface()
						end, build_road_tooltip)
					end
					if (GetGrandStrategyTileData({GetGrandStrategySelectedTileX(), GetGrandStrategySelectedTileY()}, "CanBuildPathway", "road", "south", false)) then
						AddGrandStrategyThinImageButton("Build Road S", "", UI.InfoPanel.X + 72, Video.Height - (15 * 3) - 8, function()
							if (GetGrandStrategyTileData({GetGrandStrategySelectedTileX(), GetGrandStrategySelectedTileY()}, "CanBuildPathway", "road", "south", true)) then
								SetGrandStrategyTileData({GetGrandStrategySelectedTileX(), GetGrandStrategySelectedTileY()}, "PathwayConstruction", "road", "south")
							end
							DrawGrandStrategyInterface()
						end, build_road_tooltip)
					end
					if (GetGrandStrategyTileData({GetGrandStrategySelectedTileX(), GetGrandStrategySelectedTileY()}, "CanBuildPathway", "road", "southwest", false)) then
						AddGrandStrategyThinImageButton("Build Road SW", "", UI.InfoPanel.X + 72, Video.Height - (15 * 2) - 8, function()
							if (GetGrandStrategyTileData({GetGrandStrategySelectedTileX(), GetGrandStrategySelectedTileY()}, "CanBuildPathway", "road", "southwest", true)) then
								SetGrandStrategyTileData({GetGrandStrategySelectedTileX(), GetGrandStrategySelectedTileY()}, "PathwayConstruction", "road", "southwest")
							end
							DrawGrandStrategyInterface()
						end, build_road_tooltip)
					end
					if (GetGrandStrategyTileData({GetGrandStrategySelectedTileX(), GetGrandStrategySelectedTileY()}, "CanBuildPathway", "road", "southeast", false)) then
						AddGrandStrategyThinImageButton("Build Road SE", "", UI.InfoPanel.X + 72, Video.Height - (15 * 1) - 8, function()
							if (GetGrandStrategyTileData({GetGrandStrategySelectedTileX(), GetGrandStrategySelectedTileY()}, "CanBuildPathway", "road", "southeast", true)) then
								SetGrandStrategyTileData({GetGrandStrategySelectedTileX(), GetGrandStrategySelectedTileY()}, "PathwayConstruction", "road", "southeast")
							end
							DrawGrandStrategyInterface()
						end, build_road_tooltip)
					end
				end
				
				item_y = 0
				local province_modifiers = GetGrandStrategyProvinceData(SelectedProvince.Name, "Modifiers")
				for i = 1, table.getn(province_modifiers) do
					local icon_offset_x = UI.InfoPanel.X
					local icon_offset_y = UI.InfoPanel.Y + 40 + (item_y * (14 + 1))

					AddGrandStrategyModifierButton(icon_offset_x, icon_offset_y, province_modifiers[i])

					item_y = item_y + 1
				end
			elseif (GrandStrategyInterfaceState == "town-hall" or GrandStrategyInterfaceState == "stronghold") then
				if ((GetProvinceCivilization(SelectedProvince.Name) == "teuton" or GetCivilizationData(GetProvinceCivilization(SelectedProvince.Name), "ParentCivilization") == "teuton") and FactionHasTechnologyType(GrandStrategyFaction, "masonry") == false) then
					AddGrandStrategyLabel(GetUnitTypeName("unit-germanic-town-hall"), UI.InfoPanel.X + 109, UI.InfoPanel.Y + 53, Fonts["game"], true, false)
				else
					AddGrandStrategyLabel(GetUnitTypeName(GetFactionClassUnitType(GrandStrategyInterfaceState, GetProvinceCivilization(SelectedProvince.Name), faction)), UI.InfoPanel.X + 109, UI.InfoPanel.Y + 53, Fonts["game"], true, false)
				end
				
				local item_y = -2

				item_y = item_y + 1

				item_y = 0
				for key, value in pairs(GrandStrategyCommodities) do
					local icon_offset_y = Video.Height - 186 + 8 + (item_y * 47)

					local b = AddUIElement("ui/resources/" .. string.lower(key) .. ".png", Video.Width - 243 + 12, icon_offset_y + 3)

					-- add trade bid/offer arrows
					b = AddGrandStrategyImageButton("", "", Video.Width - 243 + 112 - 2 - 24, icon_offset_y, function()
						if (GetFactionCommodityTrade(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, string.lower(key)) > 0 and GetFactionCommodityTrade(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, string.lower(key)) < 100) then
							SetFactionCommodityTrade(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, string.lower(key), 0)
						elseif (GetFactionResource(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, "copper") >= -1 * (GetFactionCommodityTrade(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, string.lower(key)) - 100) * GetCommodityPrice(string.lower(key)) / 100) then
							ChangeFactionCommodityTrade(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, string.lower(key), -100)
						end
						DrawGrandStrategyInterface()
					end)
					b:setBaseColor(Color(0,0,0,0))
					b:setForegroundColor(Color(0,0,0,0))
					b:setBackgroundColor(Color(0,0,0,0))
					local g_lslider_n = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/left-arrow-normal.png")
					local g_lslider_p = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/left-arrow-pressed.png")
					g_lslider_n:Load()
					g_lslider_p:Load()
					b:setNormalImage(g_lslider_n)
					b:setPressedImage(g_lslider_p)
					if (GetFactionCommodityTrade(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, string.lower(key)) <= 0) then
						b:setTooltip("Increase bid of " .. key .. " by 100")
					else
						b:setTooltip("Decrease offer of " .. key .. " by 100")
					end

					local b = AddGrandStrategyImageButton("", "", Video.Width - 243 + 112 + 2 + 46 - 20, icon_offset_y, function()
						if (GetFactionCommodityTrade(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, string.lower(key)) < 0 and GetFactionCommodityTrade(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, string.lower(key)) > -100) then
							SetFactionCommodityTrade(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, string.lower(key), 0)
						elseif (GetFactionResource(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, string.lower(key)) >= GetFactionCommodityTrade(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, string.lower(key)) + 100) then
							ChangeFactionCommodityTrade(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, string.lower(key), 100)
						end
						DrawGrandStrategyInterface()
					end)
					b:setBaseColor(Color(0,0,0,0))
					b:setForegroundColor(Color(0,0,0,0))
					b:setBackgroundColor(Color(0,0,0,0))
					local g_rslider_n = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/right-arrow-normal.png")
					local g_rslider_p = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/right-arrow-pressed.png")
					g_rslider_n:Load()
					g_rslider_p:Load()
					b:setNormalImage(g_rslider_n)
					b:setPressedImage(g_rslider_p)
					if (GetFactionCommodityTrade(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, string.lower(key)) >= 0) then
						b:setTooltip("Increase offer of " .. key .. " by 100")
					else
						b:setTooltip("Decrease bid of " .. key .. " by 100")
					end

					b = AddGrandStrategyLabel(GetCommodityPrice(string.lower(key)), Video.Width - 243 + 12 + 18, icon_offset_y + 3 + 1, Fonts["game"], false, false)
					b:setTooltip(_("Price of 100 " .. key .. " in Copper"))
					
					if (GetFactionCommodityTrade(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, string.lower(key)) ~= 0) then
						b = AddGrandStrategyLabel(math.abs(GetFactionCommodityTrade(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, string.lower(key))), Video.Width - 243 + 112 + 24 - 12, icon_offset_y + 2, Fonts["game"], true, false)
					end
					
					if (GetFactionCommodityTrade(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, string.lower(key)) < 0) then
						b:setTooltip(_("Quantity of " .. key .. " bid"))
						AddGrandStrategyLabel("Bid", Video.Width - 243 + 112 + 2 + 46 - 20 + 56 - 10, icon_offset_y + 3 + 1, Fonts["game"], false, false)
					elseif (GetFactionCommodityTrade(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, string.lower(key)) > 0) then
						b:setTooltip(_("Quantity of " .. key .. " offered"))
						AddGrandStrategyLabel("Offer", Video.Width - 243 + 112 + 2 + 46 - 20 + 56 - 10, icon_offset_y + 3 + 1, Fonts["game"], false, false)
					end
					
					item_y = item_y + 1
				end
			elseif (GrandStrategyInterfaceState == "barracks") then
				if ((GetProvinceCivilization(SelectedProvince.Name) == "teuton" or GetCivilizationData(GetProvinceCivilization(SelectedProvince.Name), "ParentCivilization") == "teuton") and FactionHasTechnologyType(GrandStrategyFaction, "masonry") == false) then -- special case for the germanic lumber mill
					AddGrandStrategyLabel(GetUnitTypeName("unit-germanic-barracks"), UI.InfoPanel.X + 109, UI.InfoPanel.Y + 53, Fonts["game"], true, false)
				else
					AddGrandStrategyLabel(GetUnitTypeName(GetFactionClassUnitType(GrandStrategyInterfaceState, GetProvinceCivilization(SelectedProvince.Name), faction)), UI.InfoPanel.X + 109, UI.InfoPanel.Y + 53, Fonts["game"], true, false)
				end
				
				local item_x = 0
				local item_y = 0

				-- workers (to show how many are available for training
				local worker_unit_type
				if (GetFactionFromName(GetProvinceOwner(SelectedProvince.Name)).Civilization == GetProvinceCivilization(SelectedProvince.Name)) then
					worker_unit_type = GetFactionClassUnitType("worker", GetProvinceCivilization(SelectedProvince.Name), GetProvinceOwner(SelectedProvince.Name))
				else
					worker_unit_type = GetCivilizationClassUnitType("worker", GetProvinceCivilization(SelectedProvince.Name))
				end
				if (worker_unit_type ~= nil) then
					local icon_offset_x = Video.Width - 243 + 15 + (item_x * 56)
					local icon_offset_y = Video.Height - 186 + 13 + (item_y * (47 + 19 + 4))

					AddGrandStrategyUnitButton(icon_offset_x, icon_offset_y, worker_unit_type)
					AddGrandStrategyLabel(GetProvinceAvailableWorkersForTraining(SelectedProvince.Name) .. "/" .. GetProvinceUnitQuantity(SelectedProvince.Name, worker_unit_type), icon_offset_x + 24, icon_offset_y + 26, Fonts["game"], true, false)

					item_x = item_x + 1
					if (item_x > 3) then
						item_x = 0
						item_y = item_y + 1
					end
				end
				
				-- add units buttons for training
				for i, unitName in ipairs(Units) do
					if (IsMilitaryUnit(unitName)) then
						if (IsUnitAvailableForTraining(SelectedProvince, unitName) and GetUnitTypeInterfaceState(unitName) == GrandStrategyInterfaceState) then
							local icon_offset_x = Video.Width - 243 + 15 + (item_x * 56)
							local icon_offset_y = Video.Height - 186 + 13 + (item_y * (47 + 19 + 4))

							AddGrandStrategyUnitButton(icon_offset_x, icon_offset_y, unitName)
							if (GetProvinceUnderConstructionUnitQuantity(SelectedProvince.Name, unitName) > 0) then
								AddGrandStrategyLabel(GetProvinceUnitQuantity(SelectedProvince.Name, unitName) .. "+" .. GetProvinceUnderConstructionUnitQuantity(SelectedProvince.Name, unitName), icon_offset_x + 24, icon_offset_y + 26, Fonts["game"], true, false)
							else
								AddGrandStrategyLabel(GetProvinceUnitQuantity(SelectedProvince.Name, unitName), icon_offset_x + 24, icon_offset_y + 26, Fonts["game"], true, false)
							end

							-- add unit training arrows
							local b = AddGrandStrategyImageButton("", "", icon_offset_x - 2, icon_offset_y + 40, function()
								TrainUnitCancel(SelectedProvince, unitName)
								DrawGrandStrategyInterface()
							end)
							b:setBaseColor(Color(0,0,0,0))
							b:setForegroundColor(Color(0,0,0,0))
							b:setBackgroundColor(Color(0,0,0,0))
							local g_lslider_n = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/left-arrow-normal.png")
							local g_lslider_p = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/left-arrow-pressed.png")
							g_lslider_n:Load()
							g_lslider_p:Load()
							b:setNormalImage(g_lslider_n)
							b:setPressedImage(g_lslider_p)
							local regiment_type_name = GetUnitTypeData(unitName, "NamePlural")
							b:setTooltip("Cancel training of one ".. regiment_type_name .. " regiment")

							local b = AddGrandStrategyImageButton("", "", icon_offset_x + 2 + 46 - 20, icon_offset_y + 40, function()
								TrainUnit(SelectedProvince, unitName)
								DrawGrandStrategyInterface()
							end)
							b:setBaseColor(Color(0,0,0,0))
							b:setForegroundColor(Color(0,0,0,0))
							b:setBackgroundColor(Color(0,0,0,0))
							local g_rslider_n = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/right-arrow-normal.png")
							local g_rslider_p = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/right-arrow-pressed.png")
							g_rslider_n:Load()
							g_rslider_p:Load()
							b:setNormalImage(g_rslider_n)
							b:setPressedImage(g_rslider_p)
							
							local cost_tooltip = ""
							cost_tooltip = "Costs 1 " .. GetUnitTypeName(GetFactionClassUnitType("worker", GetProvinceCivilization(SelectedProvince.Name), faction)) .. " unit"
							if (GetFactionUnitCost(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, unitName, "copper") > 0) then
								if (cost_tooltip == "") then
									cost_tooltip = "Costs "
								else
									cost_tooltip = cost_tooltip .. ", "
								end
								cost_tooltip = cost_tooltip .. GetFactionUnitCost(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, unitName, "copper") .. " Copper"
							end
							if (GetFactionUnitCost(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, unitName, "lumber") > 0) then
								if (cost_tooltip == "") then
									cost_tooltip = "Costs "
								else
									cost_tooltip = cost_tooltip .. ", "
								end
								cost_tooltip = cost_tooltip .. GetFactionUnitCost(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, unitName, "lumber") .. " Lumber"
							end
							if (GetFactionUnitCost(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, unitName, "stone") > 0) then
								if (cost_tooltip == "") then
									cost_tooltip = "Costs "
								else
									cost_tooltip = cost_tooltip .. ", "
								end
								cost_tooltip = cost_tooltip .. GetFactionUnitCost(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, unitName, "stone") .. " Stone"
							end
							
							if (GetUnitTypeData(unitName, "Upkeep") > 0) then
								cost_tooltip = cost_tooltip .. "\n" .. GetUnitTypeData(unitName, "Upkeep") .. " Copper Upkeep"
							end
							
							local regiment_type_name = GetUnitTypeData(unitName, "NamePlural")
							b:setTooltip("Train one ".. regiment_type_name .. " regiment" .. "\n" .. cost_tooltip)

							AddGrandStrategyLabel(GetProvinceUnderConstructionUnitQuantity(SelectedProvince.Name, unitName), icon_offset_x + 24, icon_offset_y + 42, Fonts["game"], true, false)

							item_x = item_x + 1
							if (item_x > 3) then
								item_x = 0
								item_y = item_y + 1
							end
						end
					end
				end
			elseif (GrandStrategyInterfaceState == "lumber-mill") then
				if ((GetProvinceCivilization(SelectedProvince.Name) == "teuton" or GetCivilizationData(GetProvinceCivilization(SelectedProvince.Name), "ParentCivilization") == "teuton") and FactionHasTechnologyType(GrandStrategyFaction, "masonry") == false) then -- special case for the germanic lumber mill
					AddGrandStrategyLabel(GetUnitTypeName("unit-germanic-carpenters-shop"), UI.InfoPanel.X + 109, UI.InfoPanel.Y + 53, Fonts["game"], true, false)
				else
					AddGrandStrategyLabel(GetUnitTypeName(GetFactionClassUnitType(GrandStrategyInterfaceState, GetProvinceCivilization(SelectedProvince.Name), faction)), UI.InfoPanel.X + 109, UI.InfoPanel.Y + 53, Fonts["game"], true, false)
				end
				
				local item_x = 0
				local item_y = 0
				for i, unitName in ipairs(Units) do
					if (string.find(unitName, "upgrade-") ~= nil) then
						if (GetUnitTypeInterfaceState(unitName) == GrandStrategyInterfaceState and IsTechnologyAvailable(SelectedProvince, unitName)) then
							local icon_offset_x = Video.Width - 243 + 15 + (item_x * 56)
							local icon_offset_y = Video.Height - 186 + 13 + (item_y * 47)

							AddGrandStrategyTechnologyButton(icon_offset_x, icon_offset_y, unitName)
							
							item_x = item_x + 1
							if (item_x > 3) then
								item_x = 0
								item_y = item_y + 1
							end
						end
					end
				end
			elseif (GrandStrategyInterfaceState == "smithy") then
				if ((GetProvinceCivilization(SelectedProvince.Name) == "teuton" or GetCivilizationData(GetProvinceCivilization(SelectedProvince.Name), "ParentCivilization") == "teuton") and FactionHasTechnologyType(GrandStrategyFaction, "masonry") == false) then -- special case for the germanic lumber mill
					AddGrandStrategyLabel(GetUnitTypeName("unit-germanic-smithy"), UI.InfoPanel.X + 109, UI.InfoPanel.Y + 53, Fonts["game"], true, false)
				else
					AddGrandStrategyLabel(GetUnitTypeName(GetFactionClassUnitType(GrandStrategyInterfaceState, GetProvinceCivilization(SelectedProvince.Name), faction)), UI.InfoPanel.X + 109, UI.InfoPanel.Y + 53, Fonts["game"], true, false)
				end
				
				local item_x = 0
				local item_y = 0
				for i, unitName in ipairs(Units) do
					if (string.find(unitName, "upgrade-") ~= nil) then
						if (GetUnitTypeInterfaceState(unitName) == GrandStrategyInterfaceState and IsTechnologyAvailable(SelectedProvince, unitName)) then
							local icon_offset_x = Video.Width - 243 + 15 + (item_x * 56)
							local icon_offset_y = Video.Height - 186 + 13 + (item_y * 47)

							AddGrandStrategyTechnologyButton(icon_offset_x, icon_offset_y, unitName)
							
							item_x = item_x + 1
							if (item_x > 3) then
								item_x = 0
								item_y = item_y + 1
							end
						end
					end
				end
			elseif (GrandStrategyInterfaceState == "stables" or GrandStrategyInterfaceState == "temple" or GrandStrategyInterfaceState == "dock") then
				AddGrandStrategyLabel(GetUnitTypeName(GetFactionClassUnitType(GrandStrategyInterfaceState, GetProvinceCivilization(SelectedProvince.Name), faction)), UI.InfoPanel.X + 109, UI.InfoPanel.Y + 53, Fonts["game"], true, false)
				
				local item_x = 0
				local item_y = 0
				for i, unitName in ipairs(Units) do
					if (string.find(unitName, "upgrade-") ~= nil) then
						if (GetUnitTypeInterfaceState(unitName) == GrandStrategyInterfaceState and IsTechnologyAvailable(SelectedProvince, unitName)) then
							local icon_offset_x = Video.Width - 243 + 15 + (item_x * 56)
							local icon_offset_y = Video.Height - 186 + 13 + (item_y * 47)

							AddGrandStrategyTechnologyButton(icon_offset_x, icon_offset_y, unitName)
							
							item_x = item_x + 1
							if (item_x > 3) then
								item_x = 0
								item_y = item_y + 1
							end
						end
					end
				end
			elseif (GrandStrategyInterfaceState == "mercenary-camp") then
				AddGrandStrategyLabel(GetUnitTypeName("unit-mercenary-camp"), UI.InfoPanel.X + 109, UI.InfoPanel.Y + 53, Fonts["game"], true, false)
				
				-- add units buttons for hiring generic mercenaries
				local item_x = 0
				local item_y = 0
				for i, unitName in ipairs(Units) do
					if (IsMilitaryUnit(unitName)) then
						if (IsUnitAvailableForTraining(SelectedProvince, unitName) and GetUnitTypeInterfaceState(unitName) == GrandStrategyInterfaceState) then
							local icon_offset_x = Video.Width - 243 + 15 + (item_x * 56)
							local icon_offset_y = Video.Height - 186 + 13 + (item_y * (47 + 19 + 4))

							AddGrandStrategyUnitButton(icon_offset_x, icon_offset_y, unitName)
							if (GetProvinceUnderConstructionUnitQuantity(SelectedProvince.Name, unitName) > 0) then
								AddGrandStrategyLabel(GetProvinceUnitQuantity(SelectedProvince.Name, unitName) .. "+" .. GetProvinceUnderConstructionUnitQuantity(SelectedProvince.Name, unitName), icon_offset_x + 24, icon_offset_y + 26, Fonts["game"], true, false)
							else
								AddGrandStrategyLabel(GetProvinceUnitQuantity(SelectedProvince.Name, unitName), icon_offset_x + 24, icon_offset_y + 26, Fonts["game"], true, false)
							end

							-- add unit training arrows
							local b = AddGrandStrategyImageButton("", "", icon_offset_x - 2, icon_offset_y + 40, function()
								TrainUnitCancel(SelectedProvince, unitName)
								DrawGrandStrategyInterface()
							end)
							b:setBaseColor(Color(0,0,0,0))
							b:setForegroundColor(Color(0,0,0,0))
							b:setBackgroundColor(Color(0,0,0,0))
							local g_lslider_n = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/left-arrow-normal.png")
							local g_lslider_p = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/left-arrow-pressed.png")
							g_lslider_n:Load()
							g_lslider_p:Load()
							b:setNormalImage(g_lslider_n)
							b:setPressedImage(g_lslider_p)
							local regiment_type_name = GetUnitTypeData(unitName, "NamePlural")
							b:setTooltip("Cancel hiring of one ".. regiment_type_name .. " regiment")

							local b = AddGrandStrategyImageButton("", "", icon_offset_x + 2 + 46 - 20, icon_offset_y + 40, function()
								TrainUnit(SelectedProvince, unitName)
								DrawGrandStrategyInterface()
							end)
							b:setBaseColor(Color(0,0,0,0))
							b:setForegroundColor(Color(0,0,0,0))
							b:setBackgroundColor(Color(0,0,0,0))
							local g_rslider_n = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/right-arrow-normal.png")
							local g_rslider_p = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/right-arrow-pressed.png")
							g_rslider_n:Load()
							g_rslider_p:Load()
							b:setNormalImage(g_rslider_n)
							b:setPressedImage(g_rslider_p)
							
							local cost_tooltip = ""
							if (GetFactionUnitCost(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, unitName, "copper") > 0) then
								if (cost_tooltip == "") then
									cost_tooltip = "Costs "
								else
									cost_tooltip = cost_tooltip .. ", "
								end
								cost_tooltip = cost_tooltip .. GetFactionUnitCost(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, unitName, "copper") .. " Copper"
							end
							if (GetFactionUnitCost(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, unitName, "lumber") > 0) then
								if (cost_tooltip == "") then
									cost_tooltip = "Costs "
								else
									cost_tooltip = cost_tooltip .. ", "
								end
								cost_tooltip = cost_tooltip .. GetFactionUnitCost(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, unitName, "lumber") .. " Lumber"
							end
							if (GetFactionUnitCost(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, unitName, "stone") > 0) then
								if (cost_tooltip == "") then
									cost_tooltip = "Costs "
								else
									cost_tooltip = cost_tooltip .. ", "
								end
								cost_tooltip = cost_tooltip .. GetFactionUnitCost(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, unitName, "stone") .. " Stone"
							end
							
							if (GetUnitTypeData(unitName, "Upkeep") > 0) then
								cost_tooltip = cost_tooltip .. "\n" .. GetUnitTypeData(unitName, "Upkeep") .. " Copper Upkeep"
							end
							
							local regiment_type_name = GetUnitTypeData(unitName, "NamePlural")
							b:setTooltip("Hire one ".. regiment_type_name .. " regiment" .. "\n" .. cost_tooltip)

							AddGrandStrategyLabel(GetProvinceUnderConstructionUnitQuantity(SelectedProvince.Name, unitName), icon_offset_x + 24, icon_offset_y + 42, Fonts["game"], true, false)

							item_x = item_x + 1
							if (item_x > 3) then
								item_x = 0
								item_y = item_y + 1
							end
						end
					end
				end
				
				-- add units buttons for hiring specific mercenary groups
				item_x = 0
				item_y = 1
				for i, unitName in ipairs(Units) do
					if (IsMilitaryUnit(unitName) and GetUnitTypeData(unitName, "Mercenary") and IsMercenaryAvailableForHiring(SelectedProvince, unitName)) then -- the unit's copper cost is required to be more than 0 to avoid upgraded versions of the same mercenary group to be available for hiring as well
						local icon_offset_x = Video.Width - 243 + 15 + (item_x * 56)
						local icon_offset_y = Video.Height - 186 + 13 + (item_y * 47) + 19 + 4

						AddGrandStrategyMercenaryButton(icon_offset_x, icon_offset_y, unitName)
							
						item_x = item_x + 1
						if (item_x > 3) then
							item_x = 0
							item_y = item_y + 1
						end
					end
				end
			elseif (GrandStrategyInterfaceState == "Heroes") then
				AddGrandStrategyLabel("Heroes", UI.InfoPanel.X + 109, UI.InfoPanel.Y + 53, Fonts["game"], true, false)
				
				local item_x = 0
				local item_y = 0
				
				local grand_strategy_heroes = GetGrandStrategyHeroes()
				for i = 1, table.getn(grand_strategy_heroes) do
					if (GetProvinceHero(SelectedProvince.Name, grand_strategy_heroes[i]) == 2) then
						local icon_offset_x = Video.Width - 243 + 15 + (item_x * 56)
						local icon_offset_y = Video.Height - 186 + 13 + (item_y * 47)

						AddGrandStrategyHeroButton(icon_offset_x, icon_offset_y, grand_strategy_heroes[i])
							
						item_x = item_x + 1
						if (item_x > 3) then
							item_x = 0
							item_y = item_y + 1
						end
					end
				end
			elseif (GrandStrategyInterfaceState == "Ruler") then
				local item_x = 0
				local item_y = 0
				local minister_types = {"head-of-state", "head-of-government", "education-minister", "finance-minister", "foreign-minister", "intelligence-minister", "interior-minister", "justice-minister", "war-minister"}
				
				for i = 1, table.getn(minister_types) do
					if (GetFactionMinister(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, minister_types[i]) ~= "") then
						local icon_offset_x = Video.Width - 243 + 15 + (item_x * 56)
						local icon_offset_y = Video.Height - 186 + 13 + (item_y * (47 + 19 + 4))

						AddGrandStrategyMinisterButton(icon_offset_x, icon_offset_y, GetFactionMinister(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, minister_types[i]))
							
						item_x = item_x + 1
						if (item_x > 3) then
							item_x = 0
							item_y = item_y + 1
						end
					end
				end
				
				if (GetGrandStrategyProvinceData(SelectedProvince.Name, "Governor") ~= "") then
					local icon_offset_x = Video.Width - 243 + 15 + (item_x * 56)
					local icon_offset_y = Video.Height - 186 + 13 + (item_y * (47 + 19 + 4))

					AddGrandStrategyMinisterButton(icon_offset_x, icon_offset_y, GetGrandStrategyProvinceData(SelectedProvince.Name, "Governor"))
							
					item_x = item_x + 1
					if (item_x > 3) then
						item_x = 0
						item_y = item_y + 1
					end
				end
			end
		elseif (GetProvinceOwner(SelectedProvince.Name) ~= "" and GrandStrategyInterfaceState == "Diplomacy") then
			if (GetFactionDiplomacyState(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, GetFactionFromName(GetProvinceOwner(SelectedProvince.Name)).Civilization, GetProvinceOwner(SelectedProvince.Name)) == "war" and GetFactionDiplomacyStateProposal(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, GetFactionFromName(GetProvinceOwner(SelectedProvince.Name)).Civilization, GetProvinceOwner(SelectedProvince.Name)) == "") then
				AddGrandStrategyLabel("At War with Us", UI.InfoPanel.X + 27, UI.InfoPanel.Y + 53, Fonts["game"], true, true)

				-- add a button for offering peace
				AddGrandStrategyThinImageButton("Offer ~!Peace!", "p", Video.Width - 243 + 72, Video.Height - (15 * 5) - 8, function()
					OfferPeace(GrandStrategyFaction.Name, GetProvinceOwner(SelectedProvince.Name))
					DrawGrandStrategyInterface()
				end)
			elseif (GetFactionDiplomacyState(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, GetFactionFromName(GetProvinceOwner(SelectedProvince.Name)).Civilization, GetProvinceOwner(SelectedProvince.Name)) == "war" and GetFactionDiplomacyStateProposal(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, GetFactionFromName(GetProvinceOwner(SelectedProvince.Name)).Civilization, GetProvinceOwner(SelectedProvince.Name)) == "peace") then
				AddGrandStrategyLabel("At War with Us (Peace Offered)", UI.InfoPanel.X + 27, UI.InfoPanel.Y + 53, Fonts["game"], true, true)
			elseif (CanDeclareWar(GrandStrategyFaction, GetFactionFromName(GetProvinceOwner(SelectedProvince.Name)))) then
				-- add a button for declaring war
				AddGrandStrategyThinImageButton("Declare ~!War!", "w", Video.Width - 243 + 72, Video.Height - (15 * 5) - 8, function()
					DeclareWar(GrandStrategyFaction.Name, GetProvinceOwner(SelectedProvince.Name))
					DrawGrandStrategyInterface()
				end)
			end
		end
	end

	if (wyr.preferences.ShowTips) then
		if (SelectedProvince ~= nil) then
			if (GrandStrategyFaction ~= nil and GetProvinceOwner(SelectedProvince.Name) == GrandStrategyFaction.Name) then
				if (GrandStrategyInterfaceState == "Province") then
					if (ProvinceHasBuildingClass(SelectedProvince.Name, "town-hall") == false) then
						Tip("Building a Settlement", "Build a town hall in any tile to create a capital settlement for the province. To do so, select the desired tile, and then click the grayed town hall icon.")
					else
						Tip("Selecting a Settlement", "To build and manage structures in a province's capital settlement, click on its tile.")
					end
					Tip("Province Interface", "The number on each unit icon represents how many units of that type are in the province, while the one between the arrows represent how many are currently selected.")
					if (
						GetGrandStrategySelectedTileX() == -1
						or GetGrandStrategySelectedTileY() == -1
						or (GetGrandStrategySelectedTileX() == GetGrandStrategyProvinceData(SelectedProvince.Name, "SettlementX") and GetGrandStrategySelectedTileY() == GetGrandStrategyProvinceData(SelectedProvince.Name, "SettlementY"))
					) then
						Tip("Settlement Interface", "Click on a built structure (colored) to make use of its functions, and on an unbuilt one (grayed-out) to build it. The number on each unit icon represents how many units of that type are in the province, while the one between the arrows represent how many are currently selected.")
					end
					Tip("Grand Strategy Units", "Use the arrows to select or deselect units. While units are selected, click on another province you own to move them there, or click on an enemy province to attack it.")
					if (SelectedProvince.Coastal) then
						Tip("Attacking Over Water", "To attack an enemy province over water, you need a dock in the coastal province where your troops are, and both provinces need to border at least one sea province in common.")
					end
				elseif (GrandStrategyInterfaceState == "town-hall" or GrandStrategyInterfaceState == "stronghold") then
					Tip("Town Hall Interface", "A province's culture determines what is available in it. A province that has a different culture than your faction will suffer a penalty to economic efficiency. The number beside each commodity icon represents its price in copper, while the one between the arrows represents its quantity currently bid or offered by your faction - use the arrows to change it.")
					Tip("Workers and Food", "Food is stored in each province. Once 2000 is accumulated, a new worker is created.")
				elseif (GrandStrategyInterfaceState == "barracks") then
					Tip("Barracks Interface", "Here you can recruit new units. The number on each unit icon represents how many units of that type are present in the province, while the number between the arrows represents how many are currently being trained. Use the arrows to change the quantity of units being trained.")
				elseif (GrandStrategyInterfaceState == "lumber-mill") then
					Tip("Lumber Mill Interface", "Here you can research some new technologies. Click on a technology's icon to research it. You can only research one technology in a given turn. The presence of a lumber mill in a province increases its lumber output by 25%.")
				elseif (GrandStrategyInterfaceState == "smithy") then
					Tip("Smithy Interface", "Here you can research some new technologies. Click on a technology's icon to research it. You can only research one technology in a given turn.")
				elseif (GrandStrategyInterfaceState == "stables") then
				elseif (GrandStrategyInterfaceState == "temple") then
				elseif (GrandStrategyInterfaceState == "dock") then
				elseif (GrandStrategyInterfaceState == "mercenary-camp") then
					Tip("Mercenary Camp Interface", "Here you can recruit thief units as you would normal units, as well as hire unique mercenary squads.")
				end
			elseif (GetProvinceOwner(SelectedProvince.Name) ~= "" and GrandStrategyInterfaceState == "Diplomacy") then
				Tip("Diplomacy Interface", "This is a foreign province. Here you can declare war against this province's owner, or offer peace if you are currently at war.")
			end
		end				
	end
end

function AIDoTurn(ai_faction)
	
	AIConsiderOffers(ai_faction)

	for province_i, key in ipairs(ai_faction.OwnedProvinces) do
		local faction = ""
		if (ai_faction.Civilization == GetProvinceCivilization(WorldMapProvinces[key].Name)) then
			faction = ai_faction.Name
		end
	
		-- try to first research masonry, then writing, then coinage, and only then try to research other technologies
		if (GetFactionClassUnitType("masonry", GetProvinceCivilization(WorldMapProvinces[key].Name), faction) ~= nil and CanResearchTechnology(WorldMapProvinces[key], GetFactionClassUnitType("masonry", GetProvinceCivilization(WorldMapProvinces[key].Name), faction))) then
			ResearchTechnology(WorldMapProvinces[key], GetFactionClassUnitType("masonry", GetProvinceCivilization(WorldMapProvinces[key].Name), faction))
		end
		if (GetFactionClassUnitType("writing", GetProvinceCivilization(WorldMapProvinces[key].Name), faction) ~= nil and CanResearchTechnology(WorldMapProvinces[key], GetFactionClassUnitType("writing", GetProvinceCivilization(WorldMapProvinces[key].Name), faction))) then
			ResearchTechnology(WorldMapProvinces[key], GetFactionClassUnitType("writing", GetProvinceCivilization(WorldMapProvinces[key].Name), faction))
		end
		if (GetFactionClassUnitType("coinage", GetProvinceCivilization(WorldMapProvinces[key].Name), faction) ~= nil and CanResearchTechnology(WorldMapProvinces[key], GetFactionClassUnitType("coinage", GetProvinceCivilization(WorldMapProvinces[key].Name), faction))) then
			ResearchTechnology(WorldMapProvinces[key], GetFactionClassUnitType("coinage", GetProvinceCivilization(WorldMapProvinces[key].Name), faction))
		end
		if (GetFactionClassUnitType("wood-plow", GetProvinceCivilization(WorldMapProvinces[key].Name), faction) ~= nil and CanResearchTechnology(WorldMapProvinces[key], GetFactionClassUnitType("wood-plow", GetProvinceCivilization(WorldMapProvinces[key].Name), faction))) then
			ResearchTechnology(WorldMapProvinces[key], GetFactionClassUnitType("wood-plow", GetProvinceCivilization(WorldMapProvinces[key].Name), faction))
		end
		if (GetFactionClassUnitType("iron-tipped-wood-plow", GetProvinceCivilization(WorldMapProvinces[key].Name), faction) ~= nil and CanResearchTechnology(WorldMapProvinces[key], GetFactionClassUnitType("iron-tipped-wood-plow", GetProvinceCivilization(WorldMapProvinces[key].Name), faction))) then
			ResearchTechnology(WorldMapProvinces[key], GetFactionClassUnitType("iron-tipped-wood-plow", GetProvinceCivilization(WorldMapProvinces[key].Name), faction))
		end
		for i, unitName in ipairs(Units) do
			if (string.find(unitName, "upgrade-") ~= nil) then
				if (CanResearchTechnology(WorldMapProvinces[key], unitName)) then
--					if (GetUpgradeData(unitName, "Class") == "melee-weapon-1") then
						ResearchTechnology(WorldMapProvinces[key], unitName)
						break
--					end
				end
			end
		end

		for i, unitName in ipairs(Units) do
			if (IsGrandStrategyBuilding(unitName)) then
				if (CanBuildStructure(WorldMapProvinces[key], unitName)) then
					if (GetUnitTypeData(unitName, "Class") == "town-hall") then
						BuildStructure(WorldMapProvinces[key], unitName)
						break
					elseif (GetUnitTypeData(unitName, "Class") == "stronghold") then
						BuildStructure(WorldMapProvinces[key], unitName)
						break
					elseif (GetUnitTypeData(unitName, "Class") == "barracks") then
						BuildStructure(WorldMapProvinces[key], unitName)
						break
					elseif (GetUnitTypeData(unitName, "Class") == "lumber-mill" and (ProvinceHasBuildingClass(WorldMapProvinces[key].Name, "barracks") or ProvinceHasResource(WorldMapProvinces[key].Name, "lumber", false) or GetFactionBuildingTypeCount(ai_faction, "lumber-mill") == 0)) then
						BuildStructure(WorldMapProvinces[key], unitName)
						break
					elseif (GetUnitTypeData(unitName, "Class") == "smithy" and ((ProvinceHasBuildingClass(WorldMapProvinces[key].Name, "barracks") and ProvinceHasBuildingClass(WorldMapProvinces[key].Name, "lumber-mill")) or GetFactionBuildingTypeCount(ai_faction, "smithy") == 0)) then -- it only makes sense to build more than one smithy if it is to make ballistas available in a province
						BuildStructure(WorldMapProvinces[key], unitName)
						break
					elseif (GetUnitTypeData(unitName, "Class") == "temple" and ProvinceHasBuildingClass(WorldMapProvinces[key].Name, "smithy") and ProvinceHasBuildingClass(WorldMapProvinces[key].Name, "lumber-mill")) then -- build temples after other research buildings
						BuildStructure(WorldMapProvinces[key], unitName)
						break
					elseif (GetUnitTypeData(unitName, "Class") == "stables" and ((ProvinceHasBuildingClass(WorldMapProvinces[key].Name, "barracks") and ProvinceHasBuildingClass(WorldMapProvinces[key].Name, "smithy")) or GetFactionBuildingTypeCount(ai_faction, "stables") == 0)) then -- it only makes sense to build more than one stables if it is to make cavalry available in a province
						BuildStructure(WorldMapProvinces[key], unitName)
						break
					elseif (GetUnitTypeData(unitName, "Class") == "dock") then
						BuildStructure(WorldMapProvinces[key], unitName)
						break
					end
				end
			end
		end
	end

	-- conduct attacks and build military units
	local base_military_score = 740 -- 8 infantry, 4 shooters and 1 siege engine
	if (FactionHasTechnologyType(ai_faction, "melee-weapon-1")) then
		base_military_score = base_military_score + 80
	end
	if (FactionHasTechnologyType(ai_faction, "melee-weapon-2")) then
		base_military_score = base_military_score + 80
	end
	if (FactionHasTechnologyType(ai_faction, "bronze-shield")) then
		base_military_score = base_military_score + 80
	end
	if (FactionHasTechnologyType(ai_faction, "iron-shield")) then
		base_military_score = base_military_score + 80
	end
	if (FactionHasTechnologyType(ai_faction, "ranged-projectile-1")) then
		base_military_score = base_military_score + 40
	end
	if (FactionHasTechnologyType(ai_faction, "ranged-projectile-2")) then
		base_military_score = base_military_score + 40
	end
	if (FactionHasTechnologyType(ai_faction, "siege-projectile-1")) then
		base_military_score = base_military_score + 10
	end
	if (FactionHasTechnologyType(ai_faction, "siege-projectile-2")) then
		base_military_score = base_military_score + 10
	end
	
	for province_i, key in ipairs(ai_faction.OwnedProvinces) do
		local desired_infantry_in_province = 6
		local desired_archers_in_province = 3
		local desired_cavalry_in_province = 2
		local desired_catapults_in_province = 1
		local desired_flying_riders_in_province = 1

		local borders_foreign = false

		for second_i, second_key in ipairs(WorldMapProvinces[key].BorderProvinces) do
			if ((WorldMapProvinces[second_key] ~= nil and GetProvinceOwner(WorldMapProvinces[second_key].Name) ~= ai_faction.Name) or WorldMapWaterProvinces[second_key] ~= nil) then
				if (WorldMapProvinces[second_key] ~= nil and GetGrandStrategyProvinceData(WorldMapProvinces[second_key].Name, "Water") == false) then
					if (GetGrandStrategyProvinceData(WorldMapProvinces[key].Name, "CanAttackProvince", WorldMapProvinces[second_key].Name) or GetProvinceAttackedBy(WorldMapProvinces[key].Name) ~= "" or AtPeace(ai_faction)) then
						borders_foreign = true -- when at war, only set borders_foreign to provinces actually threatened by the enemy, or from which an attack on an enemy can be staged (when at peace, take into account the forces of factions with whom this ai faction is at peace too for that)
					end
					if (GetProvinceAttackedBy(WorldMapProvinces[key].Name) == "" and GetGrandStrategyProvinceData(WorldMapProvinces[key].Name, "CanAttackProvince", WorldMapProvinces[second_key].Name)) then -- don't attack from this province if it is already being attacked
						if (round(GetProvinceMilitaryScore(WorldMapProvinces[second_key].Name, false, true) * 3 / 2) < GetProvinceMilitaryScore(WorldMapProvinces[key].Name, false, false)) then -- only attack if military score is 150% or greater of that of the province to be attacked
							local province_threatened = false
							for third_i, third_key in ipairs(WorldMapProvinces[key].BorderProvinces) do
								if (WorldMapProvinces[third_key] ~= nil and GetProvinceOwner(WorldMapProvinces[third_key].Name) ~= ai_faction.Name and GetProvinceOwner(WorldMapProvinces[third_key].Name) ~= "" and GetGrandStrategyProvinceData(WorldMapProvinces[third_key].Name, "Water") == false and GetGrandStrategyProvinceData(WorldMapProvinces[third_key].Name, "CanAttackProvince", WorldMapProvinces[key].Name)) then
									if (GetProvinceMilitaryScore(WorldMapProvinces[key].Name, false, true) < GetProvinceMilitaryScore(WorldMapProvinces[third_key].Name, false, false)) then
										province_threatened = true
									end
								end
							end
							if (province_threatened == false) then
								SetProvinceAttackedBy(WorldMapProvinces[second_key].Name, ai_faction.Civilization, ai_faction.Name)
								for i, unitName in ipairs(Units) do
									if (IsOffensiveMilitaryUnit(unitName)) then
										SetProvinceAttackingUnitQuantity(WorldMapProvinces[second_key].Name, unitName, GetProvinceAttackingUnitQuantity(WorldMapProvinces[second_key].Name, unitName) + GetProvinceUnitQuantity(WorldMapProvinces[key].Name, unitName) - round(GetProvinceUnitQuantity(WorldMapProvinces[key].Name, unitName) * 1 / 4)) -- leave 1/4th of the province's forces as a defense
										SetProvinceUnitQuantity(WorldMapProvinces[key].Name, unitName, round(GetProvinceUnitQuantity(WorldMapProvinces[key].Name, unitName) * 1 / 4))
									end
								end
							end
						end
					end
					local new_desired_infantry_in_province = 0
					local new_desired_archers_in_province = 0
					local new_desired_cavalry_in_province = 0
					local new_desired_catapults_in_province = 0
					local new_desired_flying_riders_in_province = 0
					if (GetProvinceMilitaryScore(WorldMapProvinces[second_key].Name, false, true) > 0) then
						new_desired_infantry_in_province = round(desired_infantry_in_province * (GetProvinceMilitaryScore(WorldMapProvinces[second_key].Name, false, true) * 3 / 2) / base_military_score)
						new_desired_archers_in_province = round(desired_archers_in_province * (GetProvinceMilitaryScore(WorldMapProvinces[second_key].Name, false, true) * 3 / 2) / base_military_score)
						new_desired_cavalry_in_province = round(desired_cavalry_in_province * (GetProvinceMilitaryScore(WorldMapProvinces[second_key].Name, false, true) * 3 / 2) / base_military_score)
						new_desired_catapults_in_province = round(desired_catapults_in_province * (GetProvinceMilitaryScore(WorldMapProvinces[second_key].Name, false, true) * 3 / 2) / base_military_score)
						new_desired_flying_riders_in_province = round(desired_flying_riders_in_province * (GetProvinceMilitaryScore(WorldMapProvinces[second_key].Name, false, true) * 3 / 2) / base_military_score)
					end
					if (new_desired_infantry_in_province > desired_infantry_in_province) then
						desired_infantry_in_province = new_desired_infantry_in_province
					end
					if (new_desired_archers_in_province > desired_archers_in_province) then
						desired_archers_in_province = new_desired_archers_in_province
					end
					if (new_desired_cavalry_in_province > desired_cavalry_in_province) then
						desired_cavalry_in_province = new_desired_cavalry_in_province
					end
					if (new_desired_catapults_in_province > desired_catapults_in_province) then
						desired_catapults_in_province = new_desired_catapults_in_province
					end
					if (new_desired_flying_riders_in_province > desired_flying_riders_in_province) then
						desired_flying_riders_in_province = new_desired_flying_riders_in_province
					end
				end
			end
		end
		
		if (borders_foreign == false and ProvinceHasBuildingClass(WorldMapProvinces[key].Name, "dock")) then -- only look for potential targets through water if no targets connected by land exist
			local secondary_border_provinces_through_water = GetProvinceSecondaryBorderProvincesThroughWater(WorldMapProvinces[key])
			for second_i, second_key in ipairs(secondary_border_provinces_through_water) do
				if ((WorldMapProvinces[second_key] ~= nil and GetProvinceOwner(WorldMapProvinces[second_key].Name) ~= ai_faction.Name) or WorldMapWaterProvinces[second_key] ~= nil) then
					if (WorldMapProvinces[second_key] ~= nil and GetGrandStrategyProvinceData(WorldMapProvinces[second_key].Name, "Water") == false) then
						if (GetGrandStrategyProvinceData(WorldMapProvinces[key].Name, "CanAttackProvince", WorldMapProvinces[second_key].Name) or GetProvinceAttackedBy(WorldMapProvinces[key].Name) ~= "" or AtPeace(ai_faction)) then
							borders_foreign = true -- when at war, only set borders_foreign to provinces actually threatened by the enemy, or from which an attack on an enemy can be staged (when at peace, take into account the forces of factions with whom this ai faction is at peace too for that)
						end
						if (GetProvinceAttackedBy(WorldMapProvinces[key].Name) == "" and GetGrandStrategyProvinceData(WorldMapProvinces[key].Name, "CanAttackProvince", WorldMapProvinces[second_key].Name)) then -- don't attack from this province if it is already being attacked
							if (round(GetProvinceMilitaryScore(WorldMapProvinces[second_key].Name, false, true) * 3 / 2) < GetProvinceMilitaryScore(WorldMapProvinces[key].Name, false, false)) then -- only attack if military score is 150% or greater of that of the province to be attacked
								local province_threatened = false
								for third_i, third_key in ipairs(WorldMapProvinces[key].BorderProvinces) do
									if (WorldMapProvinces[third_key] ~= nil and GetProvinceOwner(WorldMapProvinces[third_key].Name) ~= ai_faction.Name and GetProvinceOwner(WorldMapProvinces[third_key].Name) ~= "" and GetGrandStrategyProvinceData(WorldMapProvinces[third_key].Name, "Water") == false and GetGrandStrategyProvinceData(WorldMapProvinces[third_key].Name, "CanAttackProvince", WorldMapProvinces[key].Name)) then
										if (GetProvinceMilitaryScore(WorldMapProvinces[key].Name, false, true) < GetProvinceMilitaryScore(WorldMapProvinces[third_key].Name, false, false)) then
											province_threatened = true
										end
									end
								end
								if (province_threatened == false) then
									SetProvinceAttackedBy(WorldMapProvinces[second_key].Name, ai_faction.Civilization, ai_faction.Name)
									for i, unitName in ipairs(Units) do
										if (IsOffensiveMilitaryUnit(unitName)) then
											SetProvinceAttackingUnitQuantity(WorldMapProvinces[second_key].Name, unitName, GetProvinceAttackingUnitQuantity(WorldMapProvinces[second_key].Name, unitName) + GetProvinceUnitQuantity(WorldMapProvinces[key].Name, unitName) - round(GetProvinceUnitQuantity(WorldMapProvinces[key].Name, unitName) * 1 / 4)) -- leave 1/4th of the province's forces as a defense
											SetProvinceUnitQuantity(WorldMapProvinces[key].Name, unitName, round(GetProvinceUnitQuantity(WorldMapProvinces[key].Name, unitName) * 1 / 4))
										end
									end
								end
							end
						end
						local new_desired_infantry_in_province = 0
						local new_desired_archers_in_province = 0
						local new_desired_cavalry_in_province = 0
						local new_desired_catapults_in_province = 0
						local new_desired_flying_riders_in_province = 0
						if (GetProvinceMilitaryScore(WorldMapProvinces[second_key].Name, false, true) > 0) then
							new_desired_infantry_in_province = round(desired_infantry_in_province * (GetProvinceMilitaryScore(WorldMapProvinces[second_key].Name, false, true) * 3 / 2) / base_military_score)
							new_desired_archers_in_province = round(desired_archers_in_province * (GetProvinceMilitaryScore(WorldMapProvinces[second_key].Name, false, true) * 3 / 2) / base_military_score)
							new_desired_cavalry_in_province = round(desired_cavalry_in_province * (GetProvinceMilitaryScore(WorldMapProvinces[second_key].Name, false, true) * 3 / 2) / base_military_score)
							new_desired_catapults_in_province = round(desired_catapults_in_province * (GetProvinceMilitaryScore(WorldMapProvinces[second_key].Name, false, true) * 3 / 2) / base_military_score)
							new_desired_flying_riders_in_province = round(desired_flying_riders_in_province * (GetProvinceMilitaryScore(WorldMapProvinces[second_key].Name, false, true) * 3 / 2) / base_military_score)
						end
						if (new_desired_infantry_in_province > desired_infantry_in_province) then
							desired_infantry_in_province = new_desired_infantry_in_province
						end
						if (new_desired_archers_in_province > desired_archers_in_province) then
							desired_archers_in_province = new_desired_archers_in_province
						end
						if (new_desired_cavalry_in_province > desired_cavalry_in_province) then
							desired_cavalry_in_province = new_desired_cavalry_in_province
						end
						if (new_desired_catapults_in_province > desired_catapults_in_province) then
							desired_catapults_in_province = new_desired_catapults_in_province
						end
						if (new_desired_flying_riders_in_province > desired_flying_riders_in_province) then
							desired_flying_riders_in_province = new_desired_flying_riders_in_province
						end
					end
				end
			end
		end
	
		for second_i, second_key in ipairs(ai_faction.DisembarkmentProvinces) do
			if (WorldMapProvinces[second_key] ~= nil and GetProvinceOwner(WorldMapProvinces[second_key].Name) ~= ai_faction.Name) then
				if (WorldMapProvinces[second_key] ~= nil and GetGrandStrategyProvinceData(WorldMapProvinces[second_key].Name, "Water") == false) then
					if (GetProvinceAttackedBy(WorldMapProvinces[key].Name) == "" and GetGrandStrategyProvinceData(WorldMapProvinces[key].Name, "CanAttackProvince", WorldMapProvinces[second_key].Name)) then -- don't attack from this province if it is already being attacked
						borders_foreign = true
						if (round(GetProvinceMilitaryScore(WorldMapProvinces[second_key].Name, false, true) * 3 / 2) < GetProvinceMilitaryScore(WorldMapProvinces[key].Name, false, false)) then -- only attack if military score is 150% or greater of that of the province to be attacked
							local province_threatened = false
							for third_i, third_key in ipairs(WorldMapProvinces[key].BorderProvinces) do
								if (WorldMapProvinces[third_key] ~= nil and GetProvinceOwner(WorldMapProvinces[third_key].Name) ~= ai_faction.Name and GetProvinceOwner(WorldMapProvinces[third_key].Name) ~= "" and GetGrandStrategyProvinceData(WorldMapProvinces[third_key].Name, "Water") == false and GetGrandStrategyProvinceData(WorldMapProvinces[third_key].Name, "CanAttackProvince", WorldMapProvinces[key].Name)) then
									if (GetProvinceMilitaryScore(WorldMapProvinces[key].Name, false, true) < GetProvinceMilitaryScore(WorldMapProvinces[third_key].Name, false, false)) then
										province_threatened = true
									end
								end
							end
							if (province_threatened == false) then
								SetProvinceAttackedBy(WorldMapProvinces[second_key].Name, ai_faction.Civilization, ai_faction.Name)
								for i, unitName in ipairs(Units) do
									if (IsOffensiveMilitaryUnit(unitName)) then
										SetProvinceAttackingUnitQuantity(WorldMapProvinces[second_key].Name, unitName, GetProvinceAttackingUnitQuantity(WorldMapProvinces[second_key].Name, unitName) + GetProvinceUnitQuantity(WorldMapProvinces[key].Name, unitName) - round(GetProvinceUnitQuantity(WorldMapProvinces[key].Name, unitName) * 1 / 4)) -- leave 1/4th of the province's forces as a defense
										SetProvinceUnitQuantity(WorldMapProvinces[key].Name, unitName, round(GetProvinceUnitQuantity(WorldMapProvinces[key].Name, unitName) * 1 / 4))
									end
								end
							end
						end
					end
					local new_desired_infantry_in_province = 0
					local new_desired_archers_in_province = 0
					local new_desired_cavalry_in_province = 0
					local new_desired_catapults_in_province = 0
					local new_desired_flying_riders_in_province = 0
					if (GetProvinceMilitaryScore(WorldMapProvinces[second_key].Name, false, true) > 0) then
						new_desired_infantry_in_province = round(desired_infantry_in_province * (GetProvinceMilitaryScore(WorldMapProvinces[second_key].Name, false, true) * 3 / 2) / base_military_score)
						new_desired_archers_in_province = round(desired_archers_in_province * (GetProvinceMilitaryScore(WorldMapProvinces[second_key].Name, false, true) * 3 / 2) / base_military_score)
						new_desired_cavalry_in_province = round(desired_cavalry_in_province * (GetProvinceMilitaryScore(WorldMapProvinces[second_key].Name, false, true) * 3 / 2) / base_military_score)
						new_desired_catapults_in_province = round(desired_catapults_in_province * (GetProvinceMilitaryScore(WorldMapProvinces[second_key].Name, false, true) * 3 / 2) / base_military_score)
						new_desired_flying_riders_in_province = round(desired_flying_riders_in_province * (GetProvinceMilitaryScore(WorldMapProvinces[second_key].Name, false, true) * 3 / 2) / base_military_score)
					end
					if (new_desired_infantry_in_province > desired_infantry_in_province) then
						desired_infantry_in_province = new_desired_infantry_in_province
					end
					if (new_desired_archers_in_province > desired_archers_in_province) then
						desired_archers_in_province = new_desired_archers_in_province
					end
					if (new_desired_cavalry_in_province > desired_cavalry_in_province) then
						desired_cavalry_in_province = new_desired_cavalry_in_province
					end
					if (new_desired_catapults_in_province > desired_catapults_in_province) then
						desired_catapults_in_province = new_desired_catapults_in_province
					end
					if (new_desired_flying_riders_in_province > desired_flying_riders_in_province) then
						desired_flying_riders_in_province = new_desired_flying_riders_in_province
					end
				end
			end
		end

		if (
			borders_foreign == false
			or GetFactionBuildingTypeCount(ai_faction, "town-hall") < GetFactionProvinceCount(ai_faction)
			or ((GetFactionIncome(ai_faction.Civilization, ai_faction.Name, "copper") - GetFactionUpkeep(ai_faction.Civilization, ai_faction.Name)) < 100 and GetFactionResource(ai_faction.Civilization, ai_faction.Name, "copper") < 1500 * 4)
			or GetProvinceAvailableWorkersForTraining(WorldMapProvinces[key].Name) < 1
		) then -- don't build any military units if a province is lacking a town hall, if it doesn't border any non-owned provinces, or if net income is too small and copper reserves are too small; 800 is the highest copper cost a unit/building/technology can have
			desired_infantry_in_province = 0
			desired_archers_in_province = 0
			desired_cavalry_in_province = 0
			desired_catapults_in_province = 0
			desired_flying_riders_in_province = 0
		end

		for i, unitName in ipairs(Units) do
			if (IsMilitaryUnit(unitName)) then
				if (IsUnitAvailableForTraining(WorldMapProvinces[key], unitName)) then
					if (GetUnitTypeData(unitName, "Class") == "infantry" and desired_infantry_in_province > 0) then
						for j=1,desired_infantry_in_province do
							if ((GetProvinceUnitQuantity(WorldMapProvinces[key].Name, unitName) + GetProvinceUnderConstructionUnitQuantity(WorldMapProvinces[key].Name, unitName)) < desired_infantry_in_province and CanTrainUnit(WorldMapProvinces[key], unitName)) then
								TrainUnit(WorldMapProvinces[key], unitName)
							else
								break
							end
						end
					elseif (GetUnitTypeData(unitName, "Class") == "shooter" and desired_archers_in_province > 0) then
						for j=1,desired_archers_in_province do
							if ((GetProvinceUnitQuantity(WorldMapProvinces[key].Name, unitName) + GetProvinceUnderConstructionUnitQuantity(WorldMapProvinces[key].Name, unitName)) < desired_archers_in_province and CanTrainUnit(WorldMapProvinces[key], unitName)) then
								TrainUnit(WorldMapProvinces[key], unitName)
							else
								break
							end
						end
					elseif (GetUnitTypeData(unitName, "Class") == "cavalry" and desired_cavalry_in_province > 0) then
						for j=1,desired_cavalry_in_province do
							if ((GetProvinceUnitQuantity(WorldMapProvinces[key].Name, unitName) + GetProvinceUnderConstructionUnitQuantity(WorldMapProvinces[key].Name, unitName)) < desired_cavalry_in_province and CanTrainUnit(WorldMapProvinces[key], unitName)) then
								TrainUnit(WorldMapProvinces[key], unitName)
							else
								break
							end
						end
					elseif (GetUnitTypeData(unitName, "Class") == "siege-engine" and desired_catapults_in_province > 0) then
						for j=1,desired_catapults_in_province do
							if ((GetProvinceUnitQuantity(WorldMapProvinces[key].Name, unitName) + GetProvinceUnderConstructionUnitQuantity(WorldMapProvinces[key].Name, unitName)) < desired_catapults_in_province and CanTrainUnit(WorldMapProvinces[key], unitName)) then
								TrainUnit(WorldMapProvinces[key], unitName)
							else
								break
							end
						end
					elseif (GetUnitTypeData(unitName, "Class") == "flying-rider" and desired_flying_riders_in_province > 0) then
						for j=1,desired_flying_riders_in_province do
							if ((GetProvinceUnitQuantity(WorldMapProvinces[key].Name, unitName) + GetProvinceUnderConstructionUnitQuantity(WorldMapProvinces[key].Name, unitName)) < desired_flying_riders_in_province and CanTrainUnit(WorldMapProvinces[key], unitName)) then
								TrainUnit(WorldMapProvinces[key], unitName)
							else
								break
							end
						end
					end
				end

				if (borders_foreign == false and GetProvinceUnitQuantity(WorldMapProvinces[key].Name, unitName) > 0 and GetUnitTypeData(unitName, "Class") ~= "militia") then -- if this province borders no foreign provinces but has units in the province, move them out, unless they are militia units
					for second_province_i, second_key in ipairs(ai_faction.OwnedProvinces) do
						local second_province_borders_foreign = false
						for third_province_i, third_key in ipairs(WorldMapProvinces[second_key].BorderProvinces) do
							if ((WorldMapProvinces[third_key] ~= nil and GetProvinceOwner(WorldMapProvinces[third_key].Name) ~= ai_faction.Name) or (WorldMapWaterProvinces[third_key] ~= nil and GetProvinceOwner(WorldMapWaterProvinces[third_key].Name) ~= ai_faction.Name)) then
								if (WorldMapProvinces[third_key] ~= nil and GetGrandStrategyProvinceData(WorldMapProvinces[second_key].Name, "CanAttackProvince", WorldMapProvinces[third_key].Name) or GetProvinceAttackedBy(WorldMapProvinces[second_key].Name) ~= "" or AtPeace(ai_faction)) then
									second_province_borders_foreign = true -- when at war, only set borders_foreign to provinces actually threatened by the enemy, or from which an attack on an enemy can be staged (when at peace, take into account the forces of factions with whom this ai faction is at peace too for that)
									break
								end
							end
						end
						if (second_province_borders_foreign) then
							SetProvinceMovingUnitQuantity(WorldMapProvinces[second_key].Name, unitName, GetProvinceMovingUnitQuantity(WorldMapProvinces[second_key].Name, unitName) + GetProvinceUnitQuantity(WorldMapProvinces[key].Name, unitName))
							SetProvinceUnitQuantity(WorldMapProvinces[key].Name, unitName, 0)
							break
						end
					end
				end
			end
		end
	end

	SetFactionCommodityTrade(ai_faction.Civilization, ai_faction.Name, "lumber", 0)
	-- do trade
	if (GetFactionResource(ai_faction.Civilization, ai_faction.Name, "lumber") < 2400) then -- 2400 is the most a unit/building/technology costs in terms of lumber, so if lumber stored is lower than this quantity, bid for the difference
		SetFactionCommodityTrade(ai_faction.Civilization, ai_faction.Name, "lumber", - (2400 - GetFactionResource(ai_faction.Civilization, ai_faction.Name, "lumber")))
	elseif (GetFactionResource(ai_faction.Civilization, ai_faction.Name, "lumber") > 2400 * 2 and GetFactionIncome(ai_faction.Civilization, ai_faction.Name, "lumber") > 0) then -- if the AI has a regular lumber income, there's no need to keep a large quantity of it stored
		SetFactionCommodityTrade(ai_faction.Civilization, ai_faction.Name, "lumber", (GetFactionResource(ai_faction.Civilization, ai_faction.Name, "lumber") - 2400 * 2))
	elseif (GetFactionResource(ai_faction.Civilization, ai_faction.Name, "lumber") > 2400 * 4) then -- if the AI doesn't have a regular lumber income, then only sell if more lumber is stored
		SetFactionCommodityTrade(ai_faction.Civilization, ai_faction.Name, "lumber", (GetFactionResource(ai_faction.Civilization, ai_faction.Name, "lumber") - 2400 * 4))
	end

	SetFactionCommodityTrade(ai_faction.Civilization, ai_faction.Name, "stone", 0)
	-- do trade
	if (GetFactionResource(ai_faction.Civilization, ai_faction.Name, "stone") < 2400) then -- 2400 is the most a unit/building/technology costs in terms of lumber, so if lumber stored is lower than this quantity, bid for the difference
		SetFactionCommodityTrade(ai_faction.Civilization, ai_faction.Name, "stone", - (2400 - GetFactionResource(ai_faction.Civilization, ai_faction.Name, "stone")))
	elseif (GetFactionResource(ai_faction.Civilization, ai_faction.Name, "stone") > 2400 * 2 and GetFactionIncome(ai_faction.Civilization, ai_faction.Name, "stone") > 0) then -- if the AI has a regular stone income, there's no need to keep a large quantity of it stored
		SetFactionCommodityTrade(ai_faction.Civilization, ai_faction.Name, "stone", (GetFactionResource(ai_faction.Civilization, ai_faction.Name, "stone") - 2400 * 2))
	elseif (GetFactionResource(ai_faction.Civilization, ai_faction.Name, "stone") > 2400 * 4) then -- if the AI doesn't have a regular stone income, then only sell if more stone is stored
		SetFactionCommodityTrade(ai_faction.Civilization, ai_faction.Name, "stone", (GetFactionResource(ai_faction.Civilization, ai_faction.Name, "stone") - 2400 * 4))
	end
end

function AIDoDiplomacy(ai_faction)
	if (AtPeace(ai_faction)) then -- if at peace, see if there are any suitable targets to declare war on
		for province_i, key in ipairs(ai_faction.OwnedProvinces) do
			for second_i, second_key in ipairs(WorldMapProvinces[key].BorderProvinces) do
				if (WorldMapProvinces[second_key] ~= nil and GetProvinceOwner(WorldMapProvinces[second_key].Name) ~= ai_faction.Name and GetProvinceOwner(WorldMapProvinces[second_key].Name) ~= "" and GetGrandStrategyProvinceData(WorldMapProvinces[second_key].Name, "Water") == false and CanDeclareWar(ai_faction, GetFactionFromName(GetProvinceOwner(WorldMapProvinces[second_key].Name)))) then
					if (round(GetProvinceMilitaryScore(WorldMapProvinces[second_key].Name, false, true) * 3 / 2) < GetProvinceMilitaryScore(WorldMapProvinces[key].Name, false, false)) then -- only attack if military score is 150% or greater of that of the province to be attacked
						if (GetFactionDiplomacyState(ai_faction.Civilization, ai_faction.Name, GetFactionFromName(GetProvinceOwner(WorldMapProvinces[second_key].Name)).Civilization, GetProvinceOwner(WorldMapProvinces[second_key].Name)) ~= "war" and (GetFactionMilitaryScore(GetFactionFromName(GetProvinceOwner(WorldMapProvinces[second_key].Name))) * 4) < GetFactionMilitaryScore(ai_faction)) then -- only attack if military score is at least four times greater of that of the faction to be attacked
							DeclareWar(ai_faction.Name, GetProvinceOwner(WorldMapProvinces[second_key].Name))
						end
					end
				end
			end
		end
	end
	for key, value in pairs(Factions) do
		if (GetFactionDiplomacyState(ai_faction.Civilization, ai_faction.Name, Factions[key].Civilization, Factions[key].Name) == "war" and FactionHasBorderWith(ai_faction, Factions[key]) == false) then
			if (FactionHasSecondaryBorderWith(ai_faction, Factions[key]) == false) then
				OfferPeace(ai_faction.Name, Factions[key].Name)
			end
		end
	end
end

function AIConsiderOffers(ai_faction)
	for key, value in pairs(Factions) do
		if (GetFactionDiplomacyState(ai_faction.Civilization, ai_faction.Name, Factions[key].Civilization, Factions[key].Name) == "war" and GetFactionDiplomacyStateProposal(Factions[key].Civilization, Factions[key].Name, ai_faction.Civilization, ai_faction.Name) == "peace") then
			if (round(GetFactionMilitaryScore(ai_faction) * 3 / 2) < GetFactionMilitaryScore(Factions[key])) then -- accept peace if enemy's forces are 50% greater than own forces
				RespondPeaceOffer(Factions[key].Name, ai_faction.Name, true)
			elseif (FactionHasBorderWith(ai_faction, Factions[key]) == false and FactionHasSecondaryBorderThroughWaterWith(ai_faction, Factions[key]) == false) then -- accept peace if has no borders with enemy any longer (since ships aren't implemented yet)
				RespondPeaceOffer(Factions[key].Name, ai_faction.Name, true)
			else
				RespondPeaceOffer(Factions[key].Name, ai_faction.Name, false)
			end
		end
	end
end

function IsBuildingAvailable(province, unit_type)
	if (GetProvinceOwner(province.Name) == "") then
		return false
	end

	local faction = ""
	if (GetFactionFromName(GetProvinceOwner(province.Name)).Civilization == GetProvinceCivilization(province.Name)) then
		faction = GetProvinceOwner(province.Name)
	end
		
	if (
		GetGrandStrategyProvinceData(province.Name, "Water") == false
		and GetFactionClassUnitType(GetUnitTypeData(unit_type, "Class"), GetProvinceCivilization(province.Name), faction) ~= unit_type
		and GetUnitTypeData(unit_type, "Class") ~= "mercenary-camp"
	) then
		return false
	end

	if (GetUnitTypeData(unit_type, "Class") == "town-hall" and ProvinceHasBuildingClass(province.Name, "stronghold")) then -- if stronghold is built, town hall is no longer available for use
		return false
	end
	
	if (GetUnitTypeData(unit_type, "Class") == "dock" and province.Coastal == false) then -- only coastal provinces may build a dock
		return false
	end
	
	local has_required_technologies = true
	if (table.getn(GetUnitTypeRequiredTechnologies(unit_type, GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name))) > 0) then
		for i=1,table.getn(GetUnitTypeRequiredTechnologies(unit_type, GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name))) do
			if (GetFactionTechnology(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name), GetUnitTypeRequiredTechnologies(unit_type, GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name))[i]) == false) then
				has_required_technologies = false
			end
		end
	end
	if (has_required_technologies == false) then
		return false
	end
	
	local has_required_buildings = true
	if (table.getn(GetUnitTypeRequiredBuildings(unit_type, GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name))) > 0) then
		--[[
		for i=1,table.getn(GetUnitTypeRequiredBuildings(unit_type, GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name))) do
			if (GetProvinceSettlementBuilding(province.Name, GetUnitTypeRequiredBuildings(unit_type, GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name))[i]) == false) then
				has_required_buildings = false
			end
		end
		--]]
		for i=1,table.getn(GetUnitTypeRequiredBuildings(unit_type, GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name))) do
			if (ProvinceHasBuildingClass(province.Name, GetUnitTypeData(GetUnitTypeRequiredBuildings(unit_type, GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name))[i], "Class")) == false) then
				has_required_buildings = false
			end
		end
	end
	if (has_required_buildings == false) then
		return false
	end
	
	if (GetUnitTypeData(unit_type, "Class") == "mercenary-camp" and GetProvinceSettlementBuilding(province.Name, unit_type) == false) then -- mercenary camps are not buildable, so they are only "available" if already built
		return false
	end
	
	return true
end

function CanBuildStructure(province, unit_type)
	if (GetProvinceSettlementBuilding(province.Name, unit_type) or GetProvinceCurrentConstruction(province.Name) == unit_type) then -- can't build if already built or if under construction
		return false
	end

	if (
		GetFactionResource(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name), "copper") < GetFactionUnitCost(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name), unit_type, "copper")
		or GetFactionResource(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name), "lumber") < GetFactionUnitCost(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name), unit_type, "lumber")
		or GetFactionResource(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name), "stone") < GetFactionUnitCost(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name), unit_type, "stone")
	) then
		return false
	end
	
	return IsBuildingAvailable(province, unit_type)
end

function BuildStructure(province, unit_type)
	if (CanBuildStructure(province, unit_type)) then
		if (GetProvinceCurrentConstruction(province.Name) ~= "") then -- can only build one building at a time in a province, so if another one is already being built there, cancel that
			CancelBuildStructure(province, GetProvinceCurrentConstruction(province.Name))
		end

		SetProvinceCurrentConstruction(province.Name, unit_type)
		ChangeFactionResource(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name), "copper", - GetFactionUnitCost(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name), unit_type, "copper"))
		ChangeFactionResource(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name), "lumber", - GetFactionUnitCost(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name), unit_type, "lumber"))
		ChangeFactionResource(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name), "stone", - GetFactionUnitCost(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name), unit_type, "stone"))
	end
end

function CancelBuildStructure(province, unit_type)
	if (GetProvinceCurrentConstruction(province.Name) == unit_type) then
		SetProvinceCurrentConstruction(province.Name, "")
		ChangeFactionResource(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name), "copper", GetFactionUnitCost(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name), unit_type, "copper"))
		ChangeFactionResource(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name), "lumber", GetFactionUnitCost(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name), unit_type, "lumber"))
		ChangeFactionResource(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name), "stone", GetFactionUnitCost(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name), unit_type, "stone"))
	end
end

function CanTrainUnit(province, unit_type)
	if (
		GetFactionResource(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name), "copper") < GetFactionUnitCost(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name), unit_type, "copper")
		or GetFactionResource(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name), "lumber") < GetFactionUnitCost(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name), unit_type, "lumber")
		or GetFactionResource(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name), "stone") < GetFactionUnitCost(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name), unit_type, "stone")
		or (GetProvinceAvailableWorkersForTraining(province.Name) < 1 and GetUnitTypeData(unit_type, "Class") ~= "thief")
	) then
		return false
	end

	if (GetUnitTypeData(unit_type, "Class") == "thief" and GetFactionUnitTypeCount(GetFactionFromName(GetProvinceOwner(province.Name)), unit_type, true) >= 6) then -- only 6 regiments of a particular sort of thief can be had at a single time
		return false
	end

	return IsUnitAvailableForTraining(province, unit_type)
end

function IsUnitAvailableForTraining(province, unit_type)
	if (GetProvinceOwner(province.Name) == "") then
		return false
	end
	
	local faction = ""
	if (GetFactionFromName(GetProvinceOwner(province.Name)).Civilization == GetProvinceCivilization(province.Name)) then
		faction = GetProvinceOwner(province.Name)
	end

	if (
		GetFactionClassUnitType(GetUnitTypeData(unit_type, "Class"), GetProvinceCivilization(province.Name), faction) ~= unit_type
		and GetUnitTypeInterfaceState(unit_type) ~= "mercenary-camp"
	) then
		return false
	end
	
	if (ProvinceHasBuildingClass(province.Name, GetUnitTypeInterfaceState(unit_type)) == false) then
		return false
	end

	local has_required_buildings = true
	if (table.getn(GetUnitTypeRequiredBuildings(unit_type, GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name))) > 0) then
		--[[
		for i=1,table.getn(GetUnitTypeRequiredBuildings(unit_type, GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name))) do
			if (GetProvinceSettlementBuilding(province.Name, GetUnitTypeRequiredBuildings(unit_type, GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name))[i]) == false) then
				has_required_buildings = false
			end
		end
		--]]
		for i=1,table.getn(GetUnitTypeRequiredBuildings(unit_type, GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name))) do
			if (GetProvinceSettlementBuilding(province.Name, GetUnitTypeRequiredBuildings(unit_type, GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name))[i]) == false) then
				has_required_buildings = false
			end
		end
	end
	if (has_required_buildings == false) then
		return false
	end
	
	return true
end

function TrainUnit(province, unit_type)
	local faction = ""
	if (GetFactionFromName(GetProvinceOwner(province.Name)).Civilization == GetProvinceCivilization(province.Name)) then
		faction = GetProvinceOwner(province.Name)
	end

	if (CanTrainUnit(province, unit_type)) then
		SetProvinceUnderConstructionUnitQuantity(province.Name, unit_type, GetProvinceUnderConstructionUnitQuantity(province.Name, unit_type) + 1)
		ChangeFactionResource(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name), "copper", - GetFactionUnitCost(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name), unit_type, "copper"))
		ChangeFactionResource(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name), "lumber", - GetFactionUnitCost(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name), unit_type, "lumber"))
		ChangeFactionResource(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name), "stone", - GetFactionUnitCost(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name), unit_type, "stone"))
		if (GetUnitTypeData(unit_type, "Class") ~= "thief") then
			ChangeProvinceUnitQuantity(province.Name, GetFactionClassUnitType("worker", GetProvinceCivilization(province.Name), faction), -1)
		end
	end
end

function TrainUnitCancel(province, unit_type)
	local faction = ""
	if (GetFactionFromName(GetProvinceOwner(province.Name)).Civilization == GetProvinceCivilization(province.Name)) then
		faction = GetProvinceOwner(province.Name)
	end

	if (GetProvinceUnderConstructionUnitQuantity(province.Name, unit_type) >= 1) then
		SetProvinceUnderConstructionUnitQuantity(province.Name, unit_type, GetProvinceUnderConstructionUnitQuantity(province.Name, unit_type) - 1)
		ChangeFactionResource(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name), "copper", GetFactionUnitCost(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name), unit_type, "copper"))
		ChangeFactionResource(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name), "lumber", GetFactionUnitCost(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name), unit_type, "lumber"))
		ChangeFactionResource(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name), "stone", GetFactionUnitCost(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name), unit_type, "stone"))
		if (GetUnitTypeData(unit_type, "Class") ~= "thief") then
			ChangeProvinceUnitQuantity(province.Name, GetFactionClassUnitType("worker", GetProvinceCivilization(province.Name), faction), 1)
		end
	end
end

function CanHireMercenary(province, unit_type)
	local mercenary_quantity = MercenaryGroups[string.gsub(unit_type, "-", "_")]
	if (
		GetFactionResource(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetFactionFromName(GetProvinceOwner(province.Name)).Name, "copper") < (GetUnitTypeData(unit_type, "Costs", "copper") * mercenary_quantity)
		or GetFactionResource(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetFactionFromName(GetProvinceOwner(province.Name)).Name, "lumber") < (GetUnitTypeData(unit_type, "Costs", "lumber") * mercenary_quantity)
		or GetFactionResource(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetFactionFromName(GetProvinceOwner(province.Name)).Name, "stone") < (GetUnitTypeData(unit_type, "Costs", "stone") * mercenary_quantity)
	) then
		return false
	end

	return IsMercenaryAvailableForHiring(province, unit_type)
end

function IsMercenaryAvailableForHiring(province, unit_type)
	if (GetProvinceSettlementBuilding(province.Name, "unit-mercenary-camp") == false) then
		return false
	end
	
	if (MercenaryGroups[string.gsub(unit_type, "-", "_")] == nil) then
		return false
	end
	
	return true
end

function HireMercenary(province, unit_type)
	if (CanHireMercenary(province, unit_type)) then
		local mercenary_quantity = MercenaryGroups[string.gsub(unit_type, "-", "_")]
		SetProvinceUnderConstructionUnitQuantity(province.Name, unit_type, mercenary_quantity)
		ChangeFactionResource(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetFactionFromName(GetProvinceOwner(province.Name)).Name, "copper", - (GetUnitTypeData(unit_type, "Costs", "copper") * mercenary_quantity))
		ChangeFactionResource(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetFactionFromName(GetProvinceOwner(province.Name)).Name, "lumber", - (GetUnitTypeData(unit_type, "Costs", "lumber") * mercenary_quantity))
		ChangeFactionResource(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetFactionFromName(GetProvinceOwner(province.Name)).Name, "stone", - (GetUnitTypeData(unit_type, "Costs", "stone") * mercenary_quantity))
	end
end

function CancelHireMercenary(province, unit_type)
	if (GetProvinceUnderConstructionUnitQuantity(province.Name, unit_type) >= 1) then
		local mercenary_quantity = GetProvinceUnderConstructionUnitQuantity(province.Name, unit_type)
		SetProvinceUnderConstructionUnitQuantity(province.Name, unit_type, 0)
		ChangeFactionResource(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetFactionFromName(GetProvinceOwner(province.Name)).Name, "copper", (GetUnitTypeData(unit_type, "Costs", "copper") * mercenary_quantity))
		ChangeFactionResource(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetFactionFromName(GetProvinceOwner(province.Name)).Name, "lumber", (GetUnitTypeData(unit_type, "Costs", "lumber") * mercenary_quantity))
		ChangeFactionResource(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetFactionFromName(GetProvinceOwner(province.Name)).Name, "stone", (GetUnitTypeData(unit_type, "Costs", "stone") * mercenary_quantity))
	end
end

function UseBuilding(province, unit_type)
	GrandStrategyInterfaceState = GetUnitTypeData(unit_type, "Class")
end

function IsTechnologyAvailable(province, unit_type)
	if (GetFactionFromName(GetProvinceOwner(province.Name)).Civilization == GetProvinceCivilization(province.Name) and GetFactionClassUnitType(GetUpgradeData(unit_type, "Class"), GetProvinceCivilization(province.Name), GetProvinceOwner(province.Name)) ~= unit_type) then
		return false
	elseif (GetFactionFromName(GetProvinceOwner(province.Name)).Civilization ~= GetProvinceCivilization(province.Name) and GetCivilizationClassUnitType(GetUpgradeData(unit_type, "Class"), GetProvinceCivilization(province.Name)) ~= unit_type) then
		return false
	end

	if (GetProvinceOwner(province.Name) == "") then
		return false
	end

	if (GetFactionTechnology(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name), unit_type)) then -- can't research if already researched
		return false
	end

	local has_required_technologies = true
	if (table.getn(GetUnitTypeRequiredTechnologies(unit_type, GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name))) > 0) then
		for i=1,table.getn(GetUnitTypeRequiredTechnologies(unit_type, GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name))) do
			if (GetFactionTechnology(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name), GetUnitTypeRequiredTechnologies(unit_type, GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name))[i]) == false) then
				has_required_technologies = false
			end
		end
	end
	if (has_required_technologies == false) then
		return false
	end
	
	local has_required_buildings = true
	if (table.getn(GetUnitTypeRequiredBuildings(unit_type, GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name))) > 0) then
		--[[
		for i=1,table.getn(GetUnitTypeRequiredBuildings(unit_type, GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name))) do
			if (GetProvinceSettlementBuilding(province.Name, GetUnitTypeRequiredBuildings(unit_type, GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name))[i]) == false) then
				has_required_buildings = false
			end
		end
		--]]
		for i=1,table.getn(GetUnitTypeRequiredBuildings(unit_type, GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name))) do
			if (ProvinceHasBuildingClass(province.Name, GetUnitTypeData(GetUnitTypeRequiredBuildings(unit_type, GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name))[i], "Class")) == false) then
				has_required_buildings = false
			end
		end
	end
	if (has_required_buildings == false) then
		return false
	end
	
	return true
end

function CanResearchTechnology(province, unit_type)
	if (GetFactionResource(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetFactionFromName(GetProvinceOwner(province.Name)).Name, "copper") < CUpgrade:Get(unit_type).GrandStrategyCosts[1] or GetFactionResource(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetFactionFromName(GetProvinceOwner(province.Name)).Name, "lumber") < CUpgrade:Get(unit_type).GrandStrategyCosts[2] or GetFactionResource(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetFactionFromName(GetProvinceOwner(province.Name)).Name, "stone") < CUpgrade:Get(unit_type).GrandStrategyCosts[5] or GetFactionResource(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetFactionFromName(GetProvinceOwner(province.Name)).Name, "research") < CUpgrade:Get(unit_type).GrandStrategyCosts[7]) then
		return false
	end
	
	return IsTechnologyAvailable(province, unit_type)
end

function ResearchTechnology(province, unit_type)
	if (CanResearchTechnology(province, unit_type)) then
		if (GetFactionCurrentResearch(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name)) ~= "") then
			CancelResearchTechnology(province, GetFactionCurrentResearch(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name))) -- it doesn't matter that the province given here is this one and not the one used to originally set that technology to be researched, since the CancelResearchTechnology function only refers to the province's owner
		end

		SetFactionCurrentResearch(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name), unit_type)
		ChangeFactionResource(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetFactionFromName(GetProvinceOwner(province.Name)).Name, "copper", - CUpgrade:Get(unit_type).GrandStrategyCosts[1])
		ChangeFactionResource(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetFactionFromName(GetProvinceOwner(province.Name)).Name, "lumber", - CUpgrade:Get(unit_type).GrandStrategyCosts[2])
		ChangeFactionResource(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetFactionFromName(GetProvinceOwner(province.Name)).Name, "stone", - CUpgrade:Get(unit_type).GrandStrategyCosts[5])
		ChangeFactionResource(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetFactionFromName(GetProvinceOwner(province.Name)).Name, "research", - CUpgrade:Get(unit_type).GrandStrategyCosts[7])
	end
end

function CancelResearchTechnology(province, unit_type)
	if (GetFactionCurrentResearch(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name)) == unit_type) then
		SetFactionCurrentResearch(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetProvinceOwner(province.Name), "")
		ChangeFactionResource(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetFactionFromName(GetProvinceOwner(province.Name)).Name, "copper", CUpgrade:Get(unit_type).GrandStrategyCosts[1])
		ChangeFactionResource(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetFactionFromName(GetProvinceOwner(province.Name)).Name, "lumber", CUpgrade:Get(unit_type).GrandStrategyCosts[2])
		ChangeFactionResource(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetFactionFromName(GetProvinceOwner(province.Name)).Name, "stone", CUpgrade:Get(unit_type).GrandStrategyCosts[5])
		ChangeFactionResource(GetFactionFromName(GetProvinceOwner(province.Name)).Civilization, GetFactionFromName(GetProvinceOwner(province.Name)).Name, "research", CUpgrade:Get(unit_type).GrandStrategyCosts[7])
	end
end

function ClearGrandStrategyVariables()
	GrandStrategy = false
	GrandStrategyEventMap = false
	GrandStrategyBattle = false	
	WorldMapOffsetX = 0
	WorldMapOffsetY = 0
	GrandStrategyWorld = ""
	GrandStrategyYear = 0
	GrandStrategyMonth = 0
	GrandStrategyFaction = nil
	SelectedProvince = nil
	SelectedHero = ""
	Attacker = nil
	Defender = nil
	Factions = nil
	WorldMapProvinces = nil
	WorldMapProvinces = {}
	WorldMapWaterProvinces = nil
	WorldMapWaterProvinces = {}
	AttackedProvince = nil
	GrandStrategyInterfaceState = ""
	GrandStrategyCommodities = nil
	GrandStrategyEvents = nil
	MercenaryGroups = nil
	EventFaction = nil
	EventProvince = nil
	SecondEventProvince = nil
	CleanGrandStrategyGame()
	ProcessingEndTurn = nil
	GrandStrategyMapWidthIndent = 0
	GrandStrategyMapHeightIndent = 0
	GameResult = GameNoResult

	ClearGrandStrategyUIVariables()

	GrandStrategyMenu = nil
end

function ClearGrandStrategyUIVariables()
	if (UIElements ~= nil) then
		for i=1,table.getn(UIElements) do
			if (UIElements[i] ~= nil) then
				GrandStrategyMenu:remove(UIElements[i])
			end
		end
	end
	UIElements = nil
	
	if (GrandStrategyLabels ~= nil) then
		for i=1,table.getn(GrandStrategyLabels) do
			if (GrandStrategyLabels[i] ~= nil) then
				GrandStrategyMenu:remove(GrandStrategyLabels[i])
			end
		end
	end
	GrandStrategyLabels = nil
end

function GetFactionMilitaryScore(faction)
	local military_score = 0
	for province_i, key in ipairs(faction.OwnedProvinces) do
		military_score = military_score + GetProvinceMilitaryScore(WorldMapProvinces[key].Name, false, true)
	end
	return military_score
end

function DeclareWar(faction_from, faction_to)
	if (faction_from ~= "" and faction_to ~= "") then
		SetFactionDiplomacyState(GetFactionFromName(faction_from).Civilization, GetFactionFromName(faction_from).Name, GetFactionFromName(faction_to).Civilization, GetFactionFromName(faction_to).Name, "war")
	end

	if (faction_to == GrandStrategyFaction.Name) then -- if the player was declared war on, notify him
		GrandStrategyGamePaused = true
		local menu = WarGrandStrategyGameMenu(panel(1))
		menu:setDrawMenusUnder(true)

		menu:addLabel("War Declared!", 128, 11)

		local l = MultiLineLabel()
		l:setFont(Fonts["game"])
		l:setSize(228, 128)
		l:setLineWidth(228)
		menu:add(l, 14, 35)
		l:setCaption("My lord, the " .. GetFactionFullName(GetFactionFromName(faction_from).Civilization, faction_from) .. " has declared war upon us!")

		menu:addFullButton("~!OK", "o", 16, 248,
			function()
				GrandStrategyGamePaused = false
				menu:stop()
			end)

		menu:run()
	end
end

function OfferPeace(faction_from, faction_to)
	if (faction_from ~= "" and faction_to ~= "") then
		SetFactionDiplomacyStateProposal(GetFactionFromName(faction_from).Civilization, GetFactionFromName(faction_from).Name, GetFactionFromName(faction_to).Civilization, GetFactionFromName(faction_to).Name, "peace")
	end

	if (faction_to == GrandStrategyFaction.Name) then -- if the player was declared war on, notify him
		GrandStrategyGamePaused = true
		local menu = WarGrandStrategyGameMenu(panel(1))
		menu:setDrawMenusUnder(true)

		menu:addLabel("Peace Offered", 128, 11)

		local l = MultiLineLabel()
		l:setFont(Fonts["game"])
		l:setSize(228, 128)
		l:setLineWidth(228)
		menu:add(l, 14, 35)
		l:setCaption("My lord, the " .. GetFactionFullName(GetFactionFromName(faction_from).Civilization, faction_from) .. " has offered us peace. Shall we accept?")

		menu:addFullButton("~!Accept", "a", 16, 248 - (36 * 1),
			function()
				RespondPeaceOffer(faction_from, faction_to, true)
				GrandStrategyGamePaused = false
				menu:stop()
			end)
		menu:addFullButton("~!Reject", "r", 16, 248 - (36 * 0),
			function()
				RespondPeaceOffer(faction_from, faction_to, false)
				GrandStrategyGamePaused = false
				menu:stop()
			end)

		menu:run()
	end
end

function RespondPeaceOffer(faction_from, faction_to, accept)
	if (accept) then
		SetFactionDiplomacyState(GetFactionFromName(faction_from).Civilization, faction_from, GetFactionFromName(faction_to).Civilization, faction_to, "peace")
	end
	
	if (faction_from ~= GrandStrategyFaction.Name) then
		SetFactionDiplomacyStateProposal(GetFactionFromName(faction_from).Civilization, faction_from, GetFactionFromName(faction_to).Civilization, faction_to, "")
	end
end

function AtPeace(faction)
	for key, value in pairs(Factions) do
		if (GetFactionDiplomacyState(faction.Civilization, faction.Name, Factions[key].Civilization, Factions[key].Name) == "war") then
			return false
		end
	end

	return true
end

function WarGrandStrategyGameMenu(background)
	local menu = MenuScreen()

	if (background == nil) then
		menu:setOpaque(true)
		menu:setBaseColor(dark)
	else
		local bgg = CGraphic:New(background)
		bgg:Load()
		local bg = ImageWidget(bgg)
		menu:add(bg, 0, 0)
	end

	function menu:resize(w, h)
		menu:setSize(w, h)
		menu:setPosition((Video.Width - menu:getWidth()) / 2,
      (Video.Height - menu:getHeight()) / 2)
	end

	menu:resize(256, 288)

	AddMenuHelpers(menu)

	return menu
end

function CanTriggerEvent(faction, event)
	if (event.TriggeredOnly ~= nil and event.TriggeredOnly == true) then
		return false
	end
	
	if (event.Civilization ~= nil and event.Civilization ~= faction.Civilization) then
		return false
	end
	
	if (event.Faction ~= nil and Factions[event.Faction] ~= faction) then
		return false
	end
	
	if (event.FactionType ~= nil and event.FactionType ~= GetFactionData(faction.Civilization, faction.Name, "Type")) then
		return false
	end
	
	if (event.MinYear ~= nil and GrandStrategyYear < event.MinYear) then
		return false
	end
	
	if (event.MaxYear ~= nil and GrandStrategyYear > event.MaxYear) then
		return false
	end
	
	if (event.RequiredEvents ~= nil) then -- only works for non-persistent events
		for key, value in pairs(event.RequiredEvents) do
			if ((GrandStrategyEvents[key] == nil) ~= event.RequiredEvents[key]) then
				return false
			end
		end
	end
	
	if (event.RequiredEventsOr ~= nil) then -- only works for non-persistent events
		local required_events = false
		for key, value in pairs(event.RequiredEventsOr) do
			if ((GrandStrategyEvents[key] == nil) == event.RequiredEventsOr[key]) then
				required_events = true
			end
		end
		if (required_events == false) then
			return false
		end
	end
	
	if (event.Commodities ~= nil) then
		for key, value in pairs(event.Commodities) do
			if (GetFactionResource(faction.Civilization, faction.Name, string.lower(key)) < event.Commodities[key]) then
				return false
			end
		end
	end
	
	if (event.Provinces ~= nil) then
		for key, value in pairs(event.Provinces) do
			if ((GetProvinceOwner(WorldMapProvinces[key].Name) == faction.Name) ~= event.Provinces[key]) then
				return false
			end
		end
	end
	
	if (event.RandomChance ~= nil and SyncRand(100) >= event.RandomChance) then
		return false
	end
	
	if (event.Provinces ~= nil and event.SettlementBuildings ~= nil) then
		for key, value in pairs(event.Provinces) do
			for i, unitName in ipairs(Units) do
				if (IsGrandStrategyBuilding(unitName)) then
					if (event.SettlementBuildings[string.gsub(unitName, "-", "_")] ~= nil and event.Provinces[key] == true and GetProvinceOwner(WorldMapProvinces[key].Name) == faction.Name and GetProvinceSettlementBuilding(WorldMapProvinces[key].Name, unitName) ~= event.SettlementBuildings[string.gsub(unitName, "-", "_")]) then
						return false
					end
				end
			end
		end
	end

	if (event.Provinces ~= nil and event.Units ~= nil) then
		for key, value in pairs(event.Provinces) do
			for i, unitName in ipairs(Units) do
				if (event.Units[string.gsub(unitName, "-", "_")] ~= nil and event.Provinces[key] == true and GetProvinceOwner(WorldMapProvinces[key].Name) == faction.Name and GetProvinceUnitQuantity(WorldMapProvinces[key].Name, unitName) < event.Units[string.gsub(unitName, "-", "_")]) then
					return false
				end
			end
		end
	end

	if (event.Heroes ~= nil) then
		if (event.Provinces ~= nil and GetTableSize(event.Provinces) > 0) then
			for key, value in pairs(event.Provinces) do
				for second_key, second_value in pairs(event.Heroes) do
					if (event.Provinces[key] == true and GetProvinceOwner(WorldMapProvinces[key].Name) == faction.Name and (GetProvinceHero(WorldMapProvinces[key].Name, second_key) == 2 or GetProvinceHero(WorldMapProvinces[key].Name, second_key) == 4) ~= event.Heroes[second_key]) then
						return false
					end
				end
			end
		else -- if no provinces are specified, search in all of the faction's provinces
			for key, value in pairs(event.Heroes) do
				local has_hero = false
				for province_i, province_key in ipairs(faction.OwnedProvinces) do
					if (GetProvinceHero(WorldMapProvinces[province_key].Name, key) == 2) then
						has_hero = true
					end
				end
				if (has_hero ~= event.Heroes[key]) then
					return false
				end
			end
		end
	end

	if (event.SecondFaction ~= nil and GetFactionProvinceCount(Factions[event.SecondFaction]) == 0) then -- if the event's "second faction" doesn't exist, return false
		return false
	end	
	
	if (event.SecondProvinces ~= nil and event.SecondFaction ~= nil) then
		for key, value in pairs(event.SecondProvinces) do
			if ((GetProvinceOwner(WorldMapProvinces[key].Name) == Factions[event.SecondFaction].Name) ~= event.SecondProvinces[key]) then -- if the "second faction" holds these provinces
				return false
			end
		end
	end
		
	if (event.Conditions ~= nil) then
		return event.Conditions()
	end
	
	return true
end

function GrandStrategyEvent(faction, event)
	EventFaction = faction
	if (faction == GrandStrategyFaction) then
		GrandStrategyGamePaused = true
		local menu = WarGrandStrategyGameMenu(panel(5))
		menu:resize(352, 352)
		menu:setDrawMenusUnder(true)

		local event_name
		if (type(event) == "string") then
			event_name = event
		else
			event_name = event.Name
		end
		if (EventProvince ~= nil) then
			if (string.find(event_name, "PROVINCE_NAME") ~= nil) then
				event_name = string.gsub(event_name, "PROVINCE_NAME", GetProvinceName(EventProvince))
			end
			if (string.find(event_name, "PROVINCE_SETTLEMENT_NAME") ~= nil) then
				if (GetProvinceSettlementName(EventProvince) ~= nil) then
					event_name = string.gsub(event_name, "PROVINCE_SETTLEMENT_NAME", GetProvinceSettlementName(EventProvince))
				else
					event_name = string.gsub(event_name, "PROVINCE_SETTLEMENT_NAME", GetProvinceName(EventProvince) .. "'s capital")
				end
			end
			if (string.find(event_name, "CULTURE_NAME") ~= nil) then
				event_name = string.gsub(event_name, "CULTURE_NAME", GetCivilizationData(EventFaction.Civilization, "Adjective"))
			end
		end
		if (SecondEventProvince ~= nil) then
			if (string.find(event_name, "SECOND_PROVINCE_NAME") ~= nil) then
				event_name = string.gsub(event_name, "SECOND_PROVINCE_NAME", GetProvinceName(SecondEventProvince))
			end
		end
		menu:addLabel(event_name, 176, 11)

		local l = MultiLineLabel()
		l:setFont(Fonts["game"])
		l:setSize(324, 208)
		l:setLineWidth(324)
		if (event_icon == nil) then
			menu:add(l, 14, 76)
		else
			menu:add(l, 14, 112)
		end
		local event_description
		if (type(event) == "string") then
			event_description = GetGrandStrategyEventData(event, "Description")
		else
			event_description = event.Description
		end
		if (EventProvince ~= nil) then
			if (string.find(event_description, "PROVINCE_NAME") ~= nil) then
				event_description = string.gsub(event_description, "PROVINCE_NAME", GetProvinceName(EventProvince))
			end
			if (string.find(event_description, "PROVINCE_SETTLEMENT_NAME") ~= nil) then
				if (GetProvinceSettlementName(EventProvince) ~= nil) then
					event_description = string.gsub(event_description, "PROVINCE_SETTLEMENT_NAME", GetProvinceSettlementName(EventProvince))
				else
					event_description = string.gsub(event_description, "PROVINCE_SETTLEMENT_NAME", GetProvinceName(EventProvince) .. "'s capital")
				end
			end
			if (string.find(event_description, "CULTURE_NAME") ~= nil) then
				event_description = string.gsub(event_description, "CULTURE_NAME", GetCivilizationData(EventFaction.Civilization, "Adjective"))
			end
		end
		if (SecondEventProvince ~= nil) then
			if (string.find(event_description, "SECOND_PROVINCE_NAME") ~= nil) then
				event_description = string.gsub(event_description, "SECOND_PROVINCE_NAME", GetProvinceName(SecondEventProvince))
			end
		end
		l:setCaption(event_description)

		if (event_icon ~= nil) then
			event_icon = CGraphic:New(event_icon)
			event_icon:Load()
			local b = ImageWidget(event_icon)
			menu:add(b, 153, 48)
		end

		if (event_image ~= nil) then
			event_image = CGraphic:New(event_image)
			event_image:Load()
			local b = ImageWidget(event_image)
			menu:add(b, 0, 0)
		end

		local event_options
		local event_option_conditions = nil
		local event_option_tooltips
		if (type(event) == "string") then
			event_options = GetGrandStrategyEventData(event, "Options")
			event_option_tooltips = GetGrandStrategyEventData(event, "OptionTooltips")
		else
			event_options = event.Options
			event_option_conditions = event.OptionConditions
			event_option_tooltips = event.OptionTooltips
		end
		for i=1,table.getn(event_options) do
			local event_option_conditions_fulfilled
			if (type(event) == "string") then
				event_option_conditions_fulfilled = GetGrandStrategyEventData(event, "OptionCondition", i)
			else
				event_option_conditions_fulfilled = event_option_conditions == nil or table.getn(event_option_conditions) == 0 or event_option_conditions[i]()
			end
			
			if (event_option_conditions_fulfilled) then
				local option_hotkey = ""		
				if (string.find(event_options[i], "~!") ~= nil) then
					option_hotkey = string.sub(string.match(event_options[i], "~!%a"), 3)
					option_hotkey = string.lower(option_hotkey)
				end

				local b = menu:addFullButton(event_options[i], option_hotkey, 176 - (224 / 2), 352 - 40 * (table.getn(event_options) - (i - 1)),
					function(s)
						menu:stop()
						if (type(event) == "string") then
							GetGrandStrategyEventData(event, "OptionEffect", i)
						else
							event.OptionEffects[i]()
						end
						GameResult = GameNoResult -- this is because many events start scenarios
						CleanPlayers()
						SetPlayerData(GetThisPlayer(), "RaceName", GrandStrategyFaction.Civilization)
						GrandStrategyGamePaused = false
						
					end
				)
				if (event_option_tooltips ~= nil and event_option_tooltips[i] ~= nil) then
					local tooltip = event_option_tooltips[i]
					if (EventProvince ~= nil) then
						if (string.find(tooltip, "PROVINCE_NAME") ~= nil) then
							tooltip = string.gsub(tooltip, "PROVINCE_NAME", GetProvinceName(EventProvince))
						end
						if (string.find(tooltip, "PROVINCE_SETTLEMENT_NAME") ~= nil) then
							if (GetProvinceSettlementName(EventProvince) ~= nil) then
								tooltip = string.gsub(tooltip, "PROVINCE_SETTLEMENT_NAME", GetProvinceSettlementName(EventProvince))
							else
								tooltip = string.gsub(tooltip, "PROVINCE_SETTLEMENT_NAME", GetProvinceName(EventProvince) .. "'s capital")
							end
						end
						if (string.find(tooltip, "CULTURE_NAME") ~= nil) then
							tooltip = string.gsub(tooltip, "CULTURE_NAME", GetCivilizationData(EventFaction.Civilization, "Adjective"))
						end
					end
					b:setTooltip(tooltip)
				end
			end
		end
		
		if (table.getn(event_options) == 1) then -- for events with just one option, allow enter to be used as a way to close the event dialogue
			menu:addButton("", "return", -1, -1,
				function()
					menu:stop()
					if (type(event) == "string") then
						GetGrandStrategyEventData(event, "OptionEffect", 1)
					else
						event.OptionEffects[1]()
					end
					GameResult = GameNoResult -- this is because many events start scenarios
					CleanPlayers()
					SetPlayerData(GetThisPlayer(), "RaceName", GrandStrategyFaction.Civilization)
					GrandStrategyGamePaused = false
				end,
				{0, 0}
			)
		end

		menu:run()
	else
--		event.OptionEffects[SyncRand(table.getn(event.OptionEffects)) + 1]() -- AIs choose a random option
		if (type(event) == "string") then
			GetGrandStrategyEventData(event, "OptionEffect", 1)
		else
			event.OptionEffects[1]() -- AIs always choose the first option
		end
	end
	
	if (type(event) ~= "string") then
		if (event.Persistent == nil or event.Persistent == false) then
			for event_key, event_value in pairs(GrandStrategyEvents) do
				if (GrandStrategyEvents[event_key] == event) then
					GrandStrategyEvents[event_key] = nil
				end
			end
		end
	end
end

function DoEvents()
	-- process events
	for key, value in pairs(Factions) do
		if (GetFactionProvinceCount(Factions[key]) > 0) then
			for event_key, event_value in pairs(GrandStrategyEvents) do
				EventFaction = Factions[key]
				if (CanTriggerEvent(Factions[key], GrandStrategyEvents[event_key])) then
					GrandStrategyEvent(Factions[key], GrandStrategyEvents[event_key])
				end
				EventFaction = nil
				EventProvince = nil
				SecondEventProvince = nil
			end
		end
	end
end

function FormFactionLua(old_faction, new_faction)
	FormFaction(old_faction.Civilization, old_faction.Name, new_faction.Civilization, new_faction.Name)

	DrawGrandStrategyInterface()
end

function GetUnitTypeInterfaceState(unit_type)
	if (string.find(unit_type, "upgrade-") == nil) then
		if (GetUnitTypeData(unit_type, "Class") == "infantry") then
			return "barracks"
		elseif (GetUnitTypeData(unit_type, "Class") == "spearman") then
			return "barracks"
		elseif (GetUnitTypeData(unit_type, "Class") == "shooter") then
			return "barracks"
		elseif (GetUnitTypeData(unit_type, "Class") == "cavalry") then
			return "barracks"
		elseif (GetUnitTypeData(unit_type, "Class") == "siege-engine") then
			return "barracks"
		elseif (GetUnitTypeData(unit_type, "Class") == "priest") then
			return "temple"
--		elseif (GetUnitTypeData(unit_type, "Class") == "caravan") then
--			return "barracks"
		elseif (GetUnitTypeData(unit_type, "Class") == "glider") then
			return "barracks"
		elseif (GetUnitTypeData(unit_type, "Class") == "flying-rider") then
			return "barracks"
		elseif (GetUnitTypeData(unit_type, "Class") == "thief") then
			return "mercenary-camp"
		else
			return ""
		end
	else
		if (GetUpgradeData(unit_type, "Class") == "melee-weapon-1" or GetUpgradeData(unit_type, "Class") == "melee-weapon-2" or GetUpgradeData(unit_type, "Class") == "bronze-shield" or GetUpgradeData(unit_type, "Class") == "iron-shield" or GetUpgradeData(unit_type, "Class") == "siege-projectile-1" or GetUpgradeData(unit_type, "Class") == "siege-projectile-2") then
			return "smithy"
		elseif (GetUpgradeData(unit_type, "Class") == "long-spear" or GetUpgradeData(unit_type, "Class") == "pike" or GetUpgradeData(unit_type, "Class") == "ranged-projectile-1" or GetUpgradeData(unit_type, "Class") == "ranged-projectile-2" or GetUpgradeData(unit_type, "Class") == "wood-plow" or GetUpgradeData(unit_type, "Class") == "iron-tipped-wood-plow" or GetUpgradeData(unit_type, "Class") == "iron-plow" or GetUpgradeData(unit_type, "Class") == "masonry") then
			return "lumber-mill"
		elseif (GetUpgradeData(unit_type, "Class") == "coinage") then
			return "smithy"
		elseif (GetUpgradeData(unit_type, "Class") == "writing") then
			return "lumber-mill"
		elseif (GetUpgradeData(unit_type, "Class") == "alchemy") then
			return "smithy"
		else
			return ""
		end
	end
end

function GetUnitTypeRequiredBuildings(unit_type, owner_civilization, owner_faction)
	local civilization = ""
	if (string.find(unit_type, "upgrade-") == nil) then
		civilization = GetUnitTypeData(unit_type, "Civilization")
	else
		civilization = GetUpgradeData(unit_type, "Civilization")
	end
	local faction = ""
	if (civilization == owner_civilization) then
		faction = owner_faction
	end

	local required_buildings = {}
	if (string.find(unit_type, "upgrade-") == nil) then
		if (GetUnitTypeData(unit_type, "Class") == "infantry") then
			if (GetFactionClassUnitType("barracks", civilization, faction) ~= nil) then
				table.insert(required_buildings, GetFactionClassUnitType("barracks", civilization, faction))
			end
		elseif (GetUnitTypeData(unit_type, "Class") == "spearman") then
			if (GetFactionClassUnitType("barracks", civilization, faction) ~= nil) then
				table.insert(required_buildings, GetFactionClassUnitType("barracks", civilization, faction))
			end
		elseif (GetUnitTypeData(unit_type, "Class") == "shooter") then
			if (GetFactionClassUnitType("barracks", civilization, faction) ~= nil) then
				table.insert(required_buildings, GetFactionClassUnitType("barracks", civilization, faction))
			end
			if (GetFactionClassUnitType("lumber-mill", civilization, faction) ~= nil) then
				table.insert(required_buildings, GetFactionClassUnitType("lumber-mill", civilization, faction))
			end
		elseif (GetUnitTypeData(unit_type, "Class") == "cavalry") then
			if (GetFactionClassUnitType("barracks", civilization, faction) ~= nil) then
				table.insert(required_buildings, GetFactionClassUnitType("barracks", civilization, faction))
			end
			if (GetFactionClassUnitType("smithy", civilization, faction) ~= nil) then
				table.insert(required_buildings, GetFactionClassUnitType("smithy", civilization, faction))
			end
			if (GetFactionClassUnitType("stables", civilization, faction) ~= nil) then
				table.insert(required_buildings, GetFactionClassUnitType("stables", civilization, faction))
			end
		elseif (GetUnitTypeData(unit_type, "Class") == "siege-engine") then
			if (GetFactionClassUnitType("barracks", civilization, faction) ~= nil) then
				table.insert(required_buildings, GetFactionClassUnitType("barracks", civilization, faction))
			end
			if (GetFactionClassUnitType("lumber-mill", civilization, faction) ~= nil) then
				table.insert(required_buildings, GetFactionClassUnitType("lumber-mill", civilization, faction))
			end
			if (GetFactionClassUnitType("smithy", civilization, faction) ~= nil) then
				table.insert(required_buildings, GetFactionClassUnitType("smithy", civilization, faction))
			end
		elseif (GetUnitTypeData(unit_type, "Class") == "flying-rider") then
			if (GetFactionClassUnitType("stronghold", civilization, faction) ~= nil) then
				table.insert(required_buildings, GetFactionClassUnitType("stronghold", civilization, faction))
			end
			if (GetFactionClassUnitType("lumber-mill", civilization, faction) ~= nil) then
				table.insert(required_buildings, GetFactionClassUnitType("lumber-mill", civilization, faction))
			end
		elseif (GetUnitTypeData(unit_type, "Class") == "glider") then
			if (GetFactionClassUnitType("barracks", civilization, faction) ~= nil) then
				table.insert(required_buildings, GetFactionClassUnitType("barracks", civilization, faction))
			end
			if (GetFactionClassUnitType("lumber-mill", civilization, faction) ~= nil) then
				table.insert(required_buildings, GetFactionClassUnitType("lumber-mill", civilization, faction))
			end
		elseif (GetUnitTypeData(unit_type, "Class") == "barracks" or GetUnitTypeData(unit_type, "Class") == "lumber-mill" or GetUnitTypeData(unit_type, "Class") == "smithy") then
			if (GetFactionClassUnitType("town-hall", civilization, faction) ~= nil) then
				table.insert(required_buildings, GetFactionClassUnitType("town-hall", civilization, faction))
			end
		elseif (GetUnitTypeData(unit_type, "Class") == "stables") then
			if (GetFactionClassUnitType("town-hall", civilization, faction) ~= nil) then
				table.insert(required_buildings, GetFactionClassUnitType("town-hall", civilization, faction))
			end
			if (GetFactionClassUnitType("lumber-mill", civilization, faction) ~= nil) then
				table.insert(required_buildings, GetFactionClassUnitType("lumber-mill", civilization, faction))
			end
		elseif (GetUnitTypeData(unit_type, "Class") == "temple") then
			if (GetFactionClassUnitType("town-hall", civilization, faction) ~= nil) then
				table.insert(required_buildings, GetFactionClassUnitType("town-hall", civilization, faction))
			end
			if (GetFactionClassUnitType("lumber-mill", civilization, faction) ~= nil) then
				table.insert(required_buildings, GetFactionClassUnitType("lumber-mill", civilization, faction))
			end
		elseif (GetUnitTypeData(unit_type, "Class") == "stronghold") then
			if (GetFactionClassUnitType("town-hall", civilization, faction) ~= nil) then
				table.insert(required_buildings, GetFactionClassUnitType("town-hall", civilization, faction))
			end
			if (GetFactionClassUnitType("barracks", civilization, faction) ~= nil) then
				table.insert(required_buildings, GetFactionClassUnitType("barracks", civilization, faction))
			end
		elseif (GetUnitTypeData(unit_type, "Class") == "dock") then
			if (GetFactionClassUnitType("town-hall", civilization, faction) ~= nil) then
				table.insert(required_buildings, GetFactionClassUnitType("town-hall", civilization, faction))
			end
			if (GetFactionClassUnitType("lumber-mill", civilization, faction) ~= nil) then
				table.insert(required_buildings, GetFactionClassUnitType("lumber-mill", civilization, faction))
			end
		end
	else
		if (GetUpgradeData(unit_type, "Class") == "melee-weapon-1" or GetUpgradeData(unit_type, "Class") == "melee-weapon-2" or GetUpgradeData(unit_type, "Class") == "bronze-shield" or GetUpgradeData(unit_type, "Class") == "iron-shield") then
			if (GetFactionClassUnitType("smithy", civilization, faction) ~= nil) then
				table.insert(required_buildings, GetFactionClassUnitType("smithy", civilization, faction))
			end
		elseif (GetUpgradeData(unit_type, "Class") == "long-spear" or GetUpgradeData(unit_type, "Class") == "pike" or GetUpgradeData(unit_type, "Class") == "ranged-projectile-1" or GetUpgradeData(unit_type, "Class") == "ranged-projectile-2" or GetUpgradeData(unit_type, "Class") == "wood-plow" or GetUpgradeData(unit_type, "Class") == "iron-tipped-wood-plow" or GetUpgradeData(unit_type, "Class") == "iron-plow" or GetUpgradeData(unit_type, "Class") == "masonry") then
			if (GetFactionClassUnitType("lumber-mill", civilization, faction) ~= nil) then
				table.insert(required_buildings, GetFactionClassUnitType("lumber-mill", civilization, faction))
			end
		elseif (GetUpgradeData(unit_type, "Class") == "siege-projectile-1" or GetUpgradeData(unit_type, "Class") == "siege-projectile-2") then
			if (GetFactionClassUnitType("smithy", civilization, faction) ~= nil) then
				table.insert(required_buildings, GetFactionClassUnitType("smithy", civilization, faction))
			end
			if (GetFactionClassUnitType("lumber-mill", civilization, faction) ~= nil) then
				table.insert(required_buildings, GetFactionClassUnitType("lumber-mill", civilization, faction))
			end
		elseif (GetUpgradeData(unit_type, "Class") == "coinage") then
			if (GetFactionClassUnitType("smithy", civilization, faction) ~= nil) then
				table.insert(required_buildings, GetFactionClassUnitType("smithy", civilization, faction))
			end
			if (GetFactionClassUnitType("stronghold", civilization, faction) ~= nil) then
				table.insert(required_buildings, GetFactionClassUnitType("stronghold", civilization, faction))
			end
		elseif (GetUpgradeData(unit_type, "Class") == "writing") then
			if (GetFactionClassUnitType("stronghold", civilization, faction) ~= nil) then
				table.insert(required_buildings, GetFactionClassUnitType("stronghold", civilization, faction))
			end
		elseif (GetUpgradeData(unit_type, "Class") == "alchemy") then
			if (GetFactionClassUnitType("stronghold", civilization, faction) ~= nil) then
				table.insert(required_buildings, GetFactionClassUnitType("stronghold", civilization, faction))
			end
		end
	end
	return required_buildings
end

function GetUnitTypeRequiredTechnologies(unit_type, owner_civilization, owner_faction)
	local civilization = ""
	if (string.find(unit_type, "upgrade-") == nil) then
		civilization = GetUnitTypeData(unit_type, "Civilization")
	else
		civilization = GetUpgradeData(unit_type, "Civilization")
	end
	local faction = ""
	if (civilization == owner_civilization) then
		faction = owner_faction
	end

	local required_technologies = {}
	if (string.find(unit_type, "upgrade-") == nil) then
		if (GetUnitTypeData(unit_type, "Class") == "stronghold") then
			if (GetFactionClassUnitType("masonry", civilization, faction) ~= nil) then
				table.insert(required_technologies, GetFactionClassUnitType("masonry", civilization, faction))
			end
		end
	else
		if (GetUpgradeData(unit_type, "Class") == "melee-weapon-2") then
			if (GetFactionClassUnitType("melee-weapon-1", civilization, faction) ~= nil) then
				table.insert(required_technologies, GetFactionClassUnitType("melee-weapon-1", civilization, faction))
			end
		elseif (GetUpgradeData(unit_type, "Class") == "pike") then
			if (GetFactionClassUnitType("long-spear", civilization, faction) ~= nil) then
				table.insert(required_technologies, GetFactionClassUnitType("long-spear", civilization, faction))
			end
		elseif (GetUpgradeData(unit_type, "Class") == "iron-shield") then
			if (GetFactionClassUnitType("bronze-shield", civilization, faction) ~= nil) then
				table.insert(required_technologies, GetFactionClassUnitType("bronze-shield", civilization, faction))
			end
		elseif (GetUpgradeData(unit_type, "Class") == "ranged-projectile-2") then
			if (GetFactionClassUnitType("ranged-projectile-1", civilization, faction) ~= nil) then
				table.insert(required_technologies, GetFactionClassUnitType("ranged-projectile-1", civilization, faction))
			end
		elseif (GetUpgradeData(unit_type, "Class") == "siege-projectile-2") then
			if (GetFactionClassUnitType("siege-projectile-1", civilization, faction) ~= nil) then
				table.insert(required_technologies, GetFactionClassUnitType("siege-projectile-1", civilization, faction))
			end
		elseif (GetUpgradeData(unit_type, "Class") == "iron-tipped-wood-plow") then
			if (GetFactionClassUnitType("wood-plow", civilization, faction) ~= nil) then
				table.insert(required_technologies, GetFactionClassUnitType("wood-plow", civilization, faction))
			end
		elseif (GetUpgradeData(unit_type, "Class") == "alchemy") then
			if (GetFactionClassUnitType("writing", civilization, faction) ~= nil) then
				table.insert(required_technologies, GetFactionClassUnitType("writing", civilization, faction))
			end
		end
	end
	return required_technologies
end

function GrandStrategyGameSave(name)
	wyr[name] = {
		SavedGrandStrategyFactionName = GrandStrategyFaction.Name,
		SavedGrandStrategyYear = GrandStrategyYear,
		SavedGrandStrategyMonth = GrandStrategyMonth,
		SavedGrandStrategyWorld = GrandStrategyWorld,
		SavedWorldMapProvinces = WorldMapProvinces,
		SavedWorldMapWaterProvinces = WorldMapWaterProvinces,
		SavedFactions = Factions,
		SavedGrandStrategyCommodities = GrandStrategyCommodities,
		SavedMercenaryGroups = MercenaryGroups,
		SavedGrandStrategyEvents = {}
	}
	for key, value in pairs(GrandStrategyEvents) do
		table.insert(wyr[name].SavedGrandStrategyEvents, key)
	end
	
	SaveGrandStrategyGame(name)
	wyr[name] = nil
end

function EqualizeProvinceUnits(faction)
	for i, unitName in ipairs(Units) do
		if (IsMilitaryUnit(unitName)) then
			local unit_count = GetFactionUnitTypeCount(faction, unitName, false)
			if (unit_count > 0) then
				for province_i, province_key in ipairs(faction.OwnedProvinces) do
					SetProvinceUnitQuantity(WorldMapProvinces[province_key].Name, unitName, math.floor(unit_count / GetFactionProvinceCount(faction)))
				end
			end
			local new_unit_count = GetFactionUnitTypeCount(faction, unitName, false)
			if (unit_count > new_unit_count) then -- if the total unit count is smaller after the redistribution of units, add the missing units to the oldest province
				SetProvinceUnitQuantity(WorldMapProvinces[faction.OwnedProvinces[1]].Name, unitName, GetProvinceUnitQuantity(WorldMapProvinces[faction.OwnedProvinces[1]].Name, unitName) + (unit_count - new_unit_count))
			end
		end
	end
end

function IsGrandStrategyBuilding(unit_type)
	if (string.find(unit_type, "upgrade-") == nil and GetUnitTypeData(unit_type, "Building") and GetUnitTypeData(unit_type, "Class") ~= "farm" and GetUnitTypeData(unit_type, "Class") ~= "watch-tower" and GetUnitTypeData(unit_type, "Class") ~= "guard-tower" and GetUnitTypeData(unit_type, "Class") ~= "") then
		return true
	else
		return false
	end
end

function IsOffensiveMilitaryUnit(unit_type)
	if (IsMilitaryUnit(unit_type) and GetUnitTypeData(unit_type, "Class") ~= "militia") then
		return true
	else
		return false
	end
end

function IsMilitaryUnit(unit_type)
	if (string.find(unit_type, "upgrade-") == nil and GetUnitTypeData(unit_type, "Building") == false and GetUnitTypeData(unit_type, "Demand") > 0 and GetUnitTypeData(unit_type, "Class") ~= "worker" and GetUnitTypeData(unit_type, "Class") ~= "caravan") then
		return true
	else
		return false
	end
end

function GetProvinceName(province)
	return GetProvinceCulturalName(province.Name)
end

function GetProvinceSettlementName(province)
	return GetProvinceCulturalSettlementName(province.Name)
end

function CanDeclareWar(faction_from, faction_to)
	if (FactionHasBorderWith(faction_from, faction_to) == false and (FactionHasCoast(faction_from) and FactionHasCoast(faction_to)) == false) then
		return false
	end
	if (GetFactionResource(faction_from.Civilization, faction_from.Name, "prestige") < 0) then
		return false
	end
	return true
end

function GetTerrainName(terrain)
	return terrain
end

function IsWorldMapTileVisible(tile_x, tile_y)
	if (tile_x >= WorldMapOffsetX and tile_x <= (WorldMapOffsetX + math.floor(GrandStrategyMapWidth / 64)) and tile_y >= WorldMapOffsetY and tile_y <= math.min((WorldMapOffsetY + math.floor(GrandStrategyMapHeight / 64)), (GetWorldMapHeight() - 1))) then
		return true
	else
		return false
	end	
end

function ChangeProvinceOwner(province, faction) -- used to change the owner and pass the information to the engine
	if (faction ~= nil) then
		SetProvinceOwner(province.Name, faction.Civilization, faction.Name)
	else
		SetProvinceOwner(province.Name, "", "")
	end
end

function GetYearString(year, civilization)
	if (civilization ~= nil and GetCivilizationData(civilization, "CalendarStartingYear") ~= 0) then
		year = year - 1 + GetCivilizationData(civilization, "CalendarStartingYear")
	end

	local year_label = "AD"
	if (civilization ~= nil and GetCivilizationData(civilization, "YearLabel") ~= "") then
		year_label = GetCivilizationData(civilization, "YearLabel")
	end

	local negative_year_label = "BC"
	if (civilization ~= nil and GetCivilizationData(civilization, "NegativeYearLabel") ~= "") then
		negative_year_label = GetCivilizationData(civilization, "NegativeYearLabel")
	end

	if (year >= 0) then
		return year .. " " .. year_label
	else
		return (year * -1) .. " " .. negative_year_label
	end
end

function RestoreScenarioUnitsToProvince(arg) -- restore the units of a certain faction to a certain province
	if (arg.IgnoredUnitClasses == nil) then
		arg.IgnoredUnitClasses = {}
	end
	
	for i, unitName in ipairs(Units) do
		if (IsOffensiveMilitaryUnit(unitName) and GetArrayIncludes(arg.IgnoredUnitClasses, GetUnitTypeData(unitName, "Class")) == false) then
			ChangeProvinceUnitQuantity(arg.ProvinceName, unitName, math.ceil(GetPlayerData(GetFactionPlayer(GetFactionData(GetFactionFromName(arg.FactionName).Civilization, arg.FactionName, "Name")), "UnitTypesStartingNonHeroCount", unitName) / BattalionMultiplier))
		end
	end
	
	local faction_heroes = GetPlayerData(GetFactionPlayer(GetFactionData(GetFactionFromName(arg.FactionName).Civilization, arg.FactionName, "Name")), "Heroes")
	if (arg.Heroes ~= nil) then
		if (arg.Heroes == "any") then
			arg.Heroes = GetGrandStrategyHeroes()
		end

		for i = 1, table.getn(arg.Heroes) do
			if not (GrandStrategyHeroIsCustom(arg.Heroes[i])) then
				if (GetArrayIncludes(faction_heroes, arg.Heroes[i])) then
					SetProvinceHero(arg.ProvinceName, arg.Heroes[i], 2)
				elseif (GetProvinceHero(arg.ProvinceName, arg.Heroes[i]) == 2) then
					SetProvinceHero(arg.ProvinceName, arg.Heroes[i], 0)
				end
			end
		end
	end
	
	-- restore custom hero
	local all_heroes = GetGrandStrategyHeroes()
	for i = 1, table.getn(all_heroes) do
		if (GrandStrategyHeroIsCustom(all_heroes[i])) then
			if (GetArrayIncludes(faction_heroes, all_heroes[i])) then
				SetProvinceHero(arg.ProvinceName, all_heroes[i], 2)
			elseif (GetProvinceHero(arg.ProvinceName, all_heroes[i]) == 2) then
				SetProvinceHero(arg.ProvinceName, all_heroes[i], 0)
			end
		end
	end
end

function CreateProvinceCustomHero(province_name, player)
	local all_heroes = GetGrandStrategyHeroes()
	for i = 1, table.getn(all_heroes) do
		if (GetProvinceHero(province_name, all_heroes[i]) == 2 and GrandStrategyHeroIsCustom(all_heroes[i])) then
			unit = CreateUnit("unit-germanic-warrior", player, {Players[player].StartPos.x, Players[player].StartPos.y})
			SetUnitVariable(unit, "CustomHero", all_heroes[i])
		end
	end
end
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
--      (c) Copyright 2014-2017 by Andrettin
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

	local world_list = {"Earth", "Nidavellir"}
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
			menu:stop()
		end)
	menu:addFullButton(_("~!Cancel Game"), "c", offx + 208, offy + 212 + (36 * 6),
		function()
			menu:stop();
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
			Load("scripts/grand_strategy/" .. string.lower(world_list[world:getSelected() + 1]) .. "_world_map.lua");
			Load("scripts/grand_strategy/" .. string.lower(world_list[world:getSelected() + 1]) .. "_history.lua");
				
			faction_list = {}
			faction_name_list = {}
			faction_civilization_list = {}
			for key, value in pairsByKeys(Factions) do
				if (GetFactionProvinceCountPreGame(Factions[key].Name) > 0 and GetCivilizationData(Factions[key].Civilization, "Playable") and GetFactionData(Factions[key].Name, "Playable")) then
					table.insert(faction_list, Factions[key].Name)
					table.insert(faction_civilization_list, Factions[key].Civilization)
					table.insert(faction_name_list, GetFactionData(Factions[key].Name, "Name"))
				end
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

function EndTurn()
	-- AI moves
	for key, value in pairs(Factions) do
		if (Factions[key] ~= GrandStrategyFaction and GetFactionProvinceCount(Factions[key]) > 0) then
			AIDoTurn(Factions[key])
		end
	end

	DoGrandStrategyTurn()

	GrandStrategyMonth = GrandStrategyMonth + MonthsPerTurn;
	if (GrandStrategyMonth >= 12) then
		GrandStrategyMonth = 0;
		GrandStrategyYear = GrandStrategyYear + 1;
		if (GrandStrategyYear == 0) then -- the year 0 AD didn't exist
			GrandStrategyYear = GrandStrategyYear + 1;
		end
	end

	DoEvents()

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

function AIDoTurn(ai_faction)
	
	AIConsiderOffers(ai_faction)

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
	
	if (event.FactionType ~= nil and event.FactionType ~= GetFactionData(faction.Name, "Type")) then
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
			if (string.find(event_name, "CULTURE_NAME") ~= nil) then
				event_name = string.gsub(event_name, "CULTURE_NAME", GetCivilizationData(EventFaction.Civilization, "Adjective"))
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
			if (string.find(event_description, "CULTURE_NAME") ~= nil) then
				event_description = string.gsub(event_description, "CULTURE_NAME", GetCivilizationData(EventFaction.Civilization, "Adjective"))
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

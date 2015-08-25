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
--      grand_strategy.lua - Defines the grand strategy game mode.
--
--      (c) Copyright 2014-2015 by Andrettin
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
GrandStrategyWorld = ""
BattalionMultiplier = wyr.preferences.GrandStrategyBattalionMultiplier
GrandStrategyMapWidthIndent = 0
GrandStrategyMapHeightIndent = 0

function RunGrandStrategyGameSetupMenu()
	GrandStrategyMapWidth = Video.Width + 64
	GrandStrategyMapHeight = Video.Height - 16 - 186
	WorldMapOffsetX = 0
	WorldMapOffsetY = 0
	GrandStrategyYear = 25
	GrandStrategyFaction = nil
	SelectedProvince = nil
	SelectedHero = nil
	Attacker = ""
	Defender = ""
	GrandStrategyEventMap = false
	GrandStrategyBattle = false
	EventFaction = nil
	EventProvince = nil
	GrandStrategyWorld = ""
	BattalionMultiplier = wyr.preferences.GrandStrategyBattalionMultiplier
	GrandStrategyMapWidthIndent = 0
	GrandStrategyMapHeightIndent = 0
	ProcessingEndTurn = false

	SetPlayerData(GetThisPlayer(), "RaceName", "gnome")
	wyrmsun.playlist = { "music/battle_theme_a.ogg" }

	if not (IsMusicPlaying()) then
		PlayMusic("music/battle_theme_a.ogg")
	end

	local menu = WarMenu()
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2

	local world_list = {"Earth", "Nidavellir", "Random"}
	local world
	local date_list = {}
	local date
	local faction
	local faction_list = {}
	local battalions
	local automatic_battles
	local no_randomness

	menu:addLabel(_("~<Grand Strategy Game Setup~>"), offx + 640/2 + 12, offy + 72)

	menu:addFullButton(_("~!Start Game"), "s", offx + 208, offy + 212 + (36 * 4),
		function()
			CleanGrandStrategyGame()
			InitializeGrandStrategyGame()
			GrandStrategy = true
			GrandStrategyGamePaused = false
			GameResult = GameNoResult
			GrandStrategyYear = tonumber(string.sub(date_list[date:getSelected() + 1], 0, -3))
			if (string.find(date_list[date:getSelected() + 1], "BC") ~= nil) then
				GrandStrategyYear = GrandStrategyYear * -1
			end
			if (world_list[world:getSelected() + 1] ~= "Random") then
				Load("scripts/grand_strategy/" .. string.lower(world_list[world:getSelected() + 1]) .. "_world_map.lua");
			else
				GenerateRandomWorldMap()
			end
			
			GrandStrategyFaction = GetFactionFromName(faction_list[faction:getSelected() + 1])
			SetPlayerFaction(GetFactionFromName(faction_list[faction:getSelected() + 1]).Civilization, GetFactionFromName(faction_list[faction:getSelected() + 1]).Name)
			SetPlayerData(GetThisPlayer(), "RaceName", GrandStrategyFaction.Civilization)
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
				if (GetFactionResource(Factions[key].Civilization, Factions[key].Name, "gold") == 0) then
					SetFactionResource(Factions[key].Civilization, Factions[key].Name, "gold", 3000)
				end
				if (GetFactionResource(Factions[key].Civilization, Factions[key].Name, "lumber") == 0) then
					SetFactionResource(Factions[key].Civilization, Factions[key].Name, "lumber", 1500)
				end
				if (GetFactionResource(Factions[key].Civilization, Factions[key].Name, "stone") == 0) then
					SetFactionResource(Factions[key].Civilization, Factions[key].Name, "stone", 1500)
				end

				-- initialize the diplomacy variables
				if (Factions[key].Diplomacy == nil) then
					Factions[key]["Diplomacy"] = {}
				end
				for second_key, second_value in pairs(Factions) do
					if (Factions[key].Diplomacy[second_key] == nil) then
						Factions[key].Diplomacy[second_key] = "Peace" -- at peace by default
					end
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
				if (WorldMapProvinces[key].Owner == nil) then
					WorldMapProvinces[key]["Owner"] = ""
				elseif (GetFactionFromName(WorldMapProvinces[key].Owner) ~= nil) then
					SetProvinceOwner(WorldMapProvinces[key].Name, GetFactionFromName(WorldMapProvinces[key].Owner).Civilization, WorldMapProvinces[key].Owner)				
				end
				-- set the province into its owner's owned provinces list
				if (WorldMapProvinces[key].Owner ~= "") then
					table.insert(GetFactionFromName(WorldMapProvinces[key].Owner).OwnedProvinces, key)
				end

				if (GetProvinceCivilization(WorldMapProvinces[key].Name) == "" and GetProvinceOwner(WorldMapProvinces[key].Name) ~= "") then
					-- if province has no civilization/culture defined, then make it that of its owner, if any
					SetProvinceCivilization(WorldMapProvinces[key].Name, GetFactionFromName(GetProvinceOwner(WorldMapProvinces[key].Name)).Civilization) -- tell the engine the civilization of the province
				end
				
				if (WorldMapProvinces[key].SettlementName ~= nil) then
					SetProvinceSettlementName(WorldMapProvinces[key].Name, WorldMapProvinces[key].SettlementName)
				end
				
				if (WorldMapProvinces[key].SettlementLocation ~= nil) then
					SetProvinceSettlementLocation(WorldMapProvinces[key].Name, WorldMapProvinces[key].SettlementLocation[1], WorldMapProvinces[key].SettlementLocation[2])
				end
				
				if (WorldMapProvinces[key].Coastal == nil) then
					WorldMapProvinces[key]["Coastal"] = false
				end
				
				if (WorldMapProvinces[key].Heroes == nil) then
					WorldMapProvinces[key]["Heroes"] = {}
				end
				for i, unitName in ipairs(Units) do
					if (IsHero(unitName)) then
						if (WorldMapProvinces[key].Heroes[string.gsub(unitName, "-", "_")] == nil) then
							WorldMapProvinces[key].Heroes[string.gsub(unitName, "-", "_")] = 0 -- 0 = hero isn't here, 1 = hero is moving here, 2 = hero is here
						end
					end
				end
				
				-- load heroes' upgraded versions, if those have been acquired
				if (WorldMapProvinces[key].Heroes.unit_hero_modsognir == 2 and GetArrayIncludes(wyr.preferences.Heroes.Modsognir.upgrades, "unit-dwarven-thane")) then
					WorldMapProvinces[key].Heroes.unit_hero_modsognir = 0
					WorldMapProvinces[key].Heroes.unit_hero_modsognir_thane = 2
				end
				if (WorldMapProvinces[key].Heroes.unit_hero_durin == 2 and GetArrayIncludes(wyr.preferences.Heroes.Durin.upgrades, "unit-dwarven-thane")) then
					WorldMapProvinces[key].Heroes.unit_hero_durin = 0
					WorldMapProvinces[key].Heroes.unit_hero_durin_thane = 2
				end
				if ((WorldMapProvinces[key].Heroes.unit_hero_rugnur == 2 or WorldMapProvinces[key].Heroes.unit_hero_rugnur_steelclad == 2) and GetArrayIncludes(wyr.preferences.Heroes.Rugnur.upgrades, "unit-dwarven-thane")) then
					WorldMapProvinces[key].Heroes.unit_hero_rugnur = 0
					WorldMapProvinces[key].Heroes.unit_hero_rugnur_steelclad = 0
					WorldMapProvinces[key].Heroes.unit_hero_rugnur_thane = 2
				elseif (WorldMapProvinces[key].Heroes.unit_hero_rugnur == 2 and GetArrayIncludes(wyr.preferences.Heroes.Rugnur.upgrades, "unit-dwarven-steelclad")) then
					WorldMapProvinces[key].Heroes.unit_hero_rugnur = 0
					WorldMapProvinces[key].Heroes.unit_hero_rugnur_steelclad = 2
				end
				if (WorldMapProvinces[key].Heroes.unit_hero_baglur == 2 and GetArrayIncludes(wyr.preferences.Heroes.Baglur.upgrades, "unit-dwarven-thane")) then
					WorldMapProvinces[key].Heroes.unit_hero_baglur = 0
					WorldMapProvinces[key].Heroes.unit_hero_baglur_thane = 2
				end
				
				if (GrandStrategyFaction ~= nil and WorldMapProvinces[key].Owner == GrandStrategyFaction.Name) then
					CenterGrandStrategyMapOnTile(WorldMapProvinces[key].SettlementLocation[1], WorldMapProvinces[key].SettlementLocation[2])
				end
			end

			SelectedUnits = {}
			for i, unitName in ipairs(Units) do
				if (IsMilitaryUnit(unitName)) then
					SelectedUnits[string.gsub(unitName, "-", "_")] = 0
				end
			end

			local RandomNumber = 0
			for x=0,GetWorldMapWidth() - 1 do
				for y=0,GetWorldMapHeight() - 1 do
					if (GetWorldMapTileTerrain(x, y) == "Conifer Forest" or GetWorldMapTileTerrain(x, y) == "Scrub Forest") then -- add lumber resource location to forest tiles
						if (WorldMapTileHasResource(x, y, "lumber", true) == false) then
							AddWorldMapResource("lumber", x, y, true)
						end
					elseif (GetWorldMapTileTerrain(x, y) == "Plains" or GetWorldMapTileTerrain(x, y) == "Dark Plains") then -- make plains tiles into hills if there is a mine there
						if (WorldMapTileHasResource(x, y, "gold", true) == true) then
							SetWorldMapTileTerrain(x, y, GetWorldMapTerrainTypeId("Hills"))
						end
					elseif (GetWorldMapTileTerrain(x, y) == "Mountains") then -- implement variations for mountain tiles
						if (WorldMapTileHasResource(x, y, "stone", true) == false and WorldMapTileHasResource(x, y, "gold", true) == false) then -- only add stone resource if has no gold
							AddWorldMapResource("stone", x, y, true)
						end
					end
				end
			end
			
			for x=0,GetWorldMapWidth() - 1 do
				for y=0,GetWorldMapHeight() - 1 do
					CalculateWorldMapTileGraphicTile(x, y)
				end
			end
			
			InitializeGrandStrategyMinimap()

--			CalculateFactionDisembarkmentProvinces()
			for key, value in pairs(Factions) do
				if (GetFactionProvinceCount(Factions[key]) > 0) then
					CalculateFactionIncomes(Factions[key].Civilization, Factions[key].Name)
				end
			end
			CalculateFactionUpkeeps()
			
			InitGameSettings() -- initialize scenario variables (i.e. No Randomness)
			
			RunGrandStrategyGame()
			menu:stop()
		end)
	menu:addFullButton(_("~!Load Game"), "l", offx + 208, offy + 212 + (36 * 5),
		function()
			RunGrandStrategyLoadGameMenu()
			if not (GrandStrategy) then
				menu:stop()
			end
		end)
	menu:addFullButton(_("~!Cancel Game"), "c", offx + 208, offy + 212 + (36 * 6),
		function()
			menu:stop();
			ClearGrandStrategyVariables()
			SetPlayerData(GetThisPlayer(), "RaceName", "gnome")
		end)

	menu:addLabel(_("World:"), offx + 40, offy + (10 + 120) - 20, Fonts["game"], false)
	world = menu:addDropDown(world_list, offx + 40, offy + 10 + 120,
		function(dd) DateChanged() end)
	world:setSize(152, 20)

	menu:addLabel(_("Date:"), offx + 220, offy + (10 + 120) - 20, Fonts["game"], false)
	date = menu:addDropDown(date_list, offx + 220, offy + 10 + 120,
		function(dd) DateChanged() end)
	date:setSize(152, 20)

	menu:addLabel(_("Faction:"), offx + 640 - 224 - 16, offy + (10 + 120) - 20, Fonts["game"], false)
	faction = menu:addDropDown(faction_list, offx + 640 - 224 - 16, offy + 10 + 120,
		function(dd) end)
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

	automatic_battles = menu:addImageCheckBox(_("Automatic Battles"), offx + 220, offy + 10 + 240 + 3,
		function()
			wyr.preferences.AutomaticBattles = automatic_battles:isMarked()
			SavePreferences()
		end
	)
	automatic_battles:setMarked(wyr.preferences.AutomaticBattles)
  
	no_randomness = menu:addImageCheckBox(_("No Randomness"), offx + 640 - 224 - 16, offy + 10 + 240 + 3,
		function()
			wyr.preferences.NoRandomness = no_randomness:isMarked()
			SavePreferences()
		end
	)
	no_randomness:setMarked(wyr.preferences.NoRandomness)
  
	function DateChanged()
		CleanGrandStrategyGame()
		InitializeGrandStrategyGame()
		
		if (GrandStrategyWorld ~= world_list[world:getSelected() + 1]) then
			SetGrandStrategyWorld(world_list[world:getSelected() + 1])
			
			if (GrandStrategyWorld == "Earth") then
				date_list = {
					"3000 BC", -- begin of the last wave of Indo-European migrations, which lasted until 2800 BC
--					"2800 BC", -- end of the last wave of the Indo-European migrations and begin of the Single Grave culture in modern Denmark
--					"700 BC", -- 
					"71 BC", -- the Suebic king Ariovistus enters Gaul at the request of the Arverni and the Sequani to fight the Aedui
--					"406 AD", -- Sueves, Alans and Vandals attack Gaul (which eventually would lead them to Iberia)
--					"1072 AD" -- 
--					"1660 AD", -- 
				}
			elseif (GrandStrategyWorld == "Nidavellir") then
				date_list = {
					"3000 BC", -- approximate begin of the Asa's journey to Scandinavia (the Mead of Poetry should have taken place sometime before that)
					"25 AD", -- begin of The Scepter of Fire
					"40 AD", -- end of The Scepter of Fire
					"550 AD" -- begin of The Hammer of Thursagan
				}
			elseif (GrandStrategyWorld == "Random") then
				date_list = {
					"3000 BC"
				}
			end
			
			date:setList(date_list)
			date:setSize(152, 20)
			date:setSelected(0)
		end
		
		GrandStrategyYear = tonumber(string.sub(date_list[date:getSelected() + 1], 0, -3))
		if (string.find(date_list[date:getSelected() + 1], "BC") ~= nil) then
			GrandStrategyYear = GrandStrategyYear * -1
		end

		
		if (world_list[world:getSelected() + 1] ~= "Random") then
			Load("scripts/grand_strategy/" .. string.lower(world_list[world:getSelected() + 1]) .. "_world_map.lua");
			
			faction_list = {}
			for key, value in pairsByKeys(Factions) do
				if (GetFactionProvinceCountPreGame(Factions[key].Name) > 0 and IsCivilizationPlayable(Factions[key].Civilization) and GetFactionData(Factions[key].Civilization, Factions[key].Name, "Playable")) then
					table.insert(faction_list, Factions[key].Name)
				end
			end
		else
			faction_list = {"Asa Tribe", "Modsogning Clan"}
		end

		faction:setList(faction_list)
		faction:setSize(152, 20)
		faction:setSelected(0)
	end

	DateChanged()

	menu:run()
end

function RunGrandStrategyGame()
	ClearGrandStrategyUIVariables()

	GrandStrategyMenu = WarGrandStrategyMenu()
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2

	DrawOnScreenTiles()
	DrawGrandStrategyInterface()
	
	-- add a pseudo-button to bring up the menu
	GrandStrategyMenu:addButton("", "f10", -1, -1,
		function()
			RunGrandStrategyGameMenu()
		end,
	{0, 0})
	GrandStrategyMenu:addButton("", "f11", -1, -1,
		function()
			RunGrandStrategySaveMenu()
		end,
	{0, 0})
	GrandStrategyMenu:addButton("", "f12", -1, -1,
		function()
			RunGrandStrategyLoadGameMenu()
		end,
	{0, 0})
	GrandStrategyMenu:addButton("", "f5", -1, -1,
		function()
			RunEncyclopediaMenu()
		end,
	{0, 0})

	GrandStrategyMenu:run()
end

function EndTurn()
	if (GrandStrategyYear % 10 == 0) then
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

	-- faction income
	for key, value in pairs(Factions) do
		if (GetFactionProvinceCount(Factions[key]) > 0) then
			ChangeFactionResource(Factions[key].Civilization, Factions[key].Name, "gold", GetFactionIncome(Factions[key].Civilization, Factions[key].Name, "gold"))
			ChangeFactionResource(Factions[key].Civilization, Factions[key].Name, "lumber", GetFactionIncome(Factions[key].Civilization, Factions[key].Name, "lumber"))
			ChangeFactionResource(Factions[key].Civilization, Factions[key].Name, "stone", GetFactionIncome(Factions[key].Civilization, Factions[key].Name, "stone"))
			ChangeFactionResource(Factions[key].Civilization, Factions[key].Name, "research", GetFactionIncome(Factions[key].Civilization, Factions[key].Name, "research"))
			ChangeFactionResource(Factions[key].Civilization, Factions[key].Name, "prestige", GetFactionIncome(Factions[key].Civilization, Factions[key].Name, "prestige"))
		end
	end
	
	-- perform trade
	local player_trade_preferences = {}
	if (GrandStrategyFaction ~= nil) then
		player_trade_preferences["Lumber"] = GetFactionCommodityTrade(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, "lumber")
		player_trade_preferences["Stone"] = GetFactionCommodityTrade(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, "stone")
	end

	DoGrandStrategyTurn()

	-- keep human player's trading preferences
	if (GrandStrategyFaction ~= nil) then
		if (player_trade_preferences.Lumber > 0 and GetFactionResource(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, "lumber") < player_trade_preferences.Lumber) then
			player_trade_preferences.Lumber = GetFactionResource(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, "lumber")
		elseif (player_trade_preferences.Lumber < 0 and GetFactionResource(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, "gold") < 0) then
			player_trade_preferences.Lumber = 0
		elseif (player_trade_preferences.Lumber < 0 and GetFactionResource(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, "gold") < player_trade_preferences.Lumber * -1 * GetCommodityPrice("lumber") / 100) then
			player_trade_preferences.Lumber = math.floor(GetFactionResource(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, "gold") / GetCommodityPrice("lumber") * 100) * -1
		end
		SetFactionCommodityTrade(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, "lumber", player_trade_preferences.Lumber)
		
		if (player_trade_preferences.Stone > 0 and GetFactionResource(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, "stone") < player_trade_preferences.Stone) then
			player_trade_preferences.Stone = GetFactionResource(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, "stone")
		elseif (player_trade_preferences.Stone < 0 and GetFactionResource(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, "gold") < 0) then
			player_trade_preferences.Stone = 0
		elseif (player_trade_preferences.Stone < 0 and GetFactionResource(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, "gold") < player_trade_preferences.Stone * -1 * GetCommodityPrice("stone") / 100) then
			player_trade_preferences.Stone = math.floor(GetFactionResource(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, "gold") / GetCommodityPrice("stone") * 100) * -1
		end
		SetFactionCommodityTrade(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, "stone", player_trade_preferences.Stone)
	end
	
	for key, value in pairs(WorldMapProvinces) do
		local province_owner = GetFactionFromName(WorldMapProvinces[key].Owner)
	
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
		for i, unitName in ipairs(Units) do
			if (IsHero(unitName)) then
				if (WorldMapProvinces[key].Heroes[string.gsub(unitName, "-", "_")] == 1) then
					WorldMapProvinces[key].Heroes[string.gsub(unitName, "-", "_")] = 2
				end
			end
		end
		-- if a dwarven province has a town hall and a barracks, give it militia
		if (GetProvinceCivilization(WorldMapProvinces[key].Name) == "dwarf" and GetProvinceUnitQuantity(WorldMapProvinces[key].Name, GetCivilizationClassUnitType("militia", GetProvinceCivilization(WorldMapProvinces[key].Name))) < 4) then
			if (ProvinceHasBuildingClass(WorldMapProvinces[key].Name, "town-hall") and ProvinceHasBuildingClass(WorldMapProvinces[key].Name, "barracks")) then
				SetProvinceUnitQuantity(WorldMapProvinces[key].Name, GetCivilizationClassUnitType("militia", GetProvinceCivilization(WorldMapProvinces[key].Name)), GetProvinceUnitQuantity(WorldMapProvinces[key].Name, GetCivilizationClassUnitType("militia", GetProvinceCivilization(WorldMapProvinces[key].Name))) + 1)
			end
		elseif (GetProvinceCivilization(WorldMapProvinces[key].Name) == "dwarf" and GetProvinceUnitQuantity(WorldMapProvinces[key].Name, GetCivilizationClassUnitType("militia", GetProvinceCivilization(WorldMapProvinces[key].Name))) > 4) then
			SetProvinceUnitQuantity(WorldMapProvinces[key].Name, GetCivilizationClassUnitType("militia", GetProvinceCivilization(WorldMapProvinces[key].Name)), 4)
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
		ChangeFactionResource(Factions[key].Civilization, Factions[key].Name, "gold", - Factions[key].Upkeep)
	end

	local disbanding_happened = false
	-- disband units if gold is on the negative and upkeep is higher than income
	for key, value in pairs(Factions) do
		if (GetFactionResource(Factions[key].Civilization, Factions[key].Name, "gold") < 0 and Factions[key].Upkeep > GetFactionIncome(Factions[key].Civilization, Factions[key].Name, "gold")) then
			disbanding_happened = true
			local disband_quota = Factions[key].Upkeep - GetFactionIncome(Factions[key].Civilization, Factions[key].Name, "gold")
			for province_i, province_key in ipairs(Factions[key].OwnedProvinces) do
				for i, unitName in ipairs(Units) do
					if (IsMilitaryUnit(unitName)) then
						if (GetProvinceUnitQuantity(WorldMapProvinces[province_key].Name, unitName) > 0 and GetUnitTypeUpkeep(unitName) > 0) then
							if (disband_quota > GetProvinceUnitQuantity(WorldMapProvinces[province_key].Name, unitName) * GetUnitTypeUpkeep(unitName)) then
								disband_quota = disband_quota - GetProvinceUnitQuantity(WorldMapProvinces[province_key].Name, unitName) * GetUnitTypeUpkeep(unitName)
								SetProvinceUnitQuantity(WorldMapProvinces[province_key].Name, unitName, 0)
							else
								SetProvinceUnitQuantity(WorldMapProvinces[province_key].Name, unitName, GetProvinceUnitQuantity(WorldMapProvinces[province_key].Name, unitName) - math.floor(disband_quota / GetUnitTypeUpkeep(unitName)))
								disband_quota = disband_quota - math.floor(disband_quota / GetUnitTypeUpkeep(unitName)) * GetUnitTypeUpkeep(unitName)
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
	
	GrandStrategyYear = GrandStrategyYear + 1;

	DoEvents()

--	if (math.fmod(GrandStrategyYear, 10) == 0) then -- every ten turns, end and restart the menu, to increase performance
--		GrandStrategyMenu:stop();
--		RunGrandStrategyGame()
--	else
		DrawGrandStrategyInterface()
		DrawOnScreenTiles()
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
			if (GrandStrategyFaction.Diplomacy[key] == "Peace Offer Accepted") then
				GrandStrategyGamePaused = true
				local menu = WarGrandStrategyGameMenu(panel(1))
				menu:setDrawMenusUnder(true)

				menu:addLabel("Peace Offer Accepted!", 128, 11)

				local l = MultiLineLabel()
				l:setFont(Fonts["game"])
				l:setSize(228, 128)
				l:setLineWidth(228)
				menu:add(l, 14, 35)
				l:setCaption("My lord, the " .. GetFactionFullName(Factions[key].Name) .. " has accepted our peace offer.")

				menu:addFullButton("~!OK", "o", 16, 248,
					function()
						GrandStrategyFaction.Diplomacy[key] = "Peace"
						GrandStrategyGamePaused = false
						menu:stop()
					end)

				menu:run()
			elseif (GrandStrategyFaction.Diplomacy[key] == "Peace Offer Rejected") then
				GrandStrategyGamePaused = true
				local menu = WarGrandStrategyGameMenu(panel(1))
				menu:setDrawMenusUnder(true)

				menu:addLabel("Peace Offer Rejected!", 128, 11)

				local l = MultiLineLabel()
				l:setFont(Fonts["game"])
				l:setSize(228, 128)
				l:setLineWidth(228)
				menu:add(l, 14, 35)
				l:setCaption("My lord, the " .. GetFactionFullName(Factions[key].Name) .. " has rejected our peace offer!")

				menu:addFullButton("~!OK", "o", 16, 248,
					function()
						GrandStrategyFaction.Diplomacy[key] = "War"
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
	GetMapInfo(province.Map)
	Attacker = faction
	local empty_province = false
	if (province.Owner ~= "") then
		Defender = province.Owner
	else
		Defender = GetProvinceName(province)
		empty_province = true
	end
	local revolt = false
	if (GetFactionProvinceCount(GetFactionFromName(Attacker)) == 0 and GetFactionFromName(Attacker).Diplomacy[GetFactionKeyFromName(Defender)] == "Peace") then -- if the attacker doesn't own any provinces, then this must be a revolt
		revolt = true
	end
	AttackedProvince = province
	
	local victorious_player = ""
	
	local attacker_prestige = math.floor(10 * GetMilitaryScore(province, false, true) / GetMilitaryScore(province, true, true)) -- 10 prestige if military scores are equal
	local defender_prestige = math.floor(10 * GetMilitaryScore(province, true, true) / GetMilitaryScore(province, false, true)) -- 10 prestige if military scores are equal
	
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
		RunMap(province.Map)

		if (GameResult == GameVictory) then
			victorious_player = GrandStrategyFaction.Name
		elseif (Attacker == GrandStrategyFaction.Name) then
			victorious_player = Defender
		elseif (Defender == GrandStrategyFaction.Name) then
			victorious_player = Attacker
		end
		-- set the new unit quantity to the surviving units of the victorious side
		for i, unitName in ipairs(Units) do
			if (IsMilitaryUnit(unitName)) then
				SetProvinceUnitQuantity(province.Name, unitName, math.ceil(GetPlayerData(GetFactionPlayer(victorious_player), "UnitTypesCount", unitName) / BattalionMultiplier))
			elseif (IsHero(unitName)) then
				AttackedProvince.Heroes[string.gsub(unitName, "-", "_")] = 0
				if (GetPlayerData(GetFactionPlayer(victorious_player), "UnitTypesCount", unitName) >= 1) then
					AttackedProvince.Heroes[string.gsub(unitName, "-", "_")] = 2
				end
			end
		end
		GrandStrategyBattle = false
	else
		local attacker_military_score = GetMilitaryScore(province, true, true)
		local defender_military_score = GetMilitaryScore(province, false, true)
		if (attacker_military_score > defender_military_score) then -- if military score is the same, then defenders win
			victorious_player = Attacker
			for i, unitName in ipairs(Units) do
				if (IsMilitaryUnit(unitName)) then
					SetProvinceUnitQuantity(province.Name, unitName, round(GetProvinceAttackingUnitQuantity(province.Name, unitName) * (attacker_military_score - defender_military_score) / attacker_military_score)) -- formula for calculating units belonging to the victorious player that were killed
				elseif (IsHero(unitName)) then -- kill off defending heroes if the attacking player was the victorious one
					if (AttackedProvince.Heroes[string.gsub(unitName, "-", "_")] == 2) then
						AttackedProvince.Heroes[string.gsub(unitName, "-", "_")] = 0
					elseif (AttackedProvince.Heroes[string.gsub(unitName, "-", "_")] == 3) then
						AttackedProvince.Heroes[string.gsub(unitName, "-", "_")] = 2
					end
				end
			end
		else
			victorious_player = Defender
			for i, unitName in ipairs(Units) do
				if (IsMilitaryUnit(unitName)) then
					SetProvinceUnitQuantity(province.Name, unitName, round(
						GetProvinceUnitQuantity(province.Name, unitName)
						* (defender_military_score - attacker_military_score)
						/ defender_military_score
					))
				elseif (IsHero(unitName)) then -- kill off attacking heroes if the defending player was the victorious one
					if (AttackedProvince.Heroes[string.gsub(unitName, "-", "_")] == 3) then
						AttackedProvince.Heroes[string.gsub(unitName, "-", "_")] = 0
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
					units_lost_string = units_lost_string .. GetUnitTypeNamePluralForm(unitName)
				else
					units_lost_string = units_lost_string .. GetUnitTypeName(unitName)
				end
			end
		end
	end
	
	if (victorious_player == Attacker) then
		AcquireProvince(province, victorious_player)
		if (GrandStrategyFaction ~= nil and Attacker == GrandStrategyFaction.Name and SelectedProvince == province) then -- this is here to make it so the right interface state happens if the province is selected (a conquered province that is selected will have the interface state switched from diplomacy to province)
			GrandStrategyInterfaceState = "Province"
		end
		ChangeFactionResource(GetFactionFromName(Attacker).Civilization, GetFactionFromName(Attacker).Name, "prestige", attacker_prestige + 5) -- plus five for acquiring the territory
		if (empty_province == false) then
			ChangeFactionResource(GetFactionFromName(Defender).Civilization, GetFactionFromName(Defender).Name, "prestige", - attacker_prestige - 5) -- minus five for losing the territory
		end
		if (revolt) then
			GetFactionFromName(Attacker).Diplomacy[GetFactionKeyFromName(Defender)] = "War"
			GetFactionFromName(Defender).Diplomacy[GetFactionKeyFromName(Attacker)] = "War"
			AcquireFactionTechnologies(GetFactionFromName(Defender).Civilization, GetFactionFromName(Defender).Name, GetFactionFromName(Attacker).Civilization, GetFactionFromName(Attacker).Name)
		end
	else
		if (GrandStrategyFaction ~= nil and Defender == GrandStrategyFaction.Name and SelectedProvince == province) then -- this is here to make it so the right interface state happens if the province is selected (a lost province that is selected will have the interface state switched from province to diplomacy)
			GrandStrategyInterfaceState = "Diplomacy"
		end
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
			Factions[key].Diplomacy[defender_faction_key] = "Peace"
			Factions[defender_faction_key].Diplomacy[key] = "Peace"
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
		if (revolt == false and Defender == GrandStrategyFaction.Name and victorious_player == Defender) then
			battle_report_message = "My lord, the " .. GetFactionFullName(Attacker) .. " has made a failed attack against us in " .. GetProvinceName(AttackedProvince) .. "!"
		elseif (revolt == false and Defender == GrandStrategyFaction.Name and victorious_player == Attacker) then
			battle_report_message = "My lord, the " .. GetFactionFullName(Attacker) .. " has taken our province of " .. GetProvinceName(AttackedProvince) .. "!"
		elseif (Attacker == GrandStrategyFaction.Name and victorious_player == Defender and empty_province == false) then
			battle_report_message = "My lord, our attack against the " .. GetProvinceName(AttackedProvince) .. " province of the " .. GetFactionFullName(Defender) .. " has failed!"
		elseif (Attacker == GrandStrategyFaction.Name and victorious_player == Attacker and empty_province == false) then
			battle_report_message = "My lord, we have taken the province of " .. GetProvinceName(AttackedProvince) .. " from the " .. GetFactionFullName(Defender) .. "!"
		elseif (Attacker == GrandStrategyFaction.Name and victorious_player == Defender and empty_province) then
			battle_report_message = "My lord, our attempt to conquer the wildlands of " .. GetProvinceName(AttackedProvince) .. " has failed!"
		elseif (Attacker == GrandStrategyFaction.Name and victorious_player == Attacker and empty_province) then
			battle_report_message = "My lord, we have taken the province of " .. GetProvinceName(AttackedProvince) .. "!"
		elseif (revolt and Defender == GrandStrategyFaction.Name and victorious_player == Defender) then
			battle_report_message = "My lord, a failed revolt to declare the independence of the " .. GetFactionFullName(Attacker) .. " has occurred in " .. GetProvinceName(AttackedProvince) .. "!"
		elseif (revolt and Defender == GrandStrategyFaction.Name and victorious_player == Attacker) then
			battle_report_message = "My lord, the province of " .. GetProvinceName(AttackedProvince) .. " has risen in rebellion, resulting in the declaration of independence of the " .. GetFactionFullName(Attacker) .. "!"
		end
		battle_report_message = battle_report_message .. "\n\nUnits Lost: " .. units_lost_string
		GrandStrategyDialog(battle_report_title, battle_report_message)
	end
	
	Attacker = ""
	Defender = ""
	AttackedProvince = nil
	GameResult = GameNoResult
end

function AcquireProvince(province, faction)
	if (province.Owner ~= "") then
		RemoveElementFromArray(GetFactionFromName(province.Owner).OwnedProvinces, GetProvinceKeyFromName(province.Name))
	end
	
	local old_faction = province.Owner
	
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
					
		for i, unitName in ipairs(Units) do
			if (IsHero(unitName)) then
				if (province.Heroes[string.gsub(unitName, "-", "_")] == 1) then -- if a hero is moving here, remove him
					province.Heroes[string.gsub(unitName, "-", "_")] = 0
				end
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

OldChangeFactionCulture = ChangeFactionCulture

function ChangeFactionCulture(old_civilization, faction_name, new_civilization)
	GetFactionFromName(faction_name).Civilization = new_civilization
	OldChangeFactionCulture(old_civilization, faction_name, new_civilization)
end

function CalculateProvinceBorderTiles()
	for key, value in pairs(WorldMapProvinces) do
		WorldMapProvinces[key]["BorderProvinces"] = {}
		WorldMapProvinces[key].Coastal = false
		for i=1,table.getn(WorldMapProvinces[key].Tiles) do
			if (GetTileProvince(WorldMapProvinces[key].Tiles[i][1] - 1, WorldMapProvinces[key].Tiles[i][2]) ~= WorldMapProvinces[key]) then
				if (GetTileProvince(WorldMapProvinces[key].Tiles[i][1] - 1, WorldMapProvinces[key].Tiles[i][2]) ~= nil and GetArrayIncludes(WorldMapProvinces[key].BorderProvinces, GetProvinceKeyFromName(GetTileProvince(WorldMapProvinces[key].Tiles[i][1] - 1, WorldMapProvinces[key].Tiles[i][2]).Name)) == false) then
					table.insert(WorldMapProvinces[key].BorderProvinces, GetProvinceKeyFromName(GetTileProvince(WorldMapProvinces[key].Tiles[i][1] - 1, WorldMapProvinces[key].Tiles[i][2]).Name))
					if (GetTileProvince(WorldMapProvinces[key].Tiles[i][1] - 1, WorldMapProvinces[key].Tiles[i][2]).Owner == "Ocean") then
						WorldMapProvinces[key].Coastal = true
					end
				end
			end
			if (GetTileProvince(WorldMapProvinces[key].Tiles[i][1] + 1, WorldMapProvinces[key].Tiles[i][2]) ~= WorldMapProvinces[key]) then
				if (GetTileProvince(WorldMapProvinces[key].Tiles[i][1] + 1, WorldMapProvinces[key].Tiles[i][2]) ~= nil and GetArrayIncludes(WorldMapProvinces[key].BorderProvinces, GetProvinceKeyFromName(GetTileProvince(WorldMapProvinces[key].Tiles[i][1] + 1, WorldMapProvinces[key].Tiles[i][2]).Name)) == false) then
					table.insert(WorldMapProvinces[key].BorderProvinces, GetProvinceKeyFromName(GetTileProvince(WorldMapProvinces[key].Tiles[i][1] + 1, WorldMapProvinces[key].Tiles[i][2]).Name))
					if (GetTileProvince(WorldMapProvinces[key].Tiles[i][1] + 1, WorldMapProvinces[key].Tiles[i][2]).Owner == "Ocean") then
						WorldMapProvinces[key].Coastal = true
					end
				end
			end
			if (GetTileProvince(WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2] - 1) ~= WorldMapProvinces[key]) then
				if (GetTileProvince(WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2] - 1) ~= nil and GetArrayIncludes(WorldMapProvinces[key].BorderProvinces, GetProvinceKeyFromName(GetTileProvince(WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2] - 1).Name)) == false) then
					table.insert(WorldMapProvinces[key].BorderProvinces, GetProvinceKeyFromName(GetTileProvince(WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2] - 1).Name))
					if (GetTileProvince(WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2] - 1).Owner == "Ocean") then
						WorldMapProvinces[key].Coastal = true
					end
				end
			end
			if (GetTileProvince(WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2] + 1) ~= WorldMapProvinces[key]) then
				if (GetTileProvince(WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2] + 1) ~= nil and GetArrayIncludes(WorldMapProvinces[key].BorderProvinces, GetProvinceKeyFromName(GetTileProvince(WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2] + 1).Name)) == false) then
					table.insert(WorldMapProvinces[key].BorderProvinces, GetProvinceKeyFromName(GetTileProvince(WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2] + 1).Name))
					if (GetTileProvince(WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2] + 1).Owner == "Ocean") then
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

function CalculateFactionUpkeeps()
	for key, value in pairs(Factions) do
		Factions[key]["Upkeep"] = 0
	end
	
	for key, value in pairs(WorldMapProvinces) do
		local province_owner = GetFactionFromName(WorldMapProvinces[key].Owner)
	
		for i, unitName in ipairs(Units) do
			if (IsMilitaryUnit(unitName)) then
				if (province_owner ~= nil) then -- pay upkeep for military units
					province_owner.Upkeep = province_owner.Upkeep + GetProvinceUnitQuantity(WorldMapProvinces[key].Name, unitName) * GetUnitTypeUpkeep(unitName)
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
					if (WorldMapProvinces[second_province_key].Coastal and (WorldMapProvinces[second_province_key].Owner == "" or Factions[key].Diplomacy[GetFactionKeyFromName(WorldMapProvinces[second_province_key].Owner)] == "War") and ProvinceHasSecondaryBorderThroughWaterWith(WorldMapProvinces[province_key], WorldMapProvinces[second_province_key])) then
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
		return Factions[string.gsub(faction, " ", "")]
	else
		return nil
	end
end

function GetFactionKeyFromName(faction)
	if (Factions[string.gsub(faction, " ", "")] ~= nil) then
		return string.gsub(faction, " ", "")
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
		if (WorldMapProvinces[key].Owner == faction) then
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
			if (CUpgrade:Get(unitName).Class == technology_type and GetFactionTechnology(faction.Civilization, faction.Name, unitName)) then
				return true
			end
		end
	end
	return false
end

function FactionHasHero(faction, unit_type)
	for province_i, key in ipairs(faction.OwnedProvinces) do
		if (ProvinceHasHero(WorldMapProvinces[key], unit_type)) then
			return true
		end
	end
	return false
end

function ProvinceHasHero(province, unit_type)
	if (province.Heroes[string.gsub(unit_type, "-", "_")] == 2) then
		return true
	else
		local has_other_hero_version = false -- check to see if the province has another version of the hero in it
		for j, second_unitName in ipairs(Units) do
			if (IsHero(second_unitName)) then
				if (GetUnitTypeData(unit_type, "DefaultName") == GetUnitTypeData(second_unitName, "DefaultName") and province.Heroes[string.gsub(second_unitName, "-", "_")] == 2) then
					has_other_hero_version = true
					break
				end
			end
		end
		return has_other_hero_version
	end
end

function GetHeroProvinceForFaction(unit_type, faction)
	for province_i, key in ipairs(faction.OwnedProvinces) do
		if (ProvinceHasHero(WorldMapProvinces[key], unit_type)) then
			return WorldMapProvinces[key]
		end
	end
	return WorldMapProvinces[key]
end

function RemoveHeroFromProvince(unit_type, province)
	if (province.Heroes[string.gsub(unit_type, "-", "_")] == 2) then
		province.Heroes[string.gsub(unit_type, "-", "_")] = 0
	else
		local has_other_hero_version = false -- check to see if the province has another version of the hero in it
		for j, second_unitName in ipairs(Units) do
			if (IsHero(second_unitName)) then
				if (GetUnitTypeData(unit_type, "DefaultName") == GetUnitTypeData(second_unitName, "DefaultName") and province.Heroes[string.gsub(second_unitName, "-", "_")] == 2) then
					province.Heroes[string.gsub(second_unitName, "-", "_")] = 0
					break
				end
			end
		end
	end
end

function RemoveHeroFromFaction(unit_type, faction)
	for province_i, key in ipairs(faction.OwnedProvinces) do
		RemoveHeroFromProvince(unit_type, WorldMapProvinces[key])
	end
end

function CanAttackProvince(province, faction, province_from)
	if (province.Owner == faction.Name or province.Owner == "Ocean" or (GetProvinceAttackedBy(province.Name) ~= "" and GetProvinceAttackedBy(province.Name) ~= faction.Name)) then -- province can only be attacked by one player per turn because of mechanical limitations of the current code
		return false
	end
	
	-- if is at peace, can't attack
	if (province.Owner ~= "" and faction.Diplomacy[GetFactionKeyFromName(province.Owner)] ~= "War") then
		return false
	end

	if (ProvinceHasBorderWith(province_from, province) == false and (province.Coastal == false or ProvinceHasSecondaryBorderThroughWaterWith(province_from, province) == false)) then
		return false
	end

	return true
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
					if (WorldMapProvinces[WorldMapProvinces[WorldMapProvinces[key].BorderProvinces[i]].BorderProvinces[j]] ~= nil and WorldMapProvinces[WorldMapProvinces[WorldMapProvinces[key].BorderProvinces[i]].BorderProvinces[j]].Owner == faction_to.Name) then
						return true
					end
				end
			elseif (WorldMapWaterProvinces[WorldMapProvinces[key].BorderProvinces[i]] ~= nil) then
				for j=1,table.getn(WorldMapWaterProvinces[WorldMapProvinces[key].BorderProvinces[i]].BorderProvinces) do
					if (WorldMapProvinces[WorldMapWaterProvinces[WorldMapProvinces[key].BorderProvinces[i]].BorderProvinces[j]] ~= nil and WorldMapProvinces[WorldMapWaterProvinces[WorldMapProvinces[key].BorderProvinces[i]].BorderProvinces[j]].Owner == faction_to.Name) then
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
					if (WorldMapProvinces[WorldMapWaterProvinces[WorldMapProvinces[key].BorderProvinces[i]].BorderProvinces[j]] ~= nil and WorldMapProvinces[WorldMapWaterProvinces[WorldMapProvinces[key].BorderProvinces[i]].BorderProvinces[j]].Owner == faction_to.Name) then
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
	menu:addFullButton("~!Quit Game", "q", 16, 40 + (36 * 1),
		function() RunGrandStrategyQuitToMenuConfirmMenu() end)
	menu:addFullButton("E~!xit to Desktop", "x", 16, 40 + (36 * 2),
		function() RunExitConfirmMenu() end)
	menu:addFullButton("Previous Menu (~<Esc~>)", "escape", 16, 248,
		function() menu:stop() end)

	menu:run(false)
end

function RunGrandStrategyQuitToMenuConfirmMenu()
	local menu = WarGameMenu(panel(1))

	menu:addLabel("Are you sure?", 128, 11)
	menu:addFullButton("~!Yes", "y", 16, 11 + (36 * 2) + 29,
		function()
			StopMusic();
			ClearGrandStrategyUIVariables()
			GrandStrategyMenu:stop() 
			menu:stop()
			ClearGrandStrategyVariables()
			SetPlayerData(GetThisPlayer(), "RaceName", "gnome")
		end)
	menu:addFullButton("~!No", "n", 16, 11 + (36 * 3) + 29,
		function() menu:stop() end)

	menu:run(false)
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
		default_name = string.gsub(GrandStrategyFaction.Name, " ", "_") .. "_" .. math.abs(GrandStrategyYear) .. "_" .. year_ending
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
			ClearGrandStrategyUIVariables()
			GrandStrategyMenu:stop();
			RunGrandStrategyGame()
			GrandStrategyGamePaused = false
		end)

	menu:run(false)
end

function RunGrandStrategyLoadGameMenu()
	GrandStrategyGamePaused = true
	local menu = WarGameMenu(panel(3))
	menu:resize(384, 256)
	menu:setDrawMenusUnder(true)

	local saved_games_list = {}
	for i, key in ipairs(ListFilesInDirectory("wyr/")) do
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
			CleanGrandStrategyGame()
			InitializeGrandStrategyGame()
			
			GrandStrategy = true
			GrandStrategyGamePaused = false
			GameResult = GameNoResult
			Load("wyr/" .. saved_games_list[saved_games:getSelected() + 1] .. ".lua")
			GrandStrategyYear = wyr[saved_games_list[saved_games:getSelected() + 1]].SavedGrandStrategyYear
			SetGrandStrategyWorld(wyr[saved_games_list[saved_games:getSelected() + 1]].SavedGrandStrategyWorld)
			for x=0,GetWorldMapWidth() - 1 do
				for y=0,GetWorldMapHeight() - 1 do
					CalculateWorldMapTileGraphicTile(x, y)
				end
			end
			
			Factions = wyr[saved_games_list[saved_games:getSelected() + 1]].SavedFactions
			GrandStrategyFaction = GetFactionFromName(wyr[saved_games_list[saved_games:getSelected() + 1]].SavedGrandStrategyFactionName)
			SetPlayerFaction(GetFactionFromName(wyr[saved_games_list[saved_games:getSelected() + 1]].SavedGrandStrategyFactionName).Civilization, GetFactionFromName(wyr[saved_games_list[saved_games:getSelected() + 1]].SavedGrandStrategyFactionName).Name)
			
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
				if (GrandStrategyFaction ~= nil and WorldMapProvinces[key].Owner == GrandStrategyFaction.Name) then
					CenterGrandStrategyMapOnTile(WorldMapProvinces[key].SettlementLocation[1], WorldMapProvinces[key].SettlementLocation[2])
				end
			end
			
			wyr[saved_games_list[saved_games:getSelected() + 1]] = nil
			
			InitializeGrandStrategyMinimap()
			
			menu:stop()
			if (GrandStrategyMenu) then
				ClearGrandStrategyUIVariables()
				GrandStrategyMenu:stop();
			end
			for key, value in pairs(Factions) do
				if (GetFactionProvinceCount(Factions[key]) > 0) then
					CalculateFactionIncomes(Factions[key].Civilization, Factions[key].Name)
				end
			end
			CalculateFactionUpkeeps()
			InitGameSettings() -- initialize scenario variables (i.e. No Randomness)
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
			ClearGrandStrategyUIVariables()
			GrandStrategyMenu:stop();
			RunGrandStrategyGame()
			GrandStrategyGamePaused = false
		end)

	menu:run()
end

function DrawWorldMapTile(file, tile_x, tile_y)
	local width_indent = GrandStrategyMapWidthIndent
	local height_indent = GrandStrategyMapHeightIndent
	
	local last_tile_width_modifier = -32 + (Video.Width % 64)
	
	if (string.find(file, "sites") ~= nil) then -- different method for site graphics
		local world_map_tile
		if (string.find(file, "settlement") ~= nil) then
			world_map_tile = CPlayerColorGraphic:New(file)
			local settlement_color = ""
			if (GetTileProvince(tile_x, tile_y).Owner ~= "") then
				settlement_color = GetFactionData(GetFactionFromName(GetTileProvince(tile_x, tile_y).Owner).Civilization, GetTileProvince(tile_x, tile_y).Owner, "Color")
			else
				settlement_color = "gray"
			end
			OnScreenSites[table.getn(OnScreenSites) + 1] = PlayerColorImageButton("", settlement_color)
		else
			world_map_tile = CGraphic:New(file)
			OnScreenSites[table.getn(OnScreenSites) + 1] = ImageButton("")
		end
		world_map_tile:Load()
		GrandStrategyMenu:add(OnScreenSites[table.getn(OnScreenSites)], 64 * (tile_x - WorldMapOffsetX) + width_indent, 16 + 64 * (tile_y - WorldMapOffsetY) + height_indent)
		OnScreenSites[table.getn(OnScreenSites)]:setNormalImage(world_map_tile)
		OnScreenSites[table.getn(OnScreenSites)]:setPressedImage(world_map_tile)
		OnScreenSites[table.getn(OnScreenSites)]:setDisabledImage(world_map_tile)
		if ((tile_x - WorldMapOffsetX) >= (math.floor(GrandStrategyMapWidth / 64))) then
			OnScreenSites[table.getn(OnScreenSites)]:setSize(32 - width_indent + last_tile_width_modifier, 64)
		elseif ((tile_y - WorldMapOffsetY) >= (math.floor(GrandStrategyMapHeight / 64))) then
			OnScreenSites[table.getn(OnScreenSites)]:setSize(64, 32 - height_indent)
		else
			OnScreenSites[table.getn(OnScreenSites)]:setSize(64, 64)
		end
		OnScreenSites[table.getn(OnScreenSites)]:setBorderSize(0)
	end
end

-- draw UI
function AddUIElement(file, x, y)
	local ui_element = CGraphic:New(file)
	ui_element:Load()
	UIElements[table.getn(UIElements) + 1] = ImageWidget(ui_element)
	GrandStrategyMenu:add(UIElements[table.getn(UIElements)], x, y)
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

function AddGrandStrategyBuildingButton(x, y, unit_type)
	local b
	local unit_icon
	
	local old_unit_type = unit_type
	
	if (GetProvinceSettlementBuilding(SelectedProvince.Name, unit_type) == false) then -- if not built, make icon gray
		if ((GetProvinceCivilization(SelectedProvince.Name) == "teuton" or GetParentCivilization(GetProvinceCivilization(SelectedProvince.Name)) == "teuton") and GetUnitTypeData(unit_type, "Class") == "town-hall" and FactionHasTechnologyType(GrandStrategyFaction, "masonry") == false) then
			unit_type = "unit-germanic-town-hall"
		elseif ((GetProvinceCivilization(SelectedProvince.Name) == "teuton" or GetParentCivilization(GetProvinceCivilization(SelectedProvince.Name)) == "teuton") and GetUnitTypeData(unit_type, "Class") == "barracks" and FactionHasTechnologyType(GrandStrategyFaction, "masonry") == false) then
			unit_type = "unit-germanic-barracks"
		elseif ((GetProvinceCivilization(SelectedProvince.Name) == "teuton" or GetParentCivilization(GetProvinceCivilization(SelectedProvince.Name)) == "teuton") and GetUnitTypeData(unit_type, "Class") == "lumber-mill" and FactionHasTechnologyType(GrandStrategyFaction, "masonry") == false) then -- special case for the teuton lumber mill
			unit_type = "unit-germanic-carpenters-shop"
		elseif ((GetProvinceCivilization(SelectedProvince.Name) == "teuton" or GetParentCivilization(GetProvinceCivilization(SelectedProvince.Name)) == "teuton") and GetUnitTypeData(unit_type, "Class") == "smithy" and FactionHasTechnologyType(GrandStrategyFaction, "masonry") == false) then
			unit_type = "unit-germanic-smithy"
		end
		b = ImageButton("")
		unit_icon = CGraphic:New(string.sub(CIcon:Get(GetUnitTypeData(unit_type, "Icon")).G:getFile(), 0, -5) .. "_grayed.png", 46, 38)
	else
		if ((GetProvinceCivilization(SelectedProvince.Name) == "teuton" or GetParentCivilization(GetProvinceCivilization(SelectedProvince.Name)) == "teuton") and GetUnitTypeData(unit_type, "Class") == "town-hall" and FactionHasTechnologyType(GrandStrategyFaction, "masonry") == false) then
			unit_type = "unit-germanic-town-hall"
		elseif ((GetProvinceCivilization(SelectedProvince.Name) == "teuton" or GetParentCivilization(GetProvinceCivilization(SelectedProvince.Name)) == "teuton") and GetUnitTypeData(unit_type, "Class") == "barracks" and FactionHasTechnologyType(GrandStrategyFaction, "masonry") == false) then
			unit_type = "unit-germanic-barracks"
		elseif ((GetProvinceCivilization(SelectedProvince.Name) == "teuton" or GetParentCivilization(GetProvinceCivilization(SelectedProvince.Name)) == "teuton") and GetUnitTypeData(unit_type, "Class") == "lumber-mill" and FactionHasTechnologyType(GrandStrategyFaction, "masonry") == false) then -- special case for the germanic lumber mill
			unit_type = "unit-germanic-carpenters-shop"
		elseif ((GetProvinceCivilization(SelectedProvince.Name) == "teuton" or GetParentCivilization(GetProvinceCivilization(SelectedProvince.Name)) == "teuton") and GetUnitTypeData(unit_type, "Class") == "smithy" and FactionHasTechnologyType(GrandStrategyFaction, "masonry") == false) then
			unit_type = "unit-germanic-smithy"
		end
		b = PlayerColorImageButton("", GetFactionData(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, "Color"))
		unit_icon = CIcon:Get(GetUnitTypeData(unit_type, "Icon")).G
	end
	
	local unit_type_name = GetUnitTypeName(unit_type)
	
	unit_type = old_unit_type
	
	unit_icon:Load()
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
	if (GetUnitTypeData(unit_type, "Costs", "gold") > 0) then
		if (building_cost_tooltip == "") then
			building_cost_tooltip = " (costs "
		else
			building_cost_tooltip = building_cost_tooltip .. ", "
		end
		building_cost_tooltip = building_cost_tooltip .. GetUnitTypeData(unit_type, "Costs", "gold") .. " Gold"
	end
	if (GetUnitTypeData(unit_type, "Costs", "lumber") > 0) then
		if (building_cost_tooltip == "") then
			building_cost_tooltip = " (costs "
		else
			building_cost_tooltip = building_cost_tooltip .. " and "
		end
		building_cost_tooltip = building_cost_tooltip .. GetUnitTypeData(unit_type, "Costs", "lumber") .. " Lumber"
	end
	if (GetUnitTypeData(unit_type, "Costs", "stone") > 0) then
		if (building_cost_tooltip == "") then
			building_cost_tooltip = " (costs "
		else
			building_cost_tooltip = building_cost_tooltip .. " and "
		end
		building_cost_tooltip = building_cost_tooltip .. GetUnitTypeData(unit_type, "Costs", "stone") .. " Stone"
	end
	if (building_cost_tooltip ~= "") then
		building_cost_tooltip = building_cost_tooltip .. ")"
	end
	
	local building_function_tooltip = ""
	if (GetUnitTypeData(unit_type, "Class") == "town-hall") then
		building_function_tooltip = " (more province information and trading of resources)"
	elseif (GetUnitTypeData(unit_type, "Class") == "stronghold") then
		building_function_tooltip = " (more province information and trading of resources)"
	elseif (GetUnitTypeData(unit_type, "Class") == "barracks") then
		building_function_tooltip = " (recruits units)"
	elseif (GetUnitTypeData(unit_type, "Class") == "lumber-mill") then
		building_function_tooltip = " (researches projectile upgrades)"
	elseif (GetUnitTypeData(unit_type, "Class") == "smithy") then
		building_function_tooltip = " (researches melee weapon, shield and siege weapon upgrades)"
	elseif (GetUnitTypeData(unit_type, "Class") == "mercenary-camp") then
		building_function_tooltip = " (hires mercenaries)"
	end
	if (GetProvinceSettlementBuilding(SelectedProvince.Name, unit_type)) then
		UIElements[table.getn(UIElements)]:setTooltip("Use " .. unit_type_name .. building_function_tooltip)
	elseif (GetProvinceCurrentConstruction(SelectedProvince.Name) == unit_type) then
		UIElements[table.getn(UIElements)]:setTooltip(unit_type_name .. " in " .. GetProvinceName(SelectedProvince) .. " under construction")
	else
		UIElements[table.getn(UIElements)]:setTooltip("Build " .. unit_type_name .. " in " .. GetProvinceName(SelectedProvince) .. building_cost_tooltip)
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

	local veterans = 0
	local veteran_unit_type = GetCivilizationClassUnitType("veteran-" .. GetUnitTypeData(unit_type, "Class"), GetUnitTypeData(unit_type, "Civilization"))
	if (veteran_unit_type ~= nil and GetUnitTypeData(unit_type, "Civilization") == GetUnitTypeData(veteran_unit_type, "Civilization")) then
		veterans = veterans + GetProvinceUnitQuantity(SelectedProvince.Name, veteran_unit_type)
	end
	local heroic_unit_type = GetCivilizationClassUnitType("heroic-" .. GetUnitTypeData(unit_type, "Class"), GetUnitTypeData(unit_type, "Civilization"))
	if (heroic_unit_type ~= nil and GetUnitTypeData(unit_type, "Civilization") == GetUnitTypeData(heroic_unit_type, "Civilization")) then
		veterans = veterans + GetProvinceUnitQuantity(SelectedProvince.Name, heroic_unit_type)
	end

	UIElements[table.getn(UIElements)]:setTooltip("You have " .. GetProvinceUnitQuantity(SelectedProvince.Name, unit_type) + veterans .. " " .. GetUnitTypeName(unit_type) .. " regiments in " .. GetProvinceName(SelectedProvince))
	
	return UIElements[table.getn(UIElements)]
end

function AddGrandStrategyTechnologyButton(x, y, unit_type)
	local b
	local unit_icon
	
	if (GetFactionCurrentResearch(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name) == unit_type) then -- if already being researched, make icon gray
		b = ImageButton("")
		unit_icon = CGraphic:New(string.sub(CUpgrade:Get(unit_type).Icon.G:getFile(), 0, -5) .. "_grayed.png", 46, 38)
	else
		b = PlayerColorImageButton("", GetFactionData(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, "Color"))
		unit_icon = CUpgrade:Get(unit_type).Icon.G
	end
	unit_icon:Load()
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
			cost_tooltip = " (costs "
		else
			cost_tooltip = cost_tooltip .. ", "
		end
		cost_tooltip = cost_tooltip .. CUpgrade:Get(unit_type).GrandStrategyCosts[7] .. " Research"
	end
	if (CUpgrade:Get(unit_type).GrandStrategyCosts[1] > 0) then -- gold cost
		if (cost_tooltip == "") then
			cost_tooltip = " (costs "
		else
			cost_tooltip = cost_tooltip .. ", "
		end
		cost_tooltip = cost_tooltip .. CUpgrade:Get(unit_type).GrandStrategyCosts[1] .. " Gold"
	end
	if (CUpgrade:Get(unit_type).GrandStrategyCosts[2] > 0) then -- lumber cost
		if (cost_tooltip == "") then
			cost_tooltip = " (costs "
		else
			cost_tooltip = cost_tooltip .. ", "
		end
		cost_tooltip = cost_tooltip .. CUpgrade:Get(unit_type).GrandStrategyCosts[2] .. " Lumber"
	end
	if (CUpgrade:Get(unit_type).GrandStrategyCosts[5] > 0) then -- stone cost
		if (cost_tooltip == "") then
			cost_tooltip = " (costs "
		else
			cost_tooltip = cost_tooltip .. ", "
		end
		cost_tooltip = cost_tooltip .. CUpgrade:Get(unit_type).GrandStrategyCosts[5] .. " Stone"
	end
	if (CUpgrade:Get(unit_type).GrandStrategyCosts[8] > 0) then -- prestige cost
		if (cost_tooltip == "") then
			cost_tooltip = " (costs "
		else
			cost_tooltip = cost_tooltip .. ", "
		end
		cost_tooltip = cost_tooltip .. CUpgrade:Get(unit_type).GrandStrategyCosts[8] .. " prestige"
	end
	if (cost_tooltip ~= "") then
		cost_tooltip = cost_tooltip .. ")"
	end

	if (GetFactionCurrentResearch(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name) == unit_type) then
		UIElements[table.getn(UIElements)]:setTooltip(CUpgrade:Get(unit_type).Name .. " being researched")
	else
		UIElements[table.getn(UIElements)]:setTooltip("Research " .. CUpgrade:Get(unit_type).Name .. cost_tooltip)
	end
	UIElements[table.getn(UIElements)]:setFrameImage(Preference.CommandButtonFrameG)
	UIElements[table.getn(UIElements)]:setPressedFrameImage(Preference.CommandButtonFrameG)
	
	return UIElements[table.getn(UIElements)]
end

function AddGrandStrategyHeroButton(x, y, unit_type)
	local b
	local unit_icon
	
	if (SelectedHero == unit_type) then -- if hero is already selected, make icon gray
		b = ImageButton("")
		unit_icon = CGraphic:New(string.sub(CIcon:Get(GetUnitTypeData(unit_type, "Icon")).G:getFile(), 0, -5) .. "_grayed.png", 46, 38)
	else
		b = PlayerColorImageButton("", GetFactionData(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, "Color"))
		unit_icon = CIcon:Get(GetUnitTypeData(unit_type, "Icon")).G
	end
	unit_icon:Load()
	UIElements[table.getn(UIElements) + 1] = b
	UIElements[table.getn(UIElements)]:setActionCallback(
		function()
			PlaySound("click")
			if (SelectedHero == unit_type) then
				SelectedHero = ""
			else
				SelectedHero = unit_type
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

	if (SelectedHero == unit_type) then
		UIElements[table.getn(UIElements)]:setTooltip("Unselect " .. GetUnitTypeData(unit_type, "DefaultName"))
	else
		UIElements[table.getn(UIElements)]:setTooltip("Select " .. GetUnitTypeData(unit_type, "DefaultName"))
	end
	UIElements[table.getn(UIElements)]:setFrameImage(Preference.IconFrameG)
	UIElements[table.getn(UIElements)]:setPressedFrameImage(Preference.PressedIconFrameG)
	
	return UIElements[table.getn(UIElements)]
end

function AddGrandStrategyMercenaryButton(x, y, unit_type)
	local b
	local unit_icon
	
	if (GetProvinceUnderConstructionUnitQuantity(SelectedProvince.Name, unit_type) > 0) then -- if mercenary group is already being hired, make icon gray
		b = ImageButton("")
		unit_icon = CGraphic:New(string.sub(CIcon:Get(GetUnitTypeData(unit_type, "Icon")).G:getFile(), 0, -5) .. "_grayed.png", 46, 38)
	else
		b = PlayerColorImageButton("", GetFactionData(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, "Color"))
		unit_icon = CIcon:Get(GetUnitTypeData(unit_type, "Icon")).G
	end
	unit_icon:Load()
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
	if (GetUnitTypeData(unit_type, "Costs", "gold") > 0) then
		if (cost_tooltip == "") then
			cost_tooltip = " (costs "
		else
			cost_tooltip = cost_tooltip .. ", "
		end
		cost_tooltip = cost_tooltip .. GetUnitTypeData(unit_type, "Costs", "gold") * GetUnitTypeData(unit_type, "TrainQuantity") .. " Gold"
	end
	if (GetUnitTypeData(unit_type, "Costs", "lumber") > 0) then
		if (cost_tooltip == "") then
			cost_tooltip = " (costs "
		else
			cost_tooltip = cost_tooltip .. " and "
		end
		cost_tooltip = cost_tooltip .. GetUnitTypeData(unit_type, "Costs", "lumber") * GetUnitTypeData(unit_type, "TrainQuantity") .. " Lumber"
	end
	if (GetUnitTypeData(unit_type, "Costs", "stone") > 0) then
		if (cost_tooltip == "") then
			cost_tooltip = " (costs "
		else
			cost_tooltip = cost_tooltip .. " and "
		end
		cost_tooltip = cost_tooltip .. GetUnitTypeData(unit_type, "Costs", "stone") * GetUnitTypeData(unit_type, "TrainQuantity") .. " Stone"
	end
	if (cost_tooltip ~= "") then
		cost_tooltip = cost_tooltip .. ")"
	end
							
	if (GetUnitTypeUpkeep(unit_type) > 0) then
		cost_tooltip = cost_tooltip .. " (" .. GetUnitTypeUpkeep(unit_type) * GetUnitTypeData(unit_type, "TrainQuantity") .. " Gold Upkeep)"
	end
							
	local regiment_type_name = GetUnitTypeNamePluralForm(unit_type)
							
	if (GetProvinceUnderConstructionUnitQuantity(SelectedProvince.Name, unit_type) > 0) then
		UIElements[table.getn(UIElements)]:setTooltip("Cancel hiring " .. regiment_type_name)
	else
		UIElements[table.getn(UIElements)]:setTooltip("Hire " .. regiment_type_name .. cost_tooltip)
	end
	UIElements[table.getn(UIElements)]:setFrameImage(Preference.IconFrameG)
	UIElements[table.getn(UIElements)]:setPressedFrameImage(Preference.PressedIconFrameG)
	
	return UIElements[table.getn(UIElements)]
end

function AddGrandStrategyCommodityButton(x, y, commodity)
	CommodityButtons[table.getn(CommodityButtons) + 1] = ImageButton("")
	CommodityButtons[table.getn(CommodityButtons)]:setActionCallback(
		function()
			PlaySound("click")
			DrawGrandStrategyInterface()
		end
	)
	GrandStrategyMenu:add(CommodityButtons[table.getn(CommodityButtons)], x, y)
	CommodityButtons[table.getn(CommodityButtons)]:setBorderSize(0) -- Andrettin: make buttons not have the borders they previously had

--	CommodityButtons[table.getn(CommodityButtons)]:setBaseColor(Color(0,0,0,0))
--	CommodityButtons[table.getn(CommodityButtons)]:setForegroundColor(Color(0,0,0,0))
--	CommodityButtons[table.getn(CommodityButtons)]:setBackgroundColor(Color(0,0,0,0))
	local commodity_icon = CGraphic:New("ui/" .. commodity .. ".png", 14, 14)
	commodity_icon:Load()
	CommodityButtons[table.getn(CommodityButtons)]:setNormalImage(commodity_icon)
	CommodityButtons[table.getn(CommodityButtons)]:setPressedImage(commodity_icon)
	CommodityButtons[table.getn(CommodityButtons)]:setDisabledImage(commodity_icon)
	CommodityButtons[table.getn(CommodityButtons)]:setSize(14, 14)
	CommodityButtons[table.getn(CommodityButtons)]:setFont(Fonts["game"])

	if (commodity == "research") then
		CommodityButtons[table.getn(CommodityButtons)]:setTooltip("Gain Research by building town halls, lumber mills and smithies")
	elseif (commodity == "prestige") then
		CommodityButtons[table.getn(CommodityButtons)]:setTooltip("Prestige influences trade priority between nations, among other things")
	end

	local quantity_stored = GetFactionResource(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, commodity)
	local income = ""
	if (commodity == "gold") then
		if (GetFactionIncome(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, "gold") < GrandStrategyFaction.Upkeep) then
			income = GetFactionIncome(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, "gold") - GrandStrategyFaction.Upkeep
		elseif (GetFactionIncome(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, "gold") > GrandStrategyFaction.Upkeep) then
			income = "+" .. GetFactionIncome(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, "gold") - GrandStrategyFaction.Upkeep
		end
	else
		if (GetFactionIncome(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, commodity) > 0) then
			income = "+" .. GetFactionIncome(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, commodity)
		end
	end

	if (string.len(quantity_stored .. income) <= 9) then
		CommodityButtons[table.getn(CommodityButtons) + 1] = Label(quantity_stored .. income)
		CommodityButtons[table.getn(CommodityButtons)]:setFont(Fonts["game"])
		CommodityButtons[table.getn(CommodityButtons)]:adjustSize()
		GrandStrategyMenu:add(CommodityButtons[table.getn(CommodityButtons)], x + 18, y + 1)
	else
		CommodityButtons[table.getn(CommodityButtons) + 1] = Label(quantity_stored .. income)
		CommodityButtons[table.getn(CommodityButtons)]:setFont(Fonts["small"])
		CommodityButtons[table.getn(CommodityButtons)]:adjustSize()
		GrandStrategyMenu:add(CommodityButtons[table.getn(CommodityButtons)], x + 18, y + 1 + 2)
	end
end

function DrawOnScreenTiles()
	if (OnScreenSites ~= nil) then
		for i=1,table.getn(OnScreenSites) do
			if (OnScreenSites[i] ~= nil) then
				GrandStrategyMenu:remove(OnScreenSites[i])
			end
		end
		
		for i=table.getn(OnScreenSites),table.getn(OnScreenSites), -1 do
			if (OnScreenSites[i] ~= nil) then
				OnScreenSites[i] = nil
			end
		end
	end

	OnScreenSites = nil
	OnScreenSites = {}

	for key, value in pairs(WorldMapProvinces) do
		if (WorldMapProvinces[key].SettlementLocation[1] >= WorldMapOffsetX and WorldMapProvinces[key].SettlementLocation[1] <= math.floor(WorldMapOffsetX + (GrandStrategyMapWidth / 64)) and WorldMapProvinces[key].SettlementLocation[2] >= WorldMapOffsetY and WorldMapProvinces[key].SettlementLocation[2] <= math.floor(WorldMapOffsetY + (GrandStrategyMapHeight / 64))) then
			if (GrandStrategyFaction ~= nil and WorldMapProvinces[key].Owner == GrandStrategyFaction.Name) then
				for i, unitName in ipairs(Units) do
					if (IsMilitaryUnit(unitName)) then
						if (GetProvinceMovingUnitQuantity(WorldMapProvinces[key].Name, unitName) > 0) then
							-- draw symbol that troops are moving to the province
							DrawWorldMapTile("tilesets/world/sites/move.png", WorldMapProvinces[key].SettlementLocation[1], WorldMapProvinces[key].SettlementLocation[2])
							break
						end
					end
					if (IsHero(unitName)) then
						if (WorldMapProvinces[key].Heroes[string.gsub(unitName, "-", "_")] == 1) then
							-- draw symbol that a hero is moving to the province
							DrawWorldMapTile("tilesets/world/sites/move.png", WorldMapProvinces[key].SettlementLocation[1], WorldMapProvinces[key].SettlementLocation[2])
							break
						end
					end
				end
				for i, unitName in ipairs(Units) do
					if (IsHero(unitName)) then
						if (WorldMapProvinces[key].Heroes[string.gsub(unitName, "-", "_")] == 2) then
							DrawWorldMapTile("tilesets/world/sites/hero.png", WorldMapProvinces[key].SettlementLocation[1], WorldMapProvinces[key].SettlementLocation[2])
							break
						end
					end
				end
			end
		end
	end

	-- put everything that isn't terra incognita at the bottom
	for i=table.getn(OnScreenSites),1,-1 do
		OnScreenSites[i]:requestMoveToBottom()
	end
end

function DrawGrandStrategyResourceBar()
	if (CommodityButtons ~= nil) then
		for i=1,table.getn(CommodityButtons) do
			if (CommodityButtons[i] ~= nil) then
				GrandStrategyMenu:remove(CommodityButtons[i])
			end
		end
	end

	CommodityButtons = nil
	CommodityButtons = {}
	
	if (GrandStrategyFaction ~= nil) then
		-- add resource quantities
		AddGrandStrategyCommodityButton(154 + (100 * 0), 0, "gold")
		AddGrandStrategyCommodityButton(154 + (100 * 1), 0, "lumber")
		AddGrandStrategyCommodityButton(154 + (100 * 2), 0, "stone")
		AddGrandStrategyCommodityButton(154 + (100 * 3), 0, "research")
		AddGrandStrategyCommodityButton(154 + (100 * 4), 0, "prestige")
	end
	
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

	DrawGrandStrategyResourceBar()
	
	local display_year
	if (GrandStrategyYear >= 0) then
		display_year = GrandStrategyYear .. " AD"
	else
		display_year = (GrandStrategyYear * -1) .. " BC"
	end
	if (GrandStrategyFaction ~= nil) then
		AddGrandStrategyLabel(GrandStrategyFaction.Name .. ", " .. display_year, 81, Video.Height - 186 + 8, Fonts["game"], true, false)
	end
	
	if (SelectedProvince ~= nil) then
		local province_name_text = GetProvinceName(SelectedProvince)
		if (SelectedProvince.Owner ~= "" and SelectedProvince.Owner ~= "Ocean") then
			province_name_text = province_name_text .. ", "
			if (GetFactionData(GetFactionFromName(SelectedProvince.Owner).Civilization, SelectedProvince.Owner, "Type")  == "tribe") then -- if is a tribe, just use the tribe's name
				province_name_text = province_name_text .. SelectedProvince.Owner
			elseif (GetFactionData(GetFactionFromName(SelectedProvince.Owner).Civilization, SelectedProvince.Owner, "Type") == "polity") then -- if is a polity, use the polity's name accompanied by its title
				province_name_text = province_name_text .. GetFactionFromName(SelectedProvince.Owner).Title .. " of " .. SelectedProvince.Owner
			end
		end
		AddGrandStrategyLabel(province_name_text, UI.InfoPanel.X + 27, UI.InfoPanel.Y + 11, Fonts["game"], true, true)

		-- add buttons for buildings and selecting units if is an owned province and in the normal province interface setting
		if (GrandStrategyFaction ~= nil and SelectedProvince.Owner == GrandStrategyFaction.Name) then
			if (GrandStrategyInterfaceState == "Province") then
				local item_x = 0
				local item_y = 0
				for i, unitName in ipairs(Units) do
					if (IsMilitaryUnit(unitName)) then
						local veterans = 0
						local veteran_unit_type = GetCivilizationClassUnitType("veteran-" .. GetUnitTypeData(unitName, "Class"), GetUnitTypeData(unitName, "Civilization"))
						if (veteran_unit_type ~= nil and GetUnitTypeData(unitName, "Civilization") == GetUnitTypeData(veteran_unit_type, "Civilization")) then
							veterans = veterans + GetProvinceUnitQuantity(SelectedProvince.Name, veteran_unit_type)
						else
							veteran_unit_type = nil
						end
						local heroic_unit_type = GetCivilizationClassUnitType("heroic-" .. GetUnitTypeData(unitName, "Class"), GetUnitTypeData(unitName, "Civilization"))
						if (heroic_unit_type ~= nil and GetUnitTypeData(unitName, "Civilization") == GetUnitTypeData(heroic_unit_type, "Civilization")) then
							veterans = veterans + GetProvinceUnitQuantity(SelectedProvince.Name, heroic_unit_type)
						else
							heroic_unit_type = nil
						end

						if ((IsUnitAvailableForTraining(SelectedProvince, unitName) and GetUnitTypeInterfaceState(unitName) ~= "mercenary-camp") or (GetProvinceUnitQuantity(SelectedProvince.Name, unitName) + veterans > 0 and (GetUnitTypeInterfaceState(unitName) ~= "" or GetUnitTypeData(unitName, "Mercenary")))) then -- don't show available for training but not had units in resolution heights lower than 600
							local icon_offset_x = Video.Width - 243 + 15 + (item_x * 56)
							local icon_offset_y = Video.Height - 186 + 13 + (item_y * (47 + 19 + 4))

							AddGrandStrategyUnitButton(icon_offset_x, icon_offset_y, unitName)
							if (GetProvinceUnderConstructionUnitQuantity(SelectedProvince.Name, unitName) > 0) then
								AddGrandStrategyLabel(GetProvinceUnitQuantity(SelectedProvince.Name, unitName) + veterans .. "+" .. GetProvinceUnderConstructionUnitQuantity(SelectedProvince.Name, unitName), icon_offset_x + 24, icon_offset_y + 26, Fonts["game"], true, false)
							else
								AddGrandStrategyLabel(GetProvinceUnitQuantity(SelectedProvince.Name, unitName) + veterans, icon_offset_x + 24, icon_offset_y + 26, Fonts["game"], true, false)
							end

							-- add unit selection arrows
							local b = AddGrandStrategyImageButton("", "", icon_offset_x - 2, icon_offset_y + 40, function()
								if (heroic_unit_type ~= nil and SelectedUnits[string.gsub(heroic_unit_type, "-", "_")] > 0) then -- deselect heroes first and select them last
									SelectedUnits[string.gsub(heroic_unit_type, "-", "_")] = SelectedUnits[string.gsub(heroic_unit_type, "-", "_")] - 1
									DrawGrandStrategyInterface()
								elseif (veteran_unit_type ~= nil and SelectedUnits[string.gsub(veteran_unit_type, "-", "_")] > 0) then -- deselect veterans second and select them second last
									SelectedUnits[string.gsub(veteran_unit_type, "-", "_")] = SelectedUnits[string.gsub(veteran_unit_type, "-", "_")] - 1
									DrawGrandStrategyInterface()
								elseif (SelectedUnits[string.gsub(unitName, "-", "_")] > 0) then
									SelectedUnits[string.gsub(unitName, "-", "_")] = SelectedUnits[string.gsub(unitName, "-", "_")] - 1
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
							local regiment_type_name = GetUnitTypeNamePluralForm(unitName)
							b:setTooltip("Deselect one ".. regiment_type_name .. " regiment")

							local b = AddGrandStrategyImageButton("", "", icon_offset_x + 2 + 46 - 20, icon_offset_y + 40, function()
								if (SelectedUnits[string.gsub(unitName, "-", "_")] < GetProvinceUnitQuantity(SelectedProvince.Name, unitName)) then
									SelectedUnits[string.gsub(unitName, "-", "_")] = SelectedUnits[string.gsub(unitName, "-", "_")] + 1
									DrawGrandStrategyInterface()
								elseif (veteran_unit_type ~= nil and SelectedUnits[string.gsub(veteran_unit_type, "-", "_")] < GetProvinceUnitQuantity(SelectedProvince.Name, veteran_unit_type)) then
									SelectedUnits[string.gsub(veteran_unit_type, "-", "_")] = SelectedUnits[string.gsub(veteran_unit_type, "-", "_")] + 1
									DrawGrandStrategyInterface()
								elseif (heroic_unit_type ~= nil and SelectedUnits[string.gsub(heroic_unit_type, "-", "_")] < GetProvinceUnitQuantity(SelectedProvince.Name, heroic_unit_type)) then
									SelectedUnits[string.gsub(heroic_unit_type, "-", "_")] = SelectedUnits[string.gsub(heroic_unit_type, "-", "_")] + 1
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
							local regiment_type_name = GetUnitTypeNamePluralForm(unitName)
							b:setTooltip("Select one ".. regiment_type_name .. " regiment")

							local selected_veterans = 0
							if (veteran_unit_type ~= nil) then
								selected_veterans = selected_veterans + SelectedUnits[string.gsub(veteran_unit_type, "-", "_")]
							end
							if (heroic_unit_type ~= nil) then
								selected_veterans = selected_veterans + SelectedUnits[string.gsub(heroic_unit_type, "-", "_")]
							end
							AddGrandStrategyLabel(SelectedUnits[string.gsub(unitName, "-", "_")] + selected_veterans, icon_offset_x + 24, icon_offset_y + 42, Fonts["game"], true, false)

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
				
				for i, unitName in ipairs(Units) do
					if (IsHero(unitName)) then
						if (SelectedProvince.Heroes[string.gsub(unitName, "-", "_")] == 2) then
							-- add a button to show the heroes in the province (but only if there is actually a hero there)
							local b = AddGrandStrategyImageButton("Show ~!Heroes", "h", Video.Width - 243 + 72, Video.Height - (15 * 2) - 8, function()
								GrandStrategyInterfaceState = "Heroes"
								DrawGrandStrategyInterface()
							end)
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
							break
						end
					end
				end
			elseif (GrandStrategyInterfaceState == "town-hall" or GrandStrategyInterfaceState == "stronghold") then
				if ((GetProvinceCivilization(SelectedProvince.Name) == "teuton" or GetParentCivilization(GetProvinceCivilization(SelectedProvince.Name)) == "teuton") and FactionHasTechnologyType(GrandStrategyFaction, "masonry") == false) then
					AddGrandStrategyLabel(GetUnitTypeName("unit-germanic-town-hall"), UI.InfoPanel.X + 109, UI.InfoPanel.Y + 53, Fonts["game"], true, false)
				else
					AddGrandStrategyLabel(GetUnitTypeName(GetCivilizationClassUnitType(GrandStrategyInterfaceState, GetProvinceCivilization(SelectedProvince.Name))), UI.InfoPanel.X + 109, UI.InfoPanel.Y + 53, Fonts["game"], true, false)
				end
				
				local item_y = -2

				item_y = item_y + 1

				item_y = 0
				for key, value in pairs(GrandStrategyCommodities) do
					local icon_offset_y = Video.Height - 186 + 8 + (item_y * 47)

					AddUIElement("ui/" .. string.lower(key) .. ".png", Video.Width - 243 + 12, icon_offset_y + 3)

					-- add trade bid/offer arrows
					local b = AddGrandStrategyImageButton("", "", Video.Width - 243 + 112 - 2 - 24, icon_offset_y, function()
						if (GetFactionCommodityTrade(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, string.lower(key)) > 0 and GetFactionCommodityTrade(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, string.lower(key)) < 100) then
							SetFactionCommodityTrade(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, string.lower(key), 0)
						elseif (GetFactionResource(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, "gold") >= -1 * (GetFactionCommodityTrade(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, string.lower(key)) - 100) * GetCommodityPrice(string.lower(key)) / 100) then
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

					AddGrandStrategyLabel(GetCommodityPrice(string.lower(key)), Video.Width - 243 + 12 + 18, icon_offset_y + 3 + 1, Fonts["game"], false, false)
					AddGrandStrategyLabel(math.abs(GetFactionCommodityTrade(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, string.lower(key))), Video.Width - 243 + 112 + 24 - 12, icon_offset_y + 2, Fonts["game"], true, false)
					if (GetFactionCommodityTrade(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, string.lower(key)) < 0) then
						AddGrandStrategyLabel("Bid", Video.Width - 243 + 112 + 2 + 46 - 20 + 56 - 10, icon_offset_y + 3 + 1, Fonts["game"], false, false)
					elseif (GetFactionCommodityTrade(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, string.lower(key)) > 0) then
						AddGrandStrategyLabel("Offer", Video.Width - 243 + 112 + 2 + 46 - 20 + 56 - 10, icon_offset_y + 3 + 1, Fonts["game"], false, false)
					end
					
					item_y = item_y + 1
				end
				
				-- add a button to go back to the main province interface
				local b = AddGrandStrategyImageButton("~!OK", "o", Video.Width - 243 + 72, Video.Height - (15 * 2) - 8, function()
					GrandStrategyInterfaceState = "Province"
					DrawGrandStrategyInterface()
				end)
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
			elseif (GrandStrategyInterfaceState == "barracks") then
				if ((GetProvinceCivilization(SelectedProvince.Name) == "teuton" or GetParentCivilization(GetProvinceCivilization(SelectedProvince.Name)) == "teuton") and FactionHasTechnologyType(GrandStrategyFaction, "masonry") == false) then -- special case for the germanic lumber mill
					AddGrandStrategyLabel(GetUnitTypeName("unit-germanic-barracks"), UI.InfoPanel.X + 109, UI.InfoPanel.Y + 53, Fonts["game"], true, false)
				else
					AddGrandStrategyLabel(GetUnitTypeName(GetCivilizationClassUnitType(GrandStrategyInterfaceState, GetProvinceCivilization(SelectedProvince.Name))), UI.InfoPanel.X + 109, UI.InfoPanel.Y + 53, Fonts["game"], true, false)
				end
				
				-- add units buttons for training
				local item_x = 0
				local item_y = 0
				for i, unitName in ipairs(Units) do
					if (IsMilitaryUnit(unitName)) then
						local veterans = 0
						local veteran_unit_type = GetCivilizationClassUnitType("veteran-" .. GetUnitTypeData(unitName, "Class"), GetUnitTypeData(unitName, "Civilization"))
						if (veteran_unit_type ~= nil) then
							veterans = veterans + GetProvinceUnitQuantity(SelectedProvince.Name, veteran_unit_type)
						end
						local heroic_unit_type = GetCivilizationClassUnitType("heroic-" .. GetUnitTypeData(unitName, "Class"), GetUnitTypeData(unitName, "Civilization"))
						if (heroic_unit_type ~= nil) then
							veterans = veterans + GetProvinceUnitQuantity(SelectedProvince.Name, heroic_unit_type)
						end

						if (IsUnitAvailableForTraining(SelectedProvince, unitName) and GetUnitTypeInterfaceState(unitName) == GrandStrategyInterfaceState) then
							local icon_offset_x = Video.Width - 243 + 15 + (item_x * 56)
							local icon_offset_y = Video.Height - 186 + 13 + (item_y * (47 + 19 + 4))

							AddGrandStrategyUnitButton(icon_offset_x, icon_offset_y, unitName)
							if (GetProvinceUnderConstructionUnitQuantity(SelectedProvince.Name, unitName) > 0) then
								AddGrandStrategyLabel(GetProvinceUnitQuantity(SelectedProvince.Name, unitName) + veterans .. "+" .. GetProvinceUnderConstructionUnitQuantity(SelectedProvince.Name, unitName), icon_offset_x + 24, icon_offset_y + 26, Fonts["game"], true, false)
							else
								AddGrandStrategyLabel(GetProvinceUnitQuantity(SelectedProvince.Name, unitName) + veterans, icon_offset_x + 24, icon_offset_y + 26, Fonts["game"], true, false)
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
							local regiment_type_name = GetUnitTypeNamePluralForm(unitName)
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
							if (GetUnitTypeData(unitName, "Costs", "gold") > 0) then
								if (cost_tooltip == "") then
									cost_tooltip = " (costs "
								else
									cost_tooltip = cost_tooltip .. ", "
								end
								cost_tooltip = cost_tooltip .. GetUnitTypeData(unitName, "Costs", "gold") .. " Gold"
							end
							if (GetUnitTypeData(unitName, "Costs", "lumber") > 0) then
								if (cost_tooltip == "") then
									cost_tooltip = " (costs "
								else
									cost_tooltip = cost_tooltip .. " and "
								end
								cost_tooltip = cost_tooltip .. GetUnitTypeData(unitName, "Costs", "lumber") .. " Lumber"
							end
							if (GetUnitTypeData(unitName, "Costs", "stone") > 0) then
								if (cost_tooltip == "") then
									cost_tooltip = " (costs "
								else
									cost_tooltip = cost_tooltip .. " and "
								end
								cost_tooltip = cost_tooltip .. GetUnitTypeData(unitName, "Costs", "stone") .. " Stone"
							end
							if (cost_tooltip ~= "") then
								cost_tooltip = cost_tooltip .. ")"
							end
							
							if (GetUnitTypeUpkeep(unitName) > 0) then
								cost_tooltip = cost_tooltip .. " (" .. GetUnitTypeUpkeep(unitName) .. " Gold Upkeep)"
							end
							
							local regiment_type_name = GetUnitTypeNamePluralForm(unitName)
							b:setTooltip("Train one ".. regiment_type_name .. " regiment" .. cost_tooltip)

							AddGrandStrategyLabel(GetProvinceUnderConstructionUnitQuantity(SelectedProvince.Name, unitName), icon_offset_x + 24, icon_offset_y + 42, Fonts["game"], true, false)

							item_x = item_x + 1
							if (item_x > 3) then
								item_x = 0
								item_y = item_y + 1
							end
						end
					end
				end

				-- add a button to go back to the main province interface
				local b = AddGrandStrategyImageButton("~!OK", "o", Video.Width - 243 + 72, Video.Height - (15 * 2) - 8, function()
					GrandStrategyInterfaceState = "Province"
					DrawGrandStrategyInterface()
				end)
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
			elseif (GrandStrategyInterfaceState == "lumber-mill") then
				if ((GetProvinceCivilization(SelectedProvince.Name) == "teuton" or GetParentCivilization(GetProvinceCivilization(SelectedProvince.Name)) == "teuton") and FactionHasTechnologyType(GrandStrategyFaction, "masonry") == false) then -- special case for the germanic lumber mill
					AddGrandStrategyLabel(GetUnitTypeName("unit-germanic-carpenters-shop"), UI.InfoPanel.X + 109, UI.InfoPanel.Y + 53, Fonts["game"], true, false)
				else
					AddGrandStrategyLabel(GetUnitTypeName(GetCivilizationClassUnitType(GrandStrategyInterfaceState, GetProvinceCivilization(SelectedProvince.Name))), UI.InfoPanel.X + 109, UI.InfoPanel.Y + 53, Fonts["game"], true, false)
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

				-- add a button to go back to the main province interface
				local b = AddGrandStrategyImageButton("~!OK", "o", Video.Width - 243 + 72, Video.Height - (15 * 2) - 8, function()
					GrandStrategyInterfaceState = "Province"
					DrawGrandStrategyInterface()
				end)
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
			elseif (GrandStrategyInterfaceState == "smithy") then
				if ((GetProvinceCivilization(SelectedProvince.Name) == "teuton" or GetParentCivilization(GetProvinceCivilization(SelectedProvince.Name)) == "teuton") and FactionHasTechnologyType(GrandStrategyFaction, "masonry") == false) then -- special case for the germanic lumber mill
					AddGrandStrategyLabel(GetUnitTypeName("unit-germanic-smithy"), UI.InfoPanel.X + 109, UI.InfoPanel.Y + 53, Fonts["game"], true, false)
				else
					AddGrandStrategyLabel(GetUnitTypeName(GetCivilizationClassUnitType(GrandStrategyInterfaceState, GetProvinceCivilization(SelectedProvince.Name))), UI.InfoPanel.X + 109, UI.InfoPanel.Y + 53, Fonts["game"], true, false)
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

				-- add a button to go back to the main province interface
				local b = AddGrandStrategyImageButton("~!OK", "o", Video.Width - 243 + 72, Video.Height - (15 * 2) - 8, function()
					GrandStrategyInterfaceState = "Province"
					DrawGrandStrategyInterface()
				end)
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
			elseif (GrandStrategyInterfaceState == "mercenary-camp") then
				AddGrandStrategyLabel(GetUnitTypeName("unit-mercenary-camp"), UI.InfoPanel.X + 109, UI.InfoPanel.Y + 53, Fonts["game"], true, false)
				
				-- add units buttons for hiring generic mercenaries
				local item_x = 0
				local item_y = 0
				for i, unitName in ipairs(Units) do
					if (IsMilitaryUnit(unitName)) then
						local veterans = 0
						local veteran_unit_type = GetCivilizationClassUnitType("veteran-" .. GetUnitTypeData(unitName, "Class"), GetUnitTypeData(unitName, "Civilization"))
						if (veteran_unit_type ~= nil) then
							veterans = veterans + GetProvinceUnitQuantity(SelectedProvince.Name, veteran_unit_type)
						end
						local heroic_unit_type = GetCivilizationClassUnitType("heroic-" .. GetUnitTypeData(unitName, "Class"), GetUnitTypeData(unitName, "Civilization"))
						if (heroic_unit_type ~= nil) then
							veterans = veterans + GetProvinceUnitQuantity(SelectedProvince.Name, heroic_unit_type)
						end

						if (IsUnitAvailableForTraining(SelectedProvince, unitName) and GetUnitTypeInterfaceState(unitName) == GrandStrategyInterfaceState) then
							local icon_offset_x = Video.Width - 243 + 15 + (item_x * 56)
							local icon_offset_y = Video.Height - 186 + 13 + (item_y * (47 + 19 + 4))

							AddGrandStrategyUnitButton(icon_offset_x, icon_offset_y, unitName)
							if (GetProvinceUnderConstructionUnitQuantity(SelectedProvince.Name, unitName) > 0) then
								AddGrandStrategyLabel(GetProvinceUnitQuantity(SelectedProvince.Name, unitName) + veterans .. "+" .. GetProvinceUnderConstructionUnitQuantity(SelectedProvince.Name, unitName), icon_offset_x + 24, icon_offset_y + 26, Fonts["game"], true, false)
							else
								AddGrandStrategyLabel(GetProvinceUnitQuantity(SelectedProvince.Name, unitName) + veterans, icon_offset_x + 24, icon_offset_y + 26, Fonts["game"], true, false)
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
							local regiment_type_name = GetUnitTypeNamePluralForm(unitName)
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
							if (GetUnitTypeData(unitName, "Costs", "gold") > 0) then
								if (cost_tooltip == "") then
									cost_tooltip = " (costs "
								else
									cost_tooltip = cost_tooltip .. ", "
								end
								cost_tooltip = cost_tooltip .. GetUnitTypeData(unitName, "Costs", "gold") .. " Gold"
							end
							if (GetUnitTypeData(unitName, "Costs", "lumber") > 0) then
								if (cost_tooltip == "") then
									cost_tooltip = " (costs "
								else
									cost_tooltip = cost_tooltip .. " and "
								end
								cost_tooltip = cost_tooltip .. GetUnitTypeData(unitName, "Costs", "lumber") .. " Lumber"
							end
							if (GetUnitTypeData(unitName, "Costs", "stone") > 0) then
								if (cost_tooltip == "") then
									cost_tooltip = " (costs "
								else
									cost_tooltip = cost_tooltip .. " and "
								end
								cost_tooltip = cost_tooltip .. GetUnitTypeData(unitName, "Costs", "stone") .. " Stone"
							end
							if (cost_tooltip ~= "") then
								cost_tooltip = cost_tooltip .. ")"
							end
							
							if (GetUnitTypeUpkeep(unitName) > 0) then
								cost_tooltip = cost_tooltip .. " (" .. GetUnitTypeUpkeep(unitName) .. " Gold Upkeep)"
							end
							
							local regiment_type_name = GetUnitTypeNamePluralForm(unitName)
							b:setTooltip("Hire one ".. regiment_type_name .. " regiment" .. cost_tooltip)

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
					if (IsMilitaryUnit(unitName) and GetUnitTypeData(unitName, "Mercenary") and IsMercenaryAvailableForHiring(SelectedProvince, unitName)) then -- the unit's gold cost is required to be more than 0 to avoid upgraded versions of the same mercenary group to be available for hiring as well
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

				-- add a button to go back to the main province interface
				local b = AddGrandStrategyImageButton("~!OK", "o", Video.Width - 243 + 72, Video.Height - (15 * 2) - 8, function()
					GrandStrategyInterfaceState = "Province"
					DrawGrandStrategyInterface()
				end)
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
			elseif (GrandStrategyInterfaceState == "Heroes") then
				AddGrandStrategyLabel("Heroes", UI.InfoPanel.X + 109, UI.InfoPanel.Y + 53, Fonts["game"], true, false)
				
				local item_x = 0
				local item_y = 0
				for i, unitName in ipairs(Units) do
					if (IsHero(unitName)) then
						if (SelectedProvince.Heroes[string.gsub(unitName, "-", "_")] == 2) then
							local icon_offset_x = Video.Width - 243 + 15 + (item_x * 56)
							local icon_offset_y = Video.Height - 186 + 13 + (item_y * 47)

							AddGrandStrategyHeroButton(icon_offset_x, icon_offset_y, unitName)
							
							item_x = item_x + 1
							if (item_x > 3) then
								item_x = 0
								item_y = item_y + 1
							end
						end
					end
				end
				
				-- add a button to go back to the main province interface
				local b = AddGrandStrategyImageButton("~!OK", "o", Video.Width - 243 + 72, Video.Height - (15 * 2) - 8, function()
					GrandStrategyInterfaceState = "Province"
					DrawGrandStrategyInterface()
				end)
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
			end
		elseif (SelectedProvince.Owner ~= "" and GrandStrategyInterfaceState == "Diplomacy") then
			if (GrandStrategyFaction.Diplomacy[GetFactionKeyFromName(SelectedProvince.Owner)] == "War") then
				AddGrandStrategyLabel("At War with Us", UI.InfoPanel.X + 27, UI.InfoPanel.Y + 53, Fonts["game"], true, true)

				-- add a button for offering peace
				local b = AddGrandStrategyImageButton("Offer ~!Peace!", "p", Video.Width - 243 + 72, Video.Height - (15 * 5) - 8, function()
					OfferPeace(GrandStrategyFaction.Name, SelectedProvince.Owner)
					DrawGrandStrategyInterface()
				end)
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
			elseif (GrandStrategyFaction.Diplomacy[GetFactionKeyFromName(SelectedProvince.Owner)] == "Offering Peace") then
				AddGrandStrategyLabel("At War with Us (Peace Offered)", UI.InfoPanel.X + 27, UI.InfoPanel.Y + 53, Fonts["game"], true, true)
			elseif (CanDeclareWar(GrandStrategyFaction, GetFactionFromName(SelectedProvince.Owner))) then
				-- add a button for declaring war
				local b = AddGrandStrategyImageButton("Declare ~!War!", "w", Video.Width - 243 + 72, Video.Height - (15 * 5) - 8, function()
					DeclareWar(GrandStrategyFaction.Name, SelectedProvince.Owner)
					DrawGrandStrategyInterface()
				end)
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
			end
		end
	end

	-- add an end turn button
	local b = AddGrandStrategyImageButton("~!End Turn", "e", Video.Width - 243 + 72, Video.Height - (15 * 1) - 8, function()
		if (ProcessingEndTurn == false) then
			EndTurn()
		end
	end)
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
	
	-- add a menu button
	local b = AddGrandStrategyImageButton("Menu (~<F10~>)", "", 26, 1, function()
		if (ProcessingEndTurn == false) then
			RunGrandStrategyGameMenu()
		end
	end)
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
	
	if (wyr.preferences.ShowTips) then
		if (SelectedProvince ~= nil) then
			if (GrandStrategyFaction ~= nil and SelectedProvince.Owner == GrandStrategyFaction.Name) then
				if (GrandStrategyInterfaceState == "Province") then
					Tip("Province Interface", "Click on a built structure (colored) to make use of its functions, and on an unbuilt one (grayed-out) to build it. The number on each unit icon represents how many units of that type are in the province, while the one between the arrows represent how many are currently selected. Use the arrows to select or deselect units.")
				elseif (GrandStrategyInterfaceState == "town-hall" or GrandStrategyInterfaceState == "stronghold") then
					Tip("Town Hall Interface", "A province's culture determines what is available in it. A province that has a different culture than your faction will suffer a penalty to economic efficiency. The number beside each commodity icon represents its price in gold, while the one between the arrows represents its quantity currently bid or offered by your faction - use the arrows to change it.")
				elseif (GrandStrategyInterfaceState == "barracks") then
					Tip("Barracks Interface", "Here you can recruit new units. The number on each unit icon represents how many units of that type are present in the province, while the number between the arrows represents how many are currently being trained. Use the arrows to change the quantity of units being trained.")
				elseif (GrandStrategyInterfaceState == "lumber-mill") then
					Tip("Lumber Mill Interface", "Here you can research some new technologies. Click on a technology's icon to research it. You can only research one technology in a given turn. The presence of a lumber mill in a province increases its lumber output by 25%.")
				elseif (GrandStrategyInterfaceState == "smithy") then
					Tip("Smithy Interface", "Here you can research some new technologies. Click on a technology's icon to research it. You can only research one technology in a given turn.")
				elseif (GrandStrategyInterfaceState == "mercenary-camp") then
					Tip("Mercenary Camp Interface", "Here you can recruit thief units as you would normal units, as well as hire unique mercenary squads.")
				end
			elseif (SelectedProvince.Owner ~= "" and GrandStrategyInterfaceState == "Diplomacy") then
				Tip("Diplomacy Interface", "This is a foreign province. Here you can declare war against this province's owner, or offer peace if you are currently at war.")
			end
		end				
	end
end

function SetSelectedProvinceLua(province)
	if (province ~= SelectedProvince) then

		-- if the player has units selected and then selects an attackable province, set those units to attack the province
		if (SelectedProvince ~= nil and GrandStrategyFaction ~= nil and SelectedProvince.Owner == GrandStrategyFaction.Name and CanAttackProvince(province, GrandStrategyFaction, SelectedProvince)) then
			for i, unitName in ipairs(Units) do
				if (IsMilitaryUnit(unitName)) then
					if (SelectedUnits[string.gsub(unitName, "-", "_")] > 0) then
						SetProvinceAttackedBy(province.Name, GrandStrategyFaction.Civilization, GrandStrategyFaction.Name)
						SetProvinceAttackingUnitQuantity(province.Name, unitName, GetProvinceAttackingUnitQuantity(province.Name, unitName) + SelectedUnits[string.gsub(unitName, "-", "_")])
						SetProvinceUnitQuantity(SelectedProvince.Name, unitName, GetProvinceUnitQuantity(SelectedProvince.Name, unitName) - SelectedUnits[string.gsub(unitName, "-", "_")])
					end
				end
			end
			for i, unitName in ipairs(Units) do
				if (IsHero(unitName)) then
					if (SelectedHero == unitName) then
						SetProvinceAttackedBy(province.Name, GrandStrategyFaction.Civilization, GrandStrategyFaction.Name)
						province.Heroes[string.gsub(unitName, "-", "_")] = 3
						SelectedProvince.Heroes[string.gsub(unitName, "-", "_")] = 0
						SelectedHero = ""
					end
				end
			end
		elseif (SelectedProvince ~= nil and GrandStrategyFaction ~= nil and SelectedProvince.Owner == province.Owner and SelectedProvince.Owner == GrandStrategyFaction.Name) then
			for i, unitName in ipairs(Units) do
				if (IsMilitaryUnit(unitName)) then
					if (SelectedUnits[string.gsub(unitName, "-", "_")] > 0) then
						SetProvinceMovingUnitQuantity(province.Name, unitName, GetProvinceMovingUnitQuantity(province.Name, unitName) + SelectedUnits[string.gsub(unitName, "-", "_")])
						SetProvinceUnitQuantity(SelectedProvince.Name, unitName, GetProvinceUnitQuantity(SelectedProvince.Name, unitName) - SelectedUnits[string.gsub(unitName, "-", "_")])

						-- draw symbol that troops are moving to the province
						if (IsWorldMapTileVisible(province.SettlementLocation[1], province.SettlementLocation[2])) then
							DrawWorldMapTile("tilesets/world/sites/move.png", province.SettlementLocation[1], province.SettlementLocation[2])
						end
					end
				end
			end
			for i, unitName in ipairs(Units) do
				if (IsHero(unitName)) then
					if (SelectedHero == unitName and SelectedProvince.Heroes[string.gsub(unitName, "-", "_")] == 2) then
						province.Heroes[string.gsub(unitName, "-", "_")] = 1
						SelectedProvince.Heroes[string.gsub(unitName, "-", "_")] = 0
						SelectedHero = ""

						-- draw symbol that a hero is moving to the province
						if (IsWorldMapTileVisible(province.SettlementLocation[1], province.SettlementLocation[2])) then
							DrawWorldMapTile("tilesets/world/sites/move.png", province.SettlementLocation[1], province.SettlementLocation[2])
						end
					end
				end
			end
		end

		if (GrandStrategyFaction ~= nil) then
			if (province ~= nil and province.Owner ~= "" and province.Owner ~= "Ocean" and province.Owner ~= GrandStrategyFaction.Name) then -- if is owned by a foreign faction, use diplomacy interface, if is a self owned province or an empty one, use the normal province interface
				GrandStrategyInterfaceState = "Diplomacy"
			else
				GrandStrategyInterfaceState = "Province"
			end
		end
		SelectedProvince = province
		SetSelectedProvince(province.Name)
		SelectedUnits = nil
		SelectedUnits = {}
		SelectedHero = ""
		for i, unitName in ipairs(Units) do
			if (IsMilitaryUnit(unitName)) then
				SelectedUnits[string.gsub(unitName, "-", "_")] = 0
			end
		end
		DrawGrandStrategyInterface()
	end
end

function AIDoTurn(ai_faction)
	
	AIConsiderOffers(ai_faction)

	for province_i, key in ipairs(ai_faction.OwnedProvinces) do
		-- try to first research masonry, then writing, then coinage, and only then try to research other technologies
		if (GetCivilizationClassUnitType("masonry", GetProvinceCivilization(WorldMapProvinces[key].Name)) ~= nil and CanResearchTechnology(WorldMapProvinces[key], GetCivilizationClassUnitType("masonry", GetProvinceCivilization(WorldMapProvinces[key].Name)))) then
			ResearchTechnology(WorldMapProvinces[key], GetCivilizationClassUnitType("masonry", GetProvinceCivilization(WorldMapProvinces[key].Name)))
		end
		if (GetCivilizationClassUnitType("writing", GetProvinceCivilization(WorldMapProvinces[key].Name)) ~= nil and CanResearchTechnology(WorldMapProvinces[key], GetCivilizationClassUnitType("writing", GetProvinceCivilization(WorldMapProvinces[key].Name)))) then
			ResearchTechnology(WorldMapProvinces[key], GetCivilizationClassUnitType("writing", GetProvinceCivilization(WorldMapProvinces[key].Name)))
		end
		if (GetCivilizationClassUnitType("coinage", GetProvinceCivilization(WorldMapProvinces[key].Name)) ~= nil and CanResearchTechnology(WorldMapProvinces[key], GetCivilizationClassUnitType("coinage", GetProvinceCivilization(WorldMapProvinces[key].Name)))) then
			ResearchTechnology(WorldMapProvinces[key], GetCivilizationClassUnitType("coinage", GetProvinceCivilization(WorldMapProvinces[key].Name)))
		end
		for i, unitName in ipairs(Units) do
			if (string.find(unitName, "upgrade-") ~= nil) then
				if (CanResearchTechnology(WorldMapProvinces[key], unitName)) then
--					if (CUpgrade:Get(unitName).Class == "melee-weapon-1") then
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
		local desired_catapults_in_province = 1

		local borders_foreign = false

		for second_i, second_key in ipairs(WorldMapProvinces[key].BorderProvinces) do
			if ((WorldMapProvinces[second_key] ~= nil and WorldMapProvinces[second_key].Owner ~= ai_faction.Name) or WorldMapWaterProvinces[second_key] ~= nil) then
				if (WorldMapProvinces[second_key] ~= nil and WorldMapProvinces[second_key].Owner ~= "Ocean") then
					if (CanAttackProvince(WorldMapProvinces[second_key], ai_faction, WorldMapProvinces[key]) or GetProvinceAttackedBy(WorldMapProvinces[key].Name) ~= "" or AtPeace(ai_faction)) then
						borders_foreign = true -- when at war, only set borders_foreign to provinces actually threatened by the enemy, or from which an attack on an enemy can be staged (when at peace, take into account the forces of factions with whom this ai faction is at peace too for that)
					end
					if (GetProvinceAttackedBy(WorldMapProvinces[key].Name) == "" and CanAttackProvince(WorldMapProvinces[second_key], ai_faction, WorldMapProvinces[key])) then -- don't attack from this province if it is already being attacked
						if (round(GetMilitaryScore(WorldMapProvinces[second_key], false, true) * 3 / 2) < GetMilitaryScore(WorldMapProvinces[key], false, false)) then -- only attack if military score is 150% or greater of that of the province to be attacked
							local province_threatened = false
							for third_i, third_key in ipairs(WorldMapProvinces[key].BorderProvinces) do
								if (WorldMapProvinces[third_key] ~= nil and WorldMapProvinces[third_key].Owner ~= ai_faction.Name and WorldMapProvinces[third_key].Owner ~= "" and WorldMapProvinces[third_key].Owner ~= "Ocean" and CanAttackProvince(WorldMapProvinces[key], GetFactionFromName(WorldMapProvinces[third_key].Owner), WorldMapProvinces[third_key])) then
									if (GetMilitaryScore(WorldMapProvinces[key], false, true) < GetMilitaryScore(WorldMapProvinces[third_key], false, false)) then
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
					local new_desired_catapults_in_province = 0
					if (GetMilitaryScore(WorldMapProvinces[second_key], false, true) > 0) then
						new_desired_infantry_in_province = round(desired_infantry_in_province * (GetMilitaryScore(WorldMapProvinces[second_key], false, true) * 3 / 2) / base_military_score)
						new_desired_archers_in_province = round(desired_archers_in_province * (GetMilitaryScore(WorldMapProvinces[second_key], false, true) * 3 / 2) / base_military_score)
						new_desired_catapults_in_province = round(desired_catapults_in_province * (GetMilitaryScore(WorldMapProvinces[second_key], false, true) * 3 / 2) / base_military_score)
					end
					if (new_desired_infantry_in_province > desired_infantry_in_province) then
						desired_infantry_in_province = new_desired_infantry_in_province
					end
					if (new_desired_archers_in_province > desired_archers_in_province) then
						desired_archers_in_province = new_desired_archers_in_province
					end
					if (new_desired_catapults_in_province > desired_catapults_in_province) then
						desired_catapults_in_province = new_desired_catapults_in_province
					end
				end
			end
		end
		
		local secondary_border_provinces_through_water = GetProvinceSecondaryBorderProvincesThroughWater(WorldMapProvinces[key])
		for second_i, second_key in ipairs(secondary_border_provinces_through_water) do
			if ((WorldMapProvinces[second_key] ~= nil and WorldMapProvinces[second_key].Owner ~= ai_faction.Name) or WorldMapWaterProvinces[second_key] ~= nil) then
				if (WorldMapProvinces[second_key] ~= nil and WorldMapProvinces[second_key].Owner ~= "Ocean") then
					if (CanAttackProvince(WorldMapProvinces[second_key], ai_faction, WorldMapProvinces[key]) or GetProvinceAttackedBy(WorldMapProvinces[key].Name) ~= "" or AtPeace(ai_faction)) then
						borders_foreign = true -- when at war, only set borders_foreign to provinces actually threatened by the enemy, or from which an attack on an enemy can be staged (when at peace, take into account the forces of factions with whom this ai faction is at peace too for that)
					end
					if (GetProvinceAttackedBy(WorldMapProvinces[key].Name) == "" and CanAttackProvince(WorldMapProvinces[second_key], ai_faction, WorldMapProvinces[key])) then -- don't attack from this province if it is already being attacked
						if (round(GetMilitaryScore(WorldMapProvinces[second_key], false, true) * 3 / 2) < GetMilitaryScore(WorldMapProvinces[key], false, false)) then -- only attack if military score is 150% or greater of that of the province to be attacked
							local province_threatened = false
							for third_i, third_key in ipairs(WorldMapProvinces[key].BorderProvinces) do
								if (WorldMapProvinces[third_key] ~= nil and WorldMapProvinces[third_key].Owner ~= ai_faction.Name and WorldMapProvinces[third_key].Owner ~= "" and WorldMapProvinces[third_key].Owner ~= "Ocean" and CanAttackProvince(WorldMapProvinces[key], GetFactionFromName(WorldMapProvinces[third_key].Owner), WorldMapProvinces[third_key])) then
									if (GetMilitaryScore(WorldMapProvinces[key], false, true) < GetMilitaryScore(WorldMapProvinces[third_key], false, false)) then
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
					local new_desired_catapults_in_province = 0
					if (GetMilitaryScore(WorldMapProvinces[second_key], false, true) > 0) then
						new_desired_infantry_in_province = round(desired_infantry_in_province * (GetMilitaryScore(WorldMapProvinces[second_key], false, true) * 3 / 2) / base_military_score)
						new_desired_archers_in_province = round(desired_archers_in_province * (GetMilitaryScore(WorldMapProvinces[second_key], false, true) * 3 / 2) / base_military_score)
						new_desired_catapults_in_province = round(desired_catapults_in_province * (GetMilitaryScore(WorldMapProvinces[second_key], false, true) * 3 / 2) / base_military_score)
					end
					if (new_desired_infantry_in_province > desired_infantry_in_province) then
						desired_infantry_in_province = new_desired_infantry_in_province
					end
					if (new_desired_archers_in_province > desired_archers_in_province) then
						desired_archers_in_province = new_desired_archers_in_province
					end
					if (new_desired_catapults_in_province > desired_catapults_in_province) then
						desired_catapults_in_province = new_desired_catapults_in_province
					end
				end
			end
		end
	
		for second_i, second_key in ipairs(ai_faction.DisembarkmentProvinces) do
			if (WorldMapProvinces[second_key] ~= nil and WorldMapProvinces[second_key].Owner ~= ai_faction.Name) then
				if (WorldMapProvinces[second_key] ~= nil and WorldMapProvinces[second_key].Owner ~= "Ocean") then
					if (GetProvinceAttackedBy(WorldMapProvinces[key].Name) == "" and CanAttackProvince(WorldMapProvinces[second_key], ai_faction, WorldMapProvinces[key])) then -- don't attack from this province if it is already being attacked
						borders_foreign = true
						if (round(GetMilitaryScore(WorldMapProvinces[second_key], false, true) * 3 / 2) < GetMilitaryScore(WorldMapProvinces[key], false, false)) then -- only attack if military score is 150% or greater of that of the province to be attacked
							local province_threatened = false
							for third_i, third_key in ipairs(WorldMapProvinces[key].BorderProvinces) do
								if (WorldMapProvinces[third_key] ~= nil and WorldMapProvinces[third_key].Owner ~= ai_faction.Name and WorldMapProvinces[third_key].Owner ~= "" and WorldMapProvinces[third_key].Owner ~= "Ocean" and CanAttackProvince(WorldMapProvinces[key], GetFactionFromName(WorldMapProvinces[third_key].Owner), WorldMapProvinces[third_key])) then
									if (GetMilitaryScore(WorldMapProvinces[key], false, true) < GetMilitaryScore(WorldMapProvinces[third_key], false, false)) then
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
					local new_desired_catapults_in_province = 0
					if (GetMilitaryScore(WorldMapProvinces[second_key], false, true) > 0) then
						new_desired_infantry_in_province = round(desired_infantry_in_province * (GetMilitaryScore(WorldMapProvinces[second_key], false, true) * 3 / 2) / base_military_score)
						new_desired_archers_in_province = round(desired_archers_in_province * (GetMilitaryScore(WorldMapProvinces[second_key], false, true) * 3 / 2) / base_military_score)
						new_desired_catapults_in_province = round(desired_catapults_in_province * (GetMilitaryScore(WorldMapProvinces[second_key], false, true) * 3 / 2) / base_military_score)
					end
					if (new_desired_infantry_in_province > desired_infantry_in_province) then
						desired_infantry_in_province = new_desired_infantry_in_province
					end
					if (new_desired_archers_in_province > desired_archers_in_province) then
						desired_archers_in_province = new_desired_archers_in_province
					end
					if (new_desired_catapults_in_province > desired_catapults_in_province) then
						desired_catapults_in_province = new_desired_catapults_in_province
					end
				end
			end
		end

		if (borders_foreign == false or GetFactionBuildingTypeCount(ai_faction, "town-hall") < GetFactionProvinceCount(ai_faction) or ((GetFactionIncome(ai_faction.Civilization, ai_faction.Name, "gold") - ai_faction.Upkeep) < 100 and GetFactionResource(ai_faction.Civilization, ai_faction.Name, "gold") < 1500 * 4)) then -- don't build any military units if a province is lacking a town hall, if it doesn't border any non-owned provinces, or if net income is too small and gold reserves are too small; 800 is the highest gold cost a unit/building/technology can have
			desired_infantry_in_province = 0
			desired_archers_in_province = 0
			desired_catapults_in_province = 0
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
					elseif (GetUnitTypeData(unitName, "Class") == "siege-engine" and desired_catapults_in_province > 0) then
						for j=1,desired_catapults_in_province do
							if ((GetProvinceUnitQuantity(WorldMapProvinces[key].Name, unitName) + GetProvinceUnderConstructionUnitQuantity(WorldMapProvinces[key].Name, unitName)) < desired_catapults_in_province and CanTrainUnit(WorldMapProvinces[key], unitName)) then
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
							if ((WorldMapProvinces[third_key] ~= nil and WorldMapProvinces[third_key].Owner ~= ai_faction.Name) or (WorldMapWaterProvinces[third_key] ~= nil and WorldMapWaterProvinces[third_key].Owner ~= ai_faction.Name)) then
								if (WorldMapProvinces[third_key] ~= nil and CanAttackProvince(WorldMapProvinces[third_key], ai_faction, WorldMapProvinces[second_key]) or GetProvinceAttackedBy(WorldMapProvinces[second_key].Name) ~= "" or AtPeace(ai_faction)) then
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
	if (GetFactionResource(ai_faction.Civilization, ai_faction.Name, "lumber") < 800) then -- 800 is the most a unit/building/technology costs in terms of lumber, so if lumber stored is lower than this quantity, bid for the difference
		SetFactionCommodityTrade(ai_faction.Civilization, ai_faction.Name, "lumber", - (800 - GetFactionResource(ai_faction.Civilization, ai_faction.Name, "lumber")))
	elseif (GetFactionResource(ai_faction.Civilization, ai_faction.Name, "lumber") > 800 * 2 and GetFactionIncome(ai_faction.Civilization, ai_faction.Name, "lumber") > 0) then -- if the AI has a regular lumber income, there's no need to keep a large quantity of it stored
		SetFactionCommodityTrade(ai_faction.Civilization, ai_faction.Name, "lumber", (GetFactionResource(ai_faction.Civilization, ai_faction.Name, "lumber") - 800 * 2))
	elseif (GetFactionResource(ai_faction.Civilization, ai_faction.Name, "lumber") > 800 * 4) then -- if the AI doesn't have a regular lumber income, then only sell if more lumber is stored
		SetFactionCommodityTrade(ai_faction.Civilization, ai_faction.Name, "lumber", (GetFactionResource(ai_faction.Civilization, ai_faction.Name, "lumber") - 800 * 4))
	end

	SetFactionCommodityTrade(ai_faction.Civilization, ai_faction.Name, "stone", 0)
	-- do trade
	if (GetFactionResource(ai_faction.Civilization, ai_faction.Name, "stone") < 800) then -- 800 is the most a unit/building/technology costs in terms of lumber, so if lumber stored is lower than this quantity, bid for the difference
		SetFactionCommodityTrade(ai_faction.Civilization, ai_faction.Name, "stone", - (800 - GetFactionResource(ai_faction.Civilization, ai_faction.Name, "stone")))
	elseif (GetFactionResource(ai_faction.Civilization, ai_faction.Name, "stone") > 800 * 2 and GetFactionIncome(ai_faction.Civilization, ai_faction.Name, "stone") > 0) then -- if the AI has a regular stone income, there's no need to keep a large quantity of it stored
		SetFactionCommodityTrade(ai_faction.Civilization, ai_faction.Name, "stone", (GetFactionResource(ai_faction.Civilization, ai_faction.Name, "stone") - 800 * 2))
	elseif (GetFactionResource(ai_faction.Civilization, ai_faction.Name, "stone") > 800 * 4) then -- if the AI doesn't have a regular stone income, then only sell if more stone is stored
		SetFactionCommodityTrade(ai_faction.Civilization, ai_faction.Name, "stone", (GetFactionResource(ai_faction.Civilization, ai_faction.Name, "stone") - 800 * 4))
	end
end

function AIDoDiplomacy(ai_faction)
	if (AtPeace(ai_faction)) then -- if at peace, see if there are any suitable targets to declare war on
		for province_i, key in ipairs(ai_faction.OwnedProvinces) do
			for second_i, second_key in ipairs(WorldMapProvinces[key].BorderProvinces) do
				if (WorldMapProvinces[second_key] ~= nil and WorldMapProvinces[second_key].Owner ~= ai_faction.Name and WorldMapProvinces[second_key].Owner ~= "" and WorldMapProvinces[second_key].Owner ~= "Ocean" and CanDeclareWar(ai_faction, GetFactionFromName(WorldMapProvinces[second_key].Owner))) then
					if (round(GetMilitaryScore(WorldMapProvinces[second_key], false, true) * 3 / 2) < GetMilitaryScore(WorldMapProvinces[key], false, false)) then -- only attack if military score is 150% or greater of that of the province to be attacked
						if (ai_faction.Diplomacy[GetFactionKeyFromName(WorldMapProvinces[second_key].Owner)] ~= "War" and (GetFactionMilitaryScore(GetFactionFromName(WorldMapProvinces[second_key].Owner)) * 4) < GetFactionMilitaryScore(ai_faction)) then -- only attack if military score is at least four times greater of that of the faction to be attacked
							DeclareWar(ai_faction.Name, WorldMapProvinces[second_key].Owner)
						end
					end
				end
			end
		end
	end
	for key, value in pairs(Factions) do
		if (ai_faction.Diplomacy[key] == "War" and FactionHasBorderWith(ai_faction, Factions[key]) == false) then
			if (FactionHasSecondaryBorderWith(ai_faction, Factions[key]) == false) then
				OfferPeace(ai_faction.Name, Factions[key].Name)
			end
		end
	end
end

function AIConsiderOffers(ai_faction)
	for key, value in pairs(Factions) do
		if (ai_faction.Diplomacy[key] == "Peace Offered") then
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
	if (province.Owner ~= "Ocean" and GetCivilizationClassUnitType(GetUnitTypeData(unit_type, "Class"), GetProvinceCivilization(province.Name)) ~= unit_type and GetUnitTypeData(unit_type, "Class") ~= "mercenary-camp") then
		return false
	end

	if (GetUnitTypeData(unit_type, "Class") == "town-hall" and ProvinceHasBuildingClass(province.Name, "stronghold")) then -- if stronghold is built, town hall is no longer available for use
		return false
	end
	
	local has_required_technologies = true
	if (table.getn(GetUnitTypeRequiredTechnologies(unit_type)) > 0) then
		for i=1,table.getn(GetUnitTypeRequiredTechnologies(unit_type)) do
			if (GetFactionTechnology(GetFactionFromName(province.Owner).Civilization, province.Owner, GetUnitTypeRequiredTechnologies(unit_type)[i]) == false) then
				has_required_technologies = false
			end
		end
	end
	if (has_required_technologies == false) then
		return false
	end
	
	local has_required_buildings = true
	if (table.getn(GetUnitTypeRequiredBuildings(unit_type)) > 0) then
		--[[
		for i=1,table.getn(GetUnitTypeRequiredBuildings(unit_type)) do
			if (GetProvinceSettlementBuilding(province.Name, GetUnitTypeRequiredBuildings(unit_type)[i]) == false) then
				has_required_buildings = false
			end
		end
		--]]
		for i=1,table.getn(GetUnitTypeRequiredBuildings(unit_type)) do
			if (ProvinceHasBuildingClass(province.Name, GetUnitTypeData(GetUnitTypeRequiredBuildings(unit_type)[i], "Class")) == false) then
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

	if (GetFactionResource(GetFactionFromName(province.Owner).Civilization, GetFactionFromName(province.Owner).Name, "gold") < GetUnitTypeData(unit_type, "Costs", "gold") or GetFactionResource(GetFactionFromName(province.Owner).Civilization, GetFactionFromName(province.Owner).Name, "lumber") < GetUnitTypeData(unit_type, "Costs", "lumber") or GetFactionResource(GetFactionFromName(province.Owner).Civilization, GetFactionFromName(province.Owner).Name, "stone") < GetUnitTypeData(unit_type, "Costs", "stone")) then
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
		ChangeFactionResource(GetFactionFromName(province.Owner).Civilization, GetFactionFromName(province.Owner).Name, "gold", - GetUnitTypeData(unit_type, "Costs", "gold"))
		ChangeFactionResource(GetFactionFromName(province.Owner).Civilization, GetFactionFromName(province.Owner).Name, "lumber", - GetUnitTypeData(unit_type, "Costs", "lumber"))
		ChangeFactionResource(GetFactionFromName(province.Owner).Civilization, GetFactionFromName(province.Owner).Name, "stone", - GetUnitTypeData(unit_type, "Costs", "stone"))
	end
end

function CancelBuildStructure(province, unit_type)
	if (GetProvinceCurrentConstruction(province.Name) == unit_type) then
		SetProvinceCurrentConstruction(province.Name, "")
		ChangeFactionResource(GetFactionFromName(province.Owner).Civilization, GetFactionFromName(province.Owner).Name, "gold", GetUnitTypeData(unit_type, "Costs", "gold"))
		ChangeFactionResource(GetFactionFromName(province.Owner).Civilization, GetFactionFromName(province.Owner).Name, "lumber", GetUnitTypeData(unit_type, "Costs", "lumber"))
		ChangeFactionResource(GetFactionFromName(province.Owner).Civilization, GetFactionFromName(province.Owner).Name, "stone", GetUnitTypeData(unit_type, "Costs", "stone"))
	end
end

function CanTrainUnit(province, unit_type)
	if (GetFactionResource(GetFactionFromName(province.Owner).Civilization, GetFactionFromName(province.Owner).Name, "gold") < GetUnitTypeData(unit_type, "Costs", "gold") or GetFactionResource(GetFactionFromName(province.Owner).Civilization, GetFactionFromName(province.Owner).Name, "lumber") < GetUnitTypeData(unit_type, "Costs", "lumber") or GetFactionResource(GetFactionFromName(province.Owner).Civilization, GetFactionFromName(province.Owner).Name, "stone") < GetUnitTypeData(unit_type, "Costs", "stone")) then
		return false
	end

	if (GetUnitTypeData(unit_type, "Class") == "thief" and GetFactionUnitTypeCount(GetFactionFromName(province.Owner), unit_type, true) >= 6) then -- only 6 regiments of a particular sort of thief can be had at a single time
		return false
	end

	return IsUnitAvailableForTraining(province, unit_type)
end

function IsUnitAvailableForTraining(province, unit_type)
	if (GetCivilizationClassUnitType(GetUnitTypeData(unit_type, "Class"), GetProvinceCivilization(province.Name)) ~= unit_type and GetUnitTypeInterfaceState(unit_type) ~= "mercenary-camp") then
		return false
	end
	
	if (ProvinceHasBuildingClass(province.Name, GetUnitTypeInterfaceState(unit_type)) == false) then
		return false
	end

	local has_required_buildings = true
	if (table.getn(GetUnitTypeRequiredBuildings(unit_type)) > 0) then
		--[[
		for i=1,table.getn(GetUnitTypeRequiredBuildings(unit_type)) do
			if (GetProvinceSettlementBuilding(province.Name, GetUnitTypeRequiredBuildings(unit_type)[i]) == false) then
				has_required_buildings = false
			end
		end
		--]]
		for i=1,table.getn(GetUnitTypeRequiredBuildings(unit_type)) do
			if (GetProvinceSettlementBuilding(province.Name, GetUnitTypeRequiredBuildings(unit_type)[i]) == false) then
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
	if (CanTrainUnit(province, unit_type)) then
		SetProvinceUnderConstructionUnitQuantity(province.Name, unit_type, GetProvinceUnderConstructionUnitQuantity(province.Name, unit_type) + 1)
		ChangeFactionResource(GetFactionFromName(province.Owner).Civilization, GetFactionFromName(province.Owner).Name, "gold", - GetUnitTypeData(unit_type, "Costs", "gold"))
		ChangeFactionResource(GetFactionFromName(province.Owner).Civilization, GetFactionFromName(province.Owner).Name, "lumber", - GetUnitTypeData(unit_type, "Costs", "lumber"))
		ChangeFactionResource(GetFactionFromName(province.Owner).Civilization, GetFactionFromName(province.Owner).Name, "stone", - GetUnitTypeData(unit_type, "Costs", "stone"))
	end
end

function TrainUnitCancel(province, unit_type)
	if (GetProvinceUnderConstructionUnitQuantity(province.Name, unit_type) >= 1) then
		SetProvinceUnderConstructionUnitQuantity(province.Name, unit_type, GetProvinceUnderConstructionUnitQuantity(province.Name, unit_type) - 1)
		ChangeFactionResource(GetFactionFromName(province.Owner).Civilization, GetFactionFromName(province.Owner).Name, "gold", GetUnitTypeData(unit_type, "Costs", "gold"))
		ChangeFactionResource(GetFactionFromName(province.Owner).Civilization, GetFactionFromName(province.Owner).Name, "lumber", GetUnitTypeData(unit_type, "Costs", "lumber"))
		ChangeFactionResource(GetFactionFromName(province.Owner).Civilization, GetFactionFromName(province.Owner).Name, "stone", GetUnitTypeData(unit_type, "Costs", "stone"))
	end
end

function CanHireMercenary(province, unit_type)
	local mercenary_quantity = MercenaryGroups[string.gsub(unit_type, "-", "_")]
	if (
		GetFactionResource(GetFactionFromName(province.Owner).Civilization, GetFactionFromName(province.Owner).Name, "gold") < (GetUnitTypeData(unit_type, "Costs", "gold") * mercenary_quantity)
		or GetFactionResource(GetFactionFromName(province.Owner).Civilization, GetFactionFromName(province.Owner).Name, "lumber") < (GetUnitTypeData(unit_type, "Costs", "lumber") * mercenary_quantity)
		or GetFactionResource(GetFactionFromName(province.Owner).Civilization, GetFactionFromName(province.Owner).Name, "stone") < (GetUnitTypeData(unit_type, "Costs", "stone") * mercenary_quantity)
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
		ChangeFactionResource(GetFactionFromName(province.Owner).Civilization, GetFactionFromName(province.Owner).Name, "gold", - (GetUnitTypeData(unit_type, "Costs", "gold") * mercenary_quantity))
		ChangeFactionResource(GetFactionFromName(province.Owner).Civilization, GetFactionFromName(province.Owner).Name, "lumber", - (GetUnitTypeData(unit_type, "Costs", "lumber") * mercenary_quantity))
		ChangeFactionResource(GetFactionFromName(province.Owner).Civilization, GetFactionFromName(province.Owner).Name, "stone", - (GetUnitTypeData(unit_type, "Costs", "stone") * mercenary_quantity))
	end
end

function CancelHireMercenary(province, unit_type)
	if (GetProvinceUnderConstructionUnitQuantity(province.Name, unit_type) >= 1) then
		local mercenary_quantity = GetProvinceUnderConstructionUnitQuantity(province.Name, unit_type)
		SetProvinceUnderConstructionUnitQuantity(province.Name, unit_type, 0)
		ChangeFactionResource(GetFactionFromName(province.Owner).Civilization, GetFactionFromName(province.Owner).Name, "gold", (GetUnitTypeData(unit_type, "Costs", "gold") * mercenary_quantity))
		ChangeFactionResource(GetFactionFromName(province.Owner).Civilization, GetFactionFromName(province.Owner).Name, "lumber", (GetUnitTypeData(unit_type, "Costs", "lumber") * mercenary_quantity))
		ChangeFactionResource(GetFactionFromName(province.Owner).Civilization, GetFactionFromName(province.Owner).Name, "stone", (GetUnitTypeData(unit_type, "Costs", "stone") * mercenary_quantity))
	end
end

function UseBuilding(province, unit_type)
	GrandStrategyInterfaceState = GetUnitTypeData(unit_type, "Class")
end

function IsTechnologyAvailable(province, unit_type)
	if (GetCivilizationClassUnitType(CUpgrade:Get(unit_type).Class, GetProvinceCivilization(province.Name)) ~= unit_type) then
		return false
	end

	if (province.Owner == "") then
		return false
	end

	if (GetFactionTechnology(GetFactionFromName(province.Owner).Civilization, province.Owner, unit_type)) then -- can't research if already researched
		return false
	end

	local has_required_technologies = true
	if (table.getn(GetUnitTypeRequiredTechnologies(unit_type)) > 0) then
		for i=1,table.getn(GetUnitTypeRequiredTechnologies(unit_type)) do
			if (GetFactionTechnology(GetFactionFromName(province.Owner).Civilization, province.Owner, GetUnitTypeRequiredTechnologies(unit_type)[i]) == false) then
				has_required_technologies = false
			end
		end
	end
	if (has_required_technologies == false) then
		return false
	end
	
	local has_required_buildings = true
	if (table.getn(GetUnitTypeRequiredBuildings(unit_type)) > 0) then
		--[[
		for i=1,table.getn(GetUnitTypeRequiredBuildings(unit_type)) do
			if (GetProvinceSettlementBuilding(province.Name, GetUnitTypeRequiredBuildings(unit_type)[i]) == false) then
				has_required_buildings = false
			end
		end
		--]]
		for i=1,table.getn(GetUnitTypeRequiredBuildings(unit_type)) do
			if (ProvinceHasBuildingClass(province.Name, GetUnitTypeData(GetUnitTypeRequiredBuildings(unit_type)[i], "Class")) == false) then
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
	if (GetFactionResource(GetFactionFromName(province.Owner).Civilization, GetFactionFromName(province.Owner).Name, "gold") < CUpgrade:Get(unit_type).GrandStrategyCosts[1] or GetFactionResource(GetFactionFromName(province.Owner).Civilization, GetFactionFromName(province.Owner).Name, "lumber") < CUpgrade:Get(unit_type).GrandStrategyCosts[2] or GetFactionResource(GetFactionFromName(province.Owner).Civilization, GetFactionFromName(province.Owner).Name, "stone") < CUpgrade:Get(unit_type).GrandStrategyCosts[5] or GetFactionResource(GetFactionFromName(province.Owner).Civilization, GetFactionFromName(province.Owner).Name, "research") < CUpgrade:Get(unit_type).GrandStrategyCosts[7]) then
		return false
	end
	
	return IsTechnologyAvailable(province, unit_type)
end

function ResearchTechnology(province, unit_type)
	if (CanResearchTechnology(province, unit_type)) then
		if (GetFactionCurrentResearch(GetFactionFromName(province.Owner).Civilization, province.Owner) ~= "") then
			CancelResearchTechnology(province, GetFactionCurrentResearch(GetFactionFromName(province.Owner).Civilization, province.Owner)) -- it doesn't matter that the province given here is this one and not the one used to originally set that technology to be researched, since the CancelResearchTechnology function only refers to the province's owner
		end

		SetFactionCurrentResearch(GetFactionFromName(province.Owner).Civilization, province.Owner, unit_type)
		ChangeFactionResource(GetFactionFromName(province.Owner).Civilization, GetFactionFromName(province.Owner).Name, "gold", - CUpgrade:Get(unit_type).GrandStrategyCosts[1])
		ChangeFactionResource(GetFactionFromName(province.Owner).Civilization, GetFactionFromName(province.Owner).Name, "lumber", - CUpgrade:Get(unit_type).GrandStrategyCosts[2])
		ChangeFactionResource(GetFactionFromName(province.Owner).Civilization, GetFactionFromName(province.Owner).Name, "stone", - CUpgrade:Get(unit_type).GrandStrategyCosts[5])
		ChangeFactionResource(GetFactionFromName(province.Owner).Civilization, GetFactionFromName(province.Owner).Name, "research", - CUpgrade:Get(unit_type).GrandStrategyCosts[7])
	end
end

function CancelResearchTechnology(province, unit_type)
	if (GetFactionCurrentResearch(GetFactionFromName(province.Owner).Civilization, province.Owner) == unit_type) then
		SetFactionCurrentResearch(GetFactionFromName(province.Owner).Civilization, province.Owner, "")
		ChangeFactionResource(GetFactionFromName(province.Owner).Civilization, GetFactionFromName(province.Owner).Name, "gold", CUpgrade:Get(unit_type).GrandStrategyCosts[1])
		ChangeFactionResource(GetFactionFromName(province.Owner).Civilization, GetFactionFromName(province.Owner).Name, "lumber", CUpgrade:Get(unit_type).GrandStrategyCosts[2])
		ChangeFactionResource(GetFactionFromName(province.Owner).Civilization, GetFactionFromName(province.Owner).Name, "stone", CUpgrade:Get(unit_type).GrandStrategyCosts[5])
		ChangeFactionResource(GetFactionFromName(province.Owner).Civilization, GetFactionFromName(province.Owner).Name, "research", CUpgrade:Get(unit_type).GrandStrategyCosts[7])
	end
end

function ClearGrandStrategyVariables()
	GrandStrategy = false
	GrandStrategyEventMap = false	
	GrandStrategyBattle = false	
	WorldMapOffsetX = 0
	WorldMapOffsetY = 0
	GrandStrategyWorld = ""
	GrandStrategyYear = nil
	GrandStrategyFaction = nil
	SelectedProvince = nil
	SelectedHero = nil
	Attacker = nil
	Defender = nil
	Factions = nil
	WorldMapProvinces = nil
	WorldMapWaterProvinces = nil
	SelectedUnits = nil
	AttackedProvince = nil
	GrandStrategyInterfaceState = ""
	GrandStrategyCommodities = nil
	GrandStrategyEvents = nil
	MercenaryGroups = nil
	EventFaction = nil
	EventProvince = nil
	CleanGrandStrategyGame()
	ProcessingEndTurn = nil
	GrandStrategyMapWidthIndent = 0
	GrandStrategyMapHeightIndent = 0

	ClearGrandStrategyUIVariables()

--	GrandStrategyMenu = nil
end

function ClearGrandStrategyUIVariables()
	if (OnScreenSites ~= nil) then
		for i=1,table.getn(OnScreenSites) do
			if (OnScreenSites[i] ~= nil) then
				GrandStrategyMenu:remove(OnScreenSites[i])
			end
		end
		
		for i=table.getn(OnScreenSites),table.getn(OnScreenSites), -1 do
			if (OnScreenSites[i] ~= nil) then
				OnScreenSites[i] = nil
			end
		end
	end
	OnScreenSites = nil
	
	if (UIElements ~= nil) then
		for i=1,table.getn(UIElements) do
			if (UIElements[i] ~= nil) then
				GrandStrategyMenu:remove(UIElements[i])
			end
		end
	end
	UIElements = nil
	
	if (CommodityButtons ~= nil) then
		for i=1,table.getn(CommodityButtons) do
			if (CommodityButtons[i] ~= nil) then
				GrandStrategyMenu:remove(CommodityButtons[i])
			end
		end
	end
	CommodityButtons = nil
	
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
		military_score = military_score + GetMilitaryScore(WorldMapProvinces[key], false, true)
	end
	return military_score
end

function GetMilitaryScore(province, attacker, count_defenders)
	local units
	local faction
	if (attacker == false) then
		units = GetProvinceUnitQuantity
		faction = province.Owner
	else
		if (GetProvinceAttackedBy(province.Name) == "") then
			return 1 -- military score must be at least one, since it is a divider in some instances, and we don't want to divide by 0
		else
			units = GetProvinceAttackingUnitQuantity
			faction = GetProvinceAttackedBy(province.Name)
		end
	end
	local infantry_military_score_bonus = 0
	local archer_military_score_bonus = 0
	local catapult_military_score_bonus = 0
	local flying_rider_military_score_bonus = 0
	if (faction ~= "" and faction ~= "Ocean") then
		faction = GetFactionFromName(faction)
		if (FactionHasTechnologyType(faction, "melee-weapon-1")) then
			infantry_military_score_bonus = infantry_military_score_bonus + 10
		end
		if (FactionHasTechnologyType(faction, "melee-weapon-2")) then
			infantry_military_score_bonus = infantry_military_score_bonus + 10
		end
		if (FactionHasTechnologyType(faction, "bronze-shield")) then
			infantry_military_score_bonus = infantry_military_score_bonus + 10
		end
		if (FactionHasTechnologyType(faction, "iron-shield")) then
			infantry_military_score_bonus = infantry_military_score_bonus + 10
		end
		if (FactionHasTechnologyType(faction, "ranged-projectile-1")) then
			archer_military_score_bonus = archer_military_score_bonus + 10
			flying_rider_military_score_bonus = flying_rider_military_score_bonus + 10
		end
		if (FactionHasTechnologyType(faction, "ranged-projectile-2")) then
			archer_military_score_bonus = archer_military_score_bonus + 10
			flying_rider_military_score_bonus = flying_rider_military_score_bonus + 10
		end
		if (FactionHasTechnologyType(faction, "siege-projectile-1")) then
			catapult_military_score_bonus = catapult_military_score_bonus + 10
		end
		if (FactionHasTechnologyType(faction, "siege-projectile-2")) then
			catapult_military_score_bonus = catapult_military_score_bonus + 10
		end
	end

	local military_score = 1 -- military score must be at least one, since it is a divider in some instances, and we don't want to divide by 0
	for i, unitName in ipairs(Units) do
		if (IsMilitaryUnit(unitName)) then
			if (GetUnitTypeData(unitName, "Class") == "militia" and count_defenders) then
				military_score = military_score + (units(province.Name, unitName) * (30 + infantry_military_score_bonus))
			elseif (GetUnitTypeData(unitName, "Class") == "infantry") then
				military_score = military_score + (units(province.Name, unitName) * (50 + infantry_military_score_bonus))
			elseif (GetUnitTypeData(unitName, "Class") == "veteran-infantry") then
				military_score = military_score + (units(province.Name, unitName) * (75 + infantry_military_score_bonus))
			elseif (GetUnitTypeData(unitName, "Class") == "heroic-infantry") then
				military_score = military_score + (units(province.Name, unitName) * (100 + infantry_military_score_bonus))
			elseif (GetUnitTypeData(unitName, "Class") == "shooter") then
				military_score = military_score + (units(province.Name, unitName) * (60 + archer_military_score_bonus))
			elseif (GetUnitTypeData(unitName, "Class") == "thief") then
				military_score = military_score + (units(province.Name, unitName) * 30)
			elseif (GetUnitTypeData(unitName, "Class") == "priest") then
				military_score = military_score + (units(province.Name, unitName) * 60)
			elseif (GetUnitTypeData(unitName, "Class") == "siege-engine") then
				military_score = military_score + (units(province.Name, unitName) * (100 + catapult_military_score_bonus))
			elseif (GetUnitTypeData(unitName, "Class") == "flying-rider") then
				military_score = military_score + (units(province.Name, unitName) * (150 + flying_rider_military_score_bonus))
			-- Mercenaries
			elseif (GetUnitTypeData(unitName, "Mercenary")) then
				if (unitName == "unit-surghan-mercenary-steelclad") then
					military_score = military_score + (units(province.Name, unitName) * (75 + infantry_military_score_bonus))
				elseif (unitName == "unit-surghan-mercenary-thane") then
					military_score = military_score + (units(province.Name, unitName) * (100 + infantry_military_score_bonus))
				end
			end
		-- Heroes
		elseif (count_defenders and IsHero(unitName) and ((attacker == false and province.Heroes[string.gsub(unitName, "-", "_")] == 2) or (attacker == true and province.Heroes[string.gsub(unitName, "-", "_")] == 3))) then
			if (unitName == "unit-hero-marbod" or unitName == "unit-hero-rugnur") then
				military_score = military_score + (50 + infantry_military_score_bonus)
			elseif (unitName == "unit-hero-modsognir" or unitName == "unit-hero-durin" or unitName == "unit-hero-rugnur-steelclad" or unitName == "unit-hero-baglur" or unitName == "unit-hero-greebo") then
				military_score = military_score + (75 + infantry_military_score_bonus)
			elseif (unitName == "unit-hero-modsognir-thane" or unitName == "unit-hero-durin-thane" or unitName == "unit-hero-rugnur-thane" or unitName == "unit-hero-baglur-thane" or unitName == "unit-hero-thursagan" or unitName == "unit-hero-durstorn") then
				military_score = military_score + (100 + infantry_military_score_bonus + (10 * (wyr.preferences.Heroes[GetUnitTypeData(unitName, "DefaultName")].level - GetUnitTypeData(unitName, "StartingLevel"))))
			end
		end
	end
	return military_score
end

function DeclareWar(faction_from, faction_to)
	if (faction_from ~= "" and faction_to ~= "") then
		GetFactionFromName(faction_from).Diplomacy[GetFactionKeyFromName(faction_to)] = "War"
		GetFactionFromName(faction_to).Diplomacy[GetFactionKeyFromName(faction_from)] = "War"
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
		l:setCaption("My lord, the " .. GetFactionFullName(faction_from) .. " has declared war upon us!")

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
		GetFactionFromName(faction_from).Diplomacy[GetFactionKeyFromName(faction_to)] = "Offering Peace"
		GetFactionFromName(faction_to).Diplomacy[GetFactionKeyFromName(faction_from)] = "Peace Offered"
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
		l:setCaption("My lord, the " .. GetFactionFullName(faction_from) .. " has offered us peace. Shall we accept?")

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
		if (faction_from == GrandStrategyFaction.Name) then
			GetFactionFromName(faction_from).Diplomacy[GetFactionKeyFromName(faction_to)] = "Peace Offer Accepted"
			GetFactionFromName(faction_to).Diplomacy[GetFactionKeyFromName(faction_from)] = "Peace"
		else
			GetFactionFromName(faction_from).Diplomacy[GetFactionKeyFromName(faction_to)] = "Peace"
			GetFactionFromName(faction_to).Diplomacy[GetFactionKeyFromName(faction_from)] = "Peace"
		end
	else
		if (faction_from == GrandStrategyFaction.Name) then
			GetFactionFromName(faction_from).Diplomacy[GetFactionKeyFromName(faction_to)] = "Peace Offer Rejected"
			GetFactionFromName(faction_to).Diplomacy[GetFactionKeyFromName(faction_from)] = "War"
		else
			GetFactionFromName(faction_from).Diplomacy[GetFactionKeyFromName(faction_to)] = "War"
			GetFactionFromName(faction_to).Diplomacy[GetFactionKeyFromName(faction_from)] = "War"
		end
	end
end

function AtPeace(faction)
	for key, value in pairs(Factions) do
		if (faction.Diplomacy[key] == "War") then
			return false
		end
	end

	return true
end

function GetFactionFullName(faction)
	local province_name_text = ""
	if (GetFactionData(GetFactionFromName(faction).Civilization, faction, "Type") == "tribe") then -- if is a tribe, just use the tribe's name
		province_name_text = province_name_text .. faction
	elseif (GetFactionData(GetFactionFromName(faction).Civilization, faction, "Type") == "polity") then -- if is a polity, use the polity's name accompanied by its title
		province_name_text = province_name_text .. GetFactionFromName(faction).Title .. " of " .. faction
	end
	return province_name_text
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
			if ((WorldMapProvinces[key].Owner == faction.Name) ~= event.Provinces[key]) then
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
					if (event.SettlementBuildings[string.gsub(unitName, "-", "_")] ~= nil and event.Provinces[key] == true and WorldMapProvinces[key].Owner == faction.Name and GetProvinceSettlementBuilding(WorldMapProvinces[key].Name, unitName) ~= event.SettlementBuildings[string.gsub(unitName, "-", "_")]) then
						return false
					end
				end
			end
		end
	end

	if (event.Provinces ~= nil and event.Units ~= nil) then
		for key, value in pairs(event.Provinces) do
			for i, unitName in ipairs(Units) do
				if (event.Units[string.gsub(unitName, "-", "_")] ~= nil and event.Provinces[key] == true and WorldMapProvinces[key].Owner == faction.Name and GetProvinceUnitQuantity(WorldMapProvinces[key].Name, unitName) < event.Units[string.gsub(unitName, "-", "_")]) then
					return false
				end
			end
		end
	end

	if (event.Heroes ~= nil) then
		if (event.Provinces ~= nil and GetTableSize(event.Provinces) > 0) then
			for key, value in pairs(event.Provinces) do
				for i, unitName in ipairs(Units) do
					if (IsHero(unitName)) then
						if (event.Heroes[string.gsub(unitName, "-", "_")] ~= nil and event.Provinces[key] == true and WorldMapProvinces[key].Owner == faction.Name and (WorldMapProvinces[key].Heroes[string.gsub(unitName, "-", "_")] == 2) ~= event.Heroes[string.gsub(unitName, "-", "_")]) then
							local has_other_hero_version = false -- check to see if the province has another version of the hero in it
							for j, second_unitName in ipairs(Units) do
								if (IsHero(second_unitName)) then
									if (GetUnitTypeData(unitName, "DefaultName") == GetUnitTypeData(second_unitName, "DefaultName") and WorldMapProvinces[key].Heroes[string.gsub(second_unitName, "-", "_")] == 2) then
										has_other_hero_version = true
									end
								end
							end
							if (has_other_hero_version ~= event.Heroes[string.gsub(unitName, "-", "_")]) then
								return false
							end
						end
					end
				end
			end
		else -- if no provinces are specified, search in all of the faction's provinces
			for i, unitName in ipairs(Units) do
				if (IsHero(unitName)) then
					if (event.Heroes[string.gsub(unitName, "-", "_")] ~= nil) then
						local has_hero = false
						for province_i, province_key in ipairs(faction.OwnedProvinces) do
							if (WorldMapProvinces[province_key].Heroes[string.gsub(unitName, "-", "_")] == 2) then
								has_hero = true
							end
							for j, second_unitName in ipairs(Units) do -- check for other versions of the hero (for instance, thane Rugnur)
								if (IsHero(second_unitName)) then
									if (GetUnitTypeData(unitName, "DefaultName") == GetUnitTypeData(second_unitName, "DefaultName") and WorldMapProvinces[province_key].Heroes[string.gsub(second_unitName, "-", "_")] == 2) then
										has_hero = true
									end
								end
							end
						end
						if (has_hero ~= event.Heroes[string.gsub(unitName, "-", "_")]) then
							return false
						end
					end
				end
			end
		end
	end

	if (event.SecondFaction ~= nil and GetFactionProvinceCount(Factions[event.SecondFaction]) == 0) then -- if the event's "second faction" doesn't exist, return false
		return false
	end	
	
	if (event.SecondProvinces ~= nil and event.SecondFaction ~= nil) then
		for key, value in pairs(event.SecondProvinces) do
			if ((WorldMapProvinces[key].Owner == Factions[event.SecondFaction].Name) ~= event.SecondProvinces[key]) then -- if the "second faction" holds these provinces
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

		local event_name = event.Name
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
				event_name = string.gsub(event_name, "CULTURE_NAME", CapitalizeString(EventFaction.Civilization))
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
		local event_description = event.Description
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
				event_description = string.gsub(event_description, "CULTURE_NAME", CapitalizeString(EventFaction.Civilization))
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

		for i=1,table.getn(event.Options) do
			if (event.OptionConditions == nil or event.OptionConditions[i]()) then
				local option_hotkey = ""		
				if (string.find(event.Options[i], "~!") ~= nil) then
					option_hotkey = string.sub(string.match(event.Options[i], "~!%a"), 3)
					option_hotkey = string.lower(option_hotkey)
				end

				local b = menu:addFullButton(event.Options[i], option_hotkey, 176 - (224 / 2), 352 - 40 * (table.getn(event.Options) - (i - 1)),
					function(s)
						menu:stop()
						event.OptionEffects[i]()
						GameResult = GameNoResult -- this is because many events start scenarios
						GrandStrategyGamePaused = false
					end
				)
				if (event.OptionTooltips ~= nil and event.OptionTooltips[i] ~= nil) then
					b:setTooltip(event.OptionTooltips[i])
				end
			end
		end
		
		if (table.getn(event.Options) == 1) then -- for events with just one option, allow enter to be used as a way to close the event dialogue
			menu:addButton("", "return", -1, -1,
				function()
					menu:stop()
					event.OptionEffects[1]()
					GameResult = GameNoResult -- this is because many events start scenarios
					GrandStrategyGamePaused = false
				end,
				{0, 0}
			)
		end

		menu:run()
	else
--		event.OptionEffects[SyncRand(table.getn(event.OptionEffects)) + 1]() -- AIs choose a random option
		event.OptionEffects[1]() -- AIs always choose the first option
	end
	
	if (event.Persistent == nil or event.Persistent == false) then
		for event_key, event_value in pairs(GrandStrategyEvents) do
			if (GrandStrategyEvents[event_key] == event) then
				GrandStrategyEvents[event_key] = nil
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
			end
		end
	end
end

function FormFaction(old_faction, new_faction)
	local old_faction_key = GetFactionKeyFromName(old_faction.Name)	
	local new_faction_key = GetFactionKeyFromName(new_faction.Name)	

	for key, value in pairs(WorldMapProvinces) do
		if (WorldMapProvinces[key].Owner == old_faction.Name) then
			AcquireProvince(WorldMapProvinces[key], new_faction.Name)
			if (ProvinceHasClaim(WorldMapProvinces[key].Name, old_faction.Civilization, old_faction.Name)) then
				AddProvinceClaim(WorldMapProvinces[key].Name, new_faction.Civilization, new_faction.Name)
			end
		end
	end
	
	new_faction.Civilization = old_faction.Civilization
	SetFactionResource(new_faction.Civilization, new_faction.Name, "gold", GetFactionResource(old_faction.Civilization, old_faction.Name, "gold"))
	for key, value in pairs(GrandStrategyCommodities) do
		SetFactionResource(new_faction.Civilization, new_faction.Name, string.lower(key), GetFactionResource(old_faction.Civilization, old_faction.Name, string.lower(key)))
		SetFactionCommodityTrade(new_faction.Civilization, new_faction.Name, string.lower(key), GetFactionCommodityTrade(old_faction.Civilization, old_faction.Name, string.lower(key)))
		SetFactionCommodityTrade(old_faction.Civilization, old_faction.Name, string.lower(key), 0)
	end
	SetFactionResource(new_faction.Civilization, new_faction.Name, "research", GetFactionResource(old_faction.Civilization, old_faction.Name, "research"))
	SetFactionResource(new_faction.Civilization, new_faction.Name, "prestige", GetFactionResource(old_faction.Civilization, old_faction.Name, "prestige"))
	
	for i, unitName in ipairs(Units) do
		if (string.find(unitName, "upgrade-") ~= nil) then
			SetFactionTechnology(new_faction.Civilization, new_faction.Name, unitName, GetFactionTechnology(old_faction.Civilization, old_faction.Name, unitName))
		end
	end
	SetFactionCurrentResearch(new_faction.Civilization, new_faction.Name, GetFactionCurrentResearch(old_faction.Civilization, old_faction.Name))

	for key, value in pairs(Factions) do
		Factions[key].Diplomacy[new_faction_key] = Factions[key].Diplomacy[old_faction_key]
		Factions[new_faction_key].Diplomacy[key] = Factions[old_faction_key].Diplomacy[key]
		
		Factions[key].Diplomacy[old_faction_key] = "Peace"
		Factions[old_faction_key].Diplomacy[key] = "Peace"
	end

	if (GrandStrategyFaction == old_faction) then
		GrandStrategyFaction = new_faction
		SetPlayerFaction(new_faction.Civilization, new_faction.Name)
	end

	CalculateFactionIncomes(old_faction.Civilization, old_faction.Name)
	CalculateFactionIncomes(new_faction.Civilization, new_faction.Name)
	
	DrawGrandStrategyInterface()
	DrawOnScreenTiles()
end

function GetUnitTypeUpkeep(unit_type)
	if (GetUnitTypeData(unit_type, "Class") == "infantry" or GetUnitTypeData(unit_type, "Class") == "veteran-infantry" or GetUnitTypeData(unit_type, "Class") == "heroic-infantry") then
		return 25
	elseif (GetUnitTypeData(unit_type, "Class") == "shooter") then
		return 25
	elseif (GetUnitTypeData(unit_type, "Class") == "cavalry") then
		return 25
	elseif (GetUnitTypeData(unit_type, "Class") == "thief") then
		return 25
	elseif (GetUnitTypeData(unit_type, "Class") == "siege-engine") then
		return 50
	elseif (GetUnitTypeData(unit_type, "Class") == "priest") then
		return 25
	elseif (GetUnitTypeData(unit_type, "Class") == "flying-rider") then
		return 50
	elseif (GetUnitTypeData(unit_type, "Class") == "glider") then
		return 25
	elseif (GetUnitTypeData(unit_type, "Mercenary")) then
		return 25
	else
		return 0
	end
end

function GetUnitTypeInterfaceState(unit_type)
	if (string.find(unit_type, "upgrade-") == nil) then
		if (GetUnitTypeData(unit_type, "Class") == "infantry") then
			return "barracks"
		elseif (GetUnitTypeData(unit_type, "Class") == "shooter") then
			return "barracks"
		elseif (GetUnitTypeData(unit_type, "Class") == "cavalry") then
			return "stables" -- should be barracks, but keep it that way for now, to make it not be trainable
		elseif (GetUnitTypeData(unit_type, "Class") == "siege-engine") then
			return "barracks"
		elseif (GetUnitTypeData(unit_type, "Class") == "priest") then
			return "barracks" -- should be temple, but make it barracks for now to allow gnomish herbalists to be trained
--		elseif (GetUnitTypeData(unit_type, "Class") == "caravan") then
--			return "barracks"
		elseif (GetUnitTypeData(unit_type, "Class") == "glider") then
			return "barracks"
		elseif (GetUnitTypeData(unit_type, "Class") == "flying-rider") then
			return "aviary"
		elseif (GetUnitTypeData(unit_type, "Class") == "thief") then
			return "mercenary-camp"
		else
			return ""
		end
	else
		if (CUpgrade:Get(unit_type).Class == "melee-weapon-1" or CUpgrade:Get(unit_type).Class == "melee-weapon-2" or CUpgrade:Get(unit_type).Class == "bronze-shield" or CUpgrade:Get(unit_type).Class == "iron-shield" or CUpgrade:Get(unit_type).Class == "siege-projectile-1" or CUpgrade:Get(unit_type).Class == "siege-projectile-2") then
			return "smithy"
--		elseif (CUpgrade:Get(unit_type).Class == "ranged-projectile-1" or CUpgrade:Get(unit_type).Class == "ranged-projectile-2" or CUpgrade:Get(unit_type).Class == "wood-plow" or CUpgrade:Get(unit_type).Class == "iron-tipped-wood-plow" or CUpgrade:Get(unit_type).Class == "iron-plow" or CUpgrade:Get(unit_type).Class == "masonry") then
		elseif (CUpgrade:Get(unit_type).Class == "ranged-projectile-1" or CUpgrade:Get(unit_type).Class == "ranged-projectile-2" or CUpgrade:Get(unit_type).Class == "masonry") then
			return "lumber-mill"
		elseif (CUpgrade:Get(unit_type).Class == "coinage") then
			return "smithy"
		elseif (CUpgrade:Get(unit_type).Class == "writing") then
			return "lumber-mill"
		else
			return ""
		end
	end
end

function GetUnitTypeRequiredBuildings(unit_type)
	local required_buildings = {}
	if (string.find(unit_type, "upgrade-") == nil) then
		if (GetUnitTypeData(unit_type, "Class") == "infantry") then
			if (GetCivilizationClassUnitType("barracks", GetUnitTypeData(unit_type, "Civilization")) ~= nil) then
				table.insert(required_buildings, GetCivilizationClassUnitType("barracks", GetUnitTypeData(unit_type, "Civilization")))
			end
		elseif (GetUnitTypeData(unit_type, "Class") == "shooter") then
			if (GetCivilizationClassUnitType("barracks", GetUnitTypeData(unit_type, "Civilization")) ~= nil) then
				table.insert(required_buildings, GetCivilizationClassUnitType("barracks", GetUnitTypeData(unit_type, "Civilization")))
			end
			if (GetCivilizationClassUnitType("lumber-mill", GetUnitTypeData(unit_type, "Civilization")) ~= nil) then
				table.insert(required_buildings, GetCivilizationClassUnitType("lumber-mill", GetUnitTypeData(unit_type, "Civilization")))
			end
		elseif (GetUnitTypeData(unit_type, "Class") == "siege-engine") then
			if (GetCivilizationClassUnitType("barracks", GetUnitTypeData(unit_type, "Civilization")) ~= nil) then
				table.insert(required_buildings, GetCivilizationClassUnitType("barracks", GetUnitTypeData(unit_type, "Civilization")))
			end
			if (GetCivilizationClassUnitType("lumber-mill", GetUnitTypeData(unit_type, "Civilization")) ~= nil) then
				table.insert(required_buildings, GetCivilizationClassUnitType("lumber-mill", GetUnitTypeData(unit_type, "Civilization")))
			end
			if (GetCivilizationClassUnitType("smithy", GetUnitTypeData(unit_type, "Civilization")) ~= nil) then
				table.insert(required_buildings, GetCivilizationClassUnitType("smithy", GetUnitTypeData(unit_type, "Civilization")))
			end
		elseif (GetUnitTypeData(unit_type, "Class") == "glider") then
			if (GetCivilizationClassUnitType("barracks", GetUnitTypeData(unit_type, "Civilization")) ~= nil) then
				table.insert(required_buildings, GetCivilizationClassUnitType("barracks", GetUnitTypeData(unit_type, "Civilization")))
			end
			if (GetCivilizationClassUnitType("lumber-mill", GetUnitTypeData(unit_type, "Civilization")) ~= nil) then
				table.insert(required_buildings, GetCivilizationClassUnitType("lumber-mill", GetUnitTypeData(unit_type, "Civilization")))
			end
		elseif (GetUnitTypeData(unit_type, "Class") == "barracks" or GetUnitTypeData(unit_type, "Class") == "lumber-mill" or GetUnitTypeData(unit_type, "Class") == "smithy") then
			if (GetCivilizationClassUnitType("town-hall", GetUnitTypeData(unit_type, "Civilization")) ~= nil) then
				table.insert(required_buildings, GetCivilizationClassUnitType("town-hall", GetUnitTypeData(unit_type, "Civilization")))
			end
		elseif (GetUnitTypeData(unit_type, "Class") == "stronghold") then
			if (GetCivilizationClassUnitType("town-hall", GetUnitTypeData(unit_type, "Civilization")) ~= nil) then
				table.insert(required_buildings, GetCivilizationClassUnitType("town-hall", GetUnitTypeData(unit_type, "Civilization")))
			end
			if (GetCivilizationClassUnitType("barracks", GetUnitTypeData(unit_type, "Civilization")) ~= nil) then
				table.insert(required_buildings, GetCivilizationClassUnitType("barracks", GetUnitTypeData(unit_type, "Civilization")))
			end
		end
	else
		if (CUpgrade:Get(unit_type).Class == "melee-weapon-1" or CUpgrade:Get(unit_type).Class == "melee-weapon-2" or CUpgrade:Get(unit_type).Class == "bronze-shield" or CUpgrade:Get(unit_type).Class == "iron-shield") then
			if (GetCivilizationClassUnitType("smithy", CUpgrade:Get(unit_type).Civilization) ~= nil) then
				table.insert(required_buildings, GetCivilizationClassUnitType("smithy", CUpgrade:Get(unit_type).Civilization))
			end
		elseif (CUpgrade:Get(unit_type).Class == "ranged-projectile-1" or CUpgrade:Get(unit_type).Class == "ranged-projectile-2" or CUpgrade:Get(unit_type).Class == "wood-plow" or CUpgrade:Get(unit_type).Class == "iron-tipped-wood-plow" or CUpgrade:Get(unit_type).Class == "iron-plow" or CUpgrade:Get(unit_type).Class == "masonry") then
			if (GetCivilizationClassUnitType("lumber-mill", CUpgrade:Get(unit_type).Civilization) ~= nil) then
				table.insert(required_buildings, GetCivilizationClassUnitType("lumber-mill", CUpgrade:Get(unit_type).Civilization))
			end
		elseif (CUpgrade:Get(unit_type).Class == "siege-projectile-1" or CUpgrade:Get(unit_type).Class == "siege-projectile-2") then
			if (GetCivilizationClassUnitType("smithy", CUpgrade:Get(unit_type).Civilization) ~= nil) then
				table.insert(required_buildings, GetCivilizationClassUnitType("smithy", CUpgrade:Get(unit_type).Civilization))
			end
			if (GetCivilizationClassUnitType("lumber-mill", CUpgrade:Get(unit_type).Civilization) ~= nil) then
				table.insert(required_buildings, GetCivilizationClassUnitType("lumber-mill", CUpgrade:Get(unit_type).Civilization))
			end
		elseif (CUpgrade:Get(unit_type).Class == "coinage") then
			if (GetCivilizationClassUnitType("smithy", CUpgrade:Get(unit_type).Civilization) ~= nil) then
				table.insert(required_buildings, GetCivilizationClassUnitType("smithy", CUpgrade:Get(unit_type).Civilization))
			end
			if (GetCivilizationClassUnitType("stronghold", CUpgrade:Get(unit_type).Civilization) ~= nil) then
				table.insert(required_buildings, GetCivilizationClassUnitType("stronghold", CUpgrade:Get(unit_type).Civilization))
			end
		elseif (CUpgrade:Get(unit_type).Class == "writing") then
			if (GetCivilizationClassUnitType("stronghold", CUpgrade:Get(unit_type).Civilization) ~= nil) then
				table.insert(required_buildings, GetCivilizationClassUnitType("stronghold", CUpgrade:Get(unit_type).Civilization))
			end
		end
	end
	return required_buildings
end

function GetUnitTypeRequiredTechnologies(unit_type)
	local required_technologies = {}
	if (string.find(unit_type, "upgrade-") == nil) then
		if (GetUnitTypeData(unit_type, "Class") == "stronghold") then
			if (GetCivilizationClassUnitType("masonry", GetUnitTypeData(unit_type, "Civilization")) ~= nil) then
				table.insert(required_technologies, GetCivilizationClassUnitType("masonry", GetUnitTypeData(unit_type, "Civilization")))
			end
		end
	else
		if (CUpgrade:Get(unit_type).Class == "melee-weapon-2") then
			if (GetCivilizationClassUnitType("melee-weapon-1", CUpgrade:Get(unit_type).Civilization) ~= nil) then
				table.insert(required_technologies, GetCivilizationClassUnitType("melee-weapon-1", CUpgrade:Get(unit_type).Civilization))
			end
		elseif (CUpgrade:Get(unit_type).Class == "iron-shield") then
			if (GetCivilizationClassUnitType("bronze-shield", CUpgrade:Get(unit_type).Civilization) ~= nil) then
				table.insert(required_technologies, GetCivilizationClassUnitType("bronze-shield", CUpgrade:Get(unit_type).Civilization))
			end
		elseif (CUpgrade:Get(unit_type).Class == "ranged-projectile-2") then
			if (GetCivilizationClassUnitType("ranged-projectile-1", CUpgrade:Get(unit_type).Civilization) ~= nil) then
				table.insert(required_technologies, GetCivilizationClassUnitType("ranged-projectile-1", CUpgrade:Get(unit_type).Civilization))
			end
		elseif (CUpgrade:Get(unit_type).Class == "siege-projectile-2") then
			if (GetCivilizationClassUnitType("siege-projectile-1", CUpgrade:Get(unit_type).Civilization) ~= nil) then
				table.insert(required_technologies, GetCivilizationClassUnitType("siege-projectile-1", CUpgrade:Get(unit_type).Civilization))
			end
		end
	end
	return required_technologies
end

function GrandStrategyGameSave(name)
	wyr[name] = {
		SavedGrandStrategyFactionName = GrandStrategyFaction.Name,
		SavedGrandStrategyYear = GrandStrategyYear,
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
	local civilizations = {"germanic", "teuton", "celt", "dwarf", "goblin", "goth", "norse", "kobold", "gnome", "latin", "greek", "basque", "minoan"}
	
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
	if (string.find(unit_type, "upgrade-") == nil and GetUnitTypeData(unit_type, "Building") == false and GetUnitTypeData(unit_type, "Demand") > 0 and GetUnitTypeData(unit_type, "Hero") == false and GetUnitTypeData(unit_type, "Class") ~= "worker" and GetUnitTypeData(unit_type, "Class") ~= "caravan") then
		return true
	else
		return false
	end
end

function IsHero(unit_type)
	if (string.find(unit_type, "upgrade-") == nil and GetUnitTypeData(unit_type, "Hero")) then
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
		province.Owner = faction.Name
		SetProvinceOwner(province.Name, faction.Civilization, faction.Name)
	else
		province.Owner = ""
		SetProvinceOwner(province.Name, "", "")
	end
end

function GrandStrategyDialog(title, message)
	GrandStrategyGamePaused = true
	local menu = WarGrandStrategyGameMenu(panel(1))
	menu:setDrawMenusUnder(true)

	menu:addLabel(title, 128, 11)

	local l = MultiLineLabel()
	l:setFont(Fonts["game"])
	l:setSize(228, 256)
	l:setLineWidth(228)
	menu:add(l, 14, 35)
	l:setCaption(message)
	menu:addFullButton("~!OK", "o", 16, 248 - (36 * 0),
		function()
			GrandStrategyGamePaused = false
			menu:stop()
		end
	)
	menu:addButton("", "return", -1, -1, -- allow enter to be used as a way to close the battle dialog
		function()
			GrandStrategyGamePaused = false
			menu:stop()
		end,
		{0, 0}
	)
	menu:run()
end

function GetUnitTypeNamePluralForm(unit_type)
	local unit_type_name = GetUnitTypeName(unit_type) .. "s"
	if (string.find(unit_type_name, "mans") ~= nil) then -- correct plural for "man" to "men"
		unit_type_name = string.sub(unit_type_name, 0, -4) .. "men"
	end
	if (string.find(unit_type_name, "Thiefs") ~= nil) then -- correct plural for "thief" to "thieves"
		unit_type_name = string.sub(unit_type_name, 0, -7) .. "Thieves"
	end
	if (string.find(unit_type_name, "Mercenarys") ~= nil) then -- correct plural for "mercenary" to "mercenaries"
		unit_type_name = string.sub(unit_type_name, 0, -11) .. "Mercenaries"
	end	
	
	return unit_type_name
end
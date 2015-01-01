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
GrandStrategyEventMap = false
GrandStrategyBattle = false
EventFaction = nil
GrandStrategyWorld = ""

function RunGrandStrategyGameSetupMenu()
	WorldMapOffsetX = 0
	WorldMapOffsetY = 0
	GrandStrategyYear = 25
	GrandStrategyFaction = nil
	SelectedProvince = nil
	SelectedHero = nil
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

	local world_list = {"Earth", "Nidavellir"}
	local world
	local date_list = {
		"3000 BC", -- begin of the last wave of Indo-European migrations, which lasted until 2800 BC
		"25 AD", -- begin of The Scepter of Fire
		"40 AD", -- end of The Scepter of Fire
		"406 AD", -- Sueves, Alans and Vandals attack Gaul (which eventually would lead them to Iberia)
		"550 AD" -- begin of The Hammer of Thursagan
	}
	local date
	local faction
	local faction_list = {}

	GrandStrategy = true

	menu:addLabel("~<Grand Strategy Game Setup~>", offx + 640/2 + 12, offy + 72)

	menu:addFullButton("~!Start Game", "s", offx + 208, offy + 212 + (36 * 5),
		function()
			GrandStrategyYear = tonumber(string.sub(date_list[date:getSelected() + 1], 0, -3))
			if (string.find(date_list[date:getSelected() + 1], "BC") ~= nil) then
				GrandStrategyYear = GrandStrategyYear * -1
			end
			Load("scripts/" .. string.lower(world_list[world:getSelected() + 1]) .. "_world_map.lua");
			GrandStrategyFaction = GetFactionFromName(faction_list[faction:getSelected() + 1])
			SetPlayerData(GetThisPlayer(), "RaceName", GrandStrategyFaction.Civilization)
			InterfaceState = "Province"
			CalculateTileProvinces()
			CalculateProvinceBorderTiles()

			-- initialize commodity variables
			GrandStrategyCommodities = nil
			GrandStrategyCommodities = {}
			GrandStrategyCommodities["Lumber"] = {}
			GrandStrategyCommodities.Lumber["Price"] = 100

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
				if (Factions[key].Technologies == nil) then
					Factions[key]["Technologies"] = {}
				end
				for i, unitName in ipairs(Units) do
					if (string.find(unitName, "upgrade-") ~= nil) then
						if (Factions[key].Technologies[string.gsub(unitName, "-", "_")] == nil) then
							Factions[key].Technologies[string.gsub(unitName, "-", "_")] = 0
						end
					end
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

				-- initialize the trade variables
				if (Factions[key].Trade == nil) then
					Factions[key]["Trade"] = {}
				end
				if (Factions[key].Trade.Lumber == nil) then
					Factions[key].Trade["Lumber"] = 0
				end
				
				-- provinces owned by the faction, to not have to loop through the provinces each time
				if (Factions[key].OwnedProvinces == nil) then
					Factions[key]["OwnedProvinces"] = {}
				end
			end
			
			-- initialize province variables
			for key, value in pairs(WorldMapProvinces) do
				if (WorldMapProvinces[key].Owner == nil) then
					WorldMapProvinces[key]["Owner"] = ""
				end
				-- set the province into its owner's owned provinces list
				if (WorldMapProvinces[key].Owner ~= "") then
					table.insert(GetFactionFromName(WorldMapProvinces[key].Owner).OwnedProvinces, key)
				end

				if (WorldMapProvinces[key].Civilization == nil) then
					-- if province has no civilization/culture defined, then make it that of its owner, if any
					if (WorldMapProvinces[key].Owner ~= "") then
						WorldMapProvinces[key]["Civilization"] = GetFactionFromName(WorldMapProvinces[key].Owner).Civilization
					else
						WorldMapProvinces[key]["Civilization"] = ""
					end
				end
				
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
				for i, unitName in ipairs(Units) do
					if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0) then
						if (WorldMapProvinces[key].Units[string.gsub(unitName, "-", "_")] == nil) then
							WorldMapProvinces[key].Units[string.gsub(unitName, "-", "_")] = 0
						end
						if (WorldMapProvinces[key].UnderConstructionUnits[string.gsub(unitName, "-", "_")] == nil) then
							WorldMapProvinces[key].UnderConstructionUnits[string.gsub(unitName, "-", "_")] = 0
						end
						if (WorldMapProvinces[key].MovingUnits[string.gsub(unitName, "-", "_")] == nil) then
							WorldMapProvinces[key].MovingUnits[string.gsub(unitName, "-", "_")] = 0
						end
						if (WorldMapProvinces[key].AttackingUnits[string.gsub(unitName, "-", "_")] == nil) then
							WorldMapProvinces[key].AttackingUnits[string.gsub(unitName, "-", "_")] = 0
						end
					end
				end
				
				if (WorldMapProvinces[key].Heroes == nil) then
					WorldMapProvinces[key]["Heroes"] = {}
				end
				for i, unitName in ipairs(Units) do
					if (string.find(unitName, "upgrade-") == nil and string.find(unitName, "hero") ~= nil) then
						if (WorldMapProvinces[key].Heroes[string.gsub(unitName, "-", "_")] == nil) then
							WorldMapProvinces[key].Heroes[string.gsub(unitName, "-", "_")] = 0 -- 0 = hero isn't here, 1 = hero is moving here, 2 = hero is here
						end
					end
				end
				
				-- load heroes' upgraded versions, if those have been acquired
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
				
				if (WorldMapProvinces[key].AttackedBy == nil) then
					WorldMapProvinces[key]["AttackedBy"] = ""
				end
				if (WorldMapProvinces[key].SettlementBuildings == nil) then
					WorldMapProvinces[key]["SettlementBuildings"] = {}
				end
				for i, unitName in ipairs(Units) do
					if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") and GetUnitTypeData(unitName, "Class") ~= "farm" and GetUnitTypeData(unitName, "Class") ~= "watch-tower" and GetUnitTypeData(unitName, "Class") ~= "guard-tower") then
						if (WorldMapProvinces[key].SettlementBuildings[string.gsub(unitName, "-", "_")] == nil) then
							WorldMapProvinces[key].SettlementBuildings[string.gsub(unitName, "-", "_")] = 0 -- 0 = not built, 1 = under construction, 2 = built
						end
					end
				end
				if (GrandStrategyFaction ~= nil and WorldMapProvinces[key].Owner == GrandStrategyFaction.Name) then
					CenterMapOnTile(WorldMapProvinces[key].SettlementLocation[1], WorldMapProvinces[key].SettlementLocation[2])
				end
			end

			SelectedUnits = {}
			for i, unitName in ipairs(Units) do
				if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0) then
					SelectedUnits[string.gsub(unitName, "-", "_")] = 0
				end
			end

			local RandomNumber = 0
			for x=0,table.getn(WorldMapTiles[1]) - 1 do
				for y=0,table.getn(WorldMapTiles) - 1 do
					if (GetWorldMapTile(x, y) == "ScFr") then -- add lumber resource location to forest tiles
						if (TileHasResource(x, y, "Lumber") == false) then
							table.insert(WorldMapResources.Lumber, {x, y})
						end
					elseif (GetWorldMapTile(x, y) == "Mntn") then -- implement variations for mountain tiles
						RandomNumber = SyncRand(1) + 1
						WorldMapTiles[y+1][x+1] = "Mntn" .. RandomNumber
					elseif (GetWorldMapTile(x, y) == "Watr") then -- implement variations for water tiles
						RandomNumber = SyncRand(3) + 1
						WorldMapTiles[y+1][x+1] = "Watr" .. RandomNumber
					end
				end
			end

			CalculateFactionIncomes()
			CalculateFactionUpkeeps()
			
			RunGrandStrategyGame()
			menu:stop()
		end)
	menu:addFullButton("~!Cancel Game", "c", offx + 208, offy + 212 + (36 * 6),
		function()
			menu:stop();
			ClearGrandStrategyVariables()
			SetPlayerData(GetThisPlayer(), "RaceName", "gnome")
		end)

	menu:addLabel("~<World:~>", offx + 40, offy + (10 + 120) - 20, Fonts["game"], false)
	world = menu:addDropDown(world_list, offx + 40, offy + 10 + 120,
		function(dd) DateChanged() end)
	world:setSize(152, 20)

	menu:addLabel("~<Date:~>", offx + 220, offy + (10 + 120) - 20, Fonts["game"], false)
	date = menu:addDropDown(date_list, offx + 220, offy + 10 + 120,
		function(dd) DateChanged() end)
	date:setSize(152, 20)

	menu:addLabel("~<Faction:~>", offx + 640 - 224 - 16, offy + (10 + 120) - 20, Fonts["game"], false)
	faction = menu:addDropDown(faction_list, offx + 640 - 224 - 16, offy + 10 + 120,
		function(dd) end)
	faction:setSize(152, 20)

	function DateChanged()
		GrandStrategyWorld = world_list[world:getSelected() + 1]
		GrandStrategyYear = tonumber(string.sub(date_list[date:getSelected() + 1], 0, -3))
		if (string.find(date_list[date:getSelected() + 1], "BC") ~= nil) then
			GrandStrategyYear = GrandStrategyYear * -1
		end
		Load("scripts/" .. string.lower(world_list[world:getSelected() + 1]) .. "_world_map.lua");

		faction_list = {}
		for key, value in pairsByKeys(Factions) do
			if (GetFactionProvinceCountPreGame(Factions[key].Name) > 0 and Factions[key].Civilization ~= "gnome" and Factions[key].Civilization ~= "goblin") then -- Gnomes and goblins aren't playable yet
				table.insert(faction_list, Factions[key].Name)
			end
		end
--		table.insert(faction_list, "Rugnur (Hero)") -- have to update this to make it more dynamic later
		faction:setList(faction_list)
		faction:setSize(152, 20)
		faction:setSelected(0)
	end

	DateChanged()

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
	-- AI moves
	for key, value in pairs(Factions) do
		if (Factions[key] ~= GrandStrategyFaction and GetFactionProvinceCount(Factions[key]) > 0) then
			AIDoTurn(Factions[key])
		end
	end

	-- collect resources and perform trade
	local player_trade_preferences = {}
	if (GrandStrategyFaction ~= nil) then
		player_trade_preferences["Lumber"] = GrandStrategyFaction.Trade.Lumber
	end

	for key, value in pairs(Factions) do
		if (GetFactionProvinceCount(Factions[key]) > 0) then
			Factions[key].Gold = Factions[key].Gold + Factions[key].Income.Gold
			Factions[key].Commodities.Lumber = Factions[key].Commodities.Lumber + Factions[key].Income.Lumber

			if (Factions[key].Trade.Lumber < 0) then -- if wants to import lumber
				for second_key, second_value in pairs(Factions) do
					if (Factions[second_key].Trade.Lumber > 0) then -- if second faction wants to export lumber
						PerformTrade(Factions[key], Factions[second_key], "Lumber")
					end
				end
			elseif (Factions[key].Trade.Lumber > 0) then -- if wants to export lumber
				for second_key, second_value in pairs(Factions) do
					if (Factions[second_key].Trade.Lumber < 0) then -- if second faction wants to import lumber
						PerformTrade(Factions[second_key], Factions[key], "Lumber")
					end
				end
			end
		end
	end
	
	-- keep human player's trading preferences
	if (GrandStrategyFaction ~= nil) then
		if (player_trade_preferences.Lumber > 0 and GrandStrategyFaction.Commodities.Lumber < player_trade_preferences.Lumber) then
			player_trade_preferences.Lumber = GrandStrategyFaction.Commodities.Lumber
		elseif (player_trade_preferences.Lumber < 0 and GrandStrategyFaction.Gold < 0) then
			player_trade_preferences.Lumber = 0
		elseif (player_trade_preferences.Lumber < 0 and GrandStrategyFaction.Gold < player_trade_preferences.Lumber * -1 * GetCommodityPrice("Lumber") / 100) then
			player_trade_preferences.Lumber = math.floor(GrandStrategyFaction.Gold / GetCommodityPrice("Lumber") * 100) * -1
		end
		GrandStrategyFaction.Trade.Lumber = player_trade_preferences.Lumber
	end

	-- check whether offers or bids have been greater, and change the commodity's price accordingly (disabled for now since the trade system isn't robust enough yet to not make lumber become worthless over time)
--	local remaining_wanted_trade_lumber = 0
--	for key, value in pairs(Factions) do
--		remaining_wanted_trade_lumber = remaining_wanted_trade_lumber + Factions[key].Trade.Lumber
--	end
--	
--	if (remaining_wanted_trade_lumber > 0 and GrandStrategyCommodities.Lumber.Price > 1) then -- more offers than bids
--		GrandStrategyCommodities.Lumber.Price = GrandStrategyCommodities.Lumber.Price - 1
--	elseif (remaining_wanted_trade_lumber < 0) then -- more bids than offers
--		GrandStrategyCommodities.Lumber.Price = GrandStrategyCommodities.Lumber.Price + 1
--	end

	for key, value in pairs(WorldMapProvinces) do
		local province_owner = GetFactionFromName(WorldMapProvinces[key].Owner)
	
		-- construct buildings, train units and move heroes
		for i, unitName in ipairs(Units) do
			if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") and GetUnitTypeData(unitName, "Class") ~= "farm" and GetUnitTypeData(unitName, "Class") ~= "watch-tower" and GetUnitTypeData(unitName, "Class") ~= "guard-tower") then
				if (WorldMapProvinces[key].SettlementBuildings[string.gsub(unitName, "-", "_")] == 1) then
					WorldMapProvinces[key].SettlementBuildings[string.gsub(unitName, "-", "_")] = 2
					if (GetUnitTypeData(unitName, "Class") == "town-hall" or GetUnitTypeData(unitName, "Class") == "lumber-mill") then
						CalculateFactionIncomes()
					end
				end
			end
		end
		for i, unitName in ipairs(Units) do
			if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0) then
				WorldMapProvinces[key].Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces[key].Units[string.gsub(unitName, "-", "_")] + WorldMapProvinces[key].UnderConstructionUnits[string.gsub(unitName, "-", "_")] + WorldMapProvinces[key].MovingUnits[string.gsub(unitName, "-", "_")]
				WorldMapProvinces[key].UnderConstructionUnits[string.gsub(unitName, "-", "_")] = 0
				WorldMapProvinces[key].MovingUnits[string.gsub(unitName, "-", "_")] = 0
			end
		end
		for i, unitName in ipairs(Units) do
			if (string.find(unitName, "upgrade-") == nil and string.find(unitName, "hero") ~= nil) then
				if (WorldMapProvinces[key].Heroes[string.gsub(unitName, "-", "_")] == 1) then
					WorldMapProvinces[key].Heroes[string.gsub(unitName, "-", "_")] = 2
				end
			end
		end
	end
	-- research technologies
	for key, value in pairs(Factions) do
		for i, unitName in ipairs(Units) do
			if (string.find(unitName, "upgrade-") ~= nil) then
				if (Factions[key].Technologies[string.gsub(unitName, "-", "_")] == 1) then
					Factions[key].Technologies[string.gsub(unitName, "-", "_")] = 2
				end
			end
		end
	end

	local attack_happened = false

	for key, value in pairs(WorldMapProvinces) do
		-- effect attacks
		if (WorldMapProvinces[key].AttackedBy ~= "") then
			AttackProvince(WorldMapProvinces[key], WorldMapProvinces[key].AttackedBy)
			WorldMapProvinces[key].AttackedBy = ""
			attack_happened = true
		end
	end

	CalculateFactionUpkeeps()

	for key, value in pairs(Factions) do
		Factions[key].Gold = Factions[key].Gold - Factions[key].Upkeep
	end

	local disbanding_happened = false
	-- disband units if gold is on the negative and upkeep is higher than income
	for key, value in pairs(Factions) do
		if (Factions[key].Gold < 0 and Factions[key].Upkeep > Factions[key].Income.Gold) then
			disbanding_happened = true
			local disband_quota = Factions[key].Upkeep - Factions[key].Income.Gold
			for province_i, province_key in ipairs(Factions[key].OwnedProvinces) do
				for i, unitName in ipairs(Units) do
					if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0) then
						if (WorldMapProvinces[province_key].Units[string.gsub(unitName, "-", "_")] > 0) then
							if (disband_quota > WorldMapProvinces[province_key].Units[string.gsub(unitName, "-", "_")] * GetUnitTypeUpkeep(unitName)) then
								disband_quota = disband_quota - WorldMapProvinces[province_key].Units[string.gsub(unitName, "-", "_")] * GetUnitTypeUpkeep(unitName)
								WorldMapProvinces[province_key].Units[string.gsub(unitName, "-", "_")] = 0
							else
								WorldMapProvinces[province_key].Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces[province_key].Units[string.gsub(unitName, "-", "_")] - math.floor(disband_quota / GetUnitTypeUpkeep(unitName))
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

	DoEvents()

	GrandStrategyYear = GrandStrategyYear + 1;

--	if (math.fmod(GrandStrategyYear, 10) == 0) then -- every ten turns, end and restart the menu, to increase performance
--		GrandStrategyMenu:stop();
--		RunGrandStrategyGame()
--	else
		if (attack_happened) then
			DrawMinimap()
		end

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
				local menu = WarGrandStrategyGameMenu(panel(1))

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
						menu:stop()
					end)

				menu:run()
			elseif (GrandStrategyFaction.Diplomacy[key] == "Peace Offer Rejected") then
				local menu = WarGrandStrategyGameMenu(panel(1))

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
						menu:stop()
					end)

				menu:run()
			end
		end
	end

	if (GrandStrategyFaction ~= nil and GetFactionProvinceCount(GrandStrategyFaction) == 0) then -- if player lost all provinces, end game
		GrandStrategyMenu:stop()
		ClearGrandStrategyVariables()
		SetPlayerData(GetThisPlayer(), "RaceName", "gnome")
	end
end

function AttackProvince(province, faction)
	MapAttacker = nil
	MapDefender = nil
	GetMapInfo(province.Map)
	Attacker = faction
	local empty_province = false
	if (province.Owner ~= "") then
		Defender = province.Owner
	else
		Defender = province.Name
		empty_province = true
	end
	AttackingUnits = province.AttackingUnits
	AttackedProvince = province
	
	local victorious_player = ""

	if (GrandStrategyFaction ~= nil and (Attacker == GrandStrategyFaction.Name or Defender == GrandStrategyFaction.Name)) then -- if the human player is involved, run a RTS battle map, and if not autoresolve the battle
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
	else
		if (GetMilitaryScore(province, true, true) > GetMilitaryScore(province, false, true)) then -- if military score is the same, then defenders win
			victorious_player = Attacker
			for i, unitName in ipairs(Units) do
				if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0 and string.find(unitName, "hero") == nil) then
					AttackingUnits[string.gsub(unitName, "-", "_")] = AttackingUnits[string.gsub(unitName, "-", "_")] - math.floor(AttackingUnits[string.gsub(unitName, "-", "_")] * GetMilitaryScore(province, false, true) / GetMilitaryScore(province, true, true)) -- formula for calculating units belonging to the victorious player that were killed
				elseif (string.find(unitName, "upgrade-") == nil and string.find(unitName, "hero") ~= nil) then -- kill off defending heroes if the attacking player was the victorious one
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
				if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0 and string.find(unitName, "hero") == nil) then
					AttackingUnits[string.gsub(unitName, "-", "_")] = province.Units[string.gsub(unitName, "-", "_")] - math.floor(province.Units[string.gsub(unitName, "-", "_")] * GetMilitaryScore(province, true, true) / GetMilitaryScore(province, false, true))
				elseif (string.find(unitName, "upgrade-") == nil and string.find(unitName, "hero") ~= nil) then -- kill off attacking heroes if the defending player was the victorious one
					if (AttackedProvince.Heroes[string.gsub(unitName, "-", "_")] == 3) then
						AttackedProvince.Heroes[string.gsub(unitName, "-", "_")] = 0
					end
				end
			end
		end
	end

	if (victorious_player == Attacker) then
		AcquireProvince(province, victorious_player)
		if (GrandStrategyFaction ~= nil and Attacker == GrandStrategyFaction.Name and SelectedProvince == province) then -- this is here to make it so the right interface state happens if the province is selected (a conquered province that is selected will have the interface state switched from diplomacy to province)
			InterfaceState = "Province"
		end
	end
				
	for i, unitName in ipairs(Units) do
		if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0) then
			province.Units[string.gsub(unitName, "-", "_")] = AttackingUnits[string.gsub(unitName, "-", "_")]
		end
	end
	for i, unitName in ipairs(Units) do
		if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0) then
			province.AttackingUnits[string.gsub(unitName, "-", "_")] = 0
		end
	end
	if (empty_province == false and GetFactionProvinceCount(GetFactionFromName(Defender)) == 0) then
		local defender_faction_key = GetFactionKeyFromName(Defender)
		for key, value in pairs(Factions) do -- if the defender lost his last province, end wars between him and other factions
			Factions[key].Diplomacy[defender_faction_key] = "Peace"
			Factions[defender_faction_key].Diplomacy[key] = "Peace"
		end
		Factions[defender_faction_key].Trade.Lumber = 0 -- remove offers and bids from the eliminated faction
	end
	Attacker = ""
	Defender = ""
	AttackingUnits = nil
	AttackedProvince = nil
end

function AcquireProvince(province, faction)
	if (province.Owner ~= "") then
		RemoveElementFromArray(GetFactionFromName(province.Owner).OwnedProvinces, GetProvinceKeyFromName(province.Name))
	end
	province.Owner = faction
	
	if (faction ~= "") then
		table.insert(GetFactionFromName(faction).OwnedProvinces, GetProvinceKeyFromName(province.Name))
		
		if (province.Civilization == "") then -- if province has no culture, make it that of the one who acquired it
			province.Civilization = GetFactionFromName(faction).Civilization
		end
					
		-- replace existent buildings from other civilizations with buildings of own civilization
		for i, unitName in ipairs(Units) do
			if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") and GetUnitTypeData(unitName, "Class") ~= "farm" and GetUnitTypeData(unitName, "Class") ~= "watch-tower" and GetUnitTypeData(unitName, "Class") ~= "guard-tower") then
				if (province.SettlementBuildings[string.gsub(unitName, "-", "_")] == 2 and GetUnitTypeData(unitName, "Civilization") ~= GetFactionFromName(faction).Civilization) then
					province.SettlementBuildings[string.gsub(unitName, "-", "_")] = 0 -- remove building from other civilization
					for j, second_unitName in ipairs(Units) do -- if there is an equivalent building of the acquirer's civilization, create it
						if (GetUnitTypeData(second_unitName, "Civilization") == GetFactionFromName(faction).Civilization and GetUnitTypeData(second_unitName, "Class") == GetUnitTypeData(unitName, "Class")) then
							province.SettlementBuildings[string.gsub(second_unitName, "-", "_")] = 2
						end
					end
				elseif (province.SettlementBuildings[string.gsub(unitName, "-", "_")] == 1) then -- under construction buildings get canceled
					province.SettlementBuildings[string.gsub(unitName, "-", "_")] = 0
				end
			end
		end

		for i, unitName in ipairs(Units) do
			if (string.find(unitName, "upgrade-") == nil and string.find(unitName, "hero") ~= nil) then
				if (province.Heroes[string.gsub(unitName, "-", "_")] == 1) then -- if a hero is moving here, remove him
					province.Heroes[string.gsub(unitName, "-", "_")] = 0
				end
			end
		end
	end
	
	CalculateFactionIncomes()
end

function CalculateProvinceBorderTiles()
	for key, value in pairs(WorldMapProvinces) do
		WorldMapProvinces[key]["BorderTiles"] = {}
		WorldMapProvinces[key]["BorderProvinces"] = {}
		for i=1,table.getn(WorldMapProvinces[key].Tiles) do
			if (GetTileProvince(WorldMapProvinces[key].Tiles[i][1] - 1, WorldMapProvinces[key].Tiles[i][2]) ~= WorldMapProvinces[key]) then
				table.insert(WorldMapProvinces[key].BorderTiles, {WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2]})
			elseif (GetTileProvince(WorldMapProvinces[key].Tiles[i][1] + 1, WorldMapProvinces[key].Tiles[i][2]) ~= WorldMapProvinces[key]) then
				table.insert(WorldMapProvinces[key].BorderTiles, {WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2]})
			elseif (GetTileProvince(WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2] - 1) ~= WorldMapProvinces[key]) then
				table.insert(WorldMapProvinces[key].BorderTiles, {WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2]})
			elseif (GetTileProvince(WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2] + 1) ~= WorldMapProvinces[key]) then
				table.insert(WorldMapProvinces[key].BorderTiles, {WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2]})
			elseif (GetTileProvince(WorldMapProvinces[key].Tiles[i][1] - 1, WorldMapProvinces[key].Tiles[i][2] - 1) ~= WorldMapProvinces[key]) then
				table.insert(WorldMapProvinces[key].BorderTiles, {WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2]})
			elseif (GetTileProvince(WorldMapProvinces[key].Tiles[i][1] + 1, WorldMapProvinces[key].Tiles[i][2] - 1) ~= WorldMapProvinces[key]) then
				table.insert(WorldMapProvinces[key].BorderTiles, {WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2]})
			elseif (GetTileProvince(WorldMapProvinces[key].Tiles[i][1] - 1, WorldMapProvinces[key].Tiles[i][2] + 1) ~= WorldMapProvinces[key]) then
				table.insert(WorldMapProvinces[key].BorderTiles, {WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2]})
			elseif (GetTileProvince(WorldMapProvinces[key].Tiles[i][1] + 1, WorldMapProvinces[key].Tiles[i][2] + 1) ~= WorldMapProvinces[key]) then
				table.insert(WorldMapProvinces[key].BorderTiles, {WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2]})
			end

			if (GetTileProvince(WorldMapProvinces[key].Tiles[i][1] - 1, WorldMapProvinces[key].Tiles[i][2]) ~= WorldMapProvinces[key]) then
				if (GetTileProvince(WorldMapProvinces[key].Tiles[i][1] - 1, WorldMapProvinces[key].Tiles[i][2]) ~= nil and GetArrayIncludes(WorldMapProvinces[key].BorderProvinces, GetTileProvince(WorldMapProvinces[key].Tiles[i][1] - 1, WorldMapProvinces[key].Tiles[i][2]).Name) == false) then
					table.insert(WorldMapProvinces[key].BorderProvinces, GetTileProvince(WorldMapProvinces[key].Tiles[i][1] - 1, WorldMapProvinces[key].Tiles[i][2]).Name)
				end
			end
			if (GetTileProvince(WorldMapProvinces[key].Tiles[i][1] + 1, WorldMapProvinces[key].Tiles[i][2]) ~= WorldMapProvinces[key]) then
				if (GetTileProvince(WorldMapProvinces[key].Tiles[i][1] + 1, WorldMapProvinces[key].Tiles[i][2]) ~= nil and GetArrayIncludes(WorldMapProvinces[key].BorderProvinces, GetTileProvince(WorldMapProvinces[key].Tiles[i][1] + 1, WorldMapProvinces[key].Tiles[i][2]).Name) == false) then
					table.insert(WorldMapProvinces[key].BorderProvinces, GetTileProvince(WorldMapProvinces[key].Tiles[i][1] + 1, WorldMapProvinces[key].Tiles[i][2]).Name)
				end
			end
			if (GetTileProvince(WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2] - 1) ~= WorldMapProvinces[key]) then
				if (GetTileProvince(WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2] - 1) ~= nil and GetArrayIncludes(WorldMapProvinces[key].BorderProvinces, GetTileProvince(WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2] - 1).Name) == false) then
					table.insert(WorldMapProvinces[key].BorderProvinces, GetTileProvince(WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2] - 1).Name)
				end
			end
			if (GetTileProvince(WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2] + 1) ~= WorldMapProvinces[key]) then
				if (GetTileProvince(WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2] + 1) ~= nil and GetArrayIncludes(WorldMapProvinces[key].BorderProvinces, GetTileProvince(WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2] + 1).Name) == false) then
					table.insert(WorldMapProvinces[key].BorderProvinces, GetTileProvince(WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2] + 1).Name)
				end
			end
		end
	end

	for key, value in pairs(WorldMapWaterProvinces) do
		WorldMapWaterProvinces[key]["BorderTiles"] = {}
		WorldMapWaterProvinces[key]["BorderProvinces"] = {}
		for i=1,table.getn(WorldMapWaterProvinces[key].Tiles) do
			if (GetTileProvince(WorldMapWaterProvinces[key].Tiles[i][1] - 1, WorldMapWaterProvinces[key].Tiles[i][2]) ~= WorldMapWaterProvinces[key]) then
				table.insert(WorldMapWaterProvinces[key].BorderTiles, {WorldMapWaterProvinces[key].Tiles[i][1], WorldMapWaterProvinces[key].Tiles[i][2]})
			elseif (GetTileProvince(WorldMapWaterProvinces[key].Tiles[i][1] + 1, WorldMapWaterProvinces[key].Tiles[i][2]) ~= WorldMapWaterProvinces[key]) then
				table.insert(WorldMapWaterProvinces[key].BorderTiles, {WorldMapWaterProvinces[key].Tiles[i][1], WorldMapWaterProvinces[key].Tiles[i][2]})
			elseif (GetTileProvince(WorldMapWaterProvinces[key].Tiles[i][1], WorldMapWaterProvinces[key].Tiles[i][2] - 1) ~= WorldMapWaterProvinces[key]) then
				table.insert(WorldMapWaterProvinces[key].BorderTiles, {WorldMapWaterProvinces[key].Tiles[i][1], WorldMapWaterProvinces[key].Tiles[i][2]})
			elseif (GetTileProvince(WorldMapWaterProvinces[key].Tiles[i][1], WorldMapWaterProvinces[key].Tiles[i][2] + 1) ~= WorldMapWaterProvinces[key]) then
				table.insert(WorldMapWaterProvinces[key].BorderTiles, {WorldMapWaterProvinces[key].Tiles[i][1], WorldMapWaterProvinces[key].Tiles[i][2]})
			end

			if (GetTileProvince(WorldMapWaterProvinces[key].Tiles[i][1] - 1, WorldMapWaterProvinces[key].Tiles[i][2]) ~= WorldMapWaterProvinces[key]) then
				if (GetTileProvince(WorldMapWaterProvinces[key].Tiles[i][1] - 1, WorldMapWaterProvinces[key].Tiles[i][2]) ~= nil and GetArrayIncludes(WorldMapWaterProvinces[key].BorderProvinces, GetTileProvince(WorldMapWaterProvinces[key].Tiles[i][1] - 1, WorldMapWaterProvinces[key].Tiles[i][2]).Name) == false) then
					table.insert(WorldMapWaterProvinces[key].BorderProvinces, GetTileProvince(WorldMapWaterProvinces[key].Tiles[i][1] - 1, WorldMapWaterProvinces[key].Tiles[i][2]).Name)
				end
			end
			if (GetTileProvince(WorldMapWaterProvinces[key].Tiles[i][1] + 1, WorldMapWaterProvinces[key].Tiles[i][2]) ~= WorldMapWaterProvinces[key]) then
				if (GetTileProvince(WorldMapWaterProvinces[key].Tiles[i][1] + 1, WorldMapWaterProvinces[key].Tiles[i][2]) ~= nil and GetArrayIncludes(WorldMapWaterProvinces[key].BorderProvinces, GetTileProvince(WorldMapWaterProvinces[key].Tiles[i][1] + 1, WorldMapWaterProvinces[key].Tiles[i][2]).Name) == false) then
					table.insert(WorldMapWaterProvinces[key].BorderProvinces, GetTileProvince(WorldMapWaterProvinces[key].Tiles[i][1] + 1, WorldMapWaterProvinces[key].Tiles[i][2]).Name)
				end
			end
			if (GetTileProvince(WorldMapWaterProvinces[key].Tiles[i][1], WorldMapWaterProvinces[key].Tiles[i][2] - 1) ~= WorldMapWaterProvinces[key]) then
				if (GetTileProvince(WorldMapWaterProvinces[key].Tiles[i][1], WorldMapWaterProvinces[key].Tiles[i][2] - 1) ~= nil and GetArrayIncludes(WorldMapWaterProvinces[key].BorderProvinces, GetTileProvince(WorldMapWaterProvinces[key].Tiles[i][1], WorldMapWaterProvinces[key].Tiles[i][2] - 1).Name) == false) then
					table.insert(WorldMapWaterProvinces[key].BorderProvinces, GetTileProvince(WorldMapWaterProvinces[key].Tiles[i][1], WorldMapWaterProvinces[key].Tiles[i][2] - 1).Name)
				end
			end
			if (GetTileProvince(WorldMapWaterProvinces[key].Tiles[i][1], WorldMapWaterProvinces[key].Tiles[i][2] + 1) ~= WorldMapWaterProvinces[key]) then
				if (GetTileProvince(WorldMapWaterProvinces[key].Tiles[i][1], WorldMapWaterProvinces[key].Tiles[i][2] + 1) ~= nil and GetArrayIncludes(WorldMapWaterProvinces[key].BorderProvinces, GetTileProvince(WorldMapWaterProvinces[key].Tiles[i][1], WorldMapWaterProvinces[key].Tiles[i][2] + 1).Name) == false) then
					table.insert(WorldMapWaterProvinces[key].BorderProvinces, GetTileProvince(WorldMapWaterProvinces[key].Tiles[i][1], WorldMapWaterProvinces[key].Tiles[i][2] + 1).Name)
				end
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

function CalculateFactionIncomes()
	for key, value in pairs(Factions) do
		Factions[key]["Income"] = nil
		Factions[key]["Income"] = {}
		Factions[key].Income["Gold"] = 0
		Factions[key].Income["Lumber"] = 0

		-- collect resources
		for i=1,table.getn(WorldMapResources.Gold) do
			if (ProvinceHasBuildingType(GetTileProvince(WorldMapResources.Gold[i][1], WorldMapResources.Gold[i][2]), "town-hall") and Factions[key].Name == GetTileProvince(WorldMapResources.Gold[i][1], WorldMapResources.Gold[i][2]).Owner) then
				Factions[key].Income.Gold = Factions[key].Income.Gold + 200
			end
		end
		for i=1,table.getn(WorldMapResources.Lumber) do
			if (ProvinceHasBuildingType(GetTileProvince(WorldMapResources.Lumber[i][1], WorldMapResources.Lumber[i][2]), "town-hall") and Factions[key].Name == GetTileProvince(WorldMapResources.Lumber[i][1], WorldMapResources.Lumber[i][2]).Owner) then
				if (ProvinceHasBuildingType(GetTileProvince(WorldMapResources.Lumber[i][1], WorldMapResources.Lumber[i][2]), "lumber-mill")) then
					Factions[key].Income.Lumber = Factions[key].Income.Lumber + 125
				else
					Factions[key].Income.Lumber = Factions[key].Income.Lumber + 100
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
			if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0) then
				if (province_owner ~= nil) then -- pay upkeep for military units
					province_owner.Upkeep = province_owner.Upkeep + WorldMapProvinces[key].Units[string.gsub(unitName, "-", "_")] * GetUnitTypeUpkeep(unitName)
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
	return Factions[string.gsub(faction, " ", "")]
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
	return nil
end

function GetProvinceKeyFromName(province_name)
	for key, value in pairs(WorldMapProvinces) do
		if (WorldMapProvinces[key].Name == province_name) then
			return key
		end
	end
	return nil
end

function GetFactionProvinceCount(faction)
	return table.getn(faction.OwnedProvinces)
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

function GetFactionBuildingTypeCount(faction, building_type)
	local building_count = 0
	for key, value in pairs(WorldMapProvinces) do
		if (WorldMapProvinces[key].Owner == faction and ProvinceHasBuildingType(WorldMapProvinces[key], building_type)) then
			building_count = building_count + 1
		end
	end
	return building_count
end

function FactionHasTechnologyType(faction, technology_type)
	for i, unitName in ipairs(Units) do
		if (string.find(unitName, "upgrade-") ~= nil) then
			if (CUpgrade:Get(unitName).Class == technology_type and faction.Technologies[string.gsub(unitName, "-", "_")] == 2) then
				return true
			end
		end
	end
	return false
end

function CanAttackProvince(province, faction, province_from)
	if (province.Owner == faction.Name or province.Owner == "Ocean" or (province.AttackedBy ~= "" and province.AttackedBy ~= faction.Name)) then -- province can only be attacked by one player per turn because of mechanical limitations of the current code
		return false
	end
	
	-- if is at peace, can't attack
	if (province.Owner ~= "" and faction.Diplomacy[GetFactionKeyFromName(province.Owner)] ~= "War") then
		return false
	end

	if (ProvinceHasBorderWith(province_from, province) == false) then
		return false
	end

	return true
end

function ProvinceHasBorderWith(province, province_to)
	for i=1,table.getn(province.BorderProvinces) do
		if (province.BorderProvinces[i] == province_to.Name) then
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

	local default_name
	if (GrandStrategyFaction ~= nil) then
		default_name = GrandStrategyFaction.Name
	end
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

			if (GrandStrategyFaction ~= nil) then
				wyr.preferences.GrandStrategySaveGames[name] = {
					SavedGrandStrategyFactionName = GrandStrategyFaction.Name,
					SavedGrandStrategyYear = GrandStrategyYear,
					SavedGrandStrategyWorld = GrandStrategyWorld,
					SavedWorldMapTiles = WorldMapTiles,
					SavedWorldMapResources = WorldMapResources,
					SavedWorldMapProvinces = WorldMapProvinces,
					SavedWorldMapWaterProvinces = WorldMapWaterProvinces,
					SavedFactions = Factions,
					SavedGrandStrategyCommodities = GrandStrategyCommodities,
					SavedGrandStrategyEvents = GrandStrategyEvents
				}
			else
				wyr.preferences.GrandStrategySaveGames[name] = {
					SavedGrandStrategyYear = GrandStrategyYear,
					SavedGrandStrategyWorld = GrandStrategyWorld,
					SavedWorldMapTiles = WorldMapTiles,
					SavedWorldMapResources = WorldMapResources,
					SavedWorldMapProvinces = WorldMapProvinces,
					SavedWorldMapWaterProvinces = WorldMapWaterProvinces,
					SavedFactions = Factions,
					SavedGrandStrategyCommodities = GrandStrategyCommodities,
					SavedGrandStrategyEvents = GrandStrategyEvents
				}
			end
			SavePreferences()
    			menu:stop()
			GrandStrategyMenu:stop();
			RunGrandStrategyGame()
		end)

	menu:addHalfButton(_("~!Cancel"), "c", 384 - ((384 - 300 - 18) / 2) - 106, 256 - 16 - 27,
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
	
	menu:addLabel(_("Load Game"), 384 / 2, 11)
	local saved_games = menu:addDropDown(saved_games_list, 384 / 2 - 152 / 2, 11 + (36 * 1.5),
		function(dd) end)
	saved_games:setSize(152, 20)

	menu:addHalfButton(_("~!Load"), "l", (384 - 300 - 18) / 2, 256 - 16 - 27,
		function()
			if (saved_games:getSelected() < 0) then
				return
			end
			GrandStrategyYear = wyr.preferences.GrandStrategySaveGames[saved_games_list[saved_games:getSelected() + 1]].SavedGrandStrategyYear
			GrandStrategyWorld = wyr.preferences.GrandStrategySaveGames[saved_games_list[saved_games:getSelected() + 1]].SavedGrandStrategyWorld
			WorldMapTiles = wyr.preferences.GrandStrategySaveGames[saved_games_list[saved_games:getSelected() + 1]].SavedWorldMapTiles
			WorldMapResources = wyr.preferences.GrandStrategySaveGames[saved_games_list[saved_games:getSelected() + 1]].SavedWorldMapResources
			WorldMapProvinces = wyr.preferences.GrandStrategySaveGames[saved_games_list[saved_games:getSelected() + 1]].SavedWorldMapProvinces
			WorldMapWaterProvinces = wyr.preferences.GrandStrategySaveGames[saved_games_list[saved_games:getSelected() + 1]].SavedWorldMapWaterProvinces
			Factions = wyr.preferences.GrandStrategySaveGames[saved_games_list[saved_games:getSelected() + 1]].SavedFactions
			if (GrandStrategyFaction ~= nil) then
				GrandStrategyFaction = GetFactionFromName(wyr.preferences.GrandStrategySaveGames[saved_games_list[saved_games:getSelected() + 1]].SavedGrandStrategyFactionName)
			end
			GrandStrategyCommodities = wyr.preferences.GrandStrategySaveGames[saved_games_list[saved_games:getSelected() + 1]].SavedGrandStrategyCommodities
			GrandStrategyEvents = wyr.preferences.GrandStrategySaveGames[saved_games_list[saved_games:getSelected() + 1]].SavedGrandStrategyEvents
			CalculateTileProvinces()

			for key, value in pairs(WorldMapProvinces) do -- center map on a province of the loaded player's faction
				if (GrandStrategyFaction ~= nil and WorldMapProvinces[key].Owner == GrandStrategyFaction.Name) then
					CenterMapOnTile(WorldMapProvinces[key].SettlementLocation[1], WorldMapProvinces[key].SettlementLocation[2])
				end
			end
			
			menu:stop()
			GrandStrategyMenu:stop();
			RunGrandStrategyGame()
		end)
	menu:addHalfButton("Delete", "", 384 - ((384 - 300 - 18) / 2) - 212, 256 - 16 - 27,
		function()
			if (saved_games:getSelected() < 0) then
				return
			end
			wyr.preferences.GrandStrategySaveGames[saved_games_list[saved_games:getSelected() + 1]] = nil
			SavePreferences()
			local saved_games_list = {}
			for key, value in pairs(wyr.preferences.GrandStrategySaveGames) do
				table.insert(saved_games_list, key)
			end
			saved_games:setList(saved_games_list)
			saved_games:setSize(152, 20)
		end)
	menu:addHalfButton(_("~!Cancel"), "c", 384 - ((384 - 300 - 18) / 2) - 106, 256 - 16 - 27,
		function()
			menu:stop()
			GrandStrategyMenu:stop();
			RunGrandStrategyGame()
		end)

	menu:run(false)
end

function DrawWorldMapTile(file, tile_x, tile_y)
	local tooltip = ""
	if (GetWorldMapTile(tile_x, tile_y) == "Plns") then
		tooltip = "Plains"
	elseif (GetWorldMapTile(tile_x, tile_y) == "DkPl") then
		tooltip = "Dark Plains"
	elseif (GetWorldMapTile(tile_x, tile_y) == "ScFr") then
		tooltip = "Scrub Forest"
	elseif (GetWorldMapTile(tile_x, tile_y) == "Hill") then
		tooltip = "Hills"
	elseif (GetWorldMapTile(tile_x, tile_y) == "Mntn") then
		tooltip = "Mountains"
	elseif (GetWorldMapTile(tile_x, tile_y) == "Watr") then
		tooltip = "Water"
	end
	if (GetTileProvince(tile_x, tile_y) ~= nil and GetTileProvince(tile_x, tile_y).SettlementLocation ~= nil and GetTileProvince(tile_x, tile_y).SettlementLocation[1] == tile_x and GetTileProvince(tile_x, tile_y).SettlementLocation[2] == tile_y and ProvinceHasBuildingType(GetTileProvince(tile_x, tile_y), "town-hall")) then
		if (GetTileProvince(tile_x, tile_y).SettlementName ~= nil) then
			tooltip = "Settlement of " .. GetTileProvince(tile_x, tile_y).SettlementName .. " (" .. tooltip .. ")"
		else
			tooltip = "Settlement (" .. tooltip .. ")"
		end
	elseif (TileHasResource(tile_x, tile_y, "Gold")) then
		tooltip = "Gold Mine (" .. tooltip .. ")"
	end
	if (GetTileProvince(tile_x, tile_y) ~= nil) then
		tooltip = tooltip .. ", " .. GetTileProvince(tile_x, tile_y).Name
		if (GetTileProvince(tile_x, tile_y).Owner ~= "" and GetTileProvince(tile_x, tile_y).Owner ~= "Ocean") then
			tooltip = tooltip .. ", " .. GetTileProvince(tile_x, tile_y).Owner
		end
	end
	tooltip = tooltip .. " (" .. tile_x .. ", " .. tile_y .. ")"

	if (GetWorldMapTile(tile_x, tile_y) ~= "" and string.find(file, "border") == nil and string.find(file, "sites") == nil) then
		if (GetWorldMapTile(tile_x, tile_y) == "Hill" or GetWorldMapTile(tile_x, tile_y) == "Mntn" or GetWorldMapTile(tile_x, tile_y) == "ScFr" or string.find(file, "north") ~= nil or string.find(file, "south") ~= nil or string.find(file, "west") ~= nil or string.find(file, "east") ~= nil) then
			local world_map_tile
			if (GrandStrategyWorld == "Nidavellir") then
				world_map_tile = CGraphic:New("tilesets/world/terrain/dark_plains.png")
			else
				world_map_tile = CGraphic:New("tilesets/world/terrain/plains.png")
			end
			world_map_tile:Load()
			OnScreenSites[table.getn(OnScreenSites) + 1] = ImageWidget(world_map_tile) -- not really a site, but it is more expedient to use this method
			GrandStrategyMenu:add(OnScreenSites[table.getn(OnScreenSites)], 176 + 64 * (tile_x - WorldMapOffsetX), 16 + 64 * (tile_y - WorldMapOffsetY))
		end

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
		OnScreenTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1]:setTooltip(tooltip)
	elseif (string.find(file, "border") ~= nil) then -- different method for border graphics
		local b
		local world_map_tile
		if (string.find(file, "national") ~= nil) then
			local playercolor
			if (GetTileProvince(tile_x, tile_y).Owner ~= "") then
				playercolor = GetFactionData(GetFactionFromName(GetTileProvince(tile_x, tile_y).Owner).Civilization, GetTileProvince(tile_x, tile_y).Owner, "Color")
			else
				playercolor = "gray"
			end
			b = PlayerColorImageButton("", playercolor)
			world_map_tile = CPlayerColorGraphic:New(file)
		else
			world_map_tile = CGraphic:New(file)
			b = ImageButton("")
		end
		world_map_tile:Load()
		OnScreenSites[table.getn(OnScreenSites) + 1] = b -- not really a site, but it is more expedient to use this method
		b:setActionCallback(
			function()
				SetSelectedProvince(GetTileProvince(tile_x, tile_y))
				DrawOnScreenTiles() -- to avoid the tile remaining selected after clicking
			end
		)
		GrandStrategyMenu:add(b, 176 + 64 * (tile_x - WorldMapOffsetX) - 10, 16 + 64 * (tile_y - WorldMapOffsetY) - 10)
		b:setNormalImage(world_map_tile)
		b:setPressedImage(world_map_tile)
		b:setDisabledImage(world_map_tile)
		b:setSize(84, 84)
		b:setBorderSize(0)
		b:setTooltip(tooltip)
	elseif (string.find(file, "sites") ~= nil) then -- different method for site graphics
		local world_map_tile
		local b
		if (string.find(file, "settlement") ~= nil) then
			world_map_tile = CPlayerColorGraphic:New(file)
			local settlement_color = ""
			if (GetTileProvince(tile_x, tile_y).Owner ~= "") then
				settlement_color = GetFactionData(GetFactionFromName(GetTileProvince(tile_x, tile_y).Owner).Civilization, GetTileProvince(tile_x, tile_y).Owner, "Color")
			else
				settlement_color = "gray"
			end
			b = PlayerColorImageButton("", settlement_color)
		else
			world_map_tile = CGraphic:New(file)
			b = ImageButton("")
		end
		world_map_tile:Load()
		OnScreenSites[table.getn(OnScreenSites) + 1] = b
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
		OnScreenSites[table.getn(OnScreenSites)]:setTooltip(tooltip)
	else -- different method for fog tiles
		local world_map_tile = CGraphic:New(file)
		world_map_tile:Load()
		OnScreenTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1] = ImageWidget(world_map_tile)
		if (tile_x == WorldMapOffsetX and tile_y == WorldMapOffsetY) then
			GrandStrategyMenu:add(OnScreenTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1], 176 + 64 * (tile_x - WorldMapOffsetX), 16 + 64 * (tile_y - WorldMapOffsetY))
		elseif (tile_x == WorldMapOffsetX) then
			GrandStrategyMenu:add(OnScreenTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1], 176 + 64 * (tile_x - WorldMapOffsetX), 16 + 64 * (tile_y - WorldMapOffsetY) - 16)
		elseif (tile_y == WorldMapOffsetY) then
			GrandStrategyMenu:add(OnScreenTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1], 176 + 64 * (tile_x - WorldMapOffsetX) - 16, 16 + 64 * (tile_y - WorldMapOffsetY))
		else
			GrandStrategyMenu:add(OnScreenTiles[tile_y - WorldMapOffsetY + 1][tile_x - WorldMapOffsetX + 1], 176 + 64 * (tile_x - WorldMapOffsetX) - 16, 16 + 64 * (tile_y - WorldMapOffsetY) - 16)
		end
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
		local minimap_tile
		local b
		if (GetTileProvince(tile_x, tile_y).Owner ~= "" and GetTileProvince(tile_x, tile_y).Owner ~= "Ocean") then
			b = PlayerColorImageButton("", GetFactionData(GetFactionFromName(GetTileProvince(tile_x, tile_y).Owner).Civilization, GetTileProvince(tile_x, tile_y).Owner, "Color"))
			minimap_tile = CPlayerColorGraphic:New(file)
		else
			b = ImageButton("")
			minimap_tile = CGraphic:New(file)
		end
		minimap_tile:Load()
		MinimapTiles[tile_y + 1][tile_x + 1] = b
		MinimapTiles[tile_y + 1][tile_x + 1]:setActionCallback(
			function()
				CenterMapOnTile(tile_x, tile_y)
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
			x = x - GrandStrategyLabels[table.getn(GrandStrategyLabels)]:getWidth() / 2
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
	UIElements[table.getn(UIElements)]:setActionCallback(callback)
	GrandStrategyMenu:add(UIElements[table.getn(UIElements)], x, y)
	UIElements[table.getn(UIElements)]:setBorderSize(0) -- Andrettin: make buttons not have the borders they previously had
	return UIElements[table.getn(UIElements)]
end

function AddGrandStrategyBuildingButton(x, y, unit_type)
	local b
	local unit_icon
	if (SelectedProvince.SettlementBuildings[string.gsub(unit_type, "-", "_")] < 2) then -- if not built, make icon gray
		b = ImageButton("")
		unit_icon = CGraphic:New(string.sub(CIcon:Get(GetUnitTypeData(unit_type, "Icon")).G:getFile(), 0, -5) .. "_grayed.png", 46, 38)
	else
		b = PlayerColorImageButton("", GetFactionData(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, "Color"))
		unit_icon = CPlayerColorGraphic:New(CIcon:Get(GetUnitTypeData(unit_type, "Icon")).G:getFile(), 46, 38)
	end
	unit_icon:Load()
	UIElements[table.getn(UIElements) + 1] = b
	UIElements[table.getn(UIElements)]:setActionCallback(
		function()
			if (SelectedProvince.SettlementBuildings[string.gsub(unit_type, "-", "_")] < 1) then
				BuildStructure(SelectedProvince, unit_type)
			elseif (SelectedProvince.SettlementBuildings[string.gsub(unit_type, "-", "_")] >= 2) then
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
	if (building_cost_tooltip ~= "") then
		building_cost_tooltip = building_cost_tooltip .. ")"
	end
	
	local building_function_tooltip = ""
	if (GetUnitTypeData(unit_type, "Class") == "town-hall") then
		building_function_tooltip = " (more province information and trading of resources)"
	elseif (GetUnitTypeData(unit_type, "Class") == "barracks") then
		building_function_tooltip = " (recruits units)"
	elseif (GetUnitTypeData(unit_type, "Class") == "lumber-mill") then
		building_function_tooltip = " (researches projectile upgrades)"
	elseif (GetUnitTypeData(unit_type, "Class") == "smithy") then
		building_function_tooltip = " (researches melee weapon, shield and siege weapon upgrades)"
	end
	if (SelectedProvince.SettlementBuildings[string.gsub(unit_type, "-", "_")] == 2) then
		UIElements[table.getn(UIElements)]:setTooltip("Use " .. GetUnitTypeName(unit_type) .. building_function_tooltip)
	elseif (SelectedProvince.SettlementBuildings[string.gsub(unit_type, "-", "_")] == 1) then
		UIElements[table.getn(UIElements)]:setTooltip(GetUnitTypeName(unit_type) .. " in " .. SelectedProvince.Name .. " under construction")
	else
		UIElements[table.getn(UIElements)]:setTooltip("Build " .. GetUnitTypeName(unit_type) .. " in " .. SelectedProvince.Name .. building_cost_tooltip)
	end
	UIElements[table.getn(UIElements)]:setFrame(true)
	
	return UIElements[table.getn(UIElements)]
end

function AddGrandStrategyUnitButton(x, y, unit_type)
	UIElements[table.getn(UIElements) + 1] = PlayerColorImageButton("", GetFactionData(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, "Color"))
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
	local unit_icon = CPlayerColorGraphic:New(CIcon:Get(GetUnitTypeData(unit_type, "Icon")).G:getFile(), 46, 38)
	unit_icon:Load()
	UIElements[table.getn(UIElements)]:setNormalImage(unit_icon)
	UIElements[table.getn(UIElements)]:setPressedImage(unit_icon)
	UIElements[table.getn(UIElements)]:setDisabledImage(unit_icon)
	UIElements[table.getn(UIElements)]:setSize(46, 38)
	UIElements[table.getn(UIElements)]:setFont(Fonts["game"])

	local veterans = 0
	local veteran_unit_type = GetCivilizationClassUnitType("veteran-" .. GetUnitTypeData(unit_type, "Class"), GetUnitTypeData(unit_type, "Civilization"))
	if (veteran_unit_type ~= nil) then
		veterans = veterans + SelectedProvince.Units[string.gsub(veteran_unit_type, "-", "_")]
	end
	local heroic_unit_type = GetCivilizationClassUnitType("heroic-" .. GetUnitTypeData(unit_type, "Class"), GetUnitTypeData(unit_type, "Civilization"))
	if (heroic_unit_type ~= nil) then
		veterans = veterans + SelectedProvince.Units[string.gsub(heroic_unit_type, "-", "_")]
	end

	UIElements[table.getn(UIElements)]:setTooltip("You have " .. SelectedProvince.Units[string.gsub(unit_type, "-", "_")] + veterans .. " " .. GetUnitTypeName(unit_type) .. " regiments in " .. SelectedProvince.Name)
	
	return UIElements[table.getn(UIElements)]
end

function AddGrandStrategyTechnologyButton(x, y, unit_type)
	local b
	local unit_icon
	
	if (GrandStrategyFaction.Technologies[string.gsub(unit_type, "-", "_")] == 1) then -- if already being researched, make icon gray
		b = ImageButton("")
		unit_icon = CGraphic:New(string.sub(CUpgrade:Get(unit_type).Icon.G:getFile(), 0, -5) .. "_grayed.png", 46, 38)
	else
		b = PlayerColorImageButton("", GetFactionData(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, "Color"))
		unit_icon = CPlayerColorGraphic:New(CUpgrade:Get(unit_type).Icon.G:getFile(), 46, 38)
	end
	unit_icon:Load()
	UIElements[table.getn(UIElements) + 1] = b
	UIElements[table.getn(UIElements)]:setActionCallback(
		function()
			if (GrandStrategyFaction.Technologies[string.gsub(unit_type, "-", "_")] < 1) then
				ResearchTechnology(SelectedProvince, unit_type)
			else
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
	if (CUpgrade:Get(unit_type).Costs[1] > 0) then -- gold cost
		if (cost_tooltip == "") then
			cost_tooltip = " (costs "
		else
			cost_tooltip = cost_tooltip .. ", "
		end
		cost_tooltip = cost_tooltip .. CUpgrade:Get(unit_type).Costs[1] .. " Gold"
	end
	if (CUpgrade:Get(unit_type).Costs[2] > 0) then -- lumber cost
		if (cost_tooltip == "") then
			cost_tooltip = " (costs "
		else
			cost_tooltip = cost_tooltip .. " and "
		end
		cost_tooltip = cost_tooltip .. CUpgrade:Get(unit_type).Costs[2] .. " Lumber"
	end
	if (cost_tooltip ~= "") then
		cost_tooltip = cost_tooltip .. ")"
	end

	if (GrandStrategyFaction.Technologies[string.gsub(unit_type, "-", "_")] == 1) then
		UIElements[table.getn(UIElements)]:setTooltip(CUpgrade:Get(unit_type).Name .. " being researched")
	else
		UIElements[table.getn(UIElements)]:setTooltip("Research " .. CUpgrade:Get(unit_type).Name .. cost_tooltip)
	end
	UIElements[table.getn(UIElements)]:setFrame(true)
	
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
		unit_icon = CPlayerColorGraphic:New(CIcon:Get(GetUnitTypeData(unit_type, "Icon")).G:getFile(), 46, 38)
	end
	unit_icon:Load()
	UIElements[table.getn(UIElements) + 1] = b
	UIElements[table.getn(UIElements)]:setActionCallback(
		function()
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
	UIElements[table.getn(UIElements)]:setFrame(true)
	
	return UIElements[table.getn(UIElements)]
end

function DrawOnScreenTiles()
	if (OnScreenTiles ~= nil) then
		for i=1,table.getn(OnScreenTiles) do
			for j=1,table.getn(OnScreenTiles[i]) do
				if (OnScreenTiles[i][j] ~= nil) then
					GrandStrategyMenu:remove(OnScreenTiles[i][j])
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
	
	for y=WorldMapOffsetY,(WorldMapOffsetY + math.floor((Video.Height - 16 - 16) / 64)) do
		OnScreenTiles[y - WorldMapOffsetY + 1] = {}
	end

	OnScreenSites = nil
	OnScreenSites = {}

	for x=WorldMapOffsetX,(WorldMapOffsetX + math.floor((Video.Width - 16 - 176) / 64)) do
		for y=WorldMapOffsetY,(WorldMapOffsetY + math.floor((Video.Height - 16 - 16) / 64)) do
			-- set map tile terrain
			local tile_image = ""
			if (GetWorldMapTile(x, y) == "Plns") then
				tile_image = "tilesets/world/terrain/plains.png"
			elseif (GetWorldMapTile(x, y) == "DkPl") then
				tile_image = "tilesets/world/terrain/dark_plains.png"
			elseif (GetWorldMapTile(x, y) == "ScFr") then
				tile_image = "tilesets/world/terrain/scrub_forest.png"
			elseif (GetWorldMapTile(x, y) == "Hill") then
				tile_image = "tilesets/world/terrain/hills.png"
			elseif (GetWorldMapTile(x, y) == "Mntn") then
				tile_image = "tilesets/world/terrain/mountains"
			elseif (GetWorldMapTile(x, y) == "Watr") then
				tile_image = "tilesets/world/terrain/ocean"
			end
			if (tile_image ~= "") then
				if (string.find(tile_image, ".png") == nil) then -- if has no file type ending, then it is because this tile type can have transitions
					if (GetWorldMapTile(x, y - 1) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x, y + 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y + 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y + 1) == GetWorldMapTile(x, y)) then
						tile_image = tile_image .. "_north_" .. string.sub(WorldMapTiles[y+1][x+1], 5)
					elseif (GetWorldMapTile(x, y + 1) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x, y - 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y - 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y - 1) == GetWorldMapTile(x, y)) then
						tile_image = tile_image .. "_south_" .. string.sub(WorldMapTiles[y+1][x+1], 5)
					elseif (GetWorldMapTile(x - 1, y) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y) == GetWorldMapTile(x, y) and GetWorldMapTile(x, y - 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x, y + 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y - 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y + 1) == GetWorldMapTile(x, y)) then
						tile_image = tile_image .. "_west_" .. string.sub(WorldMapTiles[y+1][x+1], 5)
					elseif (GetWorldMapTile(x + 1, y) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y) == GetWorldMapTile(x, y) and GetWorldMapTile(x, y - 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x, y + 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y - 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y + 1) == GetWorldMapTile(x, y)) then
						tile_image = tile_image .. "_east_" .. string.sub(WorldMapTiles[y+1][x+1], 5)
					elseif (GetWorldMapTile(x, y - 1) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x, y + 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y + 1) == GetWorldMapTile(x, y)) then
						tile_image = tile_image .. "_northwest_outer_" .. string.sub(WorldMapTiles[y+1][x+1], 5)
					elseif (GetWorldMapTile(x, y - 1) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x, y + 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y + 1) == GetWorldMapTile(x, y)) then
						tile_image = tile_image .. "_northeast_outer_" .. string.sub(WorldMapTiles[y+1][x+1], 5)
					elseif (GetWorldMapTile(x, y + 1) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y) == GetWorldMapTile(x, y) and GetWorldMapTile(x, y - 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y - 1) == GetWorldMapTile(x, y)) then
						tile_image = tile_image .. "_southwest_outer_" .. string.sub(WorldMapTiles[y+1][x+1], 5)
					elseif (GetWorldMapTile(x, y + 1) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y) == GetWorldMapTile(x, y) and GetWorldMapTile(x, y - 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y - 1) == GetWorldMapTile(x, y)) then
						tile_image = tile_image .. "_southeast_outer_" .. string.sub(WorldMapTiles[y+1][x+1], 5)
					elseif (GetWorldMapTile(x + 1, y + 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y - 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y + 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y - 1) ~= GetWorldMapTile(x, y)) then
						tile_image = tile_image .. "_northwest_inner_" .. math.min(string.sub(WorldMapTiles[y+1][x+1], 5), 2)
					elseif (GetWorldMapTile(x + 1, y + 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y - 1) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y + 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y - 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y) == GetWorldMapTile(x, y)) then
						tile_image = tile_image .. "_northeast_inner_" .. math.min(string.sub(WorldMapTiles[y+1][x+1], 5), 2)
					elseif (GetWorldMapTile(x + 1, y + 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y - 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y + 1) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y - 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y) == GetWorldMapTile(x, y)) then
						tile_image = tile_image .. "_southwest_inner_" .. math.min(string.sub(WorldMapTiles[y+1][x+1], 5), 2)
					elseif (GetWorldMapTile(x + 1, y + 1) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y - 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y + 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y - 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y) == GetWorldMapTile(x, y)) then
						tile_image = tile_image .. "_southeast_inner_" .. math.min(string.sub(WorldMapTiles[y+1][x+1], 5), 2)
					elseif (GetWorldMapTile(x, y - 1) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x, y + 1) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y) == GetWorldMapTile(x, y)) then
						tile_image = tile_image .. "_north_south_" .. string.sub(WorldMapTiles[y+1][x+1], 5)
					elseif (GetWorldMapTile(x - 1, y) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x, y - 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x, y + 1) == GetWorldMapTile(x, y)) then
						tile_image = tile_image .. "_west_east_" .. string.sub(WorldMapTiles[y+1][x+1], 5)
					elseif (GetWorldMapTile(x, y - 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x, y + 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y + 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y - 1) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y + 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y - 1) ~= GetWorldMapTile(x, y)) then
						tile_image = tile_image .. "_northwest_northeast_inner_" .. math.min(string.sub(WorldMapTiles[y+1][x+1], 5), 2)
					elseif (GetWorldMapTile(x, y - 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x, y + 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y + 1) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y - 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y + 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y - 1) ~= GetWorldMapTile(x, y)) then
						tile_image = tile_image .. "_northwest_southeast_inner_" .. math.min(string.sub(WorldMapTiles[y+1][x+1], 5), 2)
					elseif (GetWorldMapTile(x, y - 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x, y + 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y + 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y - 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y + 1) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y - 1) ~= GetWorldMapTile(x, y)) then
						tile_image = tile_image .. "_northwest_southwest_inner_" .. math.min(string.sub(WorldMapTiles[y+1][x+1], 5), 2)
					elseif (GetWorldMapTile(x, y - 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x, y + 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y + 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y - 1) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y + 1) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y - 1) == GetWorldMapTile(x, y)) then
						tile_image = tile_image .. "_northeast_southwest_inner_" .. math.min(string.sub(WorldMapTiles[y+1][x+1], 5), 2)
					elseif (GetWorldMapTile(x, y - 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x, y + 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y + 1) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y - 1) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y + 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y - 1) == GetWorldMapTile(x, y)) then
						tile_image = tile_image .. "_northeast_southeast_inner_" .. math.min(string.sub(WorldMapTiles[y+1][x+1], 5), 2)
					elseif (GetWorldMapTile(x, y - 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x, y + 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y + 1) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y - 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y + 1) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y - 1) == GetWorldMapTile(x, y)) then
						tile_image = tile_image .. "_southwest_southeast_inner_" .. math.min(string.sub(WorldMapTiles[y+1][x+1], 5), 2)
					elseif (GetWorldMapTile(x, y - 1) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x, y + 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y + 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y + 1) ~= GetWorldMapTile(x, y)) then
						tile_image = tile_image .. "_north_southeast_inner_" .. math.min(string.sub(WorldMapTiles[y+1][x+1], 5), 2)
					elseif (GetWorldMapTile(x - 1, y) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x, y - 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x, y + 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y + 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y - 1) ~= GetWorldMapTile(x, y)) then
						tile_image = tile_image .. "_west_northeast_inner_" .. math.min(string.sub(WorldMapTiles[y+1][x+1], 5), 2)
					elseif (GetWorldMapTile(x - 1, y) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x, y - 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x, y + 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y + 1) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y - 1) == GetWorldMapTile(x, y)) then
						tile_image = tile_image .. "_west_southeast_inner_" .. math.min(string.sub(WorldMapTiles[y+1][x+1], 5), 2)
					elseif (GetWorldMapTile(x + 1, y) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x, y - 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x, y + 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y - 1) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y + 1) == GetWorldMapTile(x, y)) then
						tile_image = tile_image .. "_east_northwest_inner_" .. math.min(string.sub(WorldMapTiles[y+1][x+1], 5), 2)
					elseif (GetWorldMapTile(x + 1, y) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x, y - 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x, y + 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y - 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y + 1) ~= GetWorldMapTile(x, y)) then
						tile_image = tile_image .. "_east_southwest_inner_" .. math.min(string.sub(WorldMapTiles[y+1][x+1], 5), 2)
					elseif (GetWorldMapTile(x, y + 1) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x, y - 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y - 1) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y - 1) == GetWorldMapTile(x, y)) then
						tile_image = tile_image .. "_south_northwest_inner_" .. math.min(string.sub(WorldMapTiles[y+1][x+1], 5), 2)
					elseif (GetWorldMapTile(x, y + 1) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x, y - 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y - 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y - 1) ~= GetWorldMapTile(x, y)) then
						tile_image = tile_image .. "_south_northeast_inner_" .. math.min(string.sub(WorldMapTiles[y+1][x+1], 5), 2)
					elseif (GetWorldMapTile(x, y - 1) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x, y + 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y) ~= GetWorldMapTile(x, y)) then
						tile_image = tile_image .. "_northwest_northeast_outer"
					elseif (GetWorldMapTile(x, y - 1) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y) == GetWorldMapTile(x, y) and GetWorldMapTile(x, y + 1) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y) ~= GetWorldMapTile(x, y)) then
						tile_image = tile_image .. "_northwest_southwest_outer"
					elseif (GetWorldMapTile(x, y - 1) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x, y + 1) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y) == GetWorldMapTile(x, y)) then
						tile_image = tile_image .. "_northeast_southeast_outer"
					elseif (GetWorldMapTile(x, y - 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x, y + 1) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y) ~= GetWorldMapTile(x, y)) then
						tile_image = tile_image .. "_southwest_southeast_outer"
					elseif (GetWorldMapTile(x, y - 1) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x, y + 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y + 1) ~= GetWorldMapTile(x, y)) then
						tile_image = tile_image .. "_northwest_outer_southeast_inner"
					elseif (GetWorldMapTile(x, y - 1) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x, y + 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y + 1) ~= GetWorldMapTile(x, y)) then
						tile_image = tile_image .. "_northeast_outer_southwest_inner"
					elseif (GetWorldMapTile(x - 1, y) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x, y + 1) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x, y - 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y - 1) ~= GetWorldMapTile(x, y)) then
						tile_image = tile_image .. "_southwest_outer_northeast_inner"
					elseif (GetWorldMapTile(x, y + 1) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x, y - 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y - 1) ~= GetWorldMapTile(x, y)) then
						tile_image = tile_image .. "_southeast_outer_northwest_inner"
					elseif (GetWorldMapTile(x, y - 1) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y) == GetWorldMapTile(x, y) and GetWorldMapTile(x, y + 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y + 1) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y + 1) ~= GetWorldMapTile(x, y)) then
						tile_image = tile_image .. "_north_southwest_inner_southeast_inner"
					elseif (GetWorldMapTile(x - 1, y) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x, y - 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x, y + 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y) == GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y + 1) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y - 1) ~= GetWorldMapTile(x, y)) then
						tile_image = tile_image .. "_west_northeast_inner_southeast_inner"
					elseif (GetWorldMapTile(x + 1, y) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x, y - 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x, y + 1) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y) == GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y + 1) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y - 1) ~= GetWorldMapTile(x, y)) then
						tile_image = tile_image .. "_east_northwest_inner_southwest_inner"
					elseif (GetWorldMapTile(x, y - 1) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x + 1, y) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x, y + 1) ~= GetWorldMapTile(x, y) and GetWorldMapTile(x - 1, y) ~= GetWorldMapTile(x, y)) then
						tile_image = tile_image .. "_outer"
					else
						tile_image = tile_image .. "_inner"
					end
					tile_image = tile_image .. ".png"
				end
				DrawWorldMapTile(tile_image, x, y)
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

				local northwest_tile_province = GetTileProvince(WorldMapProvinces[key].BorderTiles[i][1] - 1, WorldMapProvinces[key].BorderTiles[i][2] - 1)
				local northeast_tile_province = GetTileProvince(WorldMapProvinces[key].BorderTiles[i][1] + 1, WorldMapProvinces[key].BorderTiles[i][2] - 1)
				local southwest_tile_province = GetTileProvince(WorldMapProvinces[key].BorderTiles[i][1] - 1, WorldMapProvinces[key].BorderTiles[i][2] + 1)
				local southeast_tile_province = GetTileProvince(WorldMapProvinces[key].BorderTiles[i][1] + 1, WorldMapProvinces[key].BorderTiles[i][2] + 1)

				if (west_tile_province ~= WorldMapProvinces[key] and west_tile_province ~= nil and west_tile_province.Owner ~= "Ocean" and WorldMapProvinces[key].BorderTiles[i][1] > WorldMapOffsetX) then
					if ((west_tile_province == nil or west_tile_province.Owner ~= WorldMapProvinces[key].Owner)) then
						DrawWorldMapTile("tilesets/world/terrain/province_national_border_west.png", WorldMapProvinces[key].BorderTiles[i][1], WorldMapProvinces[key].BorderTiles[i][2])
					else
						DrawWorldMapTile("tilesets/world/terrain/province_border_west.png", WorldMapProvinces[key].BorderTiles[i][1], WorldMapProvinces[key].BorderTiles[i][2])
					end
				end
				if (east_tile_province ~= WorldMapProvinces[key] and east_tile_province ~= nil and east_tile_province.Owner ~= "Ocean") then
					if ((east_tile_province == nil or east_tile_province.Owner ~= WorldMapProvinces[key].Owner)) then
						DrawWorldMapTile("tilesets/world/terrain/province_national_border_east.png", WorldMapProvinces[key].BorderTiles[i][1], WorldMapProvinces[key].BorderTiles[i][2])
					else
						DrawWorldMapTile("tilesets/world/terrain/province_border_east.png", WorldMapProvinces[key].BorderTiles[i][1], WorldMapProvinces[key].BorderTiles[i][2])
					end
				end
				if (north_tile_province ~= WorldMapProvinces[key] and north_tile_province ~= nil and north_tile_province.Owner ~= "Ocean" and WorldMapProvinces[key].BorderTiles[i][2] > WorldMapOffsetY) then
					if ((north_tile_province == nil or north_tile_province.Owner ~= WorldMapProvinces[key].Owner)) then
						DrawWorldMapTile("tilesets/world/terrain/province_national_border_north.png", WorldMapProvinces[key].BorderTiles[i][1], WorldMapProvinces[key].BorderTiles[i][2])
					else
						DrawWorldMapTile("tilesets/world/terrain/province_border_north.png", WorldMapProvinces[key].BorderTiles[i][1], WorldMapProvinces[key].BorderTiles[i][2])
					end
				end
				if (south_tile_province ~= WorldMapProvinces[key] and south_tile_province ~= nil and south_tile_province.Owner ~= "Ocean") then
					if ((south_tile_province == nil or south_tile_province.Owner ~= WorldMapProvinces[key].Owner)) then
						DrawWorldMapTile("tilesets/world/terrain/province_national_border_south.png", WorldMapProvinces[key].BorderTiles[i][1], WorldMapProvinces[key].BorderTiles[i][2])
					else
						DrawWorldMapTile("tilesets/world/terrain/province_border_south.png", WorldMapProvinces[key].BorderTiles[i][1], WorldMapProvinces[key].BorderTiles[i][2])
					end
				end
				--[[
				if (west_tile_province ~= WorldMapProvinces[key] and (west_tile_province == nil or west_tile_province.Owner ~= "Ocean") and (north_tile_province == WorldMapProvinces[key] or (north_tile_province ~= nil and north_tile_province.Owner == "Ocean")) and (south_tile_province == WorldMapProvinces[key] or (south_tile_province ~= nil and south_tile_province.Owner == "Ocean"))) then
					if ((west_tile_province == nil or west_tile_province.Owner ~= WorldMapProvinces[key].Owner)) then
						DrawWorldMapTile("tilesets/world/terrain/province_national_border_west.png", WorldMapProvinces[key].BorderTiles[i][1], WorldMapProvinces[key].BorderTiles[i][2])
					else
						DrawWorldMapTile("tilesets/world/terrain/province_border_west.png", WorldMapProvinces[key].BorderTiles[i][1], WorldMapProvinces[key].BorderTiles[i][2])
					end
				end
				if (east_tile_province ~= WorldMapProvinces[key] and (east_tile_province == nil or east_tile_province.Owner ~= "Ocean") and (north_tile_province == WorldMapProvinces[key] or (north_tile_province ~= nil and north_tile_province.Owner == "Ocean")) and (south_tile_province == WorldMapProvinces[key] or (south_tile_province ~= nil and south_tile_province.Owner == "Ocean"))) then
					if ((east_tile_province == nil or east_tile_province.Owner ~= WorldMapProvinces[key].Owner)) then
						DrawWorldMapTile("tilesets/world/terrain/province_national_border_east.png", WorldMapProvinces[key].BorderTiles[i][1], WorldMapProvinces[key].BorderTiles[i][2])
					else
						DrawWorldMapTile("tilesets/world/terrain/province_border_east.png", WorldMapProvinces[key].BorderTiles[i][1], WorldMapProvinces[key].BorderTiles[i][2])
					end
				end
				if (north_tile_province ~= WorldMapProvinces[key] and (north_tile_province == nil or north_tile_province.Owner ~= "Ocean") and (west_tile_province == WorldMapProvinces[key] or (west_tile_province ~= nil and west_tile_province.Owner == "Ocean")) and (east_tile_province == WorldMapProvinces[key] or (east_tile_province ~= nil and east_tile_province.Owner == "Ocean"))) then
					if ((north_tile_province == nil or north_tile_province.Owner ~= WorldMapProvinces[key].Owner)) then
						DrawWorldMapTile("tilesets/world/terrain/province_national_border_north.png", WorldMapProvinces[key].BorderTiles[i][1], WorldMapProvinces[key].BorderTiles[i][2])
					else
						DrawWorldMapTile("tilesets/world/terrain/province_border_north.png", WorldMapProvinces[key].BorderTiles[i][1], WorldMapProvinces[key].BorderTiles[i][2])
					end
				end
				if (south_tile_province ~= WorldMapProvinces[key] and (south_tile_province == nil or south_tile_province.Owner ~= "Ocean") and (west_tile_province == WorldMapProvinces[key] or (west_tile_province ~= nil and west_tile_province.Owner == "Ocean")) and (east_tile_province == WorldMapProvinces[key] or (east_tile_province ~= nil and east_tile_province.Owner == "Ocean"))) then
					if ((south_tile_province == nil or south_tile_province.Owner ~= WorldMapProvinces[key].Owner)) then
						DrawWorldMapTile("tilesets/world/terrain/province_national_border_south.png", WorldMapProvinces[key].BorderTiles[i][1], WorldMapProvinces[key].BorderTiles[i][2])
					else
						DrawWorldMapTile("tilesets/world/terrain/province_border_south.png", WorldMapProvinces[key].BorderTiles[i][1], WorldMapProvinces[key].BorderTiles[i][2])
					end
				end
				if (west_tile_province ~= WorldMapProvinces[key] and (west_tile_province == nil or west_tile_province.Owner ~= "Ocean") and north_tile_province ~= WorldMapProvinces[key] and (north_tile_province == nil or north_tile_province.Owner ~= "Ocean")) then
					if ((west_tile_province == nil or west_tile_province.Owner ~= WorldMapProvinces[key].Owner) and (north_tile_province == nil or north_tile_province.Owner ~= WorldMapProvinces[key].Owner)) then
						DrawWorldMapTile("tilesets/world/terrain/province_national_border_northwest_outer.png", WorldMapProvinces[key].BorderTiles[i][1], WorldMapProvinces[key].BorderTiles[i][2])
					else
						DrawWorldMapTile("tilesets/world/terrain/province_border_northwest_outer.png", WorldMapProvinces[key].BorderTiles[i][1], WorldMapProvinces[key].BorderTiles[i][2])
					end
				end
				if (east_tile_province ~= WorldMapProvinces[key] and (east_tile_province == nil or east_tile_province.Owner ~= "Ocean") and north_tile_province ~= WorldMapProvinces[key] and (north_tile_province == nil or north_tile_province.Owner ~= "Ocean")) then
					if ((east_tile_province == nil or east_tile_province.Owner ~= WorldMapProvinces[key].Owner) and (north_tile_province == nil or north_tile_province.Owner ~= WorldMapProvinces[key].Owner)) then
						DrawWorldMapTile("tilesets/world/terrain/province_national_border_northeast_outer.png", WorldMapProvinces[key].BorderTiles[i][1], WorldMapProvinces[key].BorderTiles[i][2])
					else
						DrawWorldMapTile("tilesets/world/terrain/province_border_northeast_outer.png", WorldMapProvinces[key].BorderTiles[i][1], WorldMapProvinces[key].BorderTiles[i][2])
					end
				end
				if (west_tile_province ~= WorldMapProvinces[key] and (west_tile_province == nil or west_tile_province.Owner ~= "Ocean") and south_tile_province ~= WorldMapProvinces[key] and (south_tile_province == nil or south_tile_province.Owner ~= "Ocean")) then
					if ((west_tile_province == nil or west_tile_province.Owner ~= WorldMapProvinces[key].Owner) and (south_tile_province == nil or south_tile_province.Owner ~= WorldMapProvinces[key].Owner)) then
						DrawWorldMapTile("tilesets/world/terrain/province_national_border_southwest_outer.png", WorldMapProvinces[key].BorderTiles[i][1], WorldMapProvinces[key].BorderTiles[i][2])
					else
						DrawWorldMapTile("tilesets/world/terrain/province_border_southwest_outer.png", WorldMapProvinces[key].BorderTiles[i][1], WorldMapProvinces[key].BorderTiles[i][2])
					end
				end
				if (east_tile_province ~= WorldMapProvinces[key] and (east_tile_province == nil or east_tile_province.Owner ~= "Ocean") and south_tile_province ~= WorldMapProvinces[key] and (south_tile_province == nil or south_tile_province.Owner ~= "Ocean")) then
					if ((east_tile_province == nil or east_tile_province.Owner ~= WorldMapProvinces[key].Owner) and (south_tile_province == nil or south_tile_province.Owner ~= WorldMapProvinces[key].Owner)) then
						DrawWorldMapTile("tilesets/world/terrain/province_national_border_southeast_outer.png", WorldMapProvinces[key].BorderTiles[i][1], WorldMapProvinces[key].BorderTiles[i][2])
					else
						DrawWorldMapTile("tilesets/world/terrain/province_border_southeast_outer.png", WorldMapProvinces[key].BorderTiles[i][1], WorldMapProvinces[key].BorderTiles[i][2])
					end
				end
				--]]
				if (northwest_tile_province ~= WorldMapProvinces[key] and northwest_tile_province ~= nil and northwest_tile_province.Owner ~= "Ocean" and (north_tile_province == WorldMapProvinces[key] or (north_tile_province ~= nil and north_tile_province.Owner == "Ocean")) and (west_tile_province == WorldMapProvinces[key] or (west_tile_province ~= nil and west_tile_province.Owner == "Ocean")) and WorldMapProvinces[key].BorderTiles[i][1] > WorldMapOffsetX and WorldMapProvinces[key].BorderTiles[i][2] > WorldMapOffsetY) then
					if ((northwest_tile_province == nil or northwest_tile_province.Owner ~= WorldMapProvinces[key].Owner)) then
						DrawWorldMapTile("tilesets/world/terrain/province_national_border_northwest_inner.png", WorldMapProvinces[key].BorderTiles[i][1], WorldMapProvinces[key].BorderTiles[i][2])
					else
						DrawWorldMapTile("tilesets/world/terrain/province_border_northwest_inner.png", WorldMapProvinces[key].BorderTiles[i][1], WorldMapProvinces[key].BorderTiles[i][2])
					end
				end
				if (northeast_tile_province ~= WorldMapProvinces[key] and northeast_tile_province ~= nil and northeast_tile_province.Owner ~= "Ocean" and (north_tile_province == WorldMapProvinces[key] or (north_tile_province ~= nil and north_tile_province.Owner == "Ocean")) and (east_tile_province == WorldMapProvinces[key] or (east_tile_province ~= nil and east_tile_province.Owner == "Ocean")) and WorldMapProvinces[key].BorderTiles[i][2] > WorldMapOffsetY) then
					if ((northeast_tile_province == nil or northeast_tile_province.Owner ~= WorldMapProvinces[key].Owner)) then
						DrawWorldMapTile("tilesets/world/terrain/province_national_border_northeast_inner.png", WorldMapProvinces[key].BorderTiles[i][1], WorldMapProvinces[key].BorderTiles[i][2])
					else
						DrawWorldMapTile("tilesets/world/terrain/province_border_northeast_inner.png", WorldMapProvinces[key].BorderTiles[i][1], WorldMapProvinces[key].BorderTiles[i][2])
					end
				end
				if (southwest_tile_province ~= WorldMapProvinces[key] and southwest_tile_province ~= nil and southwest_tile_province.Owner ~= "Ocean" and (south_tile_province == WorldMapProvinces[key] or (south_tile_province ~= nil and south_tile_province.Owner == "Ocean")) and (west_tile_province == WorldMapProvinces[key] or (west_tile_province ~= nil and west_tile_province.Owner == "Ocean")) and WorldMapProvinces[key].BorderTiles[i][1] > WorldMapOffsetX) then
					if ((southwest_tile_province == nil or southwest_tile_province.Owner ~= WorldMapProvinces[key].Owner)) then
						DrawWorldMapTile("tilesets/world/terrain/province_national_border_southwest_inner.png", WorldMapProvinces[key].BorderTiles[i][1], WorldMapProvinces[key].BorderTiles[i][2])
					else
						DrawWorldMapTile("tilesets/world/terrain/province_border_southwest_inner.png", WorldMapProvinces[key].BorderTiles[i][1], WorldMapProvinces[key].BorderTiles[i][2])
					end
				end
				if (southeast_tile_province ~= WorldMapProvinces[key] and southeast_tile_province ~= nil and southeast_tile_province.Owner ~= "Ocean" and (south_tile_province == WorldMapProvinces[key] or (south_tile_province ~= nil and south_tile_province.Owner == "Ocean")) and (east_tile_province == WorldMapProvinces[key] or (east_tile_province ~= nil and east_tile_province.Owner == "Ocean"))) then
					if ((southeast_tile_province == nil or southeast_tile_province.Owner ~= WorldMapProvinces[key].Owner)) then
						DrawWorldMapTile("tilesets/world/terrain/province_national_border_southeast_inner.png", WorldMapProvinces[key].BorderTiles[i][1], WorldMapProvinces[key].BorderTiles[i][2])
					else
						DrawWorldMapTile("tilesets/world/terrain/province_border_southeast_inner.png", WorldMapProvinces[key].BorderTiles[i][1], WorldMapProvinces[key].BorderTiles[i][2])
					end
				end
			end
		end


		-- draw province settlement
		if (WorldMapProvinces[key].SettlementLocation[1] >= WorldMapOffsetX and WorldMapProvinces[key].SettlementLocation[1] <= math.floor(WorldMapOffsetX + ((Video.Width - 16 - 176) / 64)) and WorldMapProvinces[key].SettlementLocation[2] >= WorldMapOffsetY and WorldMapProvinces[key].SettlementLocation[2] <= math.floor(WorldMapOffsetY + ((Video.Height - 16 - 16) / 64))) then
			if (ProvinceHasBuildingType(WorldMapProvinces[key], "town-hall")) then
				local settlement_graphics = ""
				if (WorldMapProvinces[key].Civilization == "dwarf" and WorldMapProvinces[key].Owner ~= "Kal Kartha") then
					if (ProvinceHasBuildingType(WorldMapProvinces[key], "barracks")) then
						settlement_graphics = "tilesets/world/sites/dwarven_settlement_with_barracks.png"
					else
						settlement_graphics = "tilesets/world/sites/dwarven_settlement.png"
					end
				elseif (WorldMapProvinces[key].Civilization == "germanic") then
					settlement_graphics = "tilesets/world/sites/germanic_settlement.png"
				elseif (WorldMapProvinces[key].Civilization == "gnome") then
					settlement_graphics = "tilesets/world/sites/gnomish_settlement.png"
				elseif (WorldMapProvinces[key].Civilization == "dwarf" and WorldMapProvinces[key].Owner == "Kal Kartha") then
					settlement_graphics = "tilesets/world/sites/kal_karthan_settlement.png"
				elseif (GrandStrategyWorld == "Earth") then -- if province has no civilization, default to germanic city graphics if world is Earth
					settlement_graphics = "tilesets/world/sites/germanic_settlement.png"
				elseif (GrandStrategyWorld == "Nidavellir") then -- if province has no civilization, default to dwarf city graphics if world is Nidavellir
					if (ProvinceHasBuildingType(WorldMapProvinces[key], "barracks")) then
						settlement_graphics = "tilesets/world/sites/dwarven_settlement_with_barracks.png"
					else
						settlement_graphics = "tilesets/world/sites/dwarven_settlement.png"
					end
				else
					settlement_graphics = "tilesets/world/sites/germanic_settlement.png"
				end
				DrawWorldMapTile(settlement_graphics, WorldMapProvinces[key].SettlementLocation[1], WorldMapProvinces[key].SettlementLocation[2])				
			end
			
			if (GrandStrategyFaction ~= nil and WorldMapProvinces[key].AttackedBy == GrandStrategyFaction.Name) then
				-- draw symbol that the province is being attacked by the human player if that is the case
				DrawWorldMapTile("tilesets/world/sites/attack.png", WorldMapProvinces[key].SettlementLocation[1], WorldMapProvinces[key].SettlementLocation[2])
			elseif (GrandStrategyFaction ~= nil and WorldMapProvinces[key].Owner == GrandStrategyFaction.Name) then
				for i, unitName in ipairs(Units) do
					if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0) then
						if (WorldMapProvinces[key].MovingUnits[string.gsub(unitName, "-", "_")] > 0) then
							-- draw symbol that troops are moving to the province
							DrawWorldMapTile("tilesets/world/sites/move.png", WorldMapProvinces[key].SettlementLocation[1], WorldMapProvinces[key].SettlementLocation[2])
							break
						end
					end
					if (string.find(unitName, "upgrade-") == nil and string.find(unitName, "hero") ~= nil) then
						if (WorldMapProvinces[key].Heroes[string.gsub(unitName, "-", "_")] == 1) then
							-- draw symbol that a hero is moving to the province
							DrawWorldMapTile("tilesets/world/sites/move.png", WorldMapProvinces[key].SettlementLocation[1], WorldMapProvinces[key].SettlementLocation[2])
							break
						end
					end
				end
				for i, unitName in ipairs(Units) do
					if (string.find(unitName, "upgrade-") == nil and string.find(unitName, "hero") ~= nil) then
						if (WorldMapProvinces[key].Heroes[string.gsub(unitName, "-", "_")] == 2) then
							DrawWorldMapTile("tilesets/world/sites/hero.png", WorldMapProvinces[key].SettlementLocation[1], WorldMapProvinces[key].SettlementLocation[2])
							break
						end
					end
				end
			end
		end
	end

	-- draw borders between water provinces
	for key, value in pairs(WorldMapWaterProvinces) do
		for i=1,table.getn(WorldMapWaterProvinces[key].BorderTiles) do
			if (WorldMapWaterProvinces[key].BorderTiles[i][1] >= WorldMapOffsetX and WorldMapWaterProvinces[key].BorderTiles[i][1] <= math.floor(WorldMapOffsetX + ((Video.Width - 16 - 176) / 64)) and WorldMapWaterProvinces[key].BorderTiles[i][2] >= WorldMapOffsetY and WorldMapWaterProvinces[key].BorderTiles[i][2] <= math.floor(WorldMapOffsetY + ((Video.Height - 16 - 16) / 64))) then
				local west_tile_province = GetTileProvince(WorldMapWaterProvinces[key].BorderTiles[i][1] - 1, WorldMapWaterProvinces[key].BorderTiles[i][2])
				local east_tile_province = GetTileProvince(WorldMapWaterProvinces[key].BorderTiles[i][1] + 1, WorldMapWaterProvinces[key].BorderTiles[i][2])
				local north_tile_province = GetTileProvince(WorldMapWaterProvinces[key].BorderTiles[i][1], WorldMapWaterProvinces[key].BorderTiles[i][2] - 1)
				local south_tile_province = GetTileProvince(WorldMapWaterProvinces[key].BorderTiles[i][1], WorldMapWaterProvinces[key].BorderTiles[i][2] + 1)

				--[[
				local northwest_tile_province = GetTileProvince(WorldMapWaterProvinces[key].BorderTiles[i][1] - 1, WorldMapWaterProvinces[key].BorderTiles[i][2] - 1)
				local northeast_tile_province = GetTileProvince(WorldMapWaterProvinces[key].BorderTiles[i][1] + 1, WorldMapWaterProvinces[key].BorderTiles[i][2] - 1)
				local southwest_tile_province = GetTileProvince(WorldMapWaterProvinces[key].BorderTiles[i][1] - 1, WorldMapWaterProvinces[key].BorderTiles[i][2] + 1)
				local southeast_tile_province = GetTileProvince(WorldMapWaterProvinces[key].BorderTiles[i][1] + 1, WorldMapWaterProvinces[key].BorderTiles[i][2] + 1)
				--]]

				if (west_tile_province ~= WorldMapWaterProvinces[key] and west_tile_province ~= nil and west_tile_province.Owner == "Ocean" and WorldMapWaterProvinces[key].BorderTiles[i][1] > WorldMapOffsetX) then
					DrawWorldMapTile("tilesets/world/terrain/province_border_west.png", WorldMapWaterProvinces[key].BorderTiles[i][1], WorldMapWaterProvinces[key].BorderTiles[i][2])
				end
				if (east_tile_province ~= WorldMapWaterProvinces[key] and east_tile_province ~= nil and east_tile_province.Owner == "Ocean") then
					DrawWorldMapTile("tilesets/world/terrain/province_border_east.png", WorldMapWaterProvinces[key].BorderTiles[i][1], WorldMapWaterProvinces[key].BorderTiles[i][2])
				end
				if (north_tile_province ~= WorldMapWaterProvinces[key] and north_tile_province ~= nil and north_tile_province.Owner == "Ocean" and WorldMapWaterProvinces[key].BorderTiles[i][2] > WorldMapOffsetY) then
					DrawWorldMapTile("tilesets/world/terrain/province_border_north.png", WorldMapWaterProvinces[key].BorderTiles[i][1], WorldMapWaterProvinces[key].BorderTiles[i][2])
				end
				if (south_tile_province ~= WorldMapWaterProvinces[key] and south_tile_province ~= nil and south_tile_province.Owner == "Ocean") then
					DrawWorldMapTile("tilesets/world/terrain/province_border_south.png", WorldMapWaterProvinces[key].BorderTiles[i][1], WorldMapWaterProvinces[key].BorderTiles[i][2])
				end
				--[[
				if (northwest_tile_province ~= WorldMapWaterProvinces[key] and northwest_tile_province ~= nil and northwest_tile_province.Owner == "Ocean" and (north_tile_province == WorldMapWaterProvinces[key] or (north_tile_province ~= nil and north_tile_province.Owner ~= "Ocean")) and (west_tile_province == WorldMapWaterProvinces[key] or (west_tile_province ~= nil and west_tile_province.Owner ~= "Ocean"))) then
					DrawWorldMapTile("tilesets/world/terrain/province_border_northwest_inner.png", WorldMapWaterProvinces[key].BorderTiles[i][1], WorldMapWaterProvinces[key].BorderTiles[i][2])
				end
				if (northeast_tile_province ~= WorldMapWaterProvinces[key] and northeast_tile_province ~= nil and northeast_tile_province.Owner == "Ocean" and (north_tile_province == WorldMapWaterProvinces[key] or (north_tile_province ~= nil and north_tile_province.Owner ~= "Ocean")) and (east_tile_province == WorldMapWaterProvinces[key] or (east_tile_province ~= nil and east_tile_province.Owner ~= "Ocean"))) then
					DrawWorldMapTile("tilesets/world/terrain/province_border_northeast_inner.png", WorldMapWaterProvinces[key].BorderTiles[i][1], WorldMapWaterProvinces[key].BorderTiles[i][2])
				end
				if (southwest_tile_province ~= WorldMapWaterProvinces[key] and southwest_tile_province ~= nil and southwest_tile_province.Owner == "Ocean" and (south_tile_province == WorldMapWaterProvinces[key] or (south_tile_province ~= nil and south_tile_province.Owner ~= "Ocean")) and (west_tile_province == WorldMapWaterProvinces[key] or (west_tile_province ~= nil and west_tile_province.Owner ~= "Ocean"))) then
					DrawWorldMapTile("tilesets/world/terrain/province_border_southwest_inner.png", WorldMapWaterProvinces[key].BorderTiles[i][1], WorldMapWaterProvinces[key].BorderTiles[i][2])
				end
				if (southeast_tile_province ~= WorldMapWaterProvinces[key] and southeast_tile_province ~= nil and southeast_tile_province.Owner == "Ocean" and (south_tile_province == WorldMapWaterProvinces[key] or (south_tile_province ~= nil and south_tile_province.Owner ~= "Ocean")) and (east_tile_province == WorldMapWaterProvinces[key] or (east_tile_province ~= nil and east_tile_province.Owner ~= "Ocean"))) then
					DrawWorldMapTile("tilesets/world/terrain/province_border_southeast_inner.png", WorldMapWaterProvinces[key].BorderTiles[i][1], WorldMapWaterProvinces[key].BorderTiles[i][2])
				end
				--]]
			end
		end
	end

	-- draw terra incognita tiles after the main ones, so that they may overlap with them a bit
	for x=WorldMapOffsetX,(WorldMapOffsetX + math.floor((Video.Width - 16 - 176) / 64)) do
		for y=WorldMapOffsetY,(WorldMapOffsetY + math.floor((Video.Height - 16 - 16) / 64)) do
			-- set map tile terrain
			if (GetWorldMapTile(x, y) == "") then
				if (x == WorldMapOffsetX and y == WorldMapOffsetY) then
					DrawWorldMapTile("tilesets/world/terrain/fog_no_north_no_west.png", x, y)
				elseif (x == WorldMapOffsetX) then
					DrawWorldMapTile("tilesets/world/terrain/fog_no_west.png", x, y)
				elseif (y == WorldMapOffsetY) then
					DrawWorldMapTile("tilesets/world/terrain/fog_no_north.png", x, y)
				else
					DrawWorldMapTile("tilesets/world/terrain/fog.png", x, y)
				end
			end
		end
	end

	local ui_element = CGraphic:New(GrandStrategyFaction.Civilization .. "/ui/filler-right_" .. Video.Height .. ".png")
	ui_element:Load()
	UIFillerRight = ImageWidget(ui_element)
	GrandStrategyMenu:add(UIFillerRight, Video.Width - 16, 0)

	local ui_element = CGraphic:New(GrandStrategyFaction.Civilization .. "/ui/statusline_" .. Video.Width .. ".png")
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

	AddUIElement(GrandStrategyFaction.Civilization .. "/ui/infopanel.png", 0, 160)

	AddUIElement(GrandStrategyFaction.Civilization .. "/ui/resource_" .. Video.Width .. ".png", 176, 0)

	AddUIElement(GrandStrategyFaction.Civilization .. "/ui/buttonpanel_" .. Video.Height .. ".png", 0, 336)
	AddUIElement(GrandStrategyFaction.Civilization .. "/ui/menubutton.png", 0, 0)

	local display_year
	if (GrandStrategyYear >= 0) then
		display_year = GrandStrategyYear .. " AD"
	else
		display_year = (GrandStrategyYear * -1) .. " BC"
	end
	if (GrandStrategyFaction ~= nil) then
		AddGrandStrategyLabel(GrandStrategyFaction.Name .. ", " .. display_year, 88, 6, Fonts["game"], true, false)
	end
	
	if (GrandStrategyFaction ~= nil) then
		-- add resource quantities
		local gold_income = ""
		if (GrandStrategyFaction.Income.Gold < GrandStrategyFaction.Upkeep) then
			gold_income = GrandStrategyFaction.Income.Gold - GrandStrategyFaction.Upkeep
		elseif (GrandStrategyFaction.Income.Gold > GrandStrategyFaction.Upkeep) then
			gold_income = "+" .. GrandStrategyFaction.Income.Gold - GrandStrategyFaction.Upkeep
		end

		AddUIElement("ui/gold.png", 176, 0)
		AddGrandStrategyLabel(GrandStrategyFaction.Gold .. gold_income, 176 + 18, 1, Fonts["game"], false, false)

		local lumber_income = ""
		if (GrandStrategyFaction.Income.Lumber > 0) then
			lumber_income = "+" .. GrandStrategyFaction.Income.Lumber
		end

		AddUIElement("ui/lumber.png", 176 + 100, 0)
		AddGrandStrategyLabel(GrandStrategyFaction.Commodities.Lumber .. lumber_income, 176 + 100 + 18, 1, Fonts["game"], false, false)
	end
	
	if (SelectedProvince ~= nil) then
		local province_name_text = SelectedProvince.Name
		if (SelectedProvince.Owner ~= "" and SelectedProvince.Owner ~= "Ocean") then
			province_name_text = province_name_text .. ", "
			if (GetFactionData(GetFactionFromName(SelectedProvince.Owner).Civilization, SelectedProvince.Owner, "Type")  == "tribe") then -- if is a tribe, just use the tribe's name
				province_name_text = province_name_text .. SelectedProvince.Owner
			elseif (GetFactionData(GetFactionFromName(SelectedProvince.Owner).Civilization, SelectedProvince.Owner, "Type") == "polity") then -- if is a polity, use the polity's name accompanied by its title
				province_name_text = province_name_text .. GetFactionFromName(SelectedProvince.Owner).Title .. " of " .. SelectedProvince.Owner
			end
		end
		AddGrandStrategyLabel(province_name_text, 4, 171, Fonts["game"], true, true)

		-- add buttons for buildings and selecting units if is an owned province and in the normal province interface setting
		if (GrandStrategyFaction ~= nil and SelectedProvince.Owner == GrandStrategyFaction.Name) then
			if (InterfaceState == "Province") then
				local item_x = 0
				local item_y = 0
				for i, unitName in ipairs(Units) do
					if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0) then
						local veterans = 0
						local veteran_unit_type = GetCivilizationClassUnitType("veteran-" .. GetUnitTypeData(unitName, "Class"), GetUnitTypeData(unitName, "Civilization"))
						if (veteran_unit_type ~= nil) then
							veterans = veterans + SelectedProvince.Units[string.gsub(veteran_unit_type, "-", "_")]
						end
						local heroic_unit_type = GetCivilizationClassUnitType("heroic-" .. GetUnitTypeData(unitName, "Class"), GetUnitTypeData(unitName, "Civilization"))
						if (heroic_unit_type ~= nil) then
							veterans = veterans + SelectedProvince.Units[string.gsub(heroic_unit_type, "-", "_")]
						end

						if (IsUnitAvailableForTraining(SelectedProvince, unitName) or (SelectedProvince.Units[string.gsub(unitName, "-", "_")] + veterans > 0 and GetUnitTypeInterfaceState(unitName) ~= "")) then
							local icon_offset_x = 9 + (item_x * 56)
							local icon_offset_y = 340 + (item_y * (47 + 19 + 4))

							AddGrandStrategyUnitButton(icon_offset_x, icon_offset_y, unitName)
							if (SelectedProvince.UnderConstructionUnits[string.gsub(unitName, "-", "_")] > 0) then
								AddGrandStrategyLabel(SelectedProvince.Units[string.gsub(unitName, "-", "_")] + veterans .. "+" .. SelectedProvince.UnderConstructionUnits[string.gsub(unitName, "-", "_")], icon_offset_x + 24, icon_offset_y + 26, Fonts["game"], true, false)
							else
								AddGrandStrategyLabel(SelectedProvince.Units[string.gsub(unitName, "-", "_")] + veterans, icon_offset_x + 24, icon_offset_y + 26, Fonts["game"], true, false)
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
							local regiment_type_name = GetUnitTypeName(unitName) .. "s"
							if (string.find(regiment_type_name, "mans") ~= nil) then -- correct plural for "man" to "men"
								regiment_type_name = string.sub(regiment_type_name, 0, -4) .. "men"
							end
							b:setTooltip("Deselect one ".. regiment_type_name .. " regiment")

							local b = AddGrandStrategyImageButton("", "", icon_offset_x + 2 + 46 - 20, icon_offset_y + 40, function()
								if (SelectedUnits[string.gsub(unitName, "-", "_")] < SelectedProvince.Units[string.gsub(unitName, "-", "_")]) then
									SelectedUnits[string.gsub(unitName, "-", "_")] = SelectedUnits[string.gsub(unitName, "-", "_")] + 1
									DrawGrandStrategyInterface()
								elseif (veteran_unit_type ~= nil and SelectedUnits[string.gsub(veteran_unit_type, "-", "_")] < SelectedProvince.Units[string.gsub(veteran_unit_type, "-", "_")]) then
									SelectedUnits[string.gsub(veteran_unit_type, "-", "_")] = SelectedUnits[string.gsub(veteran_unit_type, "-", "_")] + 1
									DrawGrandStrategyInterface()
								elseif (heroic_unit_type ~= nil and SelectedUnits[string.gsub(heroic_unit_type, "-", "_")] < SelectedProvince.Units[string.gsub(heroic_unit_type, "-", "_")]) then
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
							local regiment_type_name = GetUnitTypeName(unitName) .. "s"
							if (string.find(regiment_type_name, "mans") ~= nil) then -- correct plural for "man" to "men"
								regiment_type_name = string.sub(regiment_type_name, 0, -4) .. "men"
							end
							b:setTooltip("Select one ".. regiment_type_name .. " regiment")

							local selected_veterans = 0
							if (veteran_unit_type ~= nil) then
								selected_veterans = selected_veterans + SelectedUnits[string.gsub(veteran_unit_type, "-", "_")]
							end
							if (heroic_unit_type ~= nil) then
								selected_veterans = selected_veterans + SelectedUnits[string.gsub(heroic_unit_type, "-", "_")]
							end
							AddGrandStrategyLabel("~<" .. SelectedUnits[string.gsub(unitName, "-", "_")] + selected_veterans .. "~>", icon_offset_x + 24, icon_offset_y + 42, Fonts["game"], true, false)

							item_x = item_x + 1
							if (item_x > 2) then
								item_x = 0
								item_y = item_y + 1
							end
							if (item_y > 2 and Video.Height <= 600) then -- don't show more than 9 units if the resolution height is too small to show that
								break
							end
						end
					end
				end

				local item_x = 0
				local item_y = -2
				for i, unitName in ipairs(Units) do
					if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") and GetUnitTypeData(unitName, "Class") ~= "farm" and GetUnitTypeData(unitName, "Class") ~= "watch-tower" and GetUnitTypeData(unitName, "Class") ~= "guard-tower") then
						if (IsBuildingAvailable(SelectedProvince, unitName)) then
							local icon_offset_x = 9 + (item_x * 56)
							local icon_offset_y = 340 + (item_y * 47)

							AddGrandStrategyBuildingButton(icon_offset_x, icon_offset_y, unitName)

							if (SelectedProvince.SettlementBuildings[string.gsub(unitName, "-", "_")] == 1) then -- if is under construction, apply under construction graphics
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
					if (string.find(unitName, "upgrade-") == nil and string.find(unitName, "hero") ~= nil) then
						if (SelectedProvince.Heroes[string.gsub(unitName, "-", "_")] == 2) then
							-- add a button to show the heroes in the province (but only if there is actually a hero there)
							local b = AddGrandStrategyImageButton("Show ~!Heroes", "h", 24, Video.Height - (22 * 2) - 16, function()
								InterfaceState = "Heroes"
								DrawGrandStrategyInterface()
							end)
							b:setBaseColor(Color(0,0,0,0))
							b:setForegroundColor(Color(0,0,0,0))
							b:setBackgroundColor(Color(0,0,0,0))
							local g_btn = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/button-thin-medium-normal.png")
							local g_btp = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/button-thin-medium-pressed.png")
							g_btn:Load()
							g_btp:Load()
							b:setNormalImage(g_btn)
							b:setPressedImage(g_btp)
							b:setSize(128, 20)
							b:setFont(Fonts["game"])
							break
						end
					end
				end
			elseif (InterfaceState == "town-hall") then
				AddGrandStrategyLabel(GetUnitTypeName(GetCivilizationClassUnitType(InterfaceState, SelectedProvince.Civilization)), 88, 213, Fonts["game"], true, false)
				
				local item_y = -2

				AddGrandStrategyLabel("Province Culture: " .. CapitalizeString(SelectedProvince.Civilization), 4, 340 + (item_y * 47), Fonts["game"], true, true)
				item_y = item_y + 1

				for key, value in pairs(GrandStrategyCommodities) do
					local icon_offset_y = 340 + (item_y * 47)

					AddUIElement("ui/" .. string.lower(key) .. ".png", 9, icon_offset_y + 3)

					-- add trade bid/offer arrows
					local b = AddGrandStrategyImageButton("", "", 112 - 2 - 24, icon_offset_y, function()
						if (GrandStrategyFaction.Gold >= -1 * (GrandStrategyFaction.Trade[key] - 100) * GetCommodityPrice(key) / 100) then
							GrandStrategyFaction.Trade[key] = GrandStrategyFaction.Trade[key] - 100
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
					if (GrandStrategyFaction.Trade[key] <= 0) then
						b:setTooltip("Increase bid of " .. key .. " by 100")
					else
						b:setTooltip("Decrease offer of " .. key .. " by 100")
					end

					local b = AddGrandStrategyImageButton("", "", 112 + 2 + 46 - 20, icon_offset_y, function()
						if (GrandStrategyFaction.Commodities[key] >= GrandStrategyFaction.Trade[key] + 100) then
							GrandStrategyFaction.Trade[key] = GrandStrategyFaction.Trade[key] + 100
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
					if (GrandStrategyFaction.Trade[key] >= 0) then
						b:setTooltip("Increase offer of " .. key .. " by 100")
					else
						b:setTooltip("Decrease bid of " .. key .. " by 100")
					end

					AddGrandStrategyLabel("~<" .. GrandStrategyFaction.Trade[key] .. "~>", 112 + 24 - 12, icon_offset_y + 2, Fonts["game"], true, false)
					
					item_y = item_y + 1
				end
				
				-- add a button to go back to the main province interface
				local b = AddGrandStrategyImageButton("~!OK", "o", 24, Video.Height - (22 * 2) - 16, function()
					InterfaceState = "Province"
					DrawGrandStrategyInterface()
				end)
				b:setBaseColor(Color(0,0,0,0))
				b:setForegroundColor(Color(0,0,0,0))
				b:setBackgroundColor(Color(0,0,0,0))
				local g_btn = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/button-thin-medium-normal.png")
				local g_btp = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/button-thin-medium-pressed.png")
				g_btn:Load()
				g_btp:Load()
				b:setNormalImage(g_btn)
				b:setPressedImage(g_btp)
				b:setSize(128, 20)
				b:setFont(Fonts["game"])
			elseif (InterfaceState == "barracks") then
				AddGrandStrategyLabel(GetUnitTypeName(GetCivilizationClassUnitType(InterfaceState, SelectedProvince.Civilization)), 88, 213, Fonts["game"], true, false)
				
				-- add units buttons for training
				local item_x = 0
				local item_y = 0
				for i, unitName in ipairs(Units) do
					if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0) then
						local veterans = 0
						local veteran_unit_type = GetCivilizationClassUnitType("veteran-" .. GetUnitTypeData(unitName, "Class"), GetUnitTypeData(unitName, "Civilization"))
						if (veteran_unit_type ~= nil) then
							veterans = veterans + SelectedProvince.Units[string.gsub(veteran_unit_type, "-", "_")]
						end
						local heroic_unit_type = GetCivilizationClassUnitType("heroic-" .. GetUnitTypeData(unitName, "Class"), GetUnitTypeData(unitName, "Civilization"))
						if (heroic_unit_type ~= nil) then
							veterans = veterans + SelectedProvince.Units[string.gsub(heroic_unit_type, "-", "_")]
						end

						if (IsUnitAvailableForTraining(SelectedProvince, unitName) and GetUnitTypeInterfaceState(unitName) == InterfaceState) then
							local icon_offset_x = 9 + (item_x * 56)
							local icon_offset_y = 340 + ((item_y - 1) * (47 + 19 + 4))

							AddGrandStrategyUnitButton(icon_offset_x, icon_offset_y, unitName)
							if (SelectedProvince.UnderConstructionUnits[string.gsub(unitName, "-", "_")] > 0) then
								AddGrandStrategyLabel(SelectedProvince.Units[string.gsub(unitName, "-", "_")] + veterans .. "+" .. SelectedProvince.UnderConstructionUnits[string.gsub(unitName, "-", "_")], icon_offset_x + 24, icon_offset_y + 26, Fonts["game"], true, false)
							else
								AddGrandStrategyLabel(SelectedProvince.Units[string.gsub(unitName, "-", "_")] + veterans, icon_offset_x + 24, icon_offset_y + 26, Fonts["game"], true, false)
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
							local regiment_type_name = GetUnitTypeName(unitName) .. "s"
							if (string.find(regiment_type_name, "mans") ~= nil) then -- correct plural for "man" to "men"
								regiment_type_name = string.sub(regiment_type_name, 0, -4) .. "men"
							end
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
							if (cost_tooltip ~= "") then
								cost_tooltip = cost_tooltip .. ")"
							end
							
							local regiment_type_name = GetUnitTypeName(unitName) .. "s"
							if (string.find(regiment_type_name, "mans") ~= nil) then -- correct plural for "man" to "men"
								regiment_type_name = string.sub(regiment_type_name, 0, -4) .. "men"
							end
							b:setTooltip("Train one ".. regiment_type_name .. " regiment" .. cost_tooltip)

							AddGrandStrategyLabel("~<" .. SelectedProvince.UnderConstructionUnits[string.gsub(unitName, "-", "_")] .. "~>", icon_offset_x + 24, icon_offset_y + 42, Fonts["game"], true, false)

							item_x = item_x + 1
							if (item_x > 2) then
								item_x = 0
								item_y = item_y + 1
							end
						end
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
				local g_btn = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/button-thin-medium-normal.png")
				local g_btp = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/button-thin-medium-pressed.png")
				g_btn:Load()
				g_btp:Load()
				b:setNormalImage(g_btn)
				b:setPressedImage(g_btp)
				b:setSize(128, 20)
				b:setFont(Fonts["game"])
			elseif (InterfaceState == "lumber-mill") then
				AddGrandStrategyLabel(GetUnitTypeName(GetCivilizationClassUnitType(InterfaceState, SelectedProvince.Civilization)), 88, 213, Fonts["game"], true, false)
				
				local item_x = 0
				local item_y = -2
				for i, unitName in ipairs(Units) do
					if (string.find(unitName, "upgrade-") ~= nil) then
						if (GetUnitTypeInterfaceState(unitName) == InterfaceState and IsTechnologyAvailable(SelectedProvince, unitName)) then
							local icon_offset_x = 9 + (item_x * 56)
							local icon_offset_y = 340 + (item_y * 47)

							AddGrandStrategyTechnologyButton(icon_offset_x, icon_offset_y, unitName)
							
							item_x = item_x + 1
							if (item_x > 2) then
								item_x = 0
								item_y = item_y + 1
							end
						end
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
				local g_btn = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/button-thin-medium-normal.png")
				local g_btp = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/button-thin-medium-pressed.png")
				g_btn:Load()
				g_btp:Load()
				b:setNormalImage(g_btn)
				b:setPressedImage(g_btp)
				b:setSize(128, 20)
				b:setFont(Fonts["game"])
			elseif (InterfaceState == "smithy") then
				AddGrandStrategyLabel(GetUnitTypeName(GetCivilizationClassUnitType(InterfaceState, SelectedProvince.Civilization)), 88, 213, Fonts["game"], true, false)
				
				local item_x = 0
				local item_y = -2
				for i, unitName in ipairs(Units) do
					if (string.find(unitName, "upgrade-") ~= nil) then
						if (GetUnitTypeInterfaceState(unitName) == InterfaceState and IsTechnologyAvailable(SelectedProvince, unitName)) then
							local icon_offset_x = 9 + (item_x * 56)
							local icon_offset_y = 340 + (item_y * 47)

							AddGrandStrategyTechnologyButton(icon_offset_x, icon_offset_y, unitName)
							
							item_x = item_x + 1
							if (item_x > 2) then
								item_x = 0
								item_y = item_y + 1
							end
						end
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
				local g_btn = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/button-thin-medium-normal.png")
				local g_btp = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/button-thin-medium-pressed.png")
				g_btn:Load()
				g_btp:Load()
				b:setNormalImage(g_btn)
				b:setPressedImage(g_btp)
				b:setSize(128, 20)
				b:setFont(Fonts["game"])
			elseif (InterfaceState == "Heroes") then
				AddGrandStrategyLabel("Heroes", 88, 213, Fonts["game"], true, false)
				
				local item_x = 0
				local item_y = -2
				for i, unitName in ipairs(Units) do
					if (string.find(unitName, "upgrade-") == nil and string.find(unitName, "hero") ~= nil) then
						if (SelectedProvince.Heroes[string.gsub(unitName, "-", "_")] == 2) then
							local icon_offset_x = 9 + (item_x * 56)
							local icon_offset_y = 340 + (item_y * 47)

							AddGrandStrategyHeroButton(icon_offset_x, icon_offset_y, unitName)
							
							item_x = item_x + 1
							if (item_x > 2) then
								item_x = 0
								item_y = item_y + 1
							end
						end
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
				local g_btn = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/button-thin-medium-normal.png")
				local g_btp = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/button-thin-medium-pressed.png")
				g_btn:Load()
				g_btp:Load()
				b:setNormalImage(g_btn)
				b:setPressedImage(g_btp)
				b:setSize(128, 20)
				b:setFont(Fonts["game"])
			end
		elseif (SelectedProvince.Owner ~= "" and InterfaceState == "Diplomacy") then
			if (GrandStrategyFaction.Diplomacy[GetFactionKeyFromName(SelectedProvince.Owner)] == "War") then
				AddGrandStrategyLabel("At War with Us", 4, 213, Fonts["game"], true, true)

				-- add a button for offering peace
				local b = AddGrandStrategyImageButton("Offer ~!Peace!", "p", 24, 340, function()
					OfferPeace(GrandStrategyFaction.Name, SelectedProvince.Owner)
					DrawGrandStrategyInterface()
				end)
				b:setBaseColor(Color(0,0,0,0))
				b:setForegroundColor(Color(0,0,0,0))
				b:setBackgroundColor(Color(0,0,0,0))
				local g_btn = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/button-thin-medium-normal.png")
				local g_btp = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/button-thin-medium-pressed.png")
				g_btn:Load()
				g_btp:Load()
				b:setNormalImage(g_btn)
				b:setPressedImage(g_btp)
				b:setSize(128, 20)
				b:setFont(Fonts["game"])
			elseif (GrandStrategyFaction.Diplomacy[GetFactionKeyFromName(SelectedProvince.Owner)] == "Offering Peace") then
				AddGrandStrategyLabel("At War with Us (Peace Offered)", 4, 213, Fonts["game"], true, true)
			else
				-- add a button for declaring war
				local b = AddGrandStrategyImageButton("Declare ~!War!", "w", 24, 340, function()
					DeclareWar(GrandStrategyFaction.Name, SelectedProvince.Owner)
					DrawGrandStrategyInterface()
				end)
				b:setBaseColor(Color(0,0,0,0))
				b:setForegroundColor(Color(0,0,0,0))
				b:setBackgroundColor(Color(0,0,0,0))
				local g_btn = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/button-thin-medium-normal.png")
				local g_btp = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/button-thin-medium-pressed.png")
				g_btn:Load()
				g_btp:Load()
				b:setNormalImage(g_btn)
				b:setPressedImage(g_btp)
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
	local g_btn = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/button-thin-medium-normal.png")
	local g_btp = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/button-thin-medium-pressed.png")
	g_btn:Load()
	g_btp:Load()
	b:setNormalImage(g_btn)
	b:setPressedImage(g_btp)
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
	
	local ui_element = CGraphic:New(GrandStrategyFaction.Civilization .. "/ui/minimap.png")
	ui_element:Load()
	UIMinimap = ImageWidget(ui_element)
	GrandStrategyMenu:add(UIMinimap, 0, 24)

	for key, value in pairs(WorldMapProvinces) do
		for i=1,table.getn(WorldMapProvinces[key].Tiles) do
			-- draw the province's tiles on the minimap
			if (WorldMapProvinces[key].Owner ~= "") then
				DrawWorldMapMinimapTile("tilesets/world/terrain/province_tile.png", WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2])
			else
				DrawWorldMapMinimapTile("tilesets/world/terrain/province_tile_white.png", WorldMapProvinces[key].Tiles[i][1], WorldMapProvinces[key].Tiles[i][2])
			end
		end
	end

	for key, value in pairs(WorldMapWaterProvinces) do
		for i=1,table.getn(WorldMapWaterProvinces[key].Tiles) do
			DrawWorldMapMinimapTile("tilesets/world/terrain/province_tile_ocean.png", WorldMapWaterProvinces[key].Tiles[i][1], WorldMapWaterProvinces[key].Tiles[i][2])
		end
	end
end

function SetSelectedProvince(province)
	if (province ~= SelectedProvince) then

		-- if the player has units selected and then selects an attackable province, set those units to attack the province
		if (SelectedProvince ~= nil and GrandStrategyFaction ~= nil and SelectedProvince.Owner == GrandStrategyFaction.Name and CanAttackProvince(province, GrandStrategyFaction, SelectedProvince)) then
			for i, unitName in ipairs(Units) do
				if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0) then
					if (SelectedUnits[string.gsub(unitName, "-", "_")] > 0) then
						province.AttackedBy = GrandStrategyFaction.Name
						province.AttackingUnits[string.gsub(unitName, "-", "_")] = province.AttackingUnits[string.gsub(unitName, "-", "_")] + SelectedUnits[string.gsub(unitName, "-", "_")]
						SelectedProvince.Units[string.gsub(unitName, "-", "_")] = SelectedProvince.Units[string.gsub(unitName, "-", "_")] - SelectedUnits[string.gsub(unitName, "-", "_")]
						
						-- draw symbol that the province is being attacked by the human player
						DrawWorldMapTile("tilesets/world/sites/attack.png", province.SettlementLocation[1], province.SettlementLocation[2])
					end
				end
			end
			for i, unitName in ipairs(Units) do
				if (string.find(unitName, "upgrade-") == nil and string.find(unitName, "hero") ~= nil) then
					if (SelectedHero == unitName) then
						province.AttackedBy = GrandStrategyFaction.Name
						province.Heroes[string.gsub(unitName, "-", "_")] = 3
						SelectedProvince.Heroes[string.gsub(unitName, "-", "_")] = 0
						SelectedHero = ""

						-- draw symbol that a hero is attacking the province
						DrawWorldMapTile("tilesets/world/sites/attack.png", province.SettlementLocation[1], province.SettlementLocation[2])
					end
				end
			end
		elseif (SelectedProvince ~= nil and GrandStrategyFaction ~= nil and SelectedProvince.Owner == province.Owner and SelectedProvince.Owner == GrandStrategyFaction.Name) then
			for i, unitName in ipairs(Units) do
				if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0) then
					if (SelectedUnits[string.gsub(unitName, "-", "_")] > 0) then
						province.MovingUnits[string.gsub(unitName, "-", "_")] = province.MovingUnits[string.gsub(unitName, "-", "_")] + SelectedUnits[string.gsub(unitName, "-", "_")]
						SelectedProvince.Units[string.gsub(unitName, "-", "_")] = SelectedProvince.Units[string.gsub(unitName, "-", "_")] - SelectedUnits[string.gsub(unitName, "-", "_")]

						-- draw symbol that troops are moving to the province
						DrawWorldMapTile("tilesets/world/sites/move.png", province.SettlementLocation[1], province.SettlementLocation[2])
					end
				end
			end
			for i, unitName in ipairs(Units) do
				if (string.find(unitName, "upgrade-") == nil and string.find(unitName, "hero") ~= nil) then
					if (SelectedHero == unitName) then
						province.Heroes[string.gsub(unitName, "-", "_")] = 1
						SelectedProvince.Heroes[string.gsub(unitName, "-", "_")] = 0
						SelectedHero = ""

						-- draw symbol that a hero is moving to the province
						DrawWorldMapTile("tilesets/world/sites/move.png", province.SettlementLocation[1], province.SettlementLocation[2])
					end
				end
			end
		end

		if (GrandStrategyFaction ~= nil) then
			if (province ~= nil and province.Owner ~= "" and province.Owner ~= "Ocean" and province.Owner ~= GrandStrategyFaction.Name) then -- if is owned by a foreign faction, use diplomacy interface, if is a self owned province or an empty one, use the normal province interface
				InterfaceState = "Diplomacy"
			else
				InterfaceState = "Province"
			end
		end
		SelectedProvince = province
		SelectedUnits = nil
		SelectedUnits = {}
		for i, unitName in ipairs(Units) do
			if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0) then
				SelectedUnits[string.gsub(unitName, "-", "_")] = 0
			end
		end
		DrawGrandStrategyInterface()
	end
end

function AIDoTurn(ai_faction)
	
	AIConsiderOffers(ai_faction)

	for province_i, key in ipairs(ai_faction.OwnedProvinces) do
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
			if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") and GetUnitTypeData(unitName, "Class") ~= "farm" and GetUnitTypeData(unitName, "Class") ~= "watch-tower" and GetUnitTypeData(unitName, "Class") ~= "guard-tower") then
				if (CanBuildStructure(WorldMapProvinces[key], unitName)) then
					if (GetUnitTypeData(unitName, "Class") == "town-hall") then
						BuildStructure(WorldMapProvinces[key], unitName)
						break
					elseif (GetUnitTypeData(unitName, "Class") == "barracks") then
						BuildStructure(WorldMapProvinces[key], unitName)
						break
					elseif (GetUnitTypeData(unitName, "Class") == "lumber-mill" and (ProvinceHasBuildingType(WorldMapProvinces[key], "barracks") or ProvinceHasResource(WorldMapProvinces[key], "Lumber") or GetFactionBuildingTypeCount(ai_faction.Name, "lumber-mill") == 0)) then
						BuildStructure(WorldMapProvinces[key], unitName)
						break
					elseif (GetUnitTypeData(unitName, "Class") == "smithy" and ((ProvinceHasBuildingType(WorldMapProvinces[key], "barracks") and ProvinceHasBuildingType(WorldMapProvinces[key], "lumber-mill")) or GetFactionBuildingTypeCount(ai_faction.Name, "smithy") == 0)) then -- it only makes sense to build more than one smithy if it is to make ballistas available in a province
						BuildStructure(WorldMapProvinces[key], unitName)
						break
					end
				end
			end
		end
	end

	-- conduct attacks and build military units
	for province_i, key in ipairs(ai_faction.OwnedProvinces) do
		local desired_infantry_in_province = 10
		local desired_archers_in_province = 6
		local desired_catapults_in_province = 1

		local borders_foreign = false

		for second_key, second_value in pairs(WorldMapProvinces) do
			if (ProvinceHasBorderWith(WorldMapProvinces[key], WorldMapProvinces[second_key])) then
				if (WorldMapProvinces[second_key].Owner ~= ai_faction.Name) then
					borders_foreign = true
					if (round(GetMilitaryScore(WorldMapProvinces[second_key], false, true) * 3 / 2) < GetMilitaryScore(WorldMapProvinces[key], false, false)) then -- only attack if military score is 150% or greater of that of the province to be attacked
						if (WorldMapProvinces[key].AttackedBy == "" and CanAttackProvince(WorldMapProvinces[second_key], ai_faction, WorldMapProvinces[key])) then -- don't attack from this province if it is already being attacked
							WorldMapProvinces[second_key].AttackedBy = ai_faction.Name
							for i, unitName in ipairs(Units) do
								if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0 and string.find(unitName, "hero") == nil) then
									WorldMapProvinces[second_key].AttackingUnits[string.gsub(unitName, "-", "_")] = WorldMapProvinces[key].Units[string.gsub(unitName, "-", "_")] - round(WorldMapProvinces[key].Units[string.gsub(unitName, "-", "_")] * 1 / 4) -- leave 1/3rd of the province's forces as a defense
									WorldMapProvinces[key].Units[string.gsub(unitName, "-", "_")] = round(WorldMapProvinces[key].Units[string.gsub(unitName, "-", "_")] * 1 / 4)
								end
							end
						end
					elseif (GetMilitaryScore(WorldMapProvinces[second_key], false, true) > 0) then
						desired_infantry_in_province = round(desired_infantry_in_province * (GetMilitaryScore(WorldMapProvinces[second_key], false, true) * 9 / 4) / 960) + 1 -- 960 is the military score of the default desired military units in a province
						desired_archers_in_province = round(desired_archers_in_province * (GetMilitaryScore(WorldMapProvinces[second_key], false, true) * 9 / 4) / 960) + 1
						desired_catapults_in_province = round(desired_catapults_in_province * (GetMilitaryScore(WorldMapProvinces[second_key], false, true) * 9 / 4) / 960) + 1
					end
				end
			end
		end

		if (borders_foreign == false or GetFactionBuildingTypeCount(ai_faction.Name, "town-hall") < GetFactionProvinceCount(ai_faction) or (ai_faction.Income.Gold - ai_faction.Upkeep) < 100) then -- don't build any military units if a province is lacking a town hall, if it doesn't border any non-owned provinces, or if net income is too small
			desired_infantry_in_province = 0
			desired_archers_in_province = 0
			desired_catapults_in_province = 0
		end

		for i, unitName in ipairs(Units) do
			if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0) then
				if (IsUnitAvailableForTraining(WorldMapProvinces[key], unitName)) then
					if (GetUnitTypeData(unitName, "Class") == "infantry" and desired_infantry_in_province > 0) then
						for i=1,desired_infantry_in_province do
							if ((WorldMapProvinces[key].Units[string.gsub(unitName, "-", "_")] + WorldMapProvinces[key].UnderConstructionUnits[string.gsub(unitName, "-", "_")]) < desired_infantry_in_province and CanTrainUnit(WorldMapProvinces[key], unitName)) then
								TrainUnit(WorldMapProvinces[key], unitName)
							end
						end
					elseif (GetUnitTypeData(unitName, "Class") == "archer" and desired_archers_in_province > 0) then
						for i=1,desired_archers_in_province do
							if ((WorldMapProvinces[key].Units[string.gsub(unitName, "-", "_")] + WorldMapProvinces[key].UnderConstructionUnits[string.gsub(unitName, "-", "_")]) < desired_archers_in_province and CanTrainUnit(WorldMapProvinces[key], unitName)) then
								TrainUnit(WorldMapProvinces[key], unitName)
							end
						end
					elseif (GetUnitTypeData(unitName, "Class") == "siege-engine" and desired_catapults_in_province > 0) then
						for i=1,desired_catapults_in_province do
							if ((WorldMapProvinces[key].Units[string.gsub(unitName, "-", "_")] + WorldMapProvinces[key].UnderConstructionUnits[string.gsub(unitName, "-", "_")]) < desired_catapults_in_province and CanTrainUnit(WorldMapProvinces[key], unitName)) then
								TrainUnit(WorldMapProvinces[key], unitName)
							end
						end
					end
				end

				if (borders_foreign == false and WorldMapProvinces[key].Units[string.gsub(unitName, "-", "_")] > 0) then -- if this province borders no foreign provinces but has units in the province, move them out
					for second_province_i, second_key in ipairs(ai_faction.OwnedProvinces) do
						local second_province_borders_foreign = false
						for third_key, third_value in pairs(WorldMapProvinces) do
							if (WorldMapProvinces[third_key].Owner ~= ai_faction.Name and ProvinceHasBorderWith(WorldMapProvinces[second_key], WorldMapProvinces[third_key])) then
								second_province_borders_foreign = true
								break
							end
						end
						if (second_province_borders_foreign) then
							WorldMapProvinces[second_key].MovingUnits[string.gsub(unitName, "-", "_")] = WorldMapProvinces[second_key].MovingUnits[string.gsub(unitName, "-", "_")] + WorldMapProvinces[key].Units[string.gsub(unitName, "-", "_")]
							WorldMapProvinces[key].Units[string.gsub(unitName, "-", "_")] = 0
							break
						end
					end
				end
			end
		end
	end

	ai_faction.Trade.Lumber = 0
	-- do trade
	if (ai_faction.Commodities.Lumber < 800) then -- 800 is the most a unit/building/technology costs in terms of lumber, so if lumber stored is lower than this quantity, bid for the difference
		ai_faction.Trade.Lumber = ai_faction.Trade.Lumber - (800 - ai_faction.Commodities.Lumber)
	elseif (ai_faction.Commodities.Lumber > 800 * 2 and ai_faction.Income.Lumber > 0) then -- if the AI has a regular lumber income, there's no need to keep a large quantity of it stored
		ai_faction.Trade.Lumber = ai_faction.Trade.Lumber + (ai_faction.Commodities.Lumber - 800 * 2)
	elseif (ai_faction.Commodities.Lumber > 800 * 4) then -- if the AI doesn't have a regular lumber income, then only sell if more lumber is stored
		ai_faction.Trade.Lumber = ai_faction.Trade.Lumber + (ai_faction.Commodities.Lumber - 800 * 4)
	end
end

function AIDoDiplomacy(ai_faction)
	for province_i, key in ipairs(ai_faction.OwnedProvinces) do
		for second_key, second_value in pairs(WorldMapProvinces) do
			if (WorldMapProvinces[second_key].Owner ~= ai_faction.Name and WorldMapProvinces[second_key].Owner ~= "" and WorldMapProvinces[second_key].Owner ~= "Ocean") then
				if (round(GetMilitaryScore(WorldMapProvinces[second_key], false, true) * 3 / 2) < GetMilitaryScore(WorldMapProvinces[key], false, false)) then -- only attack if military score is 150% or greater of that of the province to be attacked
					if (AtPeace(ai_faction) and ai_faction.Diplomacy[GetFactionKeyFromName(WorldMapProvinces[second_key].Owner)] ~= "War" and ProvinceHasBorderWith(WorldMapProvinces[key], WorldMapProvinces[second_key]) and round(GetFactionMilitaryScore(WorldMapProvinces[second_key].Owner) * 9 / 4) < GetFactionMilitaryScore(ai_faction.Name)) then -- only attack if military score is 225% or greater of that of the province to be attacked
						DeclareWar(ai_faction.Name, WorldMapProvinces[second_key].Owner)
					end
				end
			end
		end
	end
end

function AIConsiderOffers(ai_faction)
	for key, value in pairs(Factions) do
		if (ai_faction.Diplomacy[key] == "Peace Offered") then
			if (round(GetFactionMilitaryScore(ai_faction.Name) * 3 / 2) < GetFactionMilitaryScore(Factions[key].Name)) then -- only accept peace if enemy's forces are 50% greater than own forces
				RespondPeaceOffer(Factions[key].Name, ai_faction.Name, true)
			else
				RespondPeaceOffer(Factions[key].Name, ai_faction.Name, false)
			end
		end
	end
end

function IsBuildingAvailable(province, unit_type)
	if (province.Owner ~= "Ocean" and GetUnitTypeData(unit_type, "Civilization") ~= province.Civilization) then
		return false
	end

	local has_required_buildings = true
	if (table.getn(GetUnitTypeRequiredBuildings(unit_type)) > 0) then
		for i=1,table.getn(GetUnitTypeRequiredBuildings(unit_type)) do
			if (province.SettlementBuildings[string.gsub(GetUnitTypeRequiredBuildings(unit_type)[i], "-", "_")] < 2) then
				has_required_buildings = false
			end
		end
	end
	if (has_required_buildings == false) then
		return false
	end
	
	return true
end

function CanBuildStructure(province, unit_type)
	if (province.SettlementBuildings[string.gsub(unit_type, "-", "_")] == 2) then -- can't build if already built
		return false
	end

	if (GetFactionFromName(province.Owner).Gold < GetUnitTypeData(unit_type, "Costs", "gold") or GetFactionFromName(province.Owner).Commodities.Lumber < GetUnitTypeData(unit_type, "Costs", "lumber")) then
		return false
	end
	
	return IsBuildingAvailable(province, unit_type)
end

function BuildStructure(province, unit_type)
	if (CanBuildStructure(province, unit_type)) then
		for i, unitName in ipairs(Units) do -- can only build one building at a time in a province, so if another one is already being built there, cancel that
			if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") and GetUnitTypeData(unitName, "Class") ~= "farm" and GetUnitTypeData(unitName, "Class") ~= "watch-tower" and GetUnitTypeData(unitName, "Class") ~= "guard-tower") then
				if (province.SettlementBuildings[string.gsub(unitName, "-", "_")] == 1) then
					CancelBuildStructure(province, unitName)
				end
			end
		end

		province.SettlementBuildings[string.gsub(unit_type, "-", "_")] = 1
		GetFactionFromName(province.Owner).Gold = GetFactionFromName(province.Owner).Gold - GetUnitTypeData(unit_type, "Costs", "gold")
		GetFactionFromName(province.Owner).Commodities.Lumber = GetFactionFromName(province.Owner).Commodities.Lumber - GetUnitTypeData(unit_type, "Costs", "lumber")
	end
end

function CancelBuildStructure(province, unit_key)
	if (province.SettlementBuildings[string.gsub(unit_type, "-", "_")] == 1) then
		province.SettlementBuildings[string.gsub(unit_type, "-", "_")] = 0
		GetFactionFromName(province.Owner).Gold = GetFactionFromName(province.Owner).Gold + GetUnitTypeData(unit_type, "Costs", "gold")
		GetFactionFromName(province.Owner).Commodities.Lumber = GetFactionFromName(province.Owner).Commodities.Lumber + GetUnitTypeData(unit_type, "Costs", "lumber")
	end
end

function CanTrainUnit(province, unit_type)
	if (GetFactionFromName(province.Owner).Gold < GetUnitTypeData(unit_type, "Costs", "gold") or GetFactionFromName(province.Owner).Commodities.Lumber < GetUnitTypeData(unit_type, "Costs", "lumber")) then
		return false
	end

	return IsUnitAvailableForTraining(province, unit_type)
end

function IsUnitAvailableForTraining(province, unit_type)
	if (GetUnitTypeData(unit_type, "Civilization") ~= province.Civilization) then
		return false
	end
	
	if (ProvinceHasBuildingType(province, GetUnitTypeInterfaceState(unit_type)) == false) then
		return false
	end

	local has_required_buildings = true
	if (table.getn(GetUnitTypeRequiredBuildings(unit_type)) > 0) then
		for i=1,table.getn(GetUnitTypeRequiredBuildings(unit_type)) do
			if (province.SettlementBuildings[string.gsub(GetUnitTypeRequiredBuildings(unit_type)[i], "-", "_")] < 2) then
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
		province.UnderConstructionUnits[string.gsub(unit_type, "-", "_")] = province.UnderConstructionUnits[string.gsub(unit_type, "-", "_")] + 1
		GetFactionFromName(province.Owner).Gold = GetFactionFromName(province.Owner).Gold - GetUnitTypeData(unit_type, "Costs", "gold")
		GetFactionFromName(province.Owner).Commodities.Lumber = GetFactionFromName(province.Owner).Commodities.Lumber - GetUnitTypeData(unit_type, "Costs", "lumber")
	end
end

function TrainUnitCancel(province, unit_type)
	if (province.UnderConstructionUnits[string.gsub(unit_type, "-", "_")] >= 1) then
		province.UnderConstructionUnits[string.gsub(unit_type, "-", "_")] = province.UnderConstructionUnits[string.gsub(unit_type, "-", "_")] - 1
		GetFactionFromName(province.Owner).Gold = GetFactionFromName(province.Owner).Gold + GetUnitTypeData(unit_type, "Costs", "gold")
		GetFactionFromName(province.Owner).Commodities.Lumber = GetFactionFromName(province.Owner).Commodities.Lumber + GetUnitTypeData(unit_type, "Costs", "lumber")
	end
end

function UseBuilding(province, unit_type)
	InterfaceState = GetUnitTypeData(unit_type, "Class")
end

function IsTechnologyAvailable(province, unit_type)
	if (CUpgrade:Get(unit_type).Civilization ~= province.Civilization) then
		return false
	end

	if (GetFactionFromName(province.Owner).Technologies[string.gsub(unit_type, "-", "_")] == 2) then -- can't research if already researched
		return false
	end

	local has_required_technologies = true
	if (table.getn(GetUnitTypeRequiredTechnologies(unit_type)) > 0) then
		for i=1,table.getn(GetUnitTypeRequiredTechnologies(unit_type)) do
			if (GetFactionFromName(province.Owner).Technologies[string.gsub(GetUnitTypeRequiredTechnologies(unit_type)[i], "-", "_")] < 2) then
				has_required_technologies = false
			end
		end
	end
	if (has_required_technologies == false) then
		return false
	end
	
	local has_required_buildings = true
	if (table.getn(GetUnitTypeRequiredBuildings(unit_type)) > 0) then
		for i=1,table.getn(GetUnitTypeRequiredBuildings(unit_type)) do
			if (province.SettlementBuildings[string.gsub(GetUnitTypeRequiredBuildings(unit_type)[i], "-", "_")] < 2) then
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
	if (GetFactionFromName(province.Owner).Gold < CUpgrade:Get(unit_type).Costs[1] or GetFactionFromName(province.Owner).Commodities.Lumber < CUpgrade:Get(unit_type).Costs[2]) then
		return false
	end
	
	return IsTechnologyAvailable(province, unit_type)
end

function ResearchTechnology(province, unit_type)
	if (CanResearchTechnology(province, unit_type)) then
		for i, unitName in ipairs(Units) do
			if (string.find(unitName, "upgrade-") ~= nil) then
				if (GetFactionFromName(province.Owner).Technologies[string.gsub(unitName, "-", "_")] == 1) then
					CancelResearchTechnology(province, unitName) -- it doesn't matter that the province given here is this one and not the one used to originally set that technology to be researched, since the CancelResearchTechnology function only refers to the province's owner
				end
			end
		end

		GetFactionFromName(province.Owner).Technologies[string.gsub(unit_type, "-", "_")] = 1
		GetFactionFromName(province.Owner).Gold = GetFactionFromName(province.Owner).Gold - CUpgrade:Get(unit_type).Costs[1]
		GetFactionFromName(province.Owner).Commodities.Lumber = GetFactionFromName(province.Owner).Commodities.Lumber - CUpgrade:Get(unit_type).Costs[2]
	end
end

function CancelResearchTechnology(province, unit_type)
	if (GetFactionFromName(province.Owner).Technologies[string.gsub(unit_type, "-", "_")] == 1) then
		GetFactionFromName(province.Owner).Technologies[string.gsub(unit_type, "-", "_")] = 0
		GetFactionFromName(province.Owner).Gold = GetFactionFromName(province.Owner).Gold + CUpgrade:Get(unit_type).Costs[1]
		GetFactionFromName(province.Owner).Commodities.Lumber = GetFactionFromName(province.Owner).Commodities.Lumber + CUpgrade:Get(unit_type).Costs[2]
	end
end

function ClearGrandStrategyVariables()
	GrandStrategy = false
	GrandStrategyEventMap = false	
	GrandStrategyBattle = false	
	WorldMapOffsetX = nil
	WorldMapOffsetY = nil
	GrandStrategyWorld = nil
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
	AttackingUnits = nil
	AttackedProvince = nil
	TileProvinces = nil
	InterfaceState = nil
	GrandStrategyCommodities = nil
	GrandStrategyEvents = nil
	EventFaction = nil
	WorldMapTiles = nil
	WorldMapResources = nil

	OnScreenTiles = nil
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
	for i, unitName in ipairs(Units) do
		if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") and GetUnitTypeData(unitName, "Class") ~= "farm" and GetUnitTypeData(unitName, "Class") ~= "watch-tower" and GetUnitTypeData(unitName, "Class") ~= "guard-tower") then
			if (GetUnitTypeData(unitName, "Class") == building_type and (province.Civilization == "" or IsBuildingAvailable(province, unitName)) and province.SettlementBuildings[string.gsub(unitName, "-", "_")] == 2) then
				return true
			end
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

function TileHasResource(tile_x, tile_y, resource)
	for i=1,table.getn(WorldMapResources[resource]) do
		if (tile_x == WorldMapResources[resource][i][1] and tile_y == WorldMapResources[resource][i][2]) then
			return true
		end
	end

	return false
end

function GetFactionMilitaryScore(faction)
	local military_score = 0
	for province_i, key in ipairs(GetFactionFromName(faction).OwnedProvinces) do
		military_score = military_score + GetMilitaryScore(WorldMapProvinces[key], false, true)
	end
	return military_score
end

function GetMilitaryScore(province, attacker, count_heroes)
	local units
	local faction
	if (attacker == false) then
		units = province.Units
		faction = province.Owner
	else
		if (province.AttackedBy == "") then
			return 0
		else
			units = province.AttackingUnits
			faction = province.AttackedBy
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

	local military_score = 0
	for i, unitName in ipairs(Units) do
		if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0) then
			if (GetUnitTypeData(unitName, "Class") == "infantry") then
				military_score = military_score + (units[string.gsub(unitName, "-", "_")] * (50 + infantry_military_score_bonus))
			elseif (GetUnitTypeData(unitName, "Class") == "veteran-infantry") then
				military_score = military_score + (units[string.gsub(unitName, "-", "_")] * (75 + infantry_military_score_bonus))
			elseif (GetUnitTypeData(unitName, "Class") == "heroic-infantry") then
				military_score = military_score + (units[string.gsub(unitName, "-", "_")] * (100 + infantry_military_score_bonus))
			elseif (GetUnitTypeData(unitName, "Class") == "archer") then
				military_score = military_score + (units[string.gsub(unitName, "-", "_")] * (60 + archer_military_score_bonus))
			elseif (GetUnitTypeData(unitName, "Class") == "priest") then
				military_score = military_score + (units[string.gsub(unitName, "-", "_")] * 60)
			elseif (GetUnitTypeData(unitName, "Class") == "siege-engine") then
				military_score = military_score + (units[string.gsub(unitName, "-", "_")] * (100 + catapult_military_score_bonus))
			elseif (GetUnitTypeData(unitName, "Class") == "flying-rider") then
				military_score = military_score + (units[string.gsub(unitName, "-", "_")] * (150 + flying_rider_military_score_bonus))
			-- Heroes
			elseif (count_heroes and string.find(unitName, "hero") ~= nil and ((attacker == false and province.Heroes[string.gsub(unitName, "-", "_")] == 2) or (attacker == true and province.Heroes[string.gsub(unitName, "-", "_")] == 3))) then
				if (unitName == "unit-hero-rugnur") then
					military_score = military_score + (50 + infantry_military_score_bonus)
				elseif (unitName == "unit-hero-rugnur-steelclad" or unitName == "unit-hero-baglur" or unitName == "unit-hero-greebo") then
					military_score = military_score + (75 + infantry_military_score_bonus)
				elseif (unitName == "unit-hero-rugnur-thane" or unitName == "unit-hero-baglur-thane" or unitName == "unit-hero-thursagan" or unitName == "unit-hero-durstorn") then
					military_score = military_score + (100 + infantry_military_score_bonus + (10 * (wyr.preferences.Heroes[GetUnitTypeData(unitName, "DefaultName")].level - GetUnitTypeData(unitName, "StartingLevel"))))
				end
			end
		end
	end
	return military_score
end

function CenterMapOnTile(tile_x, tile_y)
	WorldMapOffsetX = math.floor(tile_x - (((Video.Width - 16 - 176) / 64) / 2)) + 1
	if (WorldMapOffsetX < 0) then
		WorldMapOffsetX = 0
	elseif (WorldMapOffsetX > table.getn(WorldMapTiles[1]) - 1 - math.floor((Video.Width - 16 - 176) / 64)) then
		WorldMapOffsetX = table.getn(WorldMapTiles[1]) - 1 - math.floor((Video.Width - 16 - 176) / 64)
	end

	WorldMapOffsetY = math.floor(tile_y - (((Video.Height - 16 - 16) / 64) / 2)) + 1
	if (WorldMapOffsetY < 0) then
		WorldMapOffsetY = 0
	elseif (WorldMapOffsetY > table.getn(WorldMapTiles) - 1 - math.floor((Video.Height - 16 - 16) / 64)) then
		WorldMapOffsetY = table.getn(WorldMapTiles) - 1 - math.floor((Video.Height - 16 - 16) / 64)
	end
end

function DeclareWar(faction_from, faction_to)
	if (faction_from ~= "" and faction_to ~= "") then
		GetFactionFromName(faction_from).Diplomacy[GetFactionKeyFromName(faction_to)] = "War"
		GetFactionFromName(faction_to).Diplomacy[GetFactionKeyFromName(faction_from)] = "War"
	end

	if (faction_to == GrandStrategyFaction.Name) then -- if the player was declared war on, notify him
		local menu = WarGrandStrategyGameMenu(panel(1))

		menu:addLabel("War Declared!", 128, 11)

		local l = MultiLineLabel()
		l:setFont(Fonts["game"])
		l:setSize(228, 128)
		l:setLineWidth(228)
		menu:add(l, 14, 35)
		l:setCaption("My lord, the " .. GetFactionFullName(faction_from) .. " has declared war upon us!")

		menu:addFullButton("~!OK", "o", 16, 248,
			function()
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
		local menu = WarGrandStrategyGameMenu(panel(1))

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
				menu:stop()
			end)
		menu:addFullButton("~!Reject", "r", 16, 248 - (36 * 0),
			function()
				RespondPeaceOffer(faction_from, faction_to, false)
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
		menu:setPosition(176 + (Video.Width - 176 - menu:getWidth()) / 2,
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
	
	if (event.Year ~= nil and event.Year ~= GrandStrategyYear) then
		return false
	end
	
	if (event.RequiredEvents ~= nil) then -- only works for non-persistent events
		for i, required_event in pairs(event.RequiredEvents) do
			if (GrandStrategyEvents[required_event] ~= nil) then
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
	
	if (event.Provinces ~= nil and event.Units ~= nil) then
		for key, value in pairs(event.Provinces) do
			for i, unitName in ipairs(Units) do
				if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0) then
					if (event.Units[string.gsub(unitName, "-", "_")] ~= nil and event.Provinces[key] == true and WorldMapProvinces[key].Owner == faction.Name and WorldMapProvinces[key].Units[string.gsub(unitName, "-", "_")] < event.Units[string.gsub(unitName, "-", "_")]) then
						return false
					end
				end
			end
		end
	end

	if (event.Provinces ~= nil and event.Heroes ~= nil) then
		for key, value in pairs(event.Provinces) do
			for i, unitName in ipairs(Units) do
				if (string.find(unitName, "upgrade-") == nil and string.find(unitName, "hero") ~= nil) then
					if (event.Heroes[string.gsub(unitName, "-", "_")] ~= nil and event.Provinces[key] == true and WorldMapProvinces[key].Owner == faction.Name and (WorldMapProvinces[key].Heroes[string.gsub(unitName, "-", "_")] == 2) ~= event.Heroes[string.gsub(unitName, "-", "_")]) then
						return false
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
		
	if (event.RandomChance ~= nil and SyncRand(100) >= event.RandomChance) then
		return false
	end
	
	return true
end

function GrandStrategyEvent(faction, event)
	if (faction == GrandStrategyFaction) then
		local menu = WarGrandStrategyGameMenu(panel(5))
		menu:resize(352, 352)

		menu:addLabel(event.Name, 176, 11)

		local l = MultiLineLabel()
		l:setFont(Fonts["game"])
		l:setSize(324, 208)
		l:setLineWidth(324)
		if (event_icon == nil) then
			menu:add(l, 14, 76)
		else
			menu:add(l, 14, 112)
		end
		l:setCaption(event.Description)

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
			local option_hotkey = ""		
			if (string.find(event.Options[i], "~!") ~= nil) then
				option_hotkey = string.sub(string.match(event.Options[i], "~!%a"), 3)
				option_hotkey = string.lower(option_hotkey)
			end

			menu:addFullButton(event.Options[i], option_hotkey, 176 - (224 / 2), 352 - 40 * (table.getn(event.Options) - (i - 1)),
				function(s)
					menu:stop()
					event.OptionEffects[i]()
				end
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

function GetCommodityPrice(commodity)
	if (commodity == "Lumber") then
		return GrandStrategyCommodities.Lumber.Price -- price for every 100 lumber
	end
	return 0
end

function PerformTrade(importer_faction, exporter_faction, commodity)
	if (math.abs(importer_faction.Trade[commodity]) > exporter_faction.Trade[commodity]) then
		importer_faction.Commodities[commodity] = importer_faction.Commodities[commodity] + exporter_faction.Trade[commodity]
		exporter_faction.Commodities[commodity] = exporter_faction.Commodities[commodity] - exporter_faction.Trade[commodity]

		importer_faction.Gold = importer_faction.Gold - round(exporter_faction.Trade[commodity] * GetCommodityPrice(commodity) / 100)
		exporter_faction.Gold = exporter_faction.Gold + round(exporter_faction.Trade[commodity] * GetCommodityPrice(commodity) / 100)

		importer_faction.Trade[commodity] = importer_faction.Trade[commodity] + exporter_faction.Trade[commodity]
		exporter_faction.Trade[commodity] = 0
	else
		importer_faction.Commodities[commodity] = importer_faction.Commodities[commodity] + math.abs(importer_faction.Trade[commodity])
		exporter_faction.Commodities[commodity] = exporter_faction.Commodities[commodity] - math.abs(importer_faction.Trade[commodity])

		importer_faction.Gold = importer_faction.Gold - round(math.abs(importer_faction.Trade[commodity]) * GetCommodityPrice(commodity) / 100)
		exporter_faction.Gold = exporter_faction.Gold + round(math.abs(importer_faction.Trade[commodity]) * GetCommodityPrice(commodity) / 100)

		exporter_faction.Trade[commodity] = exporter_faction.Trade[commodity] + importer_faction.Trade[commodity]
		importer_faction.Trade[commodity] = 0
	end
end

function DoEvents()
	-- process events
	for key, value in pairs(Factions) do
		for event_key, event_value in pairs(GrandStrategyEvents) do
			if (CanTriggerEvent(Factions[key], GrandStrategyEvents[event_key])) then
				EventFaction = Factions[key]
				GrandStrategyEvent(Factions[key], GrandStrategyEvents[event_key])
				break -- only one event per faction per turn
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
		end
	end
	
	new_faction.Gold = old_faction.Gold
	new_faction.Commodities = old_faction.Commodities
	new_faction.Technologies = old_faction.Technologies
	new_faction.Trade = old_faction.Trade

	for key, value in pairs(Factions) do -- if the defender lost his last province, end wars between him and other factions
		Factions[key].Diplomacy[new_faction_key] = Factions[key].Diplomacy[old_faction_key]
		Factions[new_faction_key].Diplomacy[key] = Factions[old_faction_key].Diplomacy[key]
		
		Factions[key].Diplomacy[old_faction_key] = "Peace"
		Factions[old_faction_key].Diplomacy[key] = "Peace"
	end

	if (GrandStrategyFaction == old_faction) then
		GrandStrategyFaction = new_faction
	end

	DrawMinimap()
	DrawGrandStrategyInterface()
	DrawOnScreenTiles()
end

function SetWorldMapTile(x, y, tile_type)
	if (x >= 0 and x < table.getn(WorldMapTiles[1]) and y >= 0 and y < table.getn(WorldMapTiles)) then
		WorldMapTiles[y+1][x+1] = tile_type
	end
end

function GetUnitTypeUpkeep(unit_type)
	if (GetUnitTypeData(unit_type, "Class") == "infantry" or GetUnitTypeData(unit_type, "Class") == "veteran-infantry" or GetUnitTypeData(unit_type, "Class") == "heroic-infantry") then
		return 25
	elseif (GetUnitTypeData(unit_type, "Class") == "archer") then
		return 25
	elseif (GetUnitTypeData(unit_type, "Class") == "siege-engine") then
		return 50
	elseif (GetUnitTypeData(unit_type, "Class") == "priest") then
		return 25
	elseif (GetUnitTypeData(unit_type, "Class") == "flying-rider") then
		return 50
	else
		return 0
	end
end

function GetUnitTypeInterfaceState(unit_type)
	if (string.find(unit_type, "upgrade-") == nil) then
		if (GetUnitTypeData(unit_type, "Class") == "infantry") then
			return "barracks"
		elseif (GetUnitTypeData(unit_type, "Class") == "archer") then
			return "barracks"
		elseif (GetUnitTypeData(unit_type, "Class") == "siege-engine") then
			return "barracks"
		elseif (GetUnitTypeData(unit_type, "Class") == "priest") then
			return "barracks" -- should be temple, but make it barracks for now to allow gnomish herbalists to be trained
		elseif (GetUnitTypeData(unit_type, "Class") == "flying-rider") then
			return "aviary"
		else
			return ""
		end
	else
		if (CUpgrade:Get(unit_type).Class == "melee-weapon-1" or CUpgrade:Get(unit_type).Class == "melee-weapon-2" or CUpgrade:Get(unit_type).Class == "bronze-shield" or CUpgrade:Get(unit_type).Class == "iron-shield" or CUpgrade:Get(unit_type).Class == "siege-projectile-1" or CUpgrade:Get(unit_type).Class == "siege-projectile-2") then
			return "smithy"
		elseif (CUpgrade:Get(unit_type).Class == "ranged-projectile-1" or CUpgrade:Get(unit_type).Class == "ranged-projectile-2") then
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
		elseif (GetUnitTypeData(unit_type, "Class") == "archer") then
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
		elseif (GetUnitTypeData(unit_type, "Class") == "barracks" or GetUnitTypeData(unit_type, "Class") == "lumber-mill" or GetUnitTypeData(unit_type, "Class") == "smithy") then
			if (GetCivilizationClassUnitType("town-hall", GetUnitTypeData(unit_type, "Civilization")) ~= nil) then
				table.insert(required_buildings, GetCivilizationClassUnitType("town-hall", GetUnitTypeData(unit_type, "Civilization")))
			end
		end
	else
		if (CUpgrade:Get(unit_type).Class == "melee-weapon-1" or CUpgrade:Get(unit_type).Class == "melee-weapon-2" or CUpgrade:Get(unit_type).Class == "bronze-shield" or CUpgrade:Get(unit_type).Class == "iron-shield") then
			if (GetCivilizationClassUnitType("smithy", CUpgrade:Get(unit_type).Civilization) ~= nil) then
				table.insert(required_buildings, GetCivilizationClassUnitType("smithy", CUpgrade:Get(unit_type).Civilization))
			end
		elseif (CUpgrade:Get(unit_type).Class == "ranged-projectile-1" or CUpgrade:Get(unit_type).Class == "ranged-projectile-2") then
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
		end
	end
	return required_buildings
end

function GetUnitTypeRequiredTechnologies(unit_type)
	local required_technologies = {}
	if (string.find(unit_type, "upgrade-") == nil) then
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
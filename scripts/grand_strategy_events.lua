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
--      grand_strategy_events.lua - Defines the grand strategy events.
--
--      (c) Copyright 2015 by Andre Novellino Gouvêa
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

function LoadEvents(world)
	GrandStrategyEvents = nil
	GrandStrategyEvents = {}

	local EarthEvents = {
		OnTheVanaquisl = {
			Name = "On the Vanaquisl",
			Description = "Our people hunger for new land: the steppes we live in are no longer enough for our sustenance. Neighboring us are the Vana people, and adding their lands to our own may well solve our dilemma. Shall we attack them?",
			Conditions = function(s)
				if (
					EventFaction.Civilization == "germanic"
					and EventFaction.Name == "Asa Tribe"
					and WorldMapProvinces.Astrakhan.Owner == EventFaction.Name
					and WorldMapProvinces.Don.Owner == "Vana Tribe"
					and WorldMapProvinces.Astrakhan.Units.unit_germanic_warrior >= 8 -- event only happens if player has gathered enough warriors for a raid
					and FactionHasBorderWith(Factions.AsaTribe, Factions.VanaTribe)
					and SyncRand(100) < 33
				) then
					return true
				else
					return false
				end
			end,
			Options = {"~!Attack them!", "~!Leave them alone"},
			OptionEffects = {
				function(s)
					if (GrandStrategyFaction ~= nil and GrandStrategyFaction.Name == "Asa Tribe") then
						GrandStrategyEventMap = true
						GetMapInfo("maps/earth/tanais.smp")
						RunMap("maps/earth/tanais.smp")
						GrandStrategyEventMap = false
						if (GameResult == GameVictory) then
							Factions.AsaTribe.Gold = Factions.AsaTribe.Gold + 1000 -- gold from raiding Vanaland
							Factions.VanaTribe.Gold = Factions.VanaTribe.Gold - 1000 -- gold lost from the raid
							WorldMapProvinces.Don.SettlementBuildings.unit_germanic_town_hall = 0
							WorldMapProvinces.Don.Units.unit_germanic_warrior = WorldMapProvinces.Don.Units.unit_germanic_warrior + 8 -- increase the quantity of warriors in Vanaland by 8, to make it defensible after this scenario is over
						end
						for i, unitName in ipairs(Units) do
							if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0) then
								WorldMapProvinces.Astrakhan.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.Astrakhan.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(0, "UnitTypesCount", unitName)
								WorldMapProvinces.Don.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.Don.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(1, "UnitTypesCount", unitName)
							end
						end
					elseif (GrandStrategyFaction ~= nil and GrandStrategyFaction.Name ~= "Asa Tribe" and GrandStrategyFaction.Name ~= "Vana Tribe") then
						for i, unitName in ipairs(Units) do
							if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0) then
								WorldMapProvinces.Astrakhan.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.Astrakhan.Units[string.gsub(unitName, "-", "_")]
								WorldMapProvinces.Don.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.Don.Units[string.gsub(unitName, "-", "_")]
							end
						end
						Factions.AsaTribe.Gold = Factions.AsaTribe.Gold + 1000 -- gold from raiding Vanaland
					elseif (GrandStrategyFaction ~= nil and GrandStrategyFaction.Name ~= "Asa Tribe" and GrandStrategyFaction.Name == "Vana Tribe") then
						GrandStrategyEvent(Factions.VanaTribe, GrandStrategyEvents.AsaRaid)
					end
				end,
				function(s)
				end
			}
		},
		AsaRaid = {
			Name = "Asa Raid!",
			Description = "The Asa people are coming with a large force to raid us, prepare our defenses!",
			Civilization = "germanic",
			Faction = "VanaTribe",
			TriggeredOnly = true,
			Options = {"~!Defend our homeland!"},
			OptionEffects = {
				function(s)
					if (GrandStrategyFaction ~= nil and GrandStrategyFaction.Name == "Vana Tribe") then
						GrandStrategyEventMap = true
						GetMapInfo("maps/earth/tanais.smp")
						GameSettings.Presets[0].Type = PlayerComputer
						RunMap("maps/earth/tanais.smp")
						GrandStrategyEventMap = false
						for i, unitName in ipairs(Units) do
							if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0) then
								WorldMapProvinces.Astrakhan.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.Astrakhan.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(0, "UnitTypesCount", unitName)
								WorldMapProvinces.Don.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.Don.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(1, "UnitTypesCount", unitName)
							end
						end
						if (GameResult == GameDefeat) then
							Factions.AsaTribe.Gold = Factions.AsaTribe.Gold + 1000 -- gold from raiding Vanaland
							Factions.VanaTribe.Gold = Factions.VanaTribe.Gold - 1000
						end
					end
				end
			}
		},
		WestwardMigration = {
			Name = "Westward Migration",
			Description = "The lands to the west besides Vanaland provide us with an alternative migration route, if we are to seek greener pastures. Shall we wander out of our homelands and migrate through them?",
			RequiredEvents = {
				OnTheVanaquisl = true
			},
			Conditions = function(s)
				if (
					EventFaction.Civilization == "germanic"
					and EventFaction.Name == "Asa Tribe"
					and WorldMapProvinces.Astrakhan.Owner == EventFaction.Name
					and WorldMapProvinces.Russia.Owner ~= EventFaction.Name
					and WorldMapProvinces.Astrakhan.Units.unit_germanic_warrior >= 8 -- event only happens if player has enough warriors to successfully migrate
					and ProvinceHasBorderWith(WorldMapProvinces.Astrakhan, WorldMapProvinces.Russia)
					and WorldMapProvinces.Russia.SettlementLocation[1] < WorldMapProvinces.Astrakhan.SettlementLocation[1] -- Russia must be to the west of Astrakhan, or else the event's name and description don't make sense
					and WorldMapProvinces.Brandenburg.SettlementLocation[1] < WorldMapProvinces.Russia.SettlementLocation[1] -- Brandenburg must be to the west of Russia
					and SyncRand(100) < 33
				) then
					return true
				else
					return false
				end
			end,
			Options = {"~!Migrate to the west", "The ~!steppes are our home"},
			OptionEffects = {
				function(s)
					if (GrandStrategyFaction ~= nil and GrandStrategyFaction.Name == "Asa Tribe") then
						GrandStrategyEventMap = true
						GetMapInfo("maps/earth/novgorod.smp")
						RunMap("maps/earth/novgorod.smp")
						GrandStrategyEventMap = false
						if (GameResult == GameVictory) then
							AcquireProvince(WorldMapProvinces.Brandenburg, "Asa Tribe")
							for i, unitName in ipairs(Units) do
								if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0) then
									WorldMapProvinces.Brandenburg.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.Astrakhan.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(0, "UnitTypesCount", unitName)
									WorldMapProvinces.Russia.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.Russia.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(1, "UnitTypesCount", unitName)
								end
							end
							AcquireProvince(WorldMapProvinces.Astrakhan, "")
							WorldMapProvinces.Astrakhan.Civilization = ""
							WorldMapProvinces.Astrakhan.Units.unit_germanic_warrior = 8 -- to make this province harder to conquer
							WorldMapProvinces.Brandenburg.Units.unit_germanic_worker = 0
							CenterMapOnTile(WorldMapProvinces.Brandenburg.SettlementLocation[1], WorldMapProvinces.Brandenburg.SettlementLocation[2])
						elseif (GameResult == GameDefeat) then
							for i, unitName in ipairs(Units) do
								if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0) then
									WorldMapProvinces.Russia.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.Russia.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(1, "UnitTypesCount", unitName)
								end
							end
							AcquireProvince(WorldMapProvinces.Astrakhan, "")
							WorldMapProvinces.Astrakhan.Civilization = ""
							WorldMapProvinces.Astrakhan.Units.unit_germanic_warrior = 8 -- to make this province harder to conquer
						end
					elseif (GrandStrategyFaction ~= nil and GrandStrategyFaction.Name ~= "Asa Tribe") then
						AcquireProvince(WorldMapProvinces.Brandenburg, "Asa Tribe")
						for i, unitName in ipairs(Units) do
							if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0) then
								WorldMapProvinces.Brandenburg.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.Astrakhan.Units[string.gsub(unitName, "-", "_")]
								WorldMapProvinces.Astrakhan.Units[string.gsub(unitName, "-", "_")] = 0
							end
						end
						AcquireProvince(WorldMapProvinces.Astrakhan, "")
						WorldMapProvinces.Astrakhan.Civilization = ""
						WorldMapProvinces.Astrakhan.Units.unit_germanic_warrior = 8 -- to make this province harder to conquer
					end
					DrawMinimap()
				end,
				function(s)
				end
			}
		},
		NorthwardsToTheSea = {
			Name = "Northwards to the Sea",
			Description = "The peninsula to our north seems promising for settlement... Shall we invade it and subdue its natives?",
			Conditions = function(s)
				if (
					EventFaction.Civilization == "germanic"
					and EventFaction.Name == "Asa Tribe"
					and WorldMapProvinces.Brandenburg.Owner == EventFaction.Name
					and WorldMapProvinces.Brandenburg.Units.unit_germanic_warrior >= 6 -- event only happens if player has enough warriors to successfully attack the province
					and ProvinceHasBorderWith(WorldMapProvinces.Brandenburg, WorldMapProvinces.Jutland)
--					and SyncRand(100) < 50
				) then
					return true
				else
					return false
				end
			end,
			Options = {"~!Yes", "~!No"},
			OptionEffects = {
				function(s)
					if (GrandStrategyFaction ~= nil and GrandStrategyFaction.Name == "Asa Tribe") then
						GrandStrategyEventMap = true
						GetMapInfo("maps/earth/jutland.smp")
						GameSettings.Presets[1].Type = PlayerComputer					
						RunMap("maps/earth/jutland.smp")
						GrandStrategyEventMap = false
						if (GameResult == GameVictory) then
							AcquireProvince(WorldMapProvinces.Jutland, "Asa Tribe")
							for i, unitName in ipairs(Units) do
								if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0) then
									WorldMapProvinces.Jutland.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.Brandenburg.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(4, "UnitTypesCount", unitName)
									WorldMapProvinces.Brandenburg.Units[string.gsub(unitName, "-", "_")] = 0
								end
							end
							AcquireProvince(WorldMapProvinces.Brandenburg, "")
							WorldMapProvinces.Brandenburg.Civilization = ""
							WorldMapProvinces.Brandenburg.Units.unit_germanic_warrior = 6
							WorldMapProvinces.Jutland.SettlementBuildings.unit_germanic_town_hall = 1
							CenterMapOnTile(WorldMapProvinces.Jutland.SettlementLocation[1], WorldMapProvinces.Jutland.SettlementLocation[2])
						elseif (GameResult == GameDefeat) then
							for i, unitName in ipairs(Units) do
								if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0) then
									WorldMapProvinces.Jutland.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.Jutland.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(1, "UnitTypesCount", unitName)
								end
							end
						end
					elseif (GrandStrategyFaction ~= nil and GrandStrategyFaction.Name ~= "Asa Tribe") then
						AcquireProvince(WorldMapProvinces.Jutland, "Asa Tribe")
						for i, unitName in ipairs(Units) do
							if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0) then
								WorldMapProvinces.Jutland.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.Brandenburg.Units[string.gsub(unitName, "-", "_")]
								WorldMapProvinces.Brandenburg.Units[string.gsub(unitName, "-", "_")] = 0
							end
						end
						AcquireProvince(WorldMapProvinces.Brandenburg, "")
						WorldMapProvinces.Brandenburg.Civilization = ""
						WorldMapProvinces.Brandenburg.Units.unit_germanic_warrior = 6
						WorldMapProvinces.Jutland.SettlementBuildings.unit_germanic_town_hall = 1
					end
					DrawMinimap()
				end,
				function(s)
				end
			}
		},
		GylvesRealm = {
			Name = "Gylve's Realm",
			Description = "After establishing ourselves in the Jutland peninsula, we now have the opportunity to sail across this short sea... what will await us? Shall we set sail, leaving your son Skjold to rule this peninsula?",
			Conditions = function(s)
				if (
					EventFaction.Civilization == "germanic"
					and EventFaction.Name == "Asa Tribe"
					and WorldMapProvinces.Jutland.Owner == EventFaction.Name
					and WorldMapProvinces.Jutland.Units.unit_germanic_warrior >= 8 -- event only happens if player has enough warriors to successfully attack the province
					and ProvinceHasBorderWith(WorldMapWaterProvinces.NorthSea, WorldMapProvinces.Jutland)
					and ProvinceHasBorderWith(WorldMapWaterProvinces.NorthSea, WorldMapProvinces.Gotaland)
--					and SyncRand(100) < 50
				) then
					return true
				else
					return false
				end
			end,
			Options = {"~!Embark!", "~!Seafaring is not for us.", "Play as S~!kjold"},
			OptionEffects = {
				function(s)
					if (GrandStrategyFaction ~= nil and GrandStrategyFaction.Name == "Asa Tribe") then
						GrandStrategyEventMap = true
						GetMapInfo("maps/earth/malmo.smp")
						RunMap("maps/earth/malmo.smp")
						GrandStrategyEventMap = false
						if (GameResult == GameVictory) then
							AcquireProvince(WorldMapProvinces.Gotaland, "Asa Tribe")
							AcquireProvince(WorldMapProvinces.Sweden, "Asa Tribe")
							FormFaction(EventFaction, Factions.SwedeTribe)
							for i, unitName in ipairs(Units) do
								if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0) then
									WorldMapProvinces.Sweden.Units[string.gsub(unitName, "-", "_")] = GetPlayerData(0, "UnitTypesCount", unitName)
								end
							end
							WorldMapProvinces.Sweden.SettlementBuildings.unit_germanic_town_hall = 1
							CenterMapOnTile(WorldMapProvinces.Sweden.SettlementLocation[1], WorldMapProvinces.Sweden.SettlementLocation[2])
						elseif (GameResult == GameDefeat) then
							for i, unitName in ipairs(Units) do
								if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0) then
									WorldMapProvinces.Gotaland.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.Gotaland.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(1, "UnitTypesCount", unitName)
								end
							end
						end
					elseif (GrandStrategyFaction ~= nil and GrandStrategyFaction.Name ~= "Asa Tribe") then
						AcquireProvince(WorldMapProvinces.Gotaland, "Asa Tribe")
						AcquireProvince(WorldMapProvinces.Sweden, "Asa Tribe")
						FormFaction(EventFaction, Factions.SwedeTribe)
						for i, unitName in ipairs(Units) do
							if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0) then
								WorldMapProvinces.Gotaland.Units[string.gsub(unitName, "-", "_")] = 0
								WorldMapProvinces.Sweden.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.Jutland.Units[string.gsub(unitName, "-", "_")] * 3 / 4
								WorldMapProvinces.Jutland.Units[string.gsub(unitName, "-", "_")] = 0
							end
						end
						WorldMapProvinces.Sweden.SettlementBuildings.unit_germanic_town_hall = 1
					end
					AcquireProvince(WorldMapProvinces.Jutland, "Dane Tribe")
					AcquireFactionTechnologies(Factions.DaneTribe, Factions.AsaTribe)
					DrawMinimap()
				end,
				function(s)
				end,
				function(s)
					AcquireProvince(WorldMapProvinces.Gotaland, "Asa Tribe")
					AcquireProvince(WorldMapProvinces.Sweden, "Asa Tribe")
					FormFaction(EventFaction, Factions.SwedeTribe)
					for i, unitName in ipairs(Units) do
						if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0) then
							WorldMapProvinces.Gotaland.Units[string.gsub(unitName, "-", "_")] = 0
							WorldMapProvinces.Sweden.Units[string.gsub(unitName, "-", "_")] = math.floor(WorldMapProvinces.Jutland.Units[string.gsub(unitName, "-", "_")] * 3 / 4)
							WorldMapProvinces.Jutland.Units[string.gsub(unitName, "-", "_")] = 0
						end
					end
					WorldMapProvinces.Sweden.SettlementBuildings.unit_germanic_town_hall = 1
					
					AcquireProvince(WorldMapProvinces.Jutland, "Dane Tribe")
					AcquireFactionTechnologies(Factions.DaneTribe, Factions.AsaTribe)
					GrandStrategyFaction = Factions.DaneTribe
					DrawMinimap()
				end
			}
		},
		DagsKingdom = { -- Dag is the first legendary king of Gotaland; Source: http://www.oe.eclipse.co.uk/nom/Sturlaug.htm
			Name = "Dag's Kingdom",
			Description = "Our tribesmen to the south have declared Dag as their king.",
			Conditions = function(s)
				if (
					EventFaction.Civilization == "germanic"
					and (EventFaction.Name == "Asa Tribe" or EventFaction.Name == "Swede Tribe")
					and WorldMapProvinces.Gotaland.Owner == EventFaction.Name
					and WorldMapProvinces.Gotaland.SettlementBuildings.unit_germanic_town_hall == 2
				) then
					return true
				else
					return false
				end
			end,
			Options = {"~!OK", "This means ~!war!", "Play as ~!Dag"},
			OptionEffects = {
				function(s)
					EqualizeProvinceUnits(EventFaction)
					AcquireProvince(WorldMapProvinces.Gotaland, "Goth Tribe")
					AcquireFactionTechnologies(Factions.GothTribe, EventFaction)
					WorldMapProvinces.Gotaland.Name = "Gothland"
					DrawMinimap()
				end,
				function(s)
					EqualizeProvinceUnits(EventFaction)
					AcquireProvince(WorldMapProvinces.Gotaland, "Goth Tribe")
					AcquireFactionTechnologies(Factions.GothTribe, EventFaction)
					WorldMapProvinces.Gotaland.Name = "Gothland"
					DrawMinimap()
					EventFaction.Diplomacy.GothTribe = "War"
					Factions.GothTribe.Diplomacy[GetFactionKeyFromName(EventFaction.Name)] = "War"
				end,
				function(s)
					EqualizeProvinceUnits(EventFaction)
					AcquireProvince(WorldMapProvinces.Gotaland, "Goth Tribe")
					AcquireFactionTechnologies(Factions.GothTribe, EventFaction)
					WorldMapProvinces.Gotaland.Name = "Gothland"
					GrandStrategyFaction = Factions.GothTribe
					DrawMinimap()
				end
			}
		},
		DivisionOfDomains = { -- Source: Snorri Sturlson, "Heimskringla", 1844.
			Name = "Division of Domains",
			Description = "After erecting a large temple in Sigtun, where rituals were performed in accordance to the customs of our people, domains were distributed to the temple priests, with them receiving good estates.",
			Conditions = function(s)
				if (
					EventFaction.Civilization == "germanic"
					and (EventFaction.Name == "Asa Tribe" or EventFaction.Name == "Swede Tribe")
					and WorldMapProvinces.Sweden.Owner == EventFaction.Name
					and WorldMapProvinces.Sweden.SettlementBuildings.unit_germanic_town_hall == 2 -- Hall of Sigtun
					-- should require a temple having been built? when those are implemented in the game
				) then
					return true
				else
					return false
				end
			end,
			Options = {"~!OK"},
			OptionEffects = {
				function(s)
					EventFaction.Research = EventFaction.Research + 3 -- promotion of the educated priest class
					EventFaction.Gold = EventFaction.Gold - 300 -- cost of the land grant
				end
			},
			OptionTooltips = {"-300 Gold, +3 Research"}
		},
		AsaLawgiving = { -- Source: Snorri Sturlson, "Heimskringla", 1844.
			Name = "Asa Lawgiving",
			Description = "We have established the same law in this new land as that had been in force in Asaland. Thus it is determined that dead men of consequence shall be buried in a mound raised to their memory, and all other warriors who had been distinguished for their manhood a standing stone shall be erected. Over all the land a tax shall be paid to the tribe's high chieftain, who has to defend the country from enemy or disturbance, and to pay the expense for the feasts commemorating a good year.",
			Conditions = function(s)
				if (
					EventFaction.Civilization == "germanic"
					and (EventFaction.Name == "Asa Tribe" or EventFaction.Name == "Swede Tribe")
					and WorldMapProvinces.Sweden.Owner == EventFaction.Name
					and WorldMapProvinces.Sweden.SettlementBuildings.unit_germanic_town_hall == 2 -- a town hall is needed, since without basic political organization there can be no lawgiving
				) then
					return true
				else
					return false
				end
			end,
			Options = {"~!OK"},
			OptionEffects = {
				function(s)
					EventFaction.Gold = EventFaction.Gold + 500 -- tax gains
				end
			},
			OptionTooltips = {"+500 Gold"}
		},
		TheBirthOfSaeming = { -- Source: Snorri Sturlson, "Heimskringla", 1844.
			Name = "The Birth of Saeming",
			Description = "Your wife has bore you a son, who has been named Saeming. The notables of the tribe have given you many gifts to commemorate his birth.",
			Conditions = function(s)
				if (
					EventFaction.Civilization == "germanic"
					and (EventFaction.Name == "Asa Tribe" or EventFaction.Name == "Swede Tribe")
					and WorldMapProvinces.Sweden.Owner == EventFaction.Name
				) then
					return true
				else
					return false
				end
			end,
			Options = {"~!OK"},
			OptionEffects = {
				function(s)
					EventFaction.Gold = EventFaction.Gold + 100 -- gifts
				end
			},
			OptionTooltips = {"+100 Gold"}
		},
		TheCurvedSwords = { -- Source: http://natmus.dk/en/historical-knowledge/denmark/prehistoric-period-until-1050-ad/the-bronze-age/the-roerby-swords/
			Name = "The Curved Swords",
			Description = "One of our artisans has crafted two curved bronze swords, one of which he engraved with the image of a ship. Although they aren't very practical for combat, these swords would serve to embellish ceremonies and bring prestige to their bearer.",
			Conditions = function(s)
				if (
					WorldMapProvinces.Jutland.Owner == EventFaction.Name
					and WorldMapProvinces.Jutland.Civilization == "germanic"
					and WorldMapProvinces.Jutland.SettlementBuildings.unit_germanic_smithy == 2 -- Jutland must have a smithy
					and SyncRand(100) < 1
				) then
					return true
				else
					return false
				end
			end,
			Options = {"~!Marvelous!"},
			OptionEffects = {
				function(s)
					EventFaction.Research = EventFaction.Research + 1
				end
			},
			OptionTooltips = {"+1 Research"}
		},
		TheSunChariot = { -- Source: http://natmus.dk/en/historical-knowledge/denmark/prehistoric-period-until-1050-ad/the-bronze-age/the-sun-chariot/
			Name = "The Sun Chariot",
			Description = "One of our artisans has made a delicate bronze figure of a sun chariot, representing the divine horse that carries the sun on its eternal journey across the sky.",
			Conditions = function(s)
				if (
					WorldMapProvinces.Jutland.Owner == EventFaction.Name
					and WorldMapProvinces.Jutland.Civilization == "germanic"
					and WorldMapProvinces.Jutland.SettlementBuildings.unit_germanic_smithy == 2 -- Jutland must have a smithy
					and SyncRand(100) < 1
				) then
					return true
				else
					return false
				end
			end,
			Options = {"~!Inspiring!"},
			OptionEffects = {
				function(s)
					EventFaction.Research = EventFaction.Research + 1
				end
			},
			OptionTooltips = {"+1 Research"}
		},
		NoblemansBurial = { -- the man from Muldbjerg; Source: http://natmus.dk/en/historical-knowledge/denmark/prehistoric-period-until-1050-ad/the-bronze-age/men-and-woman-in-the-bronze-age/the-man-from-muldbjerg/
			Name = "Nobleman's Burial",
			Description = "In 1365 BC, a nobleman was buried in the northwestern parts of the Jutland peninsula. Dressed in wool, he was laid down with his bronze sword in an oak coffin, which was then placed in a mound.",
			Conditions = function(s)
				if (
					WorldMapProvinces.Jutland.Owner == EventFaction.Name
					and WorldMapProvinces.Jutland.Civilization == "germanic"
					and GrandStrategyYear == -1365
				) then
					return true
				else
					return false
				end
			end,
			Options = {"~!OK"},
			OptionEffects = {
				function(s)
					EventFaction.Gold = EventFaction.Gold + 100 -- his inheritance? a small effect to give more purpose to this flavor event
				end
			},
			OptionTooltips = {"+100 Gold"}
		},
		TheSunShields = { -- Source: http://en.natmus.dk/historical-knowledge/denmark/prehistoric-period-until-1050-ad/the-bronze-age/the-bronze-age-shields/
			Name = "The Sun Shields",
			Description = "Our artisans have learned the craft of making circular bronze shields from the Celtic peoples to our south. These shields are often made to symbolize the sun and the cycle of the seasons.",
			Conditions = function(s)
				if (
					WorldMapProvinces.Jutland.Owner == EventFaction.Name
					and WorldMapProvinces.Jutland.Civilization == "germanic"
					and WorldMapProvinces.Jutland.SettlementBuildings.unit_germanic_smithy == 2 -- Jutland must have a smithy
					and EventFaction.Technologies.upgrade_germanic_bronze_shield == 2
				) then
					return true
				else
					return false
				end
			end,
			Options = {"~!Marvelous!"},
			OptionEffects = {
				function(s)
					EventFaction.Research = EventFaction.Research + 1
				end
			},
			OptionTooltips = {"+1 Research"}
		},
		MigrationOfTheVana = {
			Name = "Migration of the Vana",
			Description = "Our chieftains desire to migrate to the west, to more hospitable lands for settlement...",
			Conditions = function(s)
				if (
					EventFaction.Name == "Vana Tribe"
					and WorldMapProvinces.Don.Owner == EventFaction.Name
					and SyncRand(100) < 1
				) then
					return true
				else
					return false
				end
			end,
			RequiredEvents = {
				WestwardMigration = true
			},
			Options = {"~!OK", "This is our ~!home"},
			OptionEffects = {
				function(s)
					WorldMapProvinces.Don.SettlementBuildings.unit_germanic_town_hall = 0
					WorldMapProvinces.Don.SettlementBuildings.unit_germanic_barracks = 0
					WorldMapProvinces.Don.Units.unit_germanic_warrior = 0
					WorldMapProvinces.Aquitaine.Units.unit_germanic_warrior = 8
					WorldMapProvinces.Belgium.Units.unit_germanic_warrior = 8
					WorldMapProvinces.Burgundy.Units.unit_germanic_warrior = 8
					WorldMapProvinces.France.Units.unit_germanic_warrior = 8
					WorldMapProvinces.Italy.Units.unit_germanic_warrior = 8
					AcquireProvince(WorldMapProvinces.Don, "")
					AcquireFactionTechnologies(Factions.AeduiTribe, EventFaction)
					AcquireFactionTechnologies(Factions.ArverniTribe, EventFaction)
					AcquireFactionTechnologies(Factions.MenapiiTribe, EventFaction)
					AcquireFactionTechnologies(Factions.SequaniTribe, EventFaction)
					AcquireFactionTechnologies(Factions.Rome, EventFaction)
					AcquireProvince(WorldMapProvinces.Aquitaine, "Arverni Tribe")
					AcquireProvince(WorldMapProvinces.Belgium, "Menapii Tribe")
					AcquireProvince(WorldMapProvinces.Burgundy, "Sequani Tribe")
					AcquireProvince(WorldMapProvinces.France, "Aedui Tribe")
					AcquireProvince(WorldMapProvinces.Italy, "Rome")
					DrawMinimap()
				end,
				function(s)
				end
			}
		},
		BeldegsLands = { -- Beldeg (Baldr), the first legendary ruler of Westphalia (in the sagas he became ruler of Westphalia even before the conquest of Scandinavia, but here we make him later, belonging to the time of the germanic expansion to Westphalia); Source: "The Prose Edda", Snorri Sturlson, 1916, pp. 7-8.
			Name = "Beldeg's Lands",
			Description = "The territory of Westphalia has been entrusted to the warrior known by the name of Beldeg.",
			Conditions = function(s)
				if (
					EventFaction.Civilization == "germanic"
					and WorldMapProvinces.Rhineland.Owner == EventFaction.Name
					and WorldMapProvinces.Rhineland.SettlementBuildings.unit_germanic_town_hall == 2
				) then
					return true
				else
					return false
				end
			end,
			Options = {"~!OK", "This means ~!war!", "Play as ~!Beldeg"},
			OptionEffects = {
				function(s)
					EqualizeProvinceUnits(EventFaction) -- distribute the military units of the faction equally between the newly forming faction and the old one, to prevent one of them from easily conquering the other just by happening to have more units in their province
					AcquireProvince(WorldMapProvinces.Rhineland, "Saxon Tribe")
					AcquireFactionTechnologies(Factions.SaxonTribe, EventFaction)
					DrawMinimap()
					WorldMapProvinces.Brandenburg.Units.unit_germanic_warrior = 1 -- if the Rhineland has been conquered, reduce the quantity of warriors in Brandenburg too, so that a tribe won't lose too many warriors when expanding to it
				end,
				function(s)
					EqualizeProvinceUnits(EventFaction) -- distribute the military units of the faction equally between the newly forming faction and the old one, to prevent one of them from easily conquering the other just by happening to have more units in their province
					AcquireProvince(WorldMapProvinces.Rhineland, "Saxon Tribe")
					AcquireFactionTechnologies(Factions.SaxonTribe, EventFaction)
					DrawMinimap()
					WorldMapProvinces.Brandenburg.Units.unit_germanic_warrior = 1 -- if the Rhineland has been conquered, reduce the quantity of warriors in Brandenburg too, so that a tribe won't lose too many warriors when expanding to it
					EventFaction.Diplomacy.SaxonTribe = "War"
					Factions.SaxonTribe.Diplomacy[GetFactionKeyFromName(EventFaction.Name)] = "War"
				end,
				function(s)
					EqualizeProvinceUnits(EventFaction)
					AcquireProvince(WorldMapProvinces.Rhineland, "Saxon Tribe")
					AcquireFactionTechnologies(Factions.SaxonTribe, EventFaction)
					GrandStrategyFaction = Factions.SaxonTribe
					DrawMinimap()
					WorldMapProvinces.Brandenburg.Units.unit_germanic_warrior = 1 -- if the Rhineland has been conquered, reduce the quantity of warriors in Brandenburg too, so that a tribe won't lose too many warriors when expanding to it
				end
			}
		},
		SigisLands = { -- Sigi, the first legendary ruler of "Frankland" (in the sagas he became ruler of Frankland even before the conquest of Scandinavia, but here we make him later, belonging to the time of the germanic expansion to Frankland); Source: "The Prose Edda", Snorri Sturlson, 1916, p. 8.
			Name = "Sigi's Lands",
			Description = "The territory of Frankland has been entrusted to the warrior known as Sigi.",
			Conditions = function(s)
				if (
					EventFaction.Civilization == "germanic"
					and WorldMapProvinces.Netherlands.Owner == EventFaction.Name -- the Netherlands were the Franks' homelands
					and WorldMapProvinces.Netherlands.SettlementBuildings.unit_germanic_town_hall == 2
					and (GetFactionUnitTypeCount(EventFaction, "unit-germanic-warrior", false) + GetFactionUnitTypeCount(EventFaction, "unit-germanic-archer", false) >= 5) -- don't fire this event before the parts of the faction have enough means to defend themselves from invasion by the Danes
				) then
					return true
				else
					return false
				end
			end,
			Options = {"~!OK", "This means ~!war!", "Play as ~!Sigi"},
			OptionEffects = {
				function(s)
					EqualizeProvinceUnits(EventFaction)
					AcquireProvince(WorldMapProvinces.Netherlands, "Frank Tribe")
					AcquireFactionTechnologies(Factions.FrankTribe, EventFaction)
					DrawMinimap()
				end,
				function(s)
					EqualizeProvinceUnits(EventFaction)
					AcquireProvince(WorldMapProvinces.Netherlands, "Frank Tribe")
					AcquireFactionTechnologies(Factions.FrankTribe, EventFaction)
					DrawMinimap()
					EventFaction.Diplomacy.FrankTribe = "War"
					Factions.FrankTribe.Diplomacy[GetFactionKeyFromName(EventFaction.Name)] = "War"
				end,
				function(s)
					EqualizeProvinceUnits(EventFaction)
					AcquireProvince(WorldMapProvinces.Netherlands, "Frank Tribe")
					AcquireFactionTechnologies(Factions.FrankTribe, EventFaction)
					GrandStrategyFaction = Factions.FrankTribe
					DrawMinimap()
				end
			}
		},
		VegdegsKingdom = { -- Vegdeg, the first legendary ruler of "East Saxland" (in the sagas he became ruler of East Saxland even before the conquest of Scandinavia, but here we make him later, belonging to the time of the germanic expansion to East Germany); Source: "The Prose Edda", Snorri Sturlson, 1916, p. 7.
			Name = "Vegdeg's Kingdom",
			Description = "The lands to the southeast of the Jutland peninsula have been entrusted to the mighty Vegdeg, who has established himself as king there.",
			Conditions = function(s)
				if (
					EventFaction.Civilization == "germanic"
					and WorldMapProvinces.Brandenburg.Owner == EventFaction.Name -- the Netherlands were the Franks' homelands
					and WorldMapProvinces.Brandenburg.SettlementBuildings.unit_germanic_town_hall == 2
					and (GetFactionUnitTypeCount(EventFaction, "unit-germanic-warrior", false) + GetFactionUnitTypeCount(EventFaction, "unit-germanic-archer", false) >= 5) -- don't fire this event before the parts of the faction have enough means to defend themselves from invasion by the Danes
				) then
					return true
				else
					return false
				end
			end,
			Options = {"~!OK", "This means ~!war!", "Play as ~!Vegdeg"},
			OptionEffects = {
				function(s)
					EqualizeProvinceUnits(EventFaction)
					AcquireProvince(WorldMapProvinces.Brandenburg, "Suebi Tribe")
					AcquireFactionTechnologies(Factions.SuebiTribe, EventFaction)
					DrawMinimap()
				end,
				function(s)
					EqualizeProvinceUnits(EventFaction)
					AcquireProvince(WorldMapProvinces.Brandenburg, "Suebi Tribe")
					AcquireFactionTechnologies(Factions.SuebiTribe, EventFaction)
					DrawMinimap()
					EventFaction.Diplomacy.SuebiTribe = "War"
					Factions.SuebiTribe.Diplomacy[GetFactionKeyFromName(EventFaction.Name)] = "War"
				end,
				function(s)
					EqualizeProvinceUnits(EventFaction)
					AcquireProvince(WorldMapProvinces.Brandenburg, "Suebi Tribe")
					AcquireFactionTechnologies(Factions.SuebiTribe, EventFaction)
					GrandStrategyFaction = Factions.SuebiTribe
					DrawMinimap()
				end
			}
		},
		PytheasVoyageGoths = { -- Source: Carl Waldman and Catherine Mason, "Encyclopedia of European Peoples", 2006, p. 350; Source: Pliny the Elder, "The Natural History", 37.11.
			Name = "Pytheas' Voyage",
			Description = "A Greek scholar and explorer, Pytheas, arrived in our shores. He seemed interested in the island which is a day's sail away from us, due to the amber thrown upon its coast by waves in the spring. He also asked about our use of the material for fuel, and soon went back to the seas to continue his voyage.",
			Conditions = function(s)
				if (
					EventFaction.Civilization == "germanic"
					and WorldMapProvinces.Gotaland.Owner == EventFaction.Name
					and GrandStrategyYear >= -325 and GrandStrategyYear <= -319
					and SyncRand(100) < 50
				) then
					return true
				else
					return false
				end
			end,
			Options = {"A ~!wise man!"},
			OptionEffects = {
				function(s)
					EventFaction.Research = EventFaction.Research + 1
				end
			},
			OptionTooltips = {"+1 Research"}
		},
		TheSequanisAppeal = { -- Source: Dáithí Ó hÓgáin, "The Celts: A History", 2002, p. 138.
			Name = "The Sequani's Appeal",
			Description = "The Gaulish tribes of the Sequani and the Arverni are embroiled in a war with the Aedui. The Sequani have come to us asking to enlist our help in their war.",
			Conditions = function(s)
				if (
					EventFaction.Name == "Suebi Tribe"
					and WorldMapProvinces.Brandenburg.Owner == EventFaction.Name
					and ProvinceHasBorderWith(WorldMapProvinces.Bavaria, WorldMapProvinces.Brandenburg)
					and ProvinceHasBorderWith(WorldMapProvinces.Bavaria, WorldMapProvinces.France)
					and EventFaction.Diplomacy.AeduiTribe == "Peace"
					and EventFaction.Diplomacy.ArverniTribe == "Peace"
					and EventFaction.Diplomacy.SequaniTribe == "Peace"
					and Factions.ArverniTribe.Diplomacy.AeduiTribe == "War"
					and Factions.SequaniTribe.Diplomacy.AeduiTribe == "War"
				) then
					return true
				else
					return false
				end
			end,
			Options = {"~!Accept", "~!Reject"},
			OptionEffects = {
				function(s)
					EventFaction.Diplomacy.AeduiTribe = "War"
					Factions.AeduiTribe.Diplomacy[GetFactionKeyFromName(EventFaction.Name)] = "War"
				end,
				function(s)
				end
			}
		},
		TheBattleOfMagetobria = { -- Source: Dáithí Ó hÓgáin, "The Celts: A History", 2002, p. 138.
			Name = "The Battle of Magetobria",
			Description = "Under the leadership of Ariovistus, we have crossed the Rhine to aid the Sequani and the Arverni in defeating the Aedui, and now an Aedui army approaches the Sequani settlement of Magetobria...",
			Conditions = function(s)
				if (
					EventFaction.Name == "Suebi Tribe"
					and EventFaction.Diplomacy.AeduiTribe == "War"
					and EventFaction.Diplomacy.ArverniTribe == "Peace"
					and EventFaction.Diplomacy.SequaniTribe == "Peace"
				) then
					return true
				else
					return false
				end
			end,
			Options = {"~!OK"},
			OptionEffects = {
				function(s)
					if (GrandStrategyFaction ~= nil and GrandStrategyFaction.Name == "Suebi Tribe") then
						GrandStrategyEventMap = true
						GetMapInfo("maps/earth/belfort.smp")
						RunMap("maps/earth/belfort.smp")
						GrandStrategyEventMap = false
						if (GameResult == GameVictory) then
							AcquireProvince(WorldMapProvinces.Burgundy, "Suebi Tribe")
							for i, unitName in ipairs(Units) do
								if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0) then
									WorldMapProvinces.Burgundy.Units[string.gsub(unitName, "-", "_")] = GetPlayerData(0, "UnitTypesCount", unitName)
								end
							end
							WorldMapProvinces.France.Units.unit_germanic_warrior = 5 -- to give the Aedui something of a defense
							CenterMapOnTile(WorldMapProvinces.Burgundy.SettlementLocation[1], WorldMapProvinces.Burgundy.SettlementLocation[2])
						elseif (GameResult == GameDefeat) then
							for i, unitName in ipairs(Units) do
								if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0) then
									WorldMapProvinces.France.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.France.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(1, "UnitTypesCount", unitName)
								end
							end
						end
					elseif (GrandStrategyFaction ~= nil and GrandStrategyFaction.Name ~= "Suebi Tribe") then
						AcquireProvince(WorldMapProvinces.Burgundy, "Suebi Tribe")
						for i, unitName in ipairs(Units) do
							if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0) then
								WorldMapProvinces.France.Units[string.gsub(unitName, "-", "_")] = math.floor(WorldMapProvinces.Brandenburg.Units[string.gsub(unitName, "-", "_")] / 2) -- to give them something of a defense
								WorldMapProvinces.Burgundy.Units[string.gsub(unitName, "-", "_")] = math.floor(WorldMapProvinces.Brandenburg.Units[string.gsub(unitName, "-", "_")] * 3 / 4)
								WorldMapProvinces.Brandenburg.Units[string.gsub(unitName, "-", "_")] = 0
							end
						end
						WorldMapProvinces.Sweden.SettlementBuildings.unit_germanic_town_hall = 1
					end
					DrawMinimap()
				end
			}
		},
		Vornedskabet = { -- Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 20.
			Name = "Vornedskabet",
			Description = "Movement restrictions, or vornedskabet, have been introduced on the serfs of the island of Zealand.",
			Conditions = function(s)
				if (
					EventFaction.Name == "Denmark"
					and WorldMapProvinces.Jutland.Owner == EventFaction.Name
					and WorldMapProvinces.Jutland.Civilization == "germanic" -- because the name "Vornedskabet" is specific to the Danish language
					-- should only trigger after a technology for the appropriate time period has been researched
				) then
					return true
				else
					return false
				end
			end,
			Options = {"~!OK"},
			OptionEffects = {
				function(s)
					EventFaction.Gold = EventFaction.Gold + 500
					EventFaction.Research = EventFaction.Research - 5
				end
			},
			OptionTooltips = {"+500 Gold, -5 Research"}
		},
		NoblesClaimLegalJurisdictionPrivilege = { -- Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 20.
			Name = "Nobles Claim Legal Jurisdiction Privilege",
			Description = "The Danish nobility has been campaigning for the right of legal jurisdiction over their villagers.",
			Conditions = function(s)
				if (
					EventFaction.Name == "Denmark"
					-- should only trigger after a technology for the appropriate time period has been researched
				) then
					return true
				else
					return false
				end
			end,
			Options = {"~!Accept", "~!Reject"},
			OptionEffects = {
				function(s)
					EventFaction.Gold = EventFaction.Gold + 500
					EventFaction.Research = EventFaction.Research - 5
				end,
				function(s)
				end
			},
			OptionTooltips = {"+500 Gold, -5 Research", ""}
		},
		TheConfirmationOfSeignorialPrivilegesLivoniaEstonia = { -- Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 18.
			Name = "The Confirmation of Seignorial Privileges",
			Description = "The aristocrats of Livonia and Estonia claim an official confirmation of their privileges, which in fact goes beyond a mere statement of the status quo and accepts extended privileges for the landed nobility in these provinces.",
			Conditions = function(s)
				if (
					EventFaction.Name == "Teutonic Order" -- should also be possible for other countries, but let's leave this here for now so that this event doesn't trigger in antiquity
					and WorldMapProvinces.BalticLands.Owner == EventFaction.Name
					-- should only trigger after a technology for the appropriate time period has been researched
				) then
					return true
				else
					return false
				end
			end,
			Options = {"~!Accept", "~!Reject"},
			OptionEffects = {
				function(s)
					EventFaction.Gold = EventFaction.Gold + 500
					EventFaction.Research = EventFaction.Research - 5
				end,
				function(s)
				end
			},
			OptionTooltips = {"+500 Gold, -5 Research", ""}
		},
		MartinTrampesFarm = { -- Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 12.
			Name = "Martin Trampe's Farm",
			Description = "A serf from Pomerania called Martin Trampe had managed to accumulate enough money to buy his freedom for 60 reichstaler. After becoming a free man, he has been enterprising enough to gather sufficient funds to buy a large farm in the Brandenburg Uckermark, although to do so he had to willingly submit himself to hereditary subjection to the local lord. Should a man exchange his hard-won freedom for land?",
			Conditions = function(s)
				if (
					EventFaction.Civilization == "germanic"
					and WorldMapProvinces.Brandenburg.Owner == EventFaction.Name
					and WorldMapProvinces.Brandenburg.Civilization == "germanic"
					and GrandStrategyYear == 1667 -- events which relate to specific persons directly have dates attached to them
				) then
					return true
				else
					return false
				end
			end,
			Options = {"More ~!taxes for us!"},
			OptionEffects = {
				function(s)
					EventFaction.Gold = EventFaction.Gold + 50
				end
			},
			OptionTooltips = {"+50 Gold"}
		},
		TheUlozhenieLawCode = { -- Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 17.
			Name = "The Ulozhenie Law Code",
			Description = "A new law code has been enacted, with provisions greatly enhancing the subjection of the peasantry to the aristocracy.",
			Conditions = function(s)
				if (
					EventFaction.Name == "Russia"
					-- should have more conditions, such as technology-related upgrades
				) then
					return true
				else
					return false
				end
			end,
			Options = {"~!OK"},
			OptionEffects = {
				function(s)
					EventFaction.Gold = EventFaction.Gold + 500 -- greater exploitation of the peasantry bringing in more revenues
					EventFaction.Research = EventFaction.Research - 5 -- strengthening of serfdom increases long-term backwardness
				end
			},
			OptionTooltips = {"+500 Gold, -5 Research"}
		},
		TheSerfdomActForBohemiaAndMoravia = { -- Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 14.
			Name = "Serfdom Act for Bohemia and Moravia",
			Description = "A major reform of servile relationships has been enacted in Bohemia and Moravia, seeking to bring the economic and social aspects of life in the countryside in line with enlightened thought.",
			Conditions = function(s)
				if (
					EventFaction.Name == "Austria" -- should also be possible for other countries, but let's leave this here for now so that this event doesn't trigger in antiquity
					and WorldMapProvinces.Bohemia.Owner == EventFaction.Name
					-- should only trigger after an enlightenment-related technology has been researched
				) then
					return true
				else
					return false
				end
			end,
			Options = {"~!OK"},
			OptionEffects = {
				function(s)
					EventFaction.Gold = EventFaction.Gold + 500
					EventFaction.Research = EventFaction.Research + 1
				end
			},
			OptionTooltips = {"+500 Gold, +1 Research"}
		},
		TheLiftingOfTheVornedskabet = { -- Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 20.
			Name = "The Lifting of the Vornedskabet",
			Description = "The vornedskabet has been abolished in Zealand.",
			Conditions = function(s)
				if (
					EventFaction.Name == "Denmark"
					and WorldMapProvinces.Jutland.Owner == EventFaction.Name
					and WorldMapProvinces.Jutland.Civilization == "germanic"
					-- should only trigger after a technology for the appropriate time period has been researched
				) then
					return true
				else
					return false
				end
			end,
			RequiredEvents = {
				Vornedskabet = true
			},
			Options = {"~!OK"},
			OptionEffects = {
				function(s)
					EventFaction.Research = EventFaction.Research + 5
				end
			},
			OptionTooltips = {"+5 Research"}
		},
		Stavnsbandet = { -- Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 20.
			Name = "Stavnsbandet",
			Description = "The stavnsbandet, which consists of movement restrictions for the male population, has been introduced for military reasons. It will hurt our economy, however.",
			Conditions = function(s)
				if (
					EventFaction.Name == "Denmark"
					and WorldMapProvinces.Jutland.Owner == EventFaction.Name
					and WorldMapProvinces.Jutland.Civilization == "germanic" -- because the name "Vornedskabet" is specific to the Danish language
					and WorldMapProvinces.Jutland.SettlementBuildings.unit_germanic_barracks == 2
					-- should only trigger after a technology for the appropriate time period has been researched
				) then
					return true
				else
					return false
				end
			end,
			Options = {"~!OK"},
			OptionEffects = {
				function(s)
					EventFaction.Gold = EventFaction.Gold - 300
					EventFaction.Research = EventFaction.Research - 2
				end
			},
			OptionTooltips = {"+300 Gold, -2 Research"}
		},
		TheAbolitionOfSerfdomRussia = { -- Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 13.
			Name = "The Abolition of Serfdom",
			Description = "Serfdom has finally been abolished in Russia, paving the way for the modernization of agriculture.",
			Conditions = function(s)
				if (
					EventFaction.Name == "Russia"
					-- should have more conditions, such as technology-related upgrades
				) then
					return true
				else
					return false
				end
			end,
			RequiredEvents = {
				TheUlozhenieLawCode = true
			},
			Options = {"~!OK"},
			OptionEffects = {
				function(s)
					EventFaction.Research = EventFaction.Research + 100
				end
			},
			OptionTooltips = {"+100 Research"}
		}
	}
	
	local NidavellirEvents = {
		ChargeRugnurWithTheOutpost = {
			Name = "Charge Rugnur with the Outpost?",
			Description = "A young dwarf by the name of Rugnur could be an adequate choice for being encharged with one of our border outposts. Do you wish to appoint him for the job?",
			Conditions = function(s) -- can happen for clans other than the Norlund clan, if they conquer the Caverns of Chaincolt in time!
				if (GrandStrategyYear >= 25 and GrandStrategyYear <= 40 and WorldMapProvinces.CavernsOfChaincolt.Owner == EventFaction.Name and WorldMapProvinces.CavernsOfChaincolt.Civilization == "dwarf" and WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_rugnur == 0 and WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_rugnur_steelclad == 0 and WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_rugnur_thane == 0) then
					return true
				else
					return false
				end
			end,
			Options = {"~!Yes", "~!No"},
			OptionEffects = {
				function(s)
					if (GetArrayIncludes(wyr.preferences.Heroes.Rugnur.upgrades, "unit-dwarven-thane")) then
						WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_rugnur_thane = 2
					elseif (GetArrayIncludes(wyr.preferences.Heroes.Rugnur.upgrades, "unit-dwarven-steelclad")) then
						WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_rugnur_steelclad = 2
					else
						WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_rugnur = 2
					end
				end,
				function(s)
				end
			},
			OptionTooltips = {"Rugnur appears in Caverns of Chaincolt"}
		},
		TheSagesDeparture = {
			Name = "The Sage's Departure",
			Description = "Discontent with Durstorn's leadership, Thursagan has decided to leave us and move to the far north.",
			Civilization = "dwarf",
			Faction = "NorlundClan",
			Conditions = function(s)
				if (GrandStrategyYear <= 40 and SyncRand(100) < 10 and FactionHasHero(EventFaction, "unit-hero-thursagan") and FactionHasHero(EventFaction, "unit-hero-durstorn")) then
					return true
				else
					return false
				end
			end,
			Options = {"~!OK"},
			OptionEffects = {
				function(s)
					for province_i, key in ipairs(EventFaction.OwnedProvinces) do
						WorldMapProvinces[key].Heroes.unit_hero_thursagan = 0
					end
					if (WorldMapProvinces.NorthernWastelands.Owner ~= "Norlund Clan") then
						WorldMapProvinces.NorthernWastelands.Heroes.unit_hero_thursagan = 2
					end
				end
			},
			OptionTooltips = {"Thursagan leaves our clan's territory"}
		},
		StrikeABargain = {
			Name = "Strike a Bargain?",
			Description = "The gnomish king Pypo I has arrived with an army behind him near a small border outpost of ours in the Chaincolt Foothills, which is under the charge of a young dwarf named Rugnur.",
			Civilization = "dwarf",
			Faction = "NorlundClan",
			Conditions = function(s)
				if (
					WorldMapProvinces.CavernsOfChaincolt.Owner == EventFaction.Name
					and ProvinceHasHero(WorldMapProvinces.CavernsOfChaincolt, "unit-hero-rugnur") and ProvinceHasHero(WorldMapProvinces.CavernsOfChaincolt, "unit-hero-baglur") and FactionHasHero(EventFaction, "unit-hero-durstorn")
					and GetFactionProvinceCount(Factions.Untersberg) > 0
					and GetFactionProvinceCount(Factions.ShinsplitterClan) > 0
					and GetFactionProvinceCount(Factions.ShorbearClan) > 0
					and FactionHasBorderWith(Factions.NorlundClan, Factions.ShinsplitterClan)
					and FactionHasBorderWith(Factions.NorlundClan, Factions.ShorbearClan)
				) then
					return true
				else
					return false
				end
			end,
			Options = {"~!OK"},
			OptionEffects = {function(s)
				if ("Norlund Clan" == GrandStrategyFaction.Name) then
					GameSettings.Presets[1].Type = PlayerComputer
					GameSettings.Presets[2].Type = PlayerComputer

					GrandStrategyEventMap = true
					GetMapInfo("maps/nidavellir/chaincolt-foothills.smp")
					RunMap("maps/nidavellir/chaincolt-foothills.smp")
					GrandStrategyEventMap = false

					for i, unitName in ipairs(Units) do
						if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0 and string.find(unitName, "hero") == nil) then
							if (GetUnitTypeData(unitName, "Class") ~= "worker") then
								WorldMapProvinces.CavernsOfChaincolt.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.CavernsOfChaincolt.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(0, "UnitTypesCount", unitName)
								WorldMapProvinces.BrownHills.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.BrownHills.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(1, "UnitTypesCount", unitName)
								WorldMapProvinces.SouthernTunnels.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.SouthernTunnels.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(2, "UnitTypesCount", unitName)
							end
						end
					end
					for i, unitName in ipairs(Units) do
						if (string.find(unitName, "upgrade-") == nil and string.find(unitName, "hero") ~= nil) then
							if (GetPlayerData(0, "UnitTypesCount", unitName) > 0) then
								WorldMapProvinces.CavernsOfChaincolt.Heroes[string.gsub(unitName, "-", "_")] = 2
							end
						end
					end
				end
				if ("Norlund Clan" ~= GrandStrategyFaction.Name and "Shinsplitter Clan" ~= GrandStrategyFaction.Name) then -- if neither Norlund Clan nor Shinsplitter Clan are played by the human player, then enact the effects of the bargain between the gnomes and Rugnur successfully being struck
					Factions.NorlundClan.Diplomacy.ShinsplitterClan = "War" -- if is grand strategy, begin war between Norlund Clan and Shinsplitter Clan
					Factions.ShinsplitterClan.Diplomacy.NorlundClan = "War"
					Factions.Untersberg.Gold = Factions.Untersberg.Gold - 2500 -- decrease gnomish treasury by 5000 silver (considering for our purposes silver to be worth half as much as gold)
					Factions.NorlundClan.Gold = Factions.NorlundClan.Gold + 2500 -- 5000 silver, and for our purposes silver is considered to be worth half of what gold is
					WorldMapProvinces.CavernsOfChaincolt.Units.unit_gnomish_recruit = WorldMapProvinces.CavernsOfChaincolt.Units.unit_gnomish_recruit + 1
					WorldMapProvinces.SouthernTunnels.Units.unit_dwarven_steelclad = WorldMapProvinces.SouthernTunnels.Units.unit_dwarven_steelclad - 1
				end
				GrandStrategyEvent(Factions.ShinsplitterClan, GrandStrategyEvents.ABargainIsStruckShinsplitterClan)
				DrawMinimap()
			end}
		},
		ABargainIsStruckShinsplitterClan = {
			Name = "A Bargain is Struck?",
			Description = "The gnomish king Pypo I has arrived with an army behind him near a small border outpost owned by the Norlund Clan in the Chaincolt Foothills. He is sending them silver caravans as payment for the crafting of an artifact... We should send a few clansfolk there to exact a toll on the passing caravans, since the road the gnomes are travelling through ancestrally belongs to us.",
			Civilization = "dwarf",
			Faction = "Shinsplitter Clan",
			Provinces = {
				SouthernTunnels = true
			},
			TriggeredOnly = true,
			Options = {"~!OK"},
			OptionEffects = {function(s)
				if ("Shinsplitter Clan" == GrandStrategyFaction.Name) then
					GameSettings.Presets[0].Type = PlayerComputer
					GameSettings.Presets[1].Type = PlayerComputer

					GrandStrategyEventMap = true
					GetMapInfo("maps/nidavellir/chaincolt-foothills.smp")
					RunMap("maps/nidavellir/chaincolt-foothills.smp")
					GrandStrategyEventMap = false

					for i, unitName in ipairs(Units) do
						if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0 and string.find(unitName, "hero") == nil) then
							if (GetUnitTypeData(unitName, "Class") ~= "worker") then
								WorldMapProvinces.CavernsOfChaincolt.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.CavernsOfChaincolt.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(0, "UnitTypesCount", unitName)
								WorldMapProvinces.BrownHills.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.BrownHills.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(1, "UnitTypesCount", unitName)
								WorldMapProvinces.SouthernTunnels.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.SouthernTunnels.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(2, "UnitTypesCount", unitName)
							end
						end
					end
					for i, unitName in ipairs(Units) do
						if (string.find(unitName, "upgrade-") == nil and string.find(unitName, "hero") ~= nil) then
							if (GetPlayerData(0, "UnitTypesCount", unitName) > 0) then
								WorldMapProvinces.CavernsOfChaincolt.Heroes[string.gsub(unitName, "-", "_")] = 2
							end
						end
					end
				end
				if (WorldMapProvinces.CavernsOfChaincolt.Units.unit_gnomish_recruit >= 1) then -- way to check if Norlund Clan successfully transported the caravans
					GrandStrategyEvent(Factions.NorlundClan, GrandStrategyEvents.ClosingTheGates)
				end
			end}
		},
		ClosingTheGates = {
			Name = "Closing the Gates",
			Description = "Although the caravans arrived safely, the arrival of Shinsplitter reinforcements made our position in the Chaincolt Foothills untenable. Rugnur has retreated into the Caverns of Chaincolt, with the Shinsplitters pressing on, and reaching the caves shortly after him.",
			Civilization = "dwarf",
			Faction = "NorlundClan",
			Provinces = {
				CavernsOfChaincolt = true
			},
			Heroes = {
				unit_hero_rugnur = true,
				unit_hero_baglur = true,
				unit_hero_durstorn = true
			},
			TriggeredOnly = true,
			Options = {"~!OK"},
			OptionEffects = {function(s)
				if ("Norlund Clan" == GrandStrategyFaction.Name) then
					GameSettings.Presets[1].Type = PlayerComputer

					GrandStrategyEventMap = true
					GetMapInfo("maps/nidavellir/caverns-of-chaincolt.smp")
					RunMap("maps/nidavellir/caverns-of-chaincolt.smp")
					GrandStrategyEventMap = false

					for i, unitName in ipairs(Units) do
						if (string.find(unitName, "upgrade-") == nil and string.find(unitName, "hero") ~= nil) then
							if (GetPlayerData(0, "UnitTypesCount", unitName) > 0) then
								WorldMapProvinces.CavernsOfChaincolt.Heroes[string.gsub(unitName, "-", "_")] = 2
							end
						end
					end
					if (WorldMapProvinces.CavernsOfChaincolt.Owner == "Shinsplitter Clan") then
						for i, unitName in ipairs(Units) do
							if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0 and string.find(unitName, "hero") == nil) then
								WorldMapProvinces.CavernsOfChaincolt.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.CavernsOfChaincolt.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(1, "UnitTypesCount", unitName)
							end
						end
						WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_durstorn = 0
					else
						for i, unitName in ipairs(Units) do
							if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0 and string.find(unitName, "hero") == nil) then
								if (GetUnitTypeData(unitName, "Class") ~= "worker") then
									WorldMapProvinces.CavernsOfChaincolt.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.CavernsOfChaincolt.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(0, "UnitTypesCount", unitName)
									WorldMapProvinces.SouthernTunnels.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.SouthernTunnels.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(1, "UnitTypesCount", unitName)
								end
							end
						end
					end
				end
				if ("Norlund Clan" ~= GrandStrategyFaction.Name and "Shinsplitter Clan" ~= GrandStrategyFaction.Name) then
					WorldMapProvinces.SouthernTunnels.Units.unit_dwarven_steelclad = WorldMapProvinces.SouthernTunnels.Units.unit_dwarven_steelclad - 1
				end
				GrandStrategyEvent(Factions.ShinsplitterClan, GrandStrategyEvents.ClosingTheGatesShinsplitterClan)
				DrawMinimap()
			end}
		},
		ClosingTheGatesShinsplitterClan = {
			Name = "Closing the Gates",
			Description = "We failed to exact our due from the gnomish caravans, but our reinforcements managed to pursue the enemy to the entrance of their caves...",
			Civilization = "dwarf",
			Faction = "Shinsplitter Clan",
			Provinces = {
				SouthernTunnels = true
			},
			TriggeredOnly = true,
			Options = {"~!OK"},
			OptionEffects = {function(s)
				if ("Shinsplitter Clan" == GrandStrategyFaction.Name) then
					GameSettings.Presets[0].Type = PlayerComputer

					GrandStrategyEventMap = true
					GetMapInfo("maps/nidavellir/caverns-of-chaincolt.smp")
					RunMap("maps/nidavellir/caverns-of-chaincolt.smp")
					GrandStrategyEventMap = false

					for i, unitName in ipairs(Units) do
						if (string.find(unitName, "upgrade-") == nil and string.find(unitName, "hero") ~= nil) then
							if (GetPlayerData(0, "UnitTypesCount", unitName) > 0) then
								WorldMapProvinces.CavernsOfChaincolt.Heroes[string.gsub(unitName, "-", "_")] = 2
							end
						end
					end
					if (WorldMapProvinces.CavernsOfChaincolt.Owner == "Shinsplitter Clan") then
						for i, unitName in ipairs(Units) do
							if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0 and string.find(unitName, "hero") == nil) then
								if (GetUnitTypeData(unitName, "Class") ~= "worker") then
									WorldMapProvinces.CavernsOfChaincolt.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.CavernsOfChaincolt.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(1, "UnitTypesCount", unitName)
								end
							end
						end
						WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_durstorn = 0
					else
						for i, unitName in ipairs(Units) do
							if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0 and string.find(unitName, "hero") == nil) then
								WorldMapProvinces.CavernsOfChaincolt.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.CavernsOfChaincolt.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(0, "UnitTypesCount", unitName)
								WorldMapProvinces.SouthernTunnels.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.SouthernTunnels.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(1, "UnitTypesCount", unitName)
							end
						end
					end
				end
			end}
		},
		SearchingForTheRunecrafter = {
			Name = "Searching for the Runecrafter",
			Description = "The journey of Rugnur's group to the far northern wastelands was long and perilous. For the tunnels were winding and treacherous, and the paths were not safe from goblins, or worse. Nevertheless, they did reach the northlands, and began to search for the runesmith named Thursagan - the sage of fire.",
			Civilization = "dwarf",
			Faction = "NorlundClan",
			Provinces = {
				CavernsOfChaincolt = true
			},
			Units = {
				unit_gnomish_recruit = 1 -- must have a gnomish recruit in the Caverns of Chaincolt
			},
			Heroes = {
				unit_hero_rugnur = true,
				unit_hero_baglur = true,
				unit_hero_durstorn = true
			},
			RandomChance = 50, -- took two years
			Options = {"~!OK"},
			OptionEffects = {function(s)
				if ("Norlund Clan" == GrandStrategyFaction.Name) then
					GrandStrategyEventMap = true
					GetMapInfo("maps/nidavellir/northern-wastelands.smp")
					RunMap("maps/nidavellir/northern-wastelands.smp")
					GrandStrategyEventMap = false

					for i, unitName in ipairs(Units) do
						if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0 and string.find(unitName, "hero") == nil) then
							if (GetUnitTypeData(unitName, "Class") ~= "worker") then
								WorldMapProvinces.CavernsOfChaincolt.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.CavernsOfChaincolt.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(0, "UnitTypesCount", unitName)
								WorldMapProvinces.NorthernWastelands.Units[string.gsub(unitName, "-", "_")] = GetPlayerData(1, "UnitTypesCount", unitName)
							end
						end
					end
					for i, unitName in ipairs(Units) do
						if (string.find(unitName, "upgrade-") == nil and string.find(unitName, "hero") ~= nil) then
							if (GetPlayerData(0, "UnitTypesCount", unitName) > 0) then
								WorldMapProvinces.CavernsOfChaincolt.Heroes[string.gsub(unitName, "-", "_")] = 2
							end
						end
					end
					if (GetPlayerData(0, "UnitTypesCount", "unit-hero-thursagan") > 0) then
						WorldMapProvinces.NorthernWastelands.Heroes.unit_hero_thursagan = 0
					end
				end
				if ("Norlund Clan" ~= GrandStrategyFaction.Name) then
					WorldMapProvinces.NorthernWastelands.Heroes.unit_hero_thursagan = 0
					WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_thursagan = 2
					WorldMapProvinces.NorthernWastelands.SettlementBuildings.unit_dwarven_smithy = 0
					WorldMapProvinces.NorthernWastelands.Units.unit_goblin_spearman = WorldMapProvinces.NorthernWastelands.Units.unit_goblin_spearman / 2 -- halve enemies in the northern wastelands
					WorldMapProvinces.NorthernWastelands.Units.unit_goblin_archer = WorldMapProvinces.NorthernWastelands.Units.unit_goblin_archer / 2
					WorldMapProvinces.CavernsOfChaincolt.Units["unit_dwarven_gryphon_rider"] = 2 -- two gryphon riders joined from the travel to the Northern Wastelands
				end
			end}
		},
		GatheringMaterials = {
			Name = "Gathering Materials",
			Description = "Those who went to the eastern mines were brave indeed. They were infested with goblins and other vile creatures, who thrived in the dark and gloom of the caves. And braver still were Rugnur and his companions, who had to spend two years in those tunnels. For mining is a lengthy business. But they could for the most part avoid the enemy. They only once had to venture into the very heart of the goblins' territory.",
			Civilization = "dwarf",
			Faction = "NorlundClan",
			Provinces = {
				CavernsOfChaincolt = true
			},
			Units = {
				unit_gnomish_recruit = 1 -- must have a gnomish recruit in the Caverns of Chaincolt
			},
			Heroes = {
				unit_hero_rugnur = true,
				unit_hero_baglur = true,
				unit_hero_thursagan = true,
				unit_hero_durstorn = true
			},
			RandomChance = 50, -- took two years
			Options = {"~!OK"},
			OptionEffects = {function(s)
				if ("Norlund Clan" == GrandStrategyFaction.Name) then
					GrandStrategyEventMap = true
					GetMapInfo("maps/nidavellir/eastern-mines.smp")
					RunMap("maps/nidavellir/eastern-mines.smp")
					GrandStrategyEventMap = false

					for i, unitName in ipairs(Units) do
						if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0 and string.find(unitName, "hero") == nil) then
							if (GetUnitTypeData(unitName, "Class") ~= "worker") then
								WorldMapProvinces.CavernsOfChaincolt.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.CavernsOfChaincolt.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(0, "UnitTypesCount", unitName)
								WorldMapProvinces.EasternMines.Units[string.gsub(unitName, "-", "_")] = GetPlayerData(1, "UnitTypesCount", unitName) + GetPlayerData(2, "UnitTypesCount", unitName) + GetPlayerData(3, "UnitTypesCount", unitName)
							end
						end
					end
					for i, unitName in ipairs(Units) do
						if (string.find(unitName, "upgrade-") == nil and string.find(unitName, "hero") ~= nil) then
							if (GetPlayerData(0, "UnitTypesCount", unitName) > 0) then
								WorldMapProvinces.CavernsOfChaincolt.Heroes[string.gsub(unitName, "-", "_")] = 2
							end
						end
					end
				end
				if ("Norlund Clan" ~= GrandStrategyFaction.Name) then
					Factions.NorlundClan.Commodities["Coal"] = 20000
	--				WorldMapProvinces.EasternMines.Units.unit_goblin_spearman = WorldMapProvinces.EasternMines.Units.unit_goblin_spearman / 2
	--				WorldMapProvinces.EasternMines.Units.unit_goblin_archer = WorldMapProvinces.EasternMines.Units.unit_goblin_archer / 2
				end
			end}
		},
		HillsOfTheShorbearClan = {
			Name = "Hills of the Shorbear Clan",
			Description = "Durstorn and his entourage went to meet the Shorbear clan's chieftain. Well, all dwarves are known for a love of gold and a heart of stone. The Shorbears were no exception. They were crafters of crafters - they made tools. The best in the land. And they bartered well.",
			Civilization = "dwarf",
			Faction = "NorlundClan",
			Provinces = {
				CavernsOfChaincolt = true
			},
			Units = {
				unit_gnomish_recruit = 1 -- must have a gnomish recruit in the Caverns of Chaincolt
			},
			Heroes = {
				unit_hero_rugnur = true,
				unit_hero_baglur = true,
				unit_hero_thursagan = true,
				unit_hero_durstorn = true
			},
			Commodities = {
				Coal = 20000
			},
			RandomChance = 16, -- six years
			Options = {"~!OK"},
			OptionEffects = {function(s)
				if ("Norlund Clan" == GrandStrategyFaction.Name) then
					GrandStrategyEventMap = true
					GetMapInfo("maps/nidavellir/shorbear-hills.smp")
					RunMap("maps/nidavellir/shorbear-hills.smp")
					GrandStrategyEventMap = false

					for i, unitName in ipairs(Units) do
						if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0 and string.find(unitName, "hero") == nil) then
							if (GetUnitTypeData(unitName, "Class") ~= "worker") then
								if (unitName ~= "unit-gnomish-recruit") then
									WorldMapProvinces.CavernsOfChaincolt.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.CavernsOfChaincolt.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(0, "UnitTypesCount", unitName)
									WorldMapProvinces.SouthernTunnels.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.SouthernTunnels.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(2, "UnitTypesCount", unitName)
									WorldMapProvinces.ShorbearHills.Units[string.gsub(unitName, "-", "_")] = GetPlayerData(1, "UnitTypesCount", unitName)
								else
									WorldMapProvinces.CavernsOfChaincolt.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.CavernsOfChaincolt.Units[string.gsub(unitName, "-", "_")] + math.max(GetPlayerData(0, "UnitTypesCount", unitName) - 1, 0)
									WorldMapProvinces.SouthernTunnels.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.SouthernTunnels.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(2, "UnitTypesCount", unitName)
									WorldMapProvinces.ShorbearHills.Units[string.gsub(unitName, "-", "_")] = GetPlayerData(1, "UnitTypesCount", unitName)
								end
							end
						end
					end
					for i, unitName in ipairs(Units) do
						if (string.find(unitName, "upgrade-") == nil and string.find(unitName, "hero") ~= nil) then
							if (GetPlayerData(0, "UnitTypesCount", unitName) > 0) then
								WorldMapProvinces.CavernsOfChaincolt.Heroes[string.gsub(unitName, "-", "_")] = 2
							end
						end
					end
					if (GameResult == GameVictory) then
						GrandStrategyEvent(Factions.NorlundClan, GrandStrategyEvents.TheWyrm)
					end
				elseif ("Shinsplitter Clan" == GrandStrategyFaction.Name) then
					GrandStrategyEvent(Factions.ShinsplitterClan, GrandStrategyEvents.HillsOfTheShorbearClanShinsplitterClan)
				elseif ("Shorbear Clan" == GrandStrategyFaction.Name) then
					GrandStrategyEvent(Factions.ShorbearClan, GrandStrategyEvents.HillsOfTheShorbearClanShorbearClan)
				else
					WorldMapProvinces.SouthernTunnels.Units.unit_dwarven_steelclad = WorldMapProvinces.SouthernTunnels.Units.unit_dwarven_steelclad - 1 -- Kalnar
					WorldMapProvinces.SouthernTunnels.Units.unit_dwarven_thane = WorldMapProvinces.SouthernTunnels.Units.unit_dwarven_thane - 3 -- Lyndar, Gaenlar and Glinan
					WorldMapProvinces.ShorbearHills.Units.unit_dwarven_axefighter = 0
					WorldMapProvinces.ShorbearHills.Units.unit_dwarven_thane = 0
					
					WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_durstorn = 0 -- Durstorn is killed in a conflict between him and other members of the clan
					GrandStrategyEvents.DurstornDies = nil
					WorldMapProvinces.CavernsOfChaincolt.Units.unit_gnomish_recruit = WorldMapProvinces.CavernsOfChaincolt.Units.unit_gnomish_recruit - 1 -- the gnomish envoy returns south
					WorldMapProvinces.BrownHills.Units.unit_gnomish_recruit = WorldMapProvinces.BrownHills.Units.unit_gnomish_recruit + 1
		
					AcquireProvince(WorldMapProvinces.ShorbearHills, "Shinsplitter Clan")
					GrandStrategyEvent(Factions.NorlundClan, GrandStrategyEvents.TheWyrm)
				end
				DrawMinimap()
			end}
		},
		HillsOfTheShorbearClanShinsplitterClan = {
			Name = "Hills of the Shorbear Clan",
			Description = "Our scouts have found out that the Norlunds have gone out of their caves through an exit near the Shorbear Hills... we must be quick, if we are to catch them!",
			Civilization = "dwarf",
			Faction = "ShinsplitterClan",
			TriggeredOnly = true,
			Options = {"~!OK"},
			OptionEffects = {function(s)
				if ("Shinsplitter Clan" == GrandStrategyFaction.Name) then
					GameSettings.Presets[0].Type = PlayerComputer
					GameSettings.Presets[1].Type = PlayerComputer
					GrandStrategyEventMap = true
					GetMapInfo("maps/nidavellir/shorbear-hills.smp")
					RunMap("maps/nidavellir/shorbear-hills.smp")
					GrandStrategyEventMap = false

					for i, unitName in ipairs(Units) do
						if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0 and string.find(unitName, "hero") == nil) then
							if (GetUnitTypeData(unitName, "Class") ~= "worker") then
								if (unitName ~= "unit-gnomish-recruit") then
									WorldMapProvinces.CavernsOfChaincolt.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.CavernsOfChaincolt.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(0, "UnitTypesCount", unitName)
									WorldMapProvinces.SouthernTunnels.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.SouthernTunnels.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(2, "UnitTypesCount", unitName)
									WorldMapProvinces.ShorbearHills.Units[string.gsub(unitName, "-", "_")] = GetPlayerData(1, "UnitTypesCount", unitName)
								else
									WorldMapProvinces.CavernsOfChaincolt.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.CavernsOfChaincolt.Units[string.gsub(unitName, "-", "_")] + math.max(GetPlayerData(0, "UnitTypesCount", unitName) - 1, 0)
									WorldMapProvinces.SouthernTunnels.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.SouthernTunnels.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(2, "UnitTypesCount", unitName)
									WorldMapProvinces.ShorbearHills.Units[string.gsub(unitName, "-", "_")] = GetPlayerData(1, "UnitTypesCount", unitName)
								end
							end
						end
					end
					for i, unitName in ipairs(Units) do
						if (string.find(unitName, "upgrade-") == nil and string.find(unitName, "hero") ~= nil) then
							if (GetPlayerData(0, "UnitTypesCount", unitName) > 0) then
								WorldMapProvinces.CavernsOfChaincolt.Heroes[string.gsub(unitName, "-", "_")] = 2
							end
						end
					end
					if (GameResult ~= GameVictory and (WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_rugnur == 2 or WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_rugnur_steelclad == 2 or WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_rugnur_thane == 2) and (WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_baglur == 2 or WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_baglur_thane == 2) and WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_thursagan == 2) then
						GrandStrategyEvent(Factions.NorlundClan, GrandStrategyEvents.TheWyrm)
					end
				end
			end}
		},
		HillsOfTheShorbearClanShorbearClan = {
			Name = "Hills of the Shorbear Clan",
			Description = "The Norlunds are approaching our hills... let us see what they want.",
			Civilization = "dwarf",
			Faction = "ShorbearClan",
			TriggeredOnly = true,
			Options = {"~!OK"},
			OptionEffects = {function(s)
				if ("Shorbear Clan" == GrandStrategyFaction.Name) then
					GameSettings.Presets[0].Type = PlayerComputer
					GameSettings.Presets[2].Type = PlayerComputer
					GrandStrategyEventMap = true
					GetMapInfo("maps/nidavellir/shorbear-hills.smp")
					RunMap("maps/nidavellir/shorbear-hills.smp")
					GrandStrategyEventMap = false

					for i, unitName in ipairs(Units) do
						if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0 and string.find(unitName, "hero") == nil) then
							if (GetUnitTypeData(unitName, "Class") ~= "worker") then
								if (unitName ~= "unit-gnomish-recruit") then
									WorldMapProvinces.CavernsOfChaincolt.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.CavernsOfChaincolt.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(0, "UnitTypesCount", unitName)
									WorldMapProvinces.SouthernTunnels.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.SouthernTunnels.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(2, "UnitTypesCount", unitName)
									WorldMapProvinces.ShorbearHills.Units[string.gsub(unitName, "-", "_")] = GetPlayerData(1, "UnitTypesCount", unitName)
								else
									WorldMapProvinces.CavernsOfChaincolt.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.CavernsOfChaincolt.Units[string.gsub(unitName, "-", "_")] + math.max(GetPlayerData(0, "UnitTypesCount", unitName) - 1, 0)
									WorldMapProvinces.SouthernTunnels.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.SouthernTunnels.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(2, "UnitTypesCount", unitName)
									WorldMapProvinces.ShorbearHills.Units[string.gsub(unitName, "-", "_")] = GetPlayerData(1, "UnitTypesCount", unitName)
								end
							end
						end
					end
					for i, unitName in ipairs(Units) do
						if (string.find(unitName, "upgrade-") == nil and string.find(unitName, "hero") ~= nil) then
							if (GetPlayerData(0, "UnitTypesCount", unitName) > 0) then
								WorldMapProvinces.CavernsOfChaincolt.Heroes[string.gsub(unitName, "-", "_")] = 2
							end
						end
					end
				end
			end}
		},
		TheWyrm = {
			Name = "The Wyrm",
			Description = "Thus the gnomish envoy escaped from his Shinsplitter pursuers. But the dwarves were not so lucky. I would say that, perhaps, their betrayal of Durstorn was coming back to haunt them. For the section of the old eastern mines that they reached in their flight had long since become the lair of Svafnir... the wyrm.",
			Civilization = "dwarf",
			Faction = "NorlundClan",
			Provinces = {
				CavernsOfChaincolt = true
			},
			Heroes = {
				unit_hero_rugnur = true,
				unit_hero_baglur = true,
				unit_hero_thursagan = true
			},
			Commodities = {
				Coal = 20000
			},
			RequiredEvents = {
				HillsOfTheShorbearClan = true
			},
			RandomChance = 40, -- two and a half years
			Options = {"~!OK"},
			OptionEffects = {function(s)
				if ("Norlund Clan" == GrandStrategyFaction.Name) then
					WorldMapProvinces.SouthernTunnels.Units.unit_surghan_mercenary_steelclad = 8 -- Surghan mercenaries hired by the Shinsplitters
					Factions.ShinsplitterClan.Gold = Factions.ShinsplitterClan.Gold - (GetUnitTypeData("unit-surghan-mercenary-steelclad", "Costs", "gold") * 2)
					MercenaryGroups.unit_surghan_mercenary_steelclad = nil
				
					GrandStrategyEventMap = true
					GetMapInfo("maps/nidavellir/svafnirs-lair.smp")
					RunMap("maps/nidavellir/svafnirs-lair.smp")
					GrandStrategyEventMap = false

					for i, unitName in ipairs(Units) do
						if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0 and string.find(unitName, "hero") == nil) then
							if (GetUnitTypeData(unitName, "Class") ~= "worker" and GetUnitTypeData(unitName, "Class") ~= "infantry" and GetUnitTypeData(unitName, "Class") ~= "archer") then
								WorldMapProvinces.CavernsOfChaincolt.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.CavernsOfChaincolt.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(0, "UnitTypesCount", unitName)
								WorldMapProvinces.SouthernTunnels.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.SouthernTunnels.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(1, "UnitTypesCount", unitName)
							end
						end
					end
					for i, unitName in ipairs(Units) do
						if (string.find(unitName, "upgrade-") == nil and string.find(unitName, "hero") ~= nil) then
							if (GetPlayerData(0, "UnitTypesCount", unitName) > 0) then
								WorldMapProvinces.CavernsOfChaincolt.Heroes[string.gsub(unitName, "-", "_")] = 2
							end
						end
					end
					if (GameResult == GameVictory) then
						Factions.NorlundClan.Commodities["Coal"] = 0 -- Scepter of Fire crafted
						GrandStrategyEvent(Factions.NorlundClan, GrandStrategyEvents.CavernsOfFlame)
					end
				elseif ("Shinsplitter Clan" == GrandStrategyFaction.Name) then
					GrandStrategyEvent(Factions.ShinsplitterClan, GrandStrategyEvents.TheWyrmShinsplitterClan)
				else
					WorldMapProvinces.SouthernTunnels.Units.unit_surghan_mercenary_steelclad = 8 -- Surghan mercenaries hired by the Shinsplitters
					Factions.ShinsplitterClan.Gold = Factions.ShinsplitterClan.Gold - (GetUnitTypeData("unit-surghan-mercenary-steelclad", "Costs", "gold") * 2)
					MercenaryGroups.unit_surghan_mercenary_steelclad = nil
				
					WorldMapProvinces.SouthernTunnels.Units.unit_dwarven_thane = WorldMapProvinces.SouthernTunnels.Units.unit_dwarven_thane - 1 -- Crintil
					WorldMapProvinces.SouthernTunnels.Units.unit_surghan_mercenary_steelclad = WorldMapProvinces.SouthernTunnels.Units.unit_surghan_mercenary_steelclad - 4
					
					Factions.NorlundClan.Commodities["Coal"] = 0 -- Scepter of Fire crafted
					
					GrandStrategyEvent(Factions.NorlundClan, GrandStrategyEvents.CavernsOfFlame)
				end
				DrawMinimap()
			end}
		},
		TheWyrmShinsplitterClan = {
			Name = "The Wyrm",
			Description = "We have sent a detachment of our warriors to go after the Norlunds in those caves.",
			Civilization = "dwarf",
			Faction = "ShinsplitterClan",
			TriggeredOnly = true,
			Options = {"~!OK"},
			OptionEffects = {function(s)
				if ("Shinsplitter Clan" == GrandStrategyFaction.Name) then
					GrandStrategyEventMap = true
					GameSettings.Presets[0].Type = PlayerComputer
					GetMapInfo("maps/nidavellir/svafnirs-lair.smp")
					RunMap("maps/nidavellir/svafnirs-lair.smp")
					GrandStrategyEventMap = false

					for i, unitName in ipairs(Units) do
						if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0 and string.find(unitName, "hero") == nil) then
							if (GetUnitTypeData(unitName, "Class") ~= "worker" and GetUnitTypeData(unitName, "Class") ~= "infantry" and GetUnitTypeData(unitName, "Class") ~= "archer") then
								WorldMapProvinces.CavernsOfChaincolt.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.CavernsOfChaincolt.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(0, "UnitTypesCount", unitName)
								WorldMapProvinces.SouthernTunnels.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.SouthernTunnels.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(1, "UnitTypesCount", unitName)
							end
						end
					end
					for i, unitName in ipairs(Units) do
						if (string.find(unitName, "upgrade-") == nil and string.find(unitName, "hero") ~= nil) then
							if (GetPlayerData(0, "UnitTypesCount", unitName) > 0) then
								WorldMapProvinces.CavernsOfChaincolt.Heroes[string.gsub(unitName, "-", "_")] = 2
							end
						end
					end
					if (GameResult ~= GameVictory and (WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_rugnur == 2 or WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_rugnur_steelclad == 2 or WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_rugnur_thane == 2) and (WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_baglur == 2 or WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_baglur_thane == 2) and WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_thursagan) then
						Factions.NorlundClan.Commodities["Coal"] = 0 -- Scepter of Fire crafted
						WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_durstorn = 0
						GrandStrategyEvent(Factions.NorlundClan, GrandStrategyEvents.CavernsOfFlame)
					end
				end
			end}
		},
		CavernsOfFlame = {
			Name = "Caverns of Flame",
			Description = "Rugnur and his companions had reached the realms of the goblins, with the Shinsplitters hot on their trail. And there was no exit from those caves, leaving the Norlunds no way out.",
			Civilization = "dwarf",
			Faction = "NorlundClan",
			Provinces = {
				CavernsOfChaincolt = true
			},
			Heroes = {
				unit_hero_rugnur = true,
				unit_hero_baglur = true,
				unit_hero_thursagan = true
			},
			RequiredEvents = {
				TheWyrm = true
			},
			RandomChance = 40, -- two and a half years
			Options = {"~!OK"},
			OptionEffects = {function(s)
				if ("Norlund Clan" == GrandStrategyFaction.Name) then
					GrandStrategyEventMap = true
					GetMapInfo("maps/nidavellir/caverns-of-flame.smp")
					RunMap("maps/nidavellir/caverns-of-flame.smp")
					GrandStrategyEventMap = false

					for i, unitName in ipairs(Units) do
						if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0 and string.find(unitName, "hero") == nil) then
							if (GetUnitTypeData(unitName, "Class") ~= "worker") then
								WorldMapProvinces.CavernsOfChaincolt.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.CavernsOfChaincolt.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(0, "UnitTypesCount", unitName)
								WorldMapProvinces.SouthernTunnels.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.SouthernTunnels.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(1, "UnitTypesCount", unitName)
							end
						end
					end
				elseif ("Shinsplitter Clan" == GrandStrategyFaction.Name) then
					GrandStrategyEvent(Factions.ShinsplitterClan, GrandStrategyEvents.CavernsOfFlameShinsplitterClan)
				else
					WorldMapProvinces.SouthernTunnels.Units.unit_dwarven_thane = 0
					WorldMapProvinces.SouthernTunnels.Units.unit_surghan_mercenary_steelclad = 0
					
					WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_rugnur = 0 -- Rugnur, Baglur and Thursagan die at the Caverns of Flame
					WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_rugnur_steelclad = 0
					WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_rugnur_thane = 0
					GrandStrategyEvents.RugnurDies = nil
					WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_baglur = 0
					WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_baglur_thane = 0
					GrandStrategyEvents.BaglurDies = nil
					WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_thursagan = 0
					GrandStrategyEvents.ThursaganDies = nil

					WorldMapProvinces.CavernsOfChaincolt.Units.unit_dwarven_gryphon_rider = WorldMapProvinces.CavernsOfChaincolt.Units.unit_dwarven_gryphon_rider - 2 -- the dwarven gryphon riders return to the Northern Wastelands

					Factions.NorlundClan.Gold = Factions.NorlundClan.Gold + 2500 -- payment for the crafting of the Scepter
					Factions.Untersberg.Gold = Factions.Untersberg.Gold - 2500 -- payment for the crafting of the Scepter
					WorldMapProvinces.ShorbearHills.Owner = "Norlund Clan" -- Shorbear Hold ceded by the Shinsplitters to the Norlunds and peace established
					Factions.NorlundClan.Diplomacy["ShinsplitterClan"] = "Peace"
					Factions.ShinsplitterClan.Diplomacy["NorlundClan"] = "Peace"
				end
				DrawMinimap()
			end}
		},
		CavernsOfFlameShinsplitterClan = {
			Name = "Caverns of Flame",
			Description = "We have followed the Norlunds deep into goblin territory...",
			Civilization = "dwarf",
			Faction = "ShinsplitterClan",
			TriggeredOnly = true,
			Options = {"~!OK"},
			OptionEffects = {function(s)
				if ("Shinsplitter Clan" == GrandStrategyFaction.Name) then
					GrandStrategyEventMap = true
					GameSettings.Presets[0].Type = PlayerComputer
					GetMapInfo("maps/nidavellir/caverns-of-flame.smp")
					RunMap("maps/nidavellir/caverns-of-flame.smp")
					GrandStrategyEventMap = false

					for i, unitName in ipairs(Units) do
						if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0 and string.find(unitName, "hero") == nil) then
							if (GetUnitTypeData(unitName, "Class") ~= "worker") then
								WorldMapProvinces.CavernsOfChaincolt.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.CavernsOfChaincolt.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(0, "UnitTypesCount", unitName)
								WorldMapProvinces.SouthernTunnels.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.SouthernTunnels.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(1, "UnitTypesCount", unitName)
							end
						end
					end
				end
			end}
		},
		RugnurDies = {
			Name = "Rugnur Dies",
			Description = "The brave Rugnur has died of natural causes.",
			Civilization = "dwarf",
			Heroes = {
				unit_hero_rugnur = true
			},
			MinYear = 40 + 30, -- died in 40 AD of a violent death, and wasn't old; +30 years
			Options = {"~!OK"},
			OptionEffects = {function(s)
				for province_i, key in ipairs(EventFaction.OwnedProvinces) do
					WorldMapProvinces[key].Heroes.unit_hero_rugnur = 0
					WorldMapProvinces[key].Heroes.unit_hero_rugnur_steelclad = 0
					WorldMapProvinces[key].Heroes.unit_hero_rugnur_thane = 0
				end
			end}
		},
		BaglurDies = {
			Name = "Baglur Dies",
			Description = "The steadfast Baglur has died of natural causes.",
			Civilization = "dwarf",
			Heroes = {
				unit_hero_baglur = true
			},
			MinYear = 40 + 10, -- died in 40 AD of a violent death, but was already rather old; +10 years
			Options = {"~!OK"},
			OptionEffects = {function(s)
				for province_i, key in ipairs(EventFaction.OwnedProvinces) do
					WorldMapProvinces[key].Heroes.unit_hero_baglur = 0
					WorldMapProvinces[key].Heroes.unit_hero_baglur_thane = 0
				end
			end}
		},
		ThursaganDies = {
			Name = "Thursagan Dies",
			Description = "The wise Thursagan has died of natural causes.",
			Civilization = "dwarf",
			Heroes = {
				unit_hero_thursagan = true
			},
			MinYear = 40 + 10, -- died in 40 AD of a violent death, but was already rather old; +10 years
			Options = {"~!OK"},
			OptionEffects = {function(s)
				for province_i, key in ipairs(EventFaction.OwnedProvinces) do
					WorldMapProvinces[key].Heroes.unit_hero_thursagan = 0
				end
			end}
		},
		DurstornDies = {
			Name = "Durstorn Dies",
			Description = "The puissant Durstorn has died of natural causes.",
			Civilization = "dwarf",
			Heroes = {
				unit_hero_durstorn = true
			},
			MinYear = 35 + 15, -- died in 35 AD of a violent death, but was already old; +15 years
			Options = {"~!OK"},
			OptionEffects = {function(s)
				for province_i, key in ipairs(EventFaction.OwnedProvinces) do
					WorldMapProvinces[key].Heroes.unit_hero_durstorn = 0
				end
			end}
		},
		TheFoundingOfKnalga = {
			Name = "The Founding of Knalga",
			Description = "Our clan has expanded through a large territory, and our people have become more and more settled down. Now it is high time for us to to found a new realm, the lordship of Knalga!",
			Civilization = "dwarf",
			FactionType = "tribe",
			Provinces = {
				CavernsOfChaincolt = true,
				SouthernTunnels = true
			},
			Persistent = true, -- can happen multiple times, so that tribes that conquer a lordship can become a polity
			Options = {"~!OK"},
			OptionEffects = {function(s)
				FormFaction(EventFaction, Factions.Knalga)
			end},
			OptionTooltips = {"Our faction becomes Knalga"}
		},
		TheFoundingOfKalKartha = {
			Name = "The Founding of Kal Kartha",
			Description = "Our clan has expanded through a large territory, and our people have become more and more settled down. Now it is high time for us to to found a new realm, the lordship of Kal Kartha!",
			Civilization = "dwarf",
			FactionType = "tribe",
			Provinces = {
				KalKartha = true
			},
			Persistent = true,
			Options = {"~!OK"},
			OptionEffects = {function(s)
				FormFaction(EventFaction, Factions.KalKartha)
			end},
			OptionTooltips = {"Our faction becomes Kal Kartha"}
		},
		TheFoundingOfLyr = {
			Name = "The Founding of Lyr",
			Description = "Our clan has expanded through a large territory, and our people have become more and more settled down. Now it is high time for us to to found a new realm, the lordship of Lyr!",
			Civilization = "dwarf",
			FactionType = "tribe",
			Provinces = {
				Lyr = true
			},
			Persistent = true,
			Options = {"~!OK"},
			OptionEffects = {function(s)
				FormFaction(EventFaction, Factions.Lyr)
				WorldMapProvinces.Lyr.Map = nil
				WorldMapProvinces.Lyr.Map = "maps/nidavellir/hall-of-lyr.smp"
			end},
			OptionTooltips = {"Our faction becomes Lyr"}
		},
		GoblinLooters = {
			Name = "Goblin Looters",
			Description = "A band of goblin thieves has been looting the farms in PROVINCE_NAME. We have obtained information on where their hideout is... what shall we do?",
			Conditions = function(s)
				for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
					if (ProvinceHasBuildingType(WorldMapProvinces[province_key], "town-hall") and ProvinceHasBuildingType(WorldMapProvinces[province_key], "barracks") == false and SyncRand(100) < 1) then -- event only fires if there is a province which is settled but does not have proper defenses
						EventProvince = WorldMapProvinces[province_key]
						return true
					end
				end
				return false
			end,
			Persistent = true,
			Options = {"~!Root them out", "~!Better let them be"},
			OptionConditions = {
				function(s)
					for i, unitName in ipairs(Units) do
						if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0 and string.find(unitName, "hero") == nil) then
							if (EventProvince.Units[string.gsub(unitName, "-", "_")] > 0) then
								return true
							end
						elseif (string.find(unitName, "upgrade-") == nil and string.find(unitName, "hero") ~= nil) then
							if (EventProvince.Heroes[string.gsub(unitName, "-", "_")] == 2) then
								return true
							end
						end
					end
				end,
				function(s)
					return true
				end
			},
			OptionEffects = {
				function(s)
					if (EventFaction.Name == GrandStrategyFaction.Name) then
						GrandStrategyEventMap = true
						GetMapInfo("maps/nidavellir/goblin-thief-hideout.smp")
						RunMap("maps/nidavellir/goblin-thief-hideout.smp")
						GrandStrategyEventMap = false

						for i, unitName in ipairs(Units) do
							if (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Building") == false and GetUnitTypeData(unitName, "Demand") > 0 and string.find(unitName, "hero") == nil) then
								EventProvince.Units[string.gsub(unitName, "-", "_")] = EventProvince.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(0, "UnitTypesCount", unitName)
							end
						end
						for i, unitName in ipairs(Units) do
							if (string.find(unitName, "upgrade-") == nil and string.find(unitName, "hero") ~= nil) then
								if (GetPlayerData(0, "UnitTypesCount", unitName) > 0) then
									EventProvince.Heroes[string.gsub(unitName, "-", "_")] = 2
								end
							end
						end
						
						if (GameResult == GameDefeat) then -- if lost the battle, lose the gold
							EventFaction.Gold = EventFaction.Gold - 500
						end
					end
				end,
				function(s)
					EventFaction.Gold = EventFaction.Gold - 500
				end
			},
			OptionTooltips = {"Fight the goblin thieves", "-500 Gold"}
		}
	}
	
	local GenericEvents = {
		BountifulHarvest = {
			Name = "Bountiful Harvest",
			Description = "The harvest this year has been exceptionally plentiful, rejoice!",
			Conditions = function(s)
				if (
					SyncRand(100) < 1
				) then
					return true
				else
					return false
				end
			end,
			Persistent = true,
			Options = {"E~!xcellent!"},
			OptionEffects = {
				function(s)
					EventFaction.Gold = EventFaction.Gold + (100 * GetFactionProvinceCount(EventFaction))
				end
			},
			OptionTooltips = {"+100 Gold per province owned"}
		},
		SkilledCarpenters = {
			Name = "Skilled Carpenters",
			Description = "A group of skilled carpenters has come to our country, opening up a workshop in PROVINCE_NAME.",
			Conditions = function(s)
				if (
					SyncRand(100) < 50 -- 50% chance the event happens at all, and then 1% chance that it happens to a particular province, for a total chance of 0.5% of happening if the player has one province (this event shouldn't be common)
				) then
					for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
						if (SyncRand(100) < 1 and ProvinceHasBuildingType(WorldMapProvinces[province_key], "lumber-mill")) then
							EventProvince = WorldMapProvinces[province_key]
							return true
						end
					end
				else
					return false
				end
			end,
			Persistent = true,
			Options = {"~!OK"},
			OptionEffects = {
				function(s)
					EventFaction.Gold = EventFaction.Gold + 100
					EventFaction.Research = EventFaction.Research + 1
				end
			},
			OptionTooltips = {"+100 Gold, +1 Research"}
		},
		SkilledMasons = {
			Name = "Skilled Masons",
			Description = "A group of skilled masons has come to our country, opening up a workshop in PROVINCE_NAME.",
			Conditions = function(s)
				if (
					SyncRand(100) < 50 -- 50% chance the event happens at all, and then 1% chance that it happens to a particular province, for a total chance of 0.5% of happening if the player has one province (this event shouldn't be common)
					and FactionHasTechnologyType(EventFaction, "masonry")
				) then
					for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
						if (SyncRand(100) < 1 and ProvinceHasBuildingType(WorldMapProvinces[province_key], "lumber-mill")) then
							EventProvince = WorldMapProvinces[province_key]
							return true
						end
					end
				else
					return false
				end
			end,
			Persistent = true,
			Options = {"~!OK"},
			OptionEffects = {
				function(s)
					EventFaction.Gold = EventFaction.Gold + 100
					EventFaction.Research = EventFaction.Research + 1
				end
			},
			OptionTooltips = {"+100 Gold, +1 Research"}
		}
	}
	
	local function AddEventTable(event_table)
		for key, value in pairs(event_table) do
			if (world ~= "Save" or GetArrayIncludes(SavedGrandStrategyEvents, key)) then
				GrandStrategyEvents[key] = {}
				GrandStrategyEvents[key]["Name"] = event_table[key].Name
				GrandStrategyEvents[key]["Description"] = event_table[key].Description
				if (event_table[key].Civilization ~= nil) then
					GrandStrategyEvents[key]["Civilization"] = event_table[key].Civilization
				end
				if (event_table[key].Faction ~= nil) then
					GrandStrategyEvents[key]["Faction"] = event_table[key].Faction
				end
				if (event_table[key].FactionType ~= nil) then
					GrandStrategyEvents[key]["FactionType"] = event_table[key].FactionType
				end
				if (event_table[key].TriggeredOnly ~= nil) then
					GrandStrategyEvents[key]["TriggeredOnly"] = event_table[key].TriggeredOnly
				end
				if (event_table[key].Conditions ~= nil) then
					GrandStrategyEvents[key]["Conditions"] = event_table[key].Conditions
				end
				if (event_table[key].MinYear ~= nil) then
					GrandStrategyEvents[key]["MinYear"] = event_table[key].MinYear
				end
				if (event_table[key].MaxYear ~= nil) then
					GrandStrategyEvents[key]["MaxYear"] = event_table[key].MaxYear
				end
				if (event_table[key].RandomChance ~= nil) then
					GrandStrategyEvents[key]["RandomChance"] = event_table[key].RandomChance
				end
				if (event_table[key].RequiredEvents ~= nil) then
					GrandStrategyEvents[key]["RequiredEvents"] = {}
					for second_key, second_value in pairs(event_table[key].RequiredEvents) do
						GrandStrategyEvents[key].RequiredEvents[second_key] = event_table[key].RequiredEvents[second_key]
					end
				end
				if (event_table[key].Commodities ~= nil) then
					GrandStrategyEvents[key]["Commodities"] = {}
					for second_key, second_value in pairs(event_table[key].Commodities) do
						GrandStrategyEvents[key].Commodities[second_key] = event_table[key].Commodities[second_key]
					end
				end
				if (event_table[key].Provinces ~= nil) then
					GrandStrategyEvents[key]["Provinces"] = {}
					for second_key, second_value in pairs(event_table[key].Provinces) do
						GrandStrategyEvents[key].Provinces[second_key] = event_table[key].Provinces[second_key]
					end
				end
				if (event_table[key].SettlementBuildings ~= nil) then
					GrandStrategyEvents[key]["SettlementBuildings"] = {}
					for second_key, second_value in pairs(event_table[key].SettlementBuildings) do
						GrandStrategyEvents[key].SettlementBuildings[second_key] = event_table[key].SettlementBuildings[second_key]
					end
				end
				if (event_table[key].Units ~= nil) then
					GrandStrategyEvents[key]["Units"] = {}
					for second_key, second_value in pairs(event_table[key].Units) do
						GrandStrategyEvents[key].Units[second_key] = event_table[key].Units[second_key]
					end
				end
				if (event_table[key].Heroes ~= nil) then
					GrandStrategyEvents[key]["Heroes"] = {}
					for second_key, second_value in pairs(event_table[key].Heroes) do
						GrandStrategyEvents[key].Heroes[second_key] = event_table[key].Heroes[second_key]
					end
				end
				if (event_table[key].SecondFaction ~= nil) then
					GrandStrategyEvents[key]["SecondFaction"] = event_table[key].SecondFaction
				end
				if (event_table[key].SecondProvinces ~= nil) then
					GrandStrategyEvents[key]["SecondProvinces"] = {}
					for second_key, second_value in pairs(event_table[key].SecondProvinces) do
						GrandStrategyEvents[key].SecondProvinces[second_key] = event_table[key].SecondProvinces[second_key]
					end
				end
				if (event_table[key].Persistent ~= nil) then
					GrandStrategyEvents[key]["Persistent"] = event_table[key].Persistent
				end
				if (event_table[key].Options ~= nil) then
					GrandStrategyEvents[key]["Options"] = {}
					for i=1,table.getn(event_table[key].Options) do
						table.insert(GrandStrategyEvents[key].Options, event_table[key].Options[i])
					end
				end
				if (event_table[key].OptionConditions ~= nil) then
					GrandStrategyEvents[key]["OptionConditions"] = {}
					for i=1,table.getn(event_table[key].OptionConditions) do
						table.insert(GrandStrategyEvents[key].OptionConditions, event_table[key].OptionConditions[i])
					end
				end
				if (event_table[key].OptionEffects ~= nil) then
					GrandStrategyEvents[key]["OptionEffects"] = {}
					for i=1,table.getn(event_table[key].OptionEffects) do
						table.insert(GrandStrategyEvents[key].OptionEffects, event_table[key].OptionEffects[i])
					end
				end
				if (event_table[key].OptionTooltips ~= nil) then
					GrandStrategyEvents[key]["OptionTooltips"] = {}
					for i=1,table.getn(event_table[key].OptionTooltips) do
						table.insert(GrandStrategyEvents[key].OptionTooltips, event_table[key].OptionTooltips[i])
					end
				end
			end
		end
	end
	
	if (world == "Earth") then
		AddEventTable(EarthEvents)
		AddEventTable(GenericEvents)
	elseif (world == "Nidavellir") then
		AddEventTable(NidavellirEvents)
		AddEventTable(GenericEvents)
	elseif (world == "Random") then
		AddEventTable(NidavellirEvents)
		AddEventTable(EarthEvents)
		AddEventTable(GenericEvents)
	elseif (world == "Save") then
		AddEventTable(NidavellirEvents)
		AddEventTable(EarthEvents)
		AddEventTable(GenericEvents)
	end
end

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

local GermanicEvents = {
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
						if (IsMilitaryUnit(unitName)) then
							WorldMapProvinces.Astrakhan.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.Astrakhan.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(0, "UnitTypesCount", unitName)
							WorldMapProvinces.Don.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.Don.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(1, "UnitTypesCount", unitName)
						end
					end
				elseif (GrandStrategyFaction ~= nil and GrandStrategyFaction.Name ~= "Asa Tribe" and GrandStrategyFaction.Name ~= "Vana Tribe") then
					for i, unitName in ipairs(Units) do
						if (IsMilitaryUnit(unitName)) then
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
						if (IsMilitaryUnit(unitName)) then
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
							if (IsMilitaryUnit(unitName)) then
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
							if (IsMilitaryUnit(unitName)) then
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
						if (IsMilitaryUnit(unitName)) then
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
--				and SyncRand(100) < 50
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
							if (IsMilitaryUnit(unitName)) then
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
							if (IsMilitaryUnit(unitName)) then
								WorldMapProvinces.Jutland.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.Jutland.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(1, "UnitTypesCount", unitName)
							end
						end
					end
				elseif (GrandStrategyFaction ~= nil and GrandStrategyFaction.Name ~= "Asa Tribe") then
					AcquireProvince(WorldMapProvinces.Jutland, "Asa Tribe")
					for i, unitName in ipairs(Units) do
						if (IsMilitaryUnit(unitName)) then
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
		Description = "After establishing ourselves in the Jutland peninsula, we now have the opportunity to sail across this short sea... what will await us? Shall we set sail, entrusting one of our chieftains to rule this peninsula?",
		Conditions = function(s)
			if (
				EventFaction.Civilization == "germanic"
				and EventFaction.Name == "Asa Tribe"
				and WorldMapProvinces.Jutland.Owner == EventFaction.Name
				and WorldMapProvinces.Jutland.Units.unit_germanic_warrior >= 8 -- event only happens if player has enough warriors to successfully attack the province
				and ProvinceHasBorderWith(WorldMapWaterProvinces.NorthSea, WorldMapProvinces.Jutland)
				and ProvinceHasBorderWith(WorldMapWaterProvinces.NorthSea, WorldMapProvinces.Gotaland)
--				and SyncRand(100) < 50
			) then
				return true
			else
				return false
			end
		end,
		Options = {"~!Embark!", "~!Seafaring is not for us.", "Play as the ~!Jute Tribe"},
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
							if (IsMilitaryUnit(unitName)) then
								WorldMapProvinces.Sweden.Units[string.gsub(unitName, "-", "_")] = GetPlayerData(0, "UnitTypesCount", unitName)
							end
						end
						WorldMapProvinces.Sweden.SettlementBuildings.unit_germanic_town_hall = 1
						CenterMapOnTile(WorldMapProvinces.Sweden.SettlementLocation[1], WorldMapProvinces.Sweden.SettlementLocation[2])
						EventFaction.Prestige = EventFaction.Prestige + 25
						-- give Gotaland to the Goth Tribe
						EqualizeProvinceUnits(EventFaction)
						AcquireProvince(WorldMapProvinces.Gotaland, "Goth Tribe")
						AcquireFactionTechnologies(Factions.GothTribe, EventFaction)
					elseif (GameResult == GameDefeat) then
						for i, unitName in ipairs(Units) do
							if (IsMilitaryUnit(unitName)) then
								WorldMapProvinces.Gotaland.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.Gotaland.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(1, "UnitTypesCount", unitName)
							end
						end
					end
				elseif (GrandStrategyFaction ~= nil and GrandStrategyFaction.Name ~= "Asa Tribe") then
					AcquireProvince(WorldMapProvinces.Gotaland, "Asa Tribe")
					AcquireProvince(WorldMapProvinces.Sweden, "Asa Tribe")
					FormFaction(EventFaction, Factions.SwedeTribe)
					for i, unitName in ipairs(Units) do
						if (IsMilitaryUnit(unitName)) then
							WorldMapProvinces.Gotaland.Units[string.gsub(unitName, "-", "_")] = 0
							WorldMapProvinces.Sweden.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.Jutland.Units[string.gsub(unitName, "-", "_")] * 3 / 4
							WorldMapProvinces.Jutland.Units[string.gsub(unitName, "-", "_")] = 0
						end
					end
					WorldMapProvinces.Sweden.SettlementBuildings.unit_germanic_town_hall = 1
					EventFaction.Prestige = EventFaction.Prestige + 25
					-- give Gotaland to the Goth Tribe
					EqualizeProvinceUnits(EventFaction)
					AcquireProvince(WorldMapProvinces.Gotaland, "Goth Tribe")
					AcquireFactionTechnologies(Factions.GothTribe, EventFaction)
				end
				AcquireProvince(WorldMapProvinces.Jutland, "Jute Tribe")
				AcquireFactionTechnologies(Factions.JuteTribe, Factions.AsaTribe)
				DrawMinimap()
			end,
			function(s)
			end,
			function(s)
				Factions.AsaTribe.Prestige = Factions.AsaTribe.Prestige + 25
				AcquireProvince(WorldMapProvinces.Gotaland, "Asa Tribe")
				AcquireProvince(WorldMapProvinces.Sweden, "Asa Tribe")
				FormFaction(EventFaction, Factions.SwedeTribe)
				for i, unitName in ipairs(Units) do
					if (IsMilitaryUnit(unitName)) then
						WorldMapProvinces.Gotaland.Units[string.gsub(unitName, "-", "_")] = 0
						WorldMapProvinces.Sweden.Units[string.gsub(unitName, "-", "_")] = math.floor(WorldMapProvinces.Jutland.Units[string.gsub(unitName, "-", "_")] * 3 / 4)
						WorldMapProvinces.Jutland.Units[string.gsub(unitName, "-", "_")] = 0
					end
				end
				WorldMapProvinces.Sweden.SettlementBuildings.unit_germanic_town_hall = 1
				-- give Gotaland to the Goth Tribe
				EqualizeProvinceUnits(EventFaction)
				AcquireProvince(WorldMapProvinces.Gotaland, "Goth Tribe")
				AcquireFactionTechnologies(Factions.GothTribe, EventFaction)
					
				AcquireProvince(WorldMapProvinces.Jutland, "Jute Tribe")
				AcquireFactionTechnologies(Factions.JuteTribe, Factions.AsaTribe)
				GrandStrategyFaction = Factions.JuteTribe
				DrawMinimap()
			end
		}
	},
	DagChieftainOfTheGoths = { -- Dag is the first legendary king of Gotaland; Source: http://www.oe.eclipse.co.uk/nom/Sturlaug.htm
		Name = "Dag, Chieftain of the Goths",
		Description = "The notable Dag has been declared our chieftain.",
		Conditions = function(s)
			if (
				EventFaction.Name == "Goth Tribe"
			) then
				return true
			else
				return false
			end
		end,
		MinYear = -2800, -- approximately when Scandinavia was settled
		MaxYear = -2800,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				EventFaction.Prestige = EventFaction.Prestige + 1
				GrandStrategyEvent(Factions.SwedeTribe, GrandStrategyEvents.DagChieftainOfTheGothsSwedeTribe)
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	DagChieftainOfTheGothsSwedeTribe = { -- Dag is the first legendary king of Gotaland; Source: http://www.oe.eclipse.co.uk/nom/Sturlaug.htm
		Name = "Dag, Chieftain of the Goths",
		Description = "The tribesmen to our south have declared Dag as their chieftain.",
		TriggeredOnly = true,
		Options = {"~!OK", "Play as ~!Dag"},
		OptionEffects = {
			function(s)
			end,
			function(s)
				GrandStrategyFaction = Factions.GothTribe
				CenterMapOnTile(WorldMapProvinces.Gotaland.SettlementLocation[1], WorldMapProvinces.Gotaland.SettlementLocation[2])
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
				and SyncRand(100) < 25
			) then
				return true
			else
				return false
			end
		end,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				EventFaction.Prestige = EventFaction.Prestige + 3 -- promotion of the educated priest class
				EventFaction.Gold = EventFaction.Gold - 300 -- cost of the land grant
			end
		},
		OptionTooltips = {"-300 Gold, +3 Prestige"}
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
				and SyncRand(100) < 25
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
		Description = "Our chieftain's wife has bore him a son, who has been named Saeming. The notables of the tribe have given our ruler many gifts to commemorate Saeming's birth.",
		Conditions = function(s)
			if (
				WorldMapProvinces.Sweden.Owner == EventFaction.Name
				and WorldMapProvinces.Sweden.Civilization == "germanic"
			) then
				return true
			else
				return false
			end
		end,
		MinYear = -2800, -- approximately when Scandinavia was settled (in the Ynglinga Saga, Saeming is born just after the settlement of Scandinavia)
		MaxYear = -2800,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				EventFaction.Gold = EventFaction.Gold + 100 -- gifts
				EventFaction.Prestige = EventFaction.Prestige + 1
			end
		},
		OptionTooltips = {"+100 Gold, +1 Prestige"}
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
				EventFaction.Prestige = EventFaction.Prestige + 1
			end
		},
		OptionTooltips = {"+1 Prestige"}
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
				EventFaction.Prestige = EventFaction.Prestige + 1
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	NoblemansBurial = { -- the man from Muldbjerg; Source: http://natmus.dk/en/historical-knowledge/denmark/prehistoric-period-until-1050-ad/the-bronze-age/men-and-woman-in-the-bronze-age/the-man-from-muldbjerg/
		Name = "Nobleman's Burial",
		Description = "In 1365 BC, a nobleman was buried in the northwestern parts of the Jutland peninsula. Dressed in wool, he was laid down with his bronze sword in an oak coffin, which was then placed in a mound.",
		Conditions = function(s)
			if (
				WorldMapProvinces.Jutland.Owner == EventFaction.Name
				and WorldMapProvinces.Jutland.Civilization == "germanic"
			) then
				return true
			else
				return false
			end
		end,
		MinYear = -1365,
		MaxYear = -1365,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				EventFaction.Prestige = EventFaction.Prestige + 1
			end
		},
		OptionTooltips = {"+1 Prestige"}
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
				EventFaction.Prestige = EventFaction.Prestige + 1
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	BeldegsLands = { -- Beldeg (Baldr), the first legendary ruler of Westphalia (in the sagas he became ruler of Westphalia even before the conquest of Scandinavia, but here we make him later, belonging to the time of the germanic expansion to Westphalia); Source: "The Prose Edda", Snorri Sturlson, 1916, pp. 7-8.
		Name = "Beldeg's Lands",
		Description = "The territory of Westphalia has been entrusted to the warrior known by the name of Beldeg.",
		Conditions = function(s)
			if (
				(EventFaction.Civilization == "germanic" or EventFaction.Civilization == "teuton")
				and WorldMapProvinces.Rhineland.Owner == EventFaction.Name
				and ProvinceHasBuildingType(WorldMapProvinces.Rhineland, "town-hall")
				and GetFactionMilitaryScore(EventFaction) > 250 -- basic infantry x 5
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
				(EventFaction.Civilization == "germanic" or EventFaction.Civilization == "teuton")
				and WorldMapProvinces.Netherlands.Owner == EventFaction.Name -- the Netherlands were the Franks' homelands
				and ProvinceHasBuildingType(WorldMapProvinces.Netherlands, "town-hall")
				and GetFactionMilitaryScore(EventFaction) > 250 -- basic infantry x 5 -- don't fire this event before the parts of the faction have enough means to defend themselves from invasion by the Danes
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
				(EventFaction.Civilization == "germanic" or EventFaction.Civilization == "teuton")
				and WorldMapProvinces.Brandenburg.Owner == EventFaction.Name -- the Netherlands were the Franks' homelands
				and ProvinceHasBuildingType(WorldMapProvinces.Brandenburg, "town-hall")
				and GetFactionMilitaryScore(EventFaction) > 250 -- basic infantry x 5 -- don't fire this event before the parts of the faction have enough means to defend themselves from invasion by the Danes
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
	TeutonCultureDevelops = {
		Name = "Teuton Culture Develops",
		Description = "With the passage of time, our customs and language have diverged significantly from the general Germanic ones. The West Germanic tongue has become predominant amongst us, and with it the Teuton culture.",
		Conditions = function(s)
			if (
				EventFaction.Civilization == "germanic"
				and FactionHasTechnologyType(EventFaction, "melee-weapon-1") -- must have reached the iron age
				and FactionHasTechnologyType(EventFaction, "bronze-shield")
				and FactionHasTechnologyType(EventFaction, "ranged-projectile-1")
				and ((EventFaction.Name == "Asa Tribe" or EventFaction.Name == "Frank Tribe" or EventFaction.Name == "Jute Tribe" or EventFaction.Name == "Saxon Tribe" or EventFaction.Name == "Suebi Tribe") or (EventFaction.Name == GrandStrategyFaction.Name and (EventFaction.Name == "Dane Tribe" or EventFaction.Name == "Goth Tribe" or EventFaction.Name == "Swede Tribe")))
				and SyncRand(50) < 1
			) then
				return true
			end
			return false
		end,
		Persistent = true,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				if (EventFaction.Name == "Asa Tribe") then
					FormFaction(EventFaction, Factions.JuteTribe)
					EventFaction = Factions.JuteTribe
				end
				EventFaction.Civilization = "teuton"
				for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
					if (
						WorldMapProvinces[province_key].Civilization == "germanic"
					) then
						ChangeProvinceCulture(WorldMapProvinces[province_key], "teuton") -- change the culture of only one province, and let cultural spread do the rest
						break
					end
				end
			end
		}
	},
	TeutonCultureSpreads = {
		Name = "Teuton Culture Spreads",
		Description = "The people of PROVINCE_NAME have adopted Teuton culture.",
		Conditions = function(s)
			if (EventFaction.Civilization == "teuton") then
				for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
					if (
						WorldMapProvinces[province_key].Civilization == "germanic"
						and SyncRand(50) < 1
						and ProvinceBordersCulture(WorldMapProvinces[province_key], "teuton")
					) then
						EventProvince = WorldMapProvinces[province_key]
						return true
					end
				end
			end
			return false
		end,
		Persistent = true,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeProvinceCulture(EventProvince, "teuton")
			end
		}
	},
	GothCultureDevelops = {
		Name = "Goth Culture Develops",
		Description = "With the passage of time, our customs and language have diverged significantly from the general Germanic ones. The East Germanic tongue has become predominant amongst us, and with it the Goth culture.",
		Conditions = function(s)
			if (
				EventFaction.Civilization == "germanic"
				and FactionHasTechnologyType(EventFaction, "melee-weapon-1") -- must have reached the iron age
				and FactionHasTechnologyType(EventFaction, "bronze-shield")
				and FactionHasTechnologyType(EventFaction, "ranged-projectile-1")
				and (EventFaction.Name == "Asa Tribe" or EventFaction.Name == "Goth Tribe")
				and EventFaction.Name ~= GrandStrategyFaction.Name -- only available for NPC factions, since the goth civilization is not playable
				and SyncRand(50) < 1
			) then
				return true
			end
			return false
		end,
		Persistent = true,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				if (EventFaction.Name == "Asa Tribe") then
					FormFaction(EventFaction, Factions.GothTribe)
					EventFaction = Factions.GothTribe
				end
				EventFaction.Civilization = "goth"
				for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
					if (
						WorldMapProvinces[province_key].Civilization == "germanic"
					) then
						ChangeProvinceCulture(WorldMapProvinces[province_key], "goth") -- change the culture of only one province, and let cultural spread do the rest
						break
					end
				end
			end
		}
	},
	GothCultureSpreads = {
		Name = "Goth Culture Spreads",
		Description = "The people of PROVINCE_NAME have adopted Goth culture.",
		Conditions = function(s)
			if (EventFaction.Civilization == "goth") then
				for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
					if (
						WorldMapProvinces[province_key].Civilization == "germanic"
						and SyncRand(50) < 1
						and ProvinceBordersCulture(WorldMapProvinces[province_key], "goth")
					) then
						EventProvince = WorldMapProvinces[province_key]
						return true
					end
				end
			end
			return false
		end,
		Persistent = true,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeProvinceCulture(EventProvince, "goth")
			end
		}
	},
	PytheasVoyageGoths = { -- Source: Carl Waldman and Catherine Mason, "Encyclopedia of European Peoples", 2006, p. 350; Source: Pliny the Elder, "The Natural History", 37.11.
		Name = "Pytheas' Voyage",
		Description = "A Greek scholar and explorer, Pytheas, arrived in our shores. He seemed interested in the island which is a day's sail away from us, due to the amber thrown upon its coast by waves in the spring. He also asked about our use of the material for fuel, and soon went back to the seas to continue his voyage.",
		Conditions = function(s)
			if (
				(EventFaction.Civilization == "germanic" or EventFaction.Civilization == "goth" or EventFaction.Civilization == "norse" or EventFaction.Civilization == "teuton")
				and WorldMapProvinces.Gotaland.Owner == EventFaction.Name
				and SyncRand(100) < 50
			) then
				return true
			else
				return false
			end
		end,
		MinYear = -325,
		MaxYear = -319,
		Options = {"A ~!wise man!"},
		OptionEffects = {
			function(s)
				EventFaction.Research = EventFaction.Research + 1
				EventFaction.Prestige = EventFaction.Prestige + 1
			end
		},
		OptionTooltips = {"+1 Research, +1 Prestige"}
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
							if (IsMilitaryUnit(unitName)) then
								WorldMapProvinces.Burgundy.Units[string.gsub(unitName, "-", "_")] = GetPlayerData(0, "UnitTypesCount", unitName)
							end
						end
						WorldMapProvinces.France.Units.unit_germanic_warrior = 6 -- to give the Aedui something of a defense
						CenterMapOnTile(WorldMapProvinces.Burgundy.SettlementLocation[1], WorldMapProvinces.Burgundy.SettlementLocation[2])
					elseif (GameResult == GameDefeat) then
						for i, unitName in ipairs(Units) do
							if (IsMilitaryUnit(unitName)) then
								WorldMapProvinces.France.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.France.Units[string.gsub(unitName, "-", "_")] + GetPlayerData(1, "UnitTypesCount", unitName)
							end
						end
					end
				elseif (GrandStrategyFaction ~= nil and GrandStrategyFaction.Name ~= "Suebi Tribe") then
					AcquireProvince(WorldMapProvinces.Burgundy, "Suebi Tribe")
					for i, unitName in ipairs(Units) do
						if (IsMilitaryUnit(unitName)) then
							WorldMapProvinces.France.Units[string.gsub(unitName, "-", "_")] = math.floor(WorldMapProvinces.Brandenburg.Units[string.gsub(unitName, "-", "_")] * 3 / 4) -- to give them something of a defense
							WorldMapProvinces.Burgundy.Units[string.gsub(unitName, "-", "_")] = math.floor(WorldMapProvinces.Brandenburg.Units[string.gsub(unitName, "-", "_")] / 2)
							WorldMapProvinces.Brandenburg.Units[string.gsub(unitName, "-", "_")] = 0
						end
					end
					WorldMapProvinces.Brandenburg.Units.unit_germanic_warrior = 4 -- to give them something of a defense
				end
				DrawMinimap()
			end
		}
	},
	HistoriaEcclesiasticaVenerabilisBedae = { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 34.
		Name = "Historia Ecclesiastica Venerabilis Bedae",
		Description = "The venerable Bede has written an important work of history, the Historia Ecclesiastica Venerabilis Bedae.",
		Conditions = function(s)
			if (
				WorldMapProvinces.England.Owner == EventFaction.Name
				and WorldMapProvinces.England.Civilization == "teuton"
--				and SyncRand(100) < 10
			) then
				return true
			else
				return false
			end
		end,
		MinYear = 731, -- written about the year 731
		MaxYear = 731, -- written about the year 731
		RequiredEvents = {
--			SnorriSturlsonSage = true
		},
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				EventFaction.Prestige = EventFaction.Prestige + 5
			end
		},
		OptionTooltips = {"+5 Prestige"}
	},
	HorseFleshEatingProhibited = { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 69.
		Name = "Horse-Flesh Eating Prohibited",
		Description = "A council gathered in Mercia has declared the old custom of eating horse-flesh to be forbidden, judging it to be incompatible with Christian doctrine.",
		Conditions = function(s)
			if (
				WorldMapProvinces.England.Owner == EventFaction.Name
				and (WorldMapProvinces.England.Civilization == "germanic" or WorldMapProvinces.England.Civilization == "teuton" or WorldMapProvinces.England.Civilization == "norse" or WorldMapProvinces.England.Civilization == "goth") -- eating horse-flesh was a Germanic custom
				and SyncRand(100) < 1 -- should take a while for this to happen after Christianization
			) then
				return true
			else
				return false
			end
		end,
		RequiredEvents = {
			AugustineArchbishopOfEngland = true -- should require England to be Christian instead, to make the event more dynamic (when religions are implemented in the game)
		},
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				EventFaction.Prestige = EventFaction.Prestige + 1
				-- should increase Faith
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	TheEastPrussianLandOrdinance = { -- Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 23.
		Name = "The East Prussian Land Ordinance",
		Description = "With the passage of a new East Prussian Land Ordinance, peasants have now lost the right of movement.",
		Conditions = function(s)
			if (
				EventFaction.Name == "Prussia" -- should also be possible for other countries, but let's leave this here for now so that this event doesn't trigger in antiquity
				and WorldMapProvinces.Prussia.Owner == EventFaction.Name
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
		OptionTooltips = {"+500 Gold, -5 Research", ""}
	},
	TheConfirmationOfSeignorialPrivilegesLivoniaEstonia = { -- Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 18.
		Name = "The Confirmation of Seignorial Privileges",
		Description = "The aristocrats of Livonia and Estonia have managed to acquire an official confirmation of their privileges, which in fact goes beyond a mere statement of the status quo and accepts extended privileges for the landed nobility in these provinces.",
		Conditions = function(s)
			if (
				EventFaction.Name == "Prussia" -- should also be possible for other countries, but let's leave this here for now so that this event doesn't trigger in antiquity
				and WorldMapProvinces.BalticLands.Owner == EventFaction.Name
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
		OptionTooltips = {"+500 Gold, -5 Research", ""}
	},
	ThePeasantsAndShepherdsOrdinance = { -- Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 30.
		Name = "The Peasants' and Shepherds' Ordinance",
		Description = "The passage of the Peasants' and Shepherds' Ordinance has extinguished hereditary tenure of land amongst the peasantry, so that they now hold these lands as a lease from their lords.",
		Conditions = function(s)
			if (
				(EventFaction.Name == "Brandenburg" or EventFaction.Name == "Prussia") -- should also be possible for other countries, but let's leave this here for now so that this event doesn't trigger in antiquity
				and (WorldMapProvinces.Prussia.Owner == EventFaction.Name or WorldMapProvinces.Brandenburg.Owner == EventFaction.Name) -- can happen in either Western or Eastern Pommerania (historically it happened in both)
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
		OptionTooltips = {"+500 Gold, -5 Research", ""}
	},
	Britannia = { -- Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 14.
		Name = "Britannia",
		Description = "William Camden has published Britannia, an analysis of the material remnants of ancient British peoples. One of the objects analyzed by him was the Stonehenge monument.",
		Conditions = function(s)
			if (
				WorldMapProvinces.England.Owner == EventFaction.Name
				and WorldMapProvinces.England.Civilization == "teuton" -- should be English
			) then
				return true
			else
				return false
			end
		end,
		-- should require some event related to Celtic culture in England to have happened
		MinYear = 1586, -- events which relate to specific persons directly have dates attached to them
		MaxYear = 1586,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				EventFaction.Research = EventFaction.Research + 1
			end
		},
		OptionTooltips = {"+1 Research"}
	},
	MartinTrampesFarm = { -- Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 12.
		Name = "Martin Trampe's Farm",
		Description = "A serf from Pomerania called Martin Trampe had managed to accumulate enough money to buy his freedom for 60 reichstaler. After becoming a free man, he has been enterprising enough to gather sufficient funds to buy a large farm in the Brandenburg Uckermark, although to do so he had to willingly submit himself to hereditary subjection to the local lord. Should a man exchange his hard-won freedom for land?",
		Conditions = function(s)
			if (
				EventFaction.Civilization == "teuton"
				and WorldMapProvinces.Brandenburg.Owner == EventFaction.Name
				and WorldMapProvinces.Brandenburg.Civilization == "teuton"
			) then
				return true
			else
				return false
			end
		end,
		MinYear = 1667, -- events which relate to specific persons directly have dates attached to them
		MaxYear = 1667,
		Options = {"More ~!taxes for us!"},
		OptionEffects = {
			function(s)
				EventFaction.Gold = EventFaction.Gold + 50
			end
		},
		OptionTooltips = {"+50 Gold"}
	},
	HansRutenbergsEviction = { -- Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 37.
		Name = "Hans Rutenberg's Eviction",
		Description = "The farmer Hans Rutenberg, from the village of Woddrow in PROVINCE_NAME, has refused as a form of protest to do the work required of him to his lord, and as a consequence was evicted from his land.",
		Conditions = function(s)
			if (
				EventFaction.Civilization == "teuton"
				and WorldMapProvinces.Brandenburg.Owner == EventFaction.Name
				and WorldMapProvinces.Brandenburg.Civilization == "teuton"
			) then
				EventProvince = WorldMapProvinces.Brandenburg
				return true
			else
				return false
			end
		end,
		MinYear = 1692, -- events which relate to specific persons directly have dates attached to them
		MaxYear = 1692,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				EventFaction.Gold = EventFaction.Gold - 50
				EventFaction.Gold = EventFaction.Research - 1
			end
		},
		OptionTooltips = {"-50 Gold, -1 Research"}
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
				EventFaction.Prestige = EventFaction.Prestige + 1
			end
		},
		OptionTooltips = {"+500 Gold, +1 Research", "+1 Prestige"}
	},
	PrinciplesOfGeology = { -- Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 17.
		Name = "Principles of Geology",
		Description = "The Scottish geologist Charles Lyell has published his Principles of Geology, in which he argues that geological processes in the past occurred the same as in the present, and throughout an enormously long period.",
		Conditions = function(s)
			if (
				WorldMapProvinces.Scotland.Owner == EventFaction.Name
				and WorldMapProvinces.Scotland.Civilization == "teuton" -- should be English
			) then
				return true
			else
				return false
			end
		end,
		MinYear = 1833, -- events which relate to specific persons directly have dates attached to them
		MaxYear = 1833,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				EventFaction.Research = EventFaction.Research + 1
			end
		},
		OptionTooltips = {"+1 Research"}
	},
	OnTheOriginOfSpecies = { -- Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 17.
		Name = "On the Origin of Species",
		Description = "Charles Darwin has published a work entitled On the Origin of Species by Means of Natural Selection, in which he proposes that living organisms are the result of a long process of natural evolution.",
		Conditions = function(s)
			if (
				WorldMapProvinces.England.Owner == EventFaction.Name
				and WorldMapProvinces.England.Civilization == "teuton" -- should be English
			) then
				return true
			else
				return false
			end
		end,
		MinYear = 1859, -- events which relate to specific persons directly have dates attached to them
		MaxYear = 1859,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				EventFaction.Research = EventFaction.Research + 1
			end
		},
		OptionTooltips = {"+1 Research"}
	},
	AntiquityOfMan = { -- Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 17.
		Name = "Antiquity of Man",
		Description = "The Scottish geologist Charles Lyell has published a work entitled Antiquity of Man, in which he seeks to connect theories on natural evolution, geological processes and finds of ancient objects, to provide a new understanding of prehistoric peoples.",
		Conditions = function(s)
			if (
				WorldMapProvinces.Scotland.Owner == EventFaction.Name
				and WorldMapProvinces.Scotland.Civilization == "teuton" -- should be English
			) then
				return true
			else
				return false
			end
		end,
		MinYear = 1863, -- events which relate to specific persons directly have dates attached to them
		MaxYear = 1863,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				EventFaction.Research = EventFaction.Research + 1
			end
		},
		OptionTooltips = {"+1 Research"}
	},
	PrehistoricTimes = { -- Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 17.
		Name = "Prehistoric Times",
		Description = "Sir John Lubbock has published his Prehistoric Times, in which he divides the Stone Age between the Old Stone Age (the Palaeolithic) and the New Stone Age (the Neolithic). The former was marked by the use of flaked stone, while in the latter polished stone was used.",
		Conditions = function(s)
			if (
				WorldMapProvinces.England.Owner == EventFaction.Name
				and WorldMapProvinces.England.Civilization == "teuton" -- should be English
			) then
				return true
			else
				return false
			end
		end,
		MinYear = 1865, -- events which relate to specific persons directly have dates attached to them
		MaxYear = 1865,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				EventFaction.Research = EventFaction.Research + 1
			end
		},
		OptionTooltips = {"+1 Research"}
	},
	ArchivFuerAnthropologie = { -- Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 18.
		Name = "Archiv für Anthropologie",
		Description = "The journal Archiv für Anthropologie has been founded in Germany, preoccuping itself with research on prehistory..",
		Conditions = function(s)
			if (
				WorldMapProvinces.Brandenburg.Owner == EventFaction.Name -- where was it actually founded? Brandenburg set here since Berlin was Germany's capital
				and WorldMapProvinces.Brandenburg.Civilization == "teuton"
			) then
				return true
			else
				return false
			end
		end,
		MinYear = 1865, -- to avoid the event happening too soon (should be replaced by technologies)
		MaxYear = 1865,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				EventFaction.Research = EventFaction.Research + 1
			end
		},
		OptionTooltips = {"+1 Research"}
	}
}
	
AddEventTable(GermanicEvents)

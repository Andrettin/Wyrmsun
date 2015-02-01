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
		Description = "After establishing ourselves in the Jutland peninsula, we now have the opportunity to sail across this short sea... what will await us? Shall we set sail, leaving your son Skjold to rule this peninsula?",
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
							if (IsMilitaryUnit(unitName)) then
								WorldMapProvinces.Sweden.Units[string.gsub(unitName, "-", "_")] = GetPlayerData(0, "UnitTypesCount", unitName)
							end
						end
						WorldMapProvinces.Sweden.SettlementBuildings.unit_germanic_town_hall = 1
						CenterMapOnTile(WorldMapProvinces.Sweden.SettlementLocation[1], WorldMapProvinces.Sweden.SettlementLocation[2])
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
					if (IsMilitaryUnit(unitName)) then
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
							WorldMapProvinces.Burgundy.Units[string.gsub(unitName, "-", "_")] = math.floor(WorldMapProvinces.Brandenburg.Units[string.gsub(unitName, "-", "_")] * 3 / 4)
							WorldMapProvinces.Brandenburg.Units[string.gsub(unitName, "-", "_")] = 0
						end
					end
					WorldMapProvinces.Brandenburg.Units.unit_germanic_warrior = 4 -- to give them something of a defense
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
	NoblesAcquireLegalJurisdictionPrivilege = { -- Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 20.
		Name = "Nobles Acquire Legal Jurisdiction Privilege",
		Description = "The Danish nobility has managed to acquire the right of legal jurisdiction over their villagers.",
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
				EventFaction.Name == "Teutonic Order" -- should also be possible for other countries, but let's leave this here for now so that this event doesn't trigger in antiquity
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
	}
}
	
AddEventTable(GermanicEvents)

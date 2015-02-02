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

local EarthEvents = {
	MigrationOfTheVana = {
		Name = "Migration of the Vana",
		Description = "Our chieftains desire to migrate to the west, to more hospitable lands for settlement...",
		Conditions = function(s)
			if (
				EventFaction.Name == "Vana Tribe"
				and WorldMapProvinces.Don.Owner == EventFaction.Name
				and SyncRand(200) < 1
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
	AskRomeForHelp = { -- Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 218.
		Name = "Ask Rome for Help?",
		Description = "We have been completely beaten by the Suebi in the battlefield, but there may still be hope for us if the Romans intervene on our side. Shall we send Divitiacus to ask for their aid?",
		Conditions = function(s)
			if (
				EventFaction.Name == "Aedui Tribe"
				and WorldMapProvinces.Italy.Owner == "Rome"
				and EventFaction.Diplomacy.SuebiTribe == "War"
				and Factions.Rome.Diplomacy.SuebiTribe == "Peace"
				and WorldMapProvinces.Burgundy.Owner == "Suebi Tribe"
				and SyncRand(100) < 33
			) then
				return true
			else
				return false
			end
		end,
		Options = {"Send ~!Divitiacus", "~!No"},
		OptionEffects = {
			function(s)
				GrandStrategyEvent(Factions.Rome, GrandStrategyEvents.DivitiacusPleaForAssistance)
			end,
			function(s)
			end
		}
	},
	DivitiacusPleaForAssistance = { -- Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 218.
		Name = "Divitiacus' Plea for Assistance",
		Description = "The Aedui chief Divitiacus has told us of a Germanic invasion of Gaul, and asks for our assistance in pushing them back beyond the Rhine.",
		TriggeredOnly = true,
		Options = {"~!Accept", "~!Decline"},
		OptionEffects = {
			function(s)
				DeclareWar(EventFaction.Name, "Suebi Tribe")
			end,
			function(s)
			end
		},
		OptionTooltips = {"War with the Suebi Tribe", ""}
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
	},
	HiberniaConquered = {
		Name = "Hibernia Conquered",
		Description = "We have managed to conquer Hibernia, making it a new province of ours.",
		Conditions = function(s)
			if (
				EventFaction.Name == "Rome"
				and WorldMapProvinces.Ireland.Owner == EventFaction.Name
				and WorldMapProvinces.Ireland.Name ~= "Hibernia"
			) then
				return true
			else
				return false
			end
		end,
		Persistent = true,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				WorldMapProvinces.Ireland.Name = "Hibernia"
				WorldMapWaterProvinces.IrishSea.Name = "Hibernian Ocean"
			end
		}
	},
	IrelandConquered = {
		Name = "Ireland Conquered",
		Description = "We have managed to conquer Ireland, making it a new province of ours.",
		Conditions = function(s)
			if (
				EventFaction.Name ~= "Rome"
				and WorldMapProvinces.Ireland.Owner == EventFaction.Name
				and WorldMapProvinces.Ireland.Name ~= "Ireland"
			) then
				return true
			else
				return false
			end
		end,
		Persistent = true,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				WorldMapProvinces.Ireland.Name = "Ireland"
				WorldMapWaterProvinces.IrishSea.Name = "Irish Sea"
			end
		}
	}
}
	
AddEventTable(EarthEvents)

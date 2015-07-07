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
--      (c) Copyright 2015 by Andrettin
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
			OnTheVanaquisl = true
		},
		Options = {"~!OK", "This is our ~!home"},
		OptionEffects = {
			function(s)
				WorldMapProvinces.Don.SettlementBuildings.unit_germanic_town_hall = 0
				WorldMapProvinces.Don.SettlementBuildings.unit_germanic_barracks = 0
				WorldMapProvinces.Don.Units.unit_germanic_warrior = 0
				WorldMapProvinces.Aquitaine.Units.unit_germanic_warrior = 6
				WorldMapProvinces.Austria.Units.unit_germanic_warrior = 6
				WorldMapProvinces.Belgium.Units.unit_germanic_warrior = 6
				WorldMapProvinces.Bohemia.Units.unit_germanic_warrior = 6
				WorldMapProvinces.Burgundy.Units.unit_germanic_warrior = 6
				WorldMapProvinces.France.Units.unit_germanic_warrior = 6
				WorldMapProvinces.Latium.Units.unit_germanic_warrior = 6
				WorldMapProvinces.Switzerland.Units.unit_germanic_warrior = 6
				WorldMapProvinces.Bavaria.Units.unit_germanic_warrior = 4 -- make Bavaria easier to be conquered by the neighboring Celtic tribes
				AcquireProvince(WorldMapProvinces.Don, "")
				ChangeProvinceCulture(WorldMapProvinces.Don, "")
				AcquireFactionTechnologies(Factions.AeduiTribe, EventFaction)
				AcquireFactionTechnologies(Factions.ArverniTribe, EventFaction)
				AcquireFactionTechnologies(Factions.BoiiTribe, EventFaction)
				AcquireFactionTechnologies(Factions.HelvetiiTribe, EventFaction)
				AcquireFactionTechnologies(Factions.MenapiiTribe, EventFaction)
				AcquireFactionTechnologies(Factions.NoriciTribe, EventFaction)
				AcquireFactionTechnologies(Factions.SequaniTribe, EventFaction)
				AcquireFactionTechnologies(Factions.Rome, EventFaction)
				AcquireProvince(WorldMapProvinces.Aquitaine, "Arverni Tribe")
				AcquireProvince(WorldMapProvinces.Austria, "Norici Tribe")
				AcquireProvince(WorldMapProvinces.Belgium, "Menapii Tribe")
				AcquireProvince(WorldMapProvinces.Bohemia, "Boii Tribe")
				AcquireProvince(WorldMapProvinces.Burgundy, "Sequani Tribe")
				AcquireProvince(WorldMapProvinces.France, "Aedui Tribe")
				AcquireProvince(WorldMapProvinces.Latium, "Rome")
				AcquireProvince(WorldMapProvinces.Switzerland, "Helvetii Tribe")
				DrawMinimap()
			end,
			function(s)
			end
		}
	},
	TheEruptionOfThera = { -- Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, pp. 43-44.
		Name = "The Eruption of Thera",
		Description = "The volcano in the isle of Thera, not far from PROVINCE_NAME, has erupted!",
		Conditions = function(s)
			if (
				WorldMapProvinces.Crete.Owner == EventFaction.Name
			) then
				EventProvince = WorldMapProvinces.Crete
				return true
			else
				return false
			end
		end,
		MinYear = -1628, -- natural disasters are linked to specific dates
		MaxYear = -1628,
		Options = {"Oh ~!no!"},
		OptionEffects = {
			function(s)
				EventFaction.Prestige = EventFaction.Prestige - 10
				-- should perhaps cause some bad economic effects?
			end
		},
		OptionTooltips = {"-10 Prestige"}
	},
	TheWhiteHorse = { -- Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 46.
		Name = "The White Horse",
		Description = "The people of PROVINCE_NAME have carved the figure of a horse on a hill, filling it with chalk afterwards, resulting in a huge symbol of a white horse.",
		Conditions = function(s)
			if (
				WorldMapProvinces.England.Owner == EventFaction.Name -- was made at Uffington, in southern England
				and WorldMapProvinces.England.Civilization == "celt" -- a Celtic culture did this
				and ProvinceHasBuildingType(WorldMapProvinces.England, "smithy") -- happened in the late bronze age, possibly required bronze age tools
				and SyncRand(100) < 1
			) then
				EventProvince = WorldMapProvinces.England
				return true
			else
				return false
			end
		end,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				EventFaction.Prestige = EventFaction.Prestige + 1
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	AskRomeForHelp = { -- Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 218.
		Name = "Ask Rome for Help?",
		Description = "We have been completely beaten by the Suebi in the battlefield, but there may still be hope for us if the Romans intervene on our side. Shall we send Divitiacus to ask for their aid?",
		Conditions = function(s)
			if (
				EventFaction.Name == "Aedui Tribe"
				and WorldMapProvinces.NorthItaly.Owner == "Rome"
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
		Description = "The Aedui chief Divitiacus has told us of a German invasion of Gaul, and asks for our assistance in pushing them back beyond the Rhine.",
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
	TheEruptionOfHekla = { -- Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 49.
		Name = "The Eruption of Hekla",
		Description = "The volcano of Hekla in PROVINCE_NAME has erupted, destroying a farmstead in PROVINCE_NAME's southwest!",
		Conditions = function(s)
			if (
				WorldMapProvinces.Iceland.Owner == EventFaction.Name
			) then
				EventProvince = WorldMapProvinces.Iceland
				return true
			else
				return false
			end
		end,
		MinYear = 1104, -- natural disasters are linked to specific dates
		MaxYear = 1104,
		Options = {"Oh ~!no!"},
		OptionEffects = {
			function(s)
				EventFaction.Gold = EventFaction.Gold - 100
				EventFaction.Prestige = EventFaction.Prestige - 1
			end
		},
		OptionTooltips = {"-100 Gold, -1 Prestige"}
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
	CelticAndAntediluvianAntiquities = { -- Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 17.
		Name = "Celtic and Antediluvian Antiquities",
		Description = "The French customs officer and amateur archaeologist, Jacques Boucher de Crèvecoeur de Perthes, after doing excavations in the Somme region, has published a his Celtic and Antediluvian Antiquities in three volumes. In his work, he established a stark division between ancient flaked tools (which he called Antediluvian) and the more recent polished ones (which he named Celtic).",
		Conditions = function(s)
			if (
				WorldMapProvinces.France.Owner == EventFaction.Name
				and WorldMapProvinces.France.Civilization == "latin" -- should be French
			) then
				return true
			else
				return false
			end
		end,
		MinYear = 1864, -- events which relate to specific persons directly have dates attached to them
		MaxYear = 1864,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				EventFaction.Research = EventFaction.Research + 1
			end
		},
		OptionTooltips = {"+1 Research"}
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
	MateriauxPourLHistoireDeLHomme = { -- Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 18.
		Name = "Matériaux pour l'histoire de l'homme",
		Description = "A new periodical has been founded in France, the Matériaux pour l'histoire positive et philosophique de l'homme, which preoccupies itself with research on prehistory.",
		Conditions = function(s)
			if (
				WorldMapProvinces.France.Owner == EventFaction.Name
				and WorldMapProvinces.France.Civilization == "latin" -- should be French
			) then
				return true
			else
				return false
			end
		end,
		MinYear = 1864, -- to avoid the event happening too soon (should be replaced by technologies)
		MaxYear = 1864,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				EventFaction.Research = EventFaction.Research + 1
			end
		},
		OptionTooltips = {"+1 Research"}
	}
}
	
AddEventTable(EarthEvents)

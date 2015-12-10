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

local GermanicEvents = {
	TrorInheritsHisWeapons = {
		Name = "Tror Inherits His Weapons",
		Description = "The young Tror, son of the fair lady Troan, came to these lands ten years ago in exile from the devastated realm of his family. Our chieftain Lorikus took him as a foster-child. Today, the fair-haired Tror - despite his youth - has claimed his father's weapons for himself.",
		Conditions = function(s)
			if (
				EventFaction.Civilization == "germanic"
				and EventFaction.Name == "Asa Tribe"
				and GetFactionRuler("germanic", "Asa Tribe") == "Lorikus"
--				and FactionHasHero("germanic", "Asa Tribe", "Tror")
				and GrandStrategyHeroIsAlive("Tror")
			) then
				return true
			else
				return false
			end
		end,
		MinYear = -2990,
		Options = {"A ~!brave boy!"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	LorikusDemise = {
		Name = "Lorikus' Demise",
		Description = "The handsome young Tror has grown to his full measure of strength. Conscious of his might and discontent with his fate as a subject of Lorikus' family, the ambitious Tror has slain the chieftain, taking his place!",
		RequiredEvents = {
			TrorInheritsHisWeapons = true
		},
		Conditions = function(s)
			if (
				EventFaction.Civilization == "germanic"
				and EventFaction.Name == "Asa Tribe"
				and GetFactionRuler("germanic", "Asa Tribe") == "Lorikus"
--				and FactionHasHero("germanic", "Asa Tribe", "Tror")
				and GrandStrategyHeroIsAlive("Tror")
			) then
				return true
			else
				return false
			end
		end,
		MinYear = -2988,
		Options = {"What will the ~!future hold?"},
		OptionEffects = {
			function(s)
				Event(
					"Tror",
					"My grandfather was a king beyond these lands... And though my family has been disgraced, we were born to rule!",
					"Asa Tribe",
					{"~!OK"},
					{function(s)
						SetFactionRuler("germanic", "Asa Tribe", "Tror")
						KillGrandStrategyHero("Lorikus")
					end}
				)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 3)
			end
		},
		OptionTooltips = {"+3 Prestige\nChieftain Lorikus dies\nTror becomes our chieftain"}
	},
	OnTheVanaquisl = {
		Name = "On the Vanaquisl",
		Description = "Our people hunger for new land: the steppes we live in are no longer enough for our sustenance. Neighboring us are the Vana people, and adding their lands to our own may well solve our dilemma. Shall we attack them?",
		Conditions = function(s)
			if (
				EventFaction.Civilization == "germanic"
				and EventFaction.Name == "Asa Tribe"
				and GetProvinceOwner("Astrakhan") == EventFaction.Name
				and GetProvinceOwner("Don") == "Vana Tribe"
--				and GetFactionRuler(EventFaction.Civilization, EventFaction.Name) ~= "Lorikus" -- only begin the migration with Tror and his descendants
				and GetProvinceUnitQuantity("Astrakhan", "unit-germanic-warrior") >= 8 -- event only happens if player has gathered enough warriors for a raid
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
				if (GrandStrategyFaction ~= nil and GrandStrategyFaction.Name == "Asa Tribe" and wyr.preferences.AutomaticBattles == false) then
					GrandStrategyEventMap = true
					GetMapInfo("maps/earth/tanais.smp")
					CurrentQuest = "On the Vanaquisl"
					RunMap("maps/earth/tanais.smp")
					GrandStrategyEventMap = false
					if (GameResult == GameVictory) then
						ChangeFactionResource("germanic", "Asa Tribe", "gold", 1000) -- gold from raiding Vanaland
						ChangeFactionResource("celt", "Vana Tribe", "gold", -1000) -- gold lost from the raid
						SetProvinceSettlementBuilding("Don", "unit-germanic-town-hall", false)
						ChangeProvinceUnitQuantity("Don", "unit-germanic-warrior", 8) -- increase the quantity of warriors in Vanaland by 8, to make it defensible after this scenario is over
					end
					for i, unitName in ipairs(Units) do
						if (IsOffensiveMilitaryUnit(unitName)) then
							ChangeProvinceUnitQuantity("Astrakhan", unitName, math.ceil(GetPlayerData(0, "UnitTypesCount", unitName) / BattalionMultiplier))
							ChangeProvinceUnitQuantity("Don", unitName, math.ceil(GetPlayerData(1, "UnitTypesCount", unitName) / BattalionMultiplier))
						end
					end
					local all_heroes = GetGrandStrategyHeroes()
					local faction_heroes = GetPlayerData(0, "Heroes")
					for i = 1, table.getn(all_heroes) do
						if (GetArrayIncludes(faction_heroes, all_heroes[i])) then
							SetProvinceHero("Brandenburg", all_heroes[i], 2)
						elseif (GetProvinceHero("Astrakhan", all_heroes[i]) == 2) then
							SetProvinceHero("Astrakhan", all_heroes[i], 0)
						end
					end
				elseif (GrandStrategyFaction ~= nil and (GrandStrategyFaction.Name ~= "Asa Tribe" or wyr.preferences.AutomaticBattles) and GrandStrategyFaction.Name ~= "Vana Tribe") then
					ChangeFactionResource("germanic", "Asa Tribe", "gold", 1000) -- gold from raiding Vanaland
					
					if (GrandStrategyFaction.Name == "Asa Tribe") then
						GenericDialog("On the Vanaquisl", "We have managed to raid the Vana's main settlement, but were later pushed back by their warriors, forcing us to agree to a peace.")
					end
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
				if (GrandStrategyFaction ~= nil and GrandStrategyFaction.Name == "Vana Tribe" and wyr.preferences.AutomaticBattles == false) then
					GrandStrategyEventMap = true
					GetMapInfo("maps/earth/tanais.smp")
					GameSettings.Presets[0].Type = PlayerComputer
					CurrentQuest = "On the Vanaquisl"
					RunMap("maps/earth/tanais.smp")
					GrandStrategyEventMap = false
					for i, unitName in ipairs(Units) do
						if (IsOffensiveMilitaryUnit(unitName)) then
							ChangeProvinceUnitQuantity("Astrakhan", unitName, math.ceil(GetPlayerData(0, "UnitTypesCount", unitName) / BattalionMultiplier))
							ChangeProvinceUnitQuantity("Don", unitName, math.ceil(GetPlayerData(1, "UnitTypesCount", unitName) / BattalionMultiplier))
						end
					end
					if (GameResult == GameDefeat) then
						ChangeFactionResource("germanic", "Asa Tribe", "gold", 1000) -- gold from raiding Vanaland
						ChangeFactionResource("celt", "Vana Tribe", "gold", -1000)
					end
				elseif (GrandStrategyFaction ~= nil and (GrandStrategyFaction.Name ~= "Vana Tribe" or wyr.preferences.AutomaticBattles)) then
					ChangeFactionResource("germanic", "Asa Tribe", "gold", 1000) -- gold from raiding Vanaland
					ChangeFactionResource("celt", "Vana Tribe", "gold", -1000)
					if (GrandStrategyFaction.Name == "Vana Tribe") then
						GenericDialog("On the Vanaquisl", "The Asa raided our main settlement, but we managed to push them out of Vanaland, forcing them to agree to a peace.")
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
				and GetProvinceOwner("Astrakhan") == EventFaction.Name
				and GetProvinceOwner("Russia") ~= EventFaction.Name
				and GetProvinceUnitQuantity("Astrakhan", "unit-germanic-warrior") >= 8 -- event only happens if player has enough warriors to successfully migrate
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
				if (GrandStrategyFaction ~= nil and GrandStrategyFaction.Name == "Asa Tribe" and wyr.preferences.AutomaticBattles == false) then
					GrandStrategyEventMap = true
					GetMapInfo("maps/earth/novgorod.smp")
					CurrentQuest = "Westward Migration"
					RunMap("maps/earth/novgorod.smp")
					GrandStrategyEventMap = false
					if (GameResult == GameVictory) then
						AcquireProvince(WorldMapProvinces.Brandenburg, "Asa Tribe")
						for i, unitName in ipairs(Units) do
							if (IsOffensiveMilitaryUnit(unitName)) then
								SetProvinceUnitQuantity("Brandenburg", unitName, GetProvinceUnitQuantity("Astrakhan", unitName) + math.ceil(GetPlayerData(0, "UnitTypesCount", unitName) / BattalionMultiplier))
								ChangeProvinceUnitQuantity("Russia", unitName, math.ceil(GetPlayerData(1, "UnitTypesCount", unitName) / BattalionMultiplier))
							elseif (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Class") == "worker") then
								ChangeProvinceUnitQuantity("Brandenburg", unitName, GetProvinceUnitQuantity("Astrakhan", unitName))
								SetProvinceUnitQuantity("Astrakhan", unitName, 0)
							end
						end
						local all_heroes = GetGrandStrategyHeroes()
						local faction_heroes = GetPlayerData(0, "Heroes")
						for i = 1, table.getn(all_heroes) do
							if (GetArrayIncludes(faction_heroes, all_heroes[i])) then
								SetProvinceHero("Brandenburg", all_heroes[i], 2)
							elseif (GetProvinceHero("Astrakhan", all_heroes[i]) == 2) then
								SetProvinceHero("Astrakhan", all_heroes[i], 0)
							end
						end
						SetProvinceUnitQuantity("Astrakhan", "unit-germanic-worker", 1) -- keep one worker there, so that the province won't be entirely depopulated and the population will be able to regrow
						AcquireProvince(WorldMapProvinces.Astrakhan, "")
						SetProvinceCivilization("Astrakhan", "")
						RemoveProvinceClaim("Astrakhan", "germanic", "Asa Tribe")
						SetProvinceUnitQuantity("Astrakhan", "unit-germanic-warrior", 8)
						CenterGrandStrategyMapOnTile(WorldMapProvinces.Brandenburg.SettlementLocation[1], WorldMapProvinces.Brandenburg.SettlementLocation[2])
					elseif (GameResult == GameDefeat) then
						for i, unitName in ipairs(Units) do
							if (IsOffensiveMilitaryUnit(unitName)) then
								ChangeProvinceUnitQuantity("Russia", unitName, math.ceil(GetPlayerData(1, "UnitTypesCount", unitName) / BattalionMultiplier))
							end
						end
						AcquireProvince(WorldMapProvinces.Astrakhan, "")
						SetProvinceCivilization("Astrakhan", "")
						RemoveProvinceClaim("Astrakhan", "germanic", "Asa Tribe")
						SetProvinceUnitQuantity("Astrakhan", "unit-germanic-warrior", 8) -- to make this province harder to conquer
					end
				elseif (GrandStrategyFaction ~= nil and (GrandStrategyFaction.Name ~= "Asa Tribe" or wyr.preferences.AutomaticBattles)) then
					AcquireProvince(WorldMapProvinces.Brandenburg, "Asa Tribe")
					for i, unitName in ipairs(Units) do
						if (IsOffensiveMilitaryUnit(unitName)) then
							SetProvinceUnitQuantity("Brandenburg", unitName, GetProvinceUnitQuantity("Astrakhan", unitName))
							SetProvinceUnitQuantity("Astrakhan", unitName, 0)
						elseif (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Class") == "worker") then
							ChangeProvinceUnitQuantity("Brandenburg", unitName, GetProvinceUnitQuantity("Astrakhan", unitName))
							SetProvinceUnitQuantity("Astrakhan", unitName, 0)
						end
					end
					local all_heroes = GetGrandStrategyHeroes()
					for i = 1, table.getn(all_heroes) do
						if (GetProvinceHero("Astrakhan", all_heroes[i]) == 2) then
							SetProvinceHero("Brandenburg", all_heroes[i], 2)
						end
					end
					SetProvinceUnitQuantity("Astrakhan", "unit-germanic-worker", 1) -- keep one worker there, so that the province won't be entirely depopulated and the population will be able to regrow					
					AcquireProvince(WorldMapProvinces.Astrakhan, "")
					SetProvinceCivilization("Astrakhan", "")
					RemoveProvinceClaim("Astrakhan", "germanic", "Asa Tribe")
					SetProvinceUnitQuantity("Astrakhan", "unit-germanic-warrior", 8) -- to make this province harder to conquer
					if (GrandStrategyFaction.Name == EventFaction.Name) then
						CenterGrandStrategyMapOnTile(WorldMapProvinces.Brandenburg.SettlementLocation[1], WorldMapProvinces.Brandenburg.SettlementLocation[2])
						GenericDialog("Westward Migration", "After passing through dangerous locales, we have arrived in a new area!")
					end
				end
			end,
			function(s) -- if refused to migrate, then a part of the tribe splits and does so
				AcquireProvince(WorldMapProvinces.Brandenburg, "Asa Tribe")
				EqualizeProvinceUnits(EventFaction)
				SetProvinceUnitQuantity("Brandenburg", "unit-germanic-warrior", 8) -- give them enough units to continue migrating
				SetProvinceUnitQuantity("Brandenburg", "unit-germanic-worker", GetProvinceUnitQuantity("Astrakhan", "unit-germanic-worker") / 2)
				ChangeProvinceUnitQuantity("Astrakhan", "unit-germanic-worker", - GetProvinceUnitQuantity("Brandenburg", "unit-germanic-worker"))
				AcquireProvince(WorldMapProvinces.Brandenburg, "Yngling Tribe")
				AcquireFactionTechnologies(EventFaction.Civilization, EventFaction.Name, "germanic", "Yngling Tribe")
				SetFactionResource(Factions.YnglingTribe.Civilization, "Yngling Tribe", "gold", GetFactionResource(EventFaction.Civilization, EventFaction.Name, "gold") / 2)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "gold", - GetFactionResource(Factions.YnglingTribe.Civilization, "Yngling Tribe", "gold"))
				ChangeFactionResource(Factions.YnglingTribe.Civilization, "Yngling Tribe", "gold", 2000) -- help them stay afloat a bit
			end
		}
	},
	NorthwardsToTheSea = {
		Name = "Northwards to the Sea",
		Description = "The peninsula to our north seems promising for settlement... Shall we invade it and subdue its natives?",
		Conditions = function(s)
			if (
				EventFaction.Civilization == "germanic"
				and (EventFaction.Name == "Asa Tribe" or EventFaction.Name == "Yngling Tribe")
				and GetProvinceOwner("Brandenburg") == EventFaction.Name
				and GetProvinceUnitQuantity("Brandenburg", "unit-germanic-warrior") >= 6 -- event only happens if player has enough warriors to successfully attack the province
				and ProvinceHasBorderWith(WorldMapProvinces.Brandenburg, WorldMapProvinces.Mecklenburg)
				and ProvinceHasBorderWith(WorldMapProvinces.Mecklenburg, WorldMapProvinces.Holstein)
				and ProvinceHasBorderWith(WorldMapProvinces.Holstein, WorldMapProvinces.Schleswig)
				and ProvinceHasBorderWith(WorldMapProvinces.Schleswig, WorldMapProvinces.Jutland)
				and GetProvinceOwner("Jutland") ~= EventFaction.Name
				and (GetProvinceOwner("Jutland") == "" or GetFactionFromName(GetProvinceOwner("Jutland")).Civilization == "basque")
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
				if (GrandStrategyFaction ~= nil and GrandStrategyFaction.Name == EventFaction.Name and wyr.preferences.AutomaticBattles == false) then
					GrandStrategyEventMap = true
					GetMapInfo("maps/earth/jutland.smp")
					GameSettings.Presets[1].Type = PlayerComputer					
					CurrentQuest = "Northwards to the Sea"
					RunMap("maps/earth/jutland.smp")
					GrandStrategyEventMap = false
					if (GameResult == GameVictory) then
						AcquireProvince(WorldMapProvinces.Jutland, EventFaction.Name)
						AddProvinceClaim("Jutland", EventFaction.Civilization, EventFaction.Name)
						for i, unitName in ipairs(Units) do
							if (IsOffensiveMilitaryUnit(unitName)) then
								SetProvinceUnitQuantity("Jutland", unitName, GetProvinceUnitQuantity("Brandenburg", unitName) + math.ceil(GetPlayerData(4, "UnitTypesCount", unitName) / BattalionMultiplier))
								SetProvinceUnitQuantity("Brandenburg", unitName, 0)
							elseif (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Class") == "worker") then
								ChangeProvinceUnitQuantity("Jutland", unitName, GetProvinceUnitQuantity("Brandenburg", unitName) / 5)
								ChangeProvinceUnitQuantity("Zealand", unitName, GetProvinceUnitQuantity("Brandenburg", unitName) - GetProvinceUnitQuantity("Jutland", unitName))
								SetProvinceUnitQuantity("Brandenburg", unitName, 0)
							end
						end
						local all_heroes = GetGrandStrategyHeroes()
						local faction_heroes = GetPlayerData(4, "Heroes")
						for i = 1, table.getn(all_heroes) do
							if (GetArrayIncludes(faction_heroes, all_heroes[i])) then
								SetProvinceHero("Jutland", all_heroes[i], 2)
							elseif (GetProvinceHero("Brandenburg", all_heroes[i]) == 2) then
								SetProvinceHero("Brandenburg", all_heroes[i], 0)
							end
						end
						SetProvinceUnitQuantity("Brandenburg", "unit-germanic-worker", 1) -- keep one worker there, so that the province won't be entirely depopulated and the population will be able to regrow
						AcquireProvince(WorldMapProvinces.Brandenburg, "")
						SetProvinceCivilization("Brandenburg", "")
						SetProvinceUnitQuantity("Brandenburg", "unit-germanic-warrior", 6)
						SetProvinceCivilization("Jutland", "germanic")
						AcquireProvince(WorldMapProvinces.Zealand, EventFaction.Name)
						AddProvinceClaim("Zealand", EventFaction.Civilization, EventFaction.Name)
						SetProvinceCivilization("Zealand", "germanic")
						CenterGrandStrategyMapOnTile(WorldMapProvinces.Jutland.SettlementLocation[1], WorldMapProvinces.Jutland.SettlementLocation[2])
					elseif (GameResult == GameDefeat) then
						for i, unitName in ipairs(Units) do
							if (IsOffensiveMilitaryUnit(unitName)) then
								SetProvinceUnitQuantity("Jutland", unitName, math.ceil(GetPlayerData(1, "UnitTypesCount", unitName) / BattalionMultiplier))
							end
						end
					end
				elseif (GrandStrategyFaction ~= nil and (GrandStrategyFaction.Name ~= EventFaction.Name or wyr.preferences.AutomaticBattles)) then
					AcquireProvince(WorldMapProvinces.Jutland, EventFaction.Name)
					AddProvinceClaim("Jutland", EventFaction.Civilization, EventFaction.Name)
					for i, unitName in ipairs(Units) do
						if (IsOffensiveMilitaryUnit(unitName)) then
							SetProvinceUnitQuantity("Jutland", unitName, GetProvinceUnitQuantity("Brandenburg", unitName))
							SetProvinceUnitQuantity("Brandenburg", unitName, 0)
						elseif (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Class") == "worker") then
							ChangeProvinceUnitQuantity("Jutland", unitName, GetProvinceUnitQuantity("Brandenburg", unitName) / 5)
							ChangeProvinceUnitQuantity("Zealand", unitName, GetProvinceUnitQuantity("Brandenburg", unitName) - GetProvinceUnitQuantity("Jutland", unitName))
							SetProvinceUnitQuantity("Brandenburg", unitName, 0)
						end
					end
					local all_heroes = GetGrandStrategyHeroes()
					for i = 1, table.getn(all_heroes) do
						if (GetProvinceHero("Brandenburg", all_heroes[i]) == 2) then
							SetProvinceHero("Jutland", all_heroes[i], 2)
						end
					end
					SetProvinceUnitQuantity("Brandenburg", "unit-germanic-worker", 1) -- keep one worker there, so that the province won't be entirely depopulated and the population will be able to regrow
					AcquireProvince(WorldMapProvinces.Brandenburg, "")
					SetProvinceCivilization("Brandenburg", "")
					SetProvinceUnitQuantity("Brandenburg", "unit-germanic-warrior", 6)
					SetProvinceCivilization("Jutland", "germanic")					
					AcquireProvince(WorldMapProvinces.Zealand, EventFaction.Name)
					AddProvinceClaim("Zealand", EventFaction.Civilization, EventFaction.Name)
					SetProvinceCivilization("Zealand", "germanic")					
					if (GrandStrategyFaction.Name == EventFaction.Name) then
						CenterGrandStrategyMapOnTile(WorldMapProvinces.Jutland.SettlementLocation[1], WorldMapProvinces.Jutland.SettlementLocation[2])
						GenericDialog("Northwards to the Sea", "The natives were no match for us. The peninsula is ours!")
					end

				end
			end,
			function(s)
			end
		}
	},
	GylvesRealm = {
		Name = "Gylve's Realm",
		Description = "After establishing ourselves in the Jutland peninsula and the neighboring islands, we now have the opportunity to travel to the other side of this short sea... what will await us? Shall we set sail, throwing ourselves upon those new shores?",
		Conditions = function(s)
			if (
				EventFaction.Civilization == "germanic"
				and (EventFaction.Name == "Asa Tribe" or EventFaction.Name == "Yngling Tribe")
				and GetProvinceOwner("Jutland") == EventFaction.Name
				and GetProvinceUnitQuantity("Jutland", "unit-germanic-warrior") >= 8 -- event only happens if player has enough warriors to successfully attack the province
				and ProvinceHasBorderWith(WorldMapWaterProvinces.Kattegat, WorldMapProvinces.Jutland)
				and ProvinceHasBorderWith(WorldMapWaterProvinces.Kattegat, WorldMapProvinces.Scania)
				and GetProvinceOwner("Scania") == "Gylfing Tribe"
				and GetFactionRuler("basque", "Gylfing Tribe") == "Gylve"
--				and SyncRand(100) < 50
			) then
				return true
			else
				return false
			end
		end,
		Options = {"~!Embark!", "~!Seafaring is not for us."},
		OptionEffects = {
			function(s)
				if (GrandStrategyFaction ~= nil and GrandStrategyFaction.Name == EventFaction.Name and wyr.preferences.AutomaticBattles == false) then
					GrandStrategyEventMap = true
					GetMapInfo("maps/earth/malmo.smp")
					CurrentQuest = "Gylve's Realm"
					RunMap("maps/earth/malmo.smp")
					GrandStrategyEventMap = false
					if (GameResult == GameVictory) then
						AcquireProvince(WorldMapProvinces.Scania, EventFaction.Name)
						SetProvinceCivilization("Scania", "germanic")
						SetProvinceCivilization("Gotaland", "germanic")
						SetProvinceCivilization("Sweden", "germanic")
						AcquireProvince(WorldMapProvinces.Gotaland, EventFaction.Name)
						AcquireProvince(WorldMapProvinces.Sweden, EventFaction.Name)
						AddProvinceClaim("Scania", EventFaction.Civilization, EventFaction.Name)
						AddProvinceClaim("Gotaland", EventFaction.Civilization, EventFaction.Name)
						AddProvinceClaim("Sweden", EventFaction.Civilization, EventFaction.Name)
						
						for i, unitName in ipairs(Units) do
							if (IsOffensiveMilitaryUnit(unitName)) then
								SetProvinceUnitQuantity("Sweden", unitName, math.ceil(GetPlayerData(0, "UnitTypesCount", unitName) / BattalionMultiplier))
							elseif (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Class") == "worker") then
								ChangeProvinceUnitQuantity("Sweden", unitName, GetProvinceUnitQuantity("Zealand", unitName) / 4)
								ChangeProvinceUnitQuantity("Gotaland", unitName, GetProvinceUnitQuantity("Zealand", unitName) / 4)
								ChangeProvinceUnitQuantity("Scania", unitName, GetProvinceUnitQuantity("Zealand", unitName) / 4)
								ChangeProvinceUnitQuantity("Zealand", unitName, - GetProvinceUnitQuantity("Sweden", unitName) - GetProvinceUnitQuantity("Gotaland", unitName) - GetProvinceUnitQuantity("Scania", unitName))
							end
						end
						local all_heroes = GetGrandStrategyHeroes()
						local faction_heroes = GetPlayerData(0, "Heroes")
						for i = 1, table.getn(all_heroes) do
							if (GetArrayIncludes(faction_heroes, all_heroes[i])) then
								SetProvinceHero("Sweden", all_heroes[i], 2)
							elseif (GetProvinceHero("Jutland", all_heroes[i]) == 2) then
								SetProvinceHero("Jutland", all_heroes[i], 0)
							end
						end
						SetProvinceCurrentConstruction("Sweden", "unit-germanic-town-hall")
						CenterGrandStrategyMapOnTile(WorldMapProvinces.Sweden.SettlementLocation[1], WorldMapProvinces.Sweden.SettlementLocation[2])
						ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 25)
					elseif (GameResult == GameDefeat) then
						for i, unitName in ipairs(Units) do
							if (IsOffensiveMilitaryUnit(unitName)) then
								SetProvinceUnitQuantity("Scania", unitName, math.ceil(GetPlayerData(1, "UnitTypesCount", unitName) / BattalionMultiplier))
							end
						end
					end
				elseif (GrandStrategyFaction ~= nil and (GrandStrategyFaction.Name ~= EventFaction.Name or wyr.preferences.AutomaticBattles)) then
					AcquireProvince(WorldMapProvinces.Scania, EventFaction.Name)
					SetProvinceCivilization("Scania", "germanic")
					SetProvinceCivilization("Gotaland", "germanic")
					SetProvinceCivilization("Sweden", "germanic")
					AcquireProvince(WorldMapProvinces.Gotaland, EventFaction.Name)
					AcquireProvince(WorldMapProvinces.Sweden, EventFaction.Name)
					AddProvinceClaim("Scania", EventFaction.Civilization, EventFaction.Name)
					AddProvinceClaim("Gotaland", EventFaction.Civilization, EventFaction.Name)
					AddProvinceClaim("Sweden", EventFaction.Civilization, EventFaction.Name)
					for i, unitName in ipairs(Units) do
						if (IsOffensiveMilitaryUnit(unitName)) then
							SetProvinceUnitQuantity("Scania", unitName, 0)
							SetProvinceUnitQuantity("Gotaland", unitName, 0)
							SetProvinceUnitQuantity("Sweden", unitName, GetProvinceUnitQuantity("Jutland", unitName) * 3 / 4)
							SetProvinceUnitQuantity("Jutland", unitName, 0)
							SetProvinceUnitQuantity("Zealand", unitName, 0)
						elseif (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Class") == "worker") then
							ChangeProvinceUnitQuantity("Sweden", unitName, GetProvinceUnitQuantity("Zealand", unitName) / 4)
							ChangeProvinceUnitQuantity("Gotaland", unitName, GetProvinceUnitQuantity("Zealand", unitName) / 4)
							ChangeProvinceUnitQuantity("Scania", unitName, GetProvinceUnitQuantity("Zealand", unitName) / 4)
							ChangeProvinceUnitQuantity("Zealand", unitName, - GetProvinceUnitQuantity("Sweden", unitName) - GetProvinceUnitQuantity("Gotaland", unitName) - GetProvinceUnitQuantity("Scania", unitName))
						end
					end
					local all_heroes = GetGrandStrategyHeroes()
					for i = 1, table.getn(all_heroes) do
						if (GetProvinceHero("Jutland", all_heroes[i]) == 2) then
							SetProvinceHero("Sweden", all_heroes[i], 2)
						end
					end
					SetProvinceCurrentConstruction("Sweden", "unit-germanic-town-hall")
					ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 25)
					if (GrandStrategyFaction.Name == EventFaction.Name) then
						CenterGrandStrategyMapOnTile(WorldMapProvinces.Sweden.SettlementLocation[1], WorldMapProvinces.Sweden.SettlementLocation[2])
						GenericDialog("Gylve's Realm", "Gylve has been defeated, and subsequently swore an oath of fealty to us. We moved north... and came upon a lake with fair fields spread around it. We founded a hall by the lake, Sigtun, from which we shall rule for untold generations!")
					end
				end
			end,
			function(s)
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
		MinYear = -325, -- Goths first attested
		MaxYear = -325 + 30, -- estimated
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	DivisionOfDomains = { -- Source: Snorri Sturlson, "Heimskringla", 1844.
		Name = "Division of Domains",
		Description = "After erecting a large temple in Sigtun, where rituals were performed in accordance to the customs of our people, domains were distributed to the temple priests, with them receiving good estates.",
		Conditions = function(s)
			if (
				EventFaction.Civilization == "germanic"
				and (EventFaction.Name == "Asa Tribe" or EventFaction.Name == "Yngling Tribe")
				and GetProvinceOwner("Sweden") == EventFaction.Name
				and GetProvinceSettlementBuilding(WorldMapProvinces.Sweden.Name, "unit-germanic-town-hall") -- Hall of Sigtun
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
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 3) -- promotion of the educated priest class
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "gold", -300) -- cost of the land grant
			end
		},
		OptionTooltips = {"-300 Gold\n+3 Prestige"}
	},
	AsaLawgiving = { -- Source: Snorri Sturlson, "Heimskringla", 1844.
		Name = "Asa Lawgiving",
		Description = "We have established the same law in this new land as that had been in force in Ansulanda. Thus it is determined that dead men of consequence shall be buried in a mound raised to their memory, and all other warriors who had been distinguished for their manhood a standing stone shall be erected. Over all the land a tax shall be paid to the tribe's high chieftain, who has to defend the country from enemy or disturbance, and to pay the expense for the feasts commemorating a good year.",
		Conditions = function(s)
			if (
				EventFaction.Civilization == "germanic"
				and (EventFaction.Name == "Asa Tribe" or EventFaction.Name == "Yngling Tribe")
				and GetProvinceOwner("Sweden") == EventFaction.Name
				and GetProvinceSettlementBuilding(WorldMapProvinces.Sweden.Name, "unit-germanic-town-hall") -- a town hall is needed, since without basic political organization there can be no lawgiving
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
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "gold", 500) -- tax gains
			end
		},
		OptionTooltips = {"+500 Gold"}
	},
	SkjoldsDomain = { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 8.
		Name = "Skjold's Domain",
		Description = "Our chieftain Voden has granted our newly-conquered lands to the south to his younger son, Skjold.",
		Conditions = function(s)
			if (
				EventFaction.Name == "Asa Tribe"
				and (GetProvinceOwner("Zealand") == EventFaction.Name or GetProvinceOwner("Jutland") == EventFaction.Name)
				and GetFactionRuler(EventFaction.Civilization, EventFaction.Name) == "Voden"
				and GrandStrategyHeroIsAlive("Skjold")
			) then
				return true
			else
				return false
			end
		end,
		Options = {"~!OK", "Play as ~!Skjold"},
		OptionEffects = {
			function(s)
				EqualizeProvinceUnits(EventFaction)
				if (GetProvinceOwner("Jutland") == EventFaction.Name) then
					AcquireProvince(WorldMapProvinces.Jutland, "Skjoldung Tribe")
					RemoveProvinceClaim("Jutland", EventFaction.Civilization, EventFaction.Name)
					AddProvinceClaim("Jutland", "germanic", "Skjoldung Tribe")
				end
				if (GetProvinceOwner("Zealand") == EventFaction.Name) then
					AcquireProvince(WorldMapProvinces.Zealand, "Skjoldung Tribe")
					RemoveProvinceClaim("Zealand", EventFaction.Civilization, EventFaction.Name)
					AddProvinceClaim("Zealand", "germanic", "Skjoldung Tribe")
				end
				AcquireFactionTechnologies(EventFaction.Civilization, EventFaction.Name, "germanic", "Skjoldung Tribe")
				SetFactionRuler("germanic", "Skjoldung Tribe", "Skjold")
			end,
			function(s)
				EqualizeProvinceUnits(EventFaction)
				if (GetProvinceOwner("Jutland") == EventFaction.Name) then
					AcquireProvince(WorldMapProvinces.Jutland, "Skjoldung Tribe")
					RemoveProvinceClaim("Jutland", EventFaction.Civilization, EventFaction.Name)
					AddProvinceClaim("Jutland", "germanic", "Skjoldung Tribe")
				end
				if (GetProvinceOwner("Zealand") == EventFaction.Name) then
					AcquireProvince(WorldMapProvinces.Zealand, "Skjoldung Tribe")
					RemoveProvinceClaim("Zealand", EventFaction.Civilization, EventFaction.Name)
					AddProvinceClaim("Zealand", "germanic", "Skjoldung Tribe")
				end
				AcquireFactionTechnologies(EventFaction.Civilization, EventFaction.Name, "germanic", "Skjoldung Tribe")
				SetFactionRuler("germanic", "Skjoldung Tribe", "Skjold")
				GrandStrategyFaction = Factions.SkjoldungTribe
				SetPlayerFaction("germanic", "Skjoldung Tribe")
			end
		},
		OptionTooltips = {"Skjoldung Tribe acquires our lands beyond the sea", "Skjoldung Tribe acquires our lands beyond the sea, plas as the Skjoldung Tribe"}
	},
	YngveChieftainOfTheSwedes = { -- Source: Snorri Sturlson, "Heimskringla", 1844.
		Name = "Yngve, Chieftain",
		Description = "Yngve has become our new chieftain, founding a new dynasty, the Ynglings. He managed to establish order in our lands, and was blessed with good seasons. Due to the good seasons and the reigning peace, our people have become prosperous as never before. Preferring Upsal to Sigtun, Yngve moved his capital there, where he built a great temple, and spent many resources in embellishing the town. Our chieftain's wife is Gerd, daughter of Gymis, and their son Fjolne stands in line to become our next chieftain.",
		Conditions = function(s)
			if (
				EventFaction.Name == "Asa Tribe"
				and GetProvinceOwner("Sweden") == EventFaction.Name
				and GetFactionRuler(EventFaction.Civilization, EventFaction.Name) == "Yngve"
			) then
				return true
			else
				return false
			end
		end,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "gold", 250)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
				FormFactionLua(EventFaction, Factions.YnglingTribe)
			end
		},
		OptionTooltips = {"Form the Yngling Tribe\n+250 Gold\n+1 Prestige"}
	},
	TheCurvedSwords = { -- Source: http://natmus.dk/en/historical-knowledge/denmark/prehistoric-period-until-1050-ad/the-bronze-age/the-roerby-swords/
		Name = "The Curved Swords",
		Description = "One of our artisans has crafted two curved bronze swords, one of which he engraved with the image of a ship. Although they aren't very practical for combat, these swords would serve to embellish ceremonies and bring prestige to their bearer.",
		Conditions = function(s)
			if (
				GetProvinceOwner("Jutland") == EventFaction.Name
				and GetProvinceCivilization("Jutland") == "germanic"
				and GetProvinceSettlementBuilding(WorldMapProvinces.Jutland.Name, "unit-germanic-smithy") -- Jutland must have a smithy
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
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	TheSunChariot = { -- Source: http://natmus.dk/en/historical-knowledge/denmark/prehistoric-period-until-1050-ad/the-bronze-age/the-sun-chariot/
		Name = "The Sun Chariot",
		Description = "One of our artisans has made a delicate bronze figure of a sun chariot, representing the divine horse that carries the sun on its eternal journey across the sky.",
		Conditions = function(s)
			if (
				GetProvinceOwner("Jutland") == EventFaction.Name
				and GetProvinceCivilization("Jutland") == "germanic"
				and GetProvinceSettlementBuilding(WorldMapProvinces.Jutland.Name, "unit-germanic-smithy") -- Jutland must have a smithy
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
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	NoblemansBurial = { -- the man from Muldbjerg; Source: http://natmus.dk/en/historical-knowledge/denmark/prehistoric-period-until-1050-ad/the-bronze-age/men-and-woman-in-the-bronze-age/the-man-from-muldbjerg/
		Name = "Nobleman's Burial",
		Description = "In 1365 BC, a nobleman was buried in the northwestern parts of the Jutland peninsula. Dressed in wool, he was laid down with his bronze sword in an oak coffin, which was then placed in a mound.",
		Conditions = function(s)
			if (
				GetProvinceOwner("Jutland") == EventFaction.Name
				and GetProvinceCivilization("Jutland") == "germanic"
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
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	TheSunShields = { -- Source: http://en.natmus.dk/historical-knowledge/denmark/prehistoric-period-until-1050-ad/the-bronze-age/the-bronze-age-shields/
		Name = "The Sun Shields",
		Description = "Our artisans have learned the craft of making circular bronze shields from the Celtic peoples to our south. These shields are often made to symbolize the sun and the cycle of the seasons.",
		Conditions = function(s)
			if (
				GetProvinceOwner("Jutland") == EventFaction.Name
				and GetProvinceCivilization("Jutland") == "germanic"
				and GetProvinceSettlementBuilding(WorldMapProvinces.Jutland.Name, "unit-germanic-smithy") -- Jutland must have a smithy
				and GetFactionTechnology(EventFaction.Civilization, EventFaction.Name, "upgrade-germanic-bronze-shield")
			) then
				return true
			else
				return false
			end
		end,
		Options = {"~!Marvelous!"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	--[[
	BeldegsLands = { -- Beldeg (Baldr), the first legendary ruler of Westphalia (in the sagas he became ruler of Westphalia even before the conquest of Scandinavia, but here we make him later, belonging to the time of the germanic expansion to Westphalia); Source: "The Prose Edda", Snorri Sturlson, 1916, pp. 7-8.
		Name = "Beldeg's Lands",
		Description = "The territory of Westphalia has been entrusted to the warrior known by the name of Beldeg.",
		Conditions = function(s)
			if (
				(EventFaction.Civilization == "germanic" or EventFaction.Civilization == "teuton")
				and GetProvinceOwner("Westphalia") == EventFaction.Name
				and ProvinceHasBuildingClass(WorldMapProvinces.Westphalia.Name, "town-hall")
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
				AcquireProvince(WorldMapProvinces.Westphalia, "Saxon Tribe")
				AcquireFactionTechnologies(EventFaction.Civilization, EventFaction.Name, Factions.SaxonTribe.Civilization, "Saxon Tribe")
				SetProvinceUnitQuantity("Brandenburg", "unit-germanic-warrior", 1) -- if Westphalia has been conquered, reduce the quantity of warriors in Brandenburg too, so that a tribe won't lose too many warriors when expanding to it
			end,
			function(s)
				EqualizeProvinceUnits(EventFaction) -- distribute the military units of the faction equally between the newly forming faction and the old one, to prevent one of them from easily conquering the other just by happening to have more units in their province
				AcquireProvince(WorldMapProvinces.Westphalia, "Saxon Tribe")
				AcquireFactionTechnologies(EventFaction.Civilization, EventFaction.Name, Factions.SaxonTribe.Civilization, "Saxon Tribe")
				SetProvinceUnitQuantity("Brandenburg", "unit-germanic-warrior", 1) -- if Westphalia has been conquered, reduce the quantity of warriors in Brandenburg too, so that a tribe won't lose too many warriors when expanding to it
				SetFactionDiplomacyState(EventFaction.Civilization, EventFaction.Name, Factions.SaxonTribe.Civilization, "Saxon Tribe", "war")
			end,
			function(s)
				EqualizeProvinceUnits(EventFaction)
				AcquireProvince(WorldMapProvinces.Westphalia, "Saxon Tribe")
				AcquireFactionTechnologies(EventFaction.Civilization, EventFaction.Name, Factions.SaxonTribe.Civilization, "Saxon Tribe")
				GrandStrategyFaction = Factions.SaxonTribe
				SetPlayerFaction(Factions.SaxonTribe.Civilization, "Saxon Tribe")
				SetProvinceUnitQuantity("Brandenburg", "unit-germanic-warrior", 1) -- if Westphalia has been conquered, reduce the quantity of warriors in Brandenburg too, so that a tribe won't lose too many warriors when expanding to it
			end
		}
	},
	SigisLands = { -- Sigi, the first legendary ruler of "Frankland" (in the sagas he became ruler of Frankland even before the conquest of Scandinavia, but here we make him later, belonging to the time of the germanic expansion to Frankland); Source: "The Prose Edda", Snorri Sturlson, 1916, p. 8.
		Name = "Sigi's Lands",
		Description = "The territory of Frankland has been entrusted to the warrior known as Sigi.",
		Conditions = function(s)
			if (
				(EventFaction.Civilization == "germanic" or EventFaction.Civilization == "teuton")
				and GetProvinceOwner("Holland") == EventFaction.Name -- the Netherlands were the Franks' homelands
				and ProvinceHasBuildingClass(WorldMapProvinces.Holland.Name, "town-hall")
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
				AcquireProvince(WorldMapProvinces.Holland, "Frank Tribe")
				AcquireFactionTechnologies(EventFaction.Civilization, EventFaction.Name, Factions.FrankTribe.Civilization, "Frank Tribe")
			end,
			function(s)
				EqualizeProvinceUnits(EventFaction)
				AcquireProvince(WorldMapProvinces.Holland, "Frank Tribe")
				AcquireFactionTechnologies(EventFaction.Civilization, EventFaction.Name, Factions.FrankTribe.Civilization, "Frank Tribe")
				SetFactionDiplomacyState(EventFaction.Civilization, EventFaction.Name, Factions.FrankTribe.Civilization, "Frank Tribe", "war")
			end,
			function(s)
				EqualizeProvinceUnits(EventFaction)
				AcquireProvince(WorldMapProvinces.Holland, "Frank Tribe")
				AcquireFactionTechnologies(EventFaction.Civilization, EventFaction.Name, Factions.FrankTribe.Civilization, "Frank Tribe")
				GrandStrategyFaction = Factions.FrankTribe
				SetPlayerFaction(Factions.FrankTribe.Civilization, "Frank Tribe")
			end
		}
	},
	VegdegsKingdom = { -- Vegdeg, the first legendary ruler of "East Saxland" (in the sagas he became ruler of East Saxland even before the conquest of Scandinavia, but here we make him later, belonging to the time of the germanic expansion to East Germany); Source: "The Prose Edda", Snorri Sturlson, 1916, p. 7.
		Name = "Vegdeg's Kingdom",
		Description = "The lands to the southeast of the Jutland peninsula have been entrusted to the mighty Vegdeg, who has established himself as king there.",
		Conditions = function(s)
			if (
				(EventFaction.Civilization == "germanic" or EventFaction.Civilization == "teuton")
				and GetProvinceOwner("Brandenburg") == EventFaction.Name -- Brandenburg was the Suebi's homelands
				and ProvinceHasBuildingClass(WorldMapProvinces.Brandenburg.Name, "town-hall")
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
				AcquireFactionTechnologies(EventFaction.Civilization, EventFaction.Name, Factions.SuebiTribe.Civilization, "Suebi Tribe")
			end,
			function(s)
				EqualizeProvinceUnits(EventFaction)
				AcquireProvince(WorldMapProvinces.Brandenburg, "Suebi Tribe")
				AcquireFactionTechnologies(EventFaction.Civilization, EventFaction.Name, Factions.SuebiTribe.Civilization, "Suebi Tribe")
				SetFactionDiplomacyState(EventFaction.Civilization, EventFaction.Name, Factions.SuebiTribe.Civilization, "Suebi Tribe", "war")
			end,
			function(s)
				EqualizeProvinceUnits(EventFaction)
				AcquireProvince(WorldMapProvinces.Brandenburg, "Suebi Tribe")
				AcquireFactionTechnologies(EventFaction.Civilization, EventFaction.Name, Factions.SuebiTribe.Civilization, "Suebi Tribe")
				GrandStrategyFaction = Factions.SuebiTribe
				SetPlayerFaction(Factions.SuebiTribe.Civilization, "Suebi Tribe")
			end
		}
	},
	--]]
	GothCultureDevelops = {
		Name = "Goth Culture Develops",
		Description = "With the passage of time, our customs and language have diverged significantly from the general Germanic ones. The East Germanic tongue has become predominant amongst us, and with it the Goth culture.",
		Conditions = function(s)
			if (
				EventFaction.Civilization == "germanic"
				and FactionHasTechnologyType(EventFaction, "melee-weapon-1") -- must have reached the iron age
				and FactionHasTechnologyType(EventFaction, "bronze-shield")
				and FactionHasTechnologyType(EventFaction, "ranged-projectile-1")
				and FactionHasTechnologyType(EventFaction, "wood-plow")
				and (EventFaction.Name == "Asa Tribe" or EventFaction.Name == "Skjoldung Tribe" or EventFaction.Name == "Yngling Tribe")
				and EventFaction.Name ~= GrandStrategyFaction.Name -- only available for NPC factions, since the goth civilization is not playable
				and (SyncRand(50) < 1 or FactionHasCulture(EventFaction, "goth"))
			) then
				return true
			end
			return false
		end,
		Persistent = true,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				FormFactionLua(EventFaction, Factions.GothTribe)
				EventFaction = Factions.GothTribe

				for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
					if (
						GetProvinceCivilization(WorldMapProvinces[province_key].Name) == "germanic"
					) then
						SetProvinceCivilization(WorldMapProvinces[province_key].Name, "goth") -- change the culture of only one province, and let cultural spread do the rest
						break
					end
				end
			end
		}
	},
	GothCultureSpreads = {
		Name = "Goth Culture Spreads",
		Description = "The people of PROVINCE_NAME have adopted the Goth culture.",
		Conditions = function(s)
			if (EventFaction.Civilization ~= "teuton" and EventFaction.Civilization ~= "norse") then
				for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
					if (
						GetProvinceCivilization(WorldMapProvinces[province_key].Name) == "germanic"
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
				SetProvinceCivilization(EventProvince.Name, "goth")
			end
		}
	},
	PytheasVoyageGoths = { -- Source: Carl Waldman and Catherine Mason, "Encyclopedia of European Peoples", 2006, p. 350; Source: Pliny the Elder, "The Natural History", 37.11.
		Name = "Pytheas' Voyage",
		Description = "A Greek scholar and explorer, Pytheas, arrived in our shores. He seemed interested in the island which is a day's sail away from us, due to the amber thrown upon its coast by waves in the spring. He also asked about our use of the material for fuel, and soon went back to the seas to continue his voyage.",
		Conditions = function(s)
			if (
				(EventFaction.Civilization == "germanic" or EventFaction.Civilization == "goth" or EventFaction.Civilization == "norse" or EventFaction.Civilization == "teuton")
				and GetProvinceOwner("Gotaland") == EventFaction.Name
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
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "research", 1)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
			end
		},
		OptionTooltips = {"+1 Research\n+1 Prestige"}
	}
}
	
AddEventTable(GermanicEvents)

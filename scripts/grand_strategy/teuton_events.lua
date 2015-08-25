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

local TeutonEvents = {
	TeutonCultureDevelops = {
		Name = "Teuton Culture Develops",
		Description = "With the passage of time, our customs and language have diverged significantly from the general Germanic ones. The West Germanic tongue has become predominant amongst us, and with it the Teuton culture.",
		Conditions = function(s)
			if (
				EventFaction.Civilization == "germanic"
				and FactionHasTechnologyType(EventFaction, "melee-weapon-1") -- must have reached the iron age
				and FactionHasTechnologyType(EventFaction, "bronze-shield")
				and FactionHasTechnologyType(EventFaction, "ranged-projectile-1")
--				and FactionHasTechnologyType(EventFaction, "wood-plow")
				and ((EventFaction.Name == "Asa Tribe" or EventFaction.Name == "Frank Tribe" or EventFaction.Name == "Jute Tribe" or EventFaction.Name == "Saxon Tribe" or EventFaction.Name == "Suebi Tribe") or (EventFaction.Name == GrandStrategyFaction.Name and (EventFaction.Name == "Dane Tribe" or EventFaction.Name == "Goth Tribe" or EventFaction.Name == "Swede Tribe")))
				and (SyncRand(50) < 1 or FactionHasCulture(EventFaction, "teuton"))
			) then
				return true
			end
			return false
		end,
		Persistent = true,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				if (EventFaction.Name == "Asa Tribe" and GetFactionProvinceCount(Factions.JuteTribe) == 0) then
					FormFaction(EventFaction, Factions.JuteTribe)
					EventFaction = Factions.JuteTribe
				end
				ChangeFactionCulture("germanic", EventFaction.Name, "teuton")
				for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
					if (
						GetProvinceCivilization(WorldMapProvinces[province_key].Name) == "germanic"
					) then
						SetProvinceCivilization(WorldMapProvinces[province_key].Name, "teuton") -- change the culture of only one province, and let cultural spread do the rest
						break
					end
				end
			end
		}
	},
	TeutonCultureSpreads = {
		Name = "Teuton Culture Spreads",
		Description = "The people of PROVINCE_NAME have adopted the Teuton culture.",
		Conditions = function(s)
			if (EventFaction.Civilization ~= "goth" and EventFaction.Civilization ~= "norse") then
				for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
					if (
						GetProvinceCivilization(WorldMapProvinces[province_key].Name) == "germanic"
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
				SetProvinceCivilization(EventProvince.Name, "teuton")
			end
		}
	},
	TheSequanisAppeal = { -- Source: Dáithí Ó hÓgáin, "The Celts: A History", 2002, p. 138.
		Name = "The Sequani's Appeal",
		Description = "The Gaulish tribes of the Sequani and the Arverni are embroiled in a war with the Aedui. The Sequani have come to us asking to enlist our help in their war.",
		Conditions = function(s)
			if (
				EventFaction.Name == "Suebi Tribe"
				and GetProvinceOwner("Brandenburg") == EventFaction.Name
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
				and Factions.ArverniTribe.Diplomacy.AeduiTribe == "War"
				and Factions.SequaniTribe.Diplomacy.AeduiTribe == "War"
				and GetProvinceOwner("Burgundy") == "Sequani Tribe"
				and GetProvinceOwner("France") == "Aedui Tribe"
			) then
				return true
			else
				return false
			end
		end,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				if (GrandStrategyFaction ~= nil and GrandStrategyFaction.Name == "Suebi Tribe" and wyr.preferences.AutomaticBattles == false) then
					GrandStrategyEventMap = true
					GetMapInfo("maps/earth/belfort.smp")
					CurrentQuest = "The Battle of Magetobria"
					RunMap("maps/earth/belfort.smp")
					GrandStrategyEventMap = false
					if (GameResult == GameVictory) then
						AcquireProvince(WorldMapProvinces.Burgundy, "Suebi Tribe")
						for i, unitName in ipairs(Units) do
							if (IsMilitaryUnit(unitName)) then
								SetProvinceUnitQuantity("Burgundy", unitName, math.ceil(GetPlayerData(0, "UnitTypesCount", unitName) / BattalionMultiplier))
							end
						end
						SetProvinceUnitQuantity("France", "unit-germanic-warrior", 6) -- to give the Aedui something of a defense
						CenterGrandStrategyMapOnTile(WorldMapProvinces.Burgundy.SettlementLocation[1], WorldMapProvinces.Burgundy.SettlementLocation[2])
					elseif (GameResult == GameDefeat) then
						for i, unitName in ipairs(Units) do
							if (IsMilitaryUnit(unitName)) then
								ChangeProvinceUnitQuantity("France", unitName, math.ceil(GetPlayerData(1, "UnitTypesCount", unitName) / BattalionMultiplier))
							end
						end
					end
				elseif (GrandStrategyFaction ~= nil and (GrandStrategyFaction.Name ~= "Suebi Tribe" or wyr.preferences.AutomaticBattles)) then
					AcquireProvince(WorldMapProvinces.Burgundy, "Suebi Tribe")
					for i, unitName in ipairs(Units) do
						if (IsMilitaryUnit(unitName)) then
							SetProvinceUnitQuantity("France", unitName, math.floor(GetProvinceUnitQuantity("Brandenburg", unitName) * 3 / 4)) -- to give them something of a defense
							SetProvinceUnitQuantity("Burgundy", unitName, GetProvinceUnitQuantity("Brandenburg", unitName))
							SetProvinceUnitQuantity("Brandenburg", unitName, 0)
						end
					end
					if (GrandStrategyFaction.Name ~= "Suebi Tribe") then
						SetProvinceUnitQuantity("Brandenburg", "unit-germanic-warrior", 4) -- to give them something of a defense
					end
					if (GrandStrategyFaction.Name == EventFaction.Name) then
						CenterGrandStrategyMapOnTile(WorldMapProvinces.Burgundy.SettlementLocation[1], WorldMapProvinces.Burgundy.SettlementLocation[2])
						GrandStrategyDialog("The Battle of Magetobria", "The Aedui have been crushed! We were granted land in Gaul by the Sequani and the Arverni. However, our chieftain Ariovistus wanted more, and took much of the Sequani's lands for settlement.")
					end
				end
			end
		}
	},
	MarbodReturns = {
		Name = "Marbod Returns",
		Description = "After spending long years abroad, Marbod has finally returned to lead the Suebic tribe of the Marcomanni.",
		Conditions = function(s)
			if (
				 -- for historical personages to appear, they require three things: the year of their historical rise to prominence, ownership of the province in which they were born or raised, and that that province be of the correct culture for them, if they belonged to the cultural majority
				WorldMapProvinces.Brandenburg.Owner == EventFaction.Name
				and GetProvinceCivilization("Brandenburg") == "teuton"
			) then
				return true
			else
				return false
			end
		end,
		MinYear = -9,
		MaxYear = -9 + 30, -- estimated death date
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				WorldMapProvinces.Brandenburg.Heroes.unit_hero_marbod = 2
			end
		}
	},
	TheHomeOfTheBoii = {
		Name = "The Home of the Boii",
		Description = "Worried about the Roman presence on the Rhine, Marbod wishes to take the Marcomanni into the lands of the Boii and to establish a kingdom there, splitting off from the rest of the Suebi.",
		Heroes = {
			unit_hero_marbod = true
		},
		Conditions = function(s)
			if (
				EventFaction.Name == "Suebi Tribe"
				and WorldMapProvinces.Bohemia.Owner == "Boii Tribe"
			) then
				return true
			else
				return false
			end
		end,
		Options = {"~!OK", "Play as the ~!Marcomanni"},
		OptionEffects = {
			function(s)
				AcquireProvince(WorldMapProvinces.Bohemia, "Marcomanni Tribe")
				for i, unitName in ipairs(Units) do
					if (IsMilitaryUnit(unitName)) then
						SetProvinceUnitQuantity("Bohemia", unitName, math.floor(GetProvinceUnitQuantity("Brandenburg", unitName) / 2))
						SetProvinceUnitQuantity("Brandenburg", unitName, math.floor(GetProvinceUnitQuantity("Brandenburg", unitName) / 2))
					end
				end
				WorldMapProvinces.Brandenburg.Heroes.unit_hero_marbod = 0
				WorldMapProvinces.Bohemia.Heroes.unit_hero_marbod = 2
				AcquireFactionTechnologies(Factions.SuebiTribe.Civilization, Factions.SuebiTribe.Name, Factions.MarcomanniTribe.Civilization, "Marcomanni Tribe")
				SetProvinceCivilization("Bohemia", "teuton")
			end,
			function(s)
				if (GrandStrategyFaction ~= nil and GrandStrategyFaction.Name == "Suebi Tribe" and wyr.preferences.AutomaticBattles == false) then
					GrandStrategyFaction = Factions.MarcomanniTribe
					SetPlayerFaction("teuton", "Marcomanni Clan")
					GrandStrategyEventMap = true
					GetMapInfo("maps/earth/prague.smp")
					CurrentQuest = "The Home of the Boii"
					RunMap("maps/earth/prague.smp")
					GrandStrategyEventMap = false
					if (GameResult == GameVictory) then
						AcquireProvince(WorldMapProvinces.Bohemia, "Marcomanni Tribe")
						for i, unitName in ipairs(Units) do
							if (IsMilitaryUnit(unitName)) then
								SetProvinceUnitQuantity("Bohemia", unitName, math.ceil(GetPlayerData(0, "UnitTypesCount", unitName) / BattalionMultiplier))
							elseif (IsHero(unitName)) then
								if (GetPlayerData(0, "UnitTypesCount", unitName) > 0) then
									WorldMapProvinces.Bohemia.Heroes[string.gsub(unitName, "-", "_")] = 2
								end
							end
						end
						CenterGrandStrategyMapOnTile(WorldMapProvinces.Bohemia.SettlementLocation[1], WorldMapProvinces.Bohemia.SettlementLocation[2])
						AcquireFactionTechnologies(Factions.SuebiTribe.Civilization, Factions.SuebiTribe.Name, Factions.MarcomanniTribe.Civilization, "Marcomanni Tribe")

						SetProvinceCivilization("Bohemia", "teuton")
					elseif (GameResult == GameDefeat) then
						for i, unitName in ipairs(Units) do
							if (IsMilitaryUnit(unitName)) then
								ChangeProvinceUnitQuantity("Bohemia", unitName, math.ceil(GetPlayerData(1, "UnitTypesCount", unitName) / BattalionMultiplier))
							end
						end
					end
				elseif (GrandStrategyFaction ~= nil and (GrandStrategyFaction.Name ~= "Suebi Tribe" or wyr.preferences.AutomaticBattles)) then
					AcquireProvince(WorldMapProvinces.Bohemia, "Marcomanni Tribe")
					for i, unitName in ipairs(Units) do
						if (IsMilitaryUnit(unitName)) then
							SetProvinceUnitQuantity("Bohemia", unitName, math.floor(GetProvinceUnitQuantity("Brandenburg", unitName) / 2))
							SetProvinceUnitQuantity("Brandenburg", unitName, math.floor(GetProvinceUnitQuantity("Brandenburg", unitName) / 2))
						end
					end
					WorldMapProvinces.Brandenburg.Heroes.unit_hero_marbod = 0
					WorldMapProvinces.Bohemia.Heroes.unit_hero_marbod = 2
					SetProvinceCivilization("Bohemia", "teuton")
					AcquireFactionTechnologies(Factions.SuebiTribe.Civilization, Factions.SuebiTribe.Name, Factions.MarcomanniTribe.Civilization, "Marcomanni Tribe")

					if (GrandStrategyFaction.Name == EventFaction.Name) then
						GrandStrategyFaction = Factions.MarcomanniTribe
						SetPlayerFaction("teuton", "Marcomanni Tribe")
						CenterGrandStrategyMapOnTile(WorldMapProvinces.Bohemia.SettlementLocation[1], WorldMapProvinces.Bohemia.SettlementLocation[2])
						GrandStrategyDialog("The Home of the Boii", "The Boii's capital has become naught but a burning ruin. On its ashes we shall build our own settlement of Bubienum, the center of our new Marcomannic kingdom!")
					end
				end
			end
		}
	},
	MarbodDeposed = {
		Name = "Marbod Deposed",
		Description = "Catualda, a Marcomanni noble who had been expelled from our lands by Marbod, has returned to Bohemia with an army behind him, yearning for revenge. The tribe's notables made a compact with him, making the deposition of Marbod a foregone conclusion.",
		Heroes = {
			unit_hero_marbod = true
		},
		MinYear = 19,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				for province_i, key in ipairs(EventFaction.OwnedProvinces) do
					WorldMapProvinces[key].Heroes.unit_hero_marbod = 0
				end
			end
		}
	},
	TheSackOfIuvavum = {
		Name = "The Sack of Iuvavum",
		Description = "Our chieftain Ballomar has obtained the agreement of more than a dozen Germanic tribes to invade the Roman Empire. Shall we go through with this plan?",
		Conditions = function(s)
			if (
				EventFaction.Name == "Marcomanni Tribe"
				and WorldMapProvinces.Austria.Owner == "Rome"
				and WorldMapProvinces.Bohemia.Owner == "Marcomanni Tribe"
			) then
				return true
			else
				return false
			end
		end,
		MinYear = 170,
		Options = {"~!Yes", "~!No"},
		OptionEffects = {
			function(s)
				DeclareWar(EventFaction.Name, "Rome")
				if (GrandStrategyFaction ~= nil and GrandStrategyFaction.Name == "Marcomanni Tribe" and wyr.preferences.AutomaticBattles == false) then
					GameSettings.Presets[0].Type = PlayerComputer
					GrandStrategyEventMap = true
					GetMapInfo("maps/earth/salzburg.smp")
					CurrentQuest = "The Sack of Iuvavum"
					RunMap("maps/earth/salzburg.smp")
					GrandStrategyEventMap = false
					if (GameResult == GameVictory) then
						AcquireProvince(WorldMapProvinces.Austria, "Marcomanni Tribe")
						for i, unitName in ipairs(Units) do
							if (IsMilitaryUnit(unitName)) then
								SetProvinceUnitQuantity("Austria", unitName, math.ceil(GetPlayerData(4, "UnitTypesCount", unitName) / BattalionMultiplier))
							elseif (IsHero(unitName)) then
								if (GetPlayerData(4, "UnitTypesCount", unitName) > 0) then
									WorldMapProvinces.Austria.Heroes[string.gsub(unitName, "-", "_")] = 2
								end
							end
						end
						CenterGrandStrategyMapOnTile(WorldMapProvinces.Austria.SettlementLocation[1], WorldMapProvinces.Austria.SettlementLocation[2])
					elseif (GameResult == GameDefeat) then
						for i, unitName in ipairs(Units) do
							if (IsMilitaryUnit(unitName)) then
								ChangeProvinceUnitQuantity("Austria", unitName, math.ceil(GetPlayerData(0, "UnitTypesCount", unitName) / BattalionMultiplier))
							end
						end
					end
				elseif (GrandStrategyFaction ~= nil and (GrandStrategyFaction.Name ~= "Marcomanni Tribe" or wyr.preferences.AutomaticBattles)) then
					AcquireProvince(WorldMapProvinces.Austria, "Marcomanni Tribe")
					for i, unitName in ipairs(Units) do
						if (IsMilitaryUnit(unitName)) then
							SetProvinceUnitQuantity("Austria", unitName, GetProvinceUnitQuantity("Bohemia", unitName))
							SetProvinceUnitQuantity("Bohemia", unitName, 0)
						end
					end
					
					if (GrandStrategyFaction.Name == EventFaction.Name) then
						CenterGrandStrategyMapOnTile(WorldMapProvinces.Austria.SettlementLocation[1], WorldMapProvinces.Austria.SettlementLocation[2])
						GrandStrategyDialog("The Sack of Iuvavum", "All that was of worth in Iuvavum has been pillaged...")
					end
				end
			end,
			function(s)
			end
		}
	},
	TheRazingOfOpitergium = {
		Name = "The Razing of Opitergium",
		Description = "Leaving a trail of destruction behind us, we have now reached Italy and lay siege to the Roman city of Opitergium.",
		RequiredEvents = {
			TheSackOfIuvavum = true
		},
		Conditions = function(s)
			if (
				EventFaction.Name == "Marcomanni Tribe"
				and WorldMapProvinces.NorthItaly.Owner == "Rome"
				and WorldMapProvinces.Austria.Owner == "Marcomanni Tribe"
			) then
				return true
			else
				return false
			end
		end,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				if (GrandStrategyFaction ~= nil and GrandStrategyFaction.Name == "Marcomanni Tribe" and wyr.preferences.AutomaticBattles == false) then
					GrandStrategyEventMap = true
					GetMapInfo("maps/earth/oderzo.smp")
					CurrentQuest = "The Razing of Opitergium"
					RunMap("maps/earth/oderzo.smp")
					GrandStrategyEventMap = false
					if (GameResult == GameVictory) then
						AcquireProvince(WorldMapProvinces.NorthItaly, "Marcomanni Tribe")
						for i, unitName in ipairs(Units) do
							if (IsMilitaryUnit(unitName)) then
								SetProvinceUnitQuantity("North Italy", unitName, math.ceil(GetPlayerData(0, "UnitTypesCount", unitName) / BattalionMultiplier))
							elseif (IsHero(unitName)) then
								if (GetPlayerData(0, "UnitTypesCount", unitName) > 0) then
									WorldMapProvinces.NorthItaly.Heroes[string.gsub(unitName, "-", "_")] = 2
								end
							end
						end
						CenterGrandStrategyMapOnTile(WorldMapProvinces.NorthItaly.SettlementLocation[1], WorldMapProvinces.NorthItaly.SettlementLocation[2])
					elseif (GameResult == GameDefeat) then
						for i, unitName in ipairs(Units) do
							if (IsMilitaryUnit(unitName)) then
								ChangeProvinceUnitQuantity("North Italy", unitName, math.ceil(GetPlayerData(1, "UnitTypesCount", unitName) / BattalionMultiplier))
							end
						end
					end
				elseif (GrandStrategyFaction ~= nil and (GrandStrategyFaction.Name ~= "Marcomanni Tribe" or wyr.preferences.AutomaticBattles)) then
					AcquireProvince(WorldMapProvinces.NorthItaly, "Marcomanni Tribe")
					for i, unitName in ipairs(Units) do
						if (IsMilitaryUnit(unitName)) then
							SetProvinceUnitQuantity("North Italy", unitName, GetProvinceUnitQuantity("Austria", unitName))
							SetProvinceUnitQuantity("Austria", unitName, 0)
						end
					end
					if (GrandStrategyFaction.Name == EventFaction.Name) then
						CenterGrandStrategyMapOnTile(WorldMapProvinces.NorthItaly.SettlementLocation[1], WorldMapProvinces.NorthItaly.SettlementLocation[2])
						GrandStrategyDialog("The Razing of Opitergium", "Opitergium became naught but ashes.")
					end
				end
			end
		}
	},
	HistoriaEcclesiasticaVenerabilisBedae = { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 34.
		Name = "Historia Ecclesiastica Venerabilis Bedae",
		Description = "The venerable Bede has written an important work of history, the Historia Ecclesiastica Venerabilis Bedae.",
		Conditions = function(s)
			if (
				WorldMapProvinces.England.Owner == EventFaction.Name
				and GetProvinceCivilization("England") == "teuton" -- should be English
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
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 5)
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
				and (GetProvinceCivilization("England") == "germanic" or GetProvinceCivilization("England") == "teuton" or GetProvinceCivilization("England") == "norse" or GetProvinceCivilization("England") == "goth") -- eating horse-flesh was a Germanic custom
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
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
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
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "gold", 500)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "research", -5)
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
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "gold", 500)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "research", -5)
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
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "gold", 500)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "research", -5)
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
				and GetProvinceCivilization("England") == "teuton" -- should be English
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
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "research", 1)
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
				and GetProvinceCivilization("Brandenburg") == "teuton"
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
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "gold", 500)
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
				and GetProvinceCivilization("Brandenburg") == "teuton"
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
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "gold", -50)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "research", -1)
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
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "gold", 500)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "research", 1)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
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
				and GetProvinceCivilization("Scotland") == "teuton" -- should be English
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
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "research", 1)
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
				and GetProvinceCivilization("England") == "teuton" -- should be English
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
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "research", 1)
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
				and GetProvinceCivilization("Scotland") == "teuton" -- should be English
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
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "research", 1)
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
				and GetProvinceCivilization("England") == "teuton" -- should be English
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
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "research", 1)
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
				and GetProvinceCivilization("Brandenburg") == "teuton"
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
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "research", 1)
			end
		},
		OptionTooltips = {"+1 Research"}
	},
	-- persistent events
	TheFoundingOfAustria = {
		Name = "The Founding of Austria",
		Description = "As our people gain in sophistication, we have become more and more settled down. Now it is high time for us to to found a new realm, Austria!",
		Conditions = function(s)
			if (
				GetFactionProvinceCount(Factions.Austria) == 0
				and (EventFaction.Name == "Suebi Tribe" or EventFaction.Name == "Marcomanni Tribe" or EventFaction.Name == "Bavarian Tribe") -- must be Bavarians or one of their cultural predecessors to found Austria
				and EventFaction.Civilization == "teuton"
				and GetFactionData(EventFaction.Civilization, EventFaction.Name, "Type") == "tribe"
				and GetProvinceOwner("Austria") == EventFaction.Name
				and GetProvinceOwner("Bavaria") ~= EventFaction.Name
				and FactionHasTechnologyType(EventFaction, "writing") -- becoming a polity requires writing
				and FactionHasTechnologyType(EventFaction, "masonry") -- becoming a polity requires masonry
			) then
				return true
			else
				return false
			end
		end,
		Persistent = true,
		Options = {"~!OK"},
		OptionEffects = {function(s)
			FormFaction(EventFaction, Factions.Austria)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 10)
		end},
		OptionTooltips = {"Our faction becomes Austria, +10 Prestige"}
	},
	TheFoundingOfBavaria = {
		Name = "The Founding of Bavaria",
		Description = "As our people gain in sophistication, we have become more and more settled down. Now it is high time for us to to found a new realm, Bavaria!",
		Conditions = function(s)
			if (
				GetFactionProvinceCount(Factions.Bavaria) == 0
				and ( -- must be Bavarians or one of their cultural predecessors (and own Bavaria) to found Bavaria
					EventFaction.Name == "Bavarian Tribe"
					or (
						(EventFaction.Name == "Suebi Tribe" or EventFaction.Name == "Marcomanni Tribe")
						and GetProvinceOwner("Bavaria") == EventFaction.Name
					)
				)
				and EventFaction.Civilization == "teuton"
				and GetFactionData(EventFaction.Civilization, EventFaction.Name, "Type") == "tribe"
				and FactionHasTechnologyType(EventFaction, "writing") -- becoming a polity requires writing
				and FactionHasTechnologyType(EventFaction, "masonry") -- becoming a polity requires masonry
			) then
				return true
			else
				return false
			end
		end,
		Persistent = true,
		Options = {"~!OK"},
		OptionEffects = {function(s)
			FormFaction(EventFaction, Factions.Bavaria)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 10)
		end},
		OptionTooltips = {"Our faction becomes Bavaria, +10 Prestige"}
	},
	TheFoundingOfBrandenburg = {
		Name = "The Founding of Brandenburg",
		Description = "As our people gain in sophistication, we have become more and more settled down. Now it is high time for us to to found a new realm, Brandenburg!",
		Conditions = function(s)
			if (
				GetFactionProvinceCount(Factions.Brandenburg) == 0
				and EventFaction.Name == "Saxon Tribe"
				and EventFaction.Civilization == "teuton"
				and GetFactionData(EventFaction.Civilization, EventFaction.Name, "Type") == "tribe"
				and GetProvinceOwner("Brandenburg") == EventFaction.Name
				and GetProvinceOwner("Rhineland") ~= EventFaction.Name
				and FactionHasTechnologyType(EventFaction, "writing") -- becoming a polity requires writing
				and FactionHasTechnologyType(EventFaction, "masonry") -- becoming a polity requires masonry
			) then
				return true
			else
				return false
			end
		end,
		Persistent = true,
		Options = {"~!OK"},
		OptionEffects = {function(s)
			FormFaction(EventFaction, Factions.Brandenburg)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 10)
		end},
		OptionTooltips = {"Our faction becomes Brandenburg, +10 Prestige"}
	},
	TheFoundingOfBurgundy = {
		Name = "The Founding of Burgundy",
		Description = "As our people gain in sophistication, we have become more and more settled down. Now it is high time for us to to found a new realm, Burgundy!",
		Conditions = function(s)
			if (
				GetFactionProvinceCount(Factions.Burgundy) == 0
				and EventFaction.Name == "Burgundian Tribe"
				and EventFaction.Civilization == "goth"
				and GetFactionData(EventFaction.Civilization, EventFaction.Name, "Type") == "tribe"
				and FactionHasTechnologyType(EventFaction, "writing") -- becoming a polity requires writing
				and FactionHasTechnologyType(EventFaction, "masonry") -- becoming a polity requires masonry
			) then
				return true
			else
				return false
			end
		end,
		Persistent = true,
		Options = {"~!OK"},
		OptionEffects = {function(s)
			FormFaction(EventFaction, Factions.Burgundy)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 10)
		end},
		OptionTooltips = {"Our faction becomes Burgundy, +10 Prestige"}
	},
	TheFoundingOfDenmark = {
		Name = "The Founding of Denmark",
		Description = "As our people gain in sophistication, we have become more and more settled down. Now it is high time for us to to found a new realm, Denmark!",
		Conditions = function(s)
			if (
				GetFactionProvinceCount(Factions.Denmark) == 0
				and EventFaction.Name == "Dane Tribe"
				and EventFaction.Civilization == "norse"
				and GetFactionData(EventFaction.Civilization, EventFaction.Name, "Type") == "tribe"
				and FactionHasTechnologyType(EventFaction, "writing") -- becoming a polity requires writing
				and FactionHasTechnologyType(EventFaction, "masonry") -- becoming a polity requires masonry
			) then
				return true
			else
				return false
			end
		end,
		Persistent = true,
		Options = {"~!OK"},
		OptionEffects = {function(s)
			FormFaction(EventFaction, Factions.Denmark)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 10)
		end},
		OptionTooltips = {"Our faction becomes Denmark, +10 Prestige"}
	},
	TheFoundingOfEngland = {
		Name = "The Founding of England",
		Description = "As our people gain in sophistication, we have become more and more settled down. Now it is high time for us to to found a new realm, England!",
		Conditions = function(s)
			if (
				GetFactionProvinceCount(Factions.England) == 0
				and EventFaction.Name == "Saxon Tribe"
				and EventFaction.Civilization == "teuton"
				and GetFactionData(EventFaction.Civilization, EventFaction.Name, "Type") == "tribe"
				and GetProvinceOwner("England") == EventFaction.Name
				and GetProvinceOwner("Rhineland") ~= EventFaction.Name
				and FactionHasTechnologyType(EventFaction, "writing") -- becoming a polity requires writing
				and FactionHasTechnologyType(EventFaction, "masonry") -- becoming a polity requires masonry
			) then
				return true
			else
				return false
			end
		end,
		Persistent = true,
		Options = {"~!OK"},
		OptionEffects = {function(s)
			FormFaction(EventFaction, Factions.England)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 10)
		end},
		OptionTooltips = {"Our faction becomes England, +10 Prestige"}
	},
	TheFoundingOfFrancia = {
		Name = "The Founding of Francia",
		Description = "As our people gain in sophistication, we have become more and more settled down. Now it is high time for us to to found a new realm, Francia!",
		Conditions = function(s)
			if (
				GetFactionProvinceCount(Factions.Francia) == 0
				and EventFaction.Name == "Frank Tribe"
				and EventFaction.Civilization == "teuton"
				and GetFactionData(EventFaction.Civilization, EventFaction.Name, "Type") == "tribe"
				and FactionHasTechnologyType(EventFaction, "writing") -- becoming a polity requires writing
				and FactionHasTechnologyType(EventFaction, "masonry") -- becoming a polity requires masonry
			) then
				return true
			else
				return false
			end
		end,
		Persistent = true,
		Options = {"~!OK"},
		OptionEffects = {function(s)
			FormFaction(EventFaction, Factions.Francia)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 10)
		end},
		OptionTooltips = {"Our faction becomes Francia, +10 Prestige"}
	},
	TheFoundingOfGalicia = {
		Name = "The Founding of Galicia",
		Description = "As our people gain in sophistication, we have become more and more settled down. Now it is high time for us to to found a new realm, Galicia!",
		Conditions = function(s)
			if (
				GetFactionProvinceCount(Factions.Galicia) == 0
				and (EventFaction.Name == "Suebi Tribe" or EventFaction.Name == "Marcomanni Tribe")
				and EventFaction.Civilization == "teuton"
				and GetFactionData(EventFaction.Civilization, EventFaction.Name, "Type") == "tribe"
				and GetProvinceOwner("Gallaecia") == EventFaction.Name
				and GetProvinceOwner("Brandenburg") ~= EventFaction.Name
				and GetProvinceOwner("Bohemia") ~= EventFaction.Name
				and FactionHasTechnologyType(EventFaction, "writing") -- becoming a polity requires writing
				and FactionHasTechnologyType(EventFaction, "masonry") -- becoming a polity requires masonry
			) then
				return true
			else
				return false
			end
		end,
		Persistent = true,
		Options = {"~!OK"},
		OptionEffects = {function(s)
			FormFaction(EventFaction, Factions.England)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 10)
		end},
		OptionTooltips = {"Our faction becomes England, +10 Prestige"}
	},
	TheFoundingOfJutland = {
		Name = "The Founding of Jutland",
		Description = "As our people gain in sophistication, we have become more and more settled down. Now it is high time for us to to found a new realm, Jutland!",
		Conditions = function(s)
			if (
				GetFactionProvinceCount(Factions.Jutland) == 0
				and EventFaction.Name == "Jute Tribe"
				and EventFaction.Civilization == "teuton"
				and GetFactionData(EventFaction.Civilization, EventFaction.Name, "Type") == "tribe"
				and FactionHasTechnologyType(EventFaction, "writing") -- becoming a polity requires writing
				and FactionHasTechnologyType(EventFaction, "masonry") -- becoming a polity requires masonry
			) then
				return true
			else
				return false
			end
		end,
		Persistent = true,
		Options = {"~!OK"},
		OptionEffects = {function(s)
			FormFaction(EventFaction, Factions.Jutland)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 10)
		end},
		OptionTooltips = {"Our faction becomes Jutland, +10 Prestige"}
	},
	TheFoundingOfTheNetherlands = {
		Name = "The Founding of the Netherlands",
		Description = "As our people gain in sophistication, we have become more and more settled down. Now it is high time for us to to found a new realm, the Netherlands!",
		Conditions = function(s)
			if (
				GetFactionProvinceCount(Factions.Netherlands) == 0
				and EventFaction.Name == "Frank Tribe"
				and EventFaction.Civilization == "teuton"
				and GetFactionData(EventFaction.Civilization, EventFaction.Name, "Type") == "tribe"
				and GetProvinceOwner("Netherlands") == EventFaction.Name
				and GetProvinceOwner("France") ~= EventFaction.Name
				and FactionHasTechnologyType(EventFaction, "writing") -- becoming a polity requires writing
				and FactionHasTechnologyType(EventFaction, "masonry") -- becoming a polity requires masonry
			) then
				return true
			else
				return false
			end
		end,
		Persistent = true,
		Options = {"~!OK"},
		OptionEffects = {function(s)
			FormFaction(EventFaction, Factions.Netherlands)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 10)
		end},
		OptionTooltips = {"Our faction becomes the Netherlands, +10 Prestige"}
	},
	TheFoundingOfPrussia = {
		Name = "The Founding of Prussia",
		Description = "From the halls of our capital, the formation of a new realm, Prussia, has been declared!",
		Conditions = function(s)
			if (
				GetFactionProvinceCount(Factions.Prussia) == 0
				and (EventFaction.Name == "Saxon Tribe" or EventFaction.Name == "Brandenburg") -- allow Prussia to be formed by a Saxon Tribe that settles in Prussia, or by a Brandenburg that expanded to that territory
				and EventFaction.Civilization == "teuton"
				and GetProvinceOwner("Prussia") == EventFaction.Name
				and GetProvinceOwner("Rhineland") ~= EventFaction.Name
				and FactionHasTechnologyType(EventFaction, "writing") -- becoming a polity requires writing
				and FactionHasTechnologyType(EventFaction, "masonry") -- becoming a polity requires masonry
			) then
				return true
			else
				return false
			end
		end,
		Persistent = true,
		Options = {"~!OK"},
		OptionEffects = {function(s)
			FormFaction(EventFaction, Factions.Prussia)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 10)
		end},
		OptionTooltips = {"Our faction becomes Prussia, +10 Prestige"}
	},
	TheFoundingOfSaxony = {
		Name = "The Founding of Saxony",
		Description = "As our people gain in sophistication, we have become more and more settled down. Now it is high time for us to to found a new realm, Saxony!",
		Conditions = function(s)
			if (
				GetFactionProvinceCount(Factions.Saxony) == 0
				and EventFaction.Name == "Saxon Tribe"
				and EventFaction.Civilization == "teuton"
				and GetFactionData(EventFaction.Civilization, EventFaction.Name, "Type") == "tribe"
				and FactionHasTechnologyType(EventFaction, "writing") -- becoming a polity requires writing
				and FactionHasTechnologyType(EventFaction, "masonry") -- becoming a polity requires masonry
			) then
				return true
			else
				return false
			end
		end,
		Persistent = true,
		Options = {"~!OK"},
		OptionEffects = {function(s)
			FormFaction(EventFaction, Factions.Saxony)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 10)
		end},
		OptionTooltips = {"Our faction becomes Saxony, +10 Prestige"}
	},
	TheFoundingOfScotland = {
		Name = "The Founding of Scotland",
		Description = "As our people gain in sophistication, we have become more and more settled down. Now it is high time for us to to found a new realm, Scotland!",
		Conditions = function(s)
			if (
				GetFactionProvinceCount(Factions.Scotland) == 0
				and EventFaction.Name == "Saxon Tribe"
				and EventFaction.Civilization == "teuton"
				and GetFactionData(EventFaction.Civilization, EventFaction.Name, "Type") == "tribe"
				and GetProvinceOwner("Scotland") == EventFaction.Name
				and GetProvinceOwner("Rhineland") ~= EventFaction.Name
				and FactionHasTechnologyType(EventFaction, "writing") -- becoming a polity requires writing
				and FactionHasTechnologyType(EventFaction, "masonry") -- becoming a polity requires masonry
			) then
				return true
			else
				return false
			end
		end,
		Persistent = true,
		Options = {"~!OK"},
		OptionEffects = {function(s)
			FormFaction(EventFaction, Factions.Scotland)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 10)
		end},
		OptionTooltips = {"Our faction becomes Scotland, +10 Prestige"}
	},
	TheFoundingOfSweden = {
		Name = "The Founding of Sweden",
		Description = "As our people gain in sophistication, we have become more and more settled down. Now it is high time for us to to found a new realm, Sweden!",
		Conditions = function(s)
			if (
				GetFactionProvinceCount(Factions.Sweden) == 0
				and EventFaction.Name == "Swede Tribe"
				and EventFaction.Civilization == "norse"
				and GetFactionData(EventFaction.Civilization, EventFaction.Name, "Type") == "tribe"
				and FactionHasTechnologyType(EventFaction, "writing") -- becoming a polity requires writing
				and FactionHasTechnologyType(EventFaction, "masonry") -- becoming a polity requires masonry
			) then
				return true
			else
				return false
			end
		end,
		Persistent = true,
		Options = {"~!OK"},
		OptionEffects = {function(s)
			FormFaction(EventFaction, Factions.Sweden)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 10)
		end},
		OptionTooltips = {"Our faction becomes Sweden, +10 Prestige"}
	},
	TheFoundingOfSwitzerland = {
		Name = "The Founding of Switzerland",
		Description = "As our people gain in sophistication, we have become more and more settled down. Now it is high time for us to to found a new realm, Switzerland!",
		Conditions = function(s)
			if (
				GetFactionProvinceCount(Factions.Switzerland) == 0
				and (EventFaction.Name == "Alamanni Tribe" or EventFaction.Name == "Suebi Tribe")
				and EventFaction.Civilization == "teuton"
				and GetFactionData(EventFaction.Civilization, EventFaction.Name, "Type") == "tribe"
				and GetProvinceOwner("Switzerland") == EventFaction.Name
				and GetProvinceOwner("Bavaria") ~= EventFaction.Name -- should be Swabia
				and FactionHasTechnologyType(EventFaction, "writing") -- becoming a polity requires writing
				and FactionHasTechnologyType(EventFaction, "masonry") -- becoming a polity requires masonry
			) then
				return true
			else
				return false
			end
		end,
		Persistent = true,
		Options = {"~!OK"},
		OptionEffects = {function(s)
			FormFaction(EventFaction, Factions.Bavaria)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 10)
		end},
		OptionTooltips = {"Our faction becomes Bavaria, +10 Prestige"}
	},
}
	
AddEventTable(TeutonEvents)

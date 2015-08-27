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

local NidavellirEvents = {
	ModsognirTribalChieftain = {
		Name = "Modsognir, Tribal Chieftain",
		Description = "The mighty Modsognir has become the leader of our tribe.",
		Conditions = function(s)
			if (
				 -- for historical personages to appear, they require three things: the year of their historical rise to prominence, ownership of the province in which they were born or raised, and that that province be of the correct culture for them, if they belonged to the cultural majority
				GetProvinceOwner("Svarinshaug") == EventFaction.Name
				and GetProvinceCivilization("Svarinshaug") == "dwarf"
			) then
				return true
			else
				return false
			end
		end,
		MinYear = -3000,
		MaxYear = -3000 + 30, -- estimated death date
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				if (GetArrayIncludes(wyr.preferences.Heroes.Modsognir.upgrades, "unit-dwarven-thane")) then
					WorldMapProvinces.Svarinshaug.Heroes.unit_hero_modsognir_thane = 2
				else
					WorldMapProvinces.Svarinshaug.Heroes.unit_hero_modsognir = 2
				end
			end
		}
	},
	DurinWarrior = {
		Name = "Durin, Warrior",
		Description = "The crafty warrior Durin has come to renown for his skills in combat.",
		Conditions = function(s)
			if (
				 -- for historical personages to appear, they require three things: the year of their historical rise to prominence, ownership of the province in which they were born or raised, and that that province be of the correct culture for them, if they belonged to the cultural majority
				GetProvinceOwner("Svarinshaug") == EventFaction.Name
				and GetProvinceCivilization("Svarinshaug") == "dwarf"
			) then
				return true
			else
				return false
			end
		end,
		MinYear = -3000,
		MaxYear = -3000 + 30, -- estimated death date
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				if (GetArrayIncludes(wyr.preferences.Heroes.Durin.upgrades, "unit-dwarven-thane")) then
					WorldMapProvinces.Svarinshaug.Heroes.unit_hero_durin_thane = 2
				else
					WorldMapProvinces.Svarinshaug.Heroes.unit_hero_durin = 2
				end
			end
		}
	},
	ARockyHome = {
		Name = "A Rocky Home",
		Description = "Our clan, led by Modsognir, has arrived in Svarinshaug seeking a new home. Beset by hostile natural forces on all sides, can we survive our first winter?",
		Heroes = {
			unit_hero_modsognir = true,
			unit_hero_durin = true
		},
		Conditions = function(s)
			if (
				EventFaction.Name == "Modsogning Clan"
			) then
				return true
			else
				return false
			end
		end,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				if (GrandStrategyFaction ~= nil and GrandStrategyFaction.Name == "Modsogning Clan" and wyr.preferences.AutomaticBattles == false) then
					GrandStrategyEventMap = true
					GetMapInfo("maps/nidavellir/svarinshaug.smp")
					CurrentQuest = "A Rocky Home"
					RunMap("maps/nidavellir/svarinshaug.smp")
					GrandStrategyEventMap = false
					
					for province_i, key in ipairs(EventFaction.OwnedProvinces) do
						WorldMapProvinces[key].Heroes.unit_hero_modsognir = 0
						WorldMapProvinces[key].Heroes.unit_hero_modsognir_thane = 0
						WorldMapProvinces[key].Heroes.unit_hero_durin = 0
						WorldMapProvinces[key].Heroes.unit_hero_durin_thane = 0
					end

					for i, unitName in ipairs(Units) do
						if (IsMilitaryUnit(unitName)) then
							ChangeProvinceUnitQuantity("Svarinshaug", unitName, math.ceil(GetPlayerData(0, "UnitTypesCount", unitName) / BattalionMultiplier))
						elseif (IsHero(unitName)) then
							if (GetPlayerData(0, "UnitTypesCount", unitName) > 0) then
								WorldMapProvinces.Svarinshaug.Heroes[string.gsub(unitName, "-", "_")] = 2
							end
						end
					end
					if (GameResult == GameVictory) then
						ChangeFactionResource("dwarf", "Modsogning Clan", "prestige", 5) -- prestige for successfully settling Svarinshaug
						ChangeFactionResource("dwarf", "Modsogning Clan", "gold", 800) -- food gained from the yales
						ChangeFactionResource("dwarf", "Modsogning Clan", "lumber", 400) -- lumber gained from the mission
						ChangeFactionResource("dwarf", "Modsogning Clan", "stone", 200) -- stone gained from the mission
					elseif (GameResult == GameDefeat) then
						AcquireProvince(WorldMapProvinces.Svarinshaug, "")
					end
				elseif (GrandStrategyFaction ~= nil and (GrandStrategyFaction.Name ~= "Modsogning Clan" or wyr.preferences.AutomaticBattles)) then
					ChangeFactionResource("dwarf", "Modsogning Clan", "prestige", 5) -- prestige for successfully settling Svarinshaug
					ChangeFactionResource("dwarf", "Modsogning Clan", "gold", 800) -- food gained from the yales
					ChangeFactionResource("dwarf", "Modsogning Clan", "lumber", 400) -- lumber gained from the mission
					ChangeFactionResource("dwarf", "Modsogning Clan", "stone", 200) -- stone gained from the mission
					if (GrandStrategyFaction.Name == EventFaction.Name) then
						CenterGrandStrategyMapOnTile(WorldMapProvinces.Svarinshaug.SettlementLocation[1], WorldMapProvinces.Svarinshaug.SettlementLocation[2])
						GrandStrategyDialog("A Rocky Home", "We have successfully hunted enough yales and gathered enough lumber and stone to survive our early days in Svarinshaug.")
					end
				end
			end
		},
		OptionTooltips = {""}
	},
	TheMeadOfWisdom = {
		Name = "The Mead of Wisdom",
		Description = "Word has reached our chieftain Modsognir that the dwarves Fjalar and Galar have slain our wise clansman Thjodrorir. Modsognir's advisors suggest sending Durin to enter the two dwarves' hall, returning with the sage's remains to give him a proper burial, and bringing the evil pair to the clan's justice.",
		Heroes = {
			unit_hero_modsognir = true,
			unit_hero_durin = true
		},
		RequiredEvents = {
			ARockyHome = true
		},
		Conditions = function(s)
			if (
				EventFaction.Name == "Modsogning Clan"
				and SyncRand(100) < 20
			) then
				return true
			else
				return false
			end
		end,
		Options = {"Send ~!Durin", "Do ~!nothing"},
		OptionEffects = {
			function(s)
				if (GrandStrategyFaction ~= nil and GrandStrategyFaction.Name == "Modsogning Clan" and wyr.preferences.AutomaticBattles == false) then
					GrandStrategyEventMap = true
					GetMapInfo("maps/nidavellir/fjalars-and-galars-hall.smp")
					CurrentQuest = "The Mead of Wisdom"
					RunMap("maps/nidavellir/fjalars-and-galars-hall.smp")
					GrandStrategyEventMap = false
					
					for province_i, key in ipairs(EventFaction.OwnedProvinces) do
						WorldMapProvinces[key].Heroes.unit_hero_durin = 0
						WorldMapProvinces[key].Heroes.unit_hero_durin_thane = 0
					end

					for i, unitName in ipairs(Units) do
						if (IsMilitaryUnit(unitName)) then
							ChangeProvinceUnitQuantity("Svarinshaug", unitName, math.ceil(GetPlayerData(0, "UnitTypesCount", unitName) / BattalionMultiplier))
						elseif (IsHero(unitName)) then
							if (GetPlayerData(0, "UnitTypesCount", unitName) > 0) then
								WorldMapProvinces.Svarinshaug.Heroes[string.gsub(unitName, "-", "_")] = 2
							end
						end
					end
					if (GameResult == GameVictory) then
						ChangeFactionResource("dwarf", "Modsogning Clan", "prestige", 10) -- prestige for punishing the evil doers and recovering the sage's remains
					end
				elseif (GrandStrategyFaction ~= nil and (GrandStrategyFaction.Name ~= "Modsogning Clan" or wyr.preferences.AutomaticBattles)) then
					ChangeFactionResource("dwarf", "Modsogning Clan", "prestige", 10) -- prestige for punishing the evil doers and recovering the sage's remains
					if (GrandStrategyFaction.Name == EventFaction.Name) then
						GrandStrategyDialog("The Mead of Wisdom", "Fjalar and Galar had brewn Thjodrorir's remains into mead, gloating that drink it had made them wiser. Durin survived the encounter with them, and brought the mead to be buried in Thjodrorir's tomb.")
					end
				end
			end,
			function(s)
				ChangeFactionResource("dwarf", "Modsogning Clan", "prestige", -10) -- doing nothing in such a situation would be dishonorable
			end
		},
		OptionTooltips = {"", "-10 Prestige"}
	},
	TheTreasuresOfSvarinshaug = {
		Name = "The Treasures of Svarinshaug",
		Description = "The dwarven smiths Brokk and Eitri are competing with the renowned sons of Ivaldi to craft the best artifacts for Modsognir. To obtain the necessary high quality ores will be perilous, however, as dangerous creatures abound in the deep mines where they lay...",
		Heroes = {
			unit_hero_modsognir = true,
			unit_hero_durin = true
		},
		RequiredEvents = {
			TheMeadOfWisdom = true
		},
		Conditions = function(s)
			if (
				EventFaction.Name == "Modsogning Clan"
				and SyncRand(100) < 20
			) then
				return true
			else
				return false
			end
		end,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				if (GrandStrategyFaction ~= nil and GrandStrategyFaction.Name == "Modsogning Clan" and wyr.preferences.AutomaticBattles == false) then
					GrandStrategyEventMap = true
					GetMapInfo("maps/nidavellir/eastern-mines.smp")
					CurrentQuest = "The Treasures of Svarinshaug"
					RunMap("maps/nidavellir/eastern-mines.smp")
					GrandStrategyEventMap = false
					
					for i, unitName in ipairs(Units) do
						if (IsMilitaryUnit(unitName)) then
							ChangeProvinceUnitQuantity("Svarinshaug", unitName, math.ceil(GetPlayerData(0, "UnitTypesCount", unitName) / BattalionMultiplier))
						elseif (IsHero(unitName)) then
							if (GetPlayerData(0, "UnitTypesCount", unitName) > 0) then
								WorldMapProvinces.Svarinshaug.Heroes[string.gsub(unitName, "-", "_")] = 2
							end
						end
					end
					if (GameResult == GameVictory) then
						ChangeFactionResource("dwarf", "Modsogning Clan", "prestige", 30) -- prestige for obtaining the wondrous artifacts
						ChangeFactionResource("dwarf", "Modsogning Clan", "gold", 1000) -- gold value of Draupnir
					end
				elseif (GrandStrategyFaction ~= nil and (GrandStrategyFaction.Name ~= "Modsogning Clan" or wyr.preferences.AutomaticBattles)) then
					ChangeFactionResource("dwarf", "Modsogning Clan", "prestige", 30) -- prestige for obtaining the wondrous artifacts
					ChangeFactionResource("dwarf", "Modsogning Clan", "gold", 1000) -- gold value of Draupnir
					if (GrandStrategyFaction.Name == EventFaction.Name) then
						GrandStrategyDialog("The Treasures of Svarinshaug", "Having gathered the necessary resources, Brokk and Eitri crafted their gifts for Modsognir. The sons of Ivaldi had presented the chieftain with a magnificent throwing spear, Gungnir, and a sleek ship, Skidbladnir. But Modsognir judged Brokk and Eitri's artifacts to be the better ones: they gave him a solid gold arm-ring, Draupnir, and a mighty hammer, Mjollnir.")
					end
				end
			end
		},
		OptionTooltips = {""}
	},
	TheNecklaceOfTheBrisings = {
		Name = "The Necklace of the Brisings",
		Description = "The necklace made for Modsognir's wife by the Brisings - a group of four dwarven smiths - has been stolen! The culprits, a band of local dwarven thieves, sneaked away with the necklace last night, going back to their hideout. We must avenge this dishonor to our clan, and recover the necklace from these bandits!",
		Heroes = {
			unit_hero_modsognir = true,
			unit_hero_durin = true
		},
		RequiredEvents = {
			TheTreasuresOfSvarinshaug = true
		},
		Conditions = function(s)
			if (
				EventFaction.Name == "Modsogning Clan"
				and GetProvinceOwner("Aurvang") == ""
				and SyncRand(100) < 20
			) then
				return true
			else
				return false
			end
		end,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				if (GrandStrategyFaction ~= nil and GrandStrategyFaction.Name == "Modsogning Clan" and wyr.preferences.AutomaticBattles == false) then
					GrandStrategyEventMap = true
					GetMapInfo("maps/nidavellir/aurvang.smp")
					CurrentQuest = "The Necklace of the Brisings"
					RunMap("maps/nidavellir/aurvang.smp")
					GrandStrategyEventMap = false
					
					for province_i, key in ipairs(EventFaction.OwnedProvinces) do
						WorldMapProvinces[key].Heroes.unit_hero_modsognir = 0
						WorldMapProvinces[key].Heroes.unit_hero_modsognir_thane = 0
						WorldMapProvinces[key].Heroes.unit_hero_durin = 0
						WorldMapProvinces[key].Heroes.unit_hero_durin_thane = 0
					end

					for i, unitName in ipairs(Units) do
						if (IsMilitaryUnit(unitName)) then
							ChangeProvinceUnitQuantity("Svarinshaug", unitName, math.ceil(GetPlayerData(0, "UnitTypesCount", unitName) / BattalionMultiplier))
						elseif (IsHero(unitName)) then
							if (GetPlayerData(0, "UnitTypesCount", unitName) > 0) then
								WorldMapProvinces.Svarinshaug.Heroes[string.gsub(unitName, "-", "_")] = 2
							end
						end
					end
					if (GameResult == GameVictory) then
						ChangeFactionResource("dwarf", "Modsogning Clan", "prestige", 5) -- prestige for rooting out the bandits
						ChangeFactionResource("dwarf", "Modsogning Clan", "gold", 1000) -- gold value of the Necklace
						-- place some goblins in Aurvang after the dwarven bandits are gone
						SetProvinceUnitQuantity("Aurvang", "unit-goblin-spearman", 6)
						SetProvinceUnitQuantity("Aurvang", "unit-goblin-archer", 3)
					end
				elseif (GrandStrategyFaction ~= nil and (GrandStrategyFaction.Name ~= "Modsogning Clan" or wyr.preferences.AutomaticBattles)) then
					SetProvinceUnitQuantity("Aurvang", "unit-dwarven-steelclad", 0) -- bandits rooted out
					SetProvinceUnitQuantity("Aurvang", "unit-dwarven-axefighter", 0)
					ChangeFactionResource("dwarf", "Modsogning Clan", "prestige", 5) -- prestige for rooting out the bandits
					ChangeFactionResource("dwarf", "Modsogning Clan", "gold", 1000) -- gold value of the Necklace
					
					-- place some goblins in Aurvang after the dwarven bandits are gone
					SetProvinceUnitQuantity("Aurvang", "unit-goblin-spearman", 6)
					SetProvinceUnitQuantity("Aurvang", "unit-goblin-archer", 3)
					
					if (GrandStrategyFaction.Name == EventFaction.Name) then
						GrandStrategyDialog("The Necklace of the Brisings", "After rooting out the bandits in Aurvang, Modsognir recovered the necklace.")
					end
				end
			end
		},
		OptionTooltips = {""}
	},
	TheBindingOfGrafvitnir = {
		Name = "The Binding of Grafvitnir",
		Description = "The colossal wyrm Grafvitnir threatens the survival of the fledgling dwarves, who have little chance of slaying the monstrous creature. The only hope rests in getting close enough to bind Grafvitnir with a powerful fetter crafted by the clan's talented smiths.",
		Heroes = {
			unit_hero_modsognir = true,
			unit_hero_durin = true
		},
		RequiredEvents = {
			TheNecklaceOfTheBrisings = true
		},
		Conditions = function(s)
			if (
				EventFaction.Name == "Modsogning Clan"
				and SyncRand(100) < 20
			) then
				return true
			else
				return false
			end
		end,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				if (GrandStrategyFaction ~= nil and GrandStrategyFaction.Name == "Modsogning Clan" and wyr.preferences.AutomaticBattles == false) then
					GrandStrategyEventMap = true
					GetMapInfo(Quests.TheBindingOfGrafvitnir.Map)
					CurrentQuest = "The Binding of Grafvitnir"
					RunMap(Quests.TheBindingOfGrafvitnir.Map)
					GrandStrategyEventMap = false
					
					for province_i, key in ipairs(EventFaction.OwnedProvinces) do
						WorldMapProvinces[key].Heroes.unit_hero_modsognir = 0
						WorldMapProvinces[key].Heroes.unit_hero_modsognir_thane = 0
						WorldMapProvinces[key].Heroes.unit_hero_durin = 0
						WorldMapProvinces[key].Heroes.unit_hero_durin_thane = 0
					end

					for i, unitName in ipairs(Units) do
						if (IsMilitaryUnit(unitName)) then
							ChangeProvinceUnitQuantity("Svarinshaug", unitName, math.ceil(GetPlayerData(0, "UnitTypesCount", unitName) / BattalionMultiplier))
						elseif (IsHero(unitName)) then
							if (GetPlayerData(0, "UnitTypesCount", unitName) > 0) then
								WorldMapProvinces.Svarinshaug.Heroes[string.gsub(unitName, "-", "_")] = 2
							end
						end
					end
					if (GameResult == GameVictory) then
						ChangeFactionResource("dwarf", "Modsogning Clan", "prestige", 25) -- prestige for chaining the beast
					end
				elseif (GrandStrategyFaction ~= nil and (GrandStrategyFaction.Name ~= "Modsogning Clan" or wyr.preferences.AutomaticBattles)) then
					ChangeFactionResource("dwarf", "Modsogning Clan", "prestige", 25) -- prestige for chaining the beast
					if (GrandStrategyFaction.Name == EventFaction.Name) then
						GrandStrategyDialog("The Binding of Grafvitnir", "Modsognir successfully entered Grafvitnir's lair and chained the beast. With much effort, the enormous Grafvitnir was brought to Svarinshaug by the dwarves. The monster's fetters were bound to the walls of a nearby cave, and the entrance destroyed. Little is known of what ultimately became of the wyrm. What is certain is that the creature never bothered our clan again.")
					end
				end
			end
		},
		OptionTooltips = {""}
	},
	ModsognirDies = {
		Name = "Modsognir Dies",
		Description = "The mighty Modsognir has died of natural causes.",
		Heroes = {
			unit_hero_modsognir = true
		},
		MinYear = -3000 + 30, -- estimated death date
		Options = {"~!OK"},
		OptionEffects = {function(s)
			for province_i, key in ipairs(EventFaction.OwnedProvinces) do
				WorldMapProvinces[key].Heroes.unit_hero_modsognir = 0
				WorldMapProvinces[key].Heroes.unit_hero_modsognir_thane = 0
			end
		end}
	},
	DurinDies = {
		Name = "Durin Dies",
		Description = "The valiant Durin has died of natural causes.",
		Heroes = {
			unit_hero_durin = true
		},
		MinYear = -3000 + 30, -- estimated death date
		Options = {"~!OK"},
		OptionEffects = {function(s)
			for province_i, key in ipairs(EventFaction.OwnedProvinces) do
				WorldMapProvinces[key].Heroes.unit_hero_durin = 0
				WorldMapProvinces[key].Heroes.unit_hero_durin_thane = 0
			end
		end}
	},
	TheNorlundClan = {
		Name = "The Norlund Clan",
		Description = "Our clansfolk in the Caverns of Chaincolt have split off to form the Norlund clan.",
		Conditions = function(s)
			if (
				EventFaction.Civilization == "dwarf"
				and GetProvinceOwner("Caverns of Chaincolt") == EventFaction.Name
				and GetProvinceCivilization("Caverns of Chaincolt") == "dwarf"
				and ProvinceHasBuildingClass(WorldMapProvinces.CavernsOfChaincolt.Name, "town-hall")
				and GetFactionMilitaryScore(EventFaction) > 250 -- basic infantry x 5
			) then
				return true
			else
				return false
			end
		end,
		Options = {"~!OK", "This means ~!war!", "Play as the ~!Norlund clan"},
		OptionEffects = {
			function(s)
				EqualizeProvinceUnits(EventFaction)
				AcquireProvince(WorldMapProvinces.CavernsOfChaincolt, "Norlund Clan")
				AcquireFactionTechnologies(EventFaction.Civilization, EventFaction.Name, "dwarf", "Norlund Clan")
			end,
			function(s)
				EqualizeProvinceUnits(EventFaction)
				AcquireProvince(WorldMapProvinces.CavernsOfChaincolt, "Norlund Clan")
				AcquireFactionTechnologies(EventFaction.Civilization, EventFaction.Name, "dwarf", "Norlund Clan")
				EventFaction.Diplomacy.NorlundClan = "War"
				Factions.NorlundClan.Diplomacy[GetFactionKeyFromName(EventFaction.Name)] = "War"
			end,
			function(s)
				EqualizeProvinceUnits(EventFaction)
				AcquireProvince(WorldMapProvinces.CavernsOfChaincolt, "Norlund Clan")
				AcquireFactionTechnologies(EventFaction.Civilization, EventFaction.Name, "dwarf", "Norlund Clan")
				GrandStrategyFaction = Factions.NorlundClan
				SetPlayerFaction("dwarf", "Norlund Clan")
			end
		}
	},
	TheShinsplitterClan = {
		Name = "The Shinsplitter Clan",
		Description = "Our clansfolk in the Southern Tunnels have split off to form the Shinsplitter clan.",
		Conditions = function(s)
			if (
				EventFaction.Civilization == "dwarf"
				and GetProvinceOwner("Southern Tunnels") == EventFaction.Name
				and GetProvinceCivilization("Southern Tunnels") == "dwarf"
				and ProvinceHasBuildingClass(WorldMapProvinces.SouthernTunnels.Name, "town-hall")
				and GetFactionMilitaryScore(EventFaction) > 250 -- basic infantry x 5
			) then
				return true
			else
				return false
			end
		end,
		Options = {"~!OK", "This means ~!war!", "Play as the ~!Shinsplitter clan"},
		OptionEffects = {
			function(s)
				EqualizeProvinceUnits(EventFaction)
				AcquireProvince(WorldMapProvinces.SouthernTunnels, "Shinsplitter Clan")
				AcquireFactionTechnologies(EventFaction.Civilization, EventFaction.Name, "dwarf", "Shinsplitter Clan")
			end,
			function(s)
				EqualizeProvinceUnits(EventFaction)
				AcquireProvince(WorldMapProvinces.SouthernTunnels, "Shinsplitter Clan")
				AcquireFactionTechnologies(EventFaction.Civilization, EventFaction.Name, "dwarf", "Shinsplitter Clan")
				EventFaction.Diplomacy.ShinsplitterClan = "War"
				Factions.ShinsplitterClan.Diplomacy[GetFactionKeyFromName(EventFaction.Name)] = "War"
			end,
			function(s)
				EqualizeProvinceUnits(EventFaction)
				AcquireProvince(WorldMapProvinces.SouthernTunnels, "Shinsplitter Clan")
				AcquireFactionTechnologies(EventFaction.Civilization, EventFaction.Name, "dwarf", "Shinsplitter Clan")
				GrandStrategyFaction = Factions.ShinsplitterClan
				SetPlayerFaction("dwarf", "Shinsplitter Clan")
			end
		}
	},
	TheShorbearClan = {
		Name = "The Shorbear Clan",
		Description = "Our clansfolk in the Shorbear Hills have split off to form the Shorbear clan.",
		Conditions = function(s)
			if (
				EventFaction.Civilization == "dwarf"
				and GetProvinceOwner("Shorbear Hills") == EventFaction.Name
				and GetProvinceCivilization("Shorbear Hills") == "dwarf"
				and ProvinceHasBuildingClass(WorldMapProvinces.ShorbearHills.Name, "town-hall")
				and GetFactionMilitaryScore(EventFaction) > 250 -- basic infantry x 5
			) then
				return true
			else
				return false
			end
		end,
		Options = {"~!OK", "This means ~!war!", "Play as the ~!Shorbear clan"},
		OptionEffects = {
			function(s)
				EqualizeProvinceUnits(EventFaction)
				AcquireProvince(WorldMapProvinces.ShorbearHills, "Shorbear Clan")
				AcquireFactionTechnologies(EventFaction.Civilization, EventFaction.Name, "dwarf", "Shorbear Clan")
			end,
			function(s)
				EqualizeProvinceUnits(EventFaction)
				AcquireProvince(WorldMapProvinces.ShorbearHills, "Shorbear Clan")
				AcquireFactionTechnologies(EventFaction.Civilization, EventFaction.Name, "dwarf", "Shorbear Clan")
				EventFaction.Diplomacy.ShorbearClan = "War"
				Factions.ShorbearClan.Diplomacy[GetFactionKeyFromName(EventFaction.Name)] = "War"
			end,
			function(s)
				EqualizeProvinceUnits(EventFaction)
				AcquireProvince(WorldMapProvinces.ShorbearHills, "Shorbear Clan")
				AcquireFactionTechnologies(EventFaction.Civilization, EventFaction.Name, "dwarf", "Shorbear Clan")
				GrandStrategyFaction = Factions.ShorbearClan
				SetPlayerFaction("dwarf", "Shorbear Clan")
			end
		}
	},
	BaglurWarrior = {
		Name = "Baglur, Warrior",
		Description = "The hardy warrior Baglur has come to renown for his skills in combat.",
		Conditions = function(s)
			if (
				 -- for historical personages to appear, they require three things: the year of their historical rise to prominence, ownership of the province in which they were born or raised, and that that province be of the correct culture for them, if they belonged to the cultural majority
				GetProvinceOwner("Caverns of Chaincolt") == EventFaction.Name
				and GetProvinceCivilization("Caverns of Chaincolt") == "dwarf"
			) then
				return true
			else
				return false
			end
		end,
		MinYear = -1,
		MaxYear = 40 + 10, -- Baglur's death date
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				if (GetArrayIncludes(wyr.preferences.Heroes.Baglur.upgrades, "unit-dwarven-thane")) then
					WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_baglur_thane = 2
				else
					WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_baglur = 2
				end
			end
		}
	},
	DurstornChieftainOfTheNorlundClan = {
		Name = "Durstorn, Chieftain of the Norlund Clan",
		Description = "The strong-willed Durstorn has become our chieftain.",
		Conditions = function(s)
			if (
				 -- for historical personages to appear, they require three things: the year of their historical rise to prominence, ownership of the province in which they were born or raised, and that that province be of the correct culture for them, if they belonged to the cultural majority
				GetProvinceOwner("Caverns of Chaincolt") == EventFaction.Name
				and GetProvinceCivilization("Caverns of Chaincolt") == "dwarf"
				and EventFaction.Name == "Norlund Clan" -- ruler events also require the faction being correct
			) then
				return true
			else
				return false
			end
		end,
		MinYear = -1,
		MaxYear = 35 + 15, -- Durstorn's death date
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_durstorn = 2
			end
		}
	},
	ThursaganTheSageOfFire = {
		Name = "Thursagan, the Sage of Fire",
		Description = "A particularly skilled runecrafter, Thursagan, has become renowned in our clan.",
		Conditions = function(s)
			if (
				GetProvinceOwner("Caverns of Chaincolt") == EventFaction.Name -- for historical personages to appear, they require three things: the year of their historical rise to prominence, ownership of the province in which they were born or raised, and that that province be of the correct culture for them, if they belonged to the cultural majority
				and GetProvinceCivilization("Caverns of Chaincolt") == "dwarf"
			) then
				return true
			else
				return false
			end
		end,
		MinYear = -1,
		MaxYear = 40 + 10, -- Thursagan's death date
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_thursagan = 2
			end
		}
	},
	ChargeRugnurWithTheOutpost = {
		Name = "Charge Rugnur with the Outpost?",
		Description = "A young dwarf by the name of Rugnur could be an adequate choice for being encharged with one of our border outposts. Do you wish to appoint him for the job?",
		Conditions = function(s) -- can happen for clans other than the Norlund clan, if they conquer the Caverns of Chaincolt in time!
			if (
				GetProvinceOwner("Caverns of Chaincolt") == EventFaction.Name
				and GetProvinceCivilization("Caverns of Chaincolt") == "dwarf"
				and WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_rugnur == 0
				and WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_rugnur_steelclad == 0
				and WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_rugnur_thane == 0
			) then
				return true
			else
				return false
			end
		end,
		MinYear = 25,
		MaxYear = 40,
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
			if (SyncRand(100) < 10 and FactionHasHero(EventFaction, "unit-hero-thursagan") and FactionHasHero(EventFaction, "unit-hero-durstorn")) then
				return true
			else
				return false
			end
		end,
		MaxYear = 40,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				for province_i, key in ipairs(EventFaction.OwnedProvinces) do
					WorldMapProvinces[key].Heroes.unit_hero_thursagan = 0
				end
				if (GetProvinceOwner("Northern Wastelands") ~= "Norlund Clan") then
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
				GetProvinceOwner("Caverns of Chaincolt") == EventFaction.Name
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
			if ("Norlund Clan" == GrandStrategyFaction.Name and wyr.preferences.AutomaticBattles == false) then
				GameSettings.Presets[1].Type = PlayerComputer
				GameSettings.Presets[2].Type = PlayerComputer

				GrandStrategyEventMap = true
				GetMapInfo("maps/nidavellir/chaincolt-foothills.smp")
				CurrentQuest = "A Bargain is Struck"
				RunMap("maps/nidavellir/chaincolt-foothills.smp")
				GrandStrategyEventMap = false

				for i, unitName in ipairs(Units) do
					if (IsMilitaryUnit(unitName)) then
						ChangeProvinceUnitQuantity("Caverns of Chaincolt", unitName, math.ceil(GetPlayerData(0, "UnitTypesCount", unitName) / BattalionMultiplier))
						ChangeProvinceUnitQuantity("Brown Hills", unitName, math.ceil(GetPlayerData(1, "UnitTypesCount", unitName) / BattalionMultiplier))
						ChangeProvinceUnitQuantity("Southern Tunnels", unitName, math.ceil(GetPlayerData(2, "UnitTypesCount", unitName) / BattalionMultiplier))
					end
				end
				for i, unitName in ipairs(Units) do
					if (IsHero(unitName)) then
						if (GetPlayerData(0, "UnitTypesCount", unitName) > 0) then
							WorldMapProvinces.CavernsOfChaincolt.Heroes[string.gsub(unitName, "-", "_")] = 2
						end
					end
				end
			end
			if (("Norlund Clan" ~= GrandStrategyFaction.Name or wyr.preferences.AutomaticBattles) and ("Shinsplitter Clan" ~= GrandStrategyFaction.Name or wyr.preferences.AutomaticBattles)) then -- if neither Norlund Clan nor Shinsplitter Clan are played by the human player, then enact the effects of the bargain between the gnomes and Rugnur successfully being struck
				Factions.NorlundClan.Diplomacy.ShinsplitterClan = "War" -- if is grand strategy, begin war between Norlund Clan and Shinsplitter Clan
				Factions.ShinsplitterClan.Diplomacy.NorlundClan = "War"
				ChangeFactionResource("gnome", "Untersberg", "gold", -2500) -- decrease gnomish treasury by 5000 silver (considering for our purposes silver to be worth half as much as gold)
				ChangeFactionResource("dwarf", "Norlund Clan", "gold", 2500) -- 5000 silver, and for our purposes silver is considered to be worth half of what gold is
				ChangeProvinceUnitQuantity("Caverns of Chaincolt", "unit-gnomish-recruit", 1)
				ChangeProvinceUnitQuantity("Southern Tunnels", "unit-dwarven-steelclad", -1)
			end
			if (GrandStrategyFaction.Name == "Norlund Clan" and wyr.preferences.AutomaticBattles) then
				GrandStrategyDialog("A Bargain is Struck", "Pypo I has proposed to Rugnur that our clan craft a wondrous scepter for him, encrusted with the gnomish Ruby of Fire. Rugnur agreed for the price of 10,000 pieces of silver, half to be paid upfront, and half when the artifact were completed. The Shinsplitter Clan tried to intercept the silver caravans and the gnomish envoy who carried the ruby, but Rugnur made sure they arrived at the outpost safely.")
			end
			GrandStrategyEvent(Factions.ShinsplitterClan, GrandStrategyEvents.ABargainIsStruckShinsplitterClan)
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
			if ("Shinsplitter Clan" == GrandStrategyFaction.Name and wyr.preferences.AutomaticBattles == false) then
				GameSettings.Presets[0].Type = PlayerComputer
				GameSettings.Presets[1].Type = PlayerComputer

				GrandStrategyEventMap = true
				GetMapInfo("maps/nidavellir/chaincolt-foothills.smp")
				CurrentQuest = "A Bargain is Struck"
				RunMap("maps/nidavellir/chaincolt-foothills.smp")
				GrandStrategyEventMap = false

				for i, unitName in ipairs(Units) do
					if (IsMilitaryUnit(unitName)) then
						ChangeProvinceUnitQuantity("Caverns of Chaincolt", unitName, math.ceil(GetPlayerData(0, "UnitTypesCount", unitName) / BattalionMultiplier))
						ChangeProvinceUnitQuantity("Brown Hills", unitName, math.ceil(GetPlayerData(1, "UnitTypesCount", unitName) / BattalionMultiplier))
						ChangeProvinceUnitQuantity("Southern Tunnels", unitName, math.ceil(GetPlayerData(2, "UnitTypesCount", unitName) / BattalionMultiplier))
					end
				end
				for i, unitName in ipairs(Units) do
					if (IsHero(unitName)) then
						if (GetPlayerData(0, "UnitTypesCount", unitName) > 0) then
							WorldMapProvinces.CavernsOfChaincolt.Heroes[string.gsub(unitName, "-", "_")] = 2
						end
					end
				end
			end
			if (GrandStrategyFaction.Name == "Shinsplitter Clan" and wyr.preferences.AutomaticBattles) then
				GrandStrategyDialog("A Bargain is Struck", "The Norlund Clan refused to pay the toll! We tried to intercept the caravans and the envoy who carried the gnomish Ruby of Fire, but we failed...")
			end
			if (GetProvinceUnitQuantity("Caverns of Chaincolt", "unit-gnomish-recruit") >= 1) then -- way to check if Norlund Clan successfully transported the caravans
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
			if ("Norlund Clan" == GrandStrategyFaction.Name and wyr.preferences.AutomaticBattles == false) then
				GameSettings.Presets[1].Type = PlayerComputer

				GrandStrategyEventMap = true
				GetMapInfo("maps/nidavellir/caverns-of-chaincolt.smp")
				CurrentQuest = "Closing the Gates"
				RunMap("maps/nidavellir/caverns-of-chaincolt.smp")
				GrandStrategyEventMap = false

				for i, unitName in ipairs(Units) do
					if (IsHero(unitName)) then
						if (GetPlayerData(0, "UnitTypesCount", unitName) > 0) then
							WorldMapProvinces.CavernsOfChaincolt.Heroes[string.gsub(unitName, "-", "_")] = 2
						end
					end
				end
				if (GetProvinceOwner("Caverns of Chaincolt") == "Shinsplitter Clan") then
					for i, unitName in ipairs(Units) do
						if (IsMilitaryUnit(unitName)) then
							ChangeProvinceUnitQuantity("Caverns of Chaincolt", unitName, math.ceil(GetPlayerData(1, "UnitTypesCount", unitName) / BattalionMultiplier))
						end
					end
					WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_durstorn = 0
				else
					for i, unitName in ipairs(Units) do
						if (IsMilitaryUnit(unitName)) then
							ChangeProvinceUnitQuantity("Caverns of Chaincolt", unitName, math.ceil(GetPlayerData(0, "UnitTypesCount", unitName) / BattalionMultiplier))
							ChangeProvinceUnitQuantity("Southern Tunnels", unitName, math.ceil(GetPlayerData(1, "UnitTypesCount", unitName) / BattalionMultiplier))
						end
					end
				end
			end
			if (("Norlund Clan" ~= GrandStrategyFaction.Name or wyr.preferences.AutomaticBattles) and ("Shinsplitter Clan" ~= GrandStrategyFaction.Name or wyr.preferences.AutomaticBattles)) then
				ChangeProvinceUnitQuantity("Southern Tunnels", "unit-dwarven-steelclad", -1)
			end
			if (GrandStrategyFaction.Name == "Norlund Clan" and wyr.preferences.AutomaticBattles) then
				GrandStrategyDialog("Closing the Gates", "With the help of Baglur, Rugnur successfully closed the gates to our cavern homes, leaving the Shinsplitters blocked outside. The young dwarf informed the clan's council of what had happened, and our chieftain Durstorn decided to send him, Baglur and the gnomish envoy to the Northern Wastelands, where Thursagan - a runesmith capable of crafting the magnificent scepter - lived.")
			end
			GrandStrategyEvent(Factions.ShinsplitterClan, GrandStrategyEvents.ClosingTheGatesShinsplitterClan)
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
			if ("Shinsplitter Clan" == GrandStrategyFaction.Name and wyr.preferences.AutomaticBattles == false) then
				GameSettings.Presets[0].Type = PlayerComputer

				GrandStrategyEventMap = true
				GetMapInfo("maps/nidavellir/caverns-of-chaincolt.smp")
				CurrentQuest = "Closing the Gates"
				RunMap("maps/nidavellir/caverns-of-chaincolt.smp")
				GrandStrategyEventMap = false

				for i, unitName in ipairs(Units) do
					if (IsHero(unitName)) then
						if (GetPlayerData(0, "UnitTypesCount", unitName) > 0) then
							WorldMapProvinces.CavernsOfChaincolt.Heroes[string.gsub(unitName, "-", "_")] = 2
						end
					end
				end
				if (GetProvinceOwner("Caverns of Chaincolt") == "Shinsplitter Clan") then
					for i, unitName in ipairs(Units) do
						if (IsMilitaryUnit(unitName)) then
							ChangeProvinceUnitQuantity("Caverns of Chaincolt", unitName, math.ceil(GetPlayerData(1, "UnitTypesCount", unitName) / BattalionMultiplier))
						end
					end
					WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_durstorn = 0
				else
					for i, unitName in ipairs(Units) do
						if (IsMilitaryUnit(unitName)) then
							ChangeProvinceUnitQuantity("Caverns of Chaincolt", unitName, math.ceil(GetPlayerData(0, "UnitTypesCount", unitName) / BattalionMultiplier))
							ChangeProvinceUnitQuantity("Southern Tunnels", unitName, math.ceil(GetPlayerData(1, "UnitTypesCount", unitName) / BattalionMultiplier))
						end
					end
				end
			end
			if (GrandStrategyFaction.Name == "Shinsplitter Clan" and wyr.preferences.AutomaticBattles) then
				GrandStrategyDialog("Closing the Gates", "Again, the Norlunds foiled us. They managed to close the gates to their caves, blocking us outside. We will keep watch - someday they must exit their caves again, and then we will get what is due to us.")
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
			if ("Norlund Clan" == GrandStrategyFaction.Name and wyr.preferences.AutomaticBattles == false) then
				GrandStrategyEventMap = true
				GetMapInfo("maps/nidavellir/northern-wastelands.smp")
				CurrentQuest = "Searching for the Runecrafter"
				RunMap("maps/nidavellir/northern-wastelands.smp")
				GrandStrategyEventMap = false

				for i, unitName in ipairs(Units) do
					if (IsMilitaryUnit(unitName)) then
						ChangeProvinceUnitQuantity("Caverns of Chaincolt", unitName, math.ceil(GetPlayerData(0, "UnitTypesCount", unitName) / BattalionMultiplier))
						ChangeProvinceUnitQuantity("Northern Wastelands", unitName, math.ceil(GetPlayerData(1, "UnitTypesCount", unitName) / BattalionMultiplier))
					end
				end
				for i, unitName in ipairs(Units) do
					if (IsHero(unitName)) then
						if (GetPlayerData(0, "UnitTypesCount", unitName) > 0) then
							WorldMapProvinces.CavernsOfChaincolt.Heroes[string.gsub(unitName, "-", "_")] = 2
						end
					end
				end
				if (GetPlayerData(0, "UnitTypesCount", "unit-hero-thursagan") > 0) then
					WorldMapProvinces.NorthernWastelands.Heroes.unit_hero_thursagan = 0
				end
			elseif ("Norlund Clan" ~= GrandStrategyFaction.Name or wyr.preferences.AutomaticBattles) then
				WorldMapProvinces.NorthernWastelands.Heroes.unit_hero_thursagan = 0
				WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_thursagan = 2
				SetProvinceSettlementBuilding("Northern Wastelands", "unit-dwarven-smithy", false)
				SetProvinceUnitQuantity("Northern Wastelands", "unit-goblin-spearman", GetProvinceUnitQuantity("Northern Wastelands", "unit-goblin-spearman") / 2) -- halve enemies in the northern wastelands
				SetProvinceUnitQuantity("Northern Wastelands", "unit-goblin-archer", GetProvinceUnitQuantity("Northern Wastelands", "unit-goblin-archer") / 2)
				ChangeProvinceUnitQuantity("Caverns of Chaincolt", "unit-dwarven-gryphon-rider", 2) -- two gryphon riders joined from the travel to the Northern Wastelands
			end
			if (GrandStrategyFaction.Name == EventFaction.Name and wyr.preferences.AutomaticBattles) then
				GrandStrategyDialog("Searching for the Runecrafter", "Upon reaching the area where Thursagan's home is located, a few gryphon riders approached us, offering their help in exchange for aiding them to get rid of the local goblins. After finally finding Thursagan, Rugnur convinced the expert smith to return with him and craft the scepter. Now, Durstorn has sent them to gather materials of the high quality necessary for the scepter in the Eastern Mines.")
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
			if ("Norlund Clan" == GrandStrategyFaction.Name and wyr.preferences.AutomaticBattles == false) then
				GrandStrategyEventMap = true
				GetMapInfo("maps/nidavellir/eastern-mines.smp")
				CurrentQuest = "Gathering Materials"
				RunMap("maps/nidavellir/eastern-mines.smp")
				GrandStrategyEventMap = false

				for i, unitName in ipairs(Units) do
					if (IsMilitaryUnit(unitName)) then
						ChangeProvinceUnitQuantity("Caverns of Chaincolt", unitName, math.ceil(GetPlayerData(0, "UnitTypesCount", unitName) / BattalionMultiplier))
						ChangeProvinceUnitQuantity("Eastern Mines", unitName, math.ceil((GetPlayerData(1, "UnitTypesCount", unitName) + GetPlayerData(2, "UnitTypesCount", unitName) + GetPlayerData(3, "UnitTypesCount", unitName)) / BattalionMultiplier))
					end
				end
				for i, unitName in ipairs(Units) do
					if (IsHero(unitName)) then
						if (GetPlayerData(0, "UnitTypesCount", unitName) > 0) then
							WorldMapProvinces.CavernsOfChaincolt.Heroes[string.gsub(unitName, "-", "_")] = 2
						end
					end
				end
			elseif ("Norlund Clan" ~= GrandStrategyFaction.Name or wyr.preferences.AutomaticBattles) then
				ChangeFactionResource("dwarf", "Norlund Clan", "coal", 20000)
--				SetProvinceUnitQuantity("Eastern Mines", "unit-goblin-spearman", GetProvinceUnitQuantity("Eastern Mines", "unit-goblin-spearman") / 2)
--				SetProvinceUnitQuantity("Eastern Mines", "unit-goblin-archer", GetProvinceUnitQuantity("Eastern Mines", "unit-goblin-archer") / 2)
			end
			if (GrandStrategyFaction.Name == EventFaction.Name and wyr.preferences.AutomaticBattles) then
				GrandStrategyDialog("Gathering Materials", "After mining the necessary materials from the mines, Rugnur and his party returned to the clan's home. Unfortunately, the tools available for the task of crafting the scepter proved unsuitable. We will have to to seek the Shorbear Clan, and bargain with them for use of their extraordinary tools. This time, however, Durstorn insists that he lead the expedition.")
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
			if ("Norlund Clan" == GrandStrategyFaction.Name and wyr.preferences.AutomaticBattles == false) then
				GrandStrategyEventMap = true
				GetMapInfo("maps/nidavellir/shorbear-hills.smp")
				CurrentQuest = "Hills of the Shorbear Clan"
				RunMap("maps/nidavellir/shorbear-hills.smp")
				GrandStrategyEventMap = false

				for i, unitName in ipairs(Units) do
					if (IsMilitaryUnit(unitName)) then
						if (unitName ~= "unit-gnomish-recruit") then
							ChangeProvinceUnitQuantity("Caverns of Chaincolt", unitName, math.ceil(GetPlayerData(0, "UnitTypesCount", unitName) / BattalionMultiplier))
							ChangeProvinceUnitQuantity("Southern Tunnels", unitName, math.ceil(GetPlayerData(2, "UnitTypesCount", unitName) / BattalionMultiplier))
							ChangeProvinceUnitQuantity("Shorbear Hills", unitName, math.ceil(GetPlayerData(1, "UnitTypesCount", unitName) / BattalionMultiplier))
						else
							ChangeProvinceUnitQuantity("Caverns of Chaincolt", unitName, math.max(math.ceil((GetPlayerData(0, "UnitTypesCount", unitName) - 1) / BattalionMultiplier), 0))
							ChangeProvinceUnitQuantity("Southern Tunnels", unitName, math.ceil(GetPlayerData(2, "UnitTypesCount", unitName) / BattalionMultiplier))
							ChangeProvinceUnitQuantity("Shorbear Hills", unitName, math.ceil(GetPlayerData(1, "UnitTypesCount", unitName) / BattalionMultiplier))
						end
					end
				end
				for i, unitName in ipairs(Units) do
					if (IsHero(unitName)) then
						if (GetPlayerData(0, "UnitTypesCount", unitName) > 0) then
							WorldMapProvinces.CavernsOfChaincolt.Heroes[string.gsub(unitName, "-", "_")] = 2
						end
					end
				end
				if (GameResult == GameVictory) then
					GrandStrategyEvent(Factions.NorlundClan, GrandStrategyEvents.TheWyrm)
				end
			end
			
			if ("Shinsplitter Clan" == GrandStrategyFaction.Name) then
				GrandStrategyEvent(Factions.ShinsplitterClan, GrandStrategyEvents.HillsOfTheShorbearClanShinsplitterClan)
			end
			if ("Shorbear Clan" == GrandStrategyFaction.Name) then
				GrandStrategyEvent(Factions.ShorbearClan, GrandStrategyEvents.HillsOfTheShorbearClanShorbearClan)
			end
			
			if ((GrandStrategyFaction.Name ~= "Norlund Clan" and GrandStrategyFaction.Name ~= "Shinsplitter Clan" and GrandStrategyFaction.Name ~= "Shorbear Clan") or wyr.preferences.AutomaticBattles) then
				Factions.NorlundClan.Diplomacy.ShorbearClan = "War"
				Factions.ShorbearClan.Diplomacy.NorlundClan = "War"
				ChangeProvinceUnitQuantity("Southern Tunnels", "unit-dwarven-steelclad", -1) -- Kalnar
				ChangeProvinceUnitQuantity("Southern Tunnels", "unit-dwarven-thane", -3) -- Lyndar, Gaenlar and Glinan
				SetProvinceUnitQuantity("Shorbear Hills", "unit-dwarven-axefighter", 0)
				SetProvinceUnitQuantity("Shorbear Hills", "unit-dwarven-thane", 0)
				
				WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_durstorn = 0 -- Durstorn is killed in a conflict between him and other members of the clan
				GrandStrategyEvents.DurstornDies = nil
				ChangeProvinceUnitQuantity("Caverns of Chaincolt", "unit-gnomish-recruit", -1) -- the gnomish envoy returns south
				ChangeProvinceUnitQuantity("Brown Hills", "unit-gnomish-recruit", 1)
	
				AcquireProvince(WorldMapProvinces.ShorbearHills, "Shinsplitter Clan")
				if (GrandStrategyFaction.Name == "Norlund Clan" and wyr.preferences.AutomaticBattles) then
					GrandStrategyDialog("Hills of the Shorbear Clan", "High was the price the Shorbears asked for use of their tools. Durstorn - against the advice of Thursagan - decided to take the tools by force. During the battle the Shinsplitters appeared, quickly making an alliance with the Shorbear chieftain. Nevertheless, we breached the Shorbears' walls and occupied their stronghold, being then besieged by the Shinsplitters.")
					GrandStrategyDialog("Hills of the Shorbear Clan", "A long time afterwards, a desperate Durstorn desired to surrender to the enemy. The others refused, having to kill the enraged chieftain. Rugnur and the rest of the party fled into the caves to the north of the hold, while the gnomish envoy returned to Untersberg to ask for reinforcements.")
				end
				GrandStrategyEvent(Factions.NorlundClan, GrandStrategyEvents.TheWyrm)
			end
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
			if ("Shinsplitter Clan" == GrandStrategyFaction.Name and wyr.preferences.AutomaticBattles == false) then
				GameSettings.Presets[0].Type = PlayerComputer
				GameSettings.Presets[1].Type = PlayerComputer
				GrandStrategyEventMap = true
				GetMapInfo("maps/nidavellir/shorbear-hills.smp")
				CurrentQuest = "Hills of the Shorbear Clan"
				RunMap("maps/nidavellir/shorbear-hills.smp")
				GrandStrategyEventMap = false

				for i, unitName in ipairs(Units) do
					if (IsMilitaryUnit(unitName)) then
						if (unitName ~= "unit-gnomish-recruit") then
							ChangeProvinceUnitQuantity("Caverns of Chaincolt", unitName, math.ceil(GetPlayerData(0, "UnitTypesCount", unitName) / BattalionMultiplier))
							ChangeProvinceUnitQuantity("Southern Tunnels", unitName, math.ceil(GetPlayerData(2, "UnitTypesCount", unitName) / BattalionMultiplier))
							ChangeProvinceUnitQuantity("Shorbear Hills", unitName, math.ceil(GetPlayerData(1, "UnitTypesCount", unitName) / BattalionMultiplier))
						else
							ChangeProvinceUnitQuantity("Caverns of Chaincolt", unitName, math.max(math.ceil((GetPlayerData(0, "UnitTypesCount", unitName) - 1) / BattalionMultiplier), 0))
							ChangeProvinceUnitQuantity("Southern Tunnels", unitName, math.ceil(GetPlayerData(2, "UnitTypesCount", unitName) / BattalionMultiplier))
							ChangeProvinceUnitQuantity("Shorbear Hills", unitName, math.ceil(GetPlayerData(1, "UnitTypesCount", unitName) / BattalionMultiplier))
						end
					end
				end
				for i, unitName in ipairs(Units) do
					if (IsHero(unitName)) then
						if (GetPlayerData(0, "UnitTypesCount", unitName) > 0) then
							WorldMapProvinces.CavernsOfChaincolt.Heroes[string.gsub(unitName, "-", "_")] = 2
						end
					end
				end
				if (GameResult ~= GameVictory and (WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_rugnur == 2 or WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_rugnur_steelclad == 2 or WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_rugnur_thane == 2) and (WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_baglur == 2 or WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_baglur_thane == 2) and WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_thursagan == 2) then
					GrandStrategyEvent(Factions.NorlundClan, GrandStrategyEvents.TheWyrm)
				end
			end
			if (GrandStrategyFaction.Name == EventFaction.Name and wyr.preferences.AutomaticBattles) then
				GrandStrategyDialog("Hills of the Shorbear Clan", "We found the Norlunds attacking the Shorbear Hold. We quickly made an alliance with the Shorbear chieftain - but the Norlunds still managed to defeat the Shorbears, squirreling themselves in their stronghold. Eventually they tried to escape our siege, and unfortunately succeeded in fleeing to the nearby caves.")
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
			if ("Shorbear Clan" == GrandStrategyFaction.Name and wyr.preferences.AutomaticBattles == false) then
				GameSettings.Presets[0].Type = PlayerComputer
				GameSettings.Presets[2].Type = PlayerComputer
				GrandStrategyEventMap = true
				GetMapInfo("maps/nidavellir/shorbear-hills.smp")
				CurrentQuest = "Hills of the Shorbear Clan"
				RunMap("maps/nidavellir/shorbear-hills.smp")
				GrandStrategyEventMap = false

				for i, unitName in ipairs(Units) do
					if (IsMilitaryUnit(unitName)) then
						if (unitName ~= "unit-gnomish-recruit") then
							ChangeProvinceUnitQuantity("Caverns of Chaincolt", unitName, math.ceil(GetPlayerData(0, "UnitTypesCount", unitName) / BattalionMultiplier))
							ChangeProvinceUnitQuantity("Southern Tunnels", unitName, math.ceil(GetPlayerData(2, "UnitTypesCount", unitName) / BattalionMultiplier))
							ChangeProvinceUnitQuantity("Shorbear Hills", unitName, math.ceil(GetPlayerData(1, "UnitTypesCount", unitName) / BattalionMultiplier))
						else
							ChangeProvinceUnitQuantity("Caverns of Chaincolt", unitName, math.max(math.ceil((GetPlayerData(0, "UnitTypesCount", unitName) - 1) / BattalionMultiplier), 0))
							ChangeProvinceUnitQuantity("Southern Tunnels", unitName, math.ceil(GetPlayerData(2, "UnitTypesCount", unitName) / BattalionMultiplier))
							ChangeProvinceUnitQuantity("Shorbear Hills", unitName, math.ceil(GetPlayerData(1, "UnitTypesCount", unitName) / BattalionMultiplier))
						end
					end
				end
				for i, unitName in ipairs(Units) do
					if (IsHero(unitName)) then
						if (GetPlayerData(0, "UnitTypesCount", unitName) > 0) then
							WorldMapProvinces.CavernsOfChaincolt.Heroes[string.gsub(unitName, "-", "_")] = 2
						end
					end
				end
			end
			if (GrandStrategyFaction.Name == EventFaction.Name and wyr.preferences.AutomaticBattles) then
				GrandStrategyDialog("Hills of the Shorbear Clan", "The Norlunds came to bargain the use of our tools to craft a scepter. We offered them a price - they claimed it was too high, and attacked us! The battle raged, and our chieftain Glonoin fell. The Norlunds then occupied our stronghold, leaving our people in subjection...")
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
			if ("Norlund Clan" == GrandStrategyFaction.Name and wyr.preferences.AutomaticBattles == false) then
				ChangeProvinceUnitQuantity("Southern Tunnels", "unit-surghan-mercenary-steelclad", 8) -- Surghan mercenaries hired by the Shinsplitters
				ChangeFactionResource("dwarf", "Shinsplitter Clan", "gold", - (GetUnitTypeData("unit-surghan-mercenary-steelclad", "Costs", "gold") * 2))
				MercenaryGroups.unit_surghan_mercenary_steelclad = nil
			
				GrandStrategyEventMap = true
				GetMapInfo("maps/nidavellir/svafnirs-lair.smp")
				CurrentQuest = "The Wyrm"
				RunMap("maps/nidavellir/svafnirs-lair.smp")
				GrandStrategyEventMap = false

				for i, unitName in ipairs(Units) do
					if (IsMilitaryUnit(unitName)) then
						if (GetUnitTypeData(unitName, "Class") ~= "infantry" and GetUnitTypeData(unitName, "Class") ~= "shooter") then
							ChangeProvinceUnitQuantity("Caverns of Chaincolt", unitName, math.ceil(GetPlayerData(0, "UnitTypesCount", unitName) / BattalionMultiplier))
							ChangeProvinceUnitQuantity("Southern Tunnels", unitName, math.ceil(GetPlayerData(1, "UnitTypesCount", unitName) / BattalionMultiplier))
						end
					end
				end
				for i, unitName in ipairs(Units) do
					if (IsHero(unitName)) then
						if (GetPlayerData(0, "UnitTypesCount", unitName) > 0) then
							WorldMapProvinces.CavernsOfChaincolt.Heroes[string.gsub(unitName, "-", "_")] = 2
						end
					end
				end
				if (GameResult == GameVictory) then
					ChangeFactionResource("dwarf", "Norlund Clan", "coal", -20000) -- Scepter of Fire crafted
					GrandStrategyEvent(Factions.NorlundClan, GrandStrategyEvents.CavernsOfFlame)
				end
			end
			
			if ("Shinsplitter Clan" == GrandStrategyFaction.Name) then
				GrandStrategyEvent(Factions.ShinsplitterClan, GrandStrategyEvents.TheWyrmShinsplitterClan)
			end
				
			if ((GrandStrategyFaction.Name ~= "Norlund Clan" and GrandStrategyFaction.Name ~= "Shinsplitter Clan") or wyr.preferences.AutomaticBattles) then
				ChangeProvinceUnitQuantity("Southern Tunnels", "unit-surghan-mercenary-steelclad", 8) -- Surghan mercenaries hired by the Shinsplitters
				ChangeFactionResource("dwarf", "Shinsplitter Clan", "gold", - (GetUnitTypeData("unit-surghan-mercenary-steelclad", "Costs", "gold") * 2))
				MercenaryGroups.unit_surghan_mercenary_steelclad = nil
			
				ChangeProvinceUnitQuantity("Southern Tunnels", "unit-dwarven-thane", -1) -- Crintil
				ChangeProvinceUnitQuantity("Southern Tunnels", "unit-surghan-mercenary-steelclad", -4)
				
				ChangeFactionResource("dwarf", "Norlund Clan", "coal", -20000) -- Scepter of Fire crafted
				
				if (GrandStrategyFaction.Name == "Norlund Clan" and wyr.preferences.AutomaticBattles) then
					GrandStrategyDialog("The Wyrm", "The Shinsplitters followed us deep into the caves we had entered, bring Surghan mercenaries with them. Rugnur and his party ran as fast as they could, escaping the clutches of Svafnir and finding a lava-heated forge. As the party fought off incoming attacks, Thursagan finally crafted the Scepter of Fire.")
				end
			
				GrandStrategyEvent(Factions.NorlundClan, GrandStrategyEvents.CavernsOfFlame)
			end
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
			if ("Shinsplitter Clan" == GrandStrategyFaction.Name and wyr.preferences.AutomaticBattles == false) then
				GrandStrategyEventMap = true
				GameSettings.Presets[0].Type = PlayerComputer
				GetMapInfo("maps/nidavellir/svafnirs-lair.smp")
				CurrentQuest = "The Wyrm"
				RunMap("maps/nidavellir/svafnirs-lair.smp")
				GrandStrategyEventMap = false

				for i, unitName in ipairs(Units) do
					if (IsMilitaryUnit(unitName)) then
						if (GetUnitTypeData(unitName, "Class") ~= "infantry" and GetUnitTypeData(unitName, "Class") ~= "shooter") then
							ChangeProvinceUnitQuantity("Caverns of Chaincolt", unitName, math.ceil(GetPlayerData(0, "UnitTypesCount", unitName) / BattalionMultiplier))
							ChangeProvinceUnitQuantity("Southern Tunnels", unitName, math.ceil(GetPlayerData(1, "UnitTypesCount", unitName) / BattalionMultiplier))
						end
					end
				end
				for i, unitName in ipairs(Units) do
					if (IsHero(unitName)) then
						if (GetPlayerData(0, "UnitTypesCount", unitName) > 0) then
							WorldMapProvinces.CavernsOfChaincolt.Heroes[string.gsub(unitName, "-", "_")] = 2
						end
					end
				end
				if (GameResult ~= GameVictory and (WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_rugnur == 2 or WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_rugnur_steelclad == 2 or WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_rugnur_thane == 2) and (WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_baglur == 2 or WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_baglur_thane == 2) and WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_thursagan) then
					ChangeFactionResource("dwarf", "Norlund Clan", "coal", -20000) -- Scepter of Fire crafted
					WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_durstorn = 0
					GrandStrategyEvent(Factions.NorlundClan, GrandStrategyEvents.CavernsOfFlame)
				end
			end
			if (GrandStrategyFaction.Name == EventFaction.Name and wyr.preferences.AutomaticBattles) then
				GrandStrategyDialog("The Wyrm", "We followed the Norlunds into the caves, this time bringing Surghan mercenaries with us. As we tried to catch the running Norlunds, we came upon an enormous wyrm. After this delay, we again set to pursue the Norlunds, but they skillfully escaped deeper into the tunnels.")
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
			if ("Norlund Clan" == GrandStrategyFaction.Name and wyr.preferences.AutomaticBattles == false) then
				GrandStrategyEventMap = true
				GetMapInfo("maps/nidavellir/caverns-of-flame.smp")
				CurrentQuest = "Caverns of Flame"
				RunMap("maps/nidavellir/caverns-of-flame.smp")
				GrandStrategyEventMap = false

				for i, unitName in ipairs(Units) do
					if (IsMilitaryUnit(unitName)) then
						ChangeProvinceUnitQuantity("Caverns of Chaincolt", unitName, math.ceil(GetPlayerData(0, "UnitTypesCount", unitName) / BattalionMultiplier))
						ChangeProvinceUnitQuantity("Southern Tunnels", unitName, math.ceil(GetPlayerData(1, "UnitTypesCount", unitName) / BattalionMultiplier))
					end
				end
			end
				
			if ("Shinsplitter Clan" == GrandStrategyFaction.Name) then
				GrandStrategyEvent(Factions.ShinsplitterClan, GrandStrategyEvents.CavernsOfFlameShinsplitterClan)
			end
				
			if ((GrandStrategyFaction.Name ~= "Norlund Clan" and GrandStrategyFaction.Name ~= "Shinsplitter Clan") or wyr.preferences.AutomaticBattles) then
				SetProvinceUnitQuantity("Southern Tunnels", "unit-dwarven-thane", 0)
				SetProvinceUnitQuantity("Southern Tunnels", "unit-surghan-mercenary-steelclad", 0)
				
				WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_rugnur = 0 -- Rugnur, Baglur and Thursagan die at the Caverns of Flame
				WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_rugnur_steelclad = 0
				WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_rugnur_thane = 0
				GrandStrategyEvents.RugnurDies = nil
				WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_baglur = 0
				WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_baglur_thane = 0
				GrandStrategyEvents.BaglurDies = nil
				WorldMapProvinces.CavernsOfChaincolt.Heroes.unit_hero_thursagan = 0
				GrandStrategyEvents.ThursaganDies = nil

				ChangeProvinceUnitQuantity("Caverns of Chaincolt", "unit-dwarven-gryphon-rider", -2) -- the dwarven gryphon riders return to the Northern Wastelands

				ChangeFactionResource("dwarf", "Norlund Clan", "gold", 2500) -- payment for the crafting of the Scepter
				ChangeFactionResource("gnome", "Untersberg", "gold", -2500) -- payment for the crafting of the Scepter
				AcquireProvince(WorldMapProvinces.ShorbearHills, "Norlund Clan") -- Shorbear Hold ceded by the Shinsplitters to the Norlunds and peace established
				Factions.NorlundClan.Diplomacy["ShinsplitterClan"] = "Peace"
				Factions.ShinsplitterClan.Diplomacy["NorlundClan"] = "Peace"
				
				ChangeFactionResource("dwarf", "Norlund Clan", "prestige", 100) -- a lot of prestige for completing the legendary scepter
				
				if (GrandStrategyFaction.Name == "Norlund Clan" and wyr.preferences.AutomaticBattles) then
					GrandStrategyDialog("Caverns of Flame", "After deflecting a number of goblins, Rugnur's party came upon some ancient mechanism in the depth of the tunnels. It somehow activated a dormant volcano! The Shinsplitters who had followed tried to escape, but too late - Norlund, Shinsplitter and goblin alike perished that day.")
					GrandStrategyDialog("Caverns of Flame", "The lone survivor was a Norlund gryphon rider, who flew fast and high as the volcano erupted. He then went to Untersberg to inform the gnomish king of what had happened, arriving just as the gnomish envoy did. Together, they relayed the sad news to the king, that Rugnur and his companions did fulfill their promise to craft the Scepter, but died tragically in the Caverns of Flame.")
					GrandStrategyDialog("Caverns of Flame", "Pypo I thought it little wise to send forces to uncover the Scepter, with goblins swarming the region, and given that the volcano might still be too unstable. Aged and nearing the end of his life himself, he did not have the energy to undertake such an enterprise either. All he could do was sending the rest of the payment to the remnants of the Norlund Clan, as the promise to craft the Scepter was indeed fulfilled.")
					GrandStrategyDialog("Caverns of Flame", "The Shinsplitters, depleted by war and wary of the forces the Norlunds would be able to muster with the gnomish silver, accepted a peace, ceding the Shorbear Hold back to the Norlunds. The Scepter sat in the caves of the Northlands, unfound but undestroyed, moved around by goblins who never understood its true meaning.")
					GrandStrategyDialog("Caverns of Flame", "Legends grew up around it, and around its makers - Thursagan, most brilliant of the dwarven runesmiths, and Rugnur, one of the greatest dwarven heroes.")
				end
			end
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
			if ("Shinsplitter Clan" == GrandStrategyFaction.Name and wyr.preferences.AutomaticBattles == false) then
				GrandStrategyEventMap = true
				GameSettings.Presets[0].Type = PlayerComputer
				GetMapInfo("maps/nidavellir/caverns-of-flame.smp")
				CurrentQuest = "Caverns of Flame"
				RunMap("maps/nidavellir/caverns-of-flame.smp")
				GrandStrategyEventMap = false

				for i, unitName in ipairs(Units) do
					if (IsMilitaryUnit(unitName)) then
						ChangeProvinceUnitQuantity("Caverns of Chaincolt", unitName, math.ceil(GetPlayerData(0, "UnitTypesCount", unitName) / BattalionMultiplier))
						ChangeProvinceUnitQuantity("Southern Tunnels", unitName, math.ceil(GetPlayerData(1, "UnitTypesCount", unitName) / BattalionMultiplier))
					end
				end
			end
			if (GrandStrategyFaction.Name == EventFaction.Name and wyr.preferences.AutomaticBattles) then
				GrandStrategyDialog("Caverns of Flame", "We reached the goblins' tunnels. The Norlunds were somewhere nearby, still alive. Unexplicably, a dormant volcano began to erupt, obliterating our valiant kin!")
				GrandStrategyDialog("Caverns of Flame", "The Norlunds seem to have done well in the eyes of the gnomish king, for he sent silver caravans with the rest of the payment to them. With our forces depleted and the Norlunds possessing the financial capability of mustering more soldiers, we had no choice but to sue for peace - resulting in our cession of the Shorbear Hold to the Norlund Clan.")
			end
		end}
	},
	RugnurDies = {
		Name = "Rugnur Dies",
		Description = "The brave Rugnur has died of natural causes.",
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
		Conditions = function(s)
			if (
				GetFactionProvinceCount(Factions.Knalga) == 0
				and EventFaction.Civilization == "dwarf"
				and GetFactionData(EventFaction.Civilization, EventFaction.Name, "Type") == "tribe"
				and GetProvinceOwner("Southern Tunnels") == EventFaction.Name
				and FactionHasTechnologyType(EventFaction, "writing") -- becoming a polity requires writing
				and FactionHasTechnologyType(EventFaction, "masonry") -- becoming a polity requires masonry
			) then
				return true
			else
				return false
			end
		end,
		Persistent = true, -- can happen multiple times, so that tribes that conquer a lordship can become a polity
		Options = {"~!OK"},
		OptionEffects = {function(s)
			FormFaction(EventFaction, Factions.Knalga)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 10)
		end},
		OptionTooltips = {"Our faction becomes Knalga, +10 Prestige"}
	},
	TheFoundingOfKalKartha = {
		Name = "The Founding of Kal Kartha",
		Description = "Our clan has expanded through a large territory, and our people have become more and more settled down. Now it is high time for us to to found a new realm, the lordship of Kal Kartha!",
		Conditions = function(s)
			if (
				GetFactionProvinceCount(Factions.Knalga) == 0
				and EventFaction.Civilization == "dwarf"
				and GetFactionData(EventFaction.Civilization, EventFaction.Name, "Type") == "tribe"
				and GetProvinceOwner("Kal Kartha") == EventFaction.Name
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
			FormFaction(EventFaction, Factions.KalKartha)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 10)
		end},
		OptionTooltips = {"Our faction becomes Kal Kartha, +10 Prestige"}
	},
	TheFoundingOfLyr = {
		Name = "The Founding of Lyr",
		Description = "Our clan has expanded through a large territory, and our people have become more and more settled down. Now it is high time for us to to found a new realm, the lordship of Lyr!",
		Civilization = "dwarf",
		FactionType = "tribe",
		Conditions = function(s)
			if (
				GetFactionProvinceCount(Factions.Lyr) == 0
				and EventFaction.Civilization == "dwarf"
				and GetFactionData(EventFaction.Civilization, EventFaction.Name, "Type") == "tribe"
				and GetProvinceOwner("Lyr") == EventFaction.Name
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
			FormFaction(EventFaction, Factions.Lyr)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 10)
		end},
		OptionTooltips = {"Our faction becomes Lyr, +10 Prestige"}
	},
	GoblinLooters = {
		Name = "Goblin Looters",
		Description = "A band of goblin thieves has been looting the farms in PROVINCE_NAME. We have obtained information on where their hideout is... what shall we do?",
		Conditions = function(s)
			for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
				if (ProvinceHasBuildingClass(WorldMapProvinces[province_key].Name, "town-hall") and ProvinceHasBuildingClass(WorldMapProvinces[province_key].Name, "barracks") == false and SyncRand(100) < 1) then -- event only fires if there is a province which is settled but does not have proper defenses
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
					if (IsMilitaryUnit(unitName)) then
						if (GetProvinceUnitQuantity(EventProvince.Name, unitName) > 0) then
							return true
						end
					elseif (IsHero(unitName)) then
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
				if (EventFaction.Name == GrandStrategyFaction.Name and wyr.preferences.AutomaticBattles == false) then
					GrandStrategyEventMap = true
					GetMapInfo("maps/nidavellir/goblin-thief-hideout.smp")
					RunMap("maps/nidavellir/goblin-thief-hideout.smp")
					GrandStrategyEventMap = false

					for i, unitName in ipairs(Units) do
						if (IsMilitaryUnit(unitName)) then
							ChangeProvinceUnitQuantity(EventProvince.Name, unitName, math.ceil(GetPlayerData(0, "UnitTypesCount", unitName) / BattalionMultiplier))
						end
					end
					for i, unitName in ipairs(Units) do
						if (IsHero(unitName)) then
							if (GetPlayerData(0, "UnitTypesCount", unitName) > 0) then
								EventProvince.Heroes[string.gsub(unitName, "-", "_")] = 2
							end
						end
					end
					
					if (GameResult == GameVictory) then
						ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
					elseif (GameResult == GameDefeat) then -- if lost the battle, lose the gold
						ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "gold", -500)
						ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", -1)
					end
				else
					ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
				end
			end,
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "gold", -500)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", -2)
			end
		},
		OptionTooltips = {"Fight the goblin thieves", "-500 Gold, -1 Prestige"}
	}
}
	
AddEventTable(NidavellirEvents)

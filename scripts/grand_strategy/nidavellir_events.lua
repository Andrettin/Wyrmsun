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
	ARockyHome = {
		Name = "A Rocky Home",
		Description = "Our clan, led by Modsognir, has arrived in Svarinshaug seeking a new home. Beset by hostile natural forces on all sides, can we survive our first winter?",
		Heroes = {
			Modsognir = true,
			Durin = true
		},
		Conditions = function(s)
			if (
				EventFaction.Name == "brising-clan"
			) then
				return true
			else
				return false
			end
		end,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				if (GrandStrategyFaction ~= nil and GrandStrategyFaction.Name == "brising-clan" and wyr.preferences.AutomaticBattles == false) then
					SetProvinceHero("Svarinshaug", "Modsognir", 2)
					SetProvinceHero("Svarinshaug", "Durin", 2)

					GrandStrategyEventMap = true
					GetMapInfo("maps/nidavellir/svarinshaug.smp")
					SetCurrentQuest("a-rocky-home")
					RunMap("maps/nidavellir/svarinshaug.smp")
					GrandStrategyEventMap = false
					
					RestoreScenarioUnitsToProvince({ProvinceName = "Svarinshaug", FactionName = "brising-clan", Heroes = {"Modsognir", "Durin"}})
					
					if (GameResult == GameVictory) then
						ChangeFactionResource("dwarf", "brising-clan", "prestige", 5) -- prestige for successfully settling Svarinshaug
						ChangeFactionResource("dwarf", "brising-clan", "gold", 800) -- food gained from the yales
						ChangeFactionResource("dwarf", "brising-clan", "lumber", 800) -- lumber gained from the mission
						ChangeFactionResource("dwarf", "brising-clan", "stone", 400) -- stone gained from the mission
					elseif (GameResult == GameDefeat) then
						AcquireProvince(WorldMapProvinces.Svarinshaug, "")
					end
				elseif (GrandStrategyFaction ~= nil and (GrandStrategyFaction.Name ~= "brising-clan" or wyr.preferences.AutomaticBattles)) then
					ChangeFactionResource("dwarf", "brising-clan", "prestige", 5) -- prestige for successfully settling Svarinshaug
					ChangeFactionResource("dwarf", "brising-clan", "gold", 800) -- food gained from the yales
					ChangeFactionResource("dwarf", "brising-clan", "lumber", 800) -- lumber gained from the mission
					ChangeFactionResource("dwarf", "brising-clan", "stone", 400) -- stone gained from the mission
					if (GrandStrategyFaction.Name == EventFaction.Name) then
						CenterGrandStrategyMapOnTile(WorldMapProvinces.Svarinshaug.SettlementLocation[1], WorldMapProvinces.Svarinshaug.SettlementLocation[2])
						GenericDialog("A Rocky Home", "We have successfully hunted enough yales and gathered enough lumber and stone to survive our early days in Svarinshaug.")
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
			Modsognir = true,
			Durin = true
		},
		RequiredEvents = {
			ARockyHome = true
		},
		Conditions = function(s)
			if (
				EventFaction.Name == "brising-clan"
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
				if (GrandStrategyFaction ~= nil and GrandStrategyFaction.Name == "brising-clan" and wyr.preferences.AutomaticBattles == false) then
					SetProvinceHero("Svarinshaug", "Durin", 2)

					GrandStrategyEventMap = true
					GetMapInfo("maps/nidavellir/fjalars-and-galars-hall.smp")
					SetCurrentQuest("the-mead-of-wisdom")
					RunMap("maps/nidavellir/fjalars-and-galars-hall.smp")
					GrandStrategyEventMap = false
					
					RestoreScenarioUnitsToProvince({ProvinceName = "Svarinshaug", FactionName = "brising-clan", Heroes = {"Durin"}})
					
					if (GameResult == GameVictory) then
						ChangeFactionResource("dwarf", "brising-clan", "prestige", 10) -- prestige for punishing the evil doers and recovering the sage's remains
					end
				elseif (GrandStrategyFaction ~= nil and (GrandStrategyFaction.Name ~= "brising-clan" or wyr.preferences.AutomaticBattles)) then
					ChangeFactionResource("dwarf", "brising-clan", "prestige", 10) -- prestige for punishing the evil doers and recovering the sage's remains
					if (GrandStrategyFaction.Name == EventFaction.Name) then
						GenericDialog("The Mead of Wisdom", "Fjalar and Galar had brewn Thjodrorir's remains into mead, gloating that drink it had made them wiser. Durin survived the encounter with them, and brought the mead to be buried in Thjodrorir's tomb.")
					end
				end
				KillGrandStrategyHero("Thjodrorir")
			end,
			function(s)
				ChangeFactionResource("dwarf", "brising-clan", "prestige", -10) -- doing nothing in such a situation would be dishonorable
				KillGrandStrategyHero("Thjodrorir")
			end
		},
		OptionTooltips = {"", "-10 Prestige"}
	},
	TheTreasuresOfSvarinshaug = {
		Name = "The Treasures of Svarinshaug",
		Description = "The dwarven smiths Brokk and Eitri are competing with the renowned sons of Ivaldi to craft the best artifacts for Modsognir. To obtain the necessary high quality ores will be perilous, however, as dangerous creatures abound in the deep mines where they lay...",
		Heroes = {
			Modsognir = true,
			Durin = true
		},
		RequiredEvents = {
			TheMeadOfWisdom = true
		},
		Conditions = function(s)
			if (
				EventFaction.Name == "brising-clan"
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
				if (GrandStrategyFaction ~= nil and GrandStrategyFaction.Name == "brising-clan" and wyr.preferences.AutomaticBattles == false) then
					GrandStrategyEventMap = true
					GetMapInfo("maps/nidavellir/eastern-mines.smp")
					SetCurrentQuest("the-treasures-of-svarinshaug")
					RunMap("maps/nidavellir/eastern-mines.smp")
					GrandStrategyEventMap = false
					
					RestoreScenarioUnitsToProvince({ProvinceName = "Svarinshaug", FactionName = "brising-clan"})
					if (GameResult == GameVictory) then
						ChangeFactionResource("dwarf", "brising-clan", "prestige", 30) -- prestige for obtaining the wondrous artifacts
						ChangeFactionResource("dwarf", "brising-clan", "gold", 1000) -- gold value of Draupnir
					end
				elseif (GrandStrategyFaction ~= nil and (GrandStrategyFaction.Name ~= "brising-clan" or wyr.preferences.AutomaticBattles)) then
					ChangeFactionResource("dwarf", "brising-clan", "prestige", 30) -- prestige for obtaining the wondrous artifacts
					ChangeFactionResource("dwarf", "brising-clan", "gold", 1000) -- gold value of Draupnir
					if (GrandStrategyFaction.Name == EventFaction.Name) then
						GenericDialog("The Treasures of Svarinshaug", "Having gathered the necessary resources, Brokk and Eitri crafted their gifts for Modsognir. The sons of Ivaldi had presented the chieftain with a magnificent throwing spear, Gungnir, and a sleek ship, Skidbladnir. But Modsognir judged Brokk and Eitri's artifacts to be the better ones: they gave him a solid gold arm-ring, Draupnir, and a mighty hammer, Mjollnir.")
					end
				end
			end
		},
		OptionTooltips = {""}
	},
	TheNecklaceOfTheBrisings = {
		Name = "The Necklace of the Brisings",
		Description = "The necklace made for Modsognir's wife by a group of four dwarven smiths has been stolen! The culprits, a band of local dwarven thieves, sneaked away with the necklace last night, going back to their hideout. We must avenge this dishonor to our clan, and recover the necklace from these bandits!",
		Heroes = {
			Modsognir = true,
			Durin = true
		},
		RequiredEvents = {
			TheTreasuresOfSvarinshaug = true
		},
		Conditions = function(s)
			if (
				EventFaction.Name == "brising-clan"
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
				if (GrandStrategyFaction ~= nil and GrandStrategyFaction.Name == "brising-clan" and wyr.preferences.AutomaticBattles == false) then
					SetProvinceHero("Svarinshaug", "Modsognir", 2)
					SetProvinceHero("Svarinshaug", "Durin", 2)

					GrandStrategyEventMap = true
					GetMapInfo("maps/nidavellir/aurvang.smp")
					SetCurrentQuest("the-necklace-of-the-brisings")
					RunMap("maps/nidavellir/aurvang.smp")
					GrandStrategyEventMap = false
					
					RestoreScenarioUnitsToProvince({ProvinceName = "Svarinshaug", FactionName = "brising-clan", Heroes = {"Modsognir", "Durin"}})
					
					if (GameResult == GameVictory) then
						ChangeFactionResource("dwarf", "brising-clan", "prestige", 5) -- prestige for rooting out the bandits
						ChangeFactionResource("dwarf", "brising-clan", "gold", 1000) -- gold value of the Necklace
						-- place some goblins in Aurvang after the dwarven bandits are gone
						SetProvinceUnitQuantity("Aurvang", "unit-goblin-spearman", 6)
						SetProvinceUnitQuantity("Aurvang", "unit-goblin-archer", 3)
					end
				elseif (GrandStrategyFaction ~= nil and (GrandStrategyFaction.Name ~= "brising-clan" or wyr.preferences.AutomaticBattles)) then
					SetProvinceUnitQuantity("Aurvang", "unit-dwarven-steelclad", 0) -- bandits rooted out
					SetProvinceUnitQuantity("Aurvang", "unit-dwarven-axefighter", 0)
					ChangeFactionResource("dwarf", "brising-clan", "prestige", 5) -- prestige for rooting out the bandits
					ChangeFactionResource("dwarf", "brising-clan", "gold", 1000) -- gold value of the Necklace
					
					-- place some goblins in Aurvang after the dwarven bandits are gone
					SetProvinceUnitQuantity("Aurvang", "unit-goblin-spearman", 6)
					SetProvinceUnitQuantity("Aurvang", "unit-goblin-archer", 3)
					
					if (GrandStrategyFaction.Name == EventFaction.Name) then
						GenericDialog("The Necklace of the Brisings", "After rooting out the bandits in Aurvang, Modsognir recovered the necklace.")
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
			Modsognir = true,
			Durin = true
		},
		RequiredEvents = {
			TheNecklaceOfTheBrisings = true
		},
		Conditions = function(s)
			if (
				EventFaction.Name == "brising-clan"
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
				if (GrandStrategyFaction ~= nil and GrandStrategyFaction.Name == "brising-clan" and wyr.preferences.AutomaticBattles == false) then
					SetProvinceHero("Svarinshaug", "Modsognir", 2)
					SetProvinceHero("Svarinshaug", "Durin", 2)
					
					GrandStrategyEventMap = true
					GetMapInfo(GetQuestData("the-binding-of-grafvitnir", "Map"))
					SetCurrentQuest("the-binding-of-grafvitnir")
					RunMap(GetQuestData("the-binding-of-grafvitnir", "Map"))
					GrandStrategyEventMap = false
					
					RestoreScenarioUnitsToProvince({ProvinceName = "Svarinshaug", FactionName = "brising-clan", Heroes = {"Modsognir", "Durin"}})
					
					if (GameResult == GameVictory) then
						ChangeFactionResource("dwarf", "brising-clan", "prestige", 25) -- prestige for chaining the beast
					end
				elseif (GrandStrategyFaction ~= nil and (GrandStrategyFaction.Name ~= "brising-clan" or wyr.preferences.AutomaticBattles)) then
					ChangeFactionResource("dwarf", "brising-clan", "prestige", 25) -- prestige for chaining the beast
					if (GrandStrategyFaction.Name == EventFaction.Name) then
						GenericDialog("The Binding of Grafvitnir", "Modsognir successfully entered Grafvitnir's lair and chained the beast. With much effort, the enormous Grafvitnir was brought to Svarinshaug by the dwarves. The monster's fetters were bound to the walls of a nearby cave, and the entrance destroyed. Little is known of what ultimately became of the wyrm. What is certain is that the creature never bothered our clan again.")
					end
				end
			end
		},
		OptionTooltips = {""}
	},
	TheSagesDeparture = {
		Name = "The Sage's Departure",
		Description = "Discontent with Durstorn's leadership, Thursagan has decided to leave us and move to the far north.",
		Civilization = "dwarf",
		Faction = "norlund_clan",
		Conditions = function(s)
			if (SyncRand(100) < 10 and FactionHasHero(EventFaction.Civilization, EventFaction.Name, "Thursagan") and FactionHasHero(EventFaction.Civilization, EventFaction.Name, "Durstorn") and GetProvinceOwner("Northern Wastelands") ~= "norlund-clan") then
				return true
			else
				return false
			end
		end,
		MaxYear = 40,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				SetProvinceHero("Northern Wastelands", "Thursagan", 2)
			end
		},
		OptionTooltips = {"Thursagan leaves our clan's territory"}
	},
	StrikeABargain = {
		Name = "Strike a Bargain?",
		Description = "The gnomish king Pypo I has arrived with an army behind him near a small border outpost of ours in the Chaincolt Foothills, which is under the charge of a young dwarf named Rugnur.",
		Civilization = "dwarf",
		Faction = "norlund_clan",
		Conditions = function(s)
			if (
				GetProvinceOwner("Caverns of Chaincolt") == EventFaction.Name
				and GetProvinceHero("Caverns of Chaincolt", "Rugnur") == 2 and GetProvinceHero("Caverns of Chaincolt", "Baglur") == 2 and FactionHasHero(EventFaction.Civilization, EventFaction.Name, "Durstorn")
				and GetFactionProvinceCount(Factions.untersberg) > 0
				and GetFactionProvinceCount(Factions.shinsplitter_clan) > 0
				and GetFactionProvinceCount(Factions.shorbear_clan) > 0
				and FactionHasBorderWith(Factions.norlund_clan, Factions.shinsplitter_clan)
				and FactionHasBorderWith(Factions.norlund_clan, Factions.shorbear_clan)
			) then
				return true
			else
				return false
			end
		end,
		Options = {"~!OK"},
		OptionEffects = {function(s)
			if ("norlund-clan" == GrandStrategyFaction.Name and wyr.preferences.AutomaticBattles == false) then
				GameSettings.Presets[1].Type = PlayerComputer
				GameSettings.Presets[2].Type = PlayerComputer

				GrandStrategyEventMap = true
				GetMapInfo("maps/nidavellir/chaincolt-foothills.smp")
				SetCurrentQuest("a-bargain-is-struck")
				RunMap("maps/nidavellir/chaincolt-foothills.smp")
				GrandStrategyEventMap = false

				RestoreScenarioUnitsToProvince({ProvinceName = "Caverns of Chaincolt", FactionName = "norlund-clan", Heroes = {"Rugnur"}})
				RestoreScenarioUnitsToProvince({ProvinceName = "Untersberg", FactionName = "untersberg"})
				RestoreScenarioUnitsToProvince({ProvinceName = "Southern Tunnels", FactionName = "shinsplitter-clan"})
			end
			if (("norlund-clan" ~= GrandStrategyFaction.Name or wyr.preferences.AutomaticBattles) and ("shinsplitter-clan" ~= GrandStrategyFaction.Name or wyr.preferences.AutomaticBattles)) then -- if neither Norlund Clan nor Shinsplitter Clan are played by the human player, then enact the effects of the bargain between the gnomes and Rugnur successfully being struck
				SetFactionDiplomacyState("dwarf", "norlund-clan", "dwarf", "shinsplitter-clan", "war") -- begin war between Norlund Clan and Shinsplitter Clan
				ChangeFactionResource("gnome", "untersberg", "gold", -2500) -- decrease gnomish treasury by 5000 silver (considering for our purposes silver to be worth half as much as gold)
				ChangeFactionResource("dwarf", "norlund-clan", "gold", 2500) -- 5000 silver, and for our purposes silver is considered to be worth half of what gold is
				ChangeProvinceUnitQuantity("Caverns of Chaincolt", "unit-gnomish-duelist", 1)
				ChangeProvinceUnitQuantity("Southern Tunnels", "unit-dwarven-steelclad", -1)
			end
			if (GrandStrategyFaction.Name == "norlund-clan" and wyr.preferences.AutomaticBattles) then
				GenericDialog("A Bargain is Struck", "Pypo I has proposed to Rugnur that our clan craft a wondrous scepter for him, encrusted with the gnomish Ruby of Fire. Rugnur agreed for the price of 10,000 pieces of silver, half to be paid upfront, and half when the artifact were completed. The Shinsplitter clan tried to intercept the silver caravans and the gnomish envoy who carried the ruby, but Rugnur made sure they arrived at the outpost safely.")
			end
			GrandStrategyEvent(Factions.shinsplitter_clan, GrandStrategyEvents.ABargainIsStruckShinsplitterClan)
		end}
	},
	ABargainIsStruckShinsplitterClan = {
		Name = "A Bargain is Struck?",
		Description = "The gnomish king Pypo I has arrived with an army behind him near a small border outpost owned by the Norlund clan in the Chaincolt Foothills. He is sending them silver caravans as payment for the crafting of an artifact... We should send a few clansfolk there to exact a toll on the passing caravans, since the road the gnomes are travelling through ancestrally belongs to us.",
		Civilization = "dwarf",
		Faction = "shinsplitter_clan",
		Provinces = {
			SouthernTunnels = true
		},
		TriggeredOnly = true,
		Options = {"~!OK"},
		OptionEffects = {function(s)
			if ("shinsplitter-clan" == GrandStrategyFaction.Name and wyr.preferences.AutomaticBattles == false) then
				GameSettings.Presets[0].Type = PlayerComputer
				GameSettings.Presets[1].Type = PlayerComputer

				GrandStrategyEventMap = true
				GetMapInfo("maps/nidavellir/chaincolt-foothills.smp")
				SetCurrentQuest("a-bargain-is-struck")
				RunMap("maps/nidavellir/chaincolt-foothills.smp")
				GrandStrategyEventMap = false

				RestoreScenarioUnitsToProvince({ProvinceName = "Caverns of Chaincolt", FactionName = "norlund-clan", Heroes = {"Rugnur"}})
				RestoreScenarioUnitsToProvince({ProvinceName = "Untersberg", FactionName = "untersberg"})
				RestoreScenarioUnitsToProvince({ProvinceName = "Southern Tunnels", FactionName = "shinsplitter-clan"})
			end
			if (GrandStrategyFaction.Name == "shinsplitter-clan" and wyr.preferences.AutomaticBattles) then
				GenericDialog("A Bargain is Struck", "The Norlund clan refused to pay the toll! We tried to intercept the caravans and the envoy who carried the gnomish Ruby of Fire, but we failed...")
			end
			if (GetProvinceUnitQuantity("Caverns of Chaincolt", "unit-gnomish-duelist") >= 1) then -- way to check if Norlund Clan successfully transported the caravans
				GrandStrategyEvent(Factions.norlund_clan, GrandStrategyEvents.ClosingTheGates)
			end
		end}
	},
	ClosingTheGates = {
		Name = "Closing the Gates",
		Description = "Although the caravans arrived safely, the arrival of Shinsplitter reinforcements made our position in the Chaincolt Foothills untenable. Rugnur has retreated into the Caverns of Chaincolt, with the Shinsplitters pressing on, and reaching the caves shortly after him.",
		Civilization = "dwarf",
		Faction = "norlund_clan",
		Provinces = {
			CavernsofChaincolt = true
		},
		Heroes = {
			Rugnur = true,
			Baglur = true,
			Durstorn = true
		},
		TriggeredOnly = true,
		Options = {"~!OK"},
		OptionEffects = {function(s)
			if ("norlund-clan" == GrandStrategyFaction.Name and wyr.preferences.AutomaticBattles == false) then
				GameSettings.Presets[1].Type = PlayerComputer

				GrandStrategyEventMap = true
				GetMapInfo("maps/nidavellir/caverns-of-chaincolt.smp")
				SetCurrentQuest("closing-the-gates")
				RunMap("maps/nidavellir/caverns-of-chaincolt.smp")
				GrandStrategyEventMap = false

				if (GetProvinceOwner("Caverns of Chaincolt") == "shinsplitter-clan") then
					RestoreScenarioUnitsToProvince({ProvinceName = "Caverns of Chaincolt", FactionName = "shinsplitter-clan"})
					SetProvinceHero("Caverns of Chaincolt", "Rugnur", 0)
					SetProvinceHero("Caverns of Chaincolt", "Baglur", 0)
					SetProvinceHero("Caverns of Chaincolt", "Durstorn", 0)
				else
					RestoreScenarioUnitsToProvince({ProvinceName = "Caverns of Chaincolt", FactionName = "norlund-clan", Heroes = {"Rugnur", "Baglur"}})
					RestoreScenarioUnitsToProvince({ProvinceName = "Southern Tunnels", FactionName = "shinsplitter-clan"})
				end
			end
			if (("norlund-clan" ~= GrandStrategyFaction.Name or wyr.preferences.AutomaticBattles) and ("shinsplitter-clan" ~= GrandStrategyFaction.Name or wyr.preferences.AutomaticBattles)) then
				ChangeProvinceUnitQuantity("Southern Tunnels", "unit-dwarven-steelclad", -1)
			end
			if (GrandStrategyFaction.Name == "norlund-clan" and wyr.preferences.AutomaticBattles) then
				GenericDialog("Closing the Gates", "With the help of Baglur, Rugnur successfully closed the gates to our cavern homes, leaving the Shinsplitters blocked outside. The young dwarf informed the clan's council of what had happened, and our chieftain Durstorn decided to send him, Baglur and the gnomish envoy to the Northern Wastelands, where Thursagan - a runesmith capable of crafting the magnificent scepter - lived.")
			end
			GrandStrategyEvent(Factions.shinsplitter_clan, GrandStrategyEvents.ClosingTheGatesShinsplitterClan)
		end}
	},
	ClosingTheGatesShinsplitterClan = {
		Name = "Closing the Gates",
		Description = "We failed to exact our due from the gnomish caravans, but our reinforcements managed to pursue the enemy to the entrance of their caves...",
		Civilization = "dwarf",
		Faction = "shinsplitter_clan",
		Provinces = {
			SouthernTunnels = true
		},
		TriggeredOnly = true,
		Options = {"~!OK"},
		OptionEffects = {function(s)
			if ("shinsplitter-clan" == GrandStrategyFaction.Name and wyr.preferences.AutomaticBattles == false) then
				GameSettings.Presets[0].Type = PlayerComputer

				GrandStrategyEventMap = true
				GetMapInfo("maps/nidavellir/caverns-of-chaincolt.smp")
				SetCurrentQuest("closing-the-gates")
				RunMap("maps/nidavellir/caverns-of-chaincolt.smp")
				GrandStrategyEventMap = false

				if (GetProvinceOwner("Caverns of Chaincolt") == "shinsplitter-clan") then
					RestoreScenarioUnitsToProvince({ProvinceName = "Caverns of Chaincolt", FactionName = "shinsplitter-clan"})
					SetProvinceHero("Caverns of Chaincolt", "Rugnur", 0)
					SetProvinceHero("Caverns of Chaincolt", "Baglur", 0)
					SetProvinceHero("Caverns of Chaincolt", "Durstorn", 0)
				else
					RestoreScenarioUnitsToProvince({ProvinceName = "Caverns of Chaincolt", FactionName = "norlund-clan", Heroes = {"Rugnur", "Baglur"}})
					RestoreScenarioUnitsToProvince({ProvinceName = "Southern Tunnels", FactionName = "shinsplitter-clan"})
				end
			end
			if (GrandStrategyFaction.Name == "shinsplitter-clan" and wyr.preferences.AutomaticBattles) then
				GenericDialog("Closing the Gates", "Again, the Norlunds foiled us. They managed to close the gates to their caves, blocking us outside. We will keep watch - someday they must exit their caves again, and then we will get what is due to us.")
			end
		end}
	},
	SearchingForTheRunecrafter = {
		Name = "Searching for the Runecrafter",
		Description = "The journey of Rugnur's group to the far northern wastelands was long and perilous. For the tunnels were winding and treacherous, and the paths were not safe from goblins, or worse. Nevertheless, they did reach the northlands, and began to search for the runesmith named Thursagan - the sage of fire.",
		Civilization = "dwarf",
		Faction = "norlund_clan",
		Provinces = {
			CavernsofChaincolt = true
		},
		Units = {
			unit_gnomish_duelist = 1 -- must have a gnomish duelist in the Caverns of Chaincolt
		},
		Heroes = {
			Rugnur = true,
			Baglur = true,
			Durstorn = true
		},
		RandomChance = 50, -- took two years
		Options = {"~!OK"},
		OptionEffects = {function(s)
			if ("norlund-clan" == GrandStrategyFaction.Name and wyr.preferences.AutomaticBattles == false) then
				GrandStrategyEventMap = true
				GetMapInfo("maps/nidavellir/northern-wastelands.smp")
				SetCurrentQuest("searching-for-the-runecrafter")
				RunMap("maps/nidavellir/northern-wastelands.smp")
				GrandStrategyEventMap = false

				RestoreScenarioUnitsToProvince({ProvinceName = "Caverns of Chaincolt", FactionName = "norlund-clan", Heroes = {"Rugnur", "Baglur", "Thursagan"}})
			elseif ("norlund-clan" ~= GrandStrategyFaction.Name or wyr.preferences.AutomaticBattles) then
				SetProvinceHero("Caverns of Chaincolt", "Thursagan", 2)
				SetProvinceSettlementBuilding("Northern Wastelands", "unit-dwarven-smithy", false)
				SetProvinceUnitQuantity("Northern Wastelands", "unit-goblin-spearman", GetProvinceUnitQuantity("Northern Wastelands", "unit-goblin-spearman") / 2) -- halve enemies in the northern wastelands
				SetProvinceUnitQuantity("Northern Wastelands", "unit-goblin-archer", GetProvinceUnitQuantity("Northern Wastelands", "unit-goblin-archer") / 2)
				ChangeProvinceUnitQuantity("Caverns of Chaincolt", "unit-dwarven-gryphon-rider", 2) -- two gryphon riders joined from the travel to the Northern Wastelands
			end
			if (GrandStrategyFaction.Name == EventFaction.Name and wyr.preferences.AutomaticBattles) then
				GenericDialog("Searching for the Runecrafter", "Upon reaching the area where Thursagan's home is located, a few gryphon riders approached us, offering their help in exchange for aiding them to get rid of the local goblins. After finally finding Thursagan, Rugnur convinced the expert smith to return with him and craft the scepter. Now, Durstorn has sent them to gather materials of the high quality necessary for the scepter in the Eastern Mines.")
			end
		end}
	},
	GatheringMaterials = {
		Name = "Gathering Materials",
		Description = "Those who went to the eastern mines were brave indeed. They were infested with goblins and other vile creatures, who thrived in the dark and gloom of the caves. And braver still were Rugnur and his companions, who had to spend two years in those tunnels. For mining is a lengthy business. But they could for the most part avoid the enemy. They only once had to venture into the very heart of the goblins' territory.",
		Civilization = "dwarf",
		Faction = "norlund_clan",
		Provinces = {
			CavernsofChaincolt = true
		},
		Units = {
			unit_gnomish_duelist = 1 -- must have a gnomish duelist in the Caverns of Chaincolt
		},
		Heroes = {
			Rugnur = true,
			Baglur = true,
			Thursagan = true,
			Durstorn = true
		},
		RandomChance = 50, -- took two years
		Options = {"~!OK"},
		OptionEffects = {function(s)
			if ("norlund-clan" == GrandStrategyFaction.Name and wyr.preferences.AutomaticBattles == false) then
				GrandStrategyEventMap = true
				GetMapInfo("maps/nidavellir/eastern-mines.smp")
				SetCurrentQuest("gathering-materials")
				RunMap("maps/nidavellir/eastern-mines.smp")
				GrandStrategyEventMap = false

				RestoreScenarioUnitsToProvince({ProvinceName = "Caverns of Chaincolt", FactionName = "norlund-clan", Heroes = {"Rugnur", "Baglur", "Thursagan"}})
			elseif ("norlund-clan" ~= GrandStrategyFaction.Name or wyr.preferences.AutomaticBattles) then
				ChangeFactionResource("dwarf", "norlund-clan", "coal", 20000)
--				SetProvinceUnitQuantity("Eastern Mines", "unit-goblin-spearman", GetProvinceUnitQuantity("Eastern Mines", "unit-goblin-spearman") / 2)
--				SetProvinceUnitQuantity("Eastern Mines", "unit-goblin-archer", GetProvinceUnitQuantity("Eastern Mines", "unit-goblin-archer") / 2)
			end
			if (GrandStrategyFaction.Name == EventFaction.Name and wyr.preferences.AutomaticBattles) then
				GenericDialog("Gathering Materials", "After mining the necessary materials from the mines, Rugnur and his party returned to the clan's home. Unfortunately, the tools available for the task of crafting the scepter proved unsuitable. We will have to to seek the Shorbear clan, and bargain with them for use of their extraordinary tools. This time, however, Durstorn insists that he lead the expedition.")
			end
		end}
	},
	HillsOfTheShorbearClan = {
		Name = "Hills of the Shorbear Clan",
		Description = "Durstorn and his entourage went to meet the Shorbear clan's chieftain. Well, all dwarves are known for a love of gold and a heart of stone. The Shorbears were no exception. They were crafters of crafters - they made tools. The best in the land. And they bartered well.",
		Civilization = "dwarf",
		Faction = "norlund_clan",
		Provinces = {
			CavernsofChaincolt = true
		},
		Units = {
			unit_gnomish_duelist = 1 -- must have a gnomish duelist in the Caverns of Chaincolt
		},
		Heroes = {
			Rugnur = true,
			Baglur = true,
			Thursagan = true,
			Durstorn = true
		},
		Commodities = {
			Coal = 20000
		},
		RandomChance = 16, -- six years
		Options = {"~!OK"},
		OptionEffects = {function(s)
			if ("norlund-clan" == GrandStrategyFaction.Name and wyr.preferences.AutomaticBattles == false) then
				GrandStrategyEventMap = true
				GetMapInfo("maps/nidavellir/shorbear-hills.smp")
				SetCurrentQuest("hills-of-the-shorbear-clan")
				RunMap("maps/nidavellir/shorbear-hills.smp")
				GrandStrategyEventMap = false

				RestoreScenarioUnitsToProvince({ProvinceName = "Caverns of Chaincolt", FactionName = "norlund-clan", Heroes = {"Rugnur", "Baglur", "Thursagan", "Durstorn"}})
				RestoreScenarioUnitsToProvince({ProvinceName = "Southern Tunnels", FactionName = "shinsplitter-clan"})
				RestoreScenarioUnitsToProvince({ProvinceName = "Shorbear Hills", FactionName = "shorbear-clan"})
				if (GetProvinceUnitQuantity("Caverns of Chaincolt", "unit-gnomish-duelist") >= 1) then
					ChangeProvinceUnitQuantity("Caverns of Chaincolt", "unit-gnomish-duelist", -1)
				end
				
				if (GameResult == GameVictory) then
					GrandStrategyEvent(Factions.norlund_clan, GrandStrategyEvents.TheWyrm)
				end
			end
			
			if ("shinsplitter-clan" == GrandStrategyFaction.Name) then
				GrandStrategyEvent(Factions.shinsplitter_clan, GrandStrategyEvents.HillsOfTheShorbearClanShinsplitterClan)
			end
			if ("shorbear-clan" == GrandStrategyFaction.Name) then
				GrandStrategyEvent(Factions.shorbear_clan, GrandStrategyEvents.HillsOfTheShorbearClanShorbearClan)
			end
			
			if ((GrandStrategyFaction.Name ~= "norlund-clan" and GrandStrategyFaction.Name ~= "shinsplitter-clan" and GrandStrategyFaction.Name ~= "shorbear-clan") or wyr.preferences.AutomaticBattles) then
				SetFactionDiplomacyState("dwarf", "norlund-clan", "dwarf", "shorbear-clan", "war")
				ChangeProvinceUnitQuantity("Southern Tunnels", "unit-dwarven-steelclad", -1) -- Kalnar
				ChangeProvinceUnitQuantity("Southern Tunnels", "unit-dwarven-thane", -3) -- Lyndar, Gaenlar and Glinan
				SetProvinceUnitQuantity("Shorbear Hills", "unit-dwarven-axefighter", 0)
				SetProvinceUnitQuantity("Shorbear Hills", "unit-dwarven-thane", 0) -- Glonoin
				KillGrandStrategyHero("Glonoin")
				
				SetProvinceHero("Caverns of Chaincolt", "Durstorn", 0) -- Durstorn is killed in a conflict between him and other members of the clan
				ChangeProvinceUnitQuantity("Caverns of Chaincolt", "unit-gnomish-duelist", -1) -- the gnomish envoy returns south
				ChangeProvinceUnitQuantity("Untersberg", "unit-gnomish-duelist", 1)
	
				AcquireProvince(WorldMapProvinces.ShorbearHills, "shinsplitter-clan")
				if (GrandStrategyFaction.Name == "norlund-clan" and wyr.preferences.AutomaticBattles) then
					GenericDialog("Hills of the Shorbear Clan", "High was the price the Shorbears asked for use of their tools. Durstorn - against the advice of Thursagan - decided to take the tools by force. During the battle the Shinsplitters appeared, quickly making an alliance with the Shorbear chieftain. Nevertheless, we breached the Shorbears' walls and occupied their stronghold, being then besieged by the Shinsplitters.")
					GenericDialog("Hills of the Shorbear Clan", "A long time afterwards, a desperate Durstorn desired to surrender to the enemy. The others refused, having to kill the enraged chieftain. Rugnur and the rest of the party fled into the caves to the north of the hold, while the gnomish envoy returned to Untersberg to ask for reinforcements.")
				end
				GrandStrategyEvent(Factions.norlund_clan, GrandStrategyEvents.TheWyrm)
			end
		end}
	},
	HillsOfTheShorbearClanShinsplitterClan = {
		Name = "Hills of the Shorbear Clan",
		Description = "Our scouts have found out that the Norlunds have gone out of their caves through an exit near the Shorbear Hills... we must be quick, if we are to catch them!",
		Civilization = "dwarf",
		Faction = "shinsplitter_clan",
		TriggeredOnly = true,
		Options = {"~!OK"},
		OptionEffects = {function(s)
			if ("shinsplitter-clan" == GrandStrategyFaction.Name and wyr.preferences.AutomaticBattles == false) then
				GameSettings.Presets[0].Type = PlayerComputer
				GameSettings.Presets[1].Type = PlayerComputer
				GrandStrategyEventMap = true
				GetMapInfo("maps/nidavellir/shorbear-hills.smp")
				SetCurrentQuest("hills-of-the-shorbear-clan")
				RunMap("maps/nidavellir/shorbear-hills.smp")
				GrandStrategyEventMap = false

				RestoreScenarioUnitsToProvince({ProvinceName = "Caverns of Chaincolt", FactionName = "norlund-clan", Heroes = {"Rugnur", "Baglur", "Thursagan", "Durstorn"}})
				RestoreScenarioUnitsToProvince({ProvinceName = "Southern Tunnels", FactionName = "shinsplitter-clan"})
				RestoreScenarioUnitsToProvince({ProvinceName = "Shorbear Hills", FactionName = "shorbear-clan"})
				if (GetProvinceUnitQuantity("Caverns of Chaincolt", "unit-gnomish-duelist") >= 1) then
					ChangeProvinceUnitQuantity("Caverns of Chaincolt", "unit-gnomish-duelist", -1)
				end

				if (GameResult ~= GameVictory and GetProvinceHero("Caverns of Chaincolt", "Rugnur") == 2 and GetProvinceHero("Caverns of Chaincolt", "Baglur") == 2 and GetProvinceHero("Caverns of Chaincolt", "Thursagan") == 2) then
					GrandStrategyEvent(Factions.norlund_clan, GrandStrategyEvents.TheWyrm)
				end
			end
			if (GrandStrategyFaction.Name == EventFaction.Name and wyr.preferences.AutomaticBattles) then
				GenericDialog("Hills of the Shorbear Clan", "We found the Norlunds attacking the Shorbear Hold. We quickly made an alliance with the Shorbear chieftain - but the Norlunds still managed to defeat the Shorbears, squirreling themselves in their stronghold. Eventually they tried to escape our siege, and unfortunately succeeded in fleeing to the nearby caves.")
			end
		end}
	},
	HillsOfTheShorbearClanShorbearClan = {
		Name = "Hills of the Shorbear Clan",
		Description = "The Norlunds are approaching our hills... let us see what they want.",
		Civilization = "dwarf",
		Faction = "shorbear_clan",
		TriggeredOnly = true,
		Options = {"~!OK"},
		OptionEffects = {function(s)
			if ("shorbear-clan" == GrandStrategyFaction.Name and wyr.preferences.AutomaticBattles == false) then
				GameSettings.Presets[0].Type = PlayerComputer
				GameSettings.Presets[2].Type = PlayerComputer
				GrandStrategyEventMap = true
				GetMapInfo("maps/nidavellir/shorbear-hills.smp")
				SetCurrentQuest("hills-of-the-shorbear-clan")
				RunMap("maps/nidavellir/shorbear-hills.smp")
				GrandStrategyEventMap = false

				RestoreScenarioUnitsToProvince({ProvinceName = "Caverns of Chaincolt", FactionName = "norlund-clan", Heroes = {"Rugnur", "Baglur", "Thursagan", "Durstorn"}})
				RestoreScenarioUnitsToProvince({ProvinceName = "Southern Tunnels", FactionName = "shinsplitter-clan"})
				RestoreScenarioUnitsToProvince({ProvinceName = "Shorbear Hills", FactionName = "shorbear-clan"})
				if (GetProvinceUnitQuantity("Caverns of Chaincolt", "unit-gnomish-duelist") >= 1) then
					ChangeProvinceUnitQuantity("Caverns of Chaincolt", "unit-gnomish-duelist", -1)
				end
			end
			if (GrandStrategyFaction.Name == EventFaction.Name and wyr.preferences.AutomaticBattles) then
				GenericDialog("Hills of the Shorbear Clan", "The Norlunds came to bargain the use of our tools to craft a scepter. We offered them a price - they claimed it was too high, and attacked us! The battle raged, and our chieftain Glonoin fell. The Norlunds then occupied our stronghold, leaving our people in subjection...")
			end
		end}
	},
	TheWyrm = {
		Name = "The Wyrm",
		Description = "Thus the gnomish envoy escaped from his Shinsplitter pursuers. But the dwarves were not so lucky. I would say that, perhaps, their betrayal of Durstorn was coming back to haunt them. For the section of the old eastern mines that they reached in their flight had long since become the lair of Svafnir... the wyrm.",
		Civilization = "dwarf",
		Faction = "norlund_clan",
		Provinces = {
			CavernsofChaincolt = true
		},
		Heroes = {
			Rugnur = true,
			Baglur = true,
			Thursagan = true
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
			if ("norlund-clan" == GrandStrategyFaction.Name and wyr.preferences.AutomaticBattles == false) then
				ChangeProvinceUnitQuantity("Southern Tunnels", "unit-surghan-mercenary-steelclad", 8) -- Surghan mercenaries hired by the Shinsplitters
				ChangeFactionResource("dwarf", "shinsplitter-clan", "gold", - (GetUnitTypeData("unit-surghan-mercenary-steelclad", "Costs", "gold") * 2))
				MercenaryGroups.unit_surghan_mercenary_steelclad = nil
			
				GrandStrategyEventMap = true
				GetMapInfo("maps/nidavellir/svafnirs-lair.smp")
				SetCurrentQuest("the-wyrm")
				RunMap("maps/nidavellir/svafnirs-lair.smp")
				GrandStrategyEventMap = false

				RestoreScenarioUnitsToProvince({ProvinceName = "Caverns of Chaincolt", FactionName = "norlund-clan", Heroes = {"Rugnur", "Baglur", "Thursagan"}, IgnoredUnitClasses = {"infantry", "spearman", "shooter"}})
				RestoreScenarioUnitsToProvince({ProvinceName = "Southern Tunnels", FactionName = "shinsplitter-clan", IgnoredUnitClasses = {"infantry", "spearman", "shooter"}})
				if (GameResult == GameVictory) then
					ChangeFactionResource("dwarf", "norlund-clan", "coal", -20000) -- Scepter of Fire crafted
					GrandStrategyEvent(Factions.norlund_clan, GrandStrategyEvents.CavernsOfFlame)
				end
			end
			
			if ("shinsplitter-clan" == GrandStrategyFaction.Name) then
				GrandStrategyEvent(Factions.shinsplitter_clan, GrandStrategyEvents.TheWyrmShinsplitterClan)
			end
				
			if ((GrandStrategyFaction.Name ~= "norlund-clan" and GrandStrategyFaction.Name ~= "shinsplitter-clan") or wyr.preferences.AutomaticBattles) then
				ChangeProvinceUnitQuantity("Southern Tunnels", "unit-surghan-mercenary-steelclad", 8) -- Surghan mercenaries hired by the Shinsplitters
				ChangeFactionResource("dwarf", "shinsplitter-clan", "gold", - (GetUnitTypeData("unit-surghan-mercenary-steelclad", "Costs", "gold") * 2))
				MercenaryGroups.unit_surghan_mercenary_steelclad = nil
			
				ChangeProvinceUnitQuantity("Southern Tunnels", "unit-dwarven-thane", -1) -- Crintil
				ChangeProvinceUnitQuantity("Southern Tunnels", "unit-surghan-mercenary-steelclad", -4)
				
				ChangeFactionResource("dwarf", "norlund-clan", "coal", -20000) -- Scepter of Fire crafted
				
				if (GrandStrategyFaction.Name == "norlund-clan" and wyr.preferences.AutomaticBattles) then
					GenericDialog("The Wyrm", "The Shinsplitters followed us deep into the caves we had entered, bring Surghan mercenaries with them. Rugnur and his party ran as fast as they could, escaping the clutches of Svafnir and finding a lava-heated forge. As the party fought off incoming attacks, Thursagan finally crafted the Scepter of Fire.")
				end
			
				GrandStrategyEvent(Factions.norlund_clan, GrandStrategyEvents.CavernsOfFlame)
			end
		end}
	},
	TheWyrmShinsplitterClan = {
		Name = "The Wyrm",
		Description = "We have sent a detachment of our warriors to go after the Norlunds in those caves.",
		Civilization = "dwarf",
		Faction = "shinsplitter_clan",
		TriggeredOnly = true,
		Options = {"~!OK"},
		OptionEffects = {function(s)
			if ("shinsplitter-clan" == GrandStrategyFaction.Name and wyr.preferences.AutomaticBattles == false) then
				GrandStrategyEventMap = true
				GameSettings.Presets[0].Type = PlayerComputer
				GetMapInfo("maps/nidavellir/svafnirs-lair.smp")
				SetCurrentQuest("the-wyrm")
				RunMap("maps/nidavellir/svafnirs-lair.smp")
				GrandStrategyEventMap = false

				RestoreScenarioUnitsToProvince({ProvinceName = "Caverns of Chaincolt", FactionName = "norlund-clan", Heroes = {"Rugnur", "Baglur", "Thursagan"}, IgnoredUnitClasses = {"infantry", "spearman", "shooter"}})
				RestoreScenarioUnitsToProvince({ProvinceName = "Southern Tunnels", FactionName = "shinsplitter-clan", IgnoredUnitClasses = {"infantry", "spearman", "shooter"}})
				
				if (GameResult ~= GameVictory and GetProvinceHero("Caverns of Chaincolt", "Rugnur") == 2 and GetProvinceHero("Caverns of Chaincolt", "Baglur") == 2 and GetProvinceHero("Caverns of Chaincolt", "Thursagan") == 2) then
					ChangeFactionResource("dwarf", "norlund-clan", "coal", -20000) -- Scepter of Fire crafted
					SetProvinceHero("Caverns of Chaincolt", "Durstorn", 0)
					GrandStrategyEvent(Factions.norlund_clan, GrandStrategyEvents.CavernsOfFlame)
				end
			end
			if (GrandStrategyFaction.Name == EventFaction.Name and wyr.preferences.AutomaticBattles) then
				GenericDialog("The Wyrm", "We followed the Norlunds into the caves, this time bringing Surghan mercenaries with us. As we tried to catch the running Norlunds, we came upon an enormous wyrm. After this delay, we again set to pursue the Norlunds, but they skillfully escaped deeper into the tunnels.")
			end
		end}
	},
	CavernsOfFlame = {
		Name = "Caverns of Flame",
		Description = "Rugnur and his companions had reached the realms of the goblins, with the Shinsplitters hot on their trail. And there was no exit from those caves, leaving the Norlunds no way out.",
		Civilization = "dwarf",
		Faction = "norlund_clan",
		Provinces = {
			CavernsofChaincolt = true
		},
		Heroes = {
			Rugnur = true,
			Baglur = true,
			Thursagan = true
		},
		RequiredEvents = {
			TheWyrm = true
		},
		RandomChance = 40, -- two and a half years
		Options = {"~!OK"},
		OptionEffects = {function(s)
			if ("norlund-clan" == GrandStrategyFaction.Name and wyr.preferences.AutomaticBattles == false) then
				GrandStrategyEventMap = true
				GetMapInfo("maps/nidavellir/caverns-of-flame.smp")
				SetCurrentQuest("caverns-of-flame")
				RunMap("maps/nidavellir/caverns-of-flame.smp")
				GrandStrategyEventMap = false

				RestoreScenarioUnitsToProvince({ProvinceName = "Caverns of Chaincolt", FactionName = "norlund-clan"})
				RestoreScenarioUnitsToProvince({ProvinceName = "Southern Tunnels", FactionName = "shinsplitter-clan"})
			end
				
			if ("shinsplitter-clan" == GrandStrategyFaction.Name) then
				GrandStrategyEvent(Factions.shinsplitter_clan, GrandStrategyEvents.CavernsOfFlameShinsplitterClan)
			end
				
			if ((GrandStrategyFaction.Name ~= "norlund-clan" and GrandStrategyFaction.Name ~= "shinsplitter-clan") or wyr.preferences.AutomaticBattles) then
				SetProvinceUnitQuantity("Southern Tunnels", "unit-dwarven-thane", 0)
				SetProvinceUnitQuantity("Southern Tunnels", "unit-surghan-mercenary-steelclad", 0)
				
				SetProvinceHero("Caverns of Chaincolt", "Rugnur", 0) -- Rugnur, Baglur and Thursagan die at the Caverns of Flame
				SetProvinceHero("Caverns of Chaincolt", "Baglur", 0)
				SetProvinceHero("Caverns of Chaincolt", "Thursagan", 0)

				ChangeProvinceUnitQuantity("Caverns of Chaincolt", "unit-dwarven-gryphon-rider", -2) -- the dwarven gryphon riders return to the Northern Wastelands

				ChangeFactionResource("dwarf", "norlund-clan", "gold", 2500) -- payment for the crafting of the Scepter
				ChangeFactionResource("gnome", "untersberg", "gold", -2500) -- payment for the crafting of the Scepter
				AcquireProvince(WorldMapProvinces.ShorbearHills, "norlund-clan") -- Shorbear Hold ceded by the Shinsplitters to the Norlunds and peace established
				SetFactionDiplomacyState("dwarf", "norlund-clan", "dwarf", "shinsplitter-clan", "peace")
				
				ChangeFactionResource("dwarf", "norlund-clan", "prestige", 100) -- a lot of prestige for completing the legendary scepter
				
				if (GrandStrategyFaction.Name == "norlund-clan" and wyr.preferences.AutomaticBattles) then
					GenericDialog("Caverns of Flame", "After deflecting a number of goblins, Rugnur's party came upon some ancient mechanism in the depth of the tunnels. It somehow activated a dormant volcano! The Shinsplitters who had followed tried to escape, but too late - Norlund, Shinsplitter and goblin alike perished that day.")
					GenericDialog("Caverns of Flame", "The lone survivor was a Norlund gryphon rider, who flew fast and high as the volcano erupted. He then went to Untersberg to inform the gnomish king of what had happened, arriving just as the gnomish envoy did. Together, they relayed the sad news to the king, that Rugnur and his companions did fulfill their promise to craft the Scepter, but died tragically in the Caverns of Flame.")
					GenericDialog("Caverns of Flame", "Pypo I thought it little wise to send forces to uncover the Scepter, with goblins swarming the region, and given that the volcano might still be too unstable. Aged and nearing the end of his life himself, he did not have the energy to undertake such an enterprise either. All he could do was sending the rest of the payment to the remnants of the Norlund clan, as the promise to craft the Scepter was indeed fulfilled.")
					GenericDialog("Caverns of Flame", "The Shinsplitters, depleted by war and wary of the forces the Norlunds would be able to muster with the gnomish silver, accepted a peace, ceding the Shorbear Hold back to the Norlunds. The Scepter sat in the caves of the Northlands, unfound but undestroyed, moved around by goblins who never understood its true meaning.")
					GenericDialog("Caverns of Flame", "Legends grew up around it, and around its makers - Thursagan, most brilliant of the dwarven runesmiths, and Rugnur, one of the greatest dwarven heroes.")
				end
			end
		end}
	},
	CavernsOfFlameShinsplitterClan = {
		Name = "Caverns of Flame",
		Description = "We have followed the Norlunds deep into goblin territory...",
		Civilization = "dwarf",
		Faction = "shinsplitter_clan",
		TriggeredOnly = true,
		Options = {"~!OK"},
		OptionEffects = {function(s)
			if ("shinsplitter-clan" == GrandStrategyFaction.Name and wyr.preferences.AutomaticBattles == false) then
				GrandStrategyEventMap = true
				GameSettings.Presets[0].Type = PlayerComputer
				GetMapInfo("maps/nidavellir/caverns-of-flame.smp")
				SetCurrentQuest("caverns-of-flame")
				RunMap("maps/nidavellir/caverns-of-flame.smp")
				GrandStrategyEventMap = false

				RestoreScenarioUnitsToProvince({ProvinceName = "Caverns of Chaincolt", FactionName = "norlund-clan"})
				RestoreScenarioUnitsToProvince({ProvinceName = "Southern Tunnels", FactionName = "shinsplitter-clan"})
			end
			if (GrandStrategyFaction.Name == EventFaction.Name and wyr.preferences.AutomaticBattles) then
				GenericDialog("Caverns of Flame", "We reached the goblins' tunnels. The Norlunds were somewhere nearby, still alive. Unexplicably, a dormant volcano began to erupt, obliterating our valiant kin!")
				GenericDialog("Caverns of Flame", "The Norlunds seem to have done well in the eyes of the gnomish king, for he sent silver caravans with the rest of the payment to them. With our forces depleted and the Norlunds possessing the financial capability of mustering more soldiers, we had no choice but to sue for peace - resulting in our cession of the Shorbear Hold to the Norlund clan.")
			end
		end}
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
					if (IsOffensiveMilitaryUnit(unitName)) then
						if (GetProvinceUnitQuantity(EventProvince.Name, unitName) > 0) then
							return true
						end
					end
				end
				local grand_strategy_heroes = GetGrandStrategyHeroes()
				for i = 1, table.getn(grand_strategy_heroes) do
					if (GetProvinceHero(EventProvince.Name, grand_strategy_heroes[i]) == 2) then
						return true
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

					RestoreScenarioUnitsToProvince({ProvinceName = EventProvince.Name, FactionName = EventFaction.Name, Heroes = "any"})
					
					if (GameResult == GameVictory) then
						ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
					elseif (GameResult == GameDefeat) then -- if lost the battle, lose the gold
						ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "gold", -500)
						ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", -1)
					end
				else
					if (GetProvinceMilitaryScore(EventProvince.Name, false, true) > (30 * 6)) then
						if (GrandStrategyFaction.Name == EventFaction.Name) then
							GenericDialog("Goblin Looters", "We have successfully eliminated the goblin thieves!", "+1 Prestige")
						end
						ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
					else
						if (GrandStrategyFaction.Name == EventFaction.Name) then
							GenericDialog("Goblin Looters", "The thieves have beaten our forces!", "-500 Gold, -1 Prestige, Lose Troops in Province")
						end
						ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "gold", -500)
						ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", -1)
						for i, unitName in ipairs(Units) do
							if (IsOffensiveMilitaryUnit(unitName)) then
								if (GetProvinceUnitQuantity(EventProvince.Name, unitName) > 0) then
									SetProvinceUnitQuantity(EventProvince.Name, unitName, 0)
								end
							end
						end
					end
				end
			end,
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "gold", -500)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", -2)
			end
		},
		OptionTooltips = {"Fight the goblin thieves", "-500 Gold\n-1 Prestige"}
	}
}
	
AddEventTable(NidavellirEvents)

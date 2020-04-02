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
--      (c) Copyright 2013-2020 by Andrettin
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

DefineQuest("the-first-dwarves", {
	Name = "The First Dwarves",
	Icon = "icon-modsognir",
	PlayerColor = "red",
	FailEffects = function(s)
		if (trigger_player == GetThisPlayer() and GetCurrentCampaign() == "the-first-dwarves") then
			CallDialogue("campaign-defeat", trigger_player)
		end
	end,
	ObjectiveStrings = {"- Overcome Svarinshaug's perils", "- Modsognir must survive", "- Durin must survive"},
	Uncompleteable = true,
	Unobtainable = true,
	HeroesMustSurvive = {"modsognir", "durin"}
})

DefineQuest("a-rocky-home", {
	Name = "A Rocky Home",
	Icon = "icon-modsognir",
	Description = "A clan of dwarves led by Modsognir has arrived in Svarinshaug, seeking a new home. Beset by hostile natural forces on all sides, can they survive their first winter?",
	PlayerColor = "red",
	CompletionEffects = function(s)
		CallDialogue("a-rocky-home-materials-collected", trigger_player)
	end,
	Unobtainable = true,
	Objectives = {
		{
			"objective-type", "build-units",
			"objective-string", "Build a Mead Hall",
			"quantity", 1,
			"unit-type", "unit-dwarven-town-hall"
		},
		{
			"objective-type", "gather-resource",
			"objective-string", "Gather 800 Lumber",
			"quantity", 800,
			"resource", "lumber"
		},
		{
			"objective-type", "gather-resource",
			"objective-string", "Gather 2400 Stone",
			"quantity", 2400,
			"resource", "stone"
		},
		{
			"objective-type", "build-units",
			"objective-string", "Build a Yale Hunting Lodge",
			"quantity", 1,
			"unit-type", "unit-yale-hunting-lodge"
		}
	},
	HeroesMustSurvive = {"modsognir", "durin"}
})

DefineQuest("the-mead-of-wisdom", {
	Name = "The Mead of Wisdom",
	Icon = "icon-durin",
	Description = "The sage of Modsognir's clan has disappeared, taken by two dwarves called Fjalar and Galar. Modsognir has sent Durin to enter their hall, rescue the sage - or what remains of him - and bring the evil pair to justice.\n\nMap: Fjalar's and Galar's Hall",
	World = "nidavellir",
	Civilization = "dwarf",
	Map = "maps/nidavellir/fjalars-and-galars-hall.smp",
	Scenario = "scripts/civilizations/dwarf/scenarios/the_mead_of_wisdom.lua",
	PlayerColor = "white",
	LoadingMusic = "DwarfLoading",
	MapMusic = "DwarfTheme2",
	Unobtainable = true
})

DefineQuest("the-mastersmith-brothers", {
	Name = "The Mastersmith Brothers",
	Icon = "icon-dwarven-runemaster",
	Description = "The brothers Brokk and Eitri have come to renown for their remarkable smithing abilities. It would surely be a boon for us to have them under our employ.",
	PlayerColor = "red",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "UnitTypesCount", "unit-dwarven-smithy") > 0 or GetPlayerData(trigger_player, "UnitTypesCount", "unit-brising-smithy") > 0) then
			return true
		end
		return false
	end,
	CompletionEffects = function(s)
		SetPlayerData(trigger_player, "Resources", "jewelry", GetPlayerData(trigger_player, "Resources", "jewelry") + 1000)
	end,
	Rewards = "+1000 Jewelry",
	Hint = "A selection of heroes is available for recruitment at the Mead Hall.",
	Objectives = {
		{
			"objective-type", "recruit-hero",
			"objective-string", "Recruit Brokk",
			"character", "brokk"
		},
		{
			"objective-type", "recruit-hero",
			"objective-string", "Recruit Eitri",
			"character", "eitri"
		}
	},
	Competitive = true
})

DefineQuest("the-ring-of-riches", {
	Name = "The Ring of Riches",
	Icon = "icon-ring",
	Description = "The mastersmith brothers Brokk and Eitri seek to create a gold ring the like of which none of us have seen before. They request to be provided with the necessary gold for the task.",
	PlayerColor = "white",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "UnitTypesCount", "unit-dwarven-smithy") > 0 or GetPlayerData(trigger_player, "UnitTypesCount", "unit-brising-smithy") > 0) then
			return true
		end
		return false
	end,
	CompletionEffects = function(s)
		SetPlayerData(trigger_player, "Resources", "copper", GetPlayerData(trigger_player, "Resources", "copper") - 4000)
		local brokk_unit = FindHero("brokk", trigger_player)
		if (brokk_unit) then
			unit = CreateUnit("unit-ring", PlayerNumNeutral, {GetUnitVariable(brokk_unit, "PosX"), GetUnitVariable(brokk_unit, "PosY")}, GetUnitVariable(brokk_unit, "MapLayer"))
			if (GetUniqueItemData("draupnir", "CanDrop")) then
				SetUnitVariable(unit, "Unique", "draupnir")
			else
				SetUnitVariable(unit, "GenerateSpecialProperties", trigger_player, true) -- if Draupnir cannot drop, then generate a magic ring
			end
			SetUnitVariable(unit, "Identified", false)
		end
	end,
	ObjectiveStrings = {"- Brokk and Eitri must survive"},
	Rewards = "Magic Ring, Lose 4000 Copper",
	Objectives = {
		{
			"objective-type", "gather-resource",
			"objective-string", "Gather 1000 Gold",
			"quantity", 1000,
			"resource", "gold"
		},
		{
			"objective-type", "have-resource",
			"objective-string", "Have 4000 Copper",
			"quantity", 4000,
			"resource", "copper"
		}
	},
	HeroesMustSurvive = {"brokk", "eitri"},
	Competitive = true
})

DefineQuest("the-thunder-hammer", {
	Name = "The Thunder Hammer",
	Icon = "icon-brising-smithy",
	Description = "The mastersmiths Brokk and Eitri have spoken of their desire to craft a magnificent hammer, stronger than any other. To do so they will require plenty of metal, however.",
	PlayerColor = "white",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "UnitTypesCount", "unit-dwarven-smithy") > 0 or GetPlayerData(trigger_player, "UnitTypesCount", "unit-brising-smithy") > 0) then
			return true
		end
		return false
	end,
	CompletionEffects = function(s)
		CallDialogue("brokk-and-eitri-craft-mjollnir", trigger_player)
		SetPlayerData(trigger_player, "Resources", "copper", GetPlayerData(trigger_player, "Resources", "copper") - 4000)
		local brokk_unit = FindHero("brokk", trigger_player)
		if (brokk_unit) then
			unit = CreateUnit("unit-runesmiths-hammer", PlayerNumNeutral, {GetUnitVariable(brokk_unit, "PosX"), GetUnitVariable(brokk_unit, "PosY")}, GetUnitVariable(brokk_unit, "MapLayer"))
			if (GetUniqueItemData("mjollnir", "CanDrop")) then
				SetUnitVariable(unit, "Unique", "mjollnir")
			else
				SetUnitVariable(unit, "GenerateSpecialProperties", trigger_player, true) -- if Mjollnir cannot drop, then generate a magic hammer
			end
			SetUnitVariable(unit, "Identified", false)
		end
	end,
	ObjectiveStrings = {"- Brokk and Eitri must survive"},
	Rewards = "Magic Hammer, Lose 4000 Copper",
	Objectives = {
		{
			"objective-type", "gather-resource",
			"objective-string", "Gather 4000 Copper",
			"quantity", 4000,
			"resource", "copper"
		},
		{
			"objective-type", "have-resource",
			"objective-string", "Have 4000 Copper",
			"quantity", 4000,
			"resource", "copper"
		}
	},
	HeroesMustSurvive = {"brokk", "eitri"},
	Competitive = true
})

DefineQuest("the-magnificent-spear", {
	Name = "The Magnificent Spear",
	Icon = "icon-long-spear",
	Description = "Ivaldi and his sons are of a mind to craft a wondrous spear, for which they will need a significant amount of materials.",
	PlayerColor = "white",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "UnitTypesCount", "unit-dwarven-smithy") > 0 or GetPlayerData(trigger_player, "UnitTypesCount", "unit-brising-smithy") > 0) then
			return true
		end
		return false
	end,
	CompletionEffects = function(s)
		SetPlayerData(trigger_player, "Resources", "copper", GetPlayerData(trigger_player, "Resources", "copper") - 2000)
		SetPlayerData(trigger_player, "Resources", "lumber", GetPlayerData(trigger_player, "Resources", "lumber") - 2000)
		local ivaldi_unit = FindHero("ivaldi", trigger_player)
		if (ivaldi_unit) then
			unit = CreateUnit("unit-long-spear", PlayerNumNeutral, {GetUnitVariable(ivaldi_unit, "PosX"), GetUnitVariable(ivaldi_unit, "PosY")}, GetUnitVariable(ivaldi_unit, "MapLayer"))
			if (GetUniqueItemData("gungnir", "CanDrop")) then
				SetUnitVariable(unit, "Unique", "gungnir")
			else
				SetUnitVariable(unit, "GenerateSpecialProperties", trigger_player, true) -- if Gungnir cannot drop, then generate a magic ring
			end
			SetUnitVariable(unit, "Identified", false)
		end
	end,
	ObjectiveStrings = {"- Ivaldi must survive"},
	Rewards = "Magic Spear, Lose 2000 Copper and 2000 Lumber",
	Objectives = {
		{
			"objective-type", "gather-resource",
			"objective-string", "Gather 2000 Copper",
			"quantity", 2000,
			"resource", "copper"
		},
		{
			"objective-type", "gather-resource",
			"objective-string", "Gather 2000 Lumber",
			"quantity", 2000,
			"resource", "lumber"
		},
		{
			"objective-type", "have-resource",
			"objective-string", "Have 2000 Copper",
			"quantity", 2000,
			"resource", "copper"
		},
		{
			"objective-type", "have-resource",
			"objective-string", "Have 2000 Lumber",
			"quantity", 2000,
			"resource", "lumber"
		}
	},
	HeroesMustSurvive = {"ivaldi"},
	Competitive = true
})

DefineQuest("the-sleek-ship", {
	Name = "The Sleek Ship",
	Icon = "icon-dwarven-transport-ship",
	Description = "The master craftsman Ivaldi and his sons have laid out a project to build a magnificent ship of unrivalled speed.",
	PlayerColor = "white",
	Conditions = function(s)
		if (GetUniqueItemData("skidbladnir", "CanDrop")) then
			return true
		end
		return false
	end,
	CompletionEffects = function(s)
		SetUnitVariable(FindUnit("unit-dwarven-transport-ship", trigger_player, false, true), "Unique", "skidbladnir")
	end,
	ObjectiveStrings = {"- Ivaldi must survive"},
	Rewards = "The Transport will become the Skidbladnir unique ship",
	Hint = "Select a Dock and then click on the Build Transport button to build the ship required for this quest.",
	Objectives = {
		{
			"objective-type", "build-units",
			"objective-string", "Build a Transport",
			"quantity", 1,
			"unit-type", "unit-dwarven-transport-ship"
		}
	},
	HeroesMustSurvive = {"ivaldi"},
	Competitive = true
})

DefineQuest("the-necklace-of-the-brisings", {
	Name = "The Necklace of the Brisings",
	Icon = "icon-dwarven-steelclad",
	Description = "The necklace made for Modsognir's wife by a group of four dwarven smiths has been stolen! The culprits, a band of local dwarven thieves, sneaked away with the necklace last night, going back to their hideout. We must recover the necklace from these bandits!\n\nMap: Aurvang",
	RequiredQuest = "the-mead-of-wisdom",
	World = "nidavellir",
	Civilization = "dwarf",
	Map = "maps/nidavellir/aurvang.smp",
	Scenario = "scripts/civilizations/dwarf/scenarios/the_necklace_of_the_brisings.lua",
	PlayerColor = "black",
	LoadingMusic = "DwarfLoading",
--	MapMusic = "DwarfTheme4",
	Unobtainable = true
})

DefineQuest("the-slaying-of-grafvitnir", {
	Name = "The Slaying of Grafvitnir",
	Icon = "icon-wyrm",
	Description = "Svarinshaug has been discovered to house a kobold tribe, who will attack the dwarves on sight for trespassing on their sacred ground. Modsognir's clan must now slay the kobolds and the wyrm they worship, Grafvitnir.",
	World = "nidavellir",
	Civilization = "dwarf",
	PlayerColor = "black",
	ObjectiveStrings = {"- Destroy the Grafvitning Tribe"},
	Unobtainable = true,
	Uncompleteable = true,
	Unfailable = true,
	HeroesMustSurvive = {"modsognir", "durin"}
})

DefineQuest("dvalins-runes", {
	Name = "Dvalin's Runes",
	Icon = "icon-norse-runewriting",
	Description = "The wise Dvalin seeks to devise a system of runes, and asks for our support in this endeavor. Dvalin claims that those runes are not only symbols of magic significance, but that they will also allow us to lay our thought down in fixed form for the future generations.",
	PlayerColor = "red",
	CompletionEffects = function(s)
		SetPlayerData(trigger_player, "Resources", "copper", GetPlayerData(trigger_player, "Resources", "copper") + 2500)
	end,
	ObjectiveStrings = {"- Dvalin must survive"},
	Rewards = "+2500 Copper",
	Hint = "Select a Bastion and then click on the Research Runewriting button to research the technology required for this quest.",
	Objectives = {
		{
			"objective-type", "research-upgrade",
			"objective-string", "Research Runewriting",
			"upgrade", "upgrade-dwarven-runewriting"
		}
	},
	HeroesMustSurvive = {"dvalin"}
})

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
--      (c) Copyright 2013-2021 by Andrettin
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

DefineQuest("the_first_dwarves", {
	Name = "The First Dwarves",
	Icon = "icon-modsognir",
	PlayerColor = "red",
	AcceptEffects = function(s)
		if (trigger_player == GetThisPlayer() and GetCurrentCampaign() == "the_first_dwarves") then
			CallDialogue("a-rocky-home-introduction", trigger_player)
		end
	end,
	FailEffects = function(s)
		if (trigger_player == GetThisPlayer() and GetCurrentCampaign() == "the_first_dwarves") then
			CallDialogue("campaign-defeat", trigger_player)
		end
	end,
	ObjectiveStrings = {"Overcome Svarinshaug's perils", "Modsognir must survive", "Durin must survive"},
	Uncompleteable = true,
	Unobtainable = true,
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
	Unobtainable = true
})

DefineQuest("the_ring_of_riches", {
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
	Rewards = "Magic Ring, Lose 4000 Copper"
})

DefineQuest("the_thunder_hammer", {
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
	Rewards = "Magic Hammer, Lose 4000 Copper"
})

DefineQuest("the_magnificent_spear", {
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
	Rewards = "Magic Spear, Lose 2000 Copper and 2000 Lumber"
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
	ObjectiveStrings = {"Ivaldi must survive"},
	Rewards = "The Transport will become the Skidbladnir unique ship",
	Hint = "Select a Dock and then click on the Build Transport button to build the ship required for this quest.",
	Objectives = {
		{
			"objective-type", "build_units",
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
	Unobtainable = true
})

DefineQuest("the-slaying-of-grafvitnir", {
	Name = "The Slaying of Grafvitnir",
	Icon = "icon-wyrm",
	Description = "Svarinshaug has been discovered to house a kobold tribe, who will attack the dwarves on sight for trespassing on their sacred ground. Modsognir's clan must now slay the kobolds and the wyrm they worship, Grafvitnir.",
	World = "nidavellir",
	Civilization = "dwarf",
	PlayerColor = "black",
	ObjectiveStrings = {"Destroy the Grafvitning Tribe"},
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
	ObjectiveStrings = {"Dvalin must survive"},
	Rewards = "+2500 Copper",
	Hint = "Select a Bastion and then click on the Research Runewriting button to research the technology required for this quest.",
	Objectives = {
		{
			"objective-type", "research_upgrade",
			"objective-string", "Research Runewriting",
			"upgrade", "upgrade-dwarven-runewriting"
		}
	},
	HeroesMustSurvive = {"dvalin"}
})

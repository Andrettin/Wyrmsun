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
--      (c) Copyright 2013-2017 by Andrettin
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
	Objectives = {"- Overcome Svarinshaug's perils", "- Modsognir must survive", "- Durin must survive"},
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
	Objectives = {"- Build a Mead Hall", "- Build a Yale Hunting Lodge", "- Gather 800 Lumber and 2400 Stone"},
	Unobtainable = true,
	BuildUnits = {"unit-dwarven-town-hall", 1, "unit-yale-hunting-lodge", 1},
	GatherResources = {"lumber", 800, "stone", 2400},
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
	Objectives = {"- Recruit Brokk and Eitri"},
	Rewards = "+1000 Jewelry",
	Hint = "A selection of heroes is available for recruitment at the Mead Hall.",
	RecruitCharacters = {"brokk", "eitri"},
	Competitive = true
})

DefineQuest("the-treasures-of-svarinshaug", {
	Name = "The Treasures of Svarinshaug",
	Icon = "icon-brising-smithy",
	Description = "Seeking Modsognir's favor, the mastersmiths Brokk and Eitri desire to craft wondrous artifacts for the dwarven chieftain. To do so they will require plenty of metal, however.",
	PlayerColor = "white",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "UnitTypesCount", "unit-dwarven-smithy") > 0 or GetPlayerData(trigger_player, "UnitTypesCount", "unit-brising-smithy") > 0) then
			return true
		end
		return false
	end,
	CompletionEffects = function(s)
		CallDialogue("brokk-and-eitri-create-their-artifacts", trigger_player)
		SetPlayerData(trigger_player, "Resources", "copper", GetPlayerData(trigger_player, "Resources", "copper") - 8000)
		local brokk_unit = FindHero("brokk", trigger_player)
		if (brokk_unit) then
			unit = CreateUnit("unit-runesmiths-hammer", PlayerNumNeutral, {GetUnitVariable(brokk_unit, "PosX"), GetUnitVariable(brokk_unit, "PosY")}, GetUnitVariable(brokk_unit, "MapLayer"))
			if (GetUniqueItemData("mjollnir", "CanDrop")) then
				SetUnitVariable(unit, "Unique", "mjollnir")
			else
				SetUnitVariable(unit, "GenerateSpecialProperties", trigger_player, true) -- if Mjollnir cannot drop, then generate a magic ring
			end
			SetUnitVariable(unit, "Identified", false)
		
			unit = CreateUnit("unit-ring", PlayerNumNeutral, {GetUnitVariable(brokk_unit, "PosX"), GetUnitVariable(brokk_unit, "PosY")}, GetUnitVariable(brokk_unit, "MapLayer"))
			if (GetUniqueItemData("draupnir", "CanDrop")) then
				SetUnitVariable(unit, "Unique", "draupnir")
			else
				SetUnitVariable(unit, "GenerateSpecialProperties", trigger_player, true) -- if Draupnir cannot drop, then generate a magic ring
			end
			SetUnitVariable(unit, "Identified", false)
		end
	end,
	Objectives = {"- Gather 8000 Copper", "- Have 8000 Copper", "- Brokk and Eitri must survive"},
	Rewards = "Magic Hammer, Magic Ring, Lose 8,000 Copper",
	GatherResources = {"copper", 800},
	HaveResources = {"copper", 800},
	HeroesMustSurvive = {"brokk", "eitri"},
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
	Objectives = {"- Destroy the Grafvitning Tribe"},
	Unobtainable = true,
	Uncompleteable = true,
	Unfailable = true,
	HeroesMustSurvive = {"modsognir", "durin"}
})

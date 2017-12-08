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
	World = "nidavellir",
	Civilization = "dwarf",
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
	World = "nidavellir",
	Civilization = "dwarf",
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
	World = "nidavellir",
	Civilization = "dwarf",
	PlayerColor = "red",
	CompletionEffects = function(s)
		SetPlayerData(trigger_player, "Resources", "jewelry", GetPlayerData(trigger_player, "Resources", "jewelry") + 1000)
	end,
	Objectives = {"- Recruit Brokk and Eitri"},
	Rewards = "+1000 Jewelry",
	Hint = "Heroes are available for recruitment at the Mead Hall.",
	RecruitCharacters = {"brokk", "eitri"},
	Competitive = true
})

DefineQuest("the-treasures-of-svarinshaug", {
	Name = "The Treasures of Svarinshaug",
	Icon = "icon-brising-smithy",
	Description = "The dwarven smiths Brokk and Eitri are competing with the renowned sons of Ivaldi to craft the best artifacts for Modsognir. To obtain the necessary high quality ores will be perilous, however, as dangerous creatures abound in the deep mines where they lay...\n\nMap: Eastern Mines",
	RequiredQuest = "the-mead-of-wisdom",
	World = "nidavellir",
	Civilization = "dwarf",
	Map = "maps/nidavellir/eastern-mines.smp",
	Scenario = "scripts/civilizations/dwarf/scenarios/the_treasures_of_svarinshaug.lua",
	PlayerColor = "white",
	LoadingMusic = "DwarfLoading",
--	MapMusic = "DwarfTheme3",
	Unobtainable = true
})

DefineQuest("the-necklace-of-the-brisings", {
	Name = "The Necklace of the Brisings",
	Icon = "icon-dwarven-steelclad",
	Description = "The necklace made for Modsognir's wife by a group of four dwarven smiths has been stolen! The culprits, a band of local dwarven thieves, sneaked away with the necklace last night, going back to their hideout. We must recover the necklace from these bandits!\n\nMap: Aurvang",
	RequiredQuest = "the-treasures-of-svarinshaug",
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

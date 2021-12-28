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
--      (c) Copyright 2015-2021 by Andrettin
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

DefineFaction("brising_clan", {
	Name = "Brising Clan",
	Civilization = "dwarf",
	Type = "tribe",
	Color = "red",
	FactionUpgrade = "upgrade-faction-brising-clan",
	ButtonIcons = {
		"stop", "icon-brising-round-shield"
	},
	UIFillers = {
		"dlcs/brising_faction_flair/graphics/ui/filler_bottom.png", 380, -181,
		"dlcs/brising_faction_flair/graphics/ui/buttonpanel.png", -256, -200,
		"dlcs/brising_faction_flair/graphics/ui/infopanel.png", 0, -200
	},
	Description = "The Brising clan was one of the first dwarven clans ever known. It made its home in Svarinshaug, where they tamed the fierce forces of nature.",
	Background = "In Norse mythology, \"Brising\" was an appelation used for the dwarves in general, or more specifically for the ones who created the necklace Brisingamen. \"Brising\" means \"flame\" in Old Norse."
})

DefineFaction("goldhoof_clan", {
	Name = "Goldhoof Clan",
	Civilization = "dwarf",
	Type = "tribe",
	Color = "brown",
	FactionUpgrade = "upgrade-faction-goldhoof-clan",
	Icon = "icon-flag-golden-yale-skull-on-green",
	DevelopsFrom = {"brising_clan"},
	ButtonIcons = {
		"stop", "icon-joruvellir-shield"
	},
	UIFillers = {
		"dlcs/joruvellir_faction_flair/graphics/ui/filler_bottom.png", 380, -181,
		"dlcs/joruvellir_faction_flair/graphics/ui/buttonpanel.png", -256, -200,
		"dlcs/joruvellir_faction_flair/graphics/ui/infopanel.png", 0, -200
	},
	Description = "The Goldhoofs are an ancient clan, who split off from the other dwarves in Svarinshaug to migrate to Joruvellir. There, they gave rise to a multitude of desert dwarven clans, which eventually would unify into the Principality of Joruvellir."
})

DefineFaction("eikinskjaldi_clan", {
	Name = "Eikinskjaldi Clan",
	Adjective = "Eikinskjaldi",
	Civilization = "dwarf",
	ParentFaction = "goldhoof_clan",
	Type = "tribe",
	Color = "brown",
	FactionUpgrade = "upgrade_faction_eikinskjaldi_clan",
	Icon = "icon-flag-light-blue-hammer-on-orange",
	DevelopsFrom = {"goldhoof_clan"},
	Description = "The Eikinskjaldi clan traces its origins to Eikinskjaldi, a member of the legendary group of dwarves who migrated to the sandy plains of Joruvellir. One of Eikinskjaldi's descendants was Durahn, a mighty dwarven warlord who was buried in a rich tomb.",
	Background = "In Norse mythology Eikinskjaldi was the name of a dwarf who migrated from Svarinshaug to Joruvellir. \"Eikinskjaldi\" means \"oaken shield\" in Old Norse."
})

DefineFaction("norlund_clan", {
	Name = "Norlund Clan",
	Adjective = "Norlund",
	Civilization = "dwarf",
	Type = "tribe",
	Color = "red",
	FactionUpgrade = "upgrade_faction_norlund_clan",
	Icon = "icon-flag-black-hammer-on-orange",
	DevelopsFrom = {"brising_clan"},
	Description = "The Norlund clan has its origins in the Caverns of Chaincolt, and counts with a number of skilled warriors and craftsmen amongst its ranks. Eventually the Norlund clan would unify much of dwarfdom into the Lordship of Knalga."
})

DefineFaction("oinling_clan", {
	Name = "Oinling Clan",
	Adjective = "Oinling",
	Civilization = "dwarf",
	Type = "tribe",
	Color = "yellow",
	FactionUpgrade = "upgrade_faction_oinling_clan",
	Icon = "icon-flag-blue-hammer-on-yellow",
	DevelopsFrom = {"brising_clan"},
	Description = "Oin's kin are known for their love of gold, and their skill in hoarding it."
})

DefineFaction("shadowcharm_clan", {
	Name = "Shadowcharm Clan",
	Adjective = "Shadowcharm",
	Civilization = "dwarf",
	Type = "tribe",
	Color = "black",
	FactionUpgrade = "upgrade_faction_shadowcharm_clan",
	Icon = "icon-flag-green-hammer-on-light-purple",
	DevelopsFrom = {"brising_clan"},
	Description = "The Shadowcharm clan is known for its skilled exercise in subtlety. Foes of this clan may well find themselves assassinated by a seemingly-loyal subordinate."
})

DefineFaction("shinsplitter_clan", {
	Name = "Shinsplitter Clan",
	Adjective = "Shinsplitter",
	Civilization = "dwarf",
	Type = "tribe",
	Color = "green",
	FactionUpgrade = "upgrade_faction_shinsplitter_clan",
	Icon = "icon-flag-cyan-hammer-on-green",
	DevelopsFrom = {"brising_clan"},
	Description = "The warriors of the Shinsplitter clan are a wild bunch, and often go into frenzies during battle. In later times the Shinsplitters migrated east to the Highbrook Pass."
})

DefineFaction("shorbear_clan", {
	Name = "Shorbear Clan",
	Adjective = "Shorbear",
	Civilization = "dwarf",
	Type = "tribe",
	Color = "blue",
	FactionUpgrade = "upgrade_faction_shorbear_clan",
	Icon = "icon-flag-green-hammer-on-blue",
	DevelopsFrom = {"brising_clan"},
	Description = "Contrary to many of the other dwarven clans, who prefer to live in mountains, the Shorbears make their homes in the hills. They are known as excellent crafters of tools.",
	ForceTemplates = {
		{
			"force-type", "land",
			"priority", 125,
			"unit-class", "infantry", 2,
			"unit-class", "spearman", 1,
			"unit-class", "gunpowder_infantry", 1,
			"unit-class", "siege_engine", 1 -- as a clan specialized in toolcrafting, it makes sense for them to use siege weapons
		},
		{ -- from Battle for Wesnoth: The Sceptre of Fire (Hills of the Shorbear Clan)
			"force-type", "land",
			"priority", 120,
			"unit-class", "infantry", 2,
			"unit-class", "spearman", 1,
			"unit-class", "gunpowder_infantry", 1
		},
		{
			"force-type", "land",
			"priority", 115,
			"unit-class", "infantry", 2,
			"unit-class", "spearman", 1,
			"unit-class", "shooter", 1,
			"unit-class", "siege_engine", 1
		},
		{
			"force-type", "land",
			"priority", 110,
			"unit-class", "infantry", 2,
			"unit-class", "spearman", 1,
			"unit-class", "shooter", 1
		},
		{
			"force-type", "land",
			"priority", 100,
			"unit-class", "infantry", 2,
			"unit-class", "spearman", 1
		},
		{
			"force-type", "naval",
			"priority", 100,
			"unit-class", "siege_warship", 1
		},
		{
			"force-type", "air",
			"priority", 100,
			"unit-class", "flying_rider", 1
		}
	}
})

DefineFaction("whitesteel_clan", {
	Name = "Whitesteel Clan",
	Adjective = "Whitesteel",
	Civilization = "dwarf",
	Type = "tribe",
	Color = "white",
	FactionUpgrade = "upgrade_faction_whitesteel_clan",
	Icon = "icon-flag-red-hammer-on-silver",
	DevelopsFrom = {"brising_clan", "norlund_clan", "shorbear_clan"},
--	Description = "Attracted by tales of mithril deposits, a group of dwarves established an outpost in a distant kobold island. Enjoying a lucrative trade with the merchant ships who made call at their port, the dwarves established themselves permanently in the island, eventually calling themselves the Whitesteel clan."
})

-- Holy Orders

DefineFaction("order-of-loremasters", { -- from Battle for Wesnoth: The Hammer of Thursagan
	Name = "Order of Loremasters",
	Adjective = "Loremaster",
	Civilization = "dwarf",
	Type = "holy_order", -- should be a non-religious order of sages instead
	Color = "white",
	DefaultTier = "duchy"
})

-- Mercenary Companies

DefineFaction("yawning-yales", {
	Name = "Yawning Yales",
	Adjective = "Yawning Yale",
	ParentFaction = "goldhoof_clan", -- Joruvellir
	Civilization = "dwarf",
	Type = "mercenary_company",
	Color = "yellow",
	DefaultTier = "duchy",
	FactionUpgrade = "upgrade-faction-yawning-yales",
	Description = "The mercenaries known as the Yawning Yales originate in the sands of Joruvellir, riding forth to seek employment in military campaigns throughout the dwarven lands."
})

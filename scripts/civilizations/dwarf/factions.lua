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
--      (c) Copyright 2015-2019 by Andrettin
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

DefineFaction("brising-clan", {
	Name = "Brising Clan",
	Civilization = "dwarf",
	Type = "tribe",
	PrimaryColor = "red",
	SecondaryColor = "orange",
	FactionUpgrade = "upgrade-faction-brising-clan",
	Icon = "icon-flag-white-hammer-on-red",
	ButtonIcons = {
		"stop", "icon-brising-round-shield"
	},
	UIFillers = {
		"dlcs/brising_faction_flair/graphics/ui/filler_bottom.png", 380, -181,
		"interface/dwarven/resource.png", 0, 0,
		"dlcs/brising_faction_flair/graphics/ui/buttonpanel.png", -256, -200,
		"dlcs/brising_faction_flair/graphics/ui/infopanel.png", 0, -200
	},
	Description = "The Brising clan is one of the first known dwarven clans. It made its home in Svarinshaug, where they tamed the fierce forces of nature.",
	Background = "In Norse mythology, \"Brising\" was an appelation used for the dwarves in general, or more specifically for the ones who created the necklace Brisingamen. \"Brising\" means \"flame\" in Old Norse.",
	HistoricalUpgrades = {
--		-3000, "upgrade-deity-odin", true
	}
})

DefineFaction("goldhoof-clan", {
	Name = "Goldhoof Clan",
	Civilization = "dwarf",
	Type = "tribe",
	PrimaryColor = "brown",
	FactionUpgrade = "upgrade-faction-goldhoof-clan",
	Icon = "icon-flag-golden-yale-skull-on-green",
	DevelopsFrom = {"brising-clan"},
	ButtonIcons = {
		"stop", "icon-joruvellir-shield"
	},
	UIFillers = {
		"dlcs/joruvellir_faction_flair/graphics/ui/filler_bottom.png", 380, -181,
		"interface/dwarven/resource.png", 0, 0,
		"dlcs/joruvellir_faction_flair/graphics/ui/buttonpanel.png", -256, -200,
		"dlcs/joruvellir_faction_flair/graphics/ui/infopanel.png", 0, -200
	},
	Description = "The Goldhoofs are an ancient clan, who split off from the other dwarves in Svarinshaug to migrate to Joruvellir. There, they gave rise to a multitude of desert dwarven clans, which eventually would unify into the Principality of Joruvellir.",
	HistoricalUpgrades = {
		-2800, "upgrade-deity-odin", true
	}
})

DefineFaction("eikinskjaldi-clan", {
	Name = "Eikinskjaldi Clan",
	Civilization = "dwarf",
	ParentFaction = "goldhoof-clan",
	Type = "tribe",
	PrimaryColor = "brown",
	SecondaryColor = "white",
	FactionUpgrade = "upgrade-faction-eikinskjaldi-clan",
	Icon = "icon-flag-green-hammer-on-blue",
	DevelopsFrom = {"goldhoof-clan"},
	Description = "The Eikinskjaldi clan traces its origins to Eikinskjaldi, a member of the legendary group of dwarves who migrated to the sandy plains of Joruvellir. One of Eikinskjaldi's descendants was Durahn, a mighty dwarven warlord who was buried in a rich tomb.",
	Background = "In Norse mythology Eikinskjaldi was the name of a dwarf who migrated from Svarinshaug to Joruvellir. \"Eikinskjaldi\" means \"oaken shield\" in Old Norse."
})

DefineFaction("norlund-clan", {
	Name = "Norlund Clan",
	Civilization = "dwarf",
	Type = "tribe",
	PrimaryColor = "red",
	SecondaryColor = "yellow",
	FactionUpgrade = "upgrade-faction-norlund-clan",
	Icon = "icon-flag-white-hammer-on-red",
	DevelopsFrom = {"brising-clan"},
	Description = "The Norlund clan has its origins in the Caverns of Chaincolt, and counts with a number of skilled warriors and craftsmen amongst its ranks. Eventually the Norlund clan would unify much of dwarfdom into the Lordship of Knalga."
})

DefineFaction("oinling-clan", {
	Name = "Oinling Clan",
	Civilization = "dwarf",
	Type = "tribe",
	PrimaryColor = "yellow",
	SecondaryColor = "blue",
	FactionUpgrade = "upgrade-faction-oinling-clan",
	Icon = "icon-flag-red-hammer-on-white",
	DevelopsFrom = {"brising-clan"},
	Description = "Oin's kin are known for their love of gold, and their skill in hoarding it."
})

DefineFaction("shadowcharm-clan", {
	Name = "Shadowcharm Clan",
	Civilization = "dwarf",
	Type = "tribe",
	PrimaryColor = "black",
	SecondaryColor = "purple",
	FactionUpgrade = "upgrade-faction-shadowcharm-clan",
	Icon = "icon-flag-green-hammer-on-blue",
	DevelopsFrom = {"brising-clan"},
	Description = "The Shadowcharm clan is known for its skilled exercise in subtlety. Foes of this clan may well find themselves assassinated by a seemingly-loyal subordinate."
})

DefineFaction("shinsplitter-clan", {
	Name = "Shinsplitter Clan",
	Civilization = "dwarf",
	Type = "tribe",
	PrimaryColor = "green",
	SecondaryColor = "teal",
	FactionUpgrade = "upgrade-faction-shinsplitter-clan",
	Icon = "icon-flag-white-hammer-on-red",
	DevelopsFrom = {"brising-clan"},
	Description = "The warriors of the Shinsplitter clan are a wild bunch, and often go into frenzies during battle. In later times the Shinsplitters migrated east to the Highbrook Pass."
})

DefineFaction("shorbear-clan", {
	Name = "Shorbear Clan",
	Civilization = "dwarf",
	Type = "tribe",
	PrimaryColor = "blue",
	SecondaryColor = "cyan",
	FactionUpgrade = "upgrade-faction-shorbear-clan",
	Icon = "icon-flag-green-hammer-on-blue",
	DevelopsFrom = {"brising-clan"},
	Description = "Contrary to many of the other dwarven clans, who prefer to live in mountains, the Shorbears make their homes in the hills. They are known as excellent crafters of tools.",
	ForceTemplates = {
		{
			"force-type", "land-force",
			"priority", 125,
			"unit-class", "infantry", 2,
			"unit-class", "spearman", 1,
			"unit-class", "gunpowder-infantry", 1,
			"unit-class", "siege-engine", 1 -- as a clan specialized in toolcrafting, it makes sense for them to use siege weapons
		},
		{ -- from Battle for Wesnoth: The Sceptre of Fire (Hills of the Shorbear Clan)
			"force-type", "land-force",
			"priority", 120,
			"unit-class", "infantry", 2,
			"unit-class", "spearman", 1,
			"unit-class", "gunpowder-infantry", 1
		},
		{
			"force-type", "land-force",
			"priority", 115,
			"unit-class", "infantry", 2,
			"unit-class", "spearman", 1,
			"unit-class", "shooter", 1,
			"unit-class", "siege-engine", 1
		},
		{
			"force-type", "land-force",
			"priority", 110,
			"unit-class", "infantry", 2,
			"unit-class", "spearman", 1,
			"unit-class", "shooter", 1
		},
		{
			"force-type", "land-force",
			"priority", 100,
			"unit-class", "infantry", 2,
			"unit-class", "spearman", 1
		},
		{
			"force-type", "naval-force",
			"priority", 100,
			"unit-class", "siege-warship", 1
		},
		{
			"force-type", "air-force",
			"priority", 100,
			"unit-class", "flying-rider", 1
		}
	}
})

DefineFaction("whitesteel-clan", {
	Name = "Whitesteel Clan",
	Civilization = "dwarf",
	Type = "tribe",
	PrimaryColor = "white",
	SecondaryColor = "black",
	FactionUpgrade = "upgrade-faction-whitesteel-clan",
	Icon = "icon-flag-red-hammer-on-white",
	DevelopsFrom = {"brising-clan", "norlund-clan", "shorbear-clan"},
--	Description = "Attracted by tales of mithril deposits, a group of dwarves established an outpost in a distant kobold island. Enjoying a lucrative trade with the merchant ships who made call at their port, the dwarves established themselves permanently in the island, eventually calling themselves the Whitesteel clan."
})

-- Polities

DefineFaction("joruvellir", { -- from Norse mythology, "Joruvellir" = "Fields of Sand"
	Name = "Joruvellir",
	ParentFaction = "goldhoof-clan",
	Civilization = "dwarf",
	Type = "polity",
	PrimaryColor = "yellow",
	SecondaryColor = "red",
	DefaultTier = "duchy",
	FactionUpgrade = "upgrade-faction-joruvellir",
	Icon = "icon-flag-joruvellir",
	DevelopsFrom = {"eikinskjaldi-clan", "goldhoof-clan"},
	Description = "The arid sands of Joruvellir were first settled by a group of dwarves who had their origins in Svarinshaug.",
	Titles = {
		"monarchy", "barony", "Lordship",
		"monarchy", "duchy", "Principality"
	},
	MinisterTitles = {
		"head-of-state", "male", "monarchy", "barony", "Lord",
		"head-of-state", "female", "monarchy", "barony", "Lady"
	},
	HistoricalCapitals = {
		400, "joruvellir"
	},
	HistoricalUpgrades = {
		400, "upgrade-dwarven-runewriting", true, -- polities require writing
		534, "upgrade-iron-tipped-wood-plow", true -- Mushroom Farms existent in Knalga (so possibly also in other polities)
	}
})

DefineFaction("kal-kartha", {
	Name = "Kal Kartha",
	Civilization = "dwarf",
	Type = "polity",
	PrimaryColor = "black",
	SecondaryColor = "blue",
	DefaultTier = "barony",
	FactionUpgrade = "upgrade-faction-kal-kartha",
	Icon = "icon-flag-green-hammer-on-blue",
	DevelopsFrom = {"oinling-clan", "shadowcharm-clan", "shinsplitter-clan", "shorbear-clan", "whitesteel-clan"},
	Titles = {
		"monarchy", "barony", "Lordship"
	},
	MinisterTitles = {
		"head-of-state", "male", "monarchy", "barony", "Lord",
		"head-of-state", "female", "monarchy", "barony", "Lady"
	},
	HistoricalCapitals = {
		400, "kal-kartha"
	},
	HistoricalUpgrades = {
		400, "upgrade-dwarven-runewriting", true, -- polities require writing
		534, "upgrade-iron-tipped-wood-plow", true -- Mushroom Farms existent in Knalga (so possibly also in other polities)
	},
	ForceTemplates = {
		{ -- from Battle for Wesnoth: The Hammer of Thursagan (The Siege of Kal Kartha)
			"force-type", "land-force",
			"priority", 120,
			"unit-class", "infantry", 2,
			"unit-class", "gunpowder-infantry", 1
		},
		{ -- from Battle for Wesnoth: The Hammer of Thursagan (The Court of Karrag)
			"force-type", "land-force",
			"priority", 120,
			"unit-class", "infantry", 2, -- a fighter and an ulfserker
			"unit-class", "gunpowder-infantry", 1
		},
		{ -- from Battle for Wesnoth: The Hammer of Thursagan (The Underlevels)
			"force-type", "land-force",
			"priority", 120,
			"unit-class", "infantry", 1,
			"unit-class", "spearman", 1,
			"unit-class", "gunpowder-infantry", 1
		},
		{
			"force-type", "land-force",
			"priority", 110,
			"unit-class", "infantry", 2,
			"unit-class", "shooter", 1
		},
		{
			"force-type", "land-force",
			"priority", 110,
			"unit-class", "infantry", 1,
			"unit-class", "spearman", 1,
			"unit-class", "shooter", 1
		},
		{
			"force-type", "land-force",
			"priority", 100,
			"unit-class", "infantry", 2
		},
		{
			"force-type", "land-force",
			"priority", 100,
			"unit-class", "infantry", 1,
			"unit-class", "spearman", 1
		},
		{
			"force-type", "naval-force",
			"priority", 100,
			"unit-class", "siege-warship", 1
		},
		{
			"force-type", "air-force",
			"priority", 100,
			"unit-class", "flying-rider", 1
		}
	}
})

DefineFaction("knalga", {
	Name = "Knalga",
	Civilization = "dwarf",
	Type = "polity",
	PrimaryColor = "red",
	SecondaryColor = "white",
	DefaultTier = "barony",
	FactionUpgrade = "upgrade-faction-knalga",
	Icon = "icon-flag-white-hammer-on-red",
	DevelopsFrom = {"norlund-clan", "oinling-clan", "shinsplitter-clan", "shorbear-clan", "whitesteel-clan"},
	Titles = {
		"monarchy", "barony", "Lordship"
	},
	MinisterTitles = {
		"head-of-state", "male", "monarchy", "barony", "Lord",
		"head-of-state", "female", "monarchy", "barony", "Lady"
	},
	HistoricalCapitals = {
		400, "knalga"
	},
	HistoricalUpgrades = {
		400, "upgrade-dwarven-runewriting", true, -- polities require writing
		534, "upgrade-iron-tipped-wood-plow", true -- Mushroom Farms existent in Knalga
	}
})

DefineFaction("lyr", {
	Name = "Lyr",
	Civilization = "dwarf",
	Type = "polity",
	ParentFaction = "brising-clan",
	PrimaryColor = "green",
	SecondaryColor = "teal",
	DefaultTier = "barony",
	FactionUpgrade = "upgrade-faction-lyr",
	Icon = "icon-flag-white-hammer-on-red",
	DevelopsFrom = {"brising-clan", "oinling-clan", "whitesteel-clan"},
	Description = "The shining hall of Lyr was built by a number of skilled dwarven craftsmen who had split off from the Brising clan.",
	Background = "In Norse mythology Lyr was a magnificent hall which was built by Loki with the help of the dwarves Bari, Delling, Dori, Iri, Jari, Ori, Uni, Var and Vegdrasil. The giantess Menglad dwelled in the hall. \"Lyr\" means \"heat-holding\" in Old Norse.",
	Titles = {
		"monarchy", "barony", "Lordship"
	},
	MinisterTitles = {
		"head-of-state", "male", "monarchy", "barony", "Lord",
		"head-of-state", "female", "monarchy", "barony", "Lady"
	},
	HistoricalCapitals = {
		400, "lyr"
	},
	HistoricalUpgrades = {
		400, "upgrade-dwarven-runewriting", true, -- polities require writing
		534, "upgrade-iron-tipped-wood-plow", true -- Mushroom Farms existent in Knalga (so possibly also in other polities)
	}
})

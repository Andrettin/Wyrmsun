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
--      (c) Copyright 2015-2016 by Andrettin
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

DefineFaction("Brising Clan", {
	Civilization = "dwarf",
	Type = "tribe",
	Colors = {"red", "orange", "fire"},
	DevelopsTo = {"Joruvellir", "Kal Kartha", "Knalga", "Lyr"},
	SplitsTo = {"Eikinskjaldi Clan", "Norlund Clan", "Shinsplitter Clan", "Shorbear Clan"},
	FactionUpgrade = "upgrade-brising-clan-faction",
	ButtonIcons = {
		"stop", "icon-brising-round-shield"
	},
	UIFillers = {
		"dlcs/brising_faction_flair/graphics/ui/filler_bottom.png", 380, -181,
		"dwarf/ui/resource.png", 0, 0,
		"dlcs/brising_faction_flair/graphics/ui/buttonpanel.png", -256, -200,
		"dlcs/brising_faction_flair/graphics/ui/infopanel.png", 0, -200
	},
	Description = _("The Brising clan was one of the first dwarven clans ever known. It made its home in Svarinshaug, where they tamed the fierce forces of nature."),
	Background = "In Norse mythology, \"Brising\" was an appelation used for the dwarves in general, or more specifically for the ones who created the necklace Brisingamen. \"Brising\" means \"flame\" in Old Norse.",
	HistoricalTechnologies = {
		"upgrade-dwarven-wood-plow", -3000, -- give plow technology to the dwarven factions
		"upgrade-dwarven-broad-axe", -1, -- bronze age technologies had already been obtained by the dwarves by this point
		"upgrade-dwarven-shield-1", -1, -- bronze age technologies had already been obtained by the dwarves by this point
		"upgrade-dwarven-sharp-throwing-axe", -1, -- bronze age technologies had already been obtained by the dwarves by this point
		"upgrade-dwarven-masonry", 25, -- dwarves already had castles built of stone masonry by then
		"upgrade-dwarven-coinage", 400, -- the dwarves should already have Coinage technology by then
		"upgrade-dwarven-great-axe", 550, -- late iron age technologies already obtained by the dwarves by this point
		"upgrade-dwarven-shield-2", 550, -- late iron age technologies already obtained by the dwarves by this point
		"upgrade-dwarven-bearded-throwing-axe", 550, -- late iron age technologies already obtained by the dwarves by this point
		"upgrade-dwarven-ballista-bolt-1", 550, -- late iron age technologies already obtained by the dwarves by this point
	}
})

DefineFaction("Eikinskjaldi Clan", { -- originally Oakenshield (from Dyson Logos' The Tomb of Durahn Oakenshield), translated into Norse to make it seem more dwarvish
	Civilization = "dwarf",
	Type = "tribe",
	Colors = {"brown"},
	DevelopsTo = {"Joruvellir", "Kal Kartha", "Knalga", "Lyr"},
	FactionUpgrade = "upgrade-eikinskjaldi-clan-faction",
	Description = _("The Eikinskjaldi clan traces its origins to Eikinskjaldi, a member of the legendary group of dwarves who migrated to the sandy plains of Joruvellir. One of Eikinskjaldi's descendants was Durahn, a mighty dwarven warlord who was buried in a rich tomb."),
	Background = "In Norse mythology Eikinskjaldi was the name of a dwarf who migrated from Svarinshaug to Joruvellir. \"Eikinskjaldi\" means \"oaken shield\" in Old Norse."
})

DefineFaction("Norlund Clan", {
	Civilization = "dwarf",
	Type = "tribe",
	Colors = {"red", "orange"},
--	DevelopsTo = {"Kal Kartha", "Knalga"},
	DevelopsTo = {"Joruvellir", "Kal Kartha", "Knalga", "Lyr"},
	FactionUpgrade = "upgrade-norlund-clan-faction",
	Description = _("The Norlund clan has its origins in the Caverns of Chaincolt, and counts with a number of skilled warriors and craftsmen amongst its ranks. Eventually the Norlund clan would unify much of dwarfdom into the Lordship of Knalga."),
	HistoricalFactionDerivations = {-1, "dwarf", "Brising Clan"},
	HistoricalTechnologies = {
		"upgrade-dwarven-broad-axe", -1, -- bronze age technologies had already been obtained by the dwarves by this point
		"upgrade-dwarven-shield-1", -1, -- bronze age technologies had already been obtained by the dwarves by this point
		"upgrade-dwarven-sharp-throwing-axe", -1, -- bronze age technologies had already been obtained by the dwarves by this point
		"upgrade-dwarven-masonry", 25, -- dwarves already had castles built of stone masonry by then
	}
})

DefineFaction("Shinsplitter Clan", {
	Civilization = "dwarf",
	Type = "tribe",
	Colors = {"green", "teal"},
	DevelopsTo = {"Joruvellir", "Kal Kartha", "Knalga", "Lyr"},
	FactionUpgrade = "upgrade-shinsplitter-clan-faction",
	Description = _("The warriors of the Shinsplitter clan are a wild bunch, and often go into frenzies during battle. In later times the Shinsplitters migrated east to the Highbrook Pass."),
	HistoricalFactionDerivations = {-1, "dwarf", "Brising Clan"},
	HistoricalTechnologies = {
		"upgrade-dwarven-broad-axe", -1, -- bronze age technologies had already been obtained by the dwarves by this point
		"upgrade-dwarven-shield-1", -1, -- bronze age technologies had already been obtained by the dwarves by this point
		"upgrade-dwarven-sharp-throwing-axe", -1, -- bronze age technologies had already been obtained by the dwarves by this point
		"upgrade-dwarven-masonry", 25, -- dwarves already had castles built of stone masonry by then
		"upgrade-dwarven-coinage", 400, -- the dwarves should already have Coinage technology by then
		"upgrade-dwarven-great-axe", 550, -- late iron age technologies already obtained by the dwarves by this point
		"upgrade-dwarven-shield-2", 550, -- late iron age technologies already obtained by the dwarves by this point
		"upgrade-dwarven-bearded-throwing-axe", 550, -- late iron age technologies already obtained by the dwarves by this point
		"upgrade-dwarven-ballista-bolt-1", 550, -- late iron age technologies already obtained by the dwarves by this point
	}
})

DefineFaction("Shorbear Clan", {
	Civilization = "dwarf",
	Type = "tribe",
	Colors = {"blue", "cyan"},
--	DevelopsTo = {"Knalga"},
	DevelopsTo = {"Joruvellir", "Kal Kartha", "Knalga", "Lyr"},
	FactionUpgrade = "upgrade-shorbear-clan-faction",
	Description = _("Contrary to many of the other dwarven clans, who prefer to live in mountains, the Shorbears have made their homes in the hills. They are known as excellent crafters of tools."),
	HistoricalFactionDerivations = {-1, "dwarf", "Brising Clan"},
	HistoricalTechnologies = {
		"upgrade-dwarven-broad-axe", -1, -- bronze age technologies had already been obtained by the dwarves by this point
		"upgrade-dwarven-shield-1", -1, -- bronze age technologies had already been obtained by the dwarves by this point
		"upgrade-dwarven-sharp-throwing-axe", -1, -- bronze age technologies had already been obtained by the dwarves by this point
		"upgrade-dwarven-masonry", 25, -- dwarves already had castles built of stone masonry by then
	}
})

DefineFaction("Joruvellir", {
	Civilization = "dwarf",
	Type = "polity",
	Colors = {"brown"},
	DefaultTier = "barony",
	Titles = {
		"monarchy", "barony", "Lordship"
	},
	MinisterTitles = {
		"head-of-state", "male", "monarchy", "barony", "Lord",
		"head-of-state", "female", "monarchy", "barony", "Lady"
	},
	FactionUpgrade = "upgrade-joruvellir-faction",
	Description = "The arid sands of Joruvellir were first settled by a group of dwarves who had their origins in Svarinshaug.",
	HistoricalFactionDerivations = {400, "dwarf", "Brising Clan"},
	HistoricalCapitals = {
		400, "Joruvellir"
	},
	HistoricalTechnologies = {
		"upgrade-dwarven-runewriting", 400, -- polities require writing
		"upgrade-dwarven-coinage", 400, -- the dwarves should already have Coinage technology by then
		"upgrade-dwarven-iron-tipped-wood-plow", 534, -- Mushroom Farms existent in Knalga (so possibly also in other polities)
		"upgrade-dwarven-great-axe", 550, -- late iron age technologies already obtained by the dwarves by this point
		"upgrade-dwarven-shield-2", 550, -- late iron age technologies already obtained by the dwarves by this point
		"upgrade-dwarven-bearded-throwing-axe", 550, -- late iron age technologies already obtained by the dwarves by this point
		"upgrade-dwarven-ballista-bolt-1", 550, -- late iron age technologies already obtained by the dwarves by this point
	}
})

DefineFaction("Kal Kartha", {
	Civilization = "dwarf",
	Type = "polity",
	Colors = {"black"},
	DefaultTier = "barony",
	Titles = {
		"monarchy", "barony", "Lordship"
	},
	MinisterTitles = {
		"head-of-state", "male", "monarchy", "barony", "Lord",
		"head-of-state", "female", "monarchy", "barony", "Lady"
	},
	FactionUpgrade = "upgrade-kal-kartha-faction",
	HistoricalFactionDerivations = {400, "dwarf", "Brising Clan"},
	HistoricalCapitals = {
		400, "Kal Kartha"
	},
	HistoricalTechnologies = {
		"upgrade-dwarven-runewriting", 400, -- polities require writing
		"upgrade-dwarven-coinage", 400, -- the dwarves should already have Coinage technology by then
		"upgrade-dwarven-iron-tipped-wood-plow", 534, -- Mushroom Farms existent in Knalga (so possibly also in other polities)
		"upgrade-dwarven-great-axe", 550, -- late iron age technologies already obtained by the dwarves by this point
		"upgrade-dwarven-shield-2", 550, -- late iron age technologies already obtained by the dwarves by this point
		"upgrade-dwarven-bearded-throwing-axe", 550, -- late iron age technologies already obtained by the dwarves by this point
		"upgrade-dwarven-ballista-bolt-1", 550, -- late iron age technologies already obtained by the dwarves by this point
	}
})

DefineFaction("Knalga", {
	Civilization = "dwarf",
	Type = "polity",
	Colors = {"red", "orange"},
	DefaultTier = "barony",
	Titles = {
		"monarchy", "barony", "Lordship"
	},
	MinisterTitles = {
		"head-of-state", "male", "monarchy", "barony", "Lord",
		"head-of-state", "female", "monarchy", "barony", "Lady"
	},
	FactionUpgrade = "upgrade-knalga-faction",
	HistoricalFactionDerivations = {400, "dwarf", "Norlund Clan"},
	HistoricalCapitals = {
		400, "Southern Tunnels"
	},
	HistoricalTechnologies = {
		"upgrade-dwarven-runewriting", 400, -- polities require writing
		"upgrade-dwarven-coinage", 400, -- the dwarves should already have Coinage technology by then
		"upgrade-dwarven-iron-tipped-wood-plow", 534, -- Mushroom Farms existent in Knalga
		"upgrade-dwarven-great-axe", 550, -- late iron age technologies already obtained by the dwarves by this point
		"upgrade-dwarven-shield-2", 550, -- late iron age technologies already obtained by the dwarves by this point
		"upgrade-dwarven-bearded-throwing-axe", 550, -- late iron age technologies already obtained by the dwarves by this point
		"upgrade-dwarven-ballista-bolt-1", 550 -- late iron age technologies already obtained by the dwarves by this point
	}
})

DefineFaction("Lyr", {
	Civilization = "dwarf",
	Type = "polity",
	ParentFaction = "Brising Clan",
	Colors = {"green", "teal"},
	DefaultTier = "barony",
	Titles = {
		"monarchy", "barony", "Lordship"
	},
	MinisterTitles = {
		"head-of-state", "male", "monarchy", "barony", "Lord",
		"head-of-state", "female", "monarchy", "barony", "Lady"
	},
--	FactionUpgrade = "upgrade-lyr-faction",
	Description = "The shining hall of Lyr was built by a number of skilled dwarven craftsmen who had split off from the Brising clan.",
	Background = "In Norse mythology Lyr was a magnificent hall which was built by Loki with the help of the dwarves Bari, Delling, Dori, Iri, Jari, Ori, Uni, Var and Vegdrasil. The giantess Menglad dwelled in the hall. \"Lyr\" means \"heat-holding\" in Old Norse.",
	HistoricalFactionDerivations = {400, "dwarf", "Brising Clan"},
	HistoricalCapitals = {
		400, "Lyr"
	},
	HistoricalTechnologies = {
		"upgrade-dwarven-runewriting", 400, -- polities require writing
		"upgrade-dwarven-coinage", 400, -- the dwarves should already have Coinage technology by then
		"upgrade-dwarven-iron-tipped-wood-plow", 534, -- Mushroom Farms existent in Knalga (so possibly also in other polities)
		"upgrade-dwarven-great-axe", 550, -- late iron age technologies already obtained by the dwarves by this point
		"upgrade-dwarven-shield-2", 550, -- late iron age technologies already obtained by the dwarves by this point
		"upgrade-dwarven-bearded-throwing-axe", 550, -- late iron age technologies already obtained by the dwarves by this point
		"upgrade-dwarven-ballista-bolt-1", 550, -- late iron age technologies already obtained by the dwarves by this point
	}
})

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
	FactionUpgrade = "upgrade-brising-clan-faction",
	Description = _("The Brising clan is one of the first dwarven clans ever known. It made its home in Svarinshaug, where they tamed the fierce forces of nature.")
})

DefineFaction("Eikinskjaldi Clan", { -- originally Oakenshield (from Dyson Logos' The Tomb of Durahn Oakenshield), translated into Norse to make it seem more dwarvish
	Civilization = "dwarf",
	Type = "tribe",
	Colors = {"brown"},
	DevelopsTo = {"Joruvellir", "Kal Kartha", "Knalga", "Lyr"},
	FactionUpgrade = "upgrade-eikinskjaldi-clan-faction",
	Description = _("The Eikinskjaldi clan traces its origins to Eikinskjaldi, a member of the legendary group of dwarves who migrated to the sandy plains of Joruvellir. One of Eikinskjaldi's descendants was Durahn, a mighty dwarven warlord who was buried in a rich tomb.")
})

DefineFaction("Norlund Clan", {
	Civilization = "dwarf",
	Type = "tribe",
	Colors = {"red", "orange"},
--	DevelopsTo = {"Kal Kartha", "Knalga"},
	DevelopsTo = {"Joruvellir", "Kal Kartha", "Knalga", "Lyr"},
	FactionUpgrade = "upgrade-norlund-clan-faction",
	Description = _("The Norlund clan has its origins in the Caverns of Chaincolt, and counts a number of skilled warriors and craftsmen amongst its ranks. Eventually the Norlund clan would unify much of dwarfdom into the Lordship of Knalga.")
})

DefineFaction("Shinsplitter Clan", {
	Civilization = "dwarf",
	Type = "tribe",
	Colors = {"green", "teal"},
	DevelopsTo = {"Joruvellir", "Kal Kartha", "Knalga", "Lyr"},
	FactionUpgrade = "upgrade-shinsplitter-clan-faction",
	Description = _("The warriors of the Shinsplitter clan are a wild bunch, and often go into frenzies during battle. In later times the Shinsplitters migrated east to the Highbrook Pass.")
})

DefineFaction("Shorbear Clan", {
	Civilization = "dwarf",
	Type = "tribe",
	Colors = {"blue", "cyan"},
--	DevelopsTo = {"Knalga"},
	DevelopsTo = {"Joruvellir", "Kal Kartha", "Knalga", "Lyr"},
	FactionUpgrade = "upgrade-shorbear-clan-faction",
	Description = _("Contrary to many of the other dwarven clans, which prefer to live in mountains, the Shorbears have made their homes in the hills. They are known as excellent crafters of tools.")
})

DefineFaction("Kal Kartha", {
	Civilization = "dwarf",
	Type = "polity",
	Colors = {"black"},
	DefaultTier = "barony",
	Titles = {
		"monarchy", "barony", "Lordship"
	},
	FactionUpgrade = "upgrade-kal-kartha-faction"
})

DefineFaction("Knalga", {
	Civilization = "dwarf",
	Type = "polity",
	Colors = {"red", "orange"},
	DefaultTier = "barony",
	Titles = {
		"monarchy", "barony", "Lordship"
	},
	FactionUpgrade = "upgrade-knalga-faction"
})

DefineFaction("Joruvellir", {
	Civilization = "dwarf",
	Type = "polity",
	Colors = {"brown"},
	DefaultTier = "barony",
	Titles = {
		"monarchy", "barony", "Lordship"
	},
	FactionUpgrade = "upgrade-joruvellir-faction"
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
--	FactionUpgrade = "upgrade-lyr-faction"
})

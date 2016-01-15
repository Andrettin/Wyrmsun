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

DefineFaction("Eikinskjaldi Clan", { -- originally Oakenshield (from Dyson Logos' The Tomb of Durahn Oakenshield), translated into Norse to make it seem more dwarvish
	Civilization = "dwarf",
	Type = "tribe",
	Colors = {"brown"},
	DevelopsTo = {"Joruvellir", "Kal Kartha", "Knalga", "Lyr"},
	FactionUpgrade = "upgrade-eikinskjaldi-clan-faction"
})

DefineFaction("Brising Clan", { -- clan of Modsognir
	Civilization = "dwarf",
	Type = "tribe",
	Colors = {"white"},
	DevelopsTo = {"Joruvellir", "Kal Kartha", "Knalga", "Lyr"},
	FactionUpgrade = "upgrade-brising-clan-faction"
})

DefineFaction("Norlund Clan", {
	Civilization = "dwarf",
	Type = "tribe",
	Colors = {"red", "orange"},
--	DevelopsTo = {"Kal Kartha", "Knalga"},
	DevelopsTo = {"Joruvellir", "Kal Kartha", "Knalga", "Lyr"},
	FactionUpgrade = "upgrade-norlund-clan-faction"
})

DefineFaction("Shinsplitter Clan", {
	Civilization = "dwarf",
	Type = "tribe",
	Colors = {"green", "teal"},
	DevelopsTo = {"Joruvellir", "Kal Kartha", "Knalga", "Lyr"},
	FactionUpgrade = "upgrade-shinsplitter-clan-faction"
})

DefineFaction("Shorbear Clan", {
	Civilization = "dwarf",
	Type = "tribe",
	Colors = {"blue", "cyan"},
--	DevelopsTo = {"Knalga"},
	DevelopsTo = {"Joruvellir", "Kal Kartha", "Knalga", "Lyr"},
	FactionUpgrade = "upgrade-shorbear-clan-faction"
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
	Colors = {"green", "teal"},
	DefaultTier = "barony",
	Titles = {
		"monarchy", "barony", "Lordship"
	},
	FactionUpgrade = "upgrade-lyr-faction"
})

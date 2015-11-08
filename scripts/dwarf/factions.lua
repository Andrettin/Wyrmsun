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
	Color = "brown",
	SecondaryColor = "brown",
	DevelopsTo = {"Kal Kartha", "Knalga", "Lyr"},
	FactionUpgrade = "upgrade-eikinskjaldi-clan-faction"
})

DefineFaction("Modsogning Clan", { -- clan of Modsognir
	Civilization = "dwarf",
	Type = "tribe",
	Color = "white",
	SecondaryColor = "white",
	DevelopsTo = {"Kal Kartha", "Knalga", "Lyr"},
	FactionUpgrade = "upgrade-modsogning-clan-faction"
})

DefineFaction("Norlund Clan", {
	Civilization = "dwarf",
	Type = "tribe",
	Color = "red",
	SecondaryColor = "orange",
	DevelopsTo = {"Kal Kartha", "Knalga"},
	FactionUpgrade = "upgrade-norlund-clan-faction"
})

DefineFaction("Shinsplitter Clan", {
	Civilization = "dwarf",
	Type = "tribe",
	Color = "green",
	SecondaryColor = "teal",
	DevelopsTo = {"Kal Kartha", "Knalga", "Lyr"},
	FactionUpgrade = "upgrade-shinsplitter-clan-faction"
})

DefineFaction("Shorbear Clan", {
	Civilization = "dwarf",
	Type = "tribe",
	Color = "blue",
	SecondaryColor = "cyan",
	DevelopsTo = {"Knalga"},
	FactionUpgrade = "upgrade-shorbear-clan-faction"
})

DefineFaction("Kal Kartha", {
	Civilization = "dwarf",
	Type = "polity",
	Color = "black",
	SecondaryColor = "black",
	DefaultTier = "barony",
	Titles = {
		"monarchy", "barony", "Lordship"
	},
	FactionUpgrade = "upgrade-kal-kartha-faction"
})

DefineFaction("Knalga", {
	Civilization = "dwarf",
	Type = "polity",
	Color = "red",
	SecondaryColor = "orange",
	DefaultTier = "barony",
	Titles = {
		"monarchy", "barony", "Lordship"
	},
	FactionUpgrade = "upgrade-knalga-faction"
})

DefineFaction("Lyr", {
	Civilization = "dwarf",
	Type = "polity",
	Color = "green",
	SecondaryColor = "teal",
	DefaultTier = "barony",
	Titles = {
		"monarchy", "barony", "Lordship"
	},
	FactionUpgrade = "upgrade-lyr-faction"
})

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

DefineFaction("chauci-tribe", {
	Name = "Chauci Tribe",
	Adjective = "Chauci",
	Civilization = "teuton",
	Type = "tribe",
	Color = "black",
	FactionUpgrade = "upgrade-faction-chauci-tribe",
	Icon = "icon-flag-five-purple-birds-on-green"
})

DefineFaction("cherusci-tribe", {
	Name = "Cherusci Tribe",
	Adjective = "Cherusci",
	Civilization = "teuton",
	Type = "tribe",
	Color = "teal",
	FactionUpgrade = "upgrade-faction-cherusci-tribe",
	Icon = "icon-flag-green-lion-on-purple"
})

DefineFaction("varini-tribe", {
	Name = "Varini Tribe",
	Adjective = "Varini",
	Civilization = "teuton",
	Type = "tribe",
	Color = "brown",
	FactionUpgrade = "upgrade-faction-varini-tribe",
	Icon = "icon-flag-green-lion-on-orange"
})

-- Teuton polities

DefineFaction("brandenburg", {
	Name = "Brandenburg",
	Civilization = "teuton",
	Type = "polity",
	Color = "blue",
	DefaultTier = "duchy",
	FactionUpgrade = "upgrade-faction-brandenburg",
	Icon = "icon-flag-five-red-birds-on-yellow",
	Adjective = "Brandenburgian",
	Titles = {
		"monarchy", "duchy", "Margravate"
	},
	MinisterTitles = {
		"ruler", "male", "monarchy", "duchy", "Margrave",
		"ruler", "female", "monarchy", "duchy", "Margrave" -- correct?
	}
})

DefineFaction("brunswick", {
	Name = "Brunswick",
	Adjective = "Brunswick",
	Civilization = "teuton",
	Type = "polity",
	Color = "green",
	DefaultTier = "duchy",
	FactionUpgrade = "upgrade-faction-brunswick",
	Icon = "icon-flag-old-austria"
})

DefineFaction("prussia", {
	Name = "Prussia", -- "Preussen"
	Civilization = "teuton",
	ParentFaction = "brandenburg",
	Type = "polity",
	Color = "black",
	DefaultTier = "duchy",
	FactionUpgrade = "upgrade-faction-prussia",
	Icon = "icon-flag-five-black-birds-on-purple",
	Adjective = "Prussian"
})

Load("scripts/civilizations/teuton/factions_austrian.lua")
Load("scripts/civilizations/teuton/factions_swabian.lua")

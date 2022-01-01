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
--      (c) Copyright 2015-2022 by Andrettin
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

DefineFaction("avione-tribe", {
	Name = "Avione Tribe",
	Adjective = "Avione",
	Civilization = "anglo-saxon", -- accurate?
	Type = "tribe",
	Color = "white",
	FactionUpgrade = "upgrade-faction-avione-tribe",
	Icon = "icon-flag-five-white-birds-on-red"
})

DefineFaction("gumeninga-tribe", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 101.
	Name = "Gumeninga Tribe",
	Adjective = "Gumeninga",
	Civilization = "anglo-saxon",
	Type = "tribe",
	Color = "brown",
	FactionUpgrade = "upgrade-faction-gumeninga-tribe", -- since all we know about them is their religious location, it makes sense to give them a priest-related bonus
	Icon = "icon-flag-five-black-birds-on-purple",
	Description = "The Gumeningas were an Anglo-Saxon tribe who inhabited the area of Middlesex.",
	Background = "The name of the Gumeningas was present in the place name \"Gumeninga hearh\" (the Old English name for Harrow on the Hill), meaning \"the holy place of the Gumeningas\"."
})

DefineFaction("lindisfaran-tribe", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 37.
	Name = "Lindisfaran Tribe",
	Adjective = "Lindisfaran",
	Civilization = "anglo-saxon",
	Type = "tribe",
	Color = "purple",
	FactionUpgrade = "upgrade-faction-lindisfaran-tribe",
	Icon = "icon-flag-five-white-birds-on-red",
	Description = "The Lindisfaran were an Anglian people who inhabited the lands between the rivers Witham and Humber."
})

DefineFaction("sussex", {
	Name = "Sussex",
	Civilization = "anglo-saxon",
	Type = "polity",
	Color = "blue",
	DefaultTier = "kingdom",
	FactionUpgrade = "upgrade-faction-sussex",
	Icon = "icon-flag-yellow-lion-on-cyan",
	Description = ""
})

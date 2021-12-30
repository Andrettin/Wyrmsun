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

DefineFaction("avione-tribe", {
	Name = "Avione Tribe",
	Adjective = "Avione",
	Civilization = "anglo-saxon", -- accurate?
	Type = "tribe",
	Color = "white",
	FactionUpgrade = "upgrade-faction-avione-tribe",
	Icon = "icon-flag-five-white-birds-on-red",
	DevelopsFrom = {"angle_tribe"}
})

DefineFaction("bernice-tribe", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 74.
	Name = "Bernice Tribe",
	Adjective = "Bernice",
	Civilization = "anglo-saxon",
	Type = "tribe",
	Color = "brown",
	FactionUpgrade = "upgrade-faction-bernice-tribe",
	Icon = "icon-flag-five-blue-birds-on-orange",
	Description = "The Bernice were an Anglian people who established themselves on the Northumbrian coast, eventually managing to conquer the surrounding Celtic territories.",
	DevelopsFrom = {"angle_tribe", "avione-tribe", "charude_tribe"}
})

DefineFaction("cantware-tribe", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 37.
	Name = "Cantware Tribe",
	Adjective = "Cantware",
	Civilization = "anglo-saxon",
	Type = "tribe",
	Color = "cyan",
	FactionUpgrade = "upgrade-faction-cantware-tribe",
	Icon = "icon-flag-old-austria",
	Description = "The Cantware were a Jutish people who established themselves in southeastern England. Their name means \"men of Kent\".",
	DevelopsFrom = {"jute_tribe"}
})

DefineFaction("dere-tribe", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 74.
	Name = "Dere Tribe",
	Adjective = "Dere",
	Civilization = "anglo-saxon",
	Type = "tribe",
	Color = "blue",
	FactionUpgrade = "upgrade-faction-dere-tribe",
	Icon = "icon-flag-five-red-birds-on-yellow",
	Description = "The Dere were a group of Anglian peoples, who originally dwelled in the central and eastern parts of modern Yorkshire. Their name comes from the British word \"deifr\" (meaning \"waters\"), likely due to their initial settlements being located at the confluence of multiple rivers into the Humber.",
	DevelopsFrom = {"angle_tribe", "avione-tribe", "charude_tribe"}
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
	Description = "The Lindisfaran were an Anglian people who inhabited the lands between the rivers Witham and Humber.",
	DevelopsFrom = {"angle_tribe", "avione-tribe", "charude_tribe"}
})

DefineFaction("mierce-tribe", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 37.
	Name = "Mierce Tribe",
	Adjective = "Mierce",
	Civilization = "anglo-saxon",
	Type = "tribe",
	Color = "white",
	FactionUpgrade = "upgrade-faction-mierce-tribe",
	Icon = "icon-flag-five-blue-birds-on-orange",
	Description = "The Mierce, or Mercians, were an Anglian people who inhabited marchlands close to Celtic territory.",
	DevelopsFrom = {"angle_tribe", "avione-tribe", "charude_tribe"}
})

DefineFaction("bernicia", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 75.
	Name = "Bernicia",
	Adjective = "Bernician",
	Civilization = "anglo-saxon",
	Type = "polity",
	Color = "brown",
	DefaultTier = "kingdom",
	FactionUpgrade = "upgrade-faction-bernicia",
	Icon = "icon-flag-five-blue-birds-on-orange",
	Description = "Bernicia was the kingdom founded by the Bernice people in Northumbria.",
	DevelopsFrom = {"bernice-tribe"}
})

DefineFaction("deira", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 75.
	Name = "Deira",
	Adjective = "Deiran",
	Civilization = "anglo-saxon",
	Type = "polity",
	Color = "blue",
	DefaultTier = "kingdom",
	FactionUpgrade = "upgrade-faction-deira",
	Icon = "icon-flag-five-red-birds-on-yellow",
	Description = "Deira was the kingdom founded by the Dere people in Northumbria.",
	DevelopsFrom = {"dere-tribe", "lindisfaran-tribe"}
})

DefineFaction("east-anglia", {
	Name = "East Anglia",
	Adjective = "East Anglian",
	Civilization = "anglo-saxon",
	Type = "polity",
	Color = "pink",
	DefaultTier = "kingdom",
	FactionUpgrade = "upgrade-faction-east-anglia",
	Icon = "icon-flag-five-orange-birds-on-black",
	Description = "",
	DevelopsFrom = {"angle_tribe", "avione-tribe", "charude_tribe"}
})

DefineFaction("essex", {
	Name = "Essex",
	Adjective = "Essexian",
	Civilization = "anglo-saxon",
	Type = "polity",
	Color = "purple",
	DefaultTier = "kingdom",
	FactionUpgrade = "upgrade-faction-essex",
	Icon = "icon-flag-five-white-birds-on-red",
	Description = "",
	DevelopsFrom = {"gumeninga-tribe"}
})

DefineFaction("jutland", {
	Name = "Jutland",
	Adjective = "Jutish",
	Civilization = "anglo-saxon",
	Type = "polity",
	Color = "red",
	DefaultTier = "duchy",
	FactionUpgrade = "upgrade-faction-jutland",
	Icon = "icon-flag-cyan-lion-on-red",
	DevelopsFrom = {"jute_tribe", "teuton_tribe"}
})

DefineFaction("kent", {
	Name = "Kent",
	Civilization = "anglo-saxon",
	Type = "polity",
	Color = "cyan",
	DefaultTier = "kingdom",
	FactionUpgrade = "upgrade-faction-kent",
	Description = "",
	Icon = "icon-flag-old-austria",
	DevelopsFrom = {"cantware-tribe"}
})

DefineFaction("mercia", {
	Name = "Mercia",
	Adjective = "Mercian",
	Civilization = "anglo-saxon",
	Type = "polity",
	Color = "white",
	DefaultTier = "kingdom",
	FactionUpgrade = "upgrade-faction-mercia",
	Icon = "icon-flag-five-blue-birds-on-orange",
	Description = "Mercia was an Anglo-Saxon kingdom in the central parts of England.",
	DevelopsFrom = {"mierce-tribe", "lindisfaran-tribe"}
})

DefineFaction("middle-anglia", {
	Name = "Middle Anglia",
	Adjective = "Middle Anglian",
	Civilization = "anglo-saxon",
	Type = "polity",
	Color = "violet",
	DefaultTier = "kingdom",
	FactionUpgrade = "upgrade-faction-middle-anglia",
	Icon = "icon-flag-five-purple-birds-on-green",
	Description = "",
	DevelopsFrom = {"angle_tribe", "avione-tribe", "charude_tribe"}
})

DefineFaction("middlesex", {
	Name = "Middlesex",
	Adjective = "Middlesexian",
	Civilization = "anglo-saxon",
	Type = "polity",
	Color = "blue",
	DefaultTier = "kingdom",
	FactionUpgrade = "upgrade-faction-middlesex",
	Icon = "icon-flag-five-purple-birds-on-green",
	Description = "",
	DevelopsFrom = {"gumeninga-tribe"}
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

DefineFaction("wessex", {
	Name = "Wessex",
	Adjective = "Wessexian",
	Civilization = "anglo-saxon",
	Type = "polity",
	Color = "red",
	DefaultTier = "kingdom",
	FactionUpgrade = "upgrade-faction-wessex",
	Icon = "icon-flag-cyan-lion-on-red",
	Description = "",
	HistoricalCapitals = {
		0, "winchester"
	}
})

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

DefineFaction("angle-tribe", {
	Name = "Angle Tribe",
	Civilization = "anglo-saxon",
	Type = "tribe",
	Color = "white",
	FactionUpgrade = "upgrade-faction-angle-tribe",
	Icon = "icon-flag-cyan-lion-on-red",
	DevelopsFrom = {"asa-tribe", "hersing-tribe", "hlesing-tribe", "ingaevone-tribe", "jarling-tribe", "karling-tribe", "skeldung-tribe", "thielung-tribe", "thralling-tribe"}
})

DefineFaction("avione-tribe", {
	Name = "Avione Tribe",
	Civilization = "anglo-saxon", -- accurate?
	Type = "tribe",
	Color = "white",
	FactionUpgrade = "upgrade-faction-avione-tribe",
	Icon = "icon-flag-five-white-birds-on-red",
	DevelopsFrom = {"angle-tribe"}
})

DefineFaction("charude-tribe", {
	Name = "Charude Tribe",
	Civilization = "anglo-saxon", -- accurate?
	Type = "tribe",
	Color = "purple",
	FactionUpgrade = "upgrade-faction-charude-tribe",
	Icon = "icon-flag-five-orange-birds-on-black",
	DevelopsFrom = {"angle-tribe"}
})

DefineFaction("jute-tribe", {
	Name = "Jute Tribe",
	Civilization = "anglo-saxon", -- accurate?
	Type = "tribe",
	Color = "red",
	FactionUpgrade = "upgrade-faction-jute-tribe",
	Icon = "icon-flag-five-purple-birds-on-green",
	DevelopsFrom = {"asa-tribe", "hersing-tribe", "hlesing-tribe", "ingaevone-tribe", "jarling-tribe", "karling-tribe", "skeldung-tribe", "thielung-tribe", "thralling-tribe"},
})

DefineFaction("teuton-tribe", {
	Name = "Teuton Tribe",
	Civilization = "anglo-saxon",
	Type = "tribe",
	Color = "orange",
	FactionUpgrade = "upgrade-faction-teuton-tribe",
	Icon = "icon-flag-five-red-birds-on-yellow",
	DevelopsFrom = {"asa-tribe", "hersing-tribe", "hlesing-tribe", "ingaevone-tribe", "jarling-tribe", "karling-tribe", "skeldung-tribe", "thielung-tribe", "thralling-tribe"}
})

DefineFaction("bernice-tribe", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 74.
	Name = "Bernice Tribe",
	Civilization = "anglo-saxon",
	Type = "tribe",
	Color = "brown",
	FactionUpgrade = "upgrade-faction-bernice-tribe",
	Icon = "icon-flag-five-blue-birds-on-orange",
	Description = "The Bernice were an Anglian people who established themselves on the Northumbrian coast, eventually managing to conquer the surrounding Celtic territories.",
	DevelopsFrom = {"angle-tribe", "avione-tribe", "charude-tribe"}
})

DefineFaction("cantware-tribe", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 37.
	Name = "Cantware Tribe",
	Civilization = "anglo-saxon",
	Type = "tribe",
	Color = "cyan",
	FactionUpgrade = "upgrade-faction-cantware-tribe",
	Icon = "icon-flag-old-austria",
	Description = "The Cantware were a Jutish people who established themselves in southeastern England. Their name means \"men of Kent\".",
	DevelopsFrom = {"jute-tribe"}
})

DefineFaction("dere-tribe", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 74.
	Name = "Dere Tribe",
	Civilization = "anglo-saxon",
	Type = "tribe",
	Color = "blue",
	FactionUpgrade = "upgrade-faction-dere-tribe",
	Icon = "icon-flag-five-red-birds-on-yellow",
	Description = "The Dere were a group of Anglian peoples, who originally dwelled in the central and eastern parts of modern Yorkshire. Their name comes from the British word \"deifr\" (meaning \"waters\"), likely due to their initial settlements being located at the confluence of multiple rivers into the Humber.",
	DevelopsFrom = {"angle-tribe", "avione-tribe", "charude-tribe"}
})

DefineFaction("gumeninga-tribe", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 101.
	Name = "Gumeninga Tribe",
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
	Civilization = "anglo-saxon",
	Type = "tribe",
	Color = "purple",
	FactionUpgrade = "upgrade-faction-lindisfaran-tribe",
	Icon = "icon-flag-five-white-birds-on-red",
	Description = "The Lindisfaran were an Anglian people who inhabited the lands between the rivers Witham and Humber.",
	DevelopsFrom = {"angle-tribe", "avione-tribe", "charude-tribe"}
})

DefineFaction("mierce-tribe", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 37.
	Name = "Mierce Tribe",
	Civilization = "anglo-saxon",
	Type = "tribe",
	Color = "white",
	FactionUpgrade = "upgrade-faction-mierce-tribe",
	Icon = "icon-flag-five-blue-birds-on-orange",
	Description = "The Mierce, or Mercians, were an Anglian people who inhabited marchlands close to Celtic territory.",
	DevelopsFrom = {"angle-tribe", "avione-tribe", "charude-tribe"}
})

DefineFaction("bernicia", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 75.
	Name = "Bernicia",
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
	Civilization = "anglo-saxon",
	Type = "polity",
	Color = "pink",
	DefaultTier = "kingdom",
	FactionUpgrade = "upgrade-faction-east-anglia",
	Icon = "icon-flag-five-orange-birds-on-black",
	Description = "",
	DevelopsFrom = {"angle-tribe", "avione-tribe", "charude-tribe"}
})

DefineFaction("essex", {
	Name = "Essex",
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
	Civilization = "anglo-saxon",
	Type = "polity",
	Color = "red",
	DefaultTier = "duchy",
	FactionUpgrade = "upgrade-faction-jutland",
	Icon = "icon-flag-cyan-lion-on-red",
	DevelopsFrom = {"jute-tribe", "teuton-tribe"}
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
	DevelopsFrom = {"cantware-tribe"},
	HistoricalUpgrades = {
		597, "upgrade-deity-christian-god", true, -- king Æthelberht of Kent converted to Christianity in 597 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 105-106.
--		616, "upgrade-deity-christian-god", false -- king Eadbald of Kent was openly pagan; he acceeded in 616 AD; later, however, he accepted Christianity; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 112.
		-- king Wihtred of Kent exempted the church from taxation in 695; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 142.
	}
})

DefineFaction("mercia", {
	Name = "Mercia",
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
	Civilization = "anglo-saxon",
	Type = "polity",
	Color = "violet",
	DefaultTier = "kingdom",
	FactionUpgrade = "upgrade-faction-middle-anglia",
	Icon = "icon-flag-five-purple-birds-on-green",
	Description = "",
	DevelopsFrom = {"angle-tribe", "avione-tribe", "charude-tribe"}
})

DefineFaction("middlesex", {
	Name = "Middlesex",
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
	Description = "",
	HistoricalUpgrades = {
		686, "upgrade-deity-christian-god", true -- king Æthelwalh of the South Saxons had been converted to Christianity by 686; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 138.
	}
})

DefineFaction("wessex", {
	Name = "Wessex",
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

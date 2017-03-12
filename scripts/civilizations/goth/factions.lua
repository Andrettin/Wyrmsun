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
--      (c) Copyright 2015-2017 by Andrettin
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

DefineFaction("goth-tribe", {
	Name = "Goth Tribe",
	Civilization = "goth",
	Type = "tribe",
	Colors = {"red"},
	DevelopsTo = {"gothia"},
	HistoricalFactionDerivations = {-325, "germanic", "yngling-tribe"}
})

DefineFaction("bastarnae-tribe", {
	Name = "Bastarnae Tribe",
	Civilization = "goth",
	Type = "tribe",
	Colors = {"blue"},
	HistoricalFactionDerivations = {-264, "goth", "goth-tribe"}
})

DefineFaction("burgundian-tribe", {
	Name = "Burgundian Tribe",
	Civilization = "goth",
	Type = "tribe",
	Colors = {"brown"},
	DevelopsTo = {"burgundy"},
	HistoricalFactionDerivations = {-264, "goth", "goth-tribe"}
})

DefineFaction("gepidae-tribe", {
	Name = "Gepidae Tribe",
	Civilization = "goth",
	Type = "tribe",
	Colors = {"black"}
})

DefineFaction("herulian-tribe", {
	Name = "Herulian Tribe",
	Civilization = "goth",
	Type = "tribe",
	Colors = {"green"},
	HistoricalFactionDerivations = {-27, "goth", "goth-tribe"}
})

DefineFaction("lugii-tribe", {
	Name = "Lugii Tribe",
	Civilization = "goth",
	Type = "tribe",
	Colors = {"purple"}
})

DefineFaction("ostrogoth-tribe", {
	Name = "Ostrogoth Tribe",
	Civilization = "goth",
	Type = "tribe",
	Colors = {"red"},
	DevelopsTo = {"gothia"},
	HistoricalFactionDerivations = {200, "goth", "goth-tribe"}
})

DefineFaction("rugian-tribe", {
	Name = "Rugian Tribe",
	Civilization = "goth",
	Type = "tribe",
	Colors = {"red", "orange"}, -- change to a better one?
	HistoricalFactionDerivations = {-264, "goth", "goth-tribe"}
})

DefineFaction("silingae-tribe", {
	Name = "Silingae Tribe",
	Civilization = "goth",
	Type = "tribe",
	Colors = {"orange"},
	HistoricalFactionDerivations = {-264, "goth", "goth-tribe"}
})

DefineFaction("turcilingian-tribe", {
	Name = "Turcilingian Tribe",
	Civilization = "goth",
	Type = "tribe",
	Colors = {"blue"},
	HistoricalFactionDerivations = {-264, "goth", "goth-tribe"}
})

DefineFaction("vandal-tribe", {
	Name = "Vandal Tribe",
	Civilization = "goth",
	Type = "tribe",
	Colors = {"cyan", "blue"},
	DevelopsTo = {"vandalia"},
	HistoricalFactionDerivations = {-264, "goth", "goth-tribe"}
})

DefineFaction("visigoth-tribe", {
	Name = "Visigoth Tribe",
	Civilization = "goth",
	Type = "tribe",
	Colors = {"pink"},
	DevelopsTo = {"gothia"},
	HistoricalFactionDerivations = {200, "goth", "goth-tribe"},
	HistoricalUpgrades = {
		573, "upgrade-teuton-coinage", true -- Visigothic gold tremissis coined in 573 AD; Source: F. Seebohm, "On the early currencies of the German Tribes", 1903, p. 188.
	}
})

-- polities

DefineFaction("burgundy", {
	Name = "Burgundy",
	Civilization = "goth",
	Type = "polity",
	Colors = {"brown"},
	DefaultTier = "kingdom",
	HistoricalFactionDerivations = {411, "goth", "burgundian-tribe"}, -- Kingdom of the Burgundians established by Gundahar (a Burgundian tribal chief) in 411 AD, with its center in Borbetomagus (Worms); Source: Norman Davies, "Vanished Kingdoms", 2012, pp. 91-93.
	HistoricalUpgrades = {
		0, "upgrade-teuton-writing", true, -- polities must have writing
		0, "upgrade-teuton-masonry", true
	}
})

DefineFaction("gothia", {
	Name = "Gothia",
	Civilization = "goth",
	Type = "polity",
	Colors = {"red"},
	DefaultTier = "kingdom"
})

DefineFaction("ostrogothia", {
	Name = "Ostrogothia",
	Civilization = "goth",
	Type = "polity",
	Colors = {"red"},
	DefaultTier = "kingdom",
	HistoricalUpgrades = {
		0, "upgrade-teuton-writing", true, -- polities must have writing
		0, "upgrade-teuton-masonry", true
	}
})

DefineFaction("vandalia", {
	Name = "Vandalia",
	Civilization = "goth",
	Type = "polity",
	Colors = {"cyan", "blue"},
	DefaultTier = "kingdom",
	HistoricalUpgrades = {
		0, "upgrade-teuton-writing", true, -- polities must have writing
		0, "upgrade-teuton-masonry", true
	}
})

DefineFaction("visigothia", {
	Name = "Visigothia",
	Civilization = "goth",
	Type = "polity",
	Colors = {"pink"},
	DefaultTier = "kingdom",
	HistoricalUpgrades = {
		0, "upgrade-teuton-writing", true, -- polities must have writing
		0, "upgrade-teuton-masonry", true
	}
})

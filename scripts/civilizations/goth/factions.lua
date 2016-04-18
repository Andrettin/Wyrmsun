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

DefineFaction("Goth Tribe", {
	Civilization = "goth",
	Type = "tribe",
	Colors = {"red"},
	DevelopsTo = {"Gothia"},
	HistoricalFactionDerivations = {-325, "germanic", "Yngling Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineFaction("Bastarnae Tribe", {
	Civilization = "goth",
	Type = "tribe",
	Colors = {"blue"},
	HistoricalFactionDerivations = {-264, "goth", "Goth Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineFaction("Burgundian Tribe", {
	Civilization = "goth",
	Type = "tribe",
	Colors = {"brown"},
	DevelopsTo = {"Burgundy"},
	HistoricalFactionDerivations = {-264, "goth", "Goth Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineFaction("Gepidae Tribe", {
	Civilization = "goth",
	Type = "tribe",
	Colors = {"black"}
})

DefineFaction("Herulian Tribe", {
	Civilization = "goth",
	Type = "tribe",
	Colors = {"green"},
	HistoricalFactionDerivations = {-27, "goth", "Goth Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineFaction("Lugii Tribe", {
	Civilization = "goth",
	Type = "tribe",
	Colors = {"purple"}
})

DefineFaction("Ostrogoth Tribe", {
	Civilization = "goth",
	Type = "tribe",
	Colors = {"red"},
	DevelopsTo = {"Gothia"},
	HistoricalFactionDerivations = {200, "goth", "Goth Tribe"}
})

DefineFaction("Rugian Tribe", {
	Civilization = "goth",
	Type = "tribe",
	Colors = {"red", "orange"}, -- change to a better one?
	HistoricalFactionDerivations = {-264, "goth", "Goth Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineFaction("Silingae Tribe", {
	Civilization = "goth",
	Type = "tribe",
	Colors = {"orange"},
	HistoricalFactionDerivations = {-264, "goth", "Goth Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineFaction("Turcilingian Tribe", {
	Civilization = "goth",
	Type = "tribe",
	Colors = {"blue"},
	HistoricalFactionDerivations = {-264, "goth", "Goth Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineFaction("Vandal Tribe", {
	Civilization = "goth",
	Type = "tribe",
	Colors = {"cyan", "blue"},
	DevelopsTo = {"Vandalia"},
	HistoricalFactionDerivations = {-264, "goth", "Goth Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineFaction("Visigoth Tribe", {
	Civilization = "goth",
	Type = "tribe",
	Colors = {"pink"},
	DevelopsTo = {"Gothia"},
	HistoricalFactionDerivations = {200, "goth", "Goth Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-coinage", 573 -- Visigothic gold tremissis coined in 573 AD; Source: F. Seebohm, "On the early currencies of the German Tribes", 1903, p. 188.
	}
})

-- polities

DefineFaction("Burgundy", {
	Civilization = "goth",
	Type = "polity",
	Colors = {"brown"},
	DefaultTier = "kingdom",
	HistoricalFactionDerivations = {411, "goth", "Burgundian Tribe"} -- Kingdom of the Burgundians established by Gundahar (a Burgundian tribal chief) in 411 AD, with its center in Borbetomagus (Worms); Source: Norman Davies, "Vanished Kingdoms", 2012, pp. 91-93.
})

DefineFaction("Gothia", {
	Civilization = "goth",
	Type = "polity",
	Colors = {"red"},
	DefaultTier = "kingdom"
})

DefineFaction("Vandalia", {
	Civilization = "goth",
	Type = "polity",
	Colors = {"cyan", "blue"},
	DefaultTier = "kingdom"
})

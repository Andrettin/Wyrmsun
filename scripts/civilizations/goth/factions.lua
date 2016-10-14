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
	SplitsTo = {"Bastarnae Tribe", "Burgundian Tribe", "Gepidae Tribe", "Herulian Tribe", "Lugii Tribe", "Ostrogoth Tribe", "Rugian Tribe", "Silingae Tribe", "Turcilingian Tribe", "Vandal Tribe", "Visigoth Tribe"},
	HistoricalFactionDerivations = {-325, "germanic", "Yngling Tribe"}
})

DefineFaction("Bastarnae Tribe", {
	Civilization = "goth",
	Type = "tribe",
	Colors = {"blue"},
	HistoricalFactionDerivations = {-264, "goth", "Goth Tribe"}
})

DefineFaction("Burgundian Tribe", {
	Civilization = "goth",
	Type = "tribe",
	Colors = {"brown"},
	DevelopsTo = {"Burgundy"},
	HistoricalFactionDerivations = {-264, "goth", "Goth Tribe"},
	PersonalNames = {
		"female", "Chrona", -- daughter of Chilperich who later became a nun; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 331.
		"male", "Aridius", -- chief advisor to Gundobad (was he actually a Burgundian?); Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 331.
		"male", "Chilperich", -- brother of Gundobad; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 329.
		"male", "Godegisel", -- brother of Gundobad; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 329.
		"male", "Godomar", -- Burgundian king from 523 on; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 329.
		"male", "Gundahar", -- Burgundian king; died in 436; became Gunnar/Gunther in the myths; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 329.
		"male", "Gundioc", -- Burgundian king (437-474); Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 329.
		"male", "Gundobad", -- Burgundian king from 474 on; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 329.
		"male", "Hanhualdus", -- presumably a male name; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.3.
		"male", "Sarwa", -- the Sörli of Norse mythology, son of Gudrun; Sörli is a reflex of Gothic "sarwa"; Source: Paul Beekman Taylor, "Searoniðas: Old Norse Magic and Old English Verse", 1983, p. 118.
		"male", "Sigismund" -- son of Gundobad; died in 523; became Sigmund (father of Sigurd) in the myths; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 329.
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
	HistoricalFactionDerivations = {-27, "goth", "Goth Tribe"}
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
	HistoricalFactionDerivations = {-264, "goth", "Goth Tribe"}
})

DefineFaction("Silingae Tribe", {
	Civilization = "goth",
	Type = "tribe",
	Colors = {"orange"},
	HistoricalFactionDerivations = {-264, "goth", "Goth Tribe"}
})

DefineFaction("Turcilingian Tribe", {
	Civilization = "goth",
	Type = "tribe",
	Colors = {"blue"},
	HistoricalFactionDerivations = {-264, "goth", "Goth Tribe"}
})

DefineFaction("Vandal Tribe", {
	Civilization = "goth",
	Type = "tribe",
	Colors = {"cyan", "blue"},
	DevelopsTo = {"Vandalia"},
	HistoricalFactionDerivations = {-264, "goth", "Goth Tribe"}
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
	HistoricalFactionDerivations = {411, "goth", "Burgundian Tribe"}, -- Kingdom of the Burgundians established by Gundahar (a Burgundian tribal chief) in 411 AD, with its center in Borbetomagus (Worms); Source: Norman Davies, "Vanished Kingdoms", 2012, pp. 91-93.
	HistoricalTechnologies = {
		"upgrade-teuton-writing", 0 -- polities must have writing
	}
})

DefineFaction("Gothia", {
	Civilization = "goth",
	Type = "polity",
	Colors = {"red"},
	DefaultTier = "kingdom"
})

DefineFaction("Ostrogothia", {
	Civilization = "goth",
	Type = "polity",
	Colors = {"red"},
	DefaultTier = "kingdom",
	HistoricalTechnologies = {
		"upgrade-teuton-writing", 0 -- polities must have writing
	}
})

DefineFaction("Vandalia", {
	Civilization = "goth",
	Type = "polity",
	Colors = {"cyan", "blue"},
	DefaultTier = "kingdom",
	HistoricalTechnologies = {
		"upgrade-teuton-writing", 0 -- polities must have writing
	}
})

DefineFaction("Visigothia", {
	Civilization = "goth",
	Type = "polity",
	Colors = {"pink"},
	DefaultTier = "kingdom",
	HistoricalTechnologies = {
		"upgrade-teuton-writing", 0 -- polities must have writing
	}
})

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

Load("scripts/civilizations/teuton/factions_frank.lua")

DefineFaction("Suebi Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Language = "old-high-german",
	Colors = {"black"},
	DefaultTier = "duchy",
	DevelopsTo = {"Galicia", "Bavaria", "Austria", "Carinthia"},
	SplitsTo = {"Buri Tribe", "Marcomanni Tribe", "Quadi Tribe", "Semnone Tribe"},
	FactionUpgrade = "upgrade-suebi-tribe-faction",
	Description = _("The Suebi were a powerful tribe in ancient Germania, battling the Romans a number of times. From the Suebi tribes such as the Marcomanni and the Quadi would originate. In the 5th century a group of Suebi settled and conquered Galicia, establishing a kingdom there."),
	HistoricalFactionDerivations = {-264, "germanic", "Skeldung Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineFaction("Saxon Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Language = "old-saxon",
	Colors = {"pink"},
	DevelopsTo = {"Saxony", "Brandenburg", "Essex", "Wessex", "England", "Prussia"},
	FactionUpgrade = "upgrade-saxon-tribe-faction",
	HistoricalFactionDerivations = {-264, "germanic", "Skeldung Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineFaction("Thuringian Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Language = "old-high-german",
	Colors = {"green"},
	FactionUpgrade = "upgrade-thuringian-tribe-faction",
	HistoricalFactionDerivations = {507, "teuton", "Suebi Tribe"} -- who did the Thuringians actually stem from?
})

DefineFaction("Alamanni Tribe", {
	Civilization = "teuton",
--	ParentFaction = "Suebi Tribe",
	Type = "tribe",
	Language = "old-high-german",
	Colors = {"blue"},
	DevelopsTo = {"Baden", "Swabia", "Switzerland", "Wurtemberg"},
	FactionUpgrade = "upgrade-alamanni-tribe-faction",
	HistoricalFactionDerivations = {481, "teuton", "Suebi Tribe"}
})

DefineFaction("Ampsivarii Tribe", {
	Civilization = "teuton",
	ParentFaction = "Frank Tribe", -- accurate?,
	Type = "tribe",
	Colors = {"cyan"},
	DevelopsTo = {"Drenthe", "Netherlands"}, -- same general area
	HistoricalFactionDerivations = {-27, "germanic", "Skeldung Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineFaction("Angle Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Language = "old-english",
	Colors = {"white"},
	DevelopsTo = {"England", "Bernicia", "Deira", "East Anglia", "Mercia", "Middle Anglia", "Northumbria", "Scotland"},
	SplitsTo = {"Bernice Tribe", "Dere Tribe"},
	FactionUpgrade = "upgrade-angle-tribe-faction",
	HistoricalFactionDerivations = {-264, "germanic", "Skeldung Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineFaction("Avione Tribe", {
	Civilization = "teuton",
	ParentFaction = "Angle Tribe", -- accurate?,
	Type = "tribe",
	Colors = {"white"}
})

DefineFaction("Batavian Tribe", {
	Civilization = "teuton",
	ParentFaction = "Frank Tribe", -- accurate?
	Type = "tribe",
	Colors = {"orange"},
	DevelopsTo = {"Holland", "Netherlands"}, -- same general area
	HistoricalFactionDerivations = {-264, "germanic", "Skeldung Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineFaction("Buri Tribe", {
	Civilization = "teuton", -- accurate?
	ParentFaction = "Suebi Tribe", -- accurate?
	Type = "tribe",
	Colors = {"violet"},
	DevelopsTo = {"Bavaria", "Galicia", "Austria", "Carinthia"}, -- accurate?
	HistoricalFactionDerivations = {161, "teuton", "Suebi Tribe"}
})

DefineFaction("Chamavi Tribe", {
	Civilization = "teuton",
	ParentFaction = "Frank Tribe", -- accurate?
	Type = "tribe",
	Colors = {"pink"},
	DevelopsTo = {"Overijssel", "Netherlands"}, -- same general area
	HistoricalFactionDerivations = {-27, "germanic", "Skeldung Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineFaction("Charude Tribe", {
	Civilization = "teuton", -- were the Charudes actually West Germanic?
	ParentFaction = "Angle Tribe", -- accurate?
	Type = "tribe",
	Colors = {"purple"},
	DevelopsTo = {"Jutland"}, -- same general area
	HistoricalFactionDerivations = {-27, "germanic", "Skeldung Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineFaction("Chatti Tribe", {
	Civilization = "teuton",
	ParentFaction = "Frank Tribe", -- accurate?
	Type = "tribe",
	Colors = {"yellow"},
	DevelopsTo = {"Hesse"}, -- same general area
	HistoricalFactionDerivations = {-264, "germanic", "Skeldung Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineFaction("Chauci Tribe", {
	Civilization = "teuton",
	ParentFaction = "Saxon Tribe", -- accurate?
	Type = "tribe",
	Colors = {"black"},
	DevelopsTo = {"Bremen"}, -- same general area
	HistoricalFactionDerivations = {-264, "germanic", "Skeldung Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineFaction("Cherusci Tribe", {
	Civilization = "teuton",
	ParentFaction = "Saxon Tribe", -- accurate?
	Type = "tribe",
	Colors = {"teal"},
	DevelopsTo = {"Brunswick", "Magdeburg"}, -- same general area
	HistoricalFactionDerivations = {-264, "germanic", "Skeldung Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineFaction("Frisian Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Language = "old-frisian",
	Colors = {"violet", "purple"}, -- change to a better one?
	DevelopsTo = {"Friesland", "Netherlands"},
	FactionUpgrade = "upgrade-frisian-tribe-faction",
	HistoricalFactionDerivations = {-264, "germanic", "Skeldung Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineFaction("Hermunduri Tribe", {
	Civilization = "teuton",
	ParentFaction = "Thuringian Tribe", -- accurate?
	Type = "tribe",
	Colors = {"blue"},
	DevelopsTo = {"Thuringia"}, -- same general area
	HistoricalFactionDerivations = {-264, "germanic", "Skeldung Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineFaction("Jute Tribe", {
	Civilization = "teuton",
	ParentFaction = "Angle Tribe", -- accurate?
	Type = "tribe",
	Colors = {"red", "white"},
	DevelopsTo = {"Jutland", "Kent"}
})

DefineFaction("Lombard Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Language = "old-high-german", -- should be Lombardic
	Colors = {"green"},
	DevelopsTo = {"Lombardy"},
	FactionUpgrade = "upgrade-lombard-tribe-faction",
	HistoricalFactionDerivations = {-264, "germanic", "Skeldung Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineFaction("Marcomanni Tribe", {
	Civilization = "teuton",
	ParentFaction = "Suebi Tribe",
	Type = "tribe",
	Colors = {"orange", "red"}, -- change to a better one?
	DevelopsTo = {"Bavarian Tribe", "Bavaria", "Galicia", "Austria", "Carinthia"},
	Description = _("The Marcomanni were a Suebic tribe. Eventually they migrated to the east, settling in Bohemia and expelling the local Boii tribe. In the 2nd century they fought the terrible Marcomannic Wars against the Romans. The name \"Marcomanni\" means \"march-men\", or \"frontier-men\"."),
	HistoricalFactionDerivations = {-9, "teuton", "Suebi Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	},
	HistoricalDiplomacyStates = {
		167, "latin", "Rome", "war", -- in 167 the Marcomanni and the Quadi (with the Marcomanni seemingly leading) attacked the Romans and won a battle against 20,000 of them near Carnuntum; Source: "Ancient Warfare VII.6", 2013, p. 7.
		171, "latin", "Rome", "peace" -- in 171 the Romans forced the Marcomanni and the Quadi to a peace; Source: "Ancient Warfare VII.6", 2013, p. 7.
	}
})

DefineFaction("Bavarian Tribe", {
	Civilization = "teuton",
--	ParentFaction = "Marcomanni Tribe",
	Type = "tribe",
	Language = "old-high-german",
	Colors = {"cyan", "white"},
	DevelopsTo = {"Bavaria", "Austria", "Carinthia"},
	FactionUpgrade = "upgrade-bavarian-tribe-faction",
	Description = _("The Bavarians were a West Germanic people, tracing their origins to the Marcomanni. Their name means \"men of Bohemia\", an appelation they gained due to the Marcomanni having established themselves in Bohemia under Marbod. The Bavarians migrated south, giving their newly-settled land the name it has to this day, Bavaria."),
	HistoricalFactionDerivations = {526, "teuton", "Marcomanni Tribe"}
})

DefineFaction("Quadi Tribe", {
	Civilization = "teuton",
	ParentFaction = "Suebi Tribe",
	Type = "tribe",
	Colors = {"brown"},
	DevelopsTo = {"Bavaria", "Galicia", "Austria", "Carinthia"}, -- the Quadi were a Suebic tribe
	HistoricalFactionDerivations = {-9, "teuton", "Suebi Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	},
	HistoricalDiplomacyStates = {
		167, "latin", "Rome", "war", -- in 167 the Marcomanni and the Quadi (with the Marcomanni seemingly leading) attacked the Romans and won a battle against 20,000 of them near Carnuntum; Source: "Ancient Warfare VII.6", 2013, p. 7.
		171, "latin", "Rome", "peace" -- in 171 the Romans forced the Marcomanni and the Quadi to a peace; Source: "Ancient Warfare VII.6", 2013, p. 7.
	}
})

DefineFaction("Semnone Tribe", {
	Civilization = "teuton",
	ParentFaction = "Suebi Tribe",
	Type = "tribe",
	Colors = {"brown"},
	DevelopsTo = {"Suebi Tribe", "Bavaria", "Austria", "Carinthia"},
	HistoricalFactionDerivations = {-264, "teuton", "Suebi Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineFaction("Sugambri Tribe", {
	Civilization = "teuton",
	ParentFaction = "Frank Tribe", -- accurate?
	Type = "tribe",
	Colors = {"black"},
	DevelopsTo = {"Westphalia"}, -- same general area
	HistoricalFactionDerivations = {-264, "germanic", "Skeldung Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineFaction("Teuton Tribe", {
	Civilization = "teuton",
	ParentFaction = "Angle Tribe", -- accurate?
	Type = "tribe",
	Colors = {"orange"},
	DevelopsTo = {"Jutland"}, -- same general area
	HistoricalFactionDerivations = {-264, "germanic", "Skeldung Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineFaction("Ubii Tribe", { -- Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, pp. 227-228.
	Civilization = "teuton",
	Type = "tribe",
	Language = "old-high-german", -- correct?
	FactionUpgrade = "upgrade-ubii-tribe-faction",
	Colors = {"purple"},
	DevelopsTo = {"Cologne", "Hesse"}, -- same general area
	Description = _("The Ubii were a West Germanic tribe which lived by the Rhine, north of the Main river. Due to their location in a central trading spot, they were more advanced than other Germanic tribes. Being allies of Rome, many of them eventually migrated west of the Rhine, dwelling around Colonia Agrippinenses (the modern Cologne). The ones who remained possibly became the Chatti."),
	HistoricalFactionDerivations = {-55, "teuton", "Suebi Tribe"}, -- they are first mentioned in Caesar's writings in 55 BC
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	},
	HistoricalDiplomacyStates = {
		-55, "teuton", "Suebi Tribe", "vassal" -- the Ubii were tributaries of the Suebi in 55 BC
	}
})

DefineFaction("Varini Tribe", {
	Civilization = "teuton",
	ParentFaction = "Saxon Tribe", -- accurate?
	Type = "tribe",
	Colors = {"brown"},
	DevelopsTo = {"Mecklenburg"}, -- same general area
	HistoricalFactionDerivations = {-264, "germanic", "Skeldung Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

-- Teuton polities

DefineFaction("Bavaria", {
	Civilization = "teuton",
	ParentFaction = "Bavarian Tribe",
	Type = "polity",
	Language = "high-german",
	Colors = {"cyan", "white"},
	DefaultTier = "duchy", -- Bavaria was a duchy in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	Titles = {
		"monarchy", "duchy", "Duchy",
		"monarchy", "kingdom", "Kingdom"
	},
	DevelopsTo = {"Holy Rome"}, -- Bavaria was a part of the Holy Roman Empire in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	HistoricalDiplomacyStates = {
		784, "teuton", "Francia", "war", -- Bavaria revolted against Frankish rule under Tassilo in 784; Source: "Medieval Warfare V.2", 2013, p. 8.
		787, "teuton", "Francia", "peace" -- Bavarian revolt against Frankish rule quashed by Charles the Great three years after 784; Source: "Medieval Warfare V.2", 2013, p. 8.
	}
})

DefineFaction("Saxony", {
	Civilization = "teuton",
	ParentFaction = "Saxon Tribe",
	Type = "polity",
	Language = "high-german",
	Colors = {"pink"},
	DefaultTier = "duchy", -- Saxony was a duchy in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	Titles = {
		"monarchy", "duchy", "Duchy",
		"monarchy", "kingdom", "Kingdom"
	},
	DevelopsTo = {"Holy Rome"} -- Saxony was a part of the Holy Roman Empire in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
})

DefineFaction("Swabia", {
	Civilization = "teuton",
	ParentFaction = "Alamanni Tribe",
	Language = "high-german",
	Type = "polity",
	Colors = {"orange"},
	DefaultTier = "duchy", -- Swabia was a duchy in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	DevelopsTo = {"Holy Rome"} -- Swabia was a part of the Holy Roman Empire in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
})

DefineFaction("Baden", {
	Civilization = "teuton",
	ParentFaction = "Swabia",
	Type = "polity",
	Colors = {"black"},
	DefaultTier = "grand duchy"
})

DefineFaction("Netherlands", {
	Civilization = "teuton",
	ParentFaction = "Francia",
	Type = "polity",
--	Language = "dutch",
	Colors = {"orange", "blue"},
	DefaultTier = "kingdom"
})

DefineFaction("Brabant", {
	Civilization = "teuton",
	ParentFaction = "Netherlands",
	Type = "polity",
	Colors = {"cyan"},
	DefaultTier = "duchy", -- Brabant was a duchy in 1559-1600; Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
	DevelopsTo = {"Netherlands"}
})

DefineFaction("Brandenburg", {
	Civilization = "teuton",
	ParentFaction = "Saxony",
	Type = "polity",
	Colors = {"blue"},
	DefaultTier = "duchy",
	Titles = {
		"monarchy", "duchy", "Margravate"
	},
	MinisterTitles = {
		"head-of-state", "male", "monarchy", "duchy", "Margrave",
		"head-of-state", "female", "monarchy", "duchy", "Margrave" -- correct?
	},
	DevelopsTo = {"Prussia"} -- allow Prussia to be formed by a Brandenburg that expands to encompass it
})

DefineFaction("Bremen", {
	Civilization = "teuton",
	ParentFaction = "Saxony",
	Type = "polity",
	Colors = {"black"},
	DefaultTier = "duchy"
})

DefineFaction("Brunswick", {
	Civilization = "teuton",
	ParentFaction = "Saxony",
	Type = "polity",
	Colors = {"green"},
	DefaultTier = "duchy"
})

DefineFaction("Cologne", {
	Civilization = "teuton",
	ParentFaction = "Francia", -- correct?
	Type = "polity",
	Language = "high-german",
	Colors = {"white"},
	DefaultTier = "duchy", -- Cologne was an archbishopric in 1378; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 78-79.
	Titles = {
		"theocracy", "duchy", "Archbishopric"
	}
})

DefineFaction("Drenthe", {
	Civilization = "teuton",
	ParentFaction = "Netherlands",
	Type = "polity",
	Colors = {"cyan"},
	DefaultTier = "county", -- Drenthe was a county in 1559-1600; Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
	DevelopsTo = {"Netherlands"}
})

DefineFaction("England", {
	Civilization = "teuton",
	ParentFaction = "Angle Tribe",
	Type = "polity",
	Language = "english",
	Colors = {"red", "white"},
	DefaultTier = "kingdom"
})

DefineFaction("Friesland", {
	Civilization = "teuton",
	ParentFaction = "Frisian Tribe",
	Type = "polity",
--	Language = "dutch", -- maybe should be modern Frisian instead?
	Colors = {"black"},
	DefaultTier = "barony", -- Friesland was a lordship in 1559-1600; Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
	Titles = {
		"monarchy", "barony", "Lordship"
	},
	DevelopsTo = {"Netherlands"}
})

DefineFaction("Galicia", { -- Suebi kingdom of Galicia
	Civilization = "teuton",
	ParentFaction = "Suebi Tribe",
	Type = "polity",
	Colors = {"black"},
	DefaultTier = "kingdom",
	HistoricalFactionDerivations = {486, "teuton", "Suebi Tribe"}
})

DefineFaction("Hesse", {
	Civilization = "teuton",
	ParentFaction = "Francia",
	Type = "polity",
	Language = "high-german",
	Colors = {"black"},
	DefaultTier = "duchy", -- Hesse was a landgraviate in 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
	Titles = {
		"monarchy", "duchy", "Landgraviate"
	},
	HistoricalTiers = {
		1815, "grand duchy" -- Hesse was a grand duchy in 1815-1866 (there were two German states called "Hesse" then, the Grand Duchy of Hesse and the Electorate of Hesse); Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	}
})

DefineFaction("Holland", {
	Civilization = "teuton",
	ParentFaction = "Netherlands",
	Type = "polity",
	Colors = {"red"},
	DefaultTier = "county", -- Holland was a county in 1559-1600; Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
	DevelopsTo = {"Netherlands"}
})

DefineFaction("Holy Rome", {
	Civilization = "teuton",
	ParentFaction = "Francia",
	Type = "polity",
	Language = "high-german",
	Colors = {"yellow"},
	DefaultTier = "empire",
	HistoricalFactionDerivations = {919, "teuton", "Francia"}
})

DefineFaction("Jutland", {
	Civilization = "teuton",
	ParentFaction = "Jute Tribe",
	Type = "polity",
	Colors = {"red", "white"},
	DefaultTier = "duchy"
})

DefineFaction("Lombardy", {
	Civilization = "teuton",
	ParentFaction = "Lombard Tribe",
	Type = "polity",
	Colors = {"green"},
	DefaultTier = "kingdom"
})

DefineFaction("Magdeburg", {
	Civilization = "teuton",
	ParentFaction = "Brandenburg",
	Type = "polity",
	Colors = {"black"},
	DefaultTier = "duchy", -- Magdeburg was an archbishopric in 1547; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 114-115.
	Titles = {
		"theocracy", "duchy", "Archbishopric"
	},
	HistoricalGovernmentTypes = {
		1547, "theocracy" -- Political situation in Central Europe in 1547; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 114-115.
	}
})

DefineFaction("Mecklenburg", {
	Civilization = "teuton",
	ParentFaction = "Saxony",
	Type = "polity",
	Colors = {"brown"},
	DefaultTier = "grand duchy",
	FactionUpgrade = "upgrade-mecklenburg-faction"
})

DefineFaction("Overijssel", {
	Civilization = "teuton",
	ParentFaction = "Netherlands",
	Type = "polity",
	Colors = {"pink"},
	DefaultTier = "barony", -- Overijssel was a lordship in 1559-1600; Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
	DevelopsTo = {"Netherlands"}
})

DefineFaction("Prussia", {
	Civilization = "teuton",
	ParentFaction = "Brandenburg",
	Type = "polity",
	Colors = {"black", "white"},
	DefaultTier = "duchy"
})

DefineFaction("Scotland", {
	Civilization = "teuton",
	ParentFaction = "England",
	Type = "polity",
	Language = "english",
	Colors = {"blue", "white"},
	DefaultTier = "kingdom"
})

DefineFaction("Switzerland", {
	Civilization = "teuton",
	ParentFaction = "Swabia",
	Type = "polity",
	Colors = {"red", "white"},
	DefaultTier = "kingdom",
	Titles = {
		"republic", "kingdom", "Confederation"
	}
})

DefineFaction("Thuringia", {
	Civilization = "teuton",
	ParentFaction = "Thuringian Tribe",
	Type = "polity",
	Colors = {"pink"},
	DefaultTier = "duchy", -- Thuringia was a landgraviate in 1378; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 78-79.
	Titles = {
		"monarchy", "duchy", "Landgraviate"
	}
})

DefineFaction("Westphalia", {
	Civilization = "teuton",
	ParentFaction = "Saxony",
	Type = "polity",
	Colors = {"black"},
	DefaultTier = "duchy"
})

DefineFaction("Wurtemberg", {
	Civilization = "teuton",
	ParentFaction = "Swabia",
	Type = "polity",
	Colors = {"red"},
	DefaultTier = "kingdom"
})

-- Non-Playable Polities

DefineFaction("Crimea", {
	Civilization = "teuton",
	Type = "polity",
	Colors = {"brown"},
	Playable = false,
	DefaultTier = "kingdom",
	Titles = {
		"monarchy", "kingdom", "Khanate"
	},
	MinisterTitles = {
		"head-of-state", "male", "monarchy", "kingdom", "Khan",
		"head-of-state", "female", "monarchy", "kingdom", "Khan" -- correct?
	}
})

DefineFaction("Turkey", {
	Civilization = "teuton",
	Type = "polity",
	Colors = {"brown"},
	Playable = false,
	DefaultTier = "empire"
})

Load("scripts/civilizations/teuton/factions_austrian.lua")
Load("scripts/civilizations/teuton/factions_english.lua")

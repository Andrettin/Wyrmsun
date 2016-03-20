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

DefineFaction("Suebi Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Language = "old-high-german",
	Colors = {"black"},
	DefaultTier = "duchy",
	DevelopsTo = {"Galicia", "Bavaria", "Austria"},
	FactionUpgrade = "upgrade-suebi-tribe-faction"
})

DefineFaction("Frank Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Language = "old-frankish",
	Colors = {"green", "orange"},
	DevelopsTo = {"Francia", "Franconia", "Austrasia", "Neustria", "Netherlands"},
	FactionUpgrade = "upgrade-frank-tribe-faction"
})

DefineFaction("Saxon Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Language = "old-saxon",
	Colors = {"pink"},
	DevelopsTo = {"Saxony", "Brandenburg", "England", "Prussia", "Scotland"},
	FactionUpgrade = "upgrade-saxon-tribe-faction"
})

DefineFaction("Thuringian Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Language = "old-high-german",
	Colors = {"green"},
	FactionUpgrade = "upgrade-thuringian-tribe-faction"
})

DefineFaction("Alamanni Tribe", {
	Civilization = "teuton",
--	ParentFaction = "Suebi Tribe",
	Type = "tribe",
	Language = "old-high-german",
	Colors = {"blue"},
	DevelopsTo = {"Baden", "Swabia", "Switzerland", "Wurtemberg"},
	FactionUpgrade = "upgrade-alamanni-tribe-faction"
})

DefineFaction("Ampsivarii Tribe", {
	Civilization = "teuton",
	ParentFaction = "Frank Tribe", -- accurate?,
	Type = "tribe",
	Colors = {"cyan"},
	DevelopsTo = {"Drenthe", "Netherlands"} -- same general area
})

DefineFaction("Angle Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Language = "old-english",
	Colors = {"white"},
	DevelopsTo = {"England", "Scotland"},
	FactionUpgrade = "upgrade-angle-tribe-faction"
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
	DevelopsTo = {"Holland", "Netherlands"} -- same general area
})

DefineFaction("Buri Tribe", {
	Civilization = "teuton", -- accurate?
	ParentFaction = "Suebi Tribe", -- accurate?
	Type = "tribe",
	Colors = {"brown"},
	DevelopsTo = {"Bavaria", "Galicia", "Austria"} -- accurate?
})

DefineFaction("Charude Tribe", {
	Civilization = "teuton", -- were the Charudes actually West Germanic?
	ParentFaction = "Angle Tribe", -- accurate?
	Type = "tribe",
	Colors = {"purple"},
	DevelopsTo = {"Jutland"} -- same general area
})

DefineFaction("Chamavi Tribe", {
	Civilization = "teuton",
	ParentFaction = "Frank Tribe", -- accurate?
	Type = "tribe",
	Colors = {"pink"},
	DevelopsTo = {"Overijssel", "Netherlands"} -- same general area
})

DefineFaction("Chatti Tribe", {
	Civilization = "teuton",
	ParentFaction = "Frank Tribe", -- accurate?
	Type = "tribe",
	Colors = {"yellow"},
	DevelopsTo = {"Hesse"} -- same general area
})

DefineFaction("Chauci Tribe", {
	Civilization = "teuton",
	ParentFaction = "Saxon Tribe", -- accurate?
	Type = "tribe",
	Colors = {"black"},
	DevelopsTo = {"Bremen"} -- same general area
})

DefineFaction("Cherusci Tribe", {
	Civilization = "teuton",
	ParentFaction = "Saxon Tribe", -- accurate?
	Type = "tribe",
	Colors = {"teal"},
	DevelopsTo = {"Brunswick", "Magdeburg"} -- same general area
})

DefineFaction("Frisian Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Language = "old-frisian",
	Colors = {"violet", "purple"}, -- change to a better one?
	DevelopsTo = {"Friesland", "Netherlands"},
	FactionUpgrade = "upgrade-frisian-tribe-faction"
})

DefineFaction("Hermunduri Tribe", {
	Civilization = "teuton",
	ParentFaction = "Thuringian Tribe", -- accurate?
	Type = "tribe",
	Colors = {"blue"},
	DevelopsTo = {"Thuringia"} -- same general area
})

DefineFaction("Jute Tribe", {
	Civilization = "teuton",
	ParentFaction = "Angle Tribe", -- accurate?
	Type = "tribe",
	Colors = {"red", "white"},
	DevelopsTo = {"Jutland"}
})

DefineFaction("Lombard Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Language = "old-high-german", -- should be Lombardic
	Colors = {"green"},
	FactionUpgrade = "upgrade-lombard-tribe-faction"
})

DefineFaction("Marcomanni Tribe", {
	Civilization = "teuton",
	ParentFaction = "Suebi Tribe",
	Type = "tribe",
	Colors = {"orange", "red"}, -- change to a better one?
	DevelopsTo = {"Bavaria", "Galicia", "Austria"}
})

DefineFaction("Bavarian Tribe", {
	Civilization = "teuton",
--	ParentFaction = "Marcomanni Tribe",
	Type = "tribe",
	Language = "old-high-german",
	Colors = {"cyan", "white"},
	DevelopsTo = {"Bavaria", "Austria"},
	FactionUpgrade = "upgrade-bavarian-tribe-faction"
})

DefineFaction("Quadi Tribe", {
	Civilization = "teuton",
	ParentFaction = "Suebi Tribe",
	Type = "tribe",
	Colors = {"brown"},
	DevelopsTo = {"Bavaria", "Galicia", "Austria"} -- the Quadi were a Suebic tribe
})

DefineFaction("Semnone Tribe", {
	Civilization = "teuton",
	ParentFaction = "Suebi Tribe",
	Type = "tribe",
	Colors = {"black"},
	DevelopsTo = {"Suebi Tribe", "Bavaria", "Austria"}
})

DefineFaction("Sugambri Tribe", {
	Civilization = "teuton",
	ParentFaction = "Frank Tribe", -- accurate?
	Type = "tribe",
	Colors = {"black"},
	DevelopsTo = {"Westphalia"} -- same general area
})

DefineFaction("Varini Tribe", {
	Civilization = "teuton",
	ParentFaction = "Saxon Tribe", -- accurate?
	Type = "tribe",
	Colors = {"brown"},
	DevelopsTo = {"Mecklenburg"} -- same general area
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
	DevelopsTo = {"Holy Rome"} -- Bavaria was a part of the Holy Roman Empire in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
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

DefineFaction("Austria", {
	Civilization = "teuton",
	ParentFaction = "Bavaria",
	Type = "polity",
	Colors = {"white", "red"},
	DefaultTier = "duchy",
	Titles = {
		"monarchy", "duchy", "Duchy",
		"monarchy", "grand duchy", "Archduchy"
	}
})

DefineFaction("Baden", {
	Civilization = "teuton",
	ParentFaction = "Swabia",
	Type = "polity",
	Colors = {"black"},
	DefaultTier = "grand duchy",
	Titles = {
		"monarchy", "grand duchy", "Grand Duchy"
	}
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
	DevelopsTo = {"Prussia"} -- allow Prussia to be formed by a Brandenburg that expands to encompass it
})

DefineFaction("Bremen", {
	Civilization = "teuton",
	ParentFaction = "Saxony",
	Type = "polity",
	Colors = {"black"},
	DefaultTier = "duchy",
	Titles = {
		"monarchy", "duchy", "Duchy"
	}
})

DefineFaction("Brunswick", {
	Civilization = "teuton",
	ParentFaction = "Saxony",
	Type = "polity",
	Colors = {"green"},
	DefaultTier = "duchy",
	Titles = {
		"monarchy", "duchy", "Duchy"
	}
})

DefineFaction("Francia", {
	Civilization = "teuton",
	ParentFaction = "Frank Tribe",
	Type = "polity",
	Colors = {"green", "orange"},
	DefaultTier = "kingdom",
	Titles = {
		"monarchy", "kingdom", "Kingdom"
	}
})

DefineFaction("Netherlands", {
	Civilization = "teuton",
	ParentFaction = "Francia",
	Type = "polity",
--	Language = "dutch",
	Colors = {"orange", "blue"},
	DefaultTier = "kingdom",
	Titles = {
		"monarchy", "kingdom", "Kingdom",
		"republic", "kingdom", "Republic"
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
	DefaultTier = "kingdom",
	Titles = {
		"monarchy", "kingdom", "Kingdom"
	}
})

DefineFaction("Austrasia", {
	Civilization = "teuton",
	ParentFaction = "Francia",
	Type = "polity",
	Language = "high-german",
	Colors = {"pink"},
	DefaultTier = "kingdom", -- correct?
	DevelopsTo = {"Holy Rome", "Francia"}
})

DefineFaction("Franconia", {
	Civilization = "teuton",
	ParentFaction = "Francia",
	Type = "polity",
	Language = "high-german",
	Colors = {"blue"},
	DefaultTier = "duchy", -- Franconia was a duchy in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	DevelopsTo = {"Holy Rome", "Francia"} -- Franconia was a part of the Holy Roman Empire in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
})

DefineFaction("Neustria", {
	Civilization = "teuton",
	ParentFaction = "Francia",
	Type = "polity",
	Language = "high-german",
	Colors = {"orange"},
	DefaultTier = "kingdom", -- correct?
	DevelopsTo = {"Holy Rome", "Francia"}
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
	Titles = {
		"monarchy", "kingdom", "Kingdom"
	}
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
	DefaultTier = "empire"
})

DefineFaction("Jutland", {
	Civilization = "teuton",
	ParentFaction = "Jute Tribe",
	Type = "polity",
	Colors = {"red", "white"},
	DefaultTier = "duchy",
	Titles = {
		"monarchy", "duchy", "Duchy"
	}
})

DefineFaction("Magdeburg", {
	Civilization = "teuton",
	ParentFaction = "Brandenburg",
	Type = "polity",
	Colors = {"black"},
	DefaultTier = "duchy", -- Magdeburg was an archbishopric in 1547; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 114-115.
	Titles = {
		"theocracy", "duchy", "Archbishopric"
	}
})

DefineFaction("Mecklenburg", {
	Civilization = "teuton",
	ParentFaction = "Saxony",
	Type = "polity",
	Colors = {"brown"},
	DefaultTier = "grand duchy",
	Titles = {
		"monarchy", "grand duchy", "Grand Duchy"
	},
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
	DefaultTier = "duchy",
	Titles = {
		"monarchy", "duchy", "Duchy",
		"monarchy", "kingdom", "Kingdom"
	}
})

DefineFaction("Scotland", {
	Civilization = "teuton",
	ParentFaction = "England",
	Type = "polity",
	Language = "english",
	Colors = {"blue", "white"},
	DefaultTier = "kingdom",
	Titles = {
		"monarchy", "kingdom", "Kingdom"
	}
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
	DefaultTier = "duchy",
	Titles = {
		"monarchy", "duchy", "Duchy"
	}
})

DefineFaction("Wurtemberg", {
	Civilization = "teuton",
	ParentFaction = "Swabia",
	Type = "polity",
	Colors = {"red"},
	DefaultTier = "kingdom",
	Titles = {
		"monarchy", "kingdom", "Kingdom"
	}
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
	}
})

DefineFaction("Hungary", {
	Civilization = "teuton",
	Type = "polity",
	Colors = {"green"},
	Playable = false,
	DefaultTier = "kingdom",
	Titles = {
		"monarchy", "kingdom", "Kingdom"
	}
})

DefineFaction("Turkey", {
	Civilization = "teuton",
	Type = "polity",
	Colors = {"brown"},
	Playable = false,
	DefaultTier = "empire",
	Titles = {
		"monarchy", "empire", "Empire"
	}
})

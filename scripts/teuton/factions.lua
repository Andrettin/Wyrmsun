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

DefineFaction("Suebi Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Color = "black",
	SecondaryColor = "black",
	DefaultTier = "duchy",
	DevelopsTo = {"Galicia", "Bavaria", "Austria"},
	FactionUpgrade = "upgrade-suebi-tribe-faction"
})

DefineFaction("Alamanni Tribe", {
	Civilization = "teuton",
--	ParentFaction = "Suebi Tribe",
	Type = "tribe",
	Color = "blue",
	SecondaryColor = "blue",
	DevelopsTo = {"Baden", "Switzerland", "Wurtemberg"}
})

DefineFaction("Ampsivarii Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Color = "cyan",
	SecondaryColor = "cyan",
	DevelopsTo = {"Drenthe", "Netherlands"} -- same general area
})

DefineFaction("Angle Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Color = "white",
	SecondaryColor = "white",
	DevelopsTo = {"England", "Scotland"}
})

DefineFaction("Avione Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Color = "white",
	SecondaryColor = "white"
})

DefineFaction("Batavian Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Color = "orange",
	SecondaryColor = "orange",
	DevelopsTo = {"Holland", "Netherlands"} -- same general area
})

DefineFaction("Buri Tribe", {
	Civilization = "teuton", -- accurate?
	ParentFaction = "Suebi Tribe", -- accurate?
	Type = "tribe",
	Color = "brown",
	SecondaryColor = "brown",
	DevelopsTo = {"Bavaria", "Galicia", "Austria"} -- accurate?
})

DefineFaction("Charude Tribe", {
	Civilization = "teuton", -- were the Charudes actually West Germanic?
	Type = "tribe",
	Color = "purple",
	SecondaryColor = "purple",
	DevelopsTo = {"Jutland"} -- same general area
})

DefineFaction("Chamavi Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Color = "pink",
	SecondaryColor = "pink",
	DevelopsTo = {"Overijssel", "Netherlands"} -- same general area
})

DefineFaction("Chatti Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Color = "yellow",
	SecondaryColor = "yellow",
	DevelopsTo = {"Hesse"} -- same general area
})

DefineFaction("Chauci Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Color = "black",
	SecondaryColor = "black",
	DevelopsTo = {"Bremen"} -- same general area
})

DefineFaction("Cherusci Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Color = "teal",
	SecondaryColor = "teal",
	DevelopsTo = {"Brunswick", "Magdeburg"} -- same general area
})

DefineFaction("Frank Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Color = "green",
	SecondaryColor = "orange",
	DevelopsTo = {"Francia", "Netherlands"}
})

DefineFaction("Frisian Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Color = "violet", -- change to a better one?
	SecondaryColor = "purple",
	DevelopsTo = {"Friesland", "Netherlands"}
})

DefineFaction("Hermunduri Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Color = "blue",
	SecondaryColor = "blue",
	DevelopsTo = {"Thuringia"} -- same general area
})

DefineFaction("Jute Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Color = "red",
	SecondaryColor = "white",
	DevelopsTo = {"Jutland"}
})

DefineFaction("Lombard Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Color = "green",
	SecondaryColor = "green"
})

DefineFaction("Marcomanni Tribe", {
	Civilization = "teuton",
	ParentFaction = "Suebi Tribe",
	Type = "tribe",
	Color = "orange", -- change to a better one?
	SecondaryColor = "red",
	DevelopsTo = {"Bavaria", "Galicia", "Austria"}
})

DefineFaction("Bavarian Tribe", {
	Civilization = "teuton",
--	ParentFaction = "Marcomanni Tribe",
	Type = "tribe",
	Color = "cyan",
	SecondaryColor = "white",
	DevelopsTo = {"Bavaria", "Austria"}
})

DefineFaction("Quadi Tribe", {
	Civilization = "teuton",
	ParentFaction = "Suebi Tribe",
	Type = "tribe",
	Color = "brown",
	SecondaryColor = "brown",
	DevelopsTo = {"Bavaria", "Galicia", "Austria"} -- the Quadi were a Suebic tribe
})

DefineFaction("Saxon Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Color = "pink",
	SecondaryColor = "pink",
	DevelopsTo = {"Saxony", "Brandenburg", "England", "Prussia", "Scotland"}
})

DefineFaction("Semnone Tribe", {
	Civilization = "teuton",
	ParentFaction = "Suebi Tribe",
	Type = "tribe",
	Color = "black",
	SecondaryColor = "black",
	DevelopsTo = {"Suebi Tribe", "Bavaria", "Austria"}
})

DefineFaction("Sugambri Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Color = "black",
	SecondaryColor = "black",
	DevelopsTo = {"Westphalia"} -- same general area
})

DefineFaction("Thuringian Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Color = "green",
	SecondaryColor = "green"
})

DefineFaction("Varini Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Color = "brown",
	SecondaryColor = "brown",
	DevelopsTo = {"Mecklenburg"} -- same general area
})

-- Teuton polities

DefineFaction("Baden", {
	Civilization = "teuton",
	ParentFaction = "Alamanni Tribe",
	Type = "polity",
	Color = "black",
	SecondaryColor = "black",
	DefaultTier = "grand duchy",
	Titles = {
		"monarchy", "grand duchy", "Grand Duchy"
	}
})

DefineFaction("Bavaria", {
	Civilization = "teuton",
	ParentFaction = "Bavarian Tribe",
	Type = "polity",
	Color = "cyan",
	SecondaryColor = "white",
	DefaultTier = "duchy",
	Titles = {
		"monarchy", "duchy", "Duchy",
		"monarchy", "kingdom", "Kingdom"
	}
})

DefineFaction("Austria", {
	Civilization = "teuton",
	ParentFaction = "Bavaria",
	Type = "polity",
	Color = "white",
	SecondaryColor = "red",
	DefaultTier = "duchy",
	Titles = {
		"monarchy", "duchy", "Duchy",
		"monarchy", "grand duchy", "Archduchy"
	}
})

DefineFaction("Brandenburg", {
	Civilization = "teuton",
	ParentFaction = "Saxony Tribe",
	Type = "polity",
	Color = "blue",
	SecondaryColor = "blue",
	DefaultTier = "duchy",
	Titles = {
		"monarchy", "duchy", "Margravate"
	},
	DevelopsTo = {"Prussia"} -- allow Prussia to be formed by a Brandenburg that expands to encompass it
})

DefineFaction("Bremen", {
	Civilization = "teuton",
	Type = "polity",
	Color = "black",
	SecondaryColor = "black",
	DefaultTier = "duchy",
	Titles = {
		"monarchy", "duchy", "Duchy"
	}
})

DefineFaction("Brunswick", {
	Civilization = "teuton",
	Type = "polity",
	Color = "green",
	SecondaryColor = "green",
	DefaultTier = "duchy",
	Titles = {
		"monarchy", "duchy", "Duchy"
	}
})

DefineFaction("Drenthe", {
	Civilization = "teuton",
	Type = "polity",
	Color = "cyan",
	SecondaryColor = "cyan",
	DefaultTier = "county", -- Drenthe was a county in 1559-1600; Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
	DevelopsTo = {"Netherlands"}
})

DefineFaction("England", {
	Civilization = "teuton",
	ParentFaction = "Angle Tribe",
	Type = "polity",
	Color = "red",
	SecondaryColor = "white",
	DefaultTier = "kingdom",
	Titles = {
		"monarchy", "kingdom", "Kingdom"
	}
})

DefineFaction("Francia", {
	Civilization = "teuton",
	ParentFaction = "Frank Tribe",
	Type = "polity",
	Color = "green",
	SecondaryColor = "orange",
	DefaultTier = "kingdom",
	Titles = {
		"monarchy", "kingdom", "Kingdom"
	}
})

DefineFaction("Friesland", {
	Civilization = "teuton",
	ParentFaction = "Frisian Tribe",
	Type = "polity",
	Color = "black",
	SecondaryColor = "black",
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
	Color = "black",
	SecondaryColor = "black",
	DefaultTier = "kingdom",
	Titles = {
		"monarchy", "kingdom", "Kingdom"
	}
})

DefineFaction("Hesse", {
	Civilization = "teuton",
	Type = "polity",
	Color = "black",
	SecondaryColor = "black",
	DefaultTier = "duchy", -- Hesse was a landgraviate in 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
	Titles = {
		"monarchy", "duchy", "Landgraviate"
	}
})

DefineFaction("Holland", {
	Civilization = "teuton",
	Type = "polity",
	Color = "red",
	SecondaryColor = "red",
	DefaultTier = "county", -- Holland was a county in 1559-1600; Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
	DevelopsTo = {"Netherlands"}
})

DefineFaction("Jutland", {
	Civilization = "teuton",
	Type = "polity",
	Color = "red",
	SecondaryColor = "white",
	DefaultTier = "duchy",
	Titles = {
		"monarchy", "duchy", "Duchy"
	}
})

DefineFaction("Magdeburg", {
	Civilization = "teuton",
	Type = "polity",
	Color = "black",
	SecondaryColor = "black",
	DefaultTier = "duchy", -- Magdeburg was an archbishopric in 1547; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 114-115.
	Titles = {
		"theocracy", "duchy", "Archbishopric"
	}
})

DefineFaction("Mecklenburg", {
	Civilization = "teuton",
	Type = "polity",
	Color = "brown",
	SecondaryColor = "brown",
	DefaultTier = "grand duchy",
	Titles = {
		"monarchy", "grand duchy", "Grand Duchy"
	}
})

DefineFaction("Netherlands", {
	Civilization = "teuton",
	Type = "polity",
	Color = "orange",
	SecondaryColor = "blue",
	DefaultTier = "kingdom",
	Titles = {
		"monarchy", "kingdom", "Kingdom",
		"republic", "kingdom", "Republic"
	}
})

DefineFaction("Overijssel", {
	Civilization = "teuton",
	Type = "polity",
	Color = "pink",
	SecondaryColor = "pink",
	DefaultTier = "barony", -- Overijssel was a lordship in 1559-1600; Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
	DevelopsTo = {"Netherlands"}
})

DefineFaction("Prussia", {
	Civilization = "teuton",
	Type = "polity",
	Color = "black",
	SecondaryColor = "white",
	DefaultTier = "duchy",
	Titles = {
		"monarchy", "duchy", "Duchy",
		"monarchy", "kingdom", "Kingdom"
	}
})

DefineFaction("Saxony", {
	Civilization = "teuton",
	ParentFaction = "Saxon Tribe",
	Type = "polity",
	Color = "pink",
	SecondaryColor = "pink",
	DefaultTier = "duchy",
	Titles = {
		"monarchy", "duchy", "Duchy",
		"monarchy", "kingdom", "Kingdom"
	}
})

DefineFaction("Scotland", {
	Civilization = "teuton",
	Type = "polity",
	Color = "blue",
	SecondaryColor = "white",
	DefaultTier = "kingdom",
	Titles = {
		"monarchy", "kingdom", "Kingdom"
	}
})

DefineFaction("Switzerland", {
	Civilization = "teuton",
	ParentFaction = "Alamanni Tribe",
	Type = "polity",
	Color = "red",
	SecondaryColor = "white",
	DefaultTier = "kingdom",
	Titles = {
		"republic", "kingdom", "Confederation"
	}
})

DefineFaction("Thuringia", {
	Civilization = "teuton",
	Type = "polity",
	Color = "pink",
	SecondaryColor = "pink",
	DefaultTier = "duchy" -- Thuringia was a landgraviate in 1378; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 78-79.
})

DefineFaction("Westphalia", {
	Civilization = "teuton",
	Type = "polity",
	Color = "black",
	SecondaryColor = "black",
	DefaultTier = "duchy",
	Titles = {
		"monarchy", "duchy", "Duchy"
	}
})

DefineFaction("Wurtemberg", {
	Civilization = "teuton",
	ParentFaction = "Alamanni Tribe",
	Type = "polity",
	Color = "red",
	SecondaryColor = "red",
	DefaultTier = "kingdom",
	Titles = {
		"monarchy", "kingdom", "Kingdom"
	}
})

-- Non-Playable Polities

DefineFaction("Crimea", {
	Civilization = "teuton",
	Type = "polity",
	Color = "brown",
	SecondaryColor = "brown",
	Playable = false,
	DefaultTier = "kingdom",
	Titles = {
		"monarchy", "kingdom", "Khanate"
	}
})

DefineFaction("Hungary", {
	Civilization = "teuton",
	Type = "polity",
	Color = "green",
	SecondaryColor = "green",
	Playable = false,
	DefaultTier = "kingdom",
	Titles = {
		"monarchy", "kingdom", "Kingdom"
	}
})

DefineFaction("Turkey", {
	Civilization = "teuton",
	Type = "polity",
	Color = "brown",
	SecondaryColor = "brown",
	Playable = false,
	DefaultTier = "empire",
	Titles = {
		"monarchy", "empire", "Empire"
	}
})

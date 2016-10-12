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

DefineFaction("Aequian Tribe", {
	Civilization = "latin",
	Type = "tribe",
	Colors = {"teal"}
})

DefineFaction("Elymian Tribe", {
	Civilization = "latin", -- were they actually an Italic people?
	Type = "tribe",
	Colors = {"yellow", "red"}
})

DefineFaction("Frentanian Tribe", {
	Civilization = "latin",
	Type = "tribe",
	Colors = {"orange"}
})

DefineFaction("Iapygian Tribe", {
	Civilization = "latin",
	Type = "tribe",
	Colors = {"teal"}
})

DefineFaction("Latin Tribe", {
	Civilization = "latin",
	Type = "tribe",
	Colors = {"red", "yellow"},
	DevelopsTo = {"Rome"},
	DefaultStartPos = {4126, 1096} -- Rome
})

DefineFaction("Marsian Tribe", {
	Civilization = "latin",
	Type = "tribe",
	Colors = {"brown"}
})

DefineFaction("Messapian Tribe", {
	Civilization = "latin",
	Type = "tribe",
	Colors = {"green"}
})

DefineFaction("Oenotrian Tribe", {
	Civilization = "latin",
	Type = "tribe",
	Colors = {"blue"}
})

DefineFaction("Picentian Tribe", {
	Civilization = "latin",
	Type = "tribe",
	Colors = {"green"}
})

DefineFaction("Sabellian Tribe", {
	Civilization = "latin",
	Type = "tribe",
	Colors = {"white"}
})

DefineFaction("Sabine Tribe", {
	Civilization = "latin",
	Type = "tribe",
	Colors = {"blue"}
})

DefineFaction("Samnite Tribe", {
	Civilization = "latin",
	Type = "tribe",
	Colors = {"yellow"}
})

DefineFaction("Sicanian Tribe", {
	Civilization = "latin", -- were they actually an Italic people?
	Type = "tribe",
	Colors = {"yellow", "red"}
})

DefineFaction("Sicel Tribe", {
	Civilization = "latin", -- were they actually an Italic people?
	Type = "tribe",
	Colors = {"red", "yellow"}
})

DefineFaction("Umbrian Tribe", {
	Civilization = "latin",
	Type = "tribe",
	Colors = {"pink"}
})

DefineFaction("Venetian Tribe", {
	Civilization = "latin", -- is not correct, but they could be reasonably close to justify it for game purposes
	Type = "tribe",
	Colors = {"teal"}
})

-- polities

DefineFaction("France", {
	Civilization = "latin",
	Type = "polity",
	Colors = {"blue", "white"},
	DefaultTier = "kingdom"
})

DefineFaction("Italy", {
	Civilization = "latin",
	Type = "polity",
	Colors = {"green", "red"},
	DefaultTier = "kingdom"
})

DefineFaction("Portugal", {
	Civilization = "latin",
	Type = "polity",
	Colors = {"green", "red"},
	DefaultTier = "kingdom"
})

DefineFaction("Romania", {
	Civilization = "latin",
	Type = "polity",
	Colors = {"yellow", "blue", "red"},
	DefaultTier = "kingdom"
})

DefineFaction("Moldavia", {
	Civilization = "latin",
	Type = "polity",
	ParentFaction = "Romania",
	Colors = {"brown"},
	DefaultTier = "duchy",
	Titles = {
		"monarchy", "duchy", "Principality"
	},
	MinisterTitles = {
		"head-of-state", "male", "monarchy", "duchy", "Prince",
		"head-of-state", "female", "monarchy", "duchy", "Princess"
	}
})

DefineFaction("Rome", {
	Civilization = "latin",
	Type = "polity",
	Colors = {"red", "yellow"},
	DefaultTier = "kingdom",
	DefaultStartPos = {4126, 1096}, -- Rome
	HistoricalFactionDerivations = {-500, "latin", "Latin Tribe"},
	HistoricalGovernmentTypes = {
		-500, "republic", -- correct?
		-27, "monarchy" -- Augustus assumed power in Rome; was this the date in which he actually became emperor?
	},
	HistoricalTiers = {
		-27, "empire" -- Rome was an empire under Augustus
	},
	HistoricalCapitals = {
		-500, "Latium" -- Rome was Rome's capital by 500 BC (this may seem like a silly remark, but even city-states may happen to change their capitals from their namesake to other cities); Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
	},
	HistoricalTechnologies = {
		"upgrade-teuton-masonry", -264, -- Rome should already have masonry technology by then
		"upgrade-teuton-coinage", -58 -- Silver currency existent in the Roman Republic during Caesar's time, and he issued gold currency during his campaigns in Gaul; Source: F. Seebohm, "On the early currencies of the German Tribes", 1903, p. 190.
	},
	HistoricalDiplomacyStates = {
		-54, "celt", "Eburones Tribe", "war", -- the Eburones attacked the Romans in 54 BC (instigated by the Treviri, of whom they were clients); Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, pp. 223-224.
		-54, "celt", "Nervii Tribe", "war", -- the Nervii allied with the Eburones to attack the Romans in 54 BC; Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, pp. 223-224.
		161, "greek", "Armenia", "sovereign" -- in 161 Armenia was a vassal state of Rome; Source: "Ancient Warfare VII.6", 2013, p. 6.
	}
})

DefineFaction("Savoy", {
	Civilization = "latin",
	Type = "polity",
	ParentFaction = "Italy",
	Colors = {"brown"},
	DefaultTier = "duchy"
})

DefineFaction("Sicily", {
	Civilization = "latin",
	Type = "polity",
	ParentFaction = "Italy",
	Colors = {"green"},
	DefaultTier = "duchy"
})

DefineFaction("Spain", {
	Civilization = "latin",
	Type = "polity",
	Colors = {"yellow", "red"},
	DefaultTier = "kingdom"
})

DefineFaction("Transylvania", {
	Civilization = "latin",
	Type = "polity",
	Colors = {"cyan"},
	DefaultTier = "duchy",
	Titles = {
		"monarchy", "duchy", "Principality"
	},
	MinisterTitles = {
		"head-of-state", "male", "monarchy", "duchy", "Prince",
		"head-of-state", "female", "monarchy", "duchy", "Princess"
	}
})

DefineFaction("Venice", {
	Civilization = "latin",
	Type = "polity",
	ParentFaction = "Italy",
	Colors = {"red"},
	DefaultTier = "duchy", -- Venice was a duchy in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	HistoricalGovernmentTypes = {
		919, "monarchy", -- Venice was a duchy in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1560, "republic" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	}
})

DefineFaction("Wallachia", {
	Civilization = "latin",
	Type = "polity",
	ParentFaction = "Romania",
	Colors = {"brown"},
	DefaultTier = "duchy",
	Titles = {
		"monarchy", "duchy", "Principality"
	},
	MinisterTitles = {
		"head-of-state", "male", "monarchy", "duchy", "Prince",
		"head-of-state", "female", "monarchy", "duchy", "Princess"
	}
})

--Load("scripts/civilizations/latin/factions_brazilian.lua")

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

Load("scripts/civilizations/celt/factions.lua")
Load("scripts/civilizations/dwarf/factions.lua")
Load("scripts/civilizations/germanic/factions.lua")
Load("scripts/civilizations/goth/factions.lua")
Load("scripts/civilizations/greek/factions.lua")
Load("scripts/civilizations/hittite/factions.lua")
Load("scripts/civilizations/latin/factions.lua")
Load("scripts/civilizations/minoan/factions.lua")
Load("scripts/civilizations/norse/factions.lua")
Load("scripts/civilizations/slav/factions.lua")
Load("scripts/civilizations/teuton/factions.lua")

-- Basque factions
DefineFaction("Maglemose Tribe", { -- Scandinavian pre-Indo-Europeans are very unlikely to have spoken a Vasconic language, but this fits better than making them Germanic (as the Vasconic languages are pre-Indo-European); based on the Maglemose culture of Zealand - not actually a tribe, but an archaeological culture, but this is still the most appropriate way to represent it in-game
	Civilization = "basque",
	Type = "tribe",
	Colors = {"red", "white"}
})

DefineFaction("Kongemose Tribe", { -- based on the Kongemose culture of Zealand - not actually a tribe, but an archaeological culture, but this is still the most appropriate way to represent it in-game
	Civilization = "basque",
	Type = "tribe",
	Colors = {"red", "white"},
	HistoricalFactionDerivations = {-6400, "basque", "Maglemose Tribe"} -- Maglemose cultured ended and Kongemose culture arose in Zealand in 6400 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 37.
})

DefineFaction("Ertebolle Tribe", { -- based on the Ertebolle culture of Zealand - not actually a tribe, but an archaeological culture, but this is still the most appropriate way to represent it in-game
	Civilization = "basque",
	Type = "tribe",
	Colors = {"red", "white"},
	HistoricalFactionDerivations = {-6400, "basque", "Kongemose Tribe"} -- Kongemose cultured ended and Ertebolle culture arose in Zealand in 5400 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 37.
})

DefineFaction("Funnelbeaker Tribe", { -- based on the Funnel Beaker culture of Zealand - not actually a tribe, but an archaeological culture, but this is still the most appropriate way to represent it in-game
	Civilization = "basque",
	Type = "tribe",
	Colors = {"red", "white"},
	HistoricalFactionDerivations = {-6400, "basque", "Ertebolle Tribe"}, -- Ertebolle cultured ended and Funnel Beaker culture arose in Zealand in 3950 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 37.
	HistoricalTechnologies = {
		"upgrade-germanic-wood-plow", -3600, -- Primitive ard (plow) appears in Northern Europe c. 3600 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 297.
	}
})

DefineFaction("Gylfing Tribe", { -- Scandinavian pre-Indo-Europeans are very unlikely to have spoken a Vasconic language, but this fits better than making them Germanic (as the Vasconic languages are pre-Indo-European)
	Civilization = "basque",
	Type = "tribe",
	Colors = {"green", "teal"},
	HistoricalTechnologies = {
		"upgrade-germanic-wood-plow", -3600, -- Primitive ard (plow) appears in Northern Europe c. 3600 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 297.
	}
})

DefineFaction("Cardialware Tribe", {
	Civilization = "basque",
	Type = "tribe",
	Colors = {"yellow"}
})

DefineFaction("Bellbeaker Tribe", {
	Civilization = "basque",
	Type = "tribe",
	Colors = {"green"}
})

DefineFaction("Linearware Tribe", {
	Civilization = "basque",
	Type = "tribe",
	Colors = {"yellow"}
})

-- Etruscan factions
DefineFaction("Etruscan Tribe", {
	Civilization = "etruscan",
	Type = "tribe",
	Colors = {"yellow"},
	DevelopsTo = {"Etruria"}
})

DefineFaction("Etruria", {
	Civilization = "etruscan",
	Type = "polity",
	Colors = {"yellow"},
	DefaultTier = "kingdom"
})

DefineFaction("Acthnic Tribe", {
	Civilization = "gnome",
	Type = "tribe",
	Colors = {"red"},
	DevelopsTo = {"Untersberg"}
})

DefineFaction("Cubital Tribe", {
	Civilization = "gnome",
	Type = "tribe",
	Colors = {"brown"},
	DevelopsTo = {"Untersberg"}
})

DefineFaction("Sagan Tribe", {
	Civilization = "gnome",
	Type = "tribe",
	Colors = {"green"},
	DevelopsTo = {"Untersberg"}
})

DefineFaction("Untersberg", {
	Civilization = "gnome",
	Type = "polity",
	Colors = {"purple"},
	DefaultTier = "kingdom"
})

DefineFaction("Khag Tribe", {
	Civilization = "goblin",
	Type = "tribe",
	Colors = {"blue", "cyan"}
})

DefineFaction("Lggi Tribe", {
	Civilization = "goblin",
	Type = "tribe",
	Colors = {"blue", "cyan"}
})

DefineFaction("Illyrian Tribe", {
	Civilization = "illyrian",
	Type = "tribe",
	Colors = {"red"}
})

DefineFaction("Taulantii Tribe", {
	Civilization = "illyrian",
	Type = "tribe",
	Colors = {"blue"}
})

DefineFaction("Kobolds", {
	Civilization = "kobold",
	Type = "tribe",
	Colors = {"violet", "purple"}
})

DefineFaction("Alazone Tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	Civilization = "persian", -- accurate?
	Type = "tribe",
	Colors = {"orange"}
})

DefineFaction("Aorsi Tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	Civilization = "persian", -- accurate?
	Type = "tribe",
	Colors = {"violet"}
})

DefineFaction("Iazyge Tribe", {
	Civilization = "persian", -- accurate?
	Type = "tribe",
	Colors = {"violet"}
})

DefineFaction("Navari Tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	Civilization = "persian", -- accurate?
	Type = "tribe",
	Colors = {"blue"}
})

DefineFaction("Roxolani Tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	Civilization = "persian", -- accurate?
	Type = "tribe",
	Colors = {"red"}
})

DefineFaction("Sarmatian Tribe", {
	Civilization = "persian",
	Type = "tribe",
	Colors = {"red"}
})

DefineFaction("Scythian Tribe", {
	Civilization = "persian",
	Type = "tribe",
	Colors = {"green"}
})

DefineFaction("Persia", {
	Civilization = "persian",
	Type = "polity",
	Colors = {"yellow", "green"},
	DefaultTier = "kingdom"
})

DefineFaction("Carthage", {
	Civilization = "phoenician",
	Type = "polity",
	Colors = {"black"}
})

DefineFaction("Bryges Tribe", {
	Civilization = "phrygian",
	Type = "tribe",
	Colors = {"violet"}
})

DefineFaction("Apsinthii Tribe", {
	Civilization = "thracian",
	Type = "tribe",
	Colors = {"purple"}
})

DefineFaction("Carpi Tribe", {
	Civilization = "thracian", -- accurate?
	Type = "tribe",
	Colors = {"blue"}
})

DefineFaction("Edoni Tribe", {
	Civilization = "thracian",
	Type = "tribe",
	Colors = {"white"}
})

DefineFaction("Getae Tribe", {
	Civilization = "thracian",
	Type = "tribe",
	Colors = {"teal"}
})

DefineFaction("Odomanti Tribe", {
	Civilization = "thracian", -- were they really Thracian?
	Type = "tribe",
	Colors = {"black"}
})

DefineFaction("Odrysae Tribe", {
	Civilization = "thracian",
	Type = "tribe",
	Colors = {"red"}
})

DefineFaction("Triballi Tribe", {
	Civilization = "thracian",
	Type = "tribe",
	Colors = {"green"}
})

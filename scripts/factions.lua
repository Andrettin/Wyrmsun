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

-- Basque factions
DefineFaction("Ertebolle Tribe", { -- based on the Ertebolle culture of Zealand - not actually a tribe, but an archaeological culture, but this is still the most appropriate way to represent it in-game
	Civilization = "basque",
	Type = "tribe",
	Color = "red",
	SecondaryColor = "white"
})

DefineFaction("Funnelbeaker Tribe", { -- based on the Funnel Beaker culture of Zealand - not actually a tribe, but an archaeological culture, but this is still the most appropriate way to represent it in-game
	Civilization = "basque",
	Type = "tribe",
	Color = "red",
	SecondaryColor = "white"
})

DefineFaction("Gylfing Tribe", { -- Scandinavian pre-Indo-Europeans are very unlikely to have spoken a Vasconic language, but this fits better than making them Germanic (as the Vasconic languages are pre-Indo-European)
	Civilization = "basque",
	Type = "tribe",
	Color = "green",
	SecondaryColor = "teal"
})

DefineFaction("Kongemose Tribe", { -- based on the Kongemose culture of Zealand - not actually a tribe, but an archaeological culture, but this is still the most appropriate way to represent it in-game
	Civilization = "basque",
	Type = "tribe",
	Color = "red",
	SecondaryColor = "white"
})

DefineFaction("Maglemose Tribe", { -- Scandinavian pre-Indo-Europeans are very unlikely to have spoken a Vasconic language, but this fits better than making them Germanic (as the Vasconic languages are pre-Indo-European); based on the Maglemose culture of Zealand - not actually a tribe, but an archaeological culture, but this is still the most appropriate way to represent it in-game
	Civilization = "basque",
	Type = "tribe",
	Color = "red",
	SecondaryColor = "white"
})

DefineFaction("Cardialware Tribe", {
	Civilization = "basque",
	Type = "tribe",
	Color = "yellow",
	SecondaryColor = "yellow"
})

DefineFaction("Bellbeaker Tribe", {
	Civilization = "basque",
	Type = "tribe",
	Color = "green",
	SecondaryColor = "green"
})

DefineFaction("Linearware Tribe", {
	Civilization = "basque",
	Type = "tribe",
	Color = "yellow",
	SecondaryColor = "yellow"
})

-- Germanic factions
DefineFaction("Asa Tribe", {
	Civilization = "germanic",
	Type = "tribe",
	Color = "orange",
	SecondaryColor = "red"
})

-- just to give some alternative Germanic tribes
DefineFaction("Jastorf Tribe", {
	Civilization = "germanic",
	Type = "tribe",
	Color = "blue",
	SecondaryColor = "blue"
})

DefineFaction("Ripdorf Tribe", {
	Civilization = "germanic",
	Type = "tribe",
	Color = "yellow",
	SecondaryColor = "yellow"
})

DefineFaction("Seedorf Tribe", {
	Civilization = "germanic",
	Type = "tribe",
	Color = "cyan",
	SecondaryColor = "cyan"
})

-- Etruscan factions
DefineFaction("Etruscan Tribe", {
	Civilization = "etruscan",
	Type = "tribe",
	Color = "yellow",
	SecondaryColor = "yellow",
	DevelopsTo = {"Etruria"}
})

DefineFaction("Etruria", {
	Civilization = "etruscan",
	Type = "polity",
	Color = "yellow",
	SecondaryColor = "yellow"
})

DefineFaction("Acthnic Tribe", {
	Civilization = "gnome",
	Type = "tribe",
	Color = "red",
	SecondaryColor = "red",
	DevelopsTo = {"Untersberg"}
})

DefineFaction("Cubital Tribe", {
	Civilization = "gnome",
	Type = "tribe",
	Color = "brown",
	SecondaryColor = "brown",
	DevelopsTo = {"Untersberg"}
})

DefineFaction("Sagan Tribe", {
	Civilization = "gnome",
	Type = "tribe",
	Color = "green",
	SecondaryColor = "green",
	DevelopsTo = {"Untersberg"}
})

DefineFaction("Untersberg", {
	Civilization = "gnome",
	Type = "polity",
	Color = "purple",
	SecondaryColor = "purple",
	DefaultTier = "kingdom",
	Titles = {
		"monarchy", "kingdom", "Kingdom"
	}
})

DefineFaction("Khag Tribe", {
	Civilization = "goblin",
	Type = "tribe",
	Color = "blue",
	SecondaryColor = "cyan"
})

DefineFaction("Lggi Tribe", {
	Civilization = "goblin",
	Type = "tribe",
	Color = "blue",
	SecondaryColor = "cyan"
})

DefineFaction("Illyrian Tribe", {
	Civilization = "illyrian",
	Type = "tribe",
	Color = "red",
	SecondaryColor = "red"
})

DefineFaction("Taulantii Tribe", {
	Civilization = "illyrian",
	Type = "tribe",
	Color = "blue",
	SecondaryColor = "blue"
})

DefineFaction("Kobolds", {
	Civilization = "kobold",
	Type = "tribe",
	Color = "violet",
	SecondaryColor = "purple"
})

DefineFaction("Iazyge Tribe", {
	Civilization = "persian", -- accurate?
	Type = "tribe",
	Color = "violet",
	SecondaryColor = "violet"
})

DefineFaction("Sarmatian Tribe", {
	Civilization = "persian",
	Type = "tribe",
	Color = "red",
	SecondaryColor = "red"
})

DefineFaction("Scythian Tribe", {
	Civilization = "persian",
	Type = "tribe",
	Color = "green",
	SecondaryColor = "green"
})

DefineFaction("Persia", {
	Civilization = "persian",
	Type = "polity",
	Color = "yellow",
	SecondaryColor = "green",
	DefaultTier = "kingdom",
	Titles = {
		"monarchy", "kingdom", "Kingdom"
	}
})

DefineFaction("Carthage", {
	Civilization = "phoenician",
	Type = "polity",
	Color = "black",
	SecondaryColor = "black"
})

DefineFaction("Bryges Tribe", {
	Civilization = "phrygian",
	Type = "tribe",
	Color = "violet",
	SecondaryColor = "violet"
})

DefineFaction("Apsinthii Tribe", {
	Civilization = "thracian",
	Type = "tribe",
	Color = "purple",
	SecondaryColor = "purple"
})

DefineFaction("Carpi Tribe", {
	Civilization = "thracian", -- accurate?
	Type = "tribe",
	Color = "blue",
	SecondaryColor = "blue"
})

DefineFaction("Edoni Tribe", {
	Civilization = "thracian",
	Type = "tribe",
	Color = "white",
	SecondaryColor = "white"
})

DefineFaction("Getae Tribe", {
	Civilization = "thracian",
	Type = "tribe",
	Color = "teal",
	SecondaryColor = "teal"
})

DefineFaction("Odomanti Tribe", {
	Civilization = "thracian", -- were they really Thracian?
	Type = "tribe",
	Color = "black",
	SecondaryColor = "black"
})

DefineFaction("Odrysae Tribe", {
	Civilization = "thracian",
	Type = "tribe",
	Color = "red",
	SecondaryColor = "red"
})

DefineFaction("Triballi Tribe", {
	Civilization = "thracian",
	Type = "tribe",
	Color = "green",
	SecondaryColor = "green"
})

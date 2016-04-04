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
--      (c) Copyright 2016 by Andrettin
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

DefineFaction("Bernice Tribe", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 74.
	Civilization = "teuton",
	ParentFaction = "Angle Tribe",
	Type = "tribe",
	Language = "old-english",
	Colors = {"brown"},
	DevelopsTo = {"Bernicia", "England", "Scotland"},
	FactionUpgrade = "upgrade-bernice-tribe-faction",
	Description = "The Bernice were an Anglian people who established themselves on the Northumbrian coast, eventually managing to conquer the surrounding Celtic territories.",
	HistoricalFactionDerivations = {600, "teuton", "Angle Tribe"} -- In 600 AD, the Bernice people (who were Anglians) were centered in Bamburgh; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 74.
})

DefineFaction("Dere Tribe", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 74.
	Civilization = "teuton",
	ParentFaction = "Angle Tribe",
	Type = "tribe",
	Language = "old-english",
	Colors = {"blue"},
	DevelopsTo = {"Deira", "England", "Scotland"},
	FactionUpgrade = "upgrade-bernice-tribe-faction",
	Description = "The Dere were a group of Anglian peoples, who originally dwelled in the central and eastern parts of modern Yorkshire. Their name comes from the British word \"deifr\" (meaning \"waters\"), likely due to their initial settlements being located at the confluence of multiple rivers into the Humber.",
	HistoricalFactionDerivations = {500, "teuton", "Angle Tribe"} -- The Dere (a collection of Anglian peoples) were in possession of York in 500 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 74.
})

DefineFaction("Bernicia", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 75.
	Civilization = "teuton",
	ParentFaction = "Bernice Tribe",
	Type = "polity",
	Language = "old-english",
	Colors = {"brown"},
	DefaultTier = "kingdom",
	DevelopsTo = {"England", "Scotland"},
	Description = "Bernicia was the kingdom founded by the Bernice people in Northumbria.",
	HistoricalFactionDerivations = {588, "teuton", "Bernice Tribe"} -- according to tradition, Æthelric of Bernicia acquired the kingdom of Deira upon its king Ælle's death in 588 AD; and Bernicia had a king then, their kingdom already existed, too
})

DefineFaction("Deira", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 75.
	Civilization = "teuton",
	ParentFaction = "Dere Tribe",
	Type = "polity",
	Language = "old-english",
	Colors = {"blue"},
	DefaultTier = "kingdom",
	DevelopsTo = {"England", "Scotland"},
	Description = "Deira was the kingdom founded by the Dere people in Northumbria.",
	HistoricalFactionDerivations = {588, "teuton", "Dere Tribe"} -- according to tradition, Æthelric of Bernicia acquired the kingdom of Deira upon its king Ælle's death in 588 AD; and since their king died in this year, the kingdom existed then
})

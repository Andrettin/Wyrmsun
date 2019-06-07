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
--      (c) Copyright 2015-2019 by Andrettin
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

DefineFaction("austria", {
	Name = "Austria",
	Civilization = "teuton",
	Type = "polity",
	PrimaryColor = "white",
	SecondaryColor = "red",
	DefaultTier = "duchy",
	FactionUpgrade = "upgrade-faction-austria",
	Icon = "icon-flag-old-austria",
	DevelopsFrom = {"bavarian-tribe"},
	Titles = {
		"monarchy", "grand-duchy", "Archduchy"
	},
	MinisterTitles = {
		"head-of-state", "male", "monarchy", "grand-duchy", "Archduke",
		"head-of-state", "female", "monarchy", "grand-duchy", "Archduchess",
		"head-of-government", "", "monarchy", "no-faction-tier", "Minister-President", -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 39.
		"education-minister", "", "no-government-type", "no-faction-tier", "Education Director" -- Director of the Department of Education (Leiter des Unterrichtsdepartements); Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 41.
	},
	HistoricalCapitals = {
		0, "vienna"
	},
	HistoricalTiers = {
		1560, "grand-duchy", -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
		1815, "empire" -- Political situation in Central Europe, 1815-1866 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	ShipNames = {
		"Achilles", -- steamship; Source: Peter Schubert, "Krieg auf der Donau: Die Geschichte der k.u.k. Donauflotille", p. 38.
		"Adler", -- imperial yacht; Source: Peter Schubert, "Krieg auf der Donau: Die Geschichte der k.u.k. Donauflotille", p. 30.
		"Banhans", -- steamship; Source: Peter Schubert, "Krieg auf der Donau: Die Geschichte der k.u.k. Donauflotille", p. 38.
		"Bodrog", -- river monitor; Source: Peter Schubert, "Krieg auf der Donau: Die Geschichte der k.u.k. Donauflotille", p. 34.
		"Enns", -- river monitor; Source: Peter Schubert, "Krieg auf der Donau: Die Geschichte der k.u.k. Donauflotille", p. 35.
		"Erzherzog Albrecht", -- steam warship; Source: Peter Schubert, "Krieg auf der Donau: Die Geschichte der k.u.k. Donauflotille", p. 30.
		"Erzherzog Franz Ferdinand", -- hospital ship; Source: Peter Schubert, "Krieg auf der Donau: Die Geschichte der k.u.k. Donauflotille", p. 38.
		"Franz I.", -- steamship; Source: Peter Schubert, "Krieg auf der Donau: Die Geschichte der k.u.k. Donauflotille", pp. 28-29.
		"Koros", -- "Körös"; river monitor; Source: Peter Schubert, "Krieg auf der Donau: Die Geschichte der k.u.k. Donauflotille", pp. 33-34.
		"Kulpa", -- hospital ship; Source: Peter Schubert, "Krieg auf der Donau: Die Geschichte der k.u.k. Donauflotille", p. 38.
		"Leitha", -- river monitor; Source: Peter Schubert, "Krieg auf der Donau: Die Geschichte der k.u.k. Donauflotille", pp. 32-33.
		"Maros", -- river monitor; Source: Peter Schubert, "Krieg auf der Donau: Die Geschichte der k.u.k. Donauflotille", pp. 32-33.
		"Schlick", -- steam warship; Source: Peter Schubert, "Krieg auf der Donau: Die Geschichte der k.u.k. Donauflotille", p. 30.
		"Szamos", -- river monitor; Source: Peter Schubert, "Krieg auf der Donau: Die Geschichte der k.u.k. Donauflotille", pp. 33-34.
		"Temes", -- river monitor; Source: Peter Schubert, "Krieg auf der Donau: Die Geschichte der k.u.k. Donauflotille", p. 34.
		"Traisen", -- hospital ship; Source: Peter Schubert, "Krieg auf der Donau: Die Geschichte der k.u.k. Donauflotille", p. 38.
		"Traun" -- steamship; Source: Peter Schubert, "Krieg auf der Donau: Die Geschichte der k.u.k. Donauflotille", p. 38.
	}
	-- 04.03.1849: new constitution; Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 48.
	-- 20.08.1851: ministerial responsibility removed; Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 48.
	-- 31.12.1851: New Year Patent (Silvesterpatent) abolishes the constitution of 1849; Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 48.
})

DefineFaction("carinthia", {
	Name = "Carinthia", -- "Kärnten"
	Civilization = "teuton",
	Type = "polity",
	PrimaryColor = "brown",
	FactionUpgrade = "upgrade-faction-carinthia",
	Icon = "icon-flag-five-orange-birds-on-black",
	DefaultTier = "duchy", -- Duchy of Carinthia within the Holy Roman Empire; Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	DevelopsFrom = {"bavarian-tribe"}
})

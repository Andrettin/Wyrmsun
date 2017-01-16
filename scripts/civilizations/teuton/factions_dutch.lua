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
--      (c) Copyright 2017 by Andrettin
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

DefineFaction("netherlands", {
	Name = "Netherlands",
	Civilization = "teuton",
	ParentFaction = "francia",
	Type = "polity",
	Colors = {"orange", "blue"},
	DefaultTier = "kingdom",
	SettlementNames = {
		"'s-Hertogenbosch",
		"Beverwijk",
		"Rotterdam",
		"Staphorst", -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 331.
		"Waalwijk"
	},
	ProvinceNames = {
		"Flevoland",
		"Friesland",
		"Gelderland"
	}
})

DefineFaction("brabant", {
	Name = "Brabant",
	Civilization = "teuton",
	ParentFaction = "netherlands",
	Type = "polity",
	Colors = {"cyan"},
	DefaultTier = "duchy", -- Brabant was a duchy in 1559-1600; Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
	DevelopsTo = {"netherlands"}
})

DefineFaction("drenthe", {
	Name = "Drenthe",
	Civilization = "teuton",
	ParentFaction = "netherlands",
	Type = "polity",
	Colors = {"cyan"},
	DefaultTier = "county", -- Drenthe was a county in 1559-1600; Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
	DevelopsTo = {"netherlands"}
})

DefineFaction("holland", {
	Name = "Holland",
	Civilization = "teuton",
	ParentFaction = "netherlands",
	Type = "polity",
	Colors = {"red"},
	DefaultTier = "county", -- Holland was a county in 1559-1600; Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
	DevelopsTo = {"netherlands"}
})

DefineFaction("overijssel", {
	Name = "Overijssel",
	Civilization = "teuton",
	ParentFaction = "netherlands",
	Type = "polity",
	Colors = {"pink"},
	DefaultTier = "barony", -- Overijssel was a lordship in 1559-1600; Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
	DevelopsTo = {"netherlands"}
})


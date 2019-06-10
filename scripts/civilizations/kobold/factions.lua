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
--      (c) Copyright 2016-2019 by Andrettin
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

DefineFaction("fafning-tribe", {
	Name = "Fafning Tribe",
	Civilization = "kobold",
	Type = "tribe",
	PrimaryColor = "purple",
	DefaultAI = "passive",
	Icon = "icon-flag-green-skull-on-purple"
})

DefineFaction("goinling-tribe", {
	Name = "Goinling Tribe",
	Civilization = "kobold",
	Type = "tribe",
	PrimaryColor = "white",
	DefaultAI = "kobolds",
	Icon = "icon-flag-black-skull-on-white"
})

DefineFaction("grabakling-tribe", {
	Name = "Grabakling Tribe",
	Civilization = "kobold",
	Type = "tribe",
	PrimaryColor = "white",
	DefaultAI = "kobolds",
	Icon = "icon-flag-black-skull-on-white"
})

DefineFaction("grafvitning-tribe", {
	Name = "Grafvitning Tribe",
	Civilization = "kobold",
	Type = "tribe",
	PrimaryColor = "black",
	DefaultAI = "kobolds",
	Icon = "icon-flag-black-skull-on-white",
	HistoricalDiplomacyStates = {
		-- to prevent the Grafvitning tribe from being destroyed by the AI too soon in the The First Dwarves scenario
		-3000, "goinling-tribe", "alliance", 
		-3000, "grabakling-tribe", "alliance"
	}
})

DefineFaction("grafvolling-tribe", {
	Name = "Grafvolling Tribe",
	Civilization = "kobold",
	Type = "tribe",
	PrimaryColor = "red",
	DefaultAI = "kobolds",
	Icon = "icon-flag-brown-skull-on-red",
	HistoricalDiplomacyStates = {
		600, "driftwood", "war", -- the natives of the Island of the Kobold God are hostile to the newcomers to the island and the Driftwood shipwrecks
		600, "lyr", "war"
	}
})

DefineFaction("moinling-tribe", {
	Name = "Moinling Tribe",
	Civilization = "kobold",
	Type = "tribe",
	PrimaryColor = "orange",
	DefaultAI = "kobolds",
	Icon = "icon-flag-orange-skull-on-teal",
	HistoricalDiplomacyStates = {
		-3000, "grafvitning-tribe", "alliance" -- to prevent the Grafvitning tribe from being destroyed by the AI too soon in the The First Dwarves scenario
	}
})

DefineFaction("ofning-tribe", {
	Name = "Ofning Tribe",
	Civilization = "kobold",
	Type = "tribe",
	PrimaryColor = "violet",
	DefaultAI = "kobolds",
	Icon = "icon-flag-green-skull-on-purple"
})

DefineFaction("shellscale-tribe", {
	Name = "Shellscale Tribe",
	Civilization = "kobold",
	Type = "tribe",
	PrimaryColor = "blue",
	Icon = "icon-flag-blue-skull-on-light-blue"
})

DefineFaction("svafning-tribe", {
	Name = "Svafning Tribe",
	Civilization = "kobold",
	Type = "tribe",
	PrimaryColor = "blue",
	DefaultAI = "kobolds",
	Icon = "icon-flag-blue-skull-on-light-blue"
})

-- Mercenary Companies

DefineFaction("sellscale-company", {
	Name = "Sellscale Company",
	Civilization = "kobold",
	Type = "mercenary-company",
	PrimaryColor = "black",
	DefaultTier = "duchy",
	Icon = "icon-flag-black-skull-on-white",
	Description = "The Sellscale Company was founded by a group of kobold warriors, veterans from the Bone War. Unable to readapt to civilian life, they decided to make use of their military skills for profit."
})

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
--      (c) Copyright 2016-2020 by Andrettin
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
	Colors = {"purple"},
	DefaultAI = "passive"
})

DefineFaction("goinling-tribe", {
	Name = "Goinling Tribe",
	Civilization = "kobold",
	Type = "tribe",
	Colors = {"white"},
	DefaultAI = "kobolds"
})

DefineFaction("grabakling-tribe", {
	Name = "Grabakling Tribe",
	Civilization = "kobold",
	Type = "tribe",
	Colors = {"white"},
	DefaultAI = "kobolds"
})

DefineFaction("grafvitning-tribe", {
	Name = "Grafvitning Tribe",
	Civilization = "kobold",
	Type = "tribe",
	Colors = {"black"},
	DefaultAI = "kobolds",
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
	Colors = {"red"},
	DefaultAI = "kobolds",
	HistoricalDiplomacyStates = {
		600, "driftwood", "war", -- the natives of the Island of the Kobold God are hostile to the newcomers to the island and the Driftwood shipwrecks
		600, "lyr", "war"
	}
})

DefineFaction("moinling-tribe", {
	Name = "Moinling Tribe",
	Civilization = "kobold",
	Type = "tribe",
	Colors = {"orange"},
	DefaultAI = "kobolds",
	HistoricalDiplomacyStates = {
		-3000, "grafvitning-tribe", "alliance" -- to prevent the Grafvitning tribe from being destroyed by the AI too soon in the The First Dwarves scenario
	}
})

DefineFaction("ofning-tribe", {
	Name = "Ofning Tribe",
	Civilization = "kobold",
	Type = "tribe",
	Colors = {"violet"},
	DefaultAI = "kobolds"
})

DefineFaction("shellscale-tribe", {
	Name = "Shellscale Tribe",
	Civilization = "kobold",
	Type = "tribe",
	Colors = {"blue"}
})

DefineFaction("svafning-tribe", {
	Name = "Svafning Tribe",
	Civilization = "kobold",
	Type = "tribe",
	Colors = {"blue"},
	DefaultAI = "kobolds"
})

-- Mercenary Companies

DefineFaction("sellscale-company", {
	Name = "Sellscale Company",
	Civilization = "kobold",
	Type = "mercenary-company",
	Colors = {"black"},
	DefaultTier = "duchy",
	Description = "The Sellscale Company was founded by a group of kobold warriors, veterans from the Bone War. Unable to readapt to civilian life, they decided to make use of their military skills for profit."
})

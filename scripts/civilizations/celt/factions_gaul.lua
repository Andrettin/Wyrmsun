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

DefineFaction("Aedui Tribe", {
	Civilization = "celt",
	Type = "tribe",
--	Language = "gaulish",
	Colors = {"green"}
})

DefineFaction("Arverni Tribe", {
	Civilization = "celt",
	Type = "tribe",
--	Language = "gaulish",
	Colors = {"blue"},
	HistoricalDiplomacyStates = {
		-71, "celt", "Aedui Tribe", "war" -- The Suebic king Ariovistus enters Gaul at the request of the Arverni and the Sequani to fight the Aedui in 71 BC; Source: Dáithí Ó hÓgáin, "The Celts: A History", 2002, p. 138; Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 230.
	}
})

DefineFaction("Helvetii Tribe", {
	Civilization = "celt",
	Type = "tribe",
--	Language = "gaulish",
	Colors = {"violet"} -- another color, perhaps?
})

DefineFaction("Ligurian Tribe", {
	Civilization = "celt", -- were they really Celts?
	Type = "tribe",
--	Language = "gaulish",
	Colors = {"green"}
})

DefineFaction("Menapii Tribe", {
	Civilization = "celt",
	Type = "tribe",
--	Language = "gaulish",
	Colors = {"yellow"}
})

DefineFaction("Sequani Tribe", {
	Civilization = "celt",
	Type = "tribe",
--	Language = "gaulish",
	Colors = {"pink", "red"},
	HistoricalDiplomacyStates = {
		-71, "celt", "Aedui Tribe", "war" -- The Suebic king Ariovistus enters Gaul at the request of the Arverni and the Sequani to fight the Aedui in 71 BC; Source: Dáithí Ó hÓgáin, "The Celts: A History", 2002, p. 138; Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 230.
	}
})

DefineFaction("Turone Tribe", {
	Civilization = "celt",
	Type = "tribe",
--	Language = "gaulish",
	Colors = {"cyan"},
	HistoricalFactionDerivations = {-27, "celt", "Boii Tribe"}
})

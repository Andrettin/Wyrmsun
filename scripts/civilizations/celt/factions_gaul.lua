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

DefineFaction("Caerasi Tribe", { -- Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 223.
	Civilization = "celt",
	Type = "tribe",
--	Language = "gaulish", -- presumably
	Colors = {"white"}
})

DefineFaction("Condrusi Tribe", { -- Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 223.
	Civilization = "celt",
	Type = "tribe",
--	Language = "gaulish", -- presumably
	Colors = {"brown"}
})

DefineFaction("Eburones Tribe", { -- Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, pp. 223-226.
	Civilization = "celt",
	Type = "tribe",
--	Language = "gaulish", -- presumably
	Colors = {"yellow"},
	Description = _("The Eburones were a Gaulish tribe which dwelled largely between the Rhine and the Meuse. They fought fiercely against Caesar's Romans, but ended up being annihilated by them."),
	HistoricalCapitals = {
		-54, "Liege" -- in 54 the capital of the Eburones was Aduatuca
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

DefineFaction("Nervii Tribe", { -- Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 224.
	Civilization = "celt",
	Type = "tribe",
--	Language = "gaulish", -- presumably
	Colors = {"orange"}
})

DefineFaction("Poemanni Tribe", { -- Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 223.
	Civilization = "celt",
	Type = "tribe",
--	Language = "gaulish", -- presumably
	Colors = {"red"}
})

DefineFaction("Segni Tribe", { -- Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 223.
	Civilization = "celt",
	Type = "tribe",
--	Language = "gaulish", -- presumably
	Colors = {"blue"}
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

DefineFaction("Treviri Tribe", { -- Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 223.
	Civilization = "celt", -- a Belgic tribe
	Type = "tribe",
--	Language = "gaulish", -- presumably
	Colors = {"green"},
	HistoricalDiplomacyStates = {
		-54, "celt", "Condrusi Tribe", "sovereign", -- in 54 BC the Condrusi were clients of the Treviri
		-54, "celt", "Eburones Tribe", "sovereign" -- in 54 BC the Eburones were clients of the Treviri
	}
})

DefineFaction("Turone Tribe", {
	Civilization = "celt",
	Type = "tribe",
--	Language = "gaulish",
	Colors = {"cyan"},
	HistoricalFactionDerivations = {-27, "celt", "Boii Tribe"}
})

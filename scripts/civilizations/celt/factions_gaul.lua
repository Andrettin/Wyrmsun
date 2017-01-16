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

DefineFaction("aedui-tribe", {
	Name = "Aedui Tribe",
	Civilization = "celt",
	Type = "tribe",
	Colors = {"green"}
})

DefineFaction("arverni-tribe", {
	Name = "Arverni Tribe",
	Civilization = "celt",
	Type = "tribe",
	Colors = {"blue"},
	HistoricalDiplomacyStates = {
		-71, "aedui-tribe", "war" -- The Suebic king Ariovistus enters Gaul at the request of the Arverni and the Sequani to fight the Aedui in 71 BC; Source: Dáithí Ó hÓgáin, "The Celts: A History", 2002, p. 138; Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 230.
	}
})

DefineFaction("caerasi-tribe", { -- Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 223.
	Name = "Caerasi Tribe",
	Civilization = "celt",
	Type = "tribe",
	Colors = {"white"}
})

DefineFaction("condrusi-tribe", { -- Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 223.
	Name = "Condrusi Tribe",
	Civilization = "celt",
	Type = "tribe",
	Colors = {"brown"}
})

DefineFaction("eburones-tribe", { -- Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, pp. 223-226.
	Name = "Eburones Tribe",
	Civilization = "celt",
	Type = "tribe",
	Colors = {"yellow"},
--	Description = _("The Eburones were a Gaulish tribe which dwelled largely between the Rhine and the Meuse. They fought fiercely against Caesar's Romans, but ended up being annihilated by them."),
	HistoricalCapitals = {
		-54, "Liege" -- in 54 the capital of the Eburones was Aduatuca
	}
})

DefineFaction("helvetii-tribe", {
	Name = "Helvetii Tribe",
	Civilization = "celt",
	Type = "tribe",
	Colors = {"violet"} -- another color, perhaps?
})

DefineFaction("ligurian-tribe", {
	Name = "Ligurian Tribe",
	Civilization = "celt", -- were they really Celts?
	Type = "tribe",
	Colors = {"green"}
})

DefineFaction("menapii-tribe", {
	Name = "Menapii Tribe",
	Civilization = "celt",
	Type = "tribe",
	Colors = {"yellow"}
})

DefineFaction("nervii-tribe", { -- Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 224.
	Name = "Nervii Tribe",
	Civilization = "celt",
	Type = "tribe",
	Colors = {"orange"}
})

DefineFaction("poemanni-tribe", { -- Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 223.
	Name = "Poemanni Tribe",
	Civilization = "celt",
	Type = "tribe",
	Colors = {"red"}
})

DefineFaction("segni-tribe", { -- Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 223.
	Name = "Segni Tribe",
	Civilization = "celt",
	Type = "tribe",
	Colors = {"blue"}
})

DefineFaction("sequani-tribe", {
	Name = "Sequani Tribe",
	Civilization = "celt",
	Type = "tribe",
	Colors = {"pink", "red"},
	HistoricalDiplomacyStates = {
		-71, "aedui-tribe", "war" -- The Suebic king Ariovistus enters Gaul at the request of the Arverni and the Sequani to fight the Aedui in 71 BC; Source: Dáithí Ó hÓgáin, "The Celts: A History", 2002, p. 138; Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 230.
	}
})

DefineFaction("treviri-tribe", { -- Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 223.
	Name = "Treviri Tribe",
	Civilization = "celt", -- a Belgic tribe
	Type = "tribe",
	Colors = {"green"},
	HistoricalDiplomacyStates = {
		-54, "condrusi-tribe", "sovereign", -- in 54 BC the Condrusi were clients of the Treviri
		-54, "eburones-tribe", "sovereign" -- in 54 BC the Eburones were clients of the Treviri
	}
})

DefineFaction("tribocci-tribe", { -- Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 222.
	Name = "Tribocci Tribe",
	Civilization = "celt",
	Type = "tribe",
	Colors = {"green"}
})

DefineFaction("turone-tribe", {
	Name = "Turone Tribe",
	Civilization = "celt",
	Type = "tribe",
	Colors = {"cyan"},
	HistoricalFactionDerivations = {-27, "celt", "boii-tribe"}
})

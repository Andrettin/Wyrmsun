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
--      (c) Copyright 2015-2022 by Andrettin
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

DefineFaction("arverni-tribe", {
	Name = "Arverni Tribe",
	Adjective = "Arverni",
	Civilization = "gaul",
	Type = "tribe",
	Color = "blue",
	HistoricalDiplomacyStates = {
		-71, "aeduia", "war" -- the Suebic king Ariovistus entered Gaul at the request of the Arverni and the Sequani to fight the Aedui in 71 BC; Source: Dáithí Ó hÓgáin, "The Celts: A History", 2002, p. 138; Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 230.
	}
})

DefineFaction("caerasi-tribe", { -- Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 223.
	Name = "Caerasi Tribe",
	Adjective = "Caesari",
	Civilization = "gaul",
	Type = "tribe",
	Color = "white"
})

DefineFaction("condrusi-tribe", { -- Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 223.
	Name = "Condrusi Tribe",
	Adjective = "Condrusi",
	Civilization = "gaul",
	Type = "tribe",
	Color = "brown"
})

DefineFaction("eburones-tribe", { -- Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, pp. 223-226.
	Name = "Eburones Tribe",
	Adjective = "Eburones",
	Civilization = "gaul",
	Type = "tribe",
	Color = "yellow",
--	Description = "The Eburones were a Gaulish tribe which dwelled largely between the Rhine and the Meuse. They fought fiercely against Caesar's Romans, but ended up being annihilated by them.",
	HistoricalCapitals = {
		-54, "tongres" -- in 54 the capital of the Eburones was Aduatuca
	}
})

DefineFaction("helvetii-tribe", {
	Name = "Helvetii Tribe",
	Adjective = "Helvetii",
	Civilization = "gaul",
	Type = "tribe",
	Color = "violet" -- another color, perhaps?
})

DefineFaction("ligurian-tribe", {
	Name = "Ligurian Tribe",
	Adjective = "Ligurian",
	Civilization = "gaul", -- were they really Celts?
	Type = "tribe",
	Color = "green"
})

DefineFaction("menapii-tribe", {
	Name = "Menapii Tribe",
	Adjective = "Menapii",
	Civilization = "gaul",
	Type = "tribe",
	Color = "yellow"
})

DefineFaction("nervii-tribe", { -- Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 224.
	Name = "Nervii Tribe",
	Adjective = "Nervii",
	Civilization = "gaul",
	Type = "tribe",
	Color = "orange"
})

DefineFaction("poemanni-tribe", { -- Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 223.
	Name = "Poemanni Tribe",
	Adjective = "Poemanni",
	Civilization = "gaul",
	Type = "tribe",
	Color = "red"
})

DefineFaction("segni-tribe", { -- Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 223.
	Name = "Segni Tribe",
	Adjective = "Segni",
	Civilization = "gaul",
	Type = "tribe",
	Color = "blue"
})

DefineFaction("treviri-tribe", { -- Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 223.
	Name = "Treviri Tribe",
	Adjective = "Treviri",
	Civilization = "gaul", -- a Belgic tribe
	Type = "tribe",
	Color = "green",
	HistoricalDiplomacyStates = {
		-54, "condrusi-tribe", "overlord", -- in 54 BC the Condrusi were clients of the Treviri
		-54, "eburones-tribe", "overlord" -- in 54 BC the Eburones were clients of the Treviri
	}
})

DefineFaction("tribocci-tribe", { -- Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 222.
	Name = "Tribocci Tribe",
	Adjective = "Tribocci",
	Civilization = "gaul",
	Type = "tribe",
	Color = "green"
})

DefineFaction("turone-tribe", {
	Name = "Turone Tribe",
	Adjective = "Turone",
	Civilization = "gaul",
	Type = "tribe",
	Color = "cyan"
})



DefineFaction("astures-tribe", { -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	Name = "Astures Tribe",
	Adjective = "Astures",
	Civilization = "gaul", -- correct?
	Type = "tribe",
	Color = "brown"
})

DefineFaction("boii-tribe", {
	Name = "Boii Tribe",
	Adjective = "Boii",
	Civilization = "gaul",
	Type = "tribe",
	Color = "brown"
})

DefineFaction("cantabri-tribe", { -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	Name = "Cantabri Tribe",
	Adjective = "Cantabri",
	Civilization = "gaul", -- correct?
	Type = "tribe",
	Color = "orange"
})

DefineFaction("cotini-tribe", {
	Name = "Cotini Tribe",
	Adjective = "Cotini",
	Civilization = "gaul",
	Type = "tribe",
	Color = "teal"
})

DefineFaction("norici-tribe", {
	Name = "Norici Tribe",
	Adjective = "Norici",
	Civilization = "gaul",
	Type = "tribe",
	Color = "white" -- another color, perhaps?
})

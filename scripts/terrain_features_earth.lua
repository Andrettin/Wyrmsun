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

DefineTerrainFeature("achelos-river", { -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
	Name = "Achelos River",
	TerrainType = "shallow-water"
})

DefineTerrainFeature("alpheus-river", { -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
	Name = "Alpheus River",
	TerrainType = "shallow-water"
})

DefineTerrainFeature("atlantic-ocean", { -- Source: "Limits of Oceans and Seas", 1953, p. 12. (see corrections as well)
	Name = "Atlantic Ocean",
	TerrainType = "shallow-water",
	Color = {48, 176, 176}
})

DefineTerrainFeature("carpathians", {
	Name = "Carpathians",
	TerrainType = "rock" -- mountains
})

DefineTerrainFeature("dnieper-river", {
	Name = "Dnieper River",
	TerrainType = "shallow-water",
	Color = {32, 128, 176},
	CulturalNames = {
		"latin", "Borysthenes River" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	}
})

DefineTerrainFeature("don-river", {
	Name = "Don River",
	TerrainType = "shallow-water",
	Color = {16, 128, 176},
	CulturalNames = {
		"celt", "Vanaquisl River", -- so that the river's name will appear correctly if it is Vana territory
		"germanic", "Vanaquisl River", -- the Tanais river is said to have been called Vanaquisl or Tanaquisl in the time of the Vana/Asa conflict in the Ynglinga saga; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 217.
		"greek", "Tanais River",
		"latin", "Tanais River", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		"norse", "Tanais River" -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 217.
	}
})

DefineTerrainFeature("eurotas-river", { -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
	Name = "Eurotas River",
	TerrainType = "shallow-water",
	Color = {0, 144, 144},
	CulturalNames = {
		"greek", "Eurotas River"
	}
})

DefineTerrainFeature("garonne-river", {
	Name = "Garonne River",
	TerrainType = "shallow-water"
})

DefineTerrainFeature("lake-neusiedl", {
	Name = "Lake Neusiedl",
	TerrainType = "shallow-water",
	Color = {0, 128, 176}
})

DefineTerrainFeature("march-river", {
	Name = "March River",
	TerrainType = "shallow-water",
	Color = {0, 144, 128}
})

DefineTerrainFeature("narova-river", {
	Name = "Narova River",
	TerrainType = "shallow-water"
})

DefineTerrainFeature("neva-river", {
	Name = "Neva River",
	TerrainType = "shallow-water"
})

DefineTerrainFeature("peneus-river", { -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
	Name = "Peneus River",
	TerrainType = "shallow-water"
})

DefineTerrainFeature("sado-river", {
	Name = "Sado River",
	TerrainType = "shallow-water"
})

DefineTerrainFeature("seine-river", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	Name = "Seine River",
	TerrainType = "shallow-water"
})

DefineTerrainFeature("strait-of-gibraltar", {
	Name = "Strait of Gibraltar",
	TerrainType = "shallow-water",
	Color = {0, 104, 144},
	CulturalNames = {
		"norse", "Niorvasund" -- the Straits of Gibraltar were known as "Niorvasund" to the Norse; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 216.
	}
})

DefineTerrainFeature("ural-mountains", {
	Name = "Ural Mountains",
	TerrainType = "rock" -- mountains
})

DefineTerrainFeature("volga-river", {
	Name = "Volga River",
	TerrainType = "shallow-water",
	CulturalNames = {
		"latin", "Rha River" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	}
})

DefineTerrainFeature("wicklow-mountains", { -- Source: "Philip's International School Atlas", 2006, p. 64.
	Name = "Wicklow Mountains",
	TerrainType = "rock" -- mountains
})

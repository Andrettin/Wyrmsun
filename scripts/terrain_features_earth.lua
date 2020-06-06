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

DefineTerrainFeature("alps", {
	Name = "Alps",
	TerrainType = "rock" -- mountains
})

DefineTerrainFeature("apennines", {
	Name = "Apennines",
	TerrainType = "rock" -- mountains
})

DefineTerrainFeature("atlantic-ocean", { -- Source: "Limits of Oceans and Seas", 1953, p. 12. (see corrections as well)
	Name = "Atlantic Ocean",
	TerrainType = "shallow-water",
	Color = {48, 176, 176}
})

DefineTerrainFeature("baltic-sea", { -- Source: http://www.euratlas.net/history/europe/1/index.html
	Name = "Baltic Sea",
	TerrainType = "shallow-water",
	Color = {16, 120, 144},
	CulturalNames = {
		"latin", "Suebic Sea", -- Source: "Ancient Warfare VII.6", 2013, p. 7.
		"suebi", "Suebic Sea" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	}
})

DefineTerrainFeature("black-sea", { -- Source: "Limits of Oceans and Seas", 1953, p. 18.
	Name = "Black Sea",
	TerrainType = "shallow-water",
	Color = {0, 104, 136},
	CulturalNames = {
		"latin", "Pontus Euxinos" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	}
})

DefineTerrainFeature("cantabrian-mountains", {
	Name = "Cantabrian Mountains",
	TerrainType = "rock" -- mountains
})

DefineTerrainFeature("carpathians", {
	Name = "Carpathians",
	TerrainType = "rock" -- mountains
})

DefineTerrainFeature("danube-river", {
	Name = "Danube River",
	TerrainType = "shallow-water",
	Color = {0, 128, 144},
	CulturalNames = {
		"latin", "Danuvius River" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	}
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

DefineTerrainFeature("douro-river", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 82-83.
	Name = "Douro River",
	TerrainType = "shallow-water",
	CulturalNames = {
		"castillian", "Duero River" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 82-83.
	}
})

DefineTerrainFeature("elbe-river", {
	Name = "Elbe River",
	TerrainType = "shallow-water",
	Color = {0, 144, 176},
	CulturalNames = {
		"latin", "Albis River" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	}
})

DefineTerrainFeature("english-channel", { -- Source: "Limits of Oceans and Seas", 1953, p. 12. (see corrections as well)
	Name = "English Channel",
	TerrainType = "shallow-water",
	Color = {48, 128, 128},
	CulturalNames = {
		"celt", "British Ocean",
		"latin", "British Ocean"
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

DefineTerrainFeature("guadiana-river", {
	Name = "Guadiana River",
	TerrainType = "shallow-water",
	CulturalNames = {
		"latin", "Anas River" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	}
})

DefineTerrainFeature("gulf-of-bothnia", { -- Source: "Limits of Oceans and Seas", 1953, p. 5.
	Name = "Gulf of Bothnia",
	TerrainType = "shallow-water",
	Color = {16, 144, 144},
	CulturalNames = {
		"latin", "Suebic Sea", -- Source: "Ancient Warfare VII.6", 2013, p. 7.
		"suebi", "Suebic Sea" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	}
})

DefineTerrainFeature("irish-sea", { -- Source: "Limits of Oceans and Seas", 1953, p. 12. (see corrections as well)
	Name = "Irish Sea",
	TerrainType = "shallow-water",
	Color = {48, 144, 144},
	CulturalNames = {
		"celt", "Hibernian Ocean",
		"latin", "Hibernian Ocean"
	}
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

DefineTerrainFeature("mediterranean-sea", {
	Name = "Mediterranean Sea",
	TerrainType = "shallow-water",
	Color = {0, 144, 104}
})

DefineTerrainFeature("minho-river", {
	Name = "Minho River",
	TerrainType = "shallow-water"
})

DefineTerrainFeature("narova-river", {
	Name = "Narova River",
	TerrainType = "shallow-water"
})

DefineTerrainFeature("neva-river", {
	Name = "Neva River",
	TerrainType = "shallow-water"
})

DefineTerrainFeature("north-sea", { -- Source: http://www.euratlas.net/history/europe/1/index.html
	Name = "North Sea",
	TerrainType = "shallow-water",
	Color = {0, 144, 120},
	CulturalNames = {
		"germanic", "German Ocean",
		"goth", "German Ocean",
		"latin", "German Ocean", -- Source: "Ancient Warfare VII.6", 2013, p. 7.
		"suebi", "German Ocean"
	}
})

DefineTerrainFeature("oder-river", {
	Name = "Oder River",
	TerrainType = "shallow-water"
})

DefineTerrainFeature("peneus-river", { -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
	Name = "Peneus River",
	TerrainType = "shallow-water"
})

DefineTerrainFeature("po-river", {
	Name = "Po River",
	TerrainType = "shallow-water",
	Color = {0, 128, 208}
})

DefineTerrainFeature("pyrenees", {
	Name = "Pyrenees",
	TerrainType = "rock" -- mountains
})

DefineTerrainFeature("rhine-river", {
	Name = "Rhine River",
	TerrainType = "shallow-water",
	Color = {0, 128, 212},
	CulturalNames = {
		"latin", "Rhenus River", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		"teuton", "Rhine River"
	}
})

DefineTerrainFeature("sado-river", {
	Name = "Sado River",
	TerrainType = "shallow-water"
})

DefineTerrainFeature("seine-river", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	Name = "Seine River",
	TerrainType = "shallow-water"
})

DefineTerrainFeature("skagerrak", { -- Source: "Limits of Oceans and Seas", 1953, p. 6.
	Name = "Skagerrak",
	TerrainType = "shallow-water",
	Color = {0, 120, 144}
})

DefineTerrainFeature("strait-of-gibraltar", {
	Name = "Strait of Gibraltar",
	TerrainType = "shallow-water",
	Color = {0, 104, 144},
	CulturalNames = {
		"norse", "Niorvasund" -- the Straits of Gibraltar were known as "Niorvasund" to the Norse; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 216.
	}
})

DefineTerrainFeature("tagus-river", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 82-83.
	Name = "Tagus River",
	TerrainType = "shallow-water"
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

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
--      (c) Copyright 2016-2017 by Andrettin
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

DefineTerrainFeature("achelos-river", {
	Name = "Achelos River",
	TerrainType = "shallow-water",
	World = "Earth",
	CulturalNames = {
		"greek", "Achelos River" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
	}
})

DefineTerrainFeature("alpheus-river", {
	Name = "Alpheus River",
	TerrainType = "shallow-water",
	World = "Earth",
	CulturalNames = {
		"greek", "Alpheus River" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
	}
})

DefineTerrainFeature("avon-river", {
	Name = "Avon River",
	TerrainType = "shallow-water",
	World = "Earth",
	CulturalNames = {
		"anglo-saxon", "Afene River" -- Old English name of the Avon River (the source isn't explicit on which Avon River this refers to, but it is presumably this one); Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
	}
})

DefineTerrainFeature("danube-river", {
	Name = "Danube River",
	TerrainType = "shallow-water",
	Color = {0, 128, 144},
	World = "Earth",
	CulturalNames = {
		"latin", "Danuvius River", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		"teuton", "Danube River"
	}
})

DefineTerrainFeature("dee-river", { -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	Name = "Dee River",
	TerrainType = "shallow-water",
	World = "Earth",
	CulturalNames = {
--		"english", "Dee River" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	}
})

DefineTerrainFeature("dnieper-river", {
	Name = "Dnieper River",
	TerrainType = "shallow-water",
	World = "Earth",
	CulturalNames = {
		"latin", "Borysthenes River" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	}
})

DefineTerrainFeature("don-river", {
	Name = "Don River",
	TerrainType = "shallow-water",
	World = "Earth",
	CulturalNames = {
		"germanic", "Vanaquisl River", -- The Tanais river is said to have been called Vanaquisl or Tanaquisl in the time of the Vana/Asa conflict in the Ynglinga saga; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 217.
		"greek", "Tanais River",
		"latin", "Tanais River", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		"norse", "Tanais River" -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 217.
	}
})

DefineTerrainFeature("douro-river", {
	Name = "Douro River",
	TerrainType = "shallow-water",
	World = "Earth",
	CulturalNames = {
		"portuguese", "Douro River", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 82-83.
		"castillian", "Duero River" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 82-83.
	}
})

DefineTerrainFeature("elbe-river", {
	Name = "Elbe River",
	TerrainType = "shallow-water",
	Color = {0, 144, 176},
	World = "Earth",
	CulturalNames = {
		"latin", "Albis River", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		"teuton", "Elbe River"
	}
})

DefineTerrainFeature("eurotas-river", {
	Name = "Eurotas River",
	TerrainType = "shallow-water",
	Color = {0, 144, 144},
	World = "Earth",
	CulturalNames = {
		"greek", "Eurotas River" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
	}
})

DefineTerrainFeature("garonne-river", {
	Name = "Garonne River",
	TerrainType = "shallow-water",
	World = "Earth"
})

DefineTerrainFeature("guadiana-river", {
	Name = "Guadiana River",
	TerrainType = "shallow-water",
	World = "Earth",
	CulturalNames = {
		"castillian", "Guadiana River",
		"latin", "Anas River" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	}
})

DefineTerrainFeature("lake-neusiedl", {
	Name = "Lake Neusiedl",
	TerrainType = "shallow-water",
	Color = {0, 128, 176},
	World = "Earth",
	CulturalNames = {
		"teuton", "Lake Neusiedl"
	}
})

DefineTerrainFeature("lake-wener", {
	Name = "Lake Wener",
	TerrainType = "shallow-water",
	Color = {0, 176, 176},
	World = "Earth",
	CulturalNames = {
		"norse", "Lake Wener"
	}
})

DefineTerrainFeature("march-river", {
	Name = "March River",
	TerrainType = "shallow-water",
	Color = {0, 144, 128},
	World = "Earth",
	CulturalNames = {
		"teuton", "March River"
	}
})

DefineTerrainFeature("minho-river", {
	Name = "Minho River",
	TerrainType = "shallow-water",
	World = "Earth"
})

DefineTerrainFeature("narova-river", {
	Name = "Narova River",
	TerrainType = "shallow-water",
	World = "Earth"
})

DefineTerrainFeature("neva-river", {
	Name = "Neva River",
	TerrainType = "shallow-water",
	World = "Earth"
})

DefineTerrainFeature("oder-river", {
	Name = "Oder River",
	TerrainType = "shallow-water",
	World = "Earth"
})

DefineTerrainFeature("orwell-river", {
	Name = "Orwell River",
	TerrainType = "shallow-water",
	World = "Earth",
	CulturalNames = {
		"anglo-saxon", "Arwe River" -- Old English name of the Orwell River (the source isn't explicit on which Avon River this refers to, but it is presumably this one); Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
	}
})

DefineTerrainFeature("peneus-river", {
	Name = "Peneus River",
	TerrainType = "shallow-water",
	World = "Earth",
	CulturalNames = {
		"greek", "Peneus River" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
	}
})

DefineTerrainFeature("rhine-river", {
	Name = "Rhine River",
	TerrainType = "shallow-water",
	World = "Earth",
	CulturalNames = {
		"latin", "Rhenus River", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		"teuton", "Rhine River"
	}
})

DefineTerrainFeature("sado-river", {
	Name = "Sado River",
	TerrainType = "shallow-water",
	World = "Earth"
})

DefineTerrainFeature("seine-river", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	Name = "Seine River",
	TerrainType = "shallow-water",
	World = "Earth",
	CulturalNames = {
		"french", "Seine River" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	}
})

DefineTerrainFeature("severn-river", { -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	Name = "Severn River",
	TerrainType = "shallow-water",
	World = "Earth",
	CulturalNames = {
		"anglo-saxon", "Saefern River", -- "Sæfern"; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 733.
--		"english", "Severn River" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	}
})

DefineTerrainFeature("tagus-river", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 82-83.
	Name = "Tagus River",
	TerrainType = "shallow-water",
	World = "Earth",
	CulturalNames = {
		"latin", "Tagus River" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	}
})

DefineTerrainFeature("thames-river", { -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	Name = "Thames River",
	TerrainType = "shallow-water",
	Color = {0, 176, 208},
	World = "Earth",
	CulturalNames = {
		"anglo-saxon", "Temes River" -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 733.
--		"english", "Thames River" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	}
})

DefineTerrainFeature("volga-river", {
	Name = "Volga River",
	TerrainType = "shallow-water",
	World = "Earth",
	CulturalNames = {
		"latin", "Rha River" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	}
})

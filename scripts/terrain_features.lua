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

DefineTerrainFeature("achelos", {
	Name = "Achelos",
	World = "Earth",
	CulturalNames = {
		"greek", "Achelos" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
	}
})

DefineTerrainFeature("alpheus", {
	Name = "Alpheus",
	World = "Earth",
	CulturalNames = {
		"greek", "Alpheus" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
	}
})

DefineTerrainFeature("avon", {
	Name = "Avon",
	World = "Earth",
	FactionCulturalNames = {
		"anglo-saxon", "angle-tribe", "Afene" -- Old English name of the Avon River (the source isn't explicit on which Avon River this refers to, but it is presumably this one); Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
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

DefineTerrainFeature("dee", { -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	Name = "Dee",
	World = "Earth",
	FactionCulturalNames = {
		"anglo-saxon", "england", "Dee" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	}
})

DefineTerrainFeature("dnieper", {
	Name = "Dnieper",
	World = "Earth",
	CulturalNames = {
		"latin", "Borysthenes" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	}
})

DefineTerrainFeature("don", {
	Name = "Don",
	World = "Earth",
	CulturalNames = {
		"germanic", "Vanaquisl", -- The Tanais river is said to have been called Vanaquisl or Tanaquisl in the time of the Vana/Asa conflict in the Ynglinga saga; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 217.
		"greek", "Tanais",
		"latin", "Tanais", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		"norse", "Tanais" -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 217.
	}
})

DefineTerrainFeature("douro", {
	Name = "Douro",
	World = "Earth",
	FactionCulturalNames = {
		"portuguese", "portugal", "Douro", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 82-83.
		"castillian", "spain", "Duero" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 82-83.
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

DefineTerrainFeature("garonne", {
	Name = "Garonne",
	World = "Earth"
})

DefineTerrainFeature("guadiana", {
	Name = "Guadiana",
	World = "Earth",
	CulturalNames = {
		"castillian", "Guadiana",
		"latin", "Anas" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
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

DefineTerrainFeature("minho", {
	Name = "Minho",
	World = "Earth"
})

DefineTerrainFeature("narova", {
	Name = "Narova",
	World = "Earth"
})

DefineTerrainFeature("neva", {
	Name = "Neva",
	World = "Earth"
})

DefineTerrainFeature("oder", {
	Name = "Oder",
	World = "Earth"
})

DefineTerrainFeature("orwell", {
	Name = "Orwell",
	World = "Earth",
	FactionCulturalNames = {
		"anglo-saxon", "angle-tribe", "Arwe" -- Old English name of the Orwell River (the source isn't explicit on which Avon River this refers to, but it is presumably this one); Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
	}
})

DefineTerrainFeature("peneus", {
	Name = "Peneus",
	World = "Earth",
	CulturalNames = {
		"greek", "Peneus" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
	}
})

DefineTerrainFeature("rhine", {
	Name = "Rhine",
	World = "Earth",
	CulturalNames = {
		"latin", "Rhenus", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		"teuton", "Rhein"
	}
})

DefineTerrainFeature("sado", {
	Name = "Sado",
	World = "Earth"
})

DefineTerrainFeature("seine", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	Name = "Seine",
	World = "Earth",
	FactionCulturalNames = {
		"french", "france", "Seine" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	}
})

DefineTerrainFeature("severn", { -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	Name = "Severn",
	World = "Earth",
	FactionCulturalNames = {
		"anglo-saxon", "england", "Severn" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	}
})

DefineTerrainFeature("tagus", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 82-83.
	Name = "Tagus",
	World = "Earth",
	CulturalNames = {
		"latin", "Tagus" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	}
})

DefineTerrainFeature("thames", { -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	Name = "Thames",
	World = "Earth",
	FactionCulturalNames = {
		"anglo-saxon", "england", "Thames" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	}
})

DefineTerrainFeature("volga", {
	Name = "Volga",
	World = "Earth",
	CulturalNames = {
		"latin", "Rha" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	}
})

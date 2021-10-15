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
--      (c) Copyright 2016-2021 by Andrettin
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

DefineTerrainFeature("avon-river", {
	Name = "Avon River",
	TerrainType = "shallow-water",
	CulturalNames = {
		"anglo-saxon", "Afene River" -- Old English name of the Avon River (the source isn't explicit on which Avon River this refers to, but it is presumably this one); Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
	}
})

DefineTerrainFeature("berkshire-downs", {
--	Name = "Berkshire Downs",
	Name = "Aescesdun",
	TerrainType = "rock", -- hills
	CulturalNames = {
		"anglo-saxon", "Aescesdun" -- "Æscesdun"; Old English name of the Berkshire Downs; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
	}
})

DefineTerrainFeature("bromswold-forest", {
	Name = "Bromswold Forest",
	TerrainType = "pine-tree",
	Color = {0, 120, 0},
	CulturalNames = {
		"anglo-saxon", "Bruneswald" -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
	}
})

DefineTerrainFeature("dee-river", { -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	Name = "Dee River",
	TerrainType = "shallow-water"
})

DefineTerrainFeature("great-ouse-river", {
	Name = "Great Ouse River",
	TerrainType = "shallow-water",
	Color = {0, 160, 208}
})

DefineTerrainFeature("kinver-forest", {
	Name = "Kinver Forest",
	TerrainType = "pine-tree",
	CulturalNames = {
		"anglo-saxon", "Cynibre" -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
	}
})

DefineTerrainFeature("morfe-forest", {
	Name = "Morfe Forest",
	TerrainType = "pine-tree",
	CulturalNames = {
		"anglo-saxon", "Moerheb" -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 733.
	}
})

DefineTerrainFeature("orwell-river", {
	Name = "Orwell River",
	TerrainType = "shallow-water",
	CulturalNames = {
		"anglo-saxon", "Arwe River" -- Old English name of the Orwell River (the source isn't explicit on which Avon River this refers to, but it is presumably this one); Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
	}
})

DefineTerrainFeature("pennines", { -- Source: "Philip's International School Atlas", 2006, p. 64.
	Name = "Pennines",
	TerrainType = "rock" -- mountains
})

DefineTerrainFeature("selwood", {
	Name = "Selwood",
	TerrainType = "pine-tree",
	Color = {0, 112, 0},
	CulturalNames = {
		"anglo-saxon", "Sealwudu" -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 733.
	}
})

DefineTerrainFeature("severn-river", { -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	Name = "Severn River",
	TerrainType = "shallow-water",
	Color = {0, 144, 208},
	CulturalNames = {
		"anglo-saxon", "Saefern River" -- "Sæfern"; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 733.
	}
})

DefineTerrainFeature("snowdon", { -- Source: "Philip's International School Atlas", 2006, p. 64.
	Name = "Snowdon",
	TerrainType = "rock" -- mountain
})

DefineTerrainFeature("thames-river", { -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	Name = "Thames River",
	TerrainType = "shallow-water",
	Color = {0, 176, 208},
	CulturalNames = {
		"anglo-saxon", "Temes River" -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 733.
	}
})

DefineTerrainFeature("wyre-forest", {
	Name = "Wyre Forest",
	TerrainType = "pine-tree",
	CulturalNames = {
		"anglo-saxon", "Weogorenaleag" -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 733.
	}
})

DefineTerrainFeature("wychwood-forest", {
	Name = "Wychwood Forest",
	TerrainType = "pine-tree",
	CulturalNames = {
		"anglo-saxon", "Hwiccawudu" -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
	}
})

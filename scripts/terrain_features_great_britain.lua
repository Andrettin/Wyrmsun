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

DefineTerrainFeature("avon-river", {
	Name = "Avon River",
	TerrainType = "shallow-water",
	World = "earth",
	CulturalNames = {
		"anglo-saxon", "Afene River" -- Old English name of the Avon River (the source isn't explicit on which Avon River this refers to, but it is presumably this one); Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
	}
})

DefineTerrainFeature("berkshire-downs", {
--	Name = "Berkshire Downs",
	Name = "Aescesdun",
	TerrainType = "rock", -- hills
	World = "earth",
	CulturalNames = {
		"anglo-saxon", "Aescesdun", -- "Æscesdun"; Old English name of the Berkshire Downs; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"english", "Berkshire Downs"
	}
})

DefineTerrainFeature("bromswold-forest", {
	Name = "Bromswold Forest",
	TerrainType = "pine-tree",
	World = "earth",
	Color = {0, 120, 0},
	CulturalNames = {
		"anglo-saxon", "Bruneswald", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"english", "Bromswold Forest"
	}
})

DefineTerrainFeature("cambrian-mountains", { -- Source: "Philip's International School Atlas", 2006, p. 64.
	Name = "Cambrian Mountains",
	TerrainType = "rock", -- mountains
	World = "earth",
	CulturalNames = {
		"english", "Cambrian Mountains"
	}
})

DefineTerrainFeature("dee-river", { -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	Name = "Dee River",
	TerrainType = "shallow-water",
	World = "earth",
	CulturalNames = {
		"english", "Dee River" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	}
})

DefineTerrainFeature("grampian-mountains", { -- Source: "Philip's International School Atlas", 2006, p. 64.
	Name = "Grampian Mountains",
	TerrainType = "rock", -- mountains
	World = "earth",
	CulturalNames = {
		"english", "Grampian Mountains"
	}
})

DefineTerrainFeature("great-ouse-river", {
	Name = "Great Ouse River",
	TerrainType = "shallow-water",
	Color = {0, 160, 208},
	World = "earth",
	CulturalNames = {
		"english", "Great Ouse River"
	}
})

DefineTerrainFeature("kinver-forest", {
	Name = "Kinver Forest",
	TerrainType = "pine-tree",
	World = "earth",
	CulturalNames = {
		"anglo-saxon", "Cynibre", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"english", "Kinver Forest"
	}
})

DefineTerrainFeature("morfe-forest", {
	Name = "Morfe Forest",
	TerrainType = "pine-tree",
	World = "earth",
	CulturalNames = {
		"anglo-saxon", "Moerheb", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 733.
		"english", "Morfe Forest"
	}
})

DefineTerrainFeature("orwell-river", {
	Name = "Orwell River",
	TerrainType = "shallow-water",
	World = "earth",
	CulturalNames = {
		"anglo-saxon", "Arwe River", -- Old English name of the Orwell River (the source isn't explicit on which Avon River this refers to, but it is presumably this one); Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"english", "Orwell River"
	}
})

DefineTerrainFeature("pennines", { -- Source: "Philip's International School Atlas", 2006, p. 64.
	Name = "Pennines",
	TerrainType = "rock", -- mountains
	World = "earth",
	CulturalNames = {
		"english", "Pennines"
	}
})

DefineTerrainFeature("sherwood-forest", {
	Name = "Sherwood Forest",
	TerrainType = "pine-tree",
	World = "earth",
	Color = {0, 136, 0},
	CulturalNames = {
		"anglo-saxon", "Scirwudu", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 733.
		"english", "Sherwood Forest"
	}
})

DefineTerrainFeature("selwood", {
	Name = "Selwood",
	TerrainType = "pine-tree",
	World = "earth",
	Color = {0, 112, 0},
	CulturalNames = {
		"anglo-saxon", "Sealwudu", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 733.
		"english", "Selwood"
	}
})

DefineTerrainFeature("severn-river", { -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	Name = "Severn River",
	TerrainType = "shallow-water",
	Color = {0, 144, 208},
	World = "earth",
	CulturalNames = {
		"anglo-saxon", "Saefern River", -- "Sæfern"; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 733.
		"english", "Severn River" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	}
})

DefineTerrainFeature("snowdon", { -- Source: "Philip's International School Atlas", 2006, p. 64.
	Name = "Snowdon",
	TerrainType = "rock", -- mountain
	World = "earth",
	CulturalNames = {
		"english", "Snowdon"
	}
})

DefineTerrainFeature("thames-river", { -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	Name = "Thames River",
	TerrainType = "shallow-water",
	Color = {0, 176, 208},
	World = "earth",
	CulturalNames = {
		"anglo-saxon", "Temes River", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 733.
		"english", "Thames River" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	}
})

DefineTerrainFeature("the-weald", {
	Name = "The Weald",
	TerrainType = "pine-tree", -- The Weald was a forest, but of what kind?
	World = "earth",
	Color = {0, 144, 0},
	CulturalNames = {
		"anglo-saxon", "Andredesweald", -- Old English name of The Weald; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"english", "The Weald"
	}
})

DefineTerrainFeature("wyre-forest", {
	Name = "Wyre Forest",
	TerrainType = "pine-tree",
	World = "earth",
	CulturalNames = {
		"anglo-saxon", "Weogorenaleag", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 733.
		"english", "Wyre Forest"
	}
})

DefineTerrainFeature("wychwood-forest", {
	Name = "Wychwood Forest",
	TerrainType = "pine-tree",
	World = "earth",
	CulturalNames = {
		"anglo-saxon", "Hwiccawudu", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
		"english", "Wychwood Forest"
	}
})

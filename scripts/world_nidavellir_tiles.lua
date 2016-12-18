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
--      (c) Copyright 2016 by Andrettin
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

DefineWorldMapTile({32, 14}, {
	World = "Nidavellir",
	CulturalSettlementNames = {
		"dwarf", "Knalga"
	}
})

DefineWorldMapTile({33, 15}, {
	World = "Nidavellir",
	CulturalSettlementNames = {
		"dwarf", "Shorbear Hold"
	}
})

DefineWorldMapTile({44, 11}, {
	World = "Nidavellir",
	CulturalTerrainNames = {
		"Hills", "dwarf", "Svarinshaug", "name-elements", {
			"compound", "prefix", "dwarven", "noun", "singular", "genitive", "Svarin",
			"compound", "suffix", "dwarven", "noun", "singular", "Haug"
		}
	}
})

DefineWorldMapTile({45, 5}, {
	World = "Nidavellir",
	CulturalSettlementNames = {
		"dwarf", "Kal Kartha"
	}
})

DefineWorldMapTile({50, 13}, {
	World = "Nidavellir",
	CulturalSettlementNames = {
		"dwarf", "Lyr"
	}
})

DefineWorldMapTile({-1, -1}, { -- having no coordinates means it will be randomly placed in the map, according to its settings
	World = "Nidavellir",
	Province = "Untersberg",
	Capital = true,
	CulturalSettlementNames = {
		"gnome", "Gnana" -- capital of Untersberg; Source: Franz Hartmann, "Among the Gnomes", 1895, p. 179.
	}
})

DefineWorldMapTile({-1, -1}, { -- a cave called the Wyrm's Den (in Among the Gnomes it was called Dragon's Den), where in older times a wyrm lived (and devoured many sentient beings); the Wyrm's Den is 5800 feet above the sea level; Source: Franz Hartmann, "Among the Gnomes", 1895, pp. 26, 50.
	World = "Nidavellir",
	Province = "Untersberg", -- is the surface of the Untersberg itself
	Terrain = "Mountains",
	CulturalTerrainNames = {
		"Mountains", "gnome", "Wyrm's Den"
	}
})

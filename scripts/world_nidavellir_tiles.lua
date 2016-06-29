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
		"dwarf", "Knalga", "name-elements", {"word", "dwarven", "noun", "Knalga"}
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
		"dwarf", "Kal Kartha", "name-elements", {
			"separate", "prefix", "dwarven", "noun", "Kal",
			"separate", "suffix", "dwarven", "noun", "Kartha"
		}
	}
})

DefineWorldMapTile({50, 13}, {
	World = "Nidavellir",
	CulturalSettlementNames = {
		"dwarf", "Lyr", "name-elements", {"word", "dwarven", "adjective", "Lyr"}
	}
})

DefineWorldMapTile({-1, -1}, { -- having no coordinates means it will be randomly placed in the map, according to its settings
	World = "Nidavellir",
	Province = "Untersberg",
	Capital = true,
	CulturalSettlementNames = {
		"gnome", "Gnana"--, "name-elements", {"word", "gnomish", "noun", "Gnana"} -- capital of Untersberg; Source: Franz Hartmann, "Among the Gnomes", 1895, p. 179.
	}
})

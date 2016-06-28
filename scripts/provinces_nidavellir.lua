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

DefineProvince("Acthna", {
	World = "Nidavellir",
	Tiles = {},
	CulturalNames = {
		"gnome", "Acthna"
	},
	Map = "maps/random/random-map-cave.smp",
	SettlementTerrain = "Mountains",
	Claims = {
		"gnome", "Acthnic Tribe",
		"gnome", "Acthna"
	},
	HistoricalOwners = {
		-3000, "gnome", "Acthnic Tribe", -- maybe should be later?
		-1, "gnome", "Acthna" -- maybe should be at another date?
	},
	HistoricalCultures = {
		-3000, "gnome"
	}
})

DefineProvince("Aurvang", {
	World = "Nidavellir",
	Tiles = {},
	CulturalNames = {
		"dwarf", "Aurvang"
	},
	Map = "maps/nidavellir/aurvang.smp",
	SettlementTerrain = "Plains" -- should be Dark Plains, but those are not generated in random maps (yet)
})

DefineProvince("Brown Hills", {
	World = "Nidavellir",
	Tiles = { {18, 29}, {18, 30}, {19, 28}, {19, 29}, {19, 30}, {20, 28}, {20, 29}, {20, 30}, {20, 31}, {20, 32}, {21, 28}, {21, 29}, {21, 30}, {21, 31}, {21, 32}, {22, 25}, {22, 26}, {22, 27}, {22, 28}, {22, 29}, {22, 30}, {22, 31}, {22, 32}, {23, 25}, {23, 26}, {23, 27}, {23, 28}, {23, 29}, {23, 30}, {23, 31}, {23, 32}, {24, 24}, {24, 25}, {24, 26}, {24, 27}, {24, 28}, {24, 29}, {24, 30}, {24, 31}, {24, 32}, {25, 24}, {25, 25}, {25, 26}, {25, 27}, {25, 28}, {25, 29}, {25, 30}, {25, 31}, {25, 32}, {26, 24}, {26, 25}, {26, 26}, {26, 27}, {26, 28}, {26, 29}, {26, 30}, {26, 31}, {27, 26}, {27, 27}, {27, 28}, {27, 29}, {27, 30}, {28, 28}, {29, 28} },
	CulturalNames = {
		"dwarf", "Brown Hills",
		"gnome", "Brown Hills"
	},
	SettlementLocation = {25, 26},
	Map = "maps/nidavellir/brown-hills.smp",
	SettlementTerrain = "Hills", -- should be Dark Plains?
	Claims = {
		"gnome", "Untersberg"
	},
	HistoricalSettlementBuildings = {
		25, "unit-gnomish-barracks", true -- has capability to train soldiers
	}
})

DefineProvince("Caverns of Chaincolt", {
	World = "Nidavellir",
	Tiles = { {25, 14}, {25, 15}, {25, 16}, {26, 11}, {26, 14}, {26, 15}, {27, 11}, {27, 12}, {27, 13}, {27, 14}, {27, 15}, {27, 16}, {28, 9}, {28, 10}, {28, 11}, {28, 12}, {28, 13}, {28, 14}, {28, 15}, {28, 16}, {28, 17}, {29, 9}, {29, 10}, {29, 11}, {29, 12}, {29, 13}, {29, 14}, {29, 15}, {29, 16}, {29, 17}, {29, 18}, {29, 19}, {29, 20}, {30, 9}, {30, 10}, {30, 11}, {30, 12}, {30, 13}, {30, 14}, {30, 15}, {30, 16}, {30, 17}, {30, 18}, {30, 19}, {30, 20}, {31, 9}, {31, 10}, {31, 11}, {31, 12}, {31, 13}, {31, 15}, {31, 19}, {32, 9}, {32, 10}, {32, 11}, {32, 12} },
	CulturalNames = {
		"dwarf", "Caverns of Chaincolt"
	},
	SettlementLocation = {30, 13},
	Map = "maps/nidavellir/caverns-of-chaincolt.smp",
	SettlementTerrain = "Mountains", -- for random map generation
	Claims = {
		"dwarf", "Norlund Clan",
		"dwarf", "Knalga"
	},
	HistoricalSettlementBuildings = {
		25, "unit-dwarven-barracks", true, -- had capability to train warriors
		25, "unit-dwarven-lumber-mill", true -- had the capability to train scouts
	}
})

DefineProvince("Caverns of Flame", {
	World = "Nidavellir",
	Tiles = {
		{39, 2}, {39, 3}, {39, 4}, {39, 9},
		{40, 0}, {40, 1}, {40, 2}, {40, 3}, {40, 4}, {40, 5}, {40, 6}, {40, 7}, {40, 8}, {40, 9},
		{41, 0}, {41, 1}, {41, 2}, {41, 3}, {41, 4}, {41, 5}, {41, 6}, {41, 7}, {41, 8}, {41, 9},
		{42, 0}, {42, 1}, {42, 2}, {42, 3}, {42, 4}, {42, 5}, {42, 6}, {42, 7},
		{43, 0}, {43, 1}, {43, 2}, {43, 3}, {43, 6}
	},
	CulturalNames = {
		"dwarf", "Caverns of Flame",
		"goblin", "Caverns of Flame"
	},
	SettlementLocation = {41, 6},
	Map = "maps/nidavellir/caverns-of-flame.smp",
	SettlementTerrain = "Hills",
	HistoricalSettlementBuildings = {
		25, "unit-dwarven-smithy", true -- an abandoned dwarven forge was present when Thursagan used it to craft the Scepter of Fire
	}
})

DefineProvince("Eastern Mines", {
	World = "Nidavellir",
	Tiles = {
		{22, 0}, {22, 1}, {22, 2},
		{23, 0}, {23, 1}, {23, 2}, {23, 3}, {23, 4},
		{24, 0}, {24, 1}, {24, 2}, {24, 3}, {24, 4}, {24, 5},
		{25, 0}, {25, 1}, {25, 2}, {25, 3}, {25, 4}, {25, 5},
		{26, 0}, {26, 1}, {26, 2}, {26, 3}, {26, 4}, {26, 5},
		{27, 0}, {27, 1}, {27, 2}, {27, 3}, {27, 4}, {27, 5},
		{28, 0}, {28, 1}, {28, 2}, {28, 3}, {28, 4},
		{29, 0}, {29, 1}, {29, 2}, {29, 3}, {29, 4},
		{30, 0}, {30, 1}, {30, 2}, {30, 3}, {30, 4}, {30, 8},
		{31, 0}, {31, 1}, {31, 2}, {31, 3}, {31, 4}, {31, 5}, {31, 6}, {31, 8},
		{32, 0}, {32, 1}, {32, 2}, {32, 3}, {32, 4}, {32, 5}, {32, 6}, {32, 7}, {32, 8},
		{33, 0}, {33, 1}, {33, 2}, {33, 3}, {33, 4}, {33, 5}, {33, 6}, {33, 7}, {33, 8}, {33, 9},
		{34, 0}, {34, 1}, {34, 2}, {34, 3}, {34, 4}, {34, 5}, {34, 6}, {34, 7}, {34, 8},
		{35, 0}, {35, 1}, {35, 2}, {35, 3}, {35, 4}, {35, 5}, {35, 6}, {35, 7}, {35, 8}, {35, 9},
		{36, 0}, {36, 1}, {36, 2}, {36, 3}, {36, 4}, {36, 5}, {36, 6}, {36, 7}, {36, 8}, {36, 9},
		{37, 0}, {37, 1}, {37, 2}, {37, 3}, {37, 4}, {37, 5}, {37, 6}, {37, 7}, {37, 8}, {37, 9}, {37, 10},
		{38, 0}, {38, 1}, {38, 2}, {38, 3}, {38, 4}, {38, 5}, {38, 6}, {38, 7}, {38, 8}, {38, 9},
		{39, 0}, {39, 1}, {39, 5}, {39, 6}, {39, 7}, {39, 8}
	},
	CulturalNames = {
		"dwarf", "Eastern Mines",
		"goblin", "Eastern Mines"
	},
	SettlementLocation = {38, 7},
	Map = "maps/nidavellir/eastern-mines.smp",
	SettlementTerrain = "Hills"
})

DefineProvince("Gryphon Mountain", {
	World = "Nidavellir",
	Tiles = { {24, 22}, {24, 23}, {25, 20}, {25, 21}, {25, 22}, {25, 23}, {26, 20}, {26, 21}, {26, 22}, {26, 23}, {27, 20}, {27, 21}, {27, 22}, {27, 23}, {27, 24}, {27, 25}, {28, 20}, {28, 21}, {28, 22}, {28, 23}, {28, 24}, {28, 25}, {28, 26}, {28, 27}, {29, 21}, {29, 22}, {29, 23}, {29, 24}, {29, 25}, {29, 26}, {29, 27}, {30, 21}, {30, 23}, {30, 24}, {30, 25}, {30, 26}, {30, 27}, {31, 23}, {31, 24}, {31, 25}, {31, 26}, {32, 23}, {32, 24} },
	CulturalNames = {
		"dwarf", "Gryphon Mountain"
	},
	SettlementLocation = {29, 23},
	Map = "maps/random/random-map-swamp.smp",
	SettlementTerrain = "Mountains"
})

DefineProvince("Heartfangs", {
	World = "Nidavellir",
	Tiles = { {14, 10}, {14, 11}, {15, 7}, {15, 8}, {15, 9}, {15, 10}, {15, 11}, {15, 12}, {16, 7}, {16, 8}, {16, 9}, {16, 10}, {16, 11}, {16, 12}, {17, 8}, {17, 9}, {17, 10}, {17, 11}, {17, 12}, {17, 13}, {18, 6}, {18, 9}, {18, 10}, {18, 11}, {18, 12}, {19, 5}, {19, 6}, {19, 8}, {19, 9}, {19, 10}, {19, 11}, {19, 12}, {19, 13}, {20, 4}, {20, 5}, {20, 6}, {20, 7}, {20, 8}, {20, 9}, {20, 10}, {20, 11}, {20, 12}, {20, 13}, {21, 4}, {21, 5}, {21, 6}, {21, 7}, {21, 8}, {21, 9}, {21, 10}, {21, 11}, {21, 12}, {21, 13}, {22, 4}, {22, 5}, {22, 6}, {22, 7}, {22, 8}, {22, 9}, {22, 10}, {22, 11}, {22, 12}, {22, 13}, {23, 5}, {23, 6}, {23, 7}, {23, 8}, {23, 9}, {23, 10}, {23, 11}, {23, 12}, {23, 13}, {24, 6}, {24, 7}, {24, 8}, {24, 9}, {24, 10}, {24, 11}, {24, 12}, {24, 13}, {24, 14}, {25, 6}, {25, 7}, {25, 8}, {25, 9}, {25, 10}, {25, 11}, {25, 12}, {25, 13}, {26, 6}, {26, 7}, {26, 8}, {26, 9}, {26, 10}, {26, 12}, {26, 13}, {27, 9}, {27, 10} },
	CulturalNames = {
		"dwarf", "Heartfangs"
	},
	SettlementLocation = {23, 11},
	Map = "maps/random/random-map-swamp.smp",
	SettlementTerrain = "Mountains",
	Claims = {
		"goblin", "Khag Tribe"
	}
})

DefineProvince("High Pass", {
	World = "Nidavellir",
	Tiles = { {39, 12}, {40, 10}, {40, 11}, {40, 12}, {41, 10}, {41, 11}, {41, 12}, {42, 11} },
	SettlementLocation = {40, 12},
	CulturalNames = {
		"dwarf", "High Pass"
	},
	Map = "maps/random/random-map-swamp.smp",
	SettlementTerrain = "Hills"
})

DefineProvince("Highbrook Pass", {
	World = "Nidavellir",
	Tiles = { {33, 10}, {33, 11}, {34, 9}, {34, 10}, {34, 11}, {35, 10}, {35, 11}, {35, 12}, {35, 14}, {35, 15}, {36, 10}, {36, 11}, {36, 12}, {36, 13}, {36, 14}, {36, 15}, {37, 11}, {37, 12}, {37, 13}, {37, 14}, {37, 15}, {38, 10}, {38, 11}, {38, 12}, {38, 13}, {38, 14}, {39, 10}, {39, 11}, {39, 13}, {39, 14} },
	CulturalNames = {
		"dwarf", "Highbrook Pass"
	},
	SettlementLocation = {35, 11},
	Map = "maps/random/random-map-swamp.smp",
	SettlementTerrain = "Mountains",
	HistoricalOwners = {
		500, "dwarf", "Shinsplitter Clan" -- The Shinsplitter clan took over the Highbrook Pass around this time
	},
	HistoricalClaims = {
		500, "dwarf", "Shinsplitter Clan"
	},
	HistoricalSettlementBuildings = {
		535, "unit-dwarven-barracks", true -- the Shinsplitters were already capable of recruiting warriors in Highbrook Pass around this time
	}
})

DefineProvince("Joruvellir", {
	World = "Nidavellir",
	Tiles = {},
	CulturalNames = {
		"dwarf", "Joruvellir"
	},
	Map = "maps/random/random-map-swamp.smp",
	SettlementTerrain = "Plains", -- should be Dark Plains, but those are not generated in random maps (yet); when there are desert tiles implemented, this should be Desert instead
	Claims = {
		"dwarf", "Eikinskjaldi Clan",
		"dwarf", "Joruvellir"
	}
})

DefineProvince("Kal Kartha", {
	World = "Nidavellir",
	Tiles = {
		{42, 8}, {42, 9}, {42, 10},
		{43, 4}, {43, 5}, {43, 7}, {43, 8}, {43, 9}, {43, 10},
		{44, 2}, {44, 3}, {44, 4}, {44, 5}, {44, 6}, {44, 7}, {44, 8},
		{45, 2}, {45, 3}, {45, 4}, {45, 5}, {45, 6}, {45, 7}, {45, 8},
		{46, 2}, {46, 3}, {46, 4}, {46, 5}, {46, 6}, {46, 7}, {46, 8},
		{47, 1}, {47, 2}, {47, 3}, {47, 4}, {47, 5}, {47, 6}, {47, 7}, {47, 8}, {47, 9},
		{48, 0}, {48, 1}, {48, 2}, {48, 3}, {48, 4}, {48, 5}, {48, 6}, {48, 7}, {48, 8}, {48, 9},
		{49, 0}, {49, 1}, {49, 2}, {49, 3}, {49, 4}, {49, 5}, {49, 6}, {49, 7}, {49, 8}, {49, 9}, {49, 10},
		{50, 1}, {50, 2}, {50, 3}, {50, 4}, {50, 5}, {50, 6}, {50, 7}, {50, 8}, {50, 9}, {50, 10}, {50, 11},
		{51, 3}, {51, 4}, {51, 5}, {51, 6}, {51, 7}, {51, 8}, {51, 9}, {51, 10}, {51, 11},
		{52, 4}, {52, 5}, {52, 6}, {52, 7}, {52, 8}, {52, 9}, {52, 10}, {52, 11}, {52, 12},
		{53, 4}, {53, 5}, {53, 6}, {53, 7}, {53, 8}, {53, 9}, {53, 10}, {53, 11}, {53, 12},
		{54, 6}, {54, 7}, {54, 8}, {54, 9}, {54, 10}, {54, 11}, {54, 12},
		{55, 7}, {55, 8}, {55, 9}, {55, 10}, {55, 11}, {55, 12},
		{56, 12}
	},
	CulturalNames = {
		"dwarf", "Kal Kartha", "settlement-derived-name"
	},
	SettlementLocation = {45, 5},
	Map = "maps/random/random-map-swamp.smp",
	SettlementTerrain = "Mountains",
	Claims = {
		"dwarf", "Kal Kartha"
	},
	HistoricalSettlementBuildings = {
		550, "unit-dwarven-barracks", true, -- had capability to train warriors
		550, "unit-dwarven-smithy", true -- Karrag was already reviving the art of runesmithing in 550 AD
	}
})

DefineProvince("Lyr", {
	World = "Nidavellir",
	Tiles = { {47, 13}, {47, 14}, {47, 15}, {47, 16}, {48, 13}, {48, 14}, {48, 15}, {48, 16}, {49, 12}, {49, 13}, {49, 14}, {49, 15}, {49, 16}, {49, 17}, {50, 12}, {50, 13}, {50, 14}, {50, 15}, {50, 16}, {50, 17}, {51, 12}, {51, 13}, {51, 14}, {51, 15}, {51, 16}, {51, 17}, {52, 13}, {52, 14}, {52, 15}, {52, 16}, {52, 17}, {53, 13}, {53, 14}, {53, 15}, {53, 16}, {54, 13}, {54, 14}, {54, 15}, {54, 16}, {55, 13}, {55, 14}, {55, 15}, {55, 16}, {56, 13}, {56, 14}, {56, 15}, {56, 16} },
	CulturalNames = {
		"dwarf", "Lyr", "settlement-derived-name"
	},
	SettlementLocation = {50, 13},
	Map = "maps/random/random-map-swamp.smp",
	SettlementTerrain = "Hills",
	Claims = {
		"dwarf", "Lyr"
	}
})

DefineProvince("Myridia", {
	World = "Nidavellir",
	Tiles = {},
	CulturalNames = {
		"goblin", "Myridia"
	},
	Claims = {
		"goblin", "Myridia"
	},
	Map = "maps/random/random-map-swamp.smp",
	SettlementTerrain = "Plains" -- should be Dark Plains, but those are not generated in random maps (yet)
})

DefineProvince("Northern Wastelands", {
	World = "Nidavellir",
	Tiles = {
		{12, 3}, {12, 4},
		{13, 2}, {13, 3}, {13, 4},
		{14, 2}, {14, 3}, {14, 4},
		{15, 1}, {15, 2}, {15, 3}, {15, 4},
		{16, 0}, {16, 1}, {16, 2}, {16, 3}, {16, 4}, {16, 5}, {16, 6},
		{17, 0}, {17, 1}, {17, 2}, {17, 3}, {17, 4}, {17, 5}, {17, 6}, {17, 7},
		{18, 0}, {18, 1}, {18, 2}, {18, 3}, {18, 4}, {18, 5}, {18, 7}, {18, 8},
		{19, 0}, {19, 1}, {19, 2}, {19, 3}, {19, 4}, {19, 7},
		{20, 1}, {20, 2}, {20, 3},
		{21, 1}, {21, 2}, {21, 3}, {22, 3}
	},
	CulturalNames = {
		"dwarf", "Northern Wastelands",
		"goblin", "Northern Wastelands"
	},
	SettlementLocation = {14, 2},
	Map = "maps/nidavellir/northern-wastelands.smp",
	SettlementTerrain = "Hills",
	HistoricalSettlementBuildings = {
		25, "unit-dwarven-smithy", true, -- Thursagan's smithy
		27, "unit-dwarven-smithy", false -- Thursagan abandoned his smithy in the Northern Wastelands to follow Rugnur is his quest to craft the Scepter of Fire
	}
})

DefineProvince("Peaceful Valley", {
	World = "Nidavellir",
	Tiles = { {49, 18}, {50, 18}, {50, 19}, {50, 20}, {51, 18}, {51, 19}, {51, 20}, {52, 18}, {52, 19}, {52, 20}, {53, 17}, {53, 18}, {53, 19}, {53, 20}, {54, 17}, {54, 18}, {54, 19}, {55, 17}, {55, 18}, {55, 19}, {56, 17}, {56, 18} },
	CulturalNames = {
		"goblin", "Peaceful Valley"
	},
	SettlementLocation = {51, 19},
	Map = "maps/random/random-map-swamp.smp",
	SettlementTerrain = "Hills",
	Claims = {
		"goblin", "Lggi Tribe"
	}
})

DefineProvince("Shorbear Hills", {
	World = "Nidavellir",
	Tiles = { {31, 16}, {31, 17}, {31, 18}, {32, 15}, {32, 16}, {32, 17}, {32, 18}, {32, 19}, {33, 14}, {33, 15}, {33, 16}, {33, 17}, {33, 18}, {33, 19}, {34, 14}, {34, 15}, {34, 16}, {34, 17} },
	CulturalNames = {
		"dwarf", "Shorbear Hills"
	},
	SettlementLocation = {33, 15},
	Map = "maps/nidavellir/shorbear-hills.smp",
	SettlementTerrain = "Hills",
	Claims = {
		"dwarf", "Shorbear Clan",
		"dwarf", "Knalga"
	},
	HistoricalSettlementBuildings = {
		25, "unit-dwarven-stronghold", true, -- Shorbear Hold
		25, "unit-dwarven-barracks", true, -- had capability to train warriors
		25, "unit-dwarven-smithy", true, -- renowned skilled crafters
		29, "unit-dwarven-lumber-mill", true -- had the capability to train scouts
	}
})

DefineProvince("Southern Tunnels", {
	World = "Nidavellir",
	Tiles = { {31, 14}, {32, 13}, {32, 14}, {33, 12}, {33, 13}, {34, 12}, {34, 13}, {35, 13} },
	CulturalNames = {
		"dwarf", "Southern Tunnels"
	},
	SettlementLocation = {32, 14},
	Map = "maps/nidavellir/southern-tunnels.smp",
	SettlementTerrain = "Hills",
	Claims = {
		"dwarf", "Shinsplitter Clan",
		"dwarf", "Knalga"
	},
	HistoricalSettlementBuildings = {
		25, "unit-dwarven-barracks", true, -- had capability to train warriors
		25, "unit-dwarven-lumber-mill", true, -- had the capability to train scouts
		35, "unit-mercenary-camp", true -- at some point between 35 and 40 the Shinsplitters had the capacity to recruit mercenaries, as shown by them having hired the Surghan Mercenaries
	}
})

DefineProvince("Stilgar", {
	World = "Nidavellir",
	Tiles = {},
	CulturalNames = {
		"goblin", "Stilgar"
	},
	Claims = {
		"goblin", "Stilgar"
	},
	Map = "maps/random/random-map-swamp.smp",
	SettlementTerrain = "Plains" -- should be Dark Plains, but those are not generated in random maps (yet)
})

DefineProvince("Svarinshaug", {
	World = "Nidavellir",
	Tiles = { {40, 13}, {40, 14}, {41, 13}, {41, 14}, {42, 12}, {42, 13}, {42, 14}, {43, 11}, {43, 12}, {43, 13}, {43, 14}, {44, 9}, {44, 10}, {44, 11}, {44, 12}, {44, 13}, {44, 14}, {45, 9}, {45, 10}, {45, 11}, {45, 12}, {45, 13}, {45, 14}, {46, 9}, {46, 10}, {46, 11}, {46, 12}, {46, 13}, {46, 14}, {47, 10}, {47, 11}, {47, 12}, {48, 10}, {48, 11}, {48, 12}, {49, 11} },
	CulturalNames = {
		"dwarf", "Svarinshaug"
	},
	SettlementLocation = {44, 11},
	Map = "maps/nidavellir/svarinshaug.smp",
	SettlementTerrain = "Hills",
	Claims = {
		"dwarf", "Brising Clan"
	}
})

DefineProvince("Untersberg", {
	World = "Nidavellir",
	Tiles = {},
	CulturalNames = {
		"gnome", "Untersberg"
	},
	Map = "maps/random/random-map-swamp.smp",
	SettlementTerrain = "Hills",
	Claims = {
		"gnome", "Untersberg"
	},
	HistoricalCultures = {
		-3000, "gnome"
	}
})

DefineProvince("Deep Sea", {
	World = "Nidavellir",
	Water = true,
	Tiles = {
		{44, 0}, {44, 1},
		{45, 0}, {45, 1},
		{46, 0}, {46, 1},
		{47, 0}
	},
	CulturalNames = {
		"dwarf", "Deep Sea"
	}
})

DefineProvince("Lake Vrug", {
	World = "Nidavellir",
	Water = true,
	Tiles = { {27, 6}, {27, 7}, {27, 8}, {28, 5}, {28, 6}, {28, 7}, {28, 8}, {29, 5}, {29, 6}, {29, 7}, {29, 8}, {30, 5}, {30, 6}, {30, 7}, {31, 7} },
	CulturalNames = {
		"dwarf", "Lake Vrug"
	}
})

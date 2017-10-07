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

DefineProvince("Acthna", {
	World = "nidavellir",
	CulturalNames = {
		"gnome", "Acthna"
	},
	Claims = {
		"gnome", "acthnic-tribe",
		"gnome", "acthna",
		"gnome", "untersberg"
	},
	HistoricalOwners = {
		-3000, "gnome", "acthnic-tribe", -- maybe should be later?
		1, "gnome", "acthna" -- maybe should be at another date?
	},
	HistoricalCultures = {
		-3000, "gnome"
	}
})

DefineProvince("Aurvang", {
	World = "nidavellir",
	CulturalNames = {
		"dwarf", "Aurvang"
	}
})

DefineProvince("Brown Hills", {
	World = "nidavellir",
	CulturalNames = {
		"dwarf", "Brown Hills",
		"gnome", "Brown Hills"
	},
	Claims = {
		"gnome", "untersberg"
	},
	HistoricalOwners = {
		1, "gnome", "untersberg"
	},
	HistoricalCultures = {
		1, "gnome" -- maybe should be at another date
	},
	HistoricalSettlementBuildings = {
		25, "unit-gnomish-barracks", true -- has capability to train soldiers
	}
})

DefineProvince("Caverns of Chaincolt", {
	World = "nidavellir",
	CulturalNames = {
		"dwarf", "Caverns of Chaincolt"
	},
	Claims = {
		"dwarf", "norlund-clan",
		"dwarf", "knalga"
	},
	HistoricalSettlementBuildings = {
		25, "unit-dwarven-barracks", true, -- had capability to train warriors
		25, "unit-dwarven-lumber-mill", true -- had the capability to train scouts
	}
})

DefineProvince("Caverns of Flame", {
	World = "nidavellir",
	CulturalNames = {
		"dwarf", "Caverns of Flame",
		"goblin", "Caverns of Flame"
	},
	HistoricalSettlementBuildings = {
		25, "unit-dwarven-smithy", true -- an abandoned dwarven forge was present when Thursagan used it to craft the Scepter of Fire
	}
})

DefineProvince("Eastern Mines", {
	World = "nidavellir",
	CulturalNames = {
		"dwarf", "Eastern Mines",
		"goblin", "Eastern Mines"
	}
})

DefineProvince("Ezmarria", {
	World = "nidavellir",
	CulturalNames = {
		"goblin", "Ezmarria"
	},
	Claims = {
		"goblin", "ezmarria"
	}
})

DefineProvince("Gryphon Mountain", {
	World = "nidavellir",
	CulturalNames = {
		"dwarf", "Gryphon Mountain"
	}
})

DefineProvince("Heartfangs", {
	World = "nidavellir",
	CulturalNames = {
		"dwarf", "Heartfangs"
	},
	Claims = {
		"goblin", "khag-tribe"
	}
})

DefineProvince("High Pass", {
	World = "nidavellir",
	CulturalNames = {
		"dwarf", "High Pass"
	}
})

DefineProvince("Highbrook Pass", {
	World = "nidavellir",
	CulturalNames = {
		"dwarf", "Highbrook Pass"
	},
	HistoricalOwners = {
		500, "dwarf", "shinsplitter-clan" -- The Shinsplitter clan took over the Highbrook Pass around this time
	},
	HistoricalClaims = {
		500, "dwarf", "shinsplitter-clan"
	},
	HistoricalSettlementBuildings = {
		535, "unit-dwarven-barracks", true -- the Shinsplitters were already capable of recruiting warriors in Highbrook Pass around this time
	}
})

DefineProvince("Joruvellir", {
	World = "nidavellir",
	CulturalNames = {
		"dwarf", "Joruvellir"
	},
	Claims = {
		"dwarf", "eikinskjaldi-clan",
		"dwarf", "joruvellir"
	}
})

DefineProvince("Kal Kartha", {
	World = "nidavellir",
	CulturalNames = {
		"dwarf", "Kal Kartha"
	},
	Claims = {
		"dwarf", "kal-kartha"
	},
	HistoricalSettlementBuildings = {
		550, "unit-dwarven-barracks", true, -- had capability to train warriors
		550, "unit-dwarven-smithy", true -- Karrag was already reviving the art of runesmithing in 550 AD
	}
})

DefineProvince("Lyr", {
	World = "nidavellir",
	CulturalNames = {
		"dwarf", "Lyr"
	},
	Claims = {
		"dwarf", "lyr"
	}
})

DefineProvince("Myridia", {
	World = "nidavellir",
	CulturalNames = {
		"goblin", "Myridia"
	},
	Claims = {
		"goblin", "myridia"
	}
})

DefineProvince("Northern Wastelands", {
	World = "nidavellir",
	CulturalNames = {
		"dwarf", "Northern Wastelands",
		"goblin", "Northern Wastelands"
	},
	HistoricalSettlementBuildings = {
		25, "unit-dwarven-smithy", true, -- Thursagan's smithy
		27, "unit-dwarven-smithy", false -- Thursagan abandoned his smithy in the Northern Wastelands to follow Rugnur is his quest to craft the Scepter of Fire
	}
})

DefineProvince("Peaceful Valley", {
	World = "nidavellir",
	CulturalNames = {
		"goblin", "Peaceful Valley"
	},
	Claims = {
		"goblin", "lggi-tribe"
	}
})

DefineProvince("Shorbear Hills", {
	World = "nidavellir",
	CulturalNames = {
		"dwarf", "Shorbear Hills"
	},
	Claims = {
		"dwarf", "shorbear-clan",
		"dwarf", "knalga"
	},
	HistoricalSettlementBuildings = {
		25, "unit-dwarven-stronghold", true, -- Shorbear Hold
		25, "unit-dwarven-barracks", true, -- had capability to train warriors
		25, "unit-dwarven-smithy", true, -- renowned skilled crafters
		29, "unit-dwarven-lumber-mill", true -- had the capability to train scouts
	}
})

DefineProvince("Southern Tunnels", {
	World = "nidavellir",
	CulturalNames = {
		"dwarf", "Southern Tunnels"
	},
	Claims = {
		"dwarf", "shinsplitter-clan",
		"dwarf", "knalga"
	},
	HistoricalSettlementBuildings = {
		25, "unit-dwarven-barracks", true, -- had capability to train warriors
		25, "unit-dwarven-lumber-mill", true, -- had the capability to train scouts
		35, "unit-mercenary-camp", true -- at some point between 35 and 40 the Shinsplitters had the capacity to recruit mercenaries, as shown by them having hired the Surghan Mercenaries
	}
})

DefineProvince("Stilgar", {
	World = "nidavellir",
	CulturalNames = {
		"goblin", "Stilgar"
	},
	Claims = {
		"goblin", "stilgar"
	}
})

DefineProvince("Svarinshaug", {
	World = "nidavellir",
	CulturalNames = {
		"dwarf", "Svarinshaug"
	},
	Claims = {
		"dwarf", "brising-clan"
	}
})

DefineProvince("Tenebris", {
	World = "nidavellir",
	CulturalNames = {
		"goblin", "Tenebris"
	},
	Claims = {
		"goblin", "tenebris"
	}
})

DefineProvince("Untersberg", {
	World = "nidavellir",
	CulturalNames = {
		"gnome", "Untersberg"
	},
	Claims = {
		"gnome", "cubital-tribe",
		"gnome", "sagan-tribe",
		"gnome", "vulcan-tribe",
		"gnome", "untersberg"
	},
	HistoricalOwners = {
		-3000, "gnome", "sagan-tribe",
		1, "gnome", "untersberg"
	},
	HistoricalCultures = {
		-3000, "gnome"
	}
	-- in 1529, the gnomes of Untersberg were visited for 10 days by an outsider; Source: Franz Hartmann, "Among the Gnomes", 1895, p. 35.
	-- the gnomes of Untersberg were visited by an expedition on the 23rd of June in an unknown year; this happened after the Manchester-Liverpool railway line was already projected, but before (intercity? probably) railways were in action; Source: Franz Hartmann, "Among the Gnomes", 1895, pp. 24, 40-41.
	-- note: the project of the Liverpool-Manchester line was first discussed in 1822; Source: Henry Booth, "An Account of the Liverpool and Manchester Railway", 1830, p. 3.
})

DefineProvince("Deep Sea", {
	World = "nidavellir",
	Water = true,
	CulturalNames = {
		"dwarf", "Deep Sea"
	}
})

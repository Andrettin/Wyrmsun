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
--      (c) Copyright 2017-2019 by Andrettin
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

DefineSite("antrea", {
	Name = "Antrea",
	MapTemplate = "earth",
	Position = {4503, 660},
	CulturalNames = {
	},
	HistoricalOwners = {
		-8500, "uralic-tribe", -- a fishnet belonging to the ancestors of Finno-Ugric speaking peoples was found in Antrea (on the Karelian Isthmus), being dated c. 8500 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 184.
	},
	HistoricalBuildings = {
		-8500, 0, "farm"
	},
	Regions = {"eurasia", "europe"}
})

DefineSite("azov", {
	Name = "Azov",
	MapTemplate = "earth",
	Position = {4735, 979},
	Major = true,
	CulturalNames = {
		"germanic", "Ansugardiz", -- "Ansugárdiz" is a rendering of rendering of "Asgard" in Proto-Germanic, as in the Ynglinga saga's story Asgard is the settlement in "Asia" in which Odin's people (here understood as the Indo-Europeans who went on to settle Scandinavia and become speakers of Proto-Germanic) used to live until they migrated to Scandinavia; the settlement is identified with the modern Assor (Azov?), or alternatively with Chasgar; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 217.
		"slav", "Azov"
	},
	HistoricalOwners = {
		-3000, "asa-tribe",
		-2900, ""
		-- the Proto-Indo-Europeans who would give origin to the Germanic peoples concluded their migration to Scandinavia by 2800 BC
	},
	HistoricalBuildings = {
		-3000, -2900, "town-hall",
		-3000, -2900, "barracks",
		-3000, -2900, "farm"
	},
	HistoricalUnits = {
		-3000, -2900, "unit-germanic-worker", 1000, "asa-tribe",
		-3000, -2900, "unit-germanic-warrior", 8000, "asa-tribe" -- the great army assembled to fight the Vana
	},
	Regions = {"eurasia", "europe"}
})

DefineSite("novgorod", {
	Name = "Novgorod",
	MapTemplate = "earth",
	Position = {4551, 714},
	Major = true,
	Cores = {
		"holmgard"
	},
	CulturalNames = {
		"germanic", "Hulmagardiz", -- "Hulmagárdiz"; tentative Proto-Germanic rendering of Holmgard; see language data
		"norse", "Holmgard",
		"slav", "Novgorod"
	},
	HistoricalOwners = {
		-2900, "asa-tribe",
		-2800, ""
	},
	HistoricalBuildings = {
	},
	HistoricalUnits = {
		-2900, -2800, "unit-germanic-worker", 5000, "asa-tribe",
		-2900, -2800, "unit-germanic-warrior", 12000, "asa-tribe"
	},
	Regions = {"eurasia", "europe"}
})

DefineSite("pskov", {
	Name = "Pskov",
	MapTemplate = "earth",
	Position = {4480, 732},
	Major = true,
	CulturalNames = {
		"slav", "Pskov"
	},
	HistoricalOwners = {
	},
	HistoricalBuildings = {
	},
	HistoricalUnits = {
	},
	Regions = {"eurasia", "europe"}
})

DefineSite("rostov-on-don", {
	Name = "Rostov-on-Don",
	MapTemplate = "earth",
	Position = {4738, 970},
	Major = true,
	CulturalNames = {
		"celt", "Vanaquisl",
		"germanic", "Vanaquisl", -- the Tanais river is said to have been called Vanaquisl or Tanaquisl in the time of the Vana/Asa conflict in the Ynglinga saga, so it makes sense to call the city of Tanais, which shares the name of the river, "Vanaquisl" as well; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 217.
		"greek", "Tanais",
		"latin", "Tanais", -- Source: "Ancient Warfare VII.6", 2013, p. 7.
		"slav", "Rostov-on-Don"
	},
	HistoricalOwners = {
		-3000, "vana-tribe",
		-2800, ""
	},
	HistoricalBuildings = {
		-3000, -2800, "town-hall",
--		-3000, -2800, "barracks", -- we don't want them to produce units and attack
		-3000, -2800, "farm"
	},
	HistoricalUnits = {
		-3000, -2800, "unit-germanic-warrior", 3000, "vana-tribe" -- Vana defensive forces
	},
	Regions = {"eurasia", "europe"}
})

DefineSite("saint-petersburg", {
	Name = "Saint Petersburg",
	MapTemplate = "earth",
	Position = {4529, 682},
	Major = true,
	CulturalNames = {
		"slav", "Saint Petersburg"
	},
	HistoricalOwners = {
		-9000, "uralic-tribe", -- the ancestors of Finno-Ugric speaking peoples settled the Karelian Isthmus c. 9000 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 184.
	},
	HistoricalBuildings = {
		-9000, 0, "town-hall"
	},
	Regions = {"eurasia", "europe"}
})

DefineSite("viborg", {
	Name = "Viborg",
	MapTemplate = "earth",
	Position = {4495, 665},
	Major = true,
	CulturalNames = {
		"norse", "Viborg"
	},
	HistoricalOwners = {
		-9000, "uralic-tribe", -- the ancestors of Finno-Ugric speaking peoples settled the Karelian Isthmus c. 9000 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 184.
		1560, "sweden" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		-9000, 0, "town-hall"
	},
	Regions = {"eurasia", "europe"}
})

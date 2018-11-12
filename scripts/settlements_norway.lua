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
--      (c) Copyright 2017-2018 by Andrettin
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

DefineSite("arendal", {
	Name = "Arendal",
	MapTemplate = "earth",
	Position = {4048, 708},
	Major = true,
	CulturalNames = {
		"norse", "Arendal"
	},
	Cores = {
		"agder",
		"norway"
	},
	HistoricalOwners = {
		841, "agder" -- Halfdan the Black became king of Agder in 841; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 262.
	},
	HistoricalBuildings = {
		841, 0, "town-hall"
	},
	Regions = {"europe", "scandinavia", "west-and-central-europe"}
})

DefineSite("gjerstad", {
	Name = "Gjerstad",
	MapTemplate = "earth",
	Position = {4069, 702},
	CulturalNames = {
		"norse", "Geirstadir" -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 261.
	},
	Cores = {
		"norway",
		"vestfold"
	},
	HistoricalOwners = {
		824, "vestfold" -- Geirstadir was the main residence of king Olaf of Vestfold; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 262.
	},
	HistoricalBuildings = {
		824, 0, "farm" -- Geirstadir was a farm; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 262.
	},
	Regions = {"europe", "scandinavia", "west-and-central-europe"}
})

DefineSite("hamar", {
	Name = "Hamar",
	MapTemplate = "earth",
	Position = {4089, 666},
	Major = true,
	CulturalNames = {
		"norse", "Hamar"
	},
	Cores = {
		"hedmark",
		"norway"
	},
	HistoricalOwners = {
		841, "hedmark", -- the kingdom of Hedmark was in existence during Halfdan the Black's reign in Agder; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 262-263.
		1560, "denmark" -- Hamar's area was a Danish possession about 1560; Source: William R. Shepherd, "Historical Atlas", 1926, pp. 118-119.
	},
	HistoricalBuildings = {
		841, 0, "town-hall"
	},
	Regions = {"europe", "scandinavia", "west-and-central-europe"}
})

DefineSite("hermansverk", {
	Name = "Hermansverk",
	MapTemplate = "earth",
	Position = {3981, 653},
	Major = true,
	CulturalNames = {
		"norse", "Hermansverk"
	},
	Cores = {
		"norway",
		"sogn"
	},
	HistoricalOwners = {
		841, "sogn", -- the kingdom of Sogn was in existence during Halfdan the Black's reign in Agder; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 264.
	},
	HistoricalBuildings = {
		841, 0, "town-hall"
	},
	Regions = {"europe", "scandinavia", "west-and-central-europe"}
})

DefineSite("oslo", {
	Name = "Oslo",
	MapTemplate = "earth",
	Position = {4085, 682},
	Major = true,
	CulturalNames = {
		"norse", "Oslo"
	},
	Cores = {
		"norway",
		"vingulmark"
	},
	HistoricalOwners = {
		824, "vingulmark", -- Gandalf became king of Vingulmark when Gudrod Yngling died; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 260, 262.
	},
	HistoricalBuildings = {
		824, 0, "town-hall"
	},
	Regions = {"europe", "scandinavia", "west-and-central-europe"}
})

DefineSite("tonsberg", {
	Name = "Tonsberg",
	MapTemplate = "earth",
	Position = {4074, 698},
	Major = true,
	CulturalNames = {
		"norse", "Tonsberg" -- "Tønsberg"
	},
	Cores = {
		"norway",
		"vestfold"
	},
	HistoricalOwners = {
		841, "vestfold" -- the kingdom of Vestfold was in existence when Halfdan the Black became king of Agder in 841; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 262.
	},
	HistoricalBuildings = {
		841, 0, "town-hall"
	},
	Regions = {"europe", "scandinavia", "west-and-central-europe"}
})

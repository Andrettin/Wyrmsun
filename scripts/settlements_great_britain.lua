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

DefineSettlement("amesbury", {
	Name = "Amesbury",
	MapTemplate = "earth",
	Position = {3798, 883},
	CulturalNames = {
		"anglo-saxon", "Ambresbyrig", -- Old English name of Amesbury; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
--		"english", "Amesbury"
	},
	HistoricalOwners = {
		802, "wessex" -- Amesbury was a part of Wessex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
	},
	HistoricalBuildings = {
		802, 0, "farm"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("athelney", {
	Name = "Athelney",
	MapTemplate = "earth",
	Position = {3774, 887},
	CulturalNames = {
		"anglo-saxon", "Aethelingaig", -- "Æthelingaig"; Old English name of Athelney; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
--		"english", "Athelney"
	},
	HistoricalOwners = {
		802, "wessex" -- Athelney was a part of Wessex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
	},
	HistoricalBuildings = {
		802, 0, "farm"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("bamburgh", {
	Name = "Bamburgh",
	MapTemplate = "earth",
	Position = {3801, 783},
	CulturalNames = {
--		"english", "Bamburgh" -- as given by Stenton; Shepherd gives it as "Bamborough" instead; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 74.
	},
	HistoricalOwners = {
		802, "northumbria" -- Bamborough was a part of Northumbria c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
	},
	HistoricalBuildings = {
		802, 0, "town-hall"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("bath", {
	Name = "Bath",
	MapTemplate = "earth",
	Position = {3786, 877},
	CulturalNames = {
		"anglo-saxon", "Bathum", -- Old English name of Bath; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
--		"english", "Bath"
	},
	HistoricalOwners = {
		802, "mercia" -- Bath was a part of Mercia c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
	},
	HistoricalBuildings = {
		802, 0, "town-hall"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("carlisle", {
	Name = "Carlisle",
	MapTemplate = "earth",
	Position = {3773, 800},
	CulturalNames = {
--		"english", "Carlisle",
		"latin", "Luguvallium" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
	},
	HistoricalOwners = {
		410, "rome", -- Luguvallium was a part of the Roman empire c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		802, "strathclyde" -- Carlisle was a part of Strathclyde c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
	},
	HistoricalBuildings = {
		410, 0, "town-hall"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("chester", {
	Name = "Chester",
	MapTemplate = "earth",
	Position = {3774, 836},
	CulturalNames = {
		"celt", "Deva",
--		"english", "Chester", -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
		"latin", "Deva" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		802, "mercia" -- Chester was a part of Mercia c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
	},
	HistoricalBuildings = {
		802, 0, "farm"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("dorchester", {
	Name = "Dorchester",
	MapTemplate = "earth",
	Position = {3785, 894},
	CulturalNames = {
--		"english", "Dorchester",
		"celt", "Durnovaria",
		"latin", "Durnovaria" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
	},
	HistoricalOwners = {
		802, "wessex" -- Dorchester was a part of Wessex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
	},
	HistoricalBuildings = {
		802, 0, "farm"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("durham", {
	Name = "Durham",
	MapTemplate = "earth",
	Position = {3806, 802},
	CulturalNames = {
--		"english", "Durham" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	},
	HistoricalOwners = {
		802, "northumbria" -- Durham was a part of Northumbria c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
	},
	HistoricalBuildings = {
		802, 0, "town-hall"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("edinburgh", {
	Name = "Edinburgh",
	MapTemplate = "earth",
	Position = {3767, 774},
	CulturalNames = {
--		"english", "Edinburgh"
	},
	HistoricalOwners = {
		802, "northumbria" -- Edinburgh was a part of Northumbria c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
	},
	HistoricalBuildings = {
		802, 0, "farm"
	},
	Regions = {"british-isles", "europe", "northwest-europe", "scotland", "west-and-central-europe"}
})

DefineSettlement("exeter", {
	Name = "Exeter",
	MapTemplate = "earth",
	Position = {3760, 894},
	CulturalNames = {
--		"english", "Exeter",
		"celt", "Isca Dumnoniorum",
		"latin", "Isca Dumnoniorum" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
	},
	HistoricalOwners = {
		802, "wessex" -- Exeter was a part of Wessex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
	},
	HistoricalBuildings = {
		802, 0, "farm"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("godmundingham", {
	Name = "Godmundingham",
	MapTemplate = "earth",
	Position = {3825, 820},
	CulturalNames = {
--		"english", "Godmundingham"
	},
	HistoricalOwners = {
		802, "northumbria" -- Godmundingham was a part of Northumbria c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
	},
	HistoricalBuildings = {
		802, 0, "farm"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("hastings", {
	Name = "Hastings",
	MapTemplate = "earth",
	Position = {3860, 888},
	CulturalNames = {
--		"english", "Hastings"
	},
	HistoricalOwners = {
		802, "sussex" -- Hastings was a part of Sussex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
	},
	HistoricalBuildings = {
		802, 0, "town-hall"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("heathfield", {
	Name = "Heathfield",
	MapTemplate = "earth",
	Position = {3821, 827},
	CulturalNames = {
--		"english", "Heathfield"
	},
	HistoricalOwners = {
		802, "northumbria" -- Heathfield was a part of Northumbria c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
	},
	HistoricalBuildings = {
		802, 0, "farm"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("jarrow", {
	Name = "Jarrow",
	MapTemplate = "earth",
	Position = {3807, 797},
	CulturalNames = {
--		"english", "Jarrow"
	},
	HistoricalOwners = {
		802, "northumbria" -- Jarrow was a part of Northumbria c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
	},
	HistoricalBuildings = {
		802, 0, "farm"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("loidis", {
	Name = "Loidis", -- Leeds?
	MapTemplate = "earth",
	Position = {3804, 822},
	CulturalNames = {
		"anglo-saxon", "Loidis"
	},
	HistoricalOwners = {
		802, "northumbria" -- Loidis was a part of Northumbria c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
	},
	HistoricalBuildings = {
		802, 0, "farm"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("london", {
	Name = "London",
	MapTemplate = "earth",
	Position = {3839, 875},
	CulturalNames = {
		"celt", "Londinium",
--		"english", "London",
		"latin", "Londinium" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		802, "middlesex" -- London was a part of Middlesex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
	},
	HistoricalBuildings = {
		802, 0, "town-hall"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("pevensey", {
	Name = "Pevensey",
	MapTemplate = "earth",
	Position = {3849, 890},
	CulturalNames = {
--		"english", "Pevensey"
	},
	HistoricalOwners = {
		802, "sussex" -- Pevensey was a part of Sussex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
	},
	HistoricalBuildings = {
		802, 0, "farm"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("salisbury", {
	Name = "Salisbury",
	MapTemplate = "earth",
	Position = {3799, 886},
	CulturalNames = {
		"anglo-saxon", "Searuburh", -- Source: Paul Beekman Taylor, "Searoniðas: Old Norse Magic and Old English Verse", 1983, p. 115.
--		"english", "Salisbury" -- Source: "Philip's International School Atlas", 2006, p. 64.
	},
	HistoricalOwners = {
		802, "wessex" -- Salisbury was a part of Wessex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
	},
	HistoricalBuildings = {
		802, 0, "farm"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("wearmouth", {
	Name = "Wearmouth",
	MapTemplate = "earth",
	Position = {3808, 799},
	CulturalNames = {
--		"english", "Wearmouth"
	},
	HistoricalOwners = {
		802, "northumbria" -- Wearmouth was a part of Northumbria c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
	},
	HistoricalBuildings = {
		802, 0, "farm"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("whilby", {
	Name = "Whilby",
	MapTemplate = "earth",
	Position = {3825, 808},
	CulturalNames = {
--		"english", "Whilby"
	},
	HistoricalOwners = {
		802, "northumbria" -- Whilby was a part of Northumbria c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
	},
	HistoricalBuildings = {
		802, 0, "farm"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("winchester", {
	Name = "Winchester",
	MapTemplate = "earth",
	Position = {3810, 885},
	CulturalNames = {
--		"english", "Winchester"
	},
	HistoricalOwners = {
		802, "wessex" -- Winchester was a part of Wessex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
	},
	HistoricalBuildings = {
		802, 0, "town-hall"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("winwaedsfield", {
	Name = "Winwaedsfield",
	MapTemplate = "earth",
	Position = {3803, 820},
	CulturalNames = {
		"anglo-saxon", "Winwaedsfield",
--		"english", "Winwaedsfield"
	},
	HistoricalOwners = {
		802, "northumbria" -- Winwaedsfield was a part of Northumbria c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
	},
	HistoricalBuildings = {
		802, 0, "farm"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("york", {
	Name = "York",
	MapTemplate = "earth",
	Position = {3815, 819},
	CulturalNames = {
		"celt", "Eboracum",
--		"english", "York",
		"latin", "Eboracum"
	},
	HistoricalOwners = {
		500, "dere-tribe", -- the Dere (a collection of Anglian peoples) were in possession of York in 500 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 74.
		588, "bernicia", -- according to tradition, Æthelric of Bernicia acquired the kingdom of Deira upon its king Ælle's death in 588 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 75.
		654, "northumbria", -- Northumbria unified by Oswiu of Bernicia in 654
		1560, "england" -- political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		500, 0, "town-hall"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

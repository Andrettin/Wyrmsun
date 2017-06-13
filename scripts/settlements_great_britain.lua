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
		"anglo-saxon", "Bebbanburg", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
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

DefineSettlement("canterbury", {
	Name = "Canterbury",
	MapTemplate = "earth",
	Position = {3866, 880},
	CulturalNames = {
		"anglo-saxon", "Cantwaraburg", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
--		"english", "Canterbury"
	},
	HistoricalOwners = {
		597, "kent" -- Canterbury was a part of Kent in 597 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 105-106.
	},
	HistoricalBuildings = {
		597, 0, "town-hall",
		597, 0, "temple" -- Augustine and his followers performed religious services in a church in Canterbury in 597 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 105-106.
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("carlisle", {
	Name = "Carlisle",
	MapTemplate = "earth",
	Position = {3773, 800},
	CulturalNames = {
		"anglo-saxon", "Luel", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
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
		"anglo-saxon", "Legaceaster", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
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
		"anglo-saxon", "Dornwaraceaster", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
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

DefineSettlement("dover", {
	Name = "Dover",
	MapTemplate = "earth",
	Position = {3869, 884},
	CulturalNames = {
		"anglo-saxon", "Dofras", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
--		"english", "Dover" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	},
	HistoricalOwners = {
		802, "kent" -- Dover was a part of Kent c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
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
		"anglo-saxon", "Dunholm", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
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
		"anglo-saxon", "Escanceaster", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
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

DefineSettlement("goodmanham", {
	Name = "Goodmanham",
	MapTemplate = "earth",
	Position = {3825, 820},
	CulturalNames = {
		"anglo-saxon", "Godmunddingaham", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
--		"english", "Goodmanham"
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
	Position = {3859, 888},
	CulturalNames = {
		"anglo-saxon", "Haestingaceaster", -- "Hæstingaceaster"; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
--		"english", "Hastings"
	},
	HistoricalOwners = {
		802, "sussex" -- Hastings was a part of Sussex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
	},
	HistoricalBuildings = {
		802, 0, "farm"
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
		"anglo-saxon", "Gyruum", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
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

DefineSettlement("leicester", {
	Name = "Leicester",
	MapTemplate = "earth",
	Position = {3815, 850},
	CulturalNames = {
		"anglo-saxon", "Ligoraceaster", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
--		"english", "Leicester"
	},
	HistoricalOwners = {
		802, "mercia" -- Leicester was a part of Mercia c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
	},
	HistoricalBuildings = {
		737, 0, "temple" -- diocese of Leicester founded in 737 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 109.
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("lincoln", {
	Name = "Lincoln",
	MapTemplate = "earth",
	Position = {3825, 837},
	CulturalNames = {
		"anglo-saxon", "Lindcylene", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
--		"english", "Lincoln"
	},
	HistoricalOwners = {
		802, "mercia" -- Lincoln was a part of Mercia c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
	},
	HistoricalBuildings = {
		627, 0, "temple" -- a church was in existence in Lincoln in 627 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 115.
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("leeds", {
	Name = "Leeds",
	MapTemplate = "earth",
	Position = {3804, 822},
	CulturalNames = {
		"anglo-saxon", "Loidis", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
--		"english", "Leeds"
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
		"anglo-saxon", "Lunden", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
		"celt", "Londinium",
--		"english", "London",
		"latin", "Londinium" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		604, "essex", -- London was the capital of the East Saxons in 604 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 109.
		802, "middlesex" -- London was a part of Middlesex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
	},
	HistoricalBuildings = {
		604, 0, "town-hall",
		604, 0, "temple" -- a church was built in London in 604 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 109.
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("pevensey", {
	Name = "Pevensey",
	MapTemplate = "earth",
	Position = {3849, 890},
	CulturalNames = {
		"anglo-saxon", "Pefenesea", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 733.
--		"english", "Pevensey"
	},
	HistoricalOwners = {
		802, "sussex" -- Pevensey was a part of Sussex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
	},
	HistoricalBuildings = {
		802, 0, "town-hall"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("reculver", {
	Name = "Reculver",
	MapTemplate = "earth",
	Position = {3868, 879},
	CulturalNames = {
		"anglo-saxon", "Reculf", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 733.
--		"english", "Reculver"
	},
	HistoricalOwners = {
		604, "kent" -- Reculver was a part of Kent in 669 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 111.
	},
	HistoricalBuildings = {
		-- the area is too small to accomodate the settlement's buildings, given the other more important settlements nearby
--		604, 0, "temple" -- a church was founded in Reculver in 669 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 111.
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("rochester", {
	Name = "Rochester",
	MapTemplate = "earth",
	Position = {3850, 878},
	CulturalNames = {
		"anglo-saxon", "Hrofesceaster", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
--		"english", "Rochester"
	},
	HistoricalOwners = {
		604, "kent" -- Rochester was a part of Kent in 604 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 109.
	},
	HistoricalBuildings = {
		604, 0, "temple" -- king Æthelberht of Kent built a church in Rochester in 604 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 109.
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("salisbury", {
	Name = "Salisbury",
	MapTemplate = "earth",
	Position = {3799, 886},
	CulturalNames = {
		"anglo-saxon", "Searoburg", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 733.
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

DefineSettlement("whitby", {
	Name = "Whitby",
	MapTemplate = "earth",
	Position = {3825, 808},
	CulturalNames = {
		"anglo-saxon", "Streonaeshalch", -- "Streonæshalch"; on page 123 Stenton gives "Streoneshalh" instead; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 733.
--		"english", "Whitby"
	},
	HistoricalOwners = {
		663, "northumbria" -- Streoneshalh was a part of Northumbria in 663 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 122-123.
	},
	HistoricalBuildings = {
		663, 0, "temple" -- Streoneshalh had a monastery in 663; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 123.
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("winchester", {
	Name = "Winchester",
	MapTemplate = "earth",
	Position = {3810, 885},
	CulturalNames = {
		"anglo-saxon", "Witanceaster", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 734.
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
		"anglo-saxon", "Eoforwic", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
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
		500, 0, "town-hall",
		735, 0, "temple" -- archbishopric of York permanently instituted in 735 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 109.
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

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
--      (c) Copyright 2016-2018 by Andrettin
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
		"english", "Amesbury"
	},
	HistoricalOwners = {
		802, "wessex", -- Amesbury was a part of Wessex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Amesbury's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
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
		"english", "Athelney"
	},
	HistoricalOwners = {
		802, "wessex", -- Athelney was a part of Wessex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Athelney's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		802, 0, "farm"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("bamburgh", {
	Name = "Bamburgh",
	MapTemplate = "earth",
	Position = {3800, 784},
	Major = true,
	CulturalNames = {
		"anglo-saxon", "Bebbanburg", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"english", "Bamburgh" -- as given by Stenton; Shepherd gives it as "Bamborough" instead; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 74.
	},
	HistoricalOwners = {
		526, "bernice-tribe", -- by 526 AD the Anglo-Saxons had become masters of most of Roman Britannia; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		547, "bernicia", -- the Kingdom of Bernicia was founded in 547 AD; by 600 AD, the Bernice people (who were Anglians) were centered in Bamburgh; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 74-75.
		654, "northumbria", -- Northumbria unified by Oswiu of Bernicia in 654
		802, "northumbria", -- Bamborough was a part of Northumbria c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Bamburgh's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		526, 0, "town-hall"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("bath", {
	Name = "Bath",
	MapTemplate = "earth",
	Position = {3781, 879},
	CulturalNames = {
		"anglo-saxon", "Bathum", -- Old English name of Bath; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"briton", "Aquae Solis",
		"celt", "Aquae Solis",
		"english", "Bath",
		"latin", "Aquae Solis" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Aquae Solis/Bath was a part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		802, "mercia", -- Bath was a part of Mercia c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Bath's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "farm"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("bitterne", {
	Name = "Bitterne",
	MapTemplate = "earth",
	Position = {3810, 889},
	CulturalNames = {
		"briton", "Clausentum",
		"celt", "Clausentum",
		"english", "Bitterne",
		"latin", "Clausentum" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Clausentum/Bitterne was a part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		802, "wessex", -- Bitterne's area was a part of Wessex in 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Bitterne's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "farm"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("brancaster", {
	Name = "Brancaster",
	MapTemplate = "earth",
	Position = {3853, 843},
	CulturalNames = {
		"briton", "Branodunum",
		"celt", "Branodunum",
		"english", "Brancaster",
		"latin", "Branodunum" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Branodunum/Brancaster was a part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		802, "east-anglia", -- Branodunum's area was a part of East Anglia c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Branodunum's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "farm"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("bristol", {
	Name = "Bristol",
	MapTemplate = "earth",
	Position = {3782, 878},
	CulturalNames = {
		"english", "Bristol"
	},
	HistoricalOwners = {
		802, "mercia", -- Bristol was a part of Mercia c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Bristol's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		802, 1909, "farm",
		1909, 0, "university" -- University founded in Bristol in 1909; Source: David Thomson, "Europe Since Napoleon", 1966, p. 449.
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("cambridge", {
	Name = "Cambridge",
	MapTemplate = "earth",
	Position = {3845, 861},
	CulturalNames = {
		"anglo-saxon", "Grantanbrycg", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
		"briton", "Camboricum",
		"celt", "Camboricum",
		"english", "Cambridge",
		"latin", "Camboricum" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Camboricum/Cambridge was a part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		802, "mercia", -- Camboricum's area was a part of Mercia c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Cambridge was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 1250, "farm",
		1250, 0, "university" -- University existent in Cambridge in 1250; Source: "Atlas de História Mundial", p. 144.
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("canterbury", {
	Name = "Canterbury",
	MapTemplate = "earth",
	Position = {3866, 880},
	Major = true,
	CulturalNames = {
		"anglo-saxon", "Cantwaraburg", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"briton", "Durovernum",
		"english", "Canterbury",
		"celt", "Durovernum",
		"latin", "Durovernum" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Durovernum/Canterbury was a part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		597, "kent", -- Canterbury was a part of Kent in 597 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 105-106.
		1560, "england" -- Canterbury was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "town-hall",
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
		"briton", "Luguvallium",
		"celt", "Luguvallium",
		"english", "Carlisle",
		"latin", "Luguvallium" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Luguvallium was a part of the Roman empire c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		802, "strathclyde", -- Carlisle was a part of Strathclyde c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Carlisle was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "farm"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("castor-near-norwich", {
	Name = "Castor near Norwich",
	MapTemplate = "earth",
	Position = {3868, 850},
	CulturalNames = {
		"briton", "Venta Icenorum",
		"celt", "Venta Icenorum",
		"english", "Castor",
		"latin", "Venta Icenorum" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Venta Icenorum/Castor near Norwich was a part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		802, "east-anglia", -- Venta Icenorum's area was a part of East Anglia c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Venta Icenorum's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "farm"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("chester", {
	Name = "Chester",
	MapTemplate = "earth",
	Position = {3774, 837},
	Major = true,
	CulturalNames = {
		"anglo-saxon", "Legaceaster", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
		"briton", "Deva",
		"celt", "Deva",
		"english", "Chester", -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
		"latin", "Deva" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51; Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		410, "rome", -- Deva/Chester was a part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		802, "mercia", -- Chester was a part of Mercia c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Chester's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "town-hall"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("chichester", {
	Name = "Chichester",
	MapTemplate = "earth",
	Position = {3821, 890},
	Major = true,
	CulturalNames = {
		"anglo-saxon", "Cisseceaster", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"briton", "Regnum",
		"celt", "Regnum",
		"english", "Chichester",
		"latin", "Regnum" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Regnum/Chichester was a part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		802, "sussex", -- Chichester's area was a part of Sussex in 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Chichester's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "town-hall"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("cirencester", {
	Name = "Cirencester",
	MapTemplate = "earth",
	Position = {3796, 874},
	CulturalNames = {
		"anglo-saxon", "Cirenceaster", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"briton", "Corinium",
		"celt", "Corinium",
		"english", "Cirencester",
		"latin", "Corinium" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Corinium/Cirencester was a part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		802, "wessex", -- Cirencester's area was a part of Wessex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Cirencester's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "farm"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("colchester", {
	Name = "Colchester",
	MapTemplate = "earth",
	Position = {3860, 866},
	Major = true,
	CulturalNames = {
		"anglo-saxon", "Colneceaster", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"briton", "Camulodunum",
		"celt", "Camulodunum",
		"english", "Colchester",
		"latin", "Camulodunum" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Camulodunum/Colchester was a part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		802, "essex", -- Colchester was a part of Essex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Colchester's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "town-hall"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("corbridge", {
	Name = "Corbridge",
	MapTemplate = "earth",
	Position = {3794, 797},
	CulturalNames = {
		"anglo-saxon", "Corebricg", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"briton", "Corstopitum",
		"celt", "Corstopitum",
		"english", "Corbridge",
		"latin", "Corstopitum" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Corstopitum was a part of the Roman empire c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		526, "bernice-tribe", -- Corbridge's area was Anglo-Saxon territory in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		547, "bernicia", -- the Kingdom of Bernicia was founded in 547 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 74-75.
		654, "northumbria", -- Northumbria unified by Oswiu of Bernicia in 654
		802, "northumbria", -- Corbridge's area was a part of Northumbria c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Corbridge's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "farm"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("deorham", {
	Name = "Deorham",
	MapTemplate = "earth",
	Position = {3781, 877},
	CulturalNames = {
		"english", "Deorham"
	},
	HistoricalOwners = {
		802, "mercia", -- Deorham was a part of Mercia c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Deorham's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
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
		"briton", "Durnovaria",
		"celt", "Durnovaria",
		"english", "Dorchester",
		"latin", "Durnovaria" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Durnovaria/Dorchester was a part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		802, "wessex", -- Dorchester was a part of Wessex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Dorchester's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "farm"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("dover", {
	Name = "Dover",
	MapTemplate = "earth",
	Position = {3866, 884},
	CulturalNames = {
		"anglo-saxon", "Dofras", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
		"briton", "Dubrae",
		"celt", "Dubrae",
		"english", "Dover", -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
		"latin", "Dubrae" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Dubrae/Dover was a part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		802, "kent", -- Dover was a part of Kent c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Dover was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "farm"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("dunwich", {
	Name = "Dunwich",
	MapTemplate = "earth",
	Position = {3874, 859},
	CulturalNames = {
		"anglo-saxon", "Dommocceaster", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
		"english", "Dunwich"
	},
	HistoricalOwners = {
		672, "east-anglia",
		802, "east-anglia", -- Dunwich's area was a part of East Anglia c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Dunwich's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		672, 0, "temple" -- Dunwich was a bishopric as of 672; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 134.
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("durham", {
	Name = "Durham",
	MapTemplate = "earth",
	Position = {3806, 802},
	CulturalNames = {
		"anglo-saxon", "Dunholm", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
		"english", "Durham" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	},
	HistoricalOwners = {
		802, "northumbria", -- Durham was a part of Northumbria c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Durham's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		802, 1832, "farm",
		1832, 0, "university" -- University founded in Durham in 1832; Source: David Thomson, "Europe Since Napoleon", 1966, p. 449.
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("durolipons", {
	Name = "Durolipons",
	MapTemplate = "earth",
	Position = {3838, 859},
	CulturalNames = {
		"briton", "Durolipons",
		"celt", "Durolipons",
		"latin", "Durolipons" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Durolipons was a part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		802, "mercia", -- Durolipons' area was a part of Mercia c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Durolipons' area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "farm"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("edinburgh", {
	Name = "Edinburgh",
	MapTemplate = "earth",
	Position = {3766, 775},
	Major = true,
	CulturalNames = {
		"english", "Edinburgh"
	},
	HistoricalOwners = {
		-27, "otalini-tribe", -- British tribes (apparently) in the time of Augustus; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		80, "rome", -- The area between the Wall of Antoninus (or Severus) and Hadrian's Wall was acquired by Rome in 80 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		161, "selgovae-tribe", -- The area was inhabited by the Selgovae in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		802, "northumbria", -- Edinburgh was a part of Northumbria c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "scotland" -- Edinburgh was a part of Scotland in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		-27, 0, "town-hall",
		1582, 0, "university" -- University founded in Edinburgh in 1582; Source: "The Cambridge Modern History Atlas", 1912, p. 9.
	},
	Regions = {"british-isles", "europe", "northwest-europe", "scotland", "west-and-central-europe"}
})

DefineSettlement("exeter", {
	Name = "Exeter",
	MapTemplate = "earth",
	Position = {3759, 893},
	Major = true,
	CulturalNames = {
		"anglo-saxon", "Escanceaster", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
		"briton", "Isca Dumnoniorum",
		"celt", "Isca Dumnoniorum",
		"english", "Exeter",
		"latin", "Isca Dumnoniorum" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Isca Dumnoniorum/Exeter was a part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		802, "wessex", -- Exeter was a part of Wessex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Exeter's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "town-hall"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("farnham", {
	Name = "Farnham",
	MapTemplate = "earth",
	Position = {3821, 883},
	CulturalNames = {
		"anglo-saxon", "Fearnhamm", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
		"english", "Farnham"
	},
	HistoricalOwners = {
		802, "wessex", -- Farnham's area was a part of Wessex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		858, "wessex", -- Farnham was given to king Æthelbald of Wessex by bishop Swithun in 858; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 146.
		1560, "england" -- Farnham's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		802, 0, "farm"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("glasgow", {
	Name = "Glasgow",
	MapTemplate = "earth",
	Position = {3741, 777},
	Major = true,
	CulturalNames = {
		"english", "Glasgow"
	},
	HistoricalOwners = {
		-27, "damnii-tribe", -- Glasgow's area was territory of the Damnii (apparently) in the time of Augustus; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		80, "rome", -- Glasgow's area was acquired by Rome in 80 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		802, "strathclyde", -- Glasgow's area was a part of Strathclyde c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "scotland" -- Glasgow was a part of Scotland in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		-27, 0, "town-hall",
		1450, 0, "university" -- University founded in Glasgow in 1450; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
	},
	Regions = {"british-isles", "europe", "northwest-europe", "scotland", "west-and-central-europe"}
})

DefineSettlement("glastonbury", {
	Name = "Glastonbury",
	MapTemplate = "earth",
	Position = {3778, 884},
	CulturalNames = {
		"english", "Glastonbury"
	},
	HistoricalOwners = {
		802, "wessex", -- Glastonbury was a part of Wessex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Glastonbury's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		802, 0, "farm"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("gloucester", {
	Name = "Gloucester",
	MapTemplate = "earth",
	Position = {3784, 874},
	Major = true,
	CulturalNames = {
		"anglo-saxon", "Gleawanceaster", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
		"briton", "Glevum",
		"celt", "Glevum",
		"english", "Gloucester",
		"latin", "Glevum" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Glevum/Gloucester was a part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		802, "mercia", -- Gloucester was a part of Mercia in 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Gloucester was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "town-hall"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("goodmanham", {
	Name = "Goodmanham",
	MapTemplate = "earth",
	Position = {3825, 820},
	CulturalNames = {
		"anglo-saxon", "Godmunddingaham", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
		"english", "Goodmanham"
	},
	HistoricalOwners = {
		802, "northumbria", -- Godmundingham was a part of Northumbria c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Goodmanham's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		802, 0, "farm"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("hastings", {
	Name = "Hastings",
	MapTemplate = "earth",
	Position = {3859, 887},
	CulturalNames = {
		"anglo-saxon", "Haestingaceaster", -- "Hæstingaceaster"; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
		"english", "Hastings"
	},
	HistoricalOwners = {
		802, "sussex", -- Hastings was a part of Sussex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Hastings' area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
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
		"english", "Heathfield"
	},
	HistoricalOwners = {
		802, "northumbria", -- Heathfield was a part of Northumbria c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Heathfield's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		802, 0, "farm"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("hereford", {
	Name = "Hereford",
	MapTemplate = "earth",
	Position = {3775, 863},
	CulturalNames = {
		"english", "Hereford"
	},
	HistoricalOwners = {
		680, "mercia", -- Hereford was a part of Mercia by 680; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 134.
		802, "mercia", -- Hereford's area was a part of Mercia c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Hereford's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		680, 0, "temple" -- archbishop Theodore of Canterbury made Hereford into a separate diocese before 680; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 134.
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("hexham", {
	Name = "Hexham",
	MapTemplate = "earth",
	Position = {3791, 798},
	CulturalNames = {
		"anglo-saxon", "Hagustaldesea", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
		"english", "Hexham"
	},
	HistoricalOwners = {
		684, "northumbria", -- Hexham was a part of Northumbria in 684; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 138.
		802, "northumbria", -- Hexham's area was a part of Northumbria c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Hexham's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		684, 0, "temple" -- an episcopal see was existent in Hexham as of 684; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 138.
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("jarrow", {
	Name = "Jarrow",
	MapTemplate = "earth",
	Position = {3807, 797},
	CulturalNames = {
		"anglo-saxon", "Gyruum", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
		"english", "Jarrow"
	},
	HistoricalOwners = {
		681, "northumbria",
		802, "northumbria", -- Jarrow was a part of Northumbria c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Jarrow's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		681, 0, "temple" -- Benedict Biscop founded a monastery at Jarrow in 681, with the land being given by king Ecgfrith of Northumbria; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 185.
		-- Benedict Biscop travelled to Rome in 684 to acquire relics and books for the monastery at Jarrow; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 185.
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("kingston", {
	Name = "Kingston",
	MapTemplate = "earth",
	Position = {3838, 878},
	CulturalNames = {
		"english", "Kingston"
	},
	HistoricalOwners = {
		802, "wessex", -- Kingston was a part of Wessex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Kingston's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
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
		"briton", "Ratae",
		"celt", "Ratae",
		"english", "Leicester",
		"latin", "Ratae" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Ratae/Leicester was a part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		802, "mercia", -- Leicester was a part of Mercia c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Leicester was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 737, "farm",
		737, 0, "temple" -- diocese of Leicester permanently founded in 737 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 109, 134, 146.
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("lincoln", {
	Name = "Lincoln",
	MapTemplate = "earth",
	Position = {3825, 837},
	CulturalNames = {
		"anglo-saxon", "Lindcylene", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
		"briton", "Lindum",
		"celt", "Lindum",
		"english", "Lincoln",
		"latin", "Lindum" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Lindum/Lincoln was a part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		674, "northumbria", -- Lindsey was conquered by Ecgfrith of Northumbria in 674; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 134.
		678, "mercia", -- Lindsey was conquered by Æthelred of Mercia in 678; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 134.
		802, "mercia", -- Lincoln was a part of Mercia c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Lincoln's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 627, "farm",
		627, 0, "temple" -- a church was in existence in Lincoln in 627 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 115.
		-- Lindsey became a separate diocese in 677; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 134.
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("leeds", {
	Name = "Leeds",
	MapTemplate = "earth",
	Position = {3804, 822},
	CulturalNames = {
		"anglo-saxon", "Loidis", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
		"english", "Leeds"
	},
	HistoricalOwners = {
		802, "northumbria", -- Loidis was a part of Northumbria c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Leeds' area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		802, 1904, "farm",
		1904, 0, "university" -- University founded in Leeds in 1904; Source: David Thomson, "Europe Since Napoleon", 1966, p. 449.
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("lichfield", {
	Name = "Lichfield",
	MapTemplate = "earth",
	Position = {3797, 849},
	CulturalNames = {
		"anglo-saxon", "Liccidfeld", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
		"english", "Lichfield"
	},
	HistoricalOwners = {
		669, "mercia", -- Lichfield was a part of Mercia in 669; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 132.
		802, "mercia", -- Lichfield's area was a part of Mercia c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Lichfield's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		669, 0, "temple" -- Lichfield became a bishopric in 669; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 132.
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("london", {
	Name = "London",
	MapTemplate = "earth",
	Position = {3839, 873},
	Major = true,
	CulturalNames = {
		"anglo-saxon", "Lunden", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
		"briton", "Londinium",
		"celt", "Londinium",
		"english", "London",
		"latin", "Londinium" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51; Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		410, "rome", -- Londinium/London was a part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		604, "essex", -- London was the capital of the East Saxons in 604 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 109.
		802, "middlesex", -- London was a part of Middlesex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- London was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "town-hall",
		604, 0, "temple", -- a church was built in London in 604 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 109.
		-- London possessed a bishopric as of 704; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 142, 179.
		1836, 0, "university" -- University founded in London in 1836; Source: David Thomson, "Europe Since Napoleon", 1966, p. 449.
	},
	HistoricalPopulation = {
		1500, 60000, -- London had a population of 60,000 in 1500; Source: Lawrence Stone, "As Causas da Revolução Inglesa: 1529-1642", pp. 134-135.
		1640, 450000, -- London had a population of 450,000 in 1640; Source: Lawrence Stone, "As Causas da Revolução Inglesa: 1529-1642", pp. 134-135.
		1789, 1000000, -- London had a population of around 1,000,000 in 1789; Source: Eric J. Hobsbawm, "The Age of Revolution, Europe 1789-1848", p. 28.
		1801, 959000 -- London had a population of 959,000 in 1801; Source: "Atlas de História Mundial", 2001.
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("malmesbury", {
	Name = "Malmesbury",
	MapTemplate = "earth",
	Position = {3794, 879},
	CulturalNames = {
		"anglo-saxon", "Maeldubesburg", -- "Mældubesburg"; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
		"english", "Malmesbury"
	},
	HistoricalOwners = {
		705, "wessex", -- Malmesbury was (presumably) a part of Wessex in 705 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 142.
		802, "wessex", -- Malmesbury was a part of Wessex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Malmesbury's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		705, 0, "temple" -- an abbey existed in Malmesbury as of 705; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 142.
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("nursling", {
	Name = "Nursling",
	MapTemplate = "earth",
	Position = {3808, 889},
	CulturalNames = {
		"english", "Nursling"
	},
	HistoricalOwners = {
		716, "wessex",
		802, "wessex", -- Nursling's area was a part of Northumbria c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Nursling's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		-- 716, 0, "temple" -- the West Saxon Wynfrith/Boniface was the head of the monastic school at a monastery in Nursling in 716, when he left it to go perform missionary work in Frisia; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 168.
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("ockley", {
	Name = "Ockley",
	MapTemplate = "earth",
	Position = {3836, 883},
	CulturalNames = {
		"english", "Ockley"
	},
	HistoricalOwners = {
		802, "wessex", -- Ockley was a part of Wessex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Ockley's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		802, 0, "farm"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("old-sarum", {
	Name = "Old Sarum",
	MapTemplate = "earth",
	Position = {3798, 885},
	CulturalNames = {
		"briton", "Sorbiodunum",
		"celt", "Sorbiodunum",
		"english", "Old Sarum",
		"latin", "Sorbiodunum" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Sorbiodunum/Old Sarum was a part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		802, "wessex", -- Old Sarum was a part of Wessex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Old Sarum's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "farm"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("oundle", {
	Name = "Oundle",
	MapTemplate = "earth",
	Position = {3816, 854},
	CulturalNames = {
		"english", "Oundle"
	},
	HistoricalOwners = {
		709, "mercia", -- Oundle was a part of Mercia in 709; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 143, 145.
		802, "mercia", -- Oundle's area was a part of Mercia c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Oundle's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		709, 0, "temple" -- Oundle possessed a monastery as of 709; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 145.
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("pevensey", {
	Name = "Pevensey",
	MapTemplate = "earth",
	Position = {3848, 889},
	CulturalNames = {
		"anglo-saxon", "Pefenesea", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 733.
		"briton", "Anderida",
		"celt", "Anderida",
		"english", "Pevensey",
		"latin", "Anderida" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Anderida/Pevensey was a part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		802, "sussex", -- Pevensey was a part of Sussex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Pevensey's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "farm"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("reading", {
	Name = "Reading",
	MapTemplate = "earth",
	Position = {3817, 876},
	CulturalNames = {
		"english", "Reading"
	},
	HistoricalOwners = {
		802, "wessex", -- Reading was a part of Wessex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Reading's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		802, 0, "farm"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("reculver", {
	Name = "Reculver",
	MapTemplate = "earth",
	Position = {3868, 879},
	CulturalNames = {
		"anglo-saxon", "Reculf", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 733.
		"briton", "Regulbium",
		"celt", "Regulbium",
		"english", "Reculver",
		"latin", "Regulbium" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Regulbium/Reculver was a part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		669, "kent", -- Reculver was a part of Kent in 669 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 111.
		1560, "england" -- Reculver's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		-- the area is too small to accomodate the settlement's buildings, given the other more important settlements nearby
--		410, 669, "farm",
--		669, 0, "temple" -- a church was founded in Reculver in 669 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 111.
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("richborough", {
	Name = "Richborough",
	MapTemplate = "earth",
	Position = {3870, 881},
	CulturalNames = {
		"briton", "Rutupiae",
		"celt", "Rutupiae",
		"english", "Richborough",
		"latin", "Rutupiae" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Rutupiae/Richborough was a part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		802, "kent", -- Richborough's area was a part of Kent in 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Richborough's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
--		410, 0, "farm" -- not enough space
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("ripon", {
	Name = "Ripon",
	MapTemplate = "earth",
	Position = {3828, 816},
	CulturalNames = {
		"anglo-saxon", "Hrypum", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
		"english", "Ripon"
	},
	HistoricalOwners = {
		686, "northumbria", -- Ripon was a part of Northumbria in 686; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 139.
		802, "northumbria", -- Ripon's area was a part of Northumbria c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Ripon's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		686, 0, "temple" -- a church was existent in Ripon as of 686; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 139.
		-- Ripon ceased to be a bishopric when Wilfrid died in 709; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 145-146.
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("rochester", {
	Name = "Rochester",
	MapTemplate = "earth",
	Position = {3850, 879},
	CulturalNames = {
		"anglo-saxon", "Hrofesceaster", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
		"briton", "Durobrivae",
		"celt", "Durobrivae",
		"english", "Rochester",
		"latin", "Durobrivae" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Durobrivae/Rochester was a part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		604, "kent", -- Rochester was a part of Kent in 604 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 109.
		1560, "england" -- Rochester's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 604, "farm",
		604, 0, "temple" -- king Æthelberht of Kent built a church in Rochester in 604 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 109.
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("saint-albans", {
	Name = "St. Albans",
	MapTemplate = "earth",
	Position = {3832, 870},
	CulturalNames = {
		"anglo-saxon", "Sanctae Albanes", -- "Sanctæ Albanes"; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 733.
		"briton", "Verulamium",
		"celt", "Verulamium",
		"english", "St. Albans",
		"latin", "Verulamium" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Verulamium/St. Albans was a part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		802, "middlesex", -- St. Albans was a part of Middlesex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- St. Albans' area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "farm"
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
		"briton", "Sorbidunom", -- Source: Paul Beekman Taylor, "Searoniðas: Old Norse Magic and Old English Verse", 1983, p. 115.
		"celt", "Sorbidunom",
		"english", "Salisbury" -- Source: "Philip's International School Atlas", 2006, p. 64.
	},
	HistoricalOwners = {
		802, "wessex", -- Salisbury was a part of Wessex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Salisbury's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		802, 0, "farm"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("sherborne", {
	Name = "Sherborne",
	MapTemplate = "earth",
	Position = {3783, 891},
	CulturalNames = {
		"anglo-saxon", "Scireburnan", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 733.
		"english", "Sherborne"
	},
	HistoricalOwners = {
		705, "wessex", -- Sherborne was a part of Wessex in 705 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 142.
		1560, "england" -- Sherborne's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		705, 0, "temple" -- a bishopric was established in Sherborne in 705 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 142.
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("silchester", {
	Name = "Silchester",
	MapTemplate = "earth",
	Position = {3814, 878},
	CulturalNames = {
		"briton", "Calleva",
		"celt", "Calleva",
		"english", "Silchester",
		"latin", "Calleva" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Calleva/Silchester was a part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		802, "wessex", -- Silchester's area was a part of Wessex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Silchester's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "farm"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("sitomagus", {
	Name = "Sitomagus",
	MapTemplate = "earth",
	Position = {3875, 857},
	CulturalNames = {
		"briton", "Sitomagus",
		"celt", "Sitomagus",
		"latin", "Sitomagus" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Sitomagus was a part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		802, "east-anglia", -- Sitomagus' area was a part of East Anglia c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Sitomagus' area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "farm"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("southampton", {
	Name = "Southampton",
	MapTemplate = "earth",
	Position = {3808, 888},
	CulturalNames = {
		"english", "Southampton"
	},
	HistoricalOwners = {
		802, "wessex", -- Southampton was a part of Wessex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Southampton's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		802, 0, "farm"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("speen", {
	Name = "Speen",
	MapTemplate = "earth",
	Position = {3809, 877},
	CulturalNames = {
		"briton", "Spinae",
		"celt", "Spinae",
		"english", "Speen",
		"latin", "Spinae" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Spinae/Speen was a part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		802, "wessex", -- Speen's area was a part of Wessex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Speen's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "farm"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("vindogladia", {
	Name = "Vindogladia",
	MapTemplate = "earth",
	Position = {3794, 889},
	CulturalNames = {
		"briton", "Vindogladia",
		"celt", "Vindogladia",
		"latin", "Vindogladia" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Vindogladia was a part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		802, "wessex", -- Vindogladia's area was a part of Wessex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Vindogladia's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "farm"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("wearmouth", {
	Name = "Wearmouth",
	MapTemplate = "earth",
	Position = {3807, 799},
	CulturalNames = {
		"english", "Wearmouth"
	},
	HistoricalOwners = {
		674, "northumbria",
		802, "northumbria", -- Wearmouth was a part of Northumbria c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Wearmouth's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		674, 0, "temple" -- Benedict Biscop founded a monastery at Wearmouth in 674, with the land being given by king Ecgfrith of Northumbria; Benedict Biscop transported his large collection of books to Wearmouth, establishing a library at the monastery; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 184-185.
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("whitby", {
	Name = "Whitby",
	MapTemplate = "earth",
	Position = {3825, 809},
	CulturalNames = {
		"anglo-saxon", "Streonaeshalch", -- "Streonæshalch"; on page 123 Stenton gives "Streoneshalh" instead; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 733.
		"english", "Whitby"
	},
	HistoricalOwners = {
		663, "northumbria", -- Streoneshalh was a part of Northumbria in 663 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 122-123.
		1560, "england" -- Whitby's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		663, 0, "temple" -- Streoneshalh had a monastery in 663; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 123.
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("whithorn", {
	Name = "Whithorn",
	MapTemplate = "earth",
	Position = {3739, 802},
	CulturalNames = {
		"anglo-saxon", "Hwitern", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
		"english", "Whithorn"
	},
	HistoricalOwners = {
		731, "northumbria", -- Whithorn was a part of Northumbria in c. 731; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 146.
		802, "strathclyde", -- Whithorn's area was a part of Strathclyde c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "scotland" -- Whithorn's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		731, 0, "temple" -- a bishopric was founded at Whithorn in c. 731; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 146.
	},
	Regions = {"british-isles", "europe", "northwest-europe", "scotland", "west-and-central-europe"}
})

DefineSettlement("wilton", {
	Name = "Wilton",
	MapTemplate = "earth",
	Position = {3796, 885},
	CulturalNames = {
		"english", "Wilton"
	},
	HistoricalOwners = {
		802, "wessex", -- Wilton was a part of Wessex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Wilton's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
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
	Major = true,
	CulturalNames = {
		"anglo-saxon", "Wintanceaster", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 734.
		"briton", "Verita Belgarum",
		"celt", "Verita Belgarum",
		"english", "Winchester",
		"latin", "Verita Belgarum" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Verita Belgarum/Winchester was a part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		802, "wessex", -- Winchester was a part of Wessex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Winchester's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "town-hall",
		660, 0, "temple" -- Winchester was a bishopric as of c. 660; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 122.
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("winwaedsfield", {
	Name = "Winwaedsfield",
	MapTemplate = "earth",
	Position = {3803, 820},
	CulturalNames = {
		"anglo-saxon", "Winwaedsfield",
		"english", "Winwaedsfield"
	},
	HistoricalOwners = {
		802, "northumbria", -- Winwaedsfield was a part of Northumbria c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Winwaedsfield's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		802, 0, "farm"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("worcester", {
	Name = "Worcester",
	MapTemplate = "earth",
	Position = {3788, 861},
	CulturalNames = {
		"anglo-saxon", "Weogornaceaster", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 733.
		"english", "Worcester"
	},
	HistoricalOwners = {
		680, "mercia", -- Worcester was a part of Mercia by 680; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 134.
		802, "mercia", -- Worcester was a part of Mercia c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Worcester's area was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		680, 0, "temple" -- archbishop Theodore of Canterbury made Worcester into a separate diocese before 680; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 134.
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("york", {
	Name = "York",
	MapTemplate = "earth",
	Position = {3815, 819},
	Major = true,
	CulturalNames = {
		"anglo-saxon", "Eoforwic", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
		"briton", "Eboracum",
		"celt", "Eboracum",
		"english", "York",
		"latin", "Eboracum" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51; Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		-264, "brigantes-tribe", -- York's environs were territory of the Brigantes in the 264 BC-180 AD period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		43, "rome", -- Eburacum/York was acquired by Rome in 43 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		500, "dere-tribe", -- the Dere (a collection of Anglian peoples) were in possession of York in 500 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 74.
		588, "bernicia", -- according to tradition, Æthelric of Bernicia acquired the kingdom of Deira upon its king Ælle's death in 588 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 75.
		654, "northumbria", -- Northumbria unified by Oswiu of Bernicia in 654
		1560, "england" -- York was a part of England in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		43, 161, "town-hall",
		161, 0, "stronghold", -- Legionary base present in Eboracum in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		161, 0, "barracks",
		735, 0, "temple" -- archbishopric of York permanently instituted in 735 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 109, 133.
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

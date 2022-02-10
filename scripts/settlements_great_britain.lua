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
--      (c) Copyright 2016-2022 by Andrettin
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

DefineSite("amesbury", {
	Name = "Amesbury",
	MapTemplate = "old_earth",
	Position = {3798, 883},
	CulturalNames = {
		"anglo-saxon", "Ambresbyrig", -- Old English name of Amesbury; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"english", "Amesbury"
	},
	HistoricalOwners = {
		802, "wessex", -- Amesbury was part of Wessex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Amesbury's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		802, 0, "farm"
	},
	Regions = {"england"}
})

DefineSite("athelney", {
	Name = "Athelney",
	MapTemplate = "old_earth",
	Position = {3774, 887},
	CulturalNames = {
		"anglo-saxon", "Aethelingaig", -- "Æthelingaig"; Old English name of Athelney; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"english", "Athelney"
	},
	HistoricalOwners = {
		802, "wessex", -- Athelney was part of Wessex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Athelney's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		802, 0, "farm"
	},
	Regions = {"england"}
})

DefineSite("bamburgh", {
	Name = "Bamburgh",
	MapTemplate = "old_earth",
	Position = {3800, 784},
	BaseUnitType = "unit_settlement_site",
	CulturalNames = {
		"anglo-saxon", "Bebbanburg", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"english", "Bamburgh" -- as given by Stenton; Shepherd gives it as "Bamborough" instead; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 74.
	},
	HistoricalOwners = {
		526, "bernicia", -- by 526 AD the Anglo-Saxons had become masters of most of Roman Britannia; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		547, "bernicia", -- the Kingdom of Bernicia was founded in 547 AD; by 600 AD, the Bernice people (who were Anglians) were centered in Bamburgh; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 74-75.
		654, "northumbria", -- Northumbria unified by Oswiu of Bernicia in 654
		802, "northumbria", -- Bamborough was part of Northumbria c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Bamburgh's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		526, 0, "town_hall"
	},
	Regions = {"england"}
})

DefineSite("bitterne", {
	Name = "Bitterne",
	MapTemplate = "old_earth",
	Position = {3810, 889},
	CulturalNames = {
		"briton", "Clausentum",
		"celt", "Clausentum",
		"english", "Bitterne",
		"latin", "Clausentum" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Clausentum/Bitterne was part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		802, "wessex", -- Bitterne's area was part of Wessex in 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Bitterne's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "farm"
	},
	Regions = {"england"}
})

DefineSite("brancaster", {
	Name = "Brancaster",
	MapTemplate = "old_earth",
	Position = {3853, 843},
	CulturalNames = {
		"briton", "Branodunum",
		"celt", "Branodunum",
		"english", "Brancaster",
		"latin", "Branodunum" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Branodunum/Brancaster was part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		802, "east_anglia", -- Branodunum's area was part of East Anglia c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Branodunum's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "farm"
	},
	Regions = {"england"}
})

DefineSite("canterbury", {
	Name = "Canterbury",
	MapTemplate = "old_earth",
	Position = {3866, 880},
	BaseUnitType = "unit_settlement_site",
	CulturalNames = {
		"anglo-saxon", "Cantwaraburg", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"briton", "Durovernum",
		"english", "Canterbury",
		"celt", "Durovernum",
		"latin", "Durovernum" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Durovernum/Canterbury was part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		597, "kent", -- Canterbury was part of Kent in 597 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 105-106.
		1560, "england" -- Canterbury was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "town_hall",
		597, 0, "temple" -- Augustine and his followers performed religious services in a church in Canterbury in 597 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 105-106.
	},
	Regions = {"england"}
})

DefineSite("castor-near-norwich", {
	Name = "Castor near Norwich",
	MapTemplate = "old_earth",
	Position = {3868, 850},
	CulturalNames = {
		"briton", "Venta Icenorum",
		"celt", "Venta Icenorum",
		"english", "Castor",
		"latin", "Venta Icenorum" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Venta Icenorum/Castor near Norwich was part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		802, "east_anglia", -- Venta Icenorum's area was part of East Anglia c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Venta Icenorum's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "farm"
	},
	Regions = {"england"}
})

DefineSite("chichester", {
	Name = "Chichester",
	MapTemplate = "old_earth",
	Position = {3821, 890},
	BaseUnitType = "unit_settlement_site",
	CulturalNames = {
		"anglo-saxon", "Cisseceaster", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"briton", "Regnum",
		"celt", "Regnum",
		"english", "Chichester",
		"latin", "Regnum" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Regnum/Chichester was part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		802, "sussex", -- Chichester's area was part of Sussex in 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Chichester's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "town_hall"
	},
	Regions = {"england"}
})

DefineSite("cirencester", {
	Name = "Cirencester",
	MapTemplate = "old_earth",
	Position = {3796, 874},
	CulturalNames = {
		"anglo-saxon", "Cirenceaster", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"briton", "Corinium",
		"celt", "Corinium",
		"english", "Cirencester",
		"latin", "Corinium" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Corinium/Cirencester was part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		802, "wessex", -- Cirencester's area was part of Wessex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Cirencester's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "farm"
	},
	Regions = {"england"}
})

DefineSite("colchester", {
	Name = "Colchester",
	MapTemplate = "old_earth",
	Position = {3860, 866},
	BaseUnitType = "unit_settlement_site",
	CulturalNames = {
		"anglo-saxon", "Colneceaster", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"briton", "Camulodunum",
		"celt", "Camulodunum",
		"english", "Colchester",
		"latin", "Camulodunum" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Camulodunum/Colchester was part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		802, "essex", -- Colchester was part of Essex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Colchester's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "town_hall"
	},
	Regions = {"england"}
})

DefineSite("corbridge", {
	Name = "Corbridge",
	MapTemplate = "old_earth",
	Position = {3794, 797},
	CulturalNames = {
		"anglo-saxon", "Corebricg", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"briton", "Corstopitum",
		"celt", "Corstopitum",
		"english", "Corbridge",
		"latin", "Corstopitum" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Corstopitum was part of the Roman empire c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		526, "bernicia", -- Corbridge's area was Anglo-Saxon territory in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		547, "bernicia", -- the Kingdom of Bernicia was founded in 547 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 74-75.
		654, "northumbria", -- Northumbria unified by Oswiu of Bernicia in 654
		802, "northumbria", -- Corbridge's area was part of Northumbria c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Corbridge's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "farm"
	},
	Regions = {"england"}
})

DefineSite("deorham", {
	Name = "Deorham",
	MapTemplate = "old_earth",
	Position = {3781, 877},
	CulturalNames = {
		"english", "Deorham"
	},
	HistoricalOwners = {
		802, "mercia", -- Deorham was part of Mercia c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Deorham's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		802, 0, "farm"
	},
	Regions = {"england"}
})

DefineSite("dorchester", {
	Name = "Dorchester",
	MapTemplate = "old_earth",
	Position = {3785, 894},
	CulturalNames = {
		"anglo-saxon", "Dornwaraceaster", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
		"briton", "Durnovaria",
		"celt", "Durnovaria",
		"english", "Dorchester",
		"latin", "Durnovaria" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Durnovaria/Dorchester was part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		802, "wessex", -- Dorchester was part of Wessex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Dorchester's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "farm"
	},
	Regions = {"england"}
})

DefineSite("dunwich", {
	Name = "Dunwich",
	MapTemplate = "old_earth",
	Position = {3874, 859},
	CulturalNames = {
		"anglo-saxon", "Dommocceaster", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
		"english", "Dunwich"
	},
	HistoricalOwners = {
		672, "east_anglia",
		802, "east_anglia", -- Dunwich's area was part of East Anglia c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Dunwich's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		672, 0, "temple" -- Dunwich was a bishopric as of 672; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 134.
	},
	Regions = {"england"}
})

DefineSite("durolipons", {
	Name = "Durolipons",
	MapTemplate = "old_earth",
	Position = {3838, 859},
	CulturalNames = {
		"briton", "Durolipons",
		"celt", "Durolipons",
		"latin", "Durolipons" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Durolipons was part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		802, "mercia", -- Durolipons' area was part of Mercia c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Durolipons' area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "farm"
	},
	Regions = {"england"}
})

DefineSite("farnham", {
	Name = "Farnham",
	MapTemplate = "old_earth",
	Position = {3821, 883},
	CulturalNames = {
		"anglo-saxon", "Fearnhamm", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
		"english", "Farnham"
	},
	HistoricalOwners = {
		802, "wessex", -- Farnham's area was part of Wessex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		858, "wessex", -- Farnham was given to king Æthelbald of Wessex by bishop Swithun in 858; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 146.
		1560, "england" -- Farnham's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		802, 0, "farm"
	},
	Regions = {"england"}
})

DefineSite("glastonbury", {
	Name = "Glastonbury",
	MapTemplate = "old_earth",
	Position = {3778, 884},
	CulturalNames = {
		"english", "Glastonbury"
	},
	HistoricalOwners = {
		802, "wessex", -- Glastonbury was part of Wessex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Glastonbury's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		802, 0, "farm"
	},
	Regions = {"england"}
})

DefineSite("gloucester", {
	Name = "Gloucester",
	MapTemplate = "old_earth",
	Position = {3784, 874},
	BaseUnitType = "unit_settlement_site",
	CulturalNames = {
		"anglo-saxon", "Gleawanceaster", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
		"briton", "Glevum",
		"celt", "Glevum",
		"english", "Gloucester",
		"latin", "Glevum" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Glevum/Gloucester was part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		802, "mercia", -- Gloucester was part of Mercia in 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Gloucester was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "town_hall"
	},
	Regions = {"england"}
})

DefineSite("goodmanham", {
	Name = "Goodmanham",
	MapTemplate = "old_earth",
	Position = {3825, 820},
	CulturalNames = {
		"anglo-saxon", "Godmunddingaham", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
		"english", "Goodmanham"
	},
	HistoricalOwners = {
		802, "northumbria", -- Godmundingham was part of Northumbria c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Goodmanham's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		802, 0, "farm"
	},
	Regions = {"england"}
})

DefineSite("hastings", {
	Name = "Hastings",
	MapTemplate = "old_earth",
	Position = {3859, 887},
	CulturalNames = {
		"anglo-saxon", "Haestingaceaster", -- "Hæstingaceaster"; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
		"english", "Hastings"
	},
	HistoricalOwners = {
		802, "sussex", -- Hastings was part of Sussex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Hastings' area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		802, 0, "farm"
	},
	Regions = {"england"}
})

DefineSite("heathfield", {
	Name = "Heathfield",
	MapTemplate = "old_earth",
	Position = {3821, 827},
	CulturalNames = {
		"english", "Heathfield"
	},
	HistoricalOwners = {
		802, "northumbria", -- Heathfield was part of Northumbria c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Heathfield's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		802, 0, "farm"
	},
	Regions = {"england"}
})

DefineSite("hereford", {
	Name = "Hereford",
	MapTemplate = "old_earth",
	Position = {3775, 863},
	CulturalNames = {
		"english", "Hereford"
	},
	HistoricalOwners = {
		680, "mercia", -- Hereford was part of Mercia by 680; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 134.
		802, "mercia", -- Hereford's area was part of Mercia c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Hereford's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		680, 0, "temple" -- archbishop Theodore of Canterbury made Hereford into a separate diocese before 680; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 134.
	},
	Regions = {"england"}
})

DefineSite("hexham", {
	Name = "Hexham",
	MapTemplate = "old_earth",
	Position = {3791, 798},
	CulturalNames = {
		"anglo-saxon", "Hagustaldesea", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
		"english", "Hexham"
	},
	HistoricalOwners = {
		684, "northumbria", -- Hexham was part of Northumbria in 684; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 138.
		802, "northumbria", -- Hexham's area was part of Northumbria c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Hexham's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		684, 0, "temple" -- an episcopal see was existent in Hexham as of 684; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 138.
	},
	Regions = {"england"}
})

DefineSite("jarrow", {
	Name = "Jarrow",
	MapTemplate = "old_earth",
	Position = {3807, 797},
	CulturalNames = {
		"anglo-saxon", "Gyruum", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
		"english", "Jarrow"
	},
	HistoricalOwners = {
		681, "northumbria",
		802, "northumbria", -- Jarrow was part of Northumbria c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Jarrow's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		681, 0, "temple" -- Benedict Biscop founded a monastery at Jarrow in 681, with the land being given by king Ecgfrith of Northumbria; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 185.
		-- Benedict Biscop travelled to Rome in 684 to acquire relics and books for the monastery at Jarrow; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 185.
	},
	Regions = {"england"}
})

DefineSite("kingston", {
	Name = "Kingston",
	MapTemplate = "old_earth",
	Position = {3838, 878},
	CulturalNames = {
		"english", "Kingston"
	},
	HistoricalOwners = {
		802, "wessex", -- Kingston was part of Wessex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Kingston's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		802, 0, "farm"
	},
	Regions = {"england"}
})

DefineSite("lincoln", {
	Name = "Lincoln",
	MapTemplate = "old_earth",
	Position = {3825, 837},
	CulturalNames = {
		"anglo-saxon", "Lindcylene", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
		"briton", "Lindum",
		"celt", "Lindum",
		"english", "Lincoln",
		"latin", "Lindum" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Lindum/Lincoln was part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		674, "northumbria", -- Lindsey was conquered by Ecgfrith of Northumbria in 674; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 134.
		678, "mercia", -- Lindsey was conquered by Æthelred of Mercia in 678; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 134.
		802, "mercia", -- Lincoln was part of Mercia c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Lincoln's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 627, "farm",
		627, 0, "temple" -- a church was in existence in Lincoln in 627 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 115.
		-- Lindsey became a separate diocese in 677; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 134.
	},
	Regions = {"england"}
})

DefineSite("lichfield", {
	Name = "Lichfield",
	MapTemplate = "old_earth",
	Position = {3797, 849},
	CulturalNames = {
		"anglo-saxon", "Liccidfeld", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
		"english", "Lichfield"
	},
	HistoricalOwners = {
		669, "mercia", -- Lichfield was part of Mercia in 669; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 132.
		802, "mercia", -- Lichfield's area was part of Mercia c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Lichfield's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		669, 0, "temple" -- Lichfield became a bishopric in 669; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 132.
	},
	Regions = {"england"}
})

DefineSite("malmesbury", {
	Name = "Malmesbury",
	MapTemplate = "old_earth",
	Position = {3794, 879},
	CulturalNames = {
		"anglo-saxon", "Maeldubesburg", -- "Mældubesburg"; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
		"english", "Malmesbury"
	},
	HistoricalOwners = {
		705, "wessex", -- Malmesbury was (presumably) part of Wessex in 705 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 142.
		802, "wessex", -- Malmesbury was part of Wessex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Malmesbury's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		705, 0, "temple" -- an abbey existed in Malmesbury as of 705; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 142.
	},
	Regions = {"england"}
})

DefineSite("nursling", {
	Name = "Nursling",
	MapTemplate = "old_earth",
	Position = {3808, 889},
	CulturalNames = {
		"english", "Nursling"
	},
	HistoricalOwners = {
		716, "wessex",
		802, "wessex", -- Nursling's area was part of Northumbria c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Nursling's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		-- 716, 0, "temple" -- the West Saxon Wynfrith/Boniface was the head of the monastic school at a monastery in Nursling in 716, when he left it to go perform missionary work in Frisia; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 168.
	},
	Regions = {"england"}
})

DefineSite("ockley", {
	Name = "Ockley",
	MapTemplate = "old_earth",
	Position = {3836, 883},
	CulturalNames = {
		"english", "Ockley"
	},
	HistoricalOwners = {
		802, "wessex", -- Ockley was part of Wessex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Ockley's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		802, 0, "farm"
	},
	Regions = {"england"}
})

DefineSite("old-sarum", {
	Name = "Old Sarum",
	MapTemplate = "old_earth",
	Position = {3798, 885},
	CulturalNames = {
		"briton", "Sorbiodunum",
		"celt", "Sorbiodunum",
		"english", "Old Sarum",
		"latin", "Sorbiodunum" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Sorbiodunum/Old Sarum was part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		802, "wessex", -- Old Sarum was part of Wessex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Old Sarum's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "farm"
	},
	Regions = {"england"}
})

DefineSite("oundle", {
	Name = "Oundle",
	MapTemplate = "old_earth",
	Position = {3816, 854},
	CulturalNames = {
		"english", "Oundle"
	},
	HistoricalOwners = {
		709, "mercia", -- Oundle was part of Mercia in 709; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 143, 145.
		802, "mercia", -- Oundle's area was part of Mercia c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Oundle's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		709, 0, "temple" -- Oundle possessed a monastery as of 709; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 145.
	},
	Regions = {"england"}
})

DefineSite("pevensey", {
	Name = "Pevensey",
	MapTemplate = "old_earth",
	Position = {3848, 889},
	CulturalNames = {
		"anglo-saxon", "Pefenesea", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 733.
		"briton", "Anderida",
		"celt", "Anderida",
		"english", "Pevensey",
		"latin", "Anderida" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Anderida/Pevensey was part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		802, "sussex", -- Pevensey was part of Sussex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Pevensey's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "farm"
	},
	Regions = {"england"}
})

DefineSite("reculver", {
	Name = "Reculver",
	MapTemplate = "old_earth",
	Position = {3868, 879},
	CulturalNames = {
		"anglo-saxon", "Reculf", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 733.
		"briton", "Regulbium",
		"celt", "Regulbium",
		"english", "Reculver",
		"latin", "Regulbium" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Regulbium/Reculver was part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		669, "kent", -- Reculver was part of Kent in 669 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 111.
		1560, "england" -- Reculver's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		-- the area is too small to accomodate the settlement's buildings, given the other more important settlements nearby
--		410, 669, "farm",
--		669, 0, "temple" -- a church was founded in Reculver in 669 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 111.
	},
	Regions = {"england"}
})

DefineSite("richborough", {
	Name = "Richborough",
	MapTemplate = "old_earth",
	Position = {3870, 881},
	CulturalNames = {
		"briton", "Rutupiae",
		"celt", "Rutupiae",
		"english", "Richborough",
		"latin", "Rutupiae" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Rutupiae/Richborough was part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		802, "kent", -- Richborough's area was part of Kent in 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Richborough's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
--		410, 0, "farm" -- not enough space
	},
	Regions = {"england"}
})

DefineSite("rochester", {
	Name = "Rochester",
	MapTemplate = "old_earth",
	Position = {3850, 879},
	CulturalNames = {
		"anglo-saxon", "Hrofesceaster", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
		"briton", "Durobrivae",
		"celt", "Durobrivae",
		"english", "Rochester",
		"latin", "Durobrivae" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Durobrivae/Rochester was part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		604, "kent", -- Rochester was part of Kent in 604 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 109.
		1560, "england" -- Rochester's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 604, "farm",
		604, 0, "temple" -- king Æthelberht of Kent built a church in Rochester in 604 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 109.
	},
	Regions = {"england"}
})

DefineSite("saint-albans", {
	Name = "St. Albans",
	MapTemplate = "old_earth",
	Position = {3832, 870},
	CulturalNames = {
		"anglo-saxon", "Sanctae Albanes", -- "Sanctæ Albanes"; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 733.
		"briton", "Verulamium",
		"celt", "Verulamium",
		"english", "St. Albans",
		"latin", "Verulamium" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Verulamium/St. Albans was part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		802, "middlesex", -- St. Albans was part of Middlesex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- St. Albans' area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "farm"
	},
	Regions = {"england"}
})

DefineSite("salisbury", {
	Name = "Salisbury",
	MapTemplate = "old_earth",
	Position = {3799, 886},
	CulturalNames = {
		"anglo-saxon", "Searoburg", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 733.
--		"anglo-saxon", "Searuburh", -- Source: Paul Beekman Taylor, "Searoniðas: Old Norse Magic and Old English Verse", 1983, p. 115.
		"briton", "Sorbidunom", -- Source: Paul Beekman Taylor, "Searoniðas: Old Norse Magic and Old English Verse", 1983, p. 115.
		"celt", "Sorbidunom",
		"english", "Salisbury" -- Source: "Philip's International School Atlas", 2006, p. 64.
	},
	HistoricalOwners = {
		802, "wessex", -- Salisbury was part of Wessex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Salisbury's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		802, 0, "farm"
	},
	Regions = {"england"}
})

DefineSite("sherborne", {
	Name = "Sherborne",
	MapTemplate = "old_earth",
	Position = {3783, 891},
	CulturalNames = {
		"anglo-saxon", "Scireburnan", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 733.
		"english", "Sherborne"
	},
	HistoricalOwners = {
		705, "wessex", -- Sherborne was part of Wessex in 705 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 142.
		1560, "england" -- Sherborne's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		705, 0, "temple" -- a bishopric was established in Sherborne in 705 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 142.
	},
	Regions = {"england"}
})

DefineSite("silchester", {
	Name = "Silchester",
	MapTemplate = "old_earth",
	Position = {3814, 878},
	CulturalNames = {
		"briton", "Calleva",
		"celt", "Calleva",
		"english", "Silchester",
		"latin", "Calleva" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Calleva/Silchester was part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		802, "wessex", -- Silchester's area was part of Wessex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Silchester's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "farm"
	},
	Regions = {"england"}
})

DefineSite("sitomagus", {
	Name = "Sitomagus",
	MapTemplate = "old_earth",
	Position = {3875, 857},
	CulturalNames = {
		"briton", "Sitomagus",
		"celt", "Sitomagus",
		"latin", "Sitomagus" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Sitomagus was part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		802, "east_anglia", -- Sitomagus' area was part of East Anglia c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Sitomagus' area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "farm"
	},
	Regions = {"england"}
})

DefineSite("speen", {
	Name = "Speen",
	MapTemplate = "old_earth",
	Position = {3809, 877},
	CulturalNames = {
		"briton", "Spinae",
		"celt", "Spinae",
		"english", "Speen",
		"latin", "Spinae" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Spinae/Speen was part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		802, "wessex", -- Speen's area was part of Wessex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Speen's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "farm"
	},
	Regions = {"england"}
})

DefineSite("vindogladia", {
	Name = "Vindogladia",
	MapTemplate = "old_earth",
	Position = {3794, 889},
	CulturalNames = {
		"briton", "Vindogladia",
		"celt", "Vindogladia",
		"latin", "Vindogladia" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
	},
	HistoricalOwners = {
		410, "rome", -- Vindogladia was part of Roman Britain c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 51.
		802, "wessex", -- Vindogladia's area was part of Wessex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Vindogladia's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		410, 0, "farm"
	},
	Regions = {"england"}
})

DefineSite("wearmouth", {
	Name = "Wearmouth",
	MapTemplate = "old_earth",
	Position = {3807, 799},
	CulturalNames = {
		"english", "Wearmouth"
	},
	HistoricalOwners = {
		674, "northumbria",
		802, "northumbria", -- Wearmouth was part of Northumbria c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Wearmouth's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		674, 0, "temple" -- Benedict Biscop founded a monastery at Wearmouth in 674, with the land being given by king Ecgfrith of Northumbria; Benedict Biscop transported his large collection of books to Wearmouth, establishing a library at the monastery; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 184-185.
	},
	Regions = {"england"}
})

DefineSite("whitby", {
	Name = "Whitby",
	MapTemplate = "old_earth",
	Position = {3825, 809},
	CulturalNames = {
		"anglo-saxon", "Streonaeshalch", -- "Streonæshalch"; on page 123 Stenton gives "Streoneshalh" instead; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 733.
		"english", "Whitby"
	},
	HistoricalOwners = {
		663, "northumbria", -- Streoneshalh was part of Northumbria in 663 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 122-123.
		1560, "england" -- Whitby's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		663, 0, "temple" -- Streoneshalh had a monastery in 663; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 123.
	},
	Regions = {"england"}
})

DefineSite("whithorn", {
	Name = "Whithorn",
	MapTemplate = "old_earth",
	Position = {3739, 802},
	CulturalNames = {
		"anglo-saxon", "Hwitern", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 732.
		"english", "Whithorn"
	},
	HistoricalOwners = {
		731, "northumbria", -- Whithorn was part of Northumbria in c. 731; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 146.
		802, "strathclyde", -- Whithorn's area was part of Strathclyde c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "scotland" -- Whithorn's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		731, 0, "temple" -- a bishopric was founded at Whithorn in c. 731; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 146.
	},
	Regions = {"scotland"}
})

DefineSite("wilton", {
	Name = "Wilton",
	MapTemplate = "old_earth",
	Position = {3796, 885},
	CulturalNames = {
		"anglo-saxon", "Wiltun", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 734.
		"english", "Wilton"
	},
	HistoricalOwners = {
		802, "wessex", -- Wilton was part of Wessex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Wilton's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		802, 0, "farm"
	},
	Regions = {"england"}
})

DefineSite("winwaedsfield", {
	Name = "Winwaedsfield",
	MapTemplate = "old_earth",
	Position = {3803, 820},
	CulturalNames = {
		"anglo-saxon", "Winwaedsfield",
		"english", "Winwaedsfield"
	},
	HistoricalOwners = {
		802, "northumbria", -- Winwaedsfield was part of Northumbria c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Winwaedsfield's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		802, 0, "farm"
	},
	Regions = {"england"}
})

DefineSite("worcester", {
	Name = "Worcester",
	MapTemplate = "old_earth",
	Position = {3788, 861},
	CulturalNames = {
		"anglo-saxon", "Weogornaceaster", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 733.
		"english", "Worcester"
	},
	HistoricalOwners = {
		680, "mercia", -- Worcester was part of Mercia by 680; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 134.
		802, "mercia", -- Worcester was part of Mercia c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
		1560, "england" -- Worcester's area was part of England c. 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		680, 0, "temple" -- archbishop Theodore of Canterbury made Worcester into a separate diocese before 680; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 134.
	},
	Regions = {"england"}
})

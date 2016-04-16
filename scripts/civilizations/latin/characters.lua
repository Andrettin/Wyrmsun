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
--      (c) Copyright 2015-2016 by Andrettin
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

DefineCharacter("Caesar", { -- Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 227.
	Name = "Caesar",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "latin",
	Faction = "Rome",
	ProvinceOfOrigin = "Latium", -- correct?
	Year = -58, -- De Bello Gallico was written 58-52 BC
	AuthoredWorks = {"upgrade-work-de-bello-gallico"}
})

DefineCharacter("Marcian", { -- Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, p. 6.
	Name = "Marcian", -- Roman emperor who concluded a treaty with the Ostrogothic king Walamer after he had become independent in 453 AD, with the Ostrogoths providing protection of the frontier while the Romans gave them a subsidy
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "latin",
	Faction = "Rome",
	ProvinceOfOrigin = "Thrace", -- possibly not accurate, but since he was the (Eastern) Roman emperor put him there until we have better information
	Year = 453, -- concluded a treaty with Walamer soon after he became independent in 453 AD
	DeathYear = 462, -- by 462 AD the Roman emperor was his successor Leo
	HistoricalTitles = {
		"head-of-state", 453, 462, "latin", "Rome"
	}
})

DefineCharacter("Leo", { -- Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, p. 6.
	Name = "Leo", -- Roman emperor who renounced the treaty with the Ostrogoths
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "latin",
	Faction = "Rome",
	ProvinceOfOrigin = "Thrace", -- possibly not accurate, but since he was the (Eastern) Roman emperor put him there until we have better information
	Year = 462, -- ruled in 462 AD when Walamer invaded Illyria because of the treaty's renouncement
	DeathYear = 480, -- by 480 AD the ruler of Eastern Rome was Zeno
	HistoricalTitles = {
		"head-of-state", 462, 480, "latin", "Rome"
	}
})

DefineCharacter("Zeno", { -- Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, p. 7.
	Name = "Zeno", -- Roman emperor
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "latin",
	Faction = "Rome",
	ProvinceOfOrigin = "Thrace", -- possibly not accurate, but since he was the (Eastern) Roman emperor put him there until we have better information
	Year = 480, -- by 480 AD the ruler of Eastern Rome was Zeno
	HistoricalTitles = {
		"head-of-state", 480, 0, "latin", "Rome"
	}
})

DefineCharacter("Sidonius Apollinaris", { -- Source: Norman Davies, "Vanished Kingdoms", 2012, p. 96.
	Name = "Sidonius Apollinaris", -- Gallo-Roman writer
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "latin",
	ProvinceOfOrigin = "Provence",
	Year = 452 -- 20 years old, met Burgundians at his home city of Lugdunum
})

DefineCharacter("Avitus", { -- Source: Norman Davies, "Vanished Kingdoms", 2012, p. 99.
	Name = "Avitus", -- Archbishop Avitus of Vienne; corresponded with the Burgundian king Sigismund c. 494-523, and was his chief advisor
	Gender = "male",
	Type = "unit-teuton-archer", -- should be a priest
	Civilization = "latin",
	ProvinceOfOrigin = "Provence", -- Vienne
	Year = 494, -- began corresponding with Sigismund
	DeathYear = 523 -- ended corresponding with Sigismund
})

DefineCharacter("Geofrei Gaimar", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 76.
	Name = "Geofrei",
	FamilyName = "Gaimar", -- was that actually his family name?
	Gender = "male",
	Type = "unit-teuton-swordsman", -- should be something more appropriate for a writer?
	Civilization = "latin", -- should be French
	Faction = "France",
	ProvinceOfOrigin = "France", -- accurate?
	Year = 1135 -- composed Estoire des Anglais c. 1135-1140 AD
})

DefineCharacter("Nicholas", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 142.
	Name = "Nicholas", -- Pope Nicholas V; what was his real name?
	Gender = "male",
	Type = "unit-teuton-swordsman", -- should be priest
	Civilization = "latin", -- accurate?
	ProvinceOfOrigin = "Latium", -- probably not accurate, but since we only know he was Pope, set his province of origin to Latium until we have better information
	Year = 1448 -- sent a brief to the bishops of Skalholt and Holum in Iceland in 1448 AD
})

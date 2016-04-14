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

DefineCharacter("Hraudung", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 59.
	Name = "Hraudung", -- king of the Goths in the Lay of Grimnir
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Agnar", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 59-60.
	Name = "Agnar", -- Hraudung's eldest son in the Lay of Grimnir, who was sent away in a boat by his brother Geirrod, but eventually found his way to a cave where he mated with a giantess
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?,
	Father = "Hraudung"
})

DefineCharacter("Geirrod", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 59-60, 64.
	Name = "Geirrod", -- Hraudung's younger son in the Lay of Grimnir, who sent his brother Agnar away and then became king (Hraudung had died while they were away); died by falling on his own sword
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	Trait = "upgrade-cruel", -- was a cruel, tyrannical ruler; had sudden fits of anger; nevertheless, was generous and welcoming of guests
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?,
	Father = "Hraudung"
})

DefineCharacter("Agnar II", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 60-61, 64.
	Name = "Agnar", -- Geirrod's son, named after Geirrod's brother; ruled for a long time after succeeding Geirrod
	ExtraName = "II", -- to differentiate him from his uncle
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	Trait = "upgrade-compassionate", -- when Grimnir (Odin in disguise) suffered, Agnar suffered with him; gave Grimnir a horn with drink
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?,
	Father = "Geirrod"
})

DefineCharacter("Airmanareiks", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 225-226, 536, 552; Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, p. 22.
	Name = "Airmanareiks", -- king of the East Goths; also known as Ermanaric or Ermanarich; known as Ermenrich in High German; known as Jormunrek in the Norse myths; in Norse tradition, slew his own sons; in the Norse myths married with Sigurd's daughter Svanhild and slew her (it would, however, have been impossible for Sigurd to be a contemporary of Gundahar/Gunnar and his daughter and Ermanaric have married); in the Dietrich saga, was the uncle of Dietrich who expelled him from his possessions (he could not have been a contemporary of Dietrich/Theodoric, however)
	NameElements = { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 18.
		"compound", "prefix", "gothic", "noun", "Airmana",
		"compound", "suffix", "gothic", "noun", "Reiks" -- maybe the adjective written in the same manner is part of this compound instead
	},
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	ProvinceOfOrigin = "Ukraine", -- accurate?
	DeathYear = 376, -- died
	HistoricalTitles = {
		"head-of-state", 0, 376, "goth", "Ostrogoth Tribe"
	}
})

DefineCharacter("Friþareiks", { -- Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, p. 26.
	-- son of Ermenrich (= Airmanareiks) in the Dietrich Saga; in the saga he was taken prisoner by Dietrich, but he couldn't have been a contemporary of Dietrich if he was a son of Airmanareiks
	Name = "Friþareiks", -- in the saga his name is "Friedrich"; this is a tentative rendering of the name in Gothic, based on the cognates of the.components.of.the original German name
	NameElements = {
		"compound", "prefix", "gothic", "noun", "Friþa",
		"compound", "suffix", "gothic", "noun", "Reiks" -- maybe the adjective written in the same manner is part of this compound instead
	},
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	ProvinceOfOrigin = "Pannonia", -- presumably, because this is Airmanareiks' province of origin
	Father = "Airmanareiks"
})

DefineCharacter("Walamer Amelung", { -- Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, p. 6.
	Name = "Walamer", -- king of the Ostrogoths; invaded Illyria in 462 AD
	FamilyName = "Amelung",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	ProvinceOfOrigin = "Pannonia",
	Year = 453, -- ruled over the Ostrogoths when Attila died and his Hunnic empire collapsed in 453 AD
	DeathYear = 472, -- died
	HistoricalTitles = {
		"head-of-state", 453, 472, "goth", "Ostrogoth Tribe"
	}
})

DefineCharacter("Theodemer Amelung", { -- Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, pp. 6-7.
	Name = "Theodemer", -- brother of Walamer
	FamilyName = "Amelung",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	ProvinceOfOrigin = "Pannonia",
	Year = 472,
	DeathYear = 474, -- died
	HistoricalTitles = {
		"head-of-state", 472, 474, "goth", "Ostrogoth Tribe" -- by 472 AD Theodemer has become king of the Ostrogoths; Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, pp. 6-7.
	}
})

DefineCharacter("Widemer Amelung", { -- Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, p. 6.
	Name = "Widemer", -- brother of Walamer
	FamilyName = "Amelung",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	ProvinceOfOrigin = "Pannonia",
	DateReferenceCharacter = "Walamer Amelung" -- same generation as Walamer
})

DefineCharacter("Þiudareiks Amelung", { -- Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, pp. 6-7, 9.
	-- king of the Ostrogoths; Dietrich von Bern in the German sagas; was given as a hostage by Walamer to the Romans, and thus stayed for 10 years (until 472 AD) in the Byzantine court; his religion was Arian Christianity
	Name = "Þiudareiks", -- tentative rendering of the name in Gothic, based on the cognates of the German version of the name, "Dietrich"; also known as "Theoderic"
	NameElements = {
		"compound", "prefix", "gothic", "noun", "Þiuda",
		"compound", "suffix", "gothic", "noun", "Reiks" -- maybe the adjective written in the same manner is part of this compound instead
	},
	FamilyName = "Amelung",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	ProvinceOfOrigin = "Pannonia",
	Year = 454, -- born (was 8 years old in 462 AD)
	DeathYear = 526, -- died; he was put in a magnificent marble tomb in Ravenna
	Father = "Theodemer Amelung",
	HistoricalTitles = {
		"head-of-state", 474, 526, "goth", "Ostrogoth Tribe" -- In 474 AD the Ostrogoths left Pannonia to settle in Macedonia under the aegis of the Eastern Roman Emperor, and in that same year Theodemer died, being succeeded by Theoderic; Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, p. 7.
	}
})

DefineCharacter("Odoacer", { -- Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, pp. 7-9.
	Name = "Odoacer",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
--	ProvinceOfOrigin = "?",
	Year = 480, -- Odoacer deposed Romulus Augustus in 480 AD, going then on to rule Italy as an independent king
	DeathYear = 493, -- was put to death by Theoderic in 493 AD
	ViolentDeath = true
})

DefineCharacter("Tufa", { -- Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, p. 8-9.
	Name = "Tufa", -- follower of Odoacer who deserted to Theoderic in or just after 489 AD, only to return his allegiance to Odoacer afterwards, betraying Theoderic
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
--	ProvinceOfOrigin = "?",
	Year = 489,
	DeathYear = 493 -- was probably put to death by Theoderic in 493 AD when the defenders of Ravenna (including Odoacer) were
})

DefineCharacter("Vulfshardus", { -- Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, pp. 28-29, 63.
	-- follower of Dietrich (= Theoderic, gothic king) in the Dietrich Saga; hot-headed (source pp. 28-29); young and ever thirsting for the fray (source p. 63)
	Name = "Vulfshardus", -- in the saga his name is "Wolfhart"; this is a tentative rendering of the name in Gothic, based on the cognates of the original German name
	NameElements = {
		"compound", "prefix", "gothic", "noun", "Vulfs",
		"compound", "suffix", "gothic", "adjective", "Hardus"
	},
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	ProvinceOfOrigin = "Pannonia", -- presumably, because this is Theoderic's province of origin
	DateReferenceCharacter = "Þiudareiks Amelung" -- contemporary of Theoderic
})

Load("scripts/civilizations/goth/characters_burgundian.lua")
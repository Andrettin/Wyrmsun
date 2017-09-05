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
--      (c) Copyright 2015-2017 by Andrettin
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

DefineCharacter("julius-caesar", { -- Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 227.
	Name = "Caesar",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman",
	Civilization = "latin",
	Faction = "rome",
	ProvinceOfOrigin = "Latium", -- correct?
	Date = -58, -- De Bello Gallico was written 58-52 BC
	AuthoredWorks = {"upgrade-work-de-bello-gallico"}
})

DefineCharacter("marcus-aurelius", { -- Source: "Ancient Warfare VII.6", 2013, pp. 6, 8, 10.
	Name = "Marcus",
	ExtraName = "Aurelius",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- emperor
	Civilization = "latin",
	Faction = "rome",
	ProvinceOfOrigin = "Latium", -- put him in Rome's province since we don't have information on his actual province of origin
	Date = 121, -- born on 26 April 121
	DeathDate = 180, -- died on 17 March 180, of smallpox or cancer
	Trait = "upgrade-dutiful", -- placed strong importance on doing one's duty in his "Meditations"
	AuthoredWorks = {"upgrade-work-meditations"},
	HistoricalTitles = {
		-- was consul when he was 18 years old
		-- in 140 he became consul a second time
		"head-of-state", 161, 0, "rome" -- Roman Emperor from 161 (with Lucius Verus as his co-emperor)
	}
	-- married to Faustina the Younger
})

DefineCharacter("lucius-verus", { -- Source: "Ancient Warfare VII.6", 2013, pp. 6-7.
	Name = "Lucius",
	ExtraName = "Verus",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- emperor
	Civilization = "latin",
	Faction = "rome",
	ProvinceOfOrigin = "Latium", -- put him in Rome's province since we don't have information on his actual province of origin
	Date = 161, -- became co-emperor in 161
	DeathDate = 168, -- died (apparently) in 168 of a stroke
	HistoricalTitles = {
		-- Roman Emperor from 161 (as co-emperor to Marcus Aurelius, but Marcus Aurelius seemed to be the one who held more power)
	}
})

DefineCharacter("furius-victorinus", { -- Source: "Ancient Warfare VII.6", 2013, p. 28.
	Name = "Furius",
	ExtraName = "Victorinus",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- Praetorian prefect
	Civilization = "latin",
	Faction = "rome"
})

DefineCharacter("marcus-claudius-fronto", { -- Source: "Ancient Warfare VII.6", 2013, p. 28.
	Name = "Marcus", -- given in the source as "M. Claudius Fronto"
	ExtraName = "Claudius Fronto", -- given in the source as "M. Claudius Fronto"
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- senior officer
	Civilization = "latin",
	Faction = "rome"
})

DefineCharacter("tiberius-claudius-pompeianus", { -- Source: "Ancient Warfare VII.6", 2013, p. 28.
	Name = "Tiberius",
	ExtraName = "Claudius Pompeianus",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- general
	Civilization = "latin",
	Faction = "rome"
})

DefineCharacter("agatho", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 136.
	Name = "Agatho",
	Gender = "male",
	Type = "unit-teuton-priest", -- Pope
	Civilization = "latin",
	Date = 679, -- Pope as of 679.10
	Deities = {"christian-god"}
})

DefineCharacter("pope-sergius-i", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 143, 167.
	Name = "Sergius",
	Gender = "male",
	Type = "unit-teuton-priest", -- Pope
	Civilization = "latin",
	Date = {699, 11, 21}, -- Pope as of 695.11.21
	-- Pope as of 699/700
	Deities = {"christian-god"}
})

DefineCharacter("pope-gregory-iii", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 145.
	Name = "Gregory",
	Gender = "male",
	Type = "unit-teuton-priest", -- Pope
	Civilization = "latin",
	Date = 735, -- Pope as of 735
	Deities = {"christian-god"}
})

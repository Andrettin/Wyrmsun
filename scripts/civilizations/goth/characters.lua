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
--      (c) Copyright 2015-2019 by Andrettin
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

DefineCharacter("hraudung", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 59.
	Name = "Hraudung", -- king of the Goths in the Lay of Grimnir
	Gender = "male",
	Type = "unit-gothic-horse-lord", -- king
	Civilization = "goth",
	Faction = "goth-tribe",
	Deities = {"odin", "tyr"}
})

DefineCharacter("agnar", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 59-60.
	Name = "Agnar", -- Hraudung's eldest son in the Lay of Grimnir, who was sent away in a boat by his brother Geirrod, but eventually found his way to a cave where he mated with a giantess
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	Faction = "goth-tribe",
	Father = "hraudung",
	Deities = {"odin", "hel"}
})

DefineCharacter("geirrod", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 59-60, 64.
	Name = "Geirrod", -- Hraudung's younger son in the Lay of Grimnir, who sent his brother Agnar away and then became king (Hraudung had died while they were away); died by falling on his own sword
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	Faction = "goth-tribe",
	Trait = "upgrade-cruel", -- was a cruel, tyrannical ruler; had sudden fits of anger; nevertheless, was generous and welcoming of guests
	Father = "hraudung",
	Deities = {"odin", "tyr"}
})

DefineCharacter("agnar-ii", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 60-61, 64.
	Name = "Agnar", -- Geirrod's son, named after Geirrod's brother; ruled for a long time after succeeding Geirrod
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	Faction = "goth-tribe",
	Trait = "upgrade-compassionate", -- when Grimnir (Odin in disguise) suffered, Agnar suffered with him; gave Grimnir a horn with drink
	Father = "geirrod",
	Deities = {"odin", "tyr"}
})

DefineCharacter("odoacer", { -- Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, pp. 7-9.
	Name = "Odoacer",
	Gender = "male",
	Type = "unit-gothic-horse-lord",
	Civilization = "goth",
	StartDate = 480, -- Odoacer deposed Romulus Augustus in 480 AD, going then on to rule Italy as an independent king
	DeathDate = 493, -- was put to death by Theoderic in 493 AD
	ViolentDeath = true,
	Deities = {"christian-god"}
})

DefineCharacter("tufa", { -- Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, p. 8-9.
	Name = "Tufa", -- follower of Odoacer who deserted to Theoderic in or just after 489 AD, only to return his allegiance to Odoacer afterwards, betraying Theoderic
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	StartDate = 489,
	DeathDate = 493, -- was probably put to death by Theoderic in 493 AD when the defenders of Ravenna (including Odoacer) were
	Deities = {"christian-god"}
})

Load("scripts/civilizations/goth/characters_burgundian.lua")
Load("scripts/civilizations/goth/characters_ostrogoth.lua")
Load("scripts/civilizations/goth/characters_visigoth.lua")

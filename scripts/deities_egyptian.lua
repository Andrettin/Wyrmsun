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
--      (c) Copyright 2016 by Andrettin
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

DefineDeity("bes", { -- Source: Warren R. Dawson, "Pygmies and Dwarfs in Ancient Egypt", 1938, p. 186; Source: Kamyar Abdi, "Bes in the Achaemenid Empire", 1999, p. 114.
	Name = "Bes",
	Civilizations = {"dwarf", "egyptian"},
	Religions = {"paganism"},
	Gender = "male",
	Domains = {"life"},
--	Description = "The god Bes has a dwarf-like appearance. The deity wards childbirths, bestows luck and prosperity on families and protects against malignant beings. Having taken an interest in the dwarves of Nidavellir, Bes sought to made contact with them and establish a priesthood in the world, and became specially popular among the inhabitants of Joruvellir. On Earth he is worshiped by Egyptians."
})

DefineDeity("geb", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 30.
	Name = "Geb",
	Civilizations = {"egyptian"},
	Religions = {"paganism"},
	Gender = "male",
	Domains = {"earth"},
--	Description = "Geb is a god of earth and fate."
})

DefineDeity("hathor", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, pp. 13, 29.
	Name = "Hathor",
	Civilizations = {"egyptian", "minotaur"},
	Religions = {"paganism"},
	Gender = "female",
	Domains = {"air"},
--	Description = "Hathor is a celestial goddess. She appears in the form of a cow, and is held as a goddess of happiness. On Earth Hathor is worshiped by the Egyptians, and she also enjoys a priesthood amongst the minotaurs of Jotunheim."
})

DefineDeity("sobek", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 25.
	Name = "Sobek",
	Civilizations = {"egyptian"},
	Religions = {"paganism"},
	Gender = "male",
	Domains = {"water"},
--	Description = "A god who takes the shape of a crocodile, Sobek holds aquatic animals as his domain. He is also linked to vegetation growth."
})

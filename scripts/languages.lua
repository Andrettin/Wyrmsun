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
--      languages.lua - Defines the civilizations' languages
--
--      (c) Copyright 2015 by Andrettin
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

DefineCivilizationLanguage("dwarf",
	"nouns", {
		"Alf", {
			"meaning", "Elf",
			"singular", "Alf",
			"suffix-singular", true,
			"suffix-personal-name", true -- examples: Gandalf, Vindalf
		},
		"Haug", { -- from Norse mythology, "Svarinshaug" = "Svarin's Mound", "haug" = "mound"
			"meaning", "Mound",
			"singular", "Haug",
			"suffix-singular", true,
			"suffix-province-name", true -- example: Svarinshaug
		},
		"Joru", { -- from Norse mythology, "Joruvellir" = "Fields of Sand", "Joru" = "Sand"
			"meaning", "Sand",
			"singular", "Joru",
			"prefix-singular", true,
			"prefix-province-name", true, -- example: Joruvellir
			"uncountable", true
		},
		"Mjod", {
			"meaning", "Mead",
			"singular", "Mjod",
			"prefix-singular", true,
			"prefix-personal-name", true, -- example: Mjodvitnir
			"uncountable", true
		},
		"Skjaldi", {
			"meaning", "Shield",
			"singular", "Skjaldi",
			"suffix-singular", true,
			"suffix-personal-name", true -- example: Eikinskjaldi
		},
		"Sol", {
			"meaning", "Sun",
			"singular", "Sol",
			"prefix-singular", true,
			"prefix-personal-name", true -- example: Solblindi
		},
		"Thjof", {
			"meaning", "Thief",
			"singular", "Thjof",
			"suffix-singular", true,
			"suffix-personal-name", true -- example: Althjof
		},
		"Vellir", { -- from Norse mythology, "Joruvellir" = "Fields of Sand", "vellir" = "fields"
			"meaning", "Fields",
			-- what is the singular form?
			"plural", "Vellir",
			"suffix-plural", true,
			"suffix-province-name", true -- example: Joruvellir
		},
		"Vind", {
			"meaning", "Wind",
			"singular", "Vind",
			"prefix-singular", true,
			"prefix-personal-name", true, -- example: Vindalf
			"uncountable", true
		},
		"Vitnir", {
			"meaning", "Wolf",
			"singular", "Vitnir",
			"suffix-singular", true,
			"suffix-personal-name", true -- example: Mjodvitnir
		}
	},
	"verbs", {
		"Blindi", { -- should be infinitive form
			"meaning", "Blinded",
			-- infinitive form?
			"participle-past", "Blindi",
			"suffix-personal-name", true -- example: Solblindi
		},
		"Vis", { -- should be infinitive form
			"meaning", "Knowing",
			-- infinitive form?
			"participle-present", "Vis",
			"suffix-personal-name", true -- example: Alvis (all-knowing)
		}
	},
	"adjectives", {
		"Al", {
			"meaning", "Mighty", -- can also mean "All-"
			"prefix-personal-name", true -- examples: Alvis (all-knowing), Althjof (mighty thief)
		},
		"Eikin", {
			"meaning", "Oaken",
			"prefix-personal-name", true -- example: Eikinskjaldi
		},
		"Gand", {
			"meaning", "Magic",
			"prefix-personal-name", true -- example: Gandalf
		},
		"Rad", {
			"meaning", "Swift",
			"prefix-personal-name", true -- example: Radsvid
		}
	}
)

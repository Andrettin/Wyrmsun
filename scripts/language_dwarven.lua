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

DefineCivilizationLanguage("dwarf", -- Dwarven; mix of Norse, German and fantasy words used in dwarven contexts
	"nouns", {
		"Ai", {
			"meaning", "Great-Grandfather", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 41.
			"singular-nominative", "Ai",
			"gender", "Masculine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 41.
			"personal-name", true -- example: "Ai" (dwarf from Norse mythology who was a settler of Joruvellir)
		},
		"Alf", {
			"meaning", "Elf",
			"singular-nominative", "Alf",
			"personal-name", true, -- example: "Alf" (dwarf from Norse mythology who was a settler of Joruvellir)
			"suffix-singular", true,
			"suffix-personal-name", true -- examples: "Gandalf" (Norse mythology), "Vindalf" (Norse mythology)
			-- should be available as a name only if the dwarven civilization in question has met elves?
		},
		"Aur", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 34.
			"meaning", "Wet Clay, Loam",
			"singular-nominative", "Aur", -- "Aurr" in Old Icelandic
			"gender", "Masculine",
			"prefix-singular", true,
			"prefix-personal-name", true, -- example: "Aurvang" (dwarf from Norse mythology)
			"prefix-province-name", true -- example: "Aurvang" (wetlands in Norse mythology, through which a group of dwarves passed to migrate to Joruvellir; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 771.)
		},
		"Austri", {
			"meaning", "Eastern", -- source gives meaning as "the Eastern"; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 771.
			"singular-nominative", "Austri",
			"gender", "Masculine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 771.
			"personal-name", true -- example: "Austri" (dwarf from Norse mythology; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 101.)
		},
		"Haug", { -- from Norse mythology, "Svarinshaug" = "Svarin's Mound", "haug" = "mound"
			"meaning", "Mound",
			"singular-nominative", "Haug",
			"suffix-singular", true,
			"suffix-province-name", true, -- example: "Svarinshaug" (Norse mythology)
			"suffix-terrain-name", "Hills", true -- no examples, but seems sensible in face of a general lack of examples
		},
		"Ivaldi", {
			"meaning", "Mighty", -- source gives meaning as "the Mighty"; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 101.
			"singular-nominative", "Ivaldi",
			"gender", "Masculine",
			"personal-name", true -- example: "Ivaldi" (dwarf from Norse mythology whose sons were mastersmiths)
		},
		"Joru", { -- from Norse mythology, "Joruvellir" = "Fields of Sand", "Joru" = "Sand"
			"meaning", "Sand",
			"singular-nominative", "Joru",
			"uncountable", true,
			"prefix-singular", true,
			"prefix-province-name", true, -- example: "Joruvellir" (Norse mythology)
			"prefix-terrain-name", "Hills", true -- no examples, but seems sensible in face of a general lack of examples
		},
		"Mjod", {
			"meaning", "Mead",
			"singular-nominative", "Mjod",
			"uncountable", true,
			"prefix-singular", true,
			"prefix-personal-name", true, -- example: "Mjodvitnir" (Norse mythology)
			"prefix-province-name", true -- no examples, but seems sensible in face of a general lack of examples
		},
		"Nordri", {
			"meaning", "Northern", -- source gives meaning as "the Northern"; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 457.
			"singular-nominative", "Austri",
			"gender", "Masculine",
			"personal-name", true -- example: "Nordri" (dwarf from Norse mythology; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 101.)
		},
		"Skjaldi", {
			"meaning", "Shield",
			"singular-nominative", "Skjaldi",
			"suffix-singular", true,
			"suffix-personal-name", true -- example: "Eikinskjaldi" (Norse mythology)
		},
		"Sol", {
			"meaning", "Sun",
			"singular-nominative", "Sol",
			"prefix-singular", true,
			"prefix-personal-name", true, -- example: "Solblindi" (Norse mythology)
			"prefix-province-name", true, -- no examples, but seems sensible in face of a general lack of examples
			"prefix-terrain-name", "Hills", true -- no examples, but seems sensible in face of a general lack of examples
		},
		"Sudri", {
			"meaning", "Southern", -- "the Southern"
			"singular-nominative", "Sudri",
			"gender", "Masculine",
			"personal-name", true -- example: "Sudri" (dwarf from Norse mythology; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 101.)
		},
		"Thjof", {
			"meaning", "Thief",
			"singular-nominative", "Thjof",
			"suffix-singular", true,
			"suffix-personal-name", true -- example: "Althjof" (Norse mythology)
		},
		"Vang", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 678.
			"meaning", "Garden, Green Home-Field",
			"singular-nominative", "Vang", -- "Vangr" in Old Icelandic
			"gender", "Masculine",
			"suffix-singular", true,
			"suffix-personal-name", true, -- example: "Aurvang" (dwarf from Norse mythology)
			"suffix-province-name", true -- example: "Aurvang" (wetlands in Norse mythology, through which a group of dwarves passed to migrate to Joruvellir; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 771.)
		},
		"Vestri", {
			"meaning", "Western", -- "the Western"
			"singular-nominative", "Vestri",
			"gender", "Masculine",
			"personal-name", true -- example: "Vestri" (dwarf from Norse mythology; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 101.)
		},
		"Vellir", { -- from Norse mythology, "Joruvellir" = "Fields of Sand", "vellir" = "fields"
			"meaning", "Fields",
			-- what is the singular form?
			"plural-nominative", "Vellir",
			"suffix-plural", true,
			"suffix-province-name", true -- example: "Joruvellir" (Norse mythology)
		},
		"Vind", {
			"meaning", "Wind",
			"singular-nominative", "Vind",
			"uncountable", true,
			"prefix-singular", true,
			"prefix-personal-name", true, -- example: "Vindalf" (Norse mythology)
			"prefix-province-name", true, -- no examples, but seems sensible in face of a general lack of examples
			"prefix-terrain-name", "Hills", true -- no examples, but seems sensible in face of a general lack of examples
		},
		"Vitnir", {
			"meaning", "Wolf",
			"singular-nominative", "Vitnir",
			"suffix-singular", true,
			"suffix-personal-name", true -- example: "Mjodvitnir" (Norse mythology)
		}
	},
	"verbs", {
		"Blindi", { -- should be infinitive form
			"meaning", "Blinded",
			-- infinitive form?
			"participle-past", "Blindi",
			"suffix-personal-name", true -- example: "Solblindi" (Norse mythology)
		},
		"Vis", { -- should be infinitive form
			"meaning", "Knowing",
			-- infinitive form?
			"participle-present", "Vis",
			"suffix-personal-name", true -- example: "Alvis" (all-knowing) (Norse mythology)
		}
	},
	"adjectives", {
		"Al", {
			"meaning", "Mighty", -- can also mean "All-"
			"prefix-personal-name", true, -- examples: "Alvis" (all-knowing) (Norse mythology), "Althjof" (mighty thief) (Norse mythology)
			"prefix-province-name", true, -- no examples, but seems sensible in face of a general lack of examples
			"prefix-terrain-name", "Hills", true -- no examples, but seems sensible in face of a general lack of examples
		},
		"Eikin", {
			"meaning", "Oaken",
			"prefix-personal-name", true -- example: "Eikinskjaldi" (Norse mythology)
		},
		"Gand", {
			"meaning", "Magic",
			"prefix-personal-name", true, -- example: "Gandalf" (Norse mythology)
			"prefix-province-name", true, -- no examples, but seems sensible in face of a general lack of examples
			"prefix-terrain-name", "Hills", true -- no examples, but seems sensible in face of a general lack of examples
		},
		"Rad", {
			"meaning", "Swift",
			"prefix-personal-name", true -- example: "Radsvid" (Norse mythology)
		}
	}
)

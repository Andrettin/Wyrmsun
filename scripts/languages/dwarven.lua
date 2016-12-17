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

 -- Dwarven; mix of Norse and German words used in dwarven contexts (ethnonyms, personal names or place names), as well as dwarven fantasy names

DefineLanguageWord("Al", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 771.
	Language = "dwarven",
	Type = "adjective",
	Meanings = {"Mighty", "All"}, -- meaning from Old Norse, but is also a prefix and infix used by Wesnoth's dwarven names
	AffixNameTypes = {
		"compound", "prefix", "singular", "province", -- no examples, but seems sensible in face of a general lack of examples
		"compound", "prefix", "singular", "terrain-hills", -- no examples, but seems sensible in face of a general lack of examples
		"compound", "prefix", "singular", "terrain-mountains" -- no examples, but seems sensible in face of a general lack of examples
	}
})

DefineLanguageWord("Aur", { -- "Aurr" in Old Icelandic; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 34.
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Wet Clay", "Loam"},
	Gender = "masculine",
	AffixNameTypes = {
		"compound", "prefix", "singular", "province", -- example: "Aurvang" (wetlands in Norse mythology, through which a group of dwarves passed to migrate to Joruvellir; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 771.)
		"compound", "prefix", "singular", "terrain-hills" -- no examples, but seems sensible in face of a general lack of examples
	}
})

DefineLanguageWord("Bladnir", {
	Language = "dwarven",
	Type = "adjective",
	Meanings = {"Bladed"}
})

DefineLanguageWord("Bodn", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	NameTypes = {"item-potion"} -- example: "Bodn" (jar which contained some of the mead of poetry)
})

DefineLanguageWord("Brising", { -- also name of a group of four dwarves (or the dwarves in general), the Brisings
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Flame"}, -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 772.
	NumberCaseInflections = {
		"singular", "genitive", "Brisinga" -- as in "Brisingamen"
	},
	Gender = "masculine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 772.
	AffixNameTypes = {
		"compound", "prefix", "singular", "province", -- no examples, but seems sensible in face of a general lack of examples
		"compound", "prefix", "singular", "terrain-hills", -- no examples, but seems sensible in face of a general lack of examples
		"compound", "prefix", "singular", "terrain-mountains" -- no examples, but seems sensible in face of a general lack of examples
	}
})

DefineLanguageWord("Dain", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Dead", "Deceased"}, -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 97.
	NumberCaseInflections = {
		"singular", "genitive", "Dains" -- as in "Dainsleif"
	},
	Gender = "masculine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 97.
	AffixNameTypes = {
		"compound", "prefix", "singular", "genitive", "item-sword" -- example: "Dainsleif"
	}
})

DefineLanguageWord("Eikin", {
	Language = "dwarven",
	Type = "adjective",
	Meanings = {"Oaken"},
	AffixNameTypes = {
		"compound", "prefix", "province" -- no examples, but seems sensible in face of a general lack of examples
	}
})

DefineLanguageWord("Gand", {
	Language = "dwarven",
	Type = "adjective",
	Meanings = {"Magic"},
	AffixNameTypes = {
		"compound", "prefix", "singular", "province", -- no examples, but seems sensible in face of a general lack of examples
		"compound", "prefix", "singular", "terrain-hills", -- no examples, but seems sensible in face of a general lack of examples
		"compound", "prefix", "singular", "terrain-mountains" -- no examples, but seems sensible in face of a general lack of examples
	}
})

DefineLanguageWord("Gleipnir", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	-- example: "Gleipnir" (fetter made by dwarves to bind the wolf Fenrir)
})

DefineLanguageWord("Gungnir", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	NameTypes = {"item-javelin"} -- example: "Gungnir" (throwing spear made by the sons of Ivaldi)
})

DefineLanguageWord("Haug", { -- from Norse mythology, "Svarinshaug" = "Svarin's Mound", "haug" = "mound"
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Mound"},
	AffixNameTypes = {
		"compound", "suffix", "singular", "province", -- example: "Svarinshaug" ("Svarin's Mound"; from Norse mythology)
		"compound", "suffix", "singular", "terrain-hills", -- example: "Svarinshaug" ("Svarin's Mound"; from Norse mythology)
		"compound", "suffix", "singular", "terrain-mountains" -- no examples, but seems sensible in face of a general lack of examples
	}
})

DefineLanguageWord("Hledj", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Sound", "Silence", "Hearing", "Listening"}, -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, pp. 271-272.
	Gender = "neuter",
	AffixNameTypes = {
		"compound", "prefix", "singular", "province" -- no examples, but seems sensible in face of a general lack of examples
	}
})

DefineLanguageWord("Joru", { -- from Norse mythology, "Joruvellir" = "Fields of Sand", "Joru" = "Sand"
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Sand"},
	Uncountable = true,
	AffixNameTypes = {
		"compound", "prefix", "singular", "province", -- example: "Joruvellir" (Norse mythology)
		"compound", "prefix", "singular", "terrain-mountains" -- no examples, but seems sensible in face of a general lack of examples
	}
})

DefineLanguageWord("Kal", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {}
})

DefineLanguageWord("Kartha", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {}
})

DefineLanguageWord("Knalga", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {}
})

DefineLanguageWord("Leif", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Patrimony"}, -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 381.
	Gender = "feminine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 381.
	AffixNameTypes = {
		"compound", "suffix", "singular", "item-sword" -- example: "Dainsleif"
	}
})

DefineLanguageWord("Lyr", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 247.
	Language = "dwarven",
	Type = "adjective",
	Meanings = {"Heat-Holding"}
})

DefineLanguageWord("Mjod", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Mead"},
	Uncountable = true,
	AffixNameTypes = {
		"compound", "prefix", "singular", "province", -- no examples, but seems sensible in face of a general lack of examples
		"compound", "prefix", "singular", "terrain-hills", -- no examples, but seems sensible in face of a general lack of examples
		"compound", "prefix", "singular", "terrain-mountains" -- no examples, but seems sensible in face of a general lack of examples
	}
})

DefineLanguageWord("Mjollnir", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	NameTypes = {"item-mace"} -- example: "Mjollnir" (iron hammer made by the dwarven brothers Brokk and Eitri)
})

DefineLanguageWord("Mol", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Ballad"}
})

DefineLanguageWord("Naglering", { -- possibly "Nagle-ring"?
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	NameTypes = {"item-sword"} -- example: "Naglering" (sword forged by the dwarf Alberich)
})

DefineLanguageWord("Nid", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 454.
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Wane of the Moon, No Moon"},
	Gender = "feminine",
	AffixNameTypes = {
		"compound", "prefix", "singular", "province", -- no examples, but seems sensible in face of a general lack of examples
		"compound", "prefix", "singular", "terrain-hills", -- no examples, but seems sensible in face of a general lack of examples
		"compound", "prefix", "singular", "terrain-mountains" -- no examples, but seems sensible in face of a general lack of examples
	}
})

DefineLanguageWord("Nyr", {
	Language = "dwarven",
	Type = "adjective",
	Meanings = {"New"}, -- spelled as "Nýr" in Old Icelandic; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 459.
	AffixNameTypes = {
		"compound", "prefix", "singular", "province", -- no examples, but seems sensible in face of a general lack of examples
		"compound", "prefix", "singular", "terrain-hills", -- no examples, but seems sensible in face of a general lack of examples
		"compound", "prefix", "singular", "terrain-mountains" -- no examples, but seems sensible in face of a general lack of examples
	}
})

DefineLanguageWord("Odrorir", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	NameTypes = {"item-potion"} -- example: "Odrorir" (cauldron which contained some of the mead of poetry)
})

DefineLanguageWord("Rad", {
	Language = "dwarven",
	Type = "adjective",
	Meanings = {"Counsel"}, -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 485.
	AffixNameTypes = {
		"compound", "prefix", "singular", "province" -- no examples, but seems sensible in face of a general lack of examples
	}
})

DefineLanguageWord("Sol", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Sun"},
	AffixNameTypes = {
		"compound", "prefix", "singular", "province", -- no examples, but seems sensible in face of a general lack of examples
		"compound", "prefix", "singular", "terrain-hills", -- no examples, but seems sensible in face of a general lack of examples
		"compound", "prefix", "singular", "terrain-mountains" -- no examples, but seems sensible in face of a general lack of examples
	}
})

DefineLanguageWord("Son", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	NameTypes = {"item-potion"} -- example: "Son" (jar which contained some of the mead of poetry)
})

DefineLanguageWord("Svarin", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 606.
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	NumberCaseInflections = {
		"singular", "genitive", "Svarins" -- as in "Svarinshaug"
	},
	Gender = "masculine"
})

DefineLanguageWord("Thjod", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 739.
	Language = "dwarven",
	Type = "adjective",
	Meanings = {"Great"},
	AffixNameTypes = {
		"compound", "prefix", "singular", "province", -- no examples, but seems sensible in face of a general lack of examples
		"compound", "prefix", "singular", "terrain-hills", -- no examples, but seems sensible in face of a general lack of examples
		"compound", "prefix", "singular", "terrain-mountains" -- no examples, but seems sensible in face of a general lack of examples
	}
})

DefineLanguageWord("Thrymgjol", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	-- example: "Thrymgjol" (extraordinary gate crafted by the sons of the sun-blinded dwarf Solblindi)
})

DefineLanguageWord("Vellir", { -- this is the plural; from Norse mythology, "Joruvellir" = "Fields of Sand", "vellir" = "fields"
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Fields"},
	-- what is the singular form?
	NumberCaseInflections = {
		"plural", "nominative", "Vellir"
	},
	AffixNameTypes = {"compound", "suffix", "plural", "province"} -- example: "Joruvellir" (Norse mythology)
})

DefineLanguageWord("Vig", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 715.
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Fight", "Battle"},
	Gender = "neuter",
	AffixNameTypes = {
		"compound", "prefix", "singular", "province", -- no examples, but seems sensible in face of a general lack of examples
		"compound", "prefix", "singular", "terrain-hills", -- no examples, but seems sensible in face of a general lack of examples
		"compound", "prefix", "singular", "terrain-mountains" -- no examples, but seems sensible in face of a general lack of examples
	}
})

DefineLanguageWord("Vind", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Wind"},
	Uncountable = true,
	AffixNameTypes = {
		"compound", "prefix", "singular", "province", -- no examples, but seems sensible in face of a general lack of examples
		"compound", "prefix", "singular", "terrain-hills", -- no examples, but seems sensible in face of a general lack of examples
		"compound", "prefix", "singular", "terrain-mountains" -- no examples, but seems sensible in face of a general lack of examples
	}
})

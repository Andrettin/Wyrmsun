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

-- Greek

DefineLanguageWord("Κώνωπες", { -- this is the plural; Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 101.
	Language = "greek",
	Type = "noun",
	Meanings = {"Gnats"},
	NumberCaseInflections = {
		"plural", "nominative", "Κώνωπες"
	}
})

DefineLanguageWord("Μισθός", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 7.
	Language = "greek",
	Type = "noun",
	Meanings = {"Reward", "Payment of a Soldier"},
	Gender = "Masculine"
})

DefineLanguageWord("Χέσ-χιον", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "greek",
	Type = "noun",
	Meanings = {"Oakum"} -- source gives the German word "Werg" as the meaning
})

DefineLanguageWord("Χύσθος", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "greek",
	Type = "noun",
	Meanings = {"Cavity", "Vulva"},
	Gender = "Masculine"
})

DefineLanguageWord("Abdera", { -- should be written as the original Greek name (with Greek characters)
	Language = "greek",
	Type = "noun",
	Meanings = {},
	NameSingular = true,
	TypeName = {"settlement"} -- example: "Abdera"
})

DefineLanguageWord("Abydus", { -- should be written as the original Greek name (with Greek characters)
	Language = "greek",
	Type = "noun",
	Meanings = {},
	NameSingular = true,
	TypeName = {"settlement"} -- example: "Abydus"
})

DefineLanguageWord("Acragas", { -- should be written as the original Greek name (with Greek characters)
	Language = "greek",
	Type = "noun",
	Meanings = {},
	NameSingular = true,
	TypeName = {"settlement"} -- example: "Acragas" (Agrigentum)
})

DefineLanguageWord("Agathe", { -- should be written as the original Greek name (with Greek characters)
	Language = "greek",
	Type = "noun",
	Meanings = {},
	NameSingular = true,
	TypeName = {"settlement"} -- example: "Agathe"
})

DefineLanguageWord("Ainos", { -- should be written as the original Greek name (with Greek characters)
	Language = "greek",
	Type = "noun",
	Meanings = {},
	NameSingular = true,
	TypeName = {"settlement"} -- example: "Ainos"
})

DefineLanguageWord("Alalia", { -- should be written as the original Greek name (with Greek characters)
	Language = "greek",
	Type = "noun",
	Meanings = {},
	NameSingular = true,
	TypeName = {"settlement"} -- example: "Alalia" (Aleria)
})

DefineLanguageWord("Alonae", { -- should be written as the original Greek name (with Greek characters)
	Language = "greek",
	Type = "noun",
	Meanings = {},
	NameSingular = true,
	TypeName = {"settlement"} -- example: "Alonae"
})

DefineLanguageWord("Amisus", { -- should be written as the original Greek name (with Greek characters)
	Language = "greek",
	Type = "noun",
	Meanings = {},
	NameSingular = true,
	TypeName = {"settlement"} -- example: "Amisus"
})

DefineLanguageWord("Amphi", { -- should be written as the original Greek name (with Greek characters)
	Language = "greek",
	Type = "noun",
	Meanings = {},
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Amphipolis"
})

DefineLanguageWord("Calli", { -- should be written as the original Greek name (with Greek characters)
	Language = "greek",
	Type = "noun",
	Meanings = {},
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Callipolis"
})

DefineLanguageWord("Χórtos", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "noun",
	Meanings = {"Garden"}
})

DefineLanguageWord("Érā", { -- this is the genitive; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "noun",
	Meanings = {"Earth"},
	NumberCaseInflections = {
		"singular", "genitive", "Érā"
	}
})

DefineLanguageWord("Híppos", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "greek",
	Type = "noun",
	Meanings = {"Horse"},
	DerivesFrom = {"proto-indo-european", "noun", "Éḱwos"}
})

DefineLanguageWord("Kúrtos", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "noun",
	Meanings = {"Cage"}
})

DefineLanguageWord("Nuktós", { -- this is the genitive; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "noun",
	Meanings = {"Night"}, -- presumably, but is not entirely clear from source
	NumberCaseInflections = {
		"singular", "genitive", "Nuktós"
	}
})

DefineLanguageWord("Óχos", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "noun",
	Meanings = {"Wagon"}
})

DefineLanguageWord("Omφḗ", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "noun",
	Meanings = {"Oracle"}
})

DefineLanguageWord("Patḗr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "noun",
	Meanings = {"Father"}
})

DefineLanguageWord("Phāgós", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "noun",
	Meanings = {"Oak"}
})

DefineLanguageWord("Podós", { -- this is the genitive; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "noun",
	Meanings = {"Foot"}, -- meaning not explicitly given in source, but Proto-Germanic cognate "Fōts" means "Foot"
	NumberCaseInflections = {
		"singular", "genitive", "Podós"
	}
})

DefineLanguageWord("Polis", { -- should be written as the original Greek name (with Greek characters)
	Language = "greek",
	Type = "noun",
	Meanings = {"City"},
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- examples: "Amphipolis", "Callipolis", "Neapolis" (Naples)
})

DefineLanguageWord("Skiá", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "greek",
	Type = "noun",
	Meanings = {"Shadow"}
})

DefineLanguageWord("Téphra", { -- is this the plural form? Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "greek",
	Type = "noun",
	Meanings = {"Ashes"},
	DerivesFrom = {"proto-indo-european", "noun", "Dhagh"}
})

DefineLanguageWord("Thugátēr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Daughter"}
})

DefineLanguageWord("Thúrā", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "noun",
	Meanings = {"Door"}
})

DefineLanguageWord("Baínō", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "verb",
	Meanings = {"Come"}, -- apparently, but not entirely clear from source
	Infinitive = "Baínō"
})

DefineLanguageWord("Hépomai", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "greek",
	Type = "verb",
	Meanings = {"Follow"},
	DerivesFrom = {"proto-indo-european", "verb", "Sekʷ"},
	Infinitive = "Hépomai"
})

DefineLanguageWord("Ídmen", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "verb",
	Meanings = {"Know"},
	PluralFirstPersonPresent = "Ídmen"
})

DefineLanguageWord("Némō", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "greek",
	Type = "verb",
	Meanings = {"Distribute"},
	DerivesFrom = {"proto-indo-european", "verb", "Nem"},
	Infinitive = "Némō"
})

DefineLanguageWord("Pheídomai", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "greek",
	Type = "verb",
	Meanings = {"Separate"},
	SingularFirstPersonPresent = "Pheídomai"
})

DefineLanguageWord("Peúthomai", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Sections 3-4.
	Language = "greek",
	Type = "verb",
	Meanings = {"Examine"},
	DerivesFrom = {"proto-indo-european", "verb", "Bhewdh"},
	Infinitive = "Peúthomai"
})

DefineLanguageWord("Steíkhō", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Sections 3-4.
	Language = "greek",
	Type = "verb",
	Meanings = {"Climb"},
	Infinitive = "Steíkhō"
})

DefineLanguageWord("Meízōn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "adjective",
	Meanings = {"More"}
})

DefineLanguageWord("Nea", { -- should be written as the original Greek name (with Greek characters)
	Language = "greek",
	Type = "adjective",
	Meanings = {"New"},
	PrefixTypeName = {"settlement"} -- example: "Neapolis" (Naples)
})

DefineLanguageWord("Orektós", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "adjective",
	Meanings = {"Straight"}
})

DefineLanguageWord("Plōtós", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "adjective",
	Meanings = {"Floating"}
})

DefineLanguageWord("Égō", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 1.
	Language = "greek",
	Type = "pronoun",
	Meanings = {"I"}, -- is a cognate of Proto-Germanic "eka"/"ek", so possibly has the same meaning
	Nominative = "Égō"
})

DefineLanguageWord("Heptá", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "greek",
	Type = "numeral",
	Number = 7
})

DefineLanguageWord("Oktṓ", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "numeral",
	Number = 8
})

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

DefineLanguageWord("Abdera", { -- should be written as the original Greek name (with Greek characters)
	Language = "greek",
	Type = "noun",
	Meanings = {},
	NameTypes = {"settlement"} -- example: "Abdera"
})

DefineLanguageWord("Abydus", { -- should be written as the original Greek name (with Greek characters)
	Language = "greek",
	Type = "noun",
	Meanings = {},
	NameTypes = {"settlement"} -- example: "Abydus"
})

DefineLanguageWord("Acragas", { -- should be written as the original Greek name (with Greek characters)
	Language = "greek",
	Type = "noun",
	Meanings = {},
	NameTypes = {"settlement"} -- example: "Acragas" (Agrigentum)
})

DefineLanguageWord("Agathe", { -- should be written as the original Greek name (with Greek characters)
	Language = "greek",
	Type = "noun",
	Meanings = {},
	NameTypes = {"settlement"} -- example: "Agathe"
})

DefineLanguageWord("Ainos", { -- should be written as the original Greek name (with Greek characters)
	Language = "greek",
	Type = "noun",
	Meanings = {},
	NameTypes = {"settlement"} -- example: "Ainos"
})

DefineLanguageWord("Alalia", { -- should be written as the original Greek name (with Greek characters)
	Language = "greek",
	Type = "noun",
	Meanings = {},
	NameTypes = {"settlement"} -- example: "Alalia" (Aleria)
})

DefineLanguageWord("Alonae", { -- should be written as the original Greek name (with Greek characters)
	Language = "greek",
	Type = "noun",
	Meanings = {},
	NameTypes = {"settlement"} -- example: "Alonae"
})

DefineLanguageWord("Amisus", { -- should be written as the original Greek name (with Greek characters)
	Language = "greek",
	Type = "noun",
	Meanings = {},
	NameTypes = {"settlement"} -- example: "Amisus"
})

DefineLanguageWord("Amphi", { -- should be written as the original Greek name (with Greek characters)
	Language = "greek",
	Type = "noun",
	Meanings = {},
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- example: "Amphipolis"
})

DefineLanguageWord("Baínō", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "verb",
	Meanings = {"Come"} -- apparently, but not entirely clear from source
})

DefineLanguageWord("Calli", { -- should be written as the original Greek name (with Greek characters)
	Language = "greek",
	Type = "noun",
	Meanings = {},
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- example: "Callipolis"
})

DefineLanguageWord("Χέσ-χιον", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "greek",
	Type = "noun",
	Meanings = {"Oakum"} -- source gives the German word "Werg" as the meaning
})

DefineLanguageWord("Χórtos", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "noun",
	Meanings = {"Garden"}
})

DefineLanguageWord("Χύσθος", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "greek",
	Type = "noun",
	Meanings = {"Cavity", "Vulva"},
	Gender = "masculine"
})

DefineLanguageWord("Égō", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 1.
	Language = "greek",
	Type = "pronoun",
	Meanings = {"I"}, -- is a cognate of Proto-Germanic "eka"/"ek", so possibly has the same meaning
	Nominative = "Égō"
})

DefineLanguageWord("Érā", { -- this is the genitive; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "noun",
	Meanings = {"Earth"},
	NumberCaseInflections = {
		"singular", "genitive", "Érā"
	}
})

DefineLanguageWord("Ἔσπερος", { -- source also gives the alternative form "Ἑστέρα"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 204.
	Language = "greek",
	Type = "noun",
	Meanings = {"Evening"}, -- source gives the German "Abend" as the meaning
	DerivesFrom = {"proto-indo-european", "adverb", "Ve"}
})

DefineLanguageWord("Hépomai", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "greek",
	Type = "verb",
	Meanings = {"Follow"},
	DerivesFrom = {"proto-indo-european", "verb", "Sekʷ"}
})

DefineLanguageWord("Híppos", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "greek",
	Type = "noun",
	Meanings = {"Horse"},
	DerivesFrom = {"proto-indo-european", "noun", "Éḱwos"}
})

DefineLanguageWord("Heptá", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "greek",
	Type = "numeral",
	Number = 7
})

DefineLanguageWord("Ídmen", { -- this is the plural first person present; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "verb",
	Meanings = {"Know"},
	NumberPersonTenseMoodInflections = {
		"plural", "first-person", "present", "indicative", "Ídmen"
	}
})

DefineLanguageWord("Κώνωπες", { -- this is the plural; Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 101.
	Language = "greek",
	Type = "noun",
	Meanings = {"Gnats"},
	NumberCaseInflections = {
		"plural", "nominative", "Κώνωπες"
	}
})

DefineLanguageWord("Kúrtos", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "noun",
	Meanings = {"Cage"}
})

DefineLanguageWord("Meízōn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "adjective",
	Meanings = {"More"}
})

DefineLanguageWord("Μισθός", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 7.
	Language = "greek",
	Type = "noun",
	Meanings = {"Reward", "Payment of a Soldier"},
	Gender = "masculine"
})

DefineLanguageWord("Nea", { -- should be written as the original Greek name (with Greek characters)
	Language = "greek",
	Type = "adjective",
	Meanings = {"New"},
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- example: "Neapolis" (Naples)
})

DefineLanguageWord("Némō", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "greek",
	Type = "verb",
	Meanings = {"Distribute"},
	DerivesFrom = {"proto-indo-european", "verb", "Nem"}
})

DefineLanguageWord("Νέρτερος", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 152.
	Language = "greek",
	Type = "noun",
	Meanings = {"The Lower"} -- source gives the German "der untere" as the meaning
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

DefineLanguageWord("Oktṓ", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "numeral",
	Number = 8
})

DefineLanguageWord("Omφḗ", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "noun",
	Meanings = {"Oracle"}
})

DefineLanguageWord("Ὀφρύς", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 145.
	Language = "greek",
	Type = "noun",
	Meanings = {"Eyebrow", "Edge"}, -- source gives the German "Augenbraue, Rand" as the meaning
	Gender = "feminine"
})

DefineLanguageWord("Orektós", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "adjective",
	Meanings = {"Straight"}
})

DefineLanguageWord("Patḗr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "noun",
	Meanings = {"Father"}
})

DefineLanguageWord("Peúthomai", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Sections 3-4.
	Language = "greek",
	Type = "verb",
	Meanings = {"Examine"},
	DerivesFrom = {"proto-indo-european", "verb", "Bhewdh"}
})

DefineLanguageWord("Phāgós", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "noun",
	Meanings = {"Oak"}
})

DefineLanguageWord("Pheídomai", { -- this is the singular first person present; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "greek",
	Type = "verb",
	Meanings = {"Separate"},
	NumberPersonTenseMoodInflections = {
		"singular", "first-person", "present", "indicative", "Pheídomai"
	}
})

DefineLanguageWord("Plōtós", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "adjective",
	Meanings = {"Floating"}
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
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- examples: "Amphipolis", "Callipolis", "Neapolis" (Naples)
})

DefineLanguageWord("Skiá", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "greek",
	Type = "noun",
	Meanings = {"Shadow"}
})

DefineLanguageWord("Steíkhō", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Sections 3-4.
	Language = "greek",
	Type = "verb",
	Meanings = {"Climb"}
})

DefineLanguageWord("Téphra", { -- is this the plural form? Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "greek",
	Type = "noun",
	Meanings = {"Ashes"},
	DerivesFrom = {"proto-indo-european", "noun", "Dhagh"}
})

DefineLanguageWord("Thugátēr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "greek",
	Type = "noun",
	Meanings = {"Daughter"}
})

DefineLanguageWord("Thúrā", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Type = "noun",
	Meanings = {"Door"}
})

DefineLanguageWord("Τύρβη", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 100.
	Language = "greek",
	Type = "noun",
	Meanings = {"Confusion", "Turmoil"} -- source gives the German "Verwirrung, Getümmel" as the meaning
})

DefineLanguageWord("Τύρβα", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 100.
	Language = "greek",
	Type = "adjective",
	Meanings = {"Confused"} -- source gives the German "Durcheinander, Verwirrt" as the meaning
})

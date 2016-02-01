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

DefineLanguageNoun("Κώνωπες", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 101.
	Language = "greek",
	Meanings = {"Gnats"},
	PluralNominative = "Κώνωπες"
})

DefineLanguageNoun("Μισθός", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 7.
	Language = "greek",
	Meanings = {"Reward", "Payment of a Soldier"},
	SingularNominative = "Μισθός",
	Gender = "Masculine"
})

DefineLanguageNoun("Χέσ-χιον", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "greek",
	Meanings = {"Oakum"}, -- source gives the German word "Werg" as the meaning
	SingularNominative = "Χέσ-χιον" -- is this really an hyphen in the word, or are these two forms of the word?
})

DefineLanguageNoun("Χύσθος", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "greek",
	Meanings = {"Cavity", "Vulva"},
	SingularNominative = "Χύσθος",
	Gender = "Masculine"
})

DefineLanguageNoun("Abdera", { -- should be written as the original Greek name (with Greek characters)
	Language = "greek",
	Meanings = {},
	SingularNominative = "Abdera",
	NameSingular = true,
	TypeName = {"settlement"} -- example: "Abdera"
})

DefineLanguageNoun("Abydus", { -- should be written as the original Greek name (with Greek characters)
	Language = "greek",
	Meanings = {},
	SingularNominative = "Abydus",
	NameSingular = true,
	TypeName = {"settlement"} -- example: "Abydus"
})

DefineLanguageNoun("Acragas", { -- should be written as the original Greek name (with Greek characters)
	Language = "greek",
	Meanings = {},
	SingularNominative = "Acragas",
	NameSingular = true,
	TypeName = {"settlement"} -- example: "Acragas" (Agrigentum)
})

DefineLanguageNoun("Agathe", { -- should be written as the original Greek name (with Greek characters)
	Language = "greek",
	Meanings = {},
	SingularNominative = "Agathe",
	NameSingular = true,
	TypeName = {"settlement"} -- example: "Agathe"
})

DefineLanguageNoun("Ainos", { -- should be written as the original Greek name (with Greek characters)
	Language = "greek",
	Meanings = {},
	SingularNominative = "Ainos",
	NameSingular = true,
	TypeName = {"settlement"} -- example: "Ainos"
})

DefineLanguageNoun("Alalia", { -- should be written as the original Greek name (with Greek characters)
	Language = "greek",
	Meanings = {},
	SingularNominative = "Alalia",
	NameSingular = true,
	TypeName = {"settlement"} -- example: "Alalia" (Aleria)
})

DefineLanguageNoun("Alonae", { -- should be written as the original Greek name (with Greek characters)
	Language = "greek",
	Meanings = {},
	SingularNominative = "Alonae",
	NameSingular = true,
	TypeName = {"settlement"} -- example: "Alonae"
})

DefineLanguageNoun("Amisus", { -- should be written as the original Greek name (with Greek characters)
	Language = "greek",
	Meanings = {},
	SingularNominative = "Amisus",
	NameSingular = true,
	TypeName = {"settlement"} -- example: "Amisus"
})

DefineLanguageNoun("Amphi", { -- should be written as the original Greek name (with Greek characters)
	Language = "greek",
	Meanings = {},
	SingularNominative = "Amphi",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Amphipolis"
})

DefineLanguageNoun("Calli", { -- should be written as the original Greek name (with Greek characters)
	Language = "greek",
	Meanings = {},
	SingularNominative = "Calli",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Callipolis"
})

DefineLanguageNoun("Χórtos", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Meanings = {"Garden"},
	SingularNominative = "Χórtos"
})

DefineLanguageNoun("Érā", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Meanings = {"Earth"},
	SingularGenitive = "Érā"
})

DefineLanguageNoun("Kúrtos", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Meanings = {"Cage"},
	SingularNominative = "Kúrtos"
})

DefineLanguageNoun("Nuktós", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Meanings = {"Night"}, -- presumably, but is not entirely clear from source
	SingularGenitive = "Nuktós"
})

DefineLanguageNoun("Óχos", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Meanings = {"Wagon"},
	SingularNominative = "Óχos"
})

DefineLanguageNoun("Omφḗ", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Meanings = {"Oracle"},
	SingularNominative = "Omφḗ"
})

DefineLanguageNoun("Patḗr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Meanings = {"Father"},
	SingularNominative = "Patḗr"
})

DefineLanguageNoun("Phāgós", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Meanings = {"Oak"},
	SingularNominative = "Phāgós"
})

DefineLanguageNoun("Podós", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Meanings = {"Foot"}, -- meaning not explicitly given in source, but Proto-Germanic cognate "Fōts" means "Foot"
	SingularGenitive = "Podós"
})

DefineLanguageNoun("Polis", { -- should be written as the original Greek name (with Greek characters)
	Language = "greek",
	Meanings = {"City"},
	SingularNominative = "Polis",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- examples: "Amphipolis", "Callipolis", "Neapolis" (Naples)
})

DefineLanguageNoun("Thúrā", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Meanings = {"Door"},
	SingularNominative = "Thúrā"
})

DefineLanguageVerb("Baínō", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Meanings = {"Come"}, -- apparently, but not entirely clear from source
	Infinitive = "Baínō"
})

DefineLanguageVerb("Ídmen", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Meanings = {"Know"},
	PluralFirstPersonPresent = "Ídmen"
})

DefineLanguageVerb("Pheídomai", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "greek",
	Meanings = {"Separate"},
	SingularFirstPersonPresent = "Pheídomai"
})

DefineLanguageVerb("Peúthomai", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Meanings = {"Examine"},
	Infinitive = "Peúthomai"
})

DefineLanguageVerb("Steíkhō", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Meanings = {"Climb"},
	Infinitive = "Steíkhō"
})

DefineLanguageAdjective("Meízōn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Meanings = {"More"},
	Positive = "Meízōn"
})

DefineLanguageAdjective("Nea", { -- should be written as the original Greek name (with Greek characters)
	Language = "greek",
	Meanings = {"New"},
	Positive = "Nea",
	PrefixTypeName = {"settlement"} -- example: "Neapolis" (Naples)
})

DefineLanguageAdjective("Orektós", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Meanings = {"Straight"},
	Positive = "Orektós"
})

DefineLanguageAdjective("Plōtós", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Meanings = {"Floating"},
	Positive = "Plōtós"
})

DefineLanguagePronoun("Égō", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 1.
	Language = "greek",
	Meanings = {"I"}, -- is a cognate of Proto-Germanic "eka"/"ek", so possibly has the same meaning
	Nominative = "Égō"
})

DefineLanguageNumeral("Oktṓ", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "greek",
	Number = 8
})

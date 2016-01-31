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

-- Proto-Germanic

DefineLanguageNoun("Aiza", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 11.
	Language = "proto-germanic",
	Meanings = {"Ore"}, -- source gives "Erz" as the meaning
	SingularNominative = "Aiza", -- source also gives the alternative form "Skara"
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {
		"settlement", -- seems sensible in face of a lack of examples
		"terrain-mountains", -- seems sensible in face of a lack of examples
		"terrain-hills" -- seems sensible in face of a lack of examples
	}
})

DefineLanguageNoun("Ansu", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 16.
	Language = "proto-germanic",
	Meanings = {"God"},
	SingularNominative = "Ansu",
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- seems sensible in face of a lack of examples (cognate of the prefix in Asgard, and Asgard is the settlement in "Asia" in which Odin's people used to be center until they migrated to Scandinavia in the Ynglinga saga's story)
})

DefineLanguageNoun("Asjôn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 20.
	Language = "proto-germanic",
	Meanings = {"Forge"}, -- source gives the German "Esse" as the meaning
	Gender = "Feminine",
	SingularNominative = "Asjôn",
	SuffixSingular = true,
	SuffixTypeName = {"unit-germanic-smithy"} -- seems sensible
})

DefineLanguageNoun("Austa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 12.
	Language = "proto-germanic",
	Meanings = {"East"},
	SingularNominative = "Austa", -- source also gives the form "Austra"
	PrefixSingular = true,
	PrefixTypeName = {
		"settlement",  -- seems sensible in face of a lack of examples
		"province" -- seems sensible in face of a lack of examples
	}
})

DefineLanguageNoun("Austrôn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 12.
	Language = "proto-germanic",
	Meanings = {"a Spring Goddess"},
	SingularNominative = "Austrôn",
	Gender = "Feminine",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- seems sensible in face of a lack of examples
})

DefineLanguageNoun("Berga", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137.
	Language = "proto-germanic",
	Meanings = {"Mountain", "Hill"},
	SingularNominative = "Berga",
	SuffixSingular = true,
	SuffixTypeName = {
		"terrain-mountains", -- seems rather sensible in face of a lack of examples and given the word's meaning
		"terrain-hills" -- seems rather sensible in face of a lack of examples and given the word's meaning
	}
})

DefineLanguageNoun("Bōks", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Sections 2-3.
	Language = "proto-germanic",
	Meanings = {"Tablet"},
	SingularNominative = "Bōks"
})

DefineLanguageNoun("Brazda", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "proto-germanic",
	Meanings = {"Edge"},
	SingularNominative = "Brazda", -- source also gives the alternative form "Brezda"
	Gender = "Masculine"
})

DefineLanguageNoun("Brōþar", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "proto-germanic",
	Meanings = {"Brother"},
	SingularNominative = "Brōþar"
})

DefineLanguageNoun("Bruzdaz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Language = "proto-germanic",
	Meanings = {"Blade", "Edge"},
	SingularNominative = "Bruzdaz",
	Gender = "Masculine"
})

DefineLanguageNoun("Burg", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137.
	Language = "proto-germanic",
	Meanings = {"Castle", "City"},
	SingularNominative = "Burg",
	Gender = "Feminine",
	SuffixSingular = true,
	SuffixTypeName = {
		"settlement",  -- seems sensible in face of a lack of examples
		"province" -- seems sensible in face of a lack of examples
	}
})

DefineLanguageNoun("Bûra", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 141.
	Language = "proto-germanic",
	Meanings = {"Farmer", "Peasant"},
	SingularNominative = "Bûra",
	Gender = "Masculine"
})

DefineLanguageNoun("Χŕdiz", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Meanings = {"Wattle"},
	SingularNominative = "Χŕdiz"
})

DefineLanguageNoun("Durez", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Meanings = {"Door"},
	PluralNominative = "Durez"
})

DefineLanguageNoun("Dverga", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 113.
	Language = "proto-germanic",
	Meanings = {"Dwarf"},
	SingularNominative = "Dverga",
	Gender = "Masculine"
})

DefineLanguageNoun("Erala", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 22.
	Language = "proto-germanic",
	Meanings = {"Man", "Warrior"},
	SingularNominative = "Erala",
	Gender = "Masculine"
})

DefineLanguageNoun("Erþō", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Meanings = {"Earth"},
	SingularNominative = "Erþō"
})

DefineLanguageNoun("Fadēr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "proto-germanic",
	Meanings = {"Father"},
	SingularNominative = "Fadēr"
})

DefineLanguageNoun("Fehu", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "proto-germanic",
	Meanings = {"Cattle"},
	SingularNominative = "Fehu"
})

DefineLanguageNoun("Flōduz", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Meanings = {"Flood"},
	SingularNominative = "Flōduz"
})

DefineLanguageNoun("Fōts", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Meanings = {"Foot"},
	SingularNominative = "Fōts"
})

DefineLanguageNoun("Gárdiz", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 72.
	Language = "proto-germanic",
	Meanings = {"Enclosure", "Court", "Garden"}, -- Fick and Torp give "Geheg, Hof, Garten" as the meaning; Lehmann gives the meaning as "Garden"
	SingularNominative = "Gárdiz", -- Fick and Torp spell the word as "Garda"/"Gardi"/"Gardan"
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixTypeName = {"province"}, -- seems sensible in face of a lack of examples, specially since is a cognate of the prefix in "Gardarike"
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- seems sensible in face of a lack of examples (cognate of the suffix in Asgard, and Asgard is the settlement in "Asia" in which Odin's people used to be center until they migrated to Scandinavia in the Ynglinga saga's story)
})

DefineLanguageNoun("Gastiz", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 74; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2007, 3.3.5.
	Language = "proto-germanic",
	Meanings = {"Guest"},
	SingularNominative = "Gastiz",
	Gender = "Masculine",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- examples: "Hlewagastiz", "Holtagastiz"
})

DefineLanguageNoun("Gavja", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 68.
	Language = "proto-germanic",
	Meanings = {"District"}, -- source gives "Gau" as the meaning
	SingularNominative = "Gavja",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"province"} -- seems sensible in face of a lack of examples
})

DefineLanguageNoun("Gazdaz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "proto-germanic",
	Meanings = {"Rod", "Prickle", "Point"},
	SingularNominative = "Gazdaz",
	Gender = "Masculine"
})

DefineLanguageNoun("Glôdi", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 82.
	Language = "proto-germanic",
	Meanings = {"Ember"}, -- source gives the German "Glut" as the meaning
	Gender = "Feminine",
	SingularNominative = "Glôdi",
	PrefixSingular = true,
	PrefixTypeName = {"unit-germanic-smithy"} -- seems sensible
})

DefineLanguageNoun("Gôm", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 71.
	Language = "proto-germanic",
	Meanings = {"Winter"},
	SingularNominative = "Gôm" -- source also gives the forms "Gam" and "Gim"
})

DefineLanguageNoun("Haima", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 52.
	Language = "proto-germanic",
	Meanings = {"Village", "Home"}, -- source gives "Dorf, Heim, Heimat" as the meaning
	SingularNominative = "Haima",
	SingularAccusative = "Haima",
	Gender = "Masculine",
	SuffixSingular = true,
	SuffixTypeName = {
		"province", -- seems sensible in face of a lack of examples (specially since in Old Norse there are many placenames ending in -heim)
		"settlement" -- seems sensible in face of a lack of examples
	}
})

DefineLanguageNoun("Hamara", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 46.
	Language = "proto-germanic",
	Meanings = {"Stone", "Hammer"}, -- source gives the German "Stein, Hammer"
	Gender = "Masculine",
	SingularNominative = "Hamara",
	SuffixSingular = true,
	SuffixTypeName = {"unit-germanic-smithy"} -- seems sensible
})

DefineLanguageNoun("Hazdaz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "proto-germanic",
	Meanings = {"Head Hair"},
	SingularNominative = "Hazdaz",
	Gender = "Masculine"
})

DefineLanguageNoun("Hezdōn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "proto-germanic",
	Meanings = {"Flax Fiber"},
	SingularNominative = "Hezdōn",
	Uncountable = true -- as a material, it is likely to be uncountable
})

DefineLanguageNoun("Hlewa", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "proto-germanic", -- from the Gallehus inscription, is it really Proto-Germanic?
	Meanings = {"Glory"}, -- meaning given in another source, which I have lost the reference to
	SingularNominative = "Hlewa",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- example: "Hlewagastiz"
})

DefineLanguageNoun("Horna", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "proto-germanic", -- from the Gallehus inscription, is it really Proto-Germanic?
	Meanings = {"Horn"},
	SingularNominative = "Horna"
})

DefineLanguageNoun("Hraznō", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "proto-germanic",
	Meanings = {"Wave"},
	SingularNominative = "Hraznō",
	Gender = "Feminine"
})

DefineLanguageNoun("Huzda", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "proto-germanic",
	Meanings = {"Hidden Treasure"},
	SingularNominative = "Huzda"
})

DefineLanguageNoun("Kizna", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 4, 7.
	Language = "proto-germanic",
	Meanings = {"Resinous Wood"},
	SingularNominative = "Kizna",
	Gender = "Masculine"
})

DefineLanguageNoun("Kŕnam", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Meanings = {"Grain"},
	SingularNominative = "Kŕnam"
})

DefineLanguageNoun("Landa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 184.
	Language = "proto-germanic",
	Meanings = {"Terra Firma", "Land", "Country"}, -- source gives the German words "terra firma, Land"
	SingularNominative = "Landa",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"province"} -- seems sensible in face of a lack of examples
})

DefineLanguageNoun("Lauda", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 181.
	Language = "proto-germanic",
	Meanings = {"Metal", "Lead"},
	SingularNominative = "Lauda",
	Gender = "Neuter",
	Uncountable = true, -- as a material, it is likely to be uncountable
	PrefixSingular = true,
	PrefixTypeName = {
		"settlement", -- seems sensible in face of a lack of examples
		"terrain-mountains", -- seems sensible in face of a lack of examples
		"terrain-hills" -- seems sensible in face of a lack of examples
	}
})

DefineLanguageNoun("Maχtiz", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Meanings = {"Might"},
	SingularNominative = "Maχtiz"
})

DefineLanguageNoun("Maitila", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 164.
	Language = "proto-germanic",
	Meanings = {"Chisel"}, -- source gives meaning as "Meißel"
	SingularNominative = "Maitila",
	Gender = "Masculine"
})

DefineLanguageNoun("Mark", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 160.
	Language = "proto-germanic",
	Meanings = {"March", "Border", "Borderland"},
	SingularNominative = "Mark", -- source also gives the form "Markô"
	Gender = "Feminine",
	SuffixSingular = true,
	SuffixTypeName = {"province"} -- seems sensible in face of a lack of examples
})

DefineLanguageNoun("Mazgaz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Language = "proto-germanic",
	Meanings = {"Marrow"},
	SingularNominative = "Mazgaz",
	Gender = "Masculine"
})

DefineLanguageNoun("Mizdō", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 7.
	Language = "proto-germanic",
	Meanings = {"Reward", "Payment", "Fee"},
	SingularNominative = "Mizdō",
	Gender = "Feminine"
})

DefineLanguageNoun("Naχts", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Meanings = {"Night"},
	SingularNominative = "Naχts"
})

DefineLanguageNoun("Nemida", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 151.
	Language = "proto-germanic",
	Meanings = {"Holy Pasture"}, -- source gives (in German) "heiliger Weideplatz" as the meaning
	SingularNominative = "Nemida"
})

DefineLanguageNoun("Razdō", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Language = "proto-germanic",
	Meanings = {"Voice", "Sound"},
	SingularNominative = "Razdō",
	Gender = "Feminine"
})

DefineLanguageNoun("Razdō", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "proto-germanic",
	Meanings = {"Food", "Meal"},
	SingularNominative = "Razdō",
	Gender = "Feminine"
})

DefineLanguageNoun("Razna", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "proto-germanic",
	Meanings = {"House"},
	SingularNominative = "Razna",
	Gender = "Neuter"
})

DefineLanguageNoun("Reupôn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 169.
	Language = "proto-germanic",
	Meanings = {"Ptarmigan"}, -- source gives meaning as "Schneehuhn (tetrao lagopus)"
	SingularNominative = "Reupôn" -- source also gives the forms "Gam" and "Gim"
})

DefineLanguageNoun("Ristila", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 176.
	Language = "proto-germanic",
	Meanings = {"Plowshare"}, -- source gives meaning as "Sech, Pflugeisen"
	SingularNominative = "Ristila",
	Gender = "Masculine"
})

DefineLanguageNoun("Rîkia", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 174.
	Language = "proto-germanic",
	Meanings = {"Power", "Dominion", "Realm"}, -- source gives meaning as "Macht, Herrschaft, Reich"
	SingularNominative = "Rîkia",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"province"} -- seems sensible in face of a lack of examples, specially since it is the etymological origin of the suffix in "Gardarike"
})

DefineLanguageNoun("Rîþa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 174.
	Language = "proto-germanic",
	Meanings = {"Current", "Stream"}, -- source gives meaning as "Strom, Bach"
	SingularNominative = "Rîþa",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- seems sensible in face of a lack of examples, specially since there are German settlement names which end in -bach
})

DefineLanguageNoun("Saiþa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 221.
	Language = "proto-germanic",
	Meanings = {"Magic"}, -- source gives the German "Zauber"
	Gender = "Masculine",
	SingularNominative = "Saiþa",
	PrefixSingular = true,
	PrefixTypeName = {"unit-germanic-smithy"} -- seems sensible
})

DefineLanguageNoun("Skaran", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 227.
	Language = "proto-germanic",
	Meanings = {"Plowshare"}, -- source gives "Schar, Pflugeisen" as the meaning
	SingularNominative = "Skaran" -- source also gives the alternative form "Skara"
})

DefineLanguageNoun("Smiþjôn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 264.
	Language = "proto-germanic",
	Meanings = {"Smithy"}, -- source gives "Schmiede" as the meaning
	Gender = "Feminine",
	SingularNominative = "Smiþjôn",
	SuffixSingular = true,
	SuffixTypeName = {"unit-germanic-smithy"} -- seems sensible
})

DefineLanguageNoun("Smiþu", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 263.
	Language = "proto-germanic",
	Meanings = {"Smith", "Master Craftsman"}, -- source gives "Schmied, Werkmeister" as the meaning
	Gender = "Masculine",
	SingularNominative = "Smiþu" -- source also gives the alternative form "Smiþa"
})

DefineLanguageNoun("Snaigva", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 260.
	Language = "proto-germanic",
	Meanings = {"Snow"},
	SingularNominative = "Snaigva", -- source also gives the forms "Snaiva", "Snaigvi" and "Snaigi"
	Gender = "Masculine",
	Uncountable = true, -- seems likely to be uncountable
	PrefixSingular = true,
	PrefixTypeName = {"terrain-mountains"} -- seems sensible in face of a lack of examples, specially since in German there is the "Schneeberg"
})

DefineLanguageNoun("Sēþiz", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Meanings = {"Seed"},
	SingularNominative = "Sēþiz"
})

DefineLanguageNoun("Sunōn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Meanings = {"Sun"},
	SingularNominative = "Sunōn"
})

DefineLanguageNoun("Swīnaz", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Meanings = {"Pig"},
	SingularNominative = "Swīnaz"
})

DefineLanguageNoun("Tandran", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 84.
	Language = "proto-germanic",
	Meanings = {"Fire", "Burning Coal"}, -- source gives the German "Feuer, glühende Kohle" as the meaning
	Gender = "Masculine",
	SingularNominative = "Tandran",
	PrefixSingular = true,
	PrefixTypeName = {"unit-germanic-smithy"} -- seems sensible
})

DefineLanguageNoun("Tîva", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 88.
	Language = "proto-germanic",
	Meanings = {"God"}, -- can also mean the name of a particular god
	SingularNominative = "Tîva",
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- seems sensible in face of a lack of examples
})

DefineLanguageNoun("Þurpa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 100.
	Language = "proto-germanic",
	Meanings = {"Crowd", "Village"}, -- source gives "Schar, Menschenhaufen, Dorf" as the meaning
	SingularNominative = "Þurpa",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- seems sensible in face of a lack of examples
})

DefineLanguageNoun("Uzdaz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 7.
	Language = "proto-germanic",
	Meanings = {"Point", "Place"},
	SingularNominative = "Uzdaz",
	Gender = "Masculine"
})

DefineLanguageNoun("Uzlaga", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "proto-germanic",
	Meanings = {"Fate"},
	SingularNominative = "Uzlaga"
})

DefineLanguageNoun("Vîhsa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 206.
	Language = "proto-germanic",
	Meanings = {"Village"}, -- source gives "Flecken, Dorf" as the meaning
	SingularNominative = "Vîhsa",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- seems sensible in face of a lack of examples
})

DefineLanguageNoun("Vikkan", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 206.
	Language = "proto-germanic",
	Meanings = {"Sorcerer"},
	SingularNominative = "Vikkan",
	Gender = "Masculine"
})

DefineLanguageNoun("Waganaz", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Meanings = {"Wagon"},
	SingularNominative = "Waganaz"
})

DefineLanguageNoun("Waida", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 4.
	Language = "proto-germanic",
	Meanings = {"Woad"},
	SingularNominative = "Waida" -- source also gives alternative form "Waizda"
})

DefineLanguageNoun("Walakuzjōn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "proto-germanic",
	Meanings = {"Valkyrie"},
	SingularNominative = "Walakuzjōn",
	Gender = "feminine"
})

DefineLanguageNoun("Yēra", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Meanings = {"Year"},
	SingularNominative = "Yēra"
})

DefineLanguageVerb("Beran", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "proto-germanic",
	Meanings = {"?"},
	Infinitive = "Beran"
})

DefineLanguageVerb("Beud", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Sections 2-3.
	Language = "proto-germanic",
	Meanings = {"Bid", "Offer", "Order"},
	Infinitive = "Beud",
	ParticiplePast = "Baud" -- "offered" / "ordered"
})

DefineLanguageVerb("Bītan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "proto-germanic",
	Meanings = {"Bite"}, -- reflexes have "bite" as their meaning
	Infinitive = "Bītan"
})

DefineLanguageVerb("Kwemanan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "proto-germanic",
	Meanings = {"Come"},
	Infinitive = "Kwemanan"
})

DefineLanguageVerb("Laizijanã", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 4-5.
	Language = "proto-germanic",
	Meanings = {"Teach"},
	Infinitive = "Laizijanã" -- causative verb
})

DefineLanguageVerb("Liznōn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "proto-germanic",
	Meanings = {"Learn"},
	Infinitive = "Liznōn"
})

DefineLanguageVerb("Malanan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "proto-germanic",
	Meanings = {"Grind"},
	Infinitive = "Malanan"
})

DefineLanguageVerb("Nazjan", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "proto-germanic",
	Meanings = {"Heal", "Rescue", "Sustain"},
	Infinitive = "Nazjan"
})

DefineLanguageVerb("Singwanan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "proto-germanic",
	Meanings = {"Sing"},
	Infinitive = "Singwanan"
})

DefineLanguageVerb("Steig", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Meanings = {"Climb"},
	Infinitive = "Steig",
	ParticiplePast = "Staig"
})

DefineLanguageVerb("Tawido", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "proto-germanic", -- from the Gallehus inscription, is it really Proto-Germanic?
	Meanings = {"Made"},
	SingularFirstPersonPast = "Tawido"
})

DefineLanguageVerb("Téuχanan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Sections 2-3.
	Language = "proto-germanic",
	Meanings = {"Push"}, -- but later the same source gives the meaning as "Pull" (though it does write the word as "Teuχanan" instead in that instance)
	Infinitive = "Téuχanan"
})

DefineLanguageVerb("Twiznōn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	Language = "proto-germanic",
	Meanings = {"Twine"},
	Infinitive = "Twiznōn"
})

DefineLanguageVerb("Witum", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Meanings = {"Know"},
	PluralFirstPersonPresent = "Witum" -- "we know"
})

DefineLanguageAdjective("Déwpaz", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Meanings = {"Deep"},
	Positive = "Déwpaz"
})

DefineLanguageAdjective("Fūla", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Meanings = {"Foul"},
	Positive = "Fūla"
})

DefineLanguageAdjective("Langaz", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Meanings = {"Long"},
	Positive = "Langaz"
})

DefineLanguageAdjective("Mēria", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Meanings = {"More"},
	Positive = "Mēria", -- Crist gives "Mēria", while Lehmann gives "Méyzaz"
	Comparative = "Maizan",
	Superlative = "Maista"
})

DefineLanguageAdjective("Reχtaz", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Meanings = {"Right", "Straight"},
	Positive = "Reχtaz"
})

DefineLanguageAdjective("Twiznaz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 6.
	Language = "proto-germanic",
	Meanings = {"Twofold"}, -- source actually gives "two each" (je zwei) as the meaning in p. 6, but later there is an equivalent Proto-Germanic word for "threefold" which is noted as "je drei"; and besides, in p. 1 "Twofold" is given as a possible meaning
	 -- maybe is an adverb instead?
	Positive = "Twiznaz"
})

DefineLanguageAdjective("Þrizna", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	Language = "proto-germanic",
	Meanings = {"Threefold"}, -- source gives the meaning as "threefold, the three (je drei)"
	 -- maybe is an adverb instead?
	Positive = "Þrizna"
})

DefineLanguageAdjective("Þrsúz", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Meanings = {"Dry"},
	Positive = "Þrsúz"
})

DefineLanguageAdjective("Vîha", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 206.
	Language = "proto-germanic",
	Meanings = {"Holy"},
	Positive = "Vîha",
	PrefixTypeName = {"settlement", "unit-germanic-smithy"}, -- seems sensible in face of a lack of examples
})

DefineLanguagePronoun("Χwat", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "proto-germanic",
	Meanings = {"What"},
	Nominative = "Χwat"
})

DefineLanguagePronoun("Ek", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "proto-germanic", -- from the Gallehus inscription, is it really Proto-Germanic?
	Meanings = {"I"},
	Nominative = "Ek"
})

DefineLanguagePronoun("Miz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "proto-germanic",
	Meanings = {"Me"}, -- dative
	Dative = "Miz"
})

DefineLanguagePronoun("Wīz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 5.
	Language = "proto-germanic",
	Meanings = {"We"},
	Nominative = "Wīz"
})

DefineLanguageAdverb("Maiz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "proto-germanic",
	Meanings = {"More"}
})

DefineLanguageAdposition("Af", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Meanings = {"From"}
})

DefineLanguageAdposition("Ufar", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Meanings = {"Over"}
})

DefineLanguageNumeral("Aχtō", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "proto-germanic",
	Number = 8
})

-- Must re-check to see if actually correct

DefineLanguageNoun("Godagaz", {
	Language = "proto-germanic",
	Meanings = {"Goody", "Good One"},
	SingularNominative = "Godagaz",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Hadu", {
	Language = "proto-germanic",
	Meanings = {"Battle"},
	SingularNominative = "Hadu",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- example: "Hadulaikaz"
})

DefineLanguageNoun("Hagu", {
	Language = "proto-germanic",
	Meanings = {"Small Property"},
	SingularNominative = "Hadu",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- example: "Hagustaldaz"
})

DefineLanguageNoun("Holta", {
	Language = "proto-germanic",
	Meanings = {"Wood"},
	SingularNominative = "Holta",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- example: "Holtagastiz"
})

DefineLanguageNoun("Laikaz", {
	Language = "proto-germanic",
	Meanings = {"Dancer"},
	SingularNominative = "Laikaz",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- example: Hadulaikaz
})

DefineLanguageNoun("Ridaz", {
	Language = "proto-germanic",
	Meanings = {"Rider"},
	SingularNominative = "Ridaz",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- example: Woduridaz
})

DefineLanguageNoun("Riks", {
	Language = "proto-germanic",
	Meanings = {"Ruler"},
	SingularNominative = "Riks",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- example: Theudariks
})

DefineLanguageNoun("Staldaz", {
	Language = "proto-germanic",
	Meanings = {"Owner"},
	SingularNominative = "Staldaz",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- example: Hagustaldaz
})

DefineLanguageNoun("Theuda", {
	Language = "proto-germanic",
	Meanings = {"People"},
	SingularNominative = "Theuda",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- example: "Theudariks"
})

DefineLanguageNoun("Wagigaz", {
	Language = "proto-germanic",
	Meanings = {"One Who Moves Along Impetuously"},
	SingularNominative = "Wagigaz",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Wiwaz", {
	Language = "proto-germanic",
	Meanings = {"Darter"},
	SingularNominative = "Wiwaz",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Wodu", {
	Language = "proto-germanic",
	Meanings = {"Fury"},
	SingularNominative = "Wodu",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- example: Woduridaz
})

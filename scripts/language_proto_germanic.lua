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

DefineLanguageWord("Aiza", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 11.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Ore"}, -- source gives "Erz" as the meaning
	SingularNominative = "Aiza",
	Gender = "Neuter"
})

DefineLanguageWord("Ansu", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 16.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"God"},
	SingularNominative = "Ansu",
	Gender = "Masculine",
	PrefixSingular = true,
--	PrefixTypeName = {"settlement"} -- seems sensible in face of a lack of examples (cognate of the prefix in Asgard, and Asgard is the settlement in "Asia" in which Odin's people used to be center until they migrated to Scandinavia in the Ynglinga saga's story)
})

DefineLanguageWord("Asjôn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 20.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Forge"}, -- source gives the German "Esse" as the meaning
	Gender = "Feminine",
	SingularNominative = "Asjôn"
})

DefineLanguageWord("Aþala", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 14.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Kind", "Gender", "Lineage"}, -- source gives "Art, Geschlecht (innerstes Wesen)" as the meaning
	SingularNominative = "Aþala",
	Gender = "Neuter"
})

DefineLanguageWord("Austa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 12.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"East"},
	SingularNominative = "Austa" -- source also gives the form "Austra"
})

DefineLanguageWord("Austrôn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 12.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"a Spring Goddess"},
	SingularNominative = "Austrôn",
	Gender = "Feminine"
})

DefineLanguageWord("Baki", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 133.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Stream"}, -- source gives the German "Bach" as the meaning
	DerivesFrom = {"proto-indo-european", "verb", "Bheg"},
	SingularNominative = "Baki",
	Gender = "Masculine"
})

DefineLanguageWord("Baþa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 133.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Bath", "Baths"}, -- source gives the German "Bad" as the meaning
	SingularNominative = "Baþa",
	Gender = "Neuter"
})

DefineLanguageWord("Beran", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Bear"}, -- source gives the German "Bär" as the meaning
	SingularNominative = "Beran",
	Gender = "Masculine"
})

DefineLanguageWord("Berôn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Female Bear"},
	SingularNominative = "Berôn", -- source also gives the alternative form "Berniôn"
	Gender = "Feminine"
})

DefineLanguageWord("Berga", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Mountain", "Hill"},
	SingularNominative = "Berga",
	Gender = "Neuter"
})

DefineLanguageWord("Bōks", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Sections 2-3.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Tablet"},
	SingularNominative = "Bōks"
})

DefineLanguageWord("Brazda", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Edge"},
	SingularNominative = "Brazda", -- source also gives the alternative form "Brezda"
	Gender = "Masculine"
})

DefineLanguageWord("Brōþar", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Brother"},
	SingularNominative = "Brōþar"
})

DefineLanguageWord("Bruzdaz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Blade", "Edge"},
	SingularNominative = "Bruzdaz",
	Gender = "Masculine"
})

DefineLanguageWord("Burg", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Castle", "City"}, -- source gives "Burg, Stadt" as the meaning
	SingularNominative = "Burg",
	Gender = "Feminine"
})

DefineLanguageWord("Bûra", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 141.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Farmer", "Peasant"},
	SingularNominative = "Bûra",
	Gender = "Masculine"
})

DefineLanguageWord("Χŕdiz", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Wattle"},
	SingularNominative = "Χŕdiz"
})

DefineLanguageWord("Dag", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"proto-indo-european", "noun", "Dhagh"},
	SingularNominative = "Dag"
})

DefineLanguageWord("Durez", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Door"},
	PluralNominative = "Durez"
})

DefineLanguageWord("Dverga", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 113.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Dwarf"},
	SingularNominative = "Dverga",
	Gender = "Masculine"
})

DefineLanguageWord("Erala", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 22.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Man", "Warrior"},
	SingularNominative = "Erala",
	Gender = "Masculine"
})

DefineLanguageWord("Erþō", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Earth"},
	SingularNominative = "Erþō"
})

DefineLanguageWord("Fadēr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Father"},
	SingularNominative = "Fadēr"
})

DefineLanguageWord("Fehu", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Cattle"},
	SingularNominative = "Fehu"
})

DefineLanguageWord("Flōduz", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Flood"},
	SingularNominative = "Flōduz"
})

DefineLanguageWord("Fōts", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Foot"},
	SingularNominative = "Fōts"
})

DefineLanguageWord("Fûir", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 127.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Fire"}, -- source gives "Feuer" as the meaning
	SingularNominative = "Fûir", -- source also gives the alternate form "Fûr"
	Gender = "Neuter"
})

DefineLanguageWord("Gárdiz", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 72.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Enclosure", "Court", "Garden"}, -- Fick and Torp give "Geheg, Hof, Garten" as the meaning; Lehmann gives the meaning as "Garden"
	SingularNominative = "Gárdiz", -- Fick and Torp spell the word as "Garda"/"Gardi"/"Gardan"
	Gender = "Masculine",
	PrefixSingular = true,
--	PrefixTypeName = {"province"}, -- seems sensible in face of a lack of examples, specially since is a cognate of the prefix in "Gardarike"
	SuffixSingular = true,
--	SuffixTypeName = {"settlement"} -- seems sensible in face of a lack of examples (cognate of the suffix in Asgard, and Asgard is the settlement in "Asia" in which Odin's people used to be center until they migrated to Scandinavia in the Ynglinga saga's story)
})

DefineLanguageWord("Gastiz", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 74; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2007, 3.3.5.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Guest"},
	SingularNominative = "Gastiz",
	Gender = "Masculine",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- examples: "Hlewagastiz", "Holtagastiz"
})

DefineLanguageWord("Gavja", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 68.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"District"}, -- source gives "Gau" as the meaning
	SingularNominative = "Gavja",
	Gender = "Neuter"
})

DefineLanguageWord("Gazdaz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Rod", "Prickle", "Point"},
	SingularNominative = "Gazdaz",
	Gender = "Masculine"
})

DefineLanguageWord("Glôdi", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 82.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Ember"}, -- source gives the German "Glut" as the meaning
	Gender = "Feminine",
	SingularNominative = "Glôdi"
})

DefineLanguageWord("Gôm", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 71.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Winter"},
	SingularNominative = "Gôm" -- source also gives the forms "Gam" and "Gim"
})

DefineLanguageWord("Gred", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "proto-germanic",
	Type = "adjective",
	Meanings = {},
	DerivesFrom = {"proto-indo-european", "noun", "Ghredh"},
	Positive = "Gred"
})

DefineLanguageWord("Haima", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 52.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Village", "Home"}, -- source gives "Dorf, Heim, Heimat" as the meaning
	SingularNominative = "Haima",
	SingularAccusative = "Haima",
	Gender = "Masculine"
})

DefineLanguageWord("Hamara", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 46.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Stone", "Hammer"}, -- source gives the German "Stein, Hammer"
	Gender = "Masculine",
	SingularNominative = "Hamara"
})

DefineLanguageWord("Hazdaz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Head Hair"},
	SingularNominative = "Hazdaz",
	Gender = "Masculine"
})

DefineLanguageWord("Herþa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 46.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Fireplace", "Fire"}, -- source gives "Feuerstätte, Feuer" as the meaning
	SingularNominative = "Herþa",
	Gender = "Masculine"
})

DefineLanguageWord("Hezdōn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Flax Fiber"},
	SingularNominative = "Hezdōn",
	Uncountable = true -- as a material, it is likely to be uncountable
})

DefineLanguageWord("Hlewa", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "proto-germanic", -- from the Gallehus inscription, is it really Proto-Germanic?
	Type = "noun",
	Meanings = {"Glory"}, -- meaning given in another source, which I have lost the reference to
	SingularNominative = "Hlewa",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- example: "Hlewagastiz"
})

DefineLanguageWord("Horna", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "proto-germanic", -- from the Gallehus inscription, is it really Proto-Germanic?
	Type = "noun",
	Meanings = {"Horn"},
	SingularNominative = "Horna"
})

DefineLanguageWord("Hraznō", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Wave"},
	SingularNominative = "Hraznō",
	Gender = "Feminine"
})

DefineLanguageWord("Huzda", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Hidden Treasure"},
	SingularNominative = "Huzda"
})

DefineLanguageWord("Kizna", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 4, 7.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Resinous Wood"},
	SingularNominative = "Kizna",
	Gender = "Masculine"
})

DefineLanguageWord("Kŕnam", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Grain"},
	SingularNominative = "Kŕnam"
})

DefineLanguageWord("Kuni", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Race"},
	SingularNominative = "Kuni"
})

DefineLanguageWord("Landa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 184.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Terra Firma", "Land", "Country"}, -- source gives the German words "terra firma, Land"
	SingularNominative = "Landa",
	Gender = "Neuter"
})

DefineLanguageWord("Lauda", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 181.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Metal", "Lead"},
	SingularNominative = "Lauda",
	Gender = "Neuter",
	Uncountable = true -- as a material, it is likely to be uncountable
})

DefineLanguageWord("Maχtiz", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Might"},
	SingularNominative = "Maχtiz"
})

DefineLanguageWord("Maitila", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 164.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Chisel"}, -- source gives meaning as "Meißel"
	SingularNominative = "Maitila",
	Gender = "Masculine"
})

DefineLanguageWord("Mark", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 160.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"March", "Border", "Borderland"},
	SingularNominative = "Mark", -- source also gives the form "Markô"
	Gender = "Feminine"
})

DefineLanguageWord("Mazgaz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Marrow"},
	SingularNominative = "Mazgaz",
	Gender = "Masculine"
})

DefineLanguageWord("Mizdō", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 7.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Reward", "Payment", "Fee"},
	SingularNominative = "Mizdō",
	Gender = "Feminine"
})

DefineLanguageWord("Naχts", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Night"},
	SingularNominative = "Naχts"
})

DefineLanguageWord("Nemida", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 151.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Holy Pasture"}, -- source gives (in German) "heiliger Weideplatz" as the meaning
	SingularNominative = "Nemida"
})

DefineLanguageWord("Razdō", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Voice", "Sound"},
	SingularNominative = "Razdō",
	Gender = "Feminine"
})

DefineLanguageWord("Razdō", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Food", "Meal"},
	SingularNominative = "Razdō",
	Gender = "Feminine"
})

DefineLanguageWord("Razna", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"House"},
	SingularNominative = "Razna",
	Gender = "Neuter"
})

DefineLanguageWord("Reupôn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 169.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Ptarmigan"}, -- source gives meaning as "Schneehuhn (tetrao lagopus)"
	SingularNominative = "Reupôn" -- source also gives the forms "Gam" and "Gim"
})

DefineLanguageWord("Ristila", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 176.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Plowshare"}, -- source gives meaning as "Sech, Pflugeisen"
	SingularNominative = "Ristila",
	Gender = "Masculine"
})

DefineLanguageWord("Rîkia", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 174.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Power", "Dominion", "Realm"}, -- source gives meaning as "Macht, Herrschaft, Reich"
	SingularNominative = "Rîkia",
	Gender = "Neuter",
	SuffixSingular = true,
--	SuffixTypeName = {"province"} -- seems sensible in face of a lack of examples, specially since it is the etymological origin of the suffix in "Gardarike"
})

DefineLanguageWord("Rîþa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 174.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Current", "Stream"}, -- source gives meaning as "Strom, Bach"
	SingularNominative = "Rîþa"
})

DefineLanguageWord("Saiþa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 221.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Magic"}, -- source gives the German "Zauber"
	Gender = "Masculine",
	SingularNominative = "Saiþa"
})

DefineLanguageWord("Skaran", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 227.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Plowshare"}, -- source gives "Schar, Pflugeisen" as the meaning
	SingularNominative = "Skaran" -- source also gives the alternative form "Skara"
})

DefineLanguageWord("Smiþjôn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 264.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Smithy"}, -- source gives "Schmiede" as the meaning
	Gender = "Feminine",
	SingularNominative = "Smiþjôn"
})

DefineLanguageWord("Smiþu", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 263.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Smith", "Master Craftsman"}, -- source gives "Schmied, Werkmeister" as the meaning
	Gender = "Masculine",
	SingularNominative = "Smiþu" -- source also gives the alternative form "Smiþa"
})

DefineLanguageWord("Snaigva", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 260.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Snow"},
	SingularNominative = "Snaigva", -- source also gives the forms "Snaiva", "Snaigvi" and "Snaigi"
	Gender = "Masculine",
	Uncountable = true -- seems likely to be uncountable
})

DefineLanguageWord("Sēþiz", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Seed"},
	SingularNominative = "Sēþiz"
})

DefineLanguageWord("Skadwas", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Shadow"},
	SingularNominative = "Skadwas"
})

DefineLanguageWord("Sunōn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Sun"},
	SingularNominative = "Sunōn"
})

DefineLanguageWord("Swīnaz", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Pig"},
	SingularNominative = "Swīnaz"
})

DefineLanguageWord("Tandran", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 84.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Fire", "Burning Coal"}, -- source gives the German "Feuer, glühende Kohle" as the meaning
	Gender = "Masculine",
	SingularNominative = "Tandran"
})

DefineLanguageWord("Tîva", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 88.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"God"}, -- can also mean the name of a particular god
	SingularNominative = "Tîva",
	Gender = "Masculine"
})

DefineLanguageWord("Þurpa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 100.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Crowd", "Village"}, -- source gives "Schar, Menschenhaufen, Dorf" as the meaning
	SingularNominative = "Þurpa",
	Gender = "Neuter"
})

DefineLanguageWord("Uzdaz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 7.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Point", "Place"},
	SingularNominative = "Uzdaz",
	Gender = "Masculine"
})

DefineLanguageWord("Uzlaga", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Fate"},
	SingularNominative = "Uzlaga"
})

DefineLanguageWord("Vîhsa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 206.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Village"}, -- source gives "Flecken, Dorf" as the meaning
	SingularNominative = "Vîhsa",
	Gender = "Neuter"
})

DefineLanguageWord("Vikkan", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 206.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Sorcerer"},
	SingularNominative = "Vikkan",
	Gender = "Masculine"
})

DefineLanguageWord("Waganaz", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Wagon"},
	SingularNominative = "Waganaz"
})

DefineLanguageWord("Waida", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 4.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Woad"},
	SingularNominative = "Waida" -- source also gives alternative form "Waizda"
})

DefineLanguageWord("Walakuzjōn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Valkyrie"},
	SingularNominative = "Walakuzjōn",
	Gender = "feminine"
})

DefineLanguageWord("Yēra", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Year"},
	SingularNominative = "Yēra"
})

DefineLanguageWord("Beran", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "proto-germanic",
	Type = "verb",
	Meanings = {},
	Infinitive = "Beran"
})

DefineLanguageWord("Beud", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Sections 2-4.
	Language = "proto-germanic",
	Type = "verb",
	Meanings = {"Bid", "Offer", "Order"},
	DerivesFrom = {"proto-indo-european", "verb", "Bhewdh"},
	Infinitive = "Beud",
	ParticiplePast = "Baud" -- "offered" / "ordered"
})

DefineLanguageWord("Bītan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "proto-germanic",
	Type = "verb",
	Meanings = {"Bite"}, -- reflexes have "bite" as their meaning
	Infinitive = "Bītan"
})

DefineLanguageWord("Kwemanan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "proto-germanic",
	Type = "verb",
	Meanings = {"Come"},
	Infinitive = "Kwemanan"
})

DefineLanguageWord("Laizijanã", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 4-5.
	Language = "proto-germanic",
	Type = "verb",
	Meanings = {"Teach"},
	Infinitive = "Laizijanã" -- causative verb
})

DefineLanguageWord("Liznōn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "proto-germanic",
	Type = "verb",
	Meanings = {"Learn"},
	Infinitive = "Liznōn"
})

DefineLanguageWord("Malanan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "proto-germanic",
	Type = "verb",
	Meanings = {"Grind"},
	Infinitive = "Malanan"
})

DefineLanguageWord("Nazjan", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "proto-germanic",
	Type = "verb",
	Meanings = {"Heal", "Rescue", "Sustain"},
	Infinitive = "Nazjan"
})

DefineLanguageWord("Singwanan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "proto-germanic",
	Type = "verb",
	Meanings = {"Sing"},
	Infinitive = "Singwanan"
})

DefineLanguageWord("Steig", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "verb",
	Meanings = {"Climb"},
	Infinitive = "Steig",
	ParticiplePast = "Staig"
})

DefineLanguageWord("Tawido", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "proto-germanic", -- from the Gallehus inscription, is it really Proto-Germanic?
	Type = "verb",
	Meanings = {"Made"},
	SingularFirstPersonPast = "Tawido"
})

DefineLanguageWord("Téuχanan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Sections 2-3.
	Language = "proto-germanic",
	Type = "verb",
	Meanings = {"Pull"}, -- the same source gives the meaning as "Push" previously (though when it gives the meaning as "Pull" it writes the word as "Teuχanan" instead in that instance), but the meaning of "Pull" given later seems correct, since it is repeated later on as well
	Infinitive = "Téuχanan"
})

DefineLanguageWord("Twiznōn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	Language = "proto-germanic",
	Type = "verb",
	Meanings = {"Twine"},
	Infinitive = "Twiznōn"
})

DefineLanguageWord("Witum", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "verb",
	Meanings = {"Know"},
	PluralFirstPersonPresent = "Witum" -- "we know"
})

DefineLanguageWord("Déwpaz", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "adjective",
	Meanings = {"Deep"},
	Positive = "Déwpaz"
})

DefineLanguageWord("Fūla", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "adjective",
	Meanings = {"Foul"},
	Positive = "Fūla"
})

DefineLanguageWord("Langaz", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "adjective",
	Meanings = {"Long"},
	Positive = "Langaz"
})

DefineLanguageWord("Mēria", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "adjective",
	Meanings = {"More"},
	Positive = "Mēria", -- Crist gives "Mēria", while Lehmann gives "Méyzaz"
	Comparative = "Maizan",
	Superlative = "Maista"
})

DefineLanguageWord("Reχtaz", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "adjective",
	Meanings = {"Right", "Straight"},
	Positive = "Reχtaz"
})

DefineLanguageWord("Twiznaz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 6.
	Language = "proto-germanic",
	Type = "adjective",
	Meanings = {"Twofold"}, -- source actually gives "two each" (je zwei) as the meaning in p. 6, but later there is an equivalent Proto-Germanic word for "threefold" which is noted as "je drei"; and besides, in p. 1 "Twofold" is given as a possible meaning
	 -- maybe is an adverb instead?
	Positive = "Twiznaz"
})

DefineLanguageWord("Þrizna", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	Language = "proto-germanic",
	Type = "adjective",
	Meanings = {"Threefold"}, -- source gives the meaning as "threefold, the three (je drei)"
	 -- maybe is an adverb instead?
	Positive = "Þrizna"
})

DefineLanguageWord("Þrsúz", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "adjective",
	Meanings = {"Dry"},
	Positive = "Þrsúz"
})

DefineLanguageWord("Vîha", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 206.
	Language = "proto-germanic",
	Type = "adjective",
	Meanings = {"Holy"},
	Positive = "Vîha"
})

DefineLanguageWord("Χwat", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "proto-germanic",
	Type = "pronoun",
	Meanings = {"What"},
	Nominative = "Χwat"
})

DefineLanguageWord("Ek", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "proto-germanic", -- from the Gallehus inscription, is it really Proto-Germanic?
	Type = "pronoun",
	Meanings = {"I"},
	Nominative = "Ek"
})

DefineLanguageWord("Miz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "proto-germanic",
	Type = "pronoun",
	Meanings = {"Me"}, -- dative
	Dative = "Miz"
})

DefineLanguageWord("Wīz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 5.
	Language = "proto-germanic",
	Type = "pronoun",
	Meanings = {"We"},
	Nominative = "Wīz"
})

DefineLanguageWord("Maiz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "proto-germanic",
	Type = "adverb",
	Meanings = {"More"}
})

DefineLanguageWord("Af", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "adposition",
	Meanings = {"From"}
})

DefineLanguageWord("Ufar", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "adposition",
	Meanings = {"Over"}
})

DefineLanguageWord("Aχtō", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "proto-germanic",
	Type = "numeral",
	Number = 8
})

-- Must re-check to see if actually correct

DefineLanguageWord("Godagaz", {
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Goody", "Good One"},
	SingularNominative = "Godagaz",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Hadu", {
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Battle"},
	SingularNominative = "Hadu",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- example: "Hadulaikaz"
})

DefineLanguageWord("Hagu", {
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Small Property"},
	SingularNominative = "Hadu",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- example: "Hagustaldaz"
})

DefineLanguageWord("Holta", {
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Wood"},
	SingularNominative = "Holta",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- example: "Holtagastiz"
})

DefineLanguageWord("Laikaz", {
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Dancer"},
	SingularNominative = "Laikaz",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- example: Hadulaikaz
})

DefineLanguageWord("Ridaz", {
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Rider"},
	SingularNominative = "Ridaz",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- example: Woduridaz
})

DefineLanguageWord("Riks", {
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Ruler"},
	SingularNominative = "Riks",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- example: Theudariks
})

DefineLanguageWord("Staldaz", {
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Owner"},
	SingularNominative = "Staldaz",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- example: Hagustaldaz
})

DefineLanguageWord("Theuda", {
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"People"},
	SingularNominative = "Theuda",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- example: "Theudariks"
})

DefineLanguageWord("Wagigaz", {
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"One Who Moves Along Impetuously"},
	SingularNominative = "Wagigaz",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Wiwaz", {
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Darter"},
	SingularNominative = "Wiwaz",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Wodu", {
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Fury"},
	SingularNominative = "Wodu",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- example: Woduridaz
})

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
	Meaning = "Ore", -- source gives "Erz" as the meaning
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
	Meaning = "God",
	SingularNominative = "Ansu",
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- seems sensible in face of a lack of examples (cognate of the prefix in Asgard, and Asgard is the settlement in "Asia" in which Odin's people used to be center until they migrated to Scandinavia in the Ynglinga saga's story)
})

DefineLanguageNoun("Asjôn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 20.
	Language = "proto-germanic",
	Meaning = "Forge", -- source gives the German "Esse" as the meaning
	Gender = "Feminine",
	SingularNominative = "Asjôn",
	SuffixSingular = true,
	SuffixTypeName = {"unit-germanic-smithy"} -- seems sensible
})

DefineLanguageNoun("Austa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 12.
	Language = "proto-germanic",
	Meaning = "East",
	SingularNominative = "Austa", -- source also gives the form "Austra"
	PrefixSingular = true,
	PrefixTypeName = {
		"settlement",  -- seems sensible in face of a lack of examples
		"province" -- seems sensible in face of a lack of examples
	}
})

DefineLanguageNoun("Austrôn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 12.
	Language = "proto-germanic",
	Meaning = "a Spring Goddess",
	SingularNominative = "Austrôn",
	Gender = "Feminine",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- seems sensible in face of a lack of examples
})

DefineLanguageNoun("Berga", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137.
	Language = "proto-germanic",
	Meaning = "Mountain, Hill",
	SingularNominative = "Berga",
	SuffixSingular = true,
	SuffixTypeName = {
		"terrain-mountains", -- seems rather sensible in face of a lack of examples and given the word's meaning
		"terrain-hills" -- seems rather sensible in face of a lack of examples and given the word's meaning
	}
})

DefineLanguageNoun("Brazda", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "proto-germanic",
	Meaning = "Edge",
	SingularNominative = "Brazda", -- source also gives the alternative form "Brezda"
	Gender = "Masculine"
})

DefineLanguageNoun("Bruzdaz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Language = "proto-germanic",
	Meaning = "Blade, Edge",
	SingularNominative = "Bruzdaz",
	Gender = "Masculine"
})

DefineLanguageNoun("Burg", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137.
	Language = "proto-germanic",
	Meaning = "Castle, City",
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
	Meaning = "Farmer, Peasant",
	SingularNominative = "Bûra",
	Gender = "Masculine"
})

DefineLanguageNoun("Dverga", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 113.
	Language = "proto-germanic",
	Meaning = "Dwarf",
	SingularNominative = "Dverga",
	Gender = "Masculine"
})

DefineLanguageNoun("Erala", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 22.
	Language = "proto-germanic",
	Meaning = "Man, Warrior",
	SingularNominative = "Erala",
	Gender = "Masculine"
})

DefineLanguageNoun("Garda", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 72.
	Language = "proto-germanic",
	Meaning = "Enclosure, Court, Garden", -- source gives "Geheg, Hof, Garten" as the meaning
	SingularNominative = "Garda", -- source also gives the alternate forms "Gardi" and "Gardan"
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixTypeName = {"province"}, -- seems sensible in face of a lack of examples, specially since is a cognate of the prefix in "Gardarike"
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- seems sensible in face of a lack of examples (cognate of the suffix in Asgard, and Asgard is the settlement in "Asia" in which Odin's people used to be center until they migrated to Scandinavia in the Ynglinga saga's story)
})

DefineLanguageNoun("Gastiz", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 74; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2007, 3.3.5.
	Language = "proto-germanic",
	Meaning = "Guest",
	SingularNominative = "Gastiz",
	Gender = "Masculine",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- examples: "Hlewagastiz", "Holtagastiz"
})

DefineLanguageNoun("Gavja", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 68.
	Language = "proto-germanic",
	Meaning = "District", -- source gives "Gau" as the meaning
	SingularNominative = "Gavja",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"province"} -- seems sensible in face of a lack of examples
})

DefineLanguageNoun("Gazdaz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "proto-germanic",
	Meaning = "Rod, Prickle, Point",
	SingularNominative = "Gazdaz",
	Gender = "Masculine"
})

DefineLanguageNoun("Glôdi", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 82.
	Language = "proto-germanic",
	Meaning = "Ember", -- source gives the German "Glut" as the meaning
	Gender = "Feminine",
	SingularNominative = "Glôdi",
	PrefixSingular = true,
	PrefixTypeName = {"unit-germanic-smithy"} -- seems sensible
})

DefineLanguageNoun("Gôm", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 71.
	Language = "proto-germanic",
	Meaning = "Winter",
	SingularNominative = "Gôm" -- source also gives the forms "Gam" and "Gim"
})

DefineLanguageNoun("Haima", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 52.
	Language = "proto-germanic",
	Meaning = "Village, Home", -- source gives "Dorf, Heim, Heimat" as the meaning
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
	Meaning = "Stone, Hammer", -- source gives the German "Stein, Hammer"
	Gender = "Masculine",
	SingularNominative = "Hamara",
	SuffixSingular = true,
	SuffixTypeName = {"unit-germanic-smithy"} -- seems sensible
})

DefineLanguageNoun("Hazdaz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "proto-germanic",
	Meaning = "Head Hair",
	SingularNominative = "Hazdaz",
	Gender = "Masculine"
})

DefineLanguageNoun("Hezdōn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "proto-germanic",
	Meaning = "Flax Fiber",
	SingularNominative = "Hezdōn",
	Uncountable = true -- as a material, it is likely to be uncountable
})

DefineLanguageNoun("Hraznō", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "proto-germanic",
	Meaning = "Wave",
	SingularNominative = "Hraznō",
	Gender = "Feminine"
})

DefineLanguageNoun("Huzda", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "proto-germanic",
	Meaning = "Hidden Treasure",
	SingularNominative = "Huzda"
})

DefineLanguageNoun("Kizna", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 4, 7.
	Language = "proto-germanic",
	Meaning = "Resinous Wood",
	SingularNominative = "Kizna",
	Gender = "Masculine"
})

DefineLanguageNoun("Landa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 184.
	Language = "proto-germanic",
	Meaning = "Terra Firma, Land, Country", -- source gives the German words "terra firma, Land"
	SingularNominative = "Landa",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"province"} -- seems sensible in face of a lack of examples
})

DefineLanguageNoun("Lauda", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 181.
	Language = "proto-germanic",
	Meaning = "Metal, Lead",
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

DefineLanguageNoun("Maitila", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 164.
	Language = "proto-germanic",
	Meaning = "Chisel", -- source gives meaning as "Meißel"
	SingularNominative = "Maitila",
	Gender = "Masculine"
})

DefineLanguageNoun("Mark", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 160.
	Language = "proto-germanic",
	Meaning = "March, Border, Borderland",
	SingularNominative = "Mark", -- source also gives the form "Markô"
	Gender = "Feminine",
	SuffixSingular = true,
	SuffixTypeName = {"province"} -- seems sensible in face of a lack of examples
})

DefineLanguageNoun("Mazgaz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Language = "proto-germanic",
	Meaning = "Marrow",
	SingularNominative = "Mazgaz",
	Gender = "Masculine"
})

DefineLanguageNoun("Mizdō", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 7.
	Language = "proto-germanic",
	Meaning = "Reward, Payment, Fee",
	SingularNominative = "Mizdō",
	Gender = "Feminine"
})

DefineLanguageNoun("Nemida", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 151.
	Language = "proto-germanic",
	Meaning = "Holy Pasture", -- source gives (in German) "heiliger Weideplatz" as the meaning
	SingularNominative = "Nemida"
})

DefineLanguageNoun("Razdō", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Language = "proto-germanic",
	Meaning = "Voice, Sound",
	SingularNominative = "Razdō",
	Gender = "Feminine"
})

DefineLanguageNoun("Razdō", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "proto-germanic",
	Meaning = "Food, Meal",
	SingularNominative = "Razdō",
	Gender = "Feminine"
})

DefineLanguageNoun("Razna", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "proto-germanic",
	Meaning = "House",
	SingularNominative = "Razna",
	Gender = "Neuter"
})

DefineLanguageNoun("Reupôn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 169.
	Language = "proto-germanic",
	Meaning = "Ptarmigan", -- source gives meaning as "Schneehuhn (tetrao lagopus)"
	SingularNominative = "Reupôn" -- source also gives the forms "Gam" and "Gim"
})

DefineLanguageNoun("Ristila", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 176.
	Language = "proto-germanic",
	Meaning = "Plowshare", -- source gives meaning as "Sech, Pflugeisen"
	SingularNominative = "Ristila",
	Gender = "Masculine"
})

DefineLanguageNoun("Rîkia", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 174.
	Language = "proto-germanic",
	Meaning = "Power, Dominion, Realm", -- source gives meaning as "Macht, Herrschaft, Reich"
	SingularNominative = "Rîkia",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"province"} -- seems sensible in face of a lack of examples, specially since it is the etymological origin of the suffix in "Gardarike"
})

DefineLanguageNoun("Rîþa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 174.
	Language = "proto-germanic",
	Meaning = "Current, Stream", -- source gives meaning as "Strom, Bach"
	SingularNominative = "Rîþa",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- seems sensible in face of a lack of examples, specially since there are German settlement names which end in -bach
})

DefineLanguageNoun("Saiþa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 221.
	Language = "proto-germanic",
	Meaning = "Magic", -- source gives the German "Zauber"
	Gender = "Masculine",
	SingularNominative = "Saiþa",
	PrefixSingular = true,
	PrefixTypeName = {"unit-germanic-smithy"} -- seems sensible
})

DefineLanguageNoun("Skaran", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 227.
	Language = "proto-germanic",
	Meaning = "Plowshare", -- source gives "Schar, Pflugeisen" as the meaning
	SingularNominative = "Skaran" -- source also gives the alternative form "Skara"
})

DefineLanguageNoun("Smiþjôn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 264.
	Language = "proto-germanic",
	Meaning = "Smithy", -- source gives "Schmiede" as the meaning
	Gender = "Feminine",
	SingularNominative = "Smiþjôn",
	SuffixSingular = true,
	SuffixTypeName = {"unit-germanic-smithy"} -- seems sensible
})

DefineLanguageNoun("Smiþu", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 263.
	Language = "proto-germanic",
	Meaning = "Smith, Master Craftsman", -- source gives "Schmied, Werkmeister" as the meaning
	Gender = "Masculine",
	SingularNominative = "Smiþu" -- source also gives the alternative form "Smiþa"
})

DefineLanguageNoun("Snaigva", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 260.
	Language = "proto-germanic",
	Meaning = "Snow",
	SingularNominative = "Snaigva", -- source also gives the forms "Snaiva", "Snaigvi" and "Snaigi"
	Gender = "Masculine",
	Uncountable = true, -- seems likely to be uncountable
	PrefixSingular = true,
	PrefixTypeName = {"terrain-mountains"} -- seems sensible in face of a lack of examples, specially since in German there is the "Schneeberg"
})

DefineLanguageNoun("Tandran", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 84.
	Language = "proto-germanic",
	Meaning = "Fire, Burning Coal", -- source gives the German "Feuer, glühende Kohle" as the meaning
	Gender = "Masculine",
	SingularNominative = "Tandran",
	PrefixSingular = true,
	PrefixTypeName = {"unit-germanic-smithy"} -- seems sensible
})

DefineLanguageNoun("Tîva", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 88.
	Language = "proto-germanic",
	Meaning = "God", -- can also mean the name of a particular god
	SingularNominative = "Tîva",
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- seems sensible in face of a lack of examples
})

DefineLanguageNoun("Þurpa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 100.
	Language = "proto-germanic",
	Meaning = "Crowd, Village", -- source gives "Schar, Menschenhaufen, Dorf" as the meaning
	SingularNominative = "Þurpa",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- seems sensible in face of a lack of examples
})

DefineLanguageNoun("Uzdaz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 7.
	Language = "proto-germanic",
	Meaning = "Point, Place",
	SingularNominative = "Uzdaz",
	Gender = "Masculine"
})

DefineLanguageNoun("Uzlaga", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "proto-germanic",
	Meaning = "Fate",
	SingularNominative = "Uzlaga"
})

DefineLanguageNoun("Vîhsa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 206.
	Language = "proto-germanic",
	Meaning = "Village", -- source gives "Flecken, Dorf" as the meaning
	SingularNominative = "Vîhsa",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- seems sensible in face of a lack of examples
})

DefineLanguageNoun("Vikkan", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 206.
	Language = "proto-germanic",
	Meaning = "Sorcerer",
	SingularNominative = "Vikkan",
	Gender = "Masculine"
})

DefineLanguageNoun("Waida", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 4.
	Language = "proto-germanic",
	Meaning = "Woad",
	SingularNominative = "Waida" -- source also gives alternative form "Waizda"
})

DefineLanguageNoun("Walakuzjōn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "proto-germanic",
	Meaning = "Valkyrie",
	SingularNominative = "Walakuzjōn",
	Gender = "feminine"
})

DefineLanguageVerb("Laizijanã", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 4-5.
	Language = "proto-germanic",
	Meaning = "Teach",
	Infinitive = "Laizijanã" -- causative verb
})

DefineLanguageVerb("Liznōn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "proto-germanic",
	Meaning = "Learn",
	Infinitive = "Liznōn"
})

DefineLanguageVerb("Nazjan", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "proto-germanic",
	Meaning = "Heal, Rescue, Sustain",
	Infinitive = "Nazjan"
})

DefineLanguageVerb("Twiznōn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	Language = "proto-germanic",
	Meaning = "Twine",
	Infinitive = "Twiznōn"
})

DefineLanguageAdjective("Mēria", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	Language = "proto-germanic",
	Meaning = "More",
	Comparative = "Maizan",
	Superlative = "Maista"
})

DefineLanguageAdjective("Twiznaz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 6.
	Language = "proto-germanic",
	Meaning = "Twofold" -- source actually gives "two each" (je zwei) as the meaning in p. 6, but later there is an equivalent Proto-Germanic word for "threefold" which is noted as "je drei"; and besides, in p. 1 "Twofold" is given as a possible meaning
	 -- maybe is an adverb instead?
})

DefineLanguageAdjective("Þrizna", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	Language = "proto-germanic",
	Meaning = "Threefold" -- source gives the meaning as "threefold, the three (je drei)"
	 -- maybe is an adverb instead?
})

DefineLanguageAdjective("Vîha", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 206.
	Language = "proto-germanic",
	Meaning = "Holy",
	PrefixTypeName = {"settlement", "unit-germanic-smithy"}, -- seems sensible in face of a lack of examples
})

DefineLanguagePronoun("Miz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "proto-germanic",
	Meaning = "Me", -- dative
	Dative = "Miz"
})

DefineLanguagePronoun("Wīz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 5.
	Language = "proto-germanic",
	Meaning = "We",
	Nominative = "Wīz"
})

DefineLanguageAdverb("Maiz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "proto-germanic",
	Meaning = "More"
})



-- Must re-check to see if actually correct

DefineLanguageNoun("Godagaz", {
	Language = "proto-germanic",
	Meaning = "Goody, Good One",
	SingularNominative = "Godagaz",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Hadu", {
	Language = "proto-germanic",
	Meaning = "Battle",
	SingularNominative = "Hadu",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- example: "Hadulaikaz"
})

DefineLanguageNoun("Hagu", {
	Language = "proto-germanic",
	Meaning = "Small Property",
	SingularNominative = "Hadu",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- example: "Hagustaldaz"
})

DefineLanguageNoun("Hlewa", {
	Language = "proto-germanic",
	Meaning = "Glory",
	SingularNominative = "Hlewa",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- example: "Hlewagastiz"
})

DefineLanguageNoun("Holta", {
	Language = "proto-germanic",
	Meaning = "Wood",
	SingularNominative = "Holta",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- example: "Holtagastiz"
})

DefineLanguageNoun("Laikaz", {
	Language = "proto-germanic",
	Meaning = "Dancer",
	SingularNominative = "Laikaz",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- example: Hadulaikaz
})

DefineLanguageNoun("Ridaz", {
	Language = "proto-germanic",
	Meaning = "Rider",
	SingularNominative = "Ridaz",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- example: Woduridaz
})

DefineLanguageNoun("Riks", {
	Language = "proto-germanic",
	Meaning = "Ruler",
	SingularNominative = "Riks",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- example: Theudariks
})

DefineLanguageNoun("Staldaz", {
	Language = "proto-germanic",
	Meaning = "Owner",
	SingularNominative = "Staldaz",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- example: Hagustaldaz
})

DefineLanguageNoun("Theuda", {
	Language = "proto-germanic",
	Meaning = "People",
	SingularNominative = "Theuda",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- example: "Theudariks"
})

DefineLanguageNoun("Wagigaz", {
	Language = "proto-germanic",
	Meaning = "One Who Moves Along Impetuously",
	SingularNominative = "Wagigaz",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Wiwaz", {
	Language = "proto-germanic",
	Meaning = "Darter",
	SingularNominative = "Wiwaz",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Wodu", {
	Language = "proto-germanic",
	Meaning = "Fury",
	SingularNominative = "Wodu",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- example: Woduridaz
})

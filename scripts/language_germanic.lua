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
	Civilization = "germanic",
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

DefineLanguageWord("Ansu", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 16.
	Civilization = "germanic",
	Meaning = "God",
	SingularNominative = "Ansu",
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- seems sensible in face of a lack of examples (cognate of the prefix in Asgard, and Asgard is the settlement in "Asia" in which Odin's people used to be center until they migrated to Scandinavia in the Ynglinga saga's story)
})

DefineLanguageWord("Asjôn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 20.
	Civilization = "germanic",
	Meaning = "Forge", -- source gives the German "Esse" as the meaning
	Gender = "Feminine",
	SingularNominative = "Asjôn",
	SuffixSingular = true,
	SuffixTypeName = {"unit-germanic-smithy"} -- seems sensible
})

DefineLanguageWord("Austa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 12.
	Civilization = "germanic",
	Meaning = "East",
	SingularNominative = "Austa", -- source also gives the form "Austra"
	PrefixSingular = true,
	PrefixTypeName = {
		"settlement",  -- seems sensible in face of a lack of examples
		"province" -- seems sensible in face of a lack of examples
	}
})

DefineLanguageWord("Austrôn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 12.
	Civilization = "germanic",
	Meaning = "a Spring Goddess",
	SingularNominative = "Austrôn",
	Gender = "Feminine",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- seems sensible in face of a lack of examples
})

DefineLanguageWord("Berga", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137.
	Civilization = "germanic",
	Meaning = "Mountain, Hill",
	SingularNominative = "Berga",
	SuffixSingular = true,
	SuffixTypeName = {
		"terrain-mountains", -- seems rather sensible in face of a lack of examples and given the word's meaning
		"terrain-hills" -- seems rather sensible in face of a lack of examples and given the word's meaning
	}
})

DefineLanguageWord("Brazda", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Civilization = "germanic",
	Meaning = "Edge",
	SingularNominative = "Brazda", -- source also gives the alternative form "Brezda"
	Gender = "Masculine"
})

DefineLanguageWord("Bruzdaz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Civilization = "germanic",
	Meaning = "Blade, Edge",
	SingularNominative = "Bruzdaz",
	Gender = "Masculine"
})

DefineLanguageWord("Burg", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137.
	Civilization = "germanic",
	Meaning = "Castle, City",
	SingularNominative = "Burg",
	Gender = "Feminine",
	SuffixSingular = true,
	SuffixTypeName = {
		"settlement",  -- seems sensible in face of a lack of examples
		"province" -- seems sensible in face of a lack of examples
	}
})

DefineLanguageWord("Bûra", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 141.
	Civilization = "germanic",
	Meaning = "Farmer, Peasant",
	SingularNominative = "Bûra",
	Gender = "Masculine"
})

DefineLanguageWord("Dverga", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 113.
	Civilization = "germanic",
	Meaning = "Dwarf",
	SingularNominative = "Dverga",
	Gender = "Masculine"
})

DefineLanguageWord("Erala", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 22.
	Civilization = "germanic",
	Meaning = "Man, Warrior",
	SingularNominative = "Erala",
	Gender = "Masculine"
})

DefineLanguageWord("Garda", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 72.
	Civilization = "germanic",
	Meaning = "Enclosure, Court, Garden", -- source gives "Geheg, Hof, Garten" as the meaning
	SingularNominative = "Garda", -- source also gives the alternate forms "Gardi" and "Gardan"
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixTypeName = {"province"}, -- seems sensible in face of a lack of examples, specially since is a cognate of the prefix in "Gardarike"
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- seems sensible in face of a lack of examples (cognate of the suffix in Asgard, and Asgard is the settlement in "Asia" in which Odin's people used to be center until they migrated to Scandinavia in the Ynglinga saga's story)
})

DefineLanguageWord("Gastiz", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 74; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2007, 3.3.5.
	Civilization = "germanic",
	Meaning = "Guest",
	SingularNominative = "Gastiz",
	Gender = "Masculine",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- examples: "Hlewagastiz", "Holtagastiz"
})

DefineLanguageWord("Gavja", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 68.
	Civilization = "germanic",
	Meaning = "District", -- source gives "Gau" as the meaning
	SingularNominative = "Gavja",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"province"} -- seems sensible in face of a lack of examples
})

DefineLanguageWord("Gazdaz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Civilization = "germanic",
	Meaning = "Rod, Prickle, Point",
	SingularNominative = "Gazdaz",
	Gender = "Masculine"
})

DefineLanguageWord("Glôdi", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 82.
	Civilization = "germanic",
	Meaning = "Ember", -- source gives the German "Glut" as the meaning
	Gender = "Feminine",
	SingularNominative = "Glôdi",
	PrefixSingular = true,
	PrefixTypeName = {"unit-germanic-smithy"} -- seems sensible
})

DefineLanguageWord("Gôm", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 71.
	Civilization = "germanic",
	Meaning = "Winter",
	SingularNominative = "Gôm" -- source also gives the forms "Gam" and "Gim"
})

DefineLanguageWord("Haima", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 52.
	Civilization = "germanic",
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

DefineLanguageWord("Hamara", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 46.
	Civilization = "germanic",
	Meaning = "Stone, Hammer", -- source gives the German "Stein, Hammer"
	Gender = "Masculine",
	SingularNominative = "Hamara",
	SuffixSingular = true,
	SuffixTypeName = {"unit-germanic-smithy"} -- seems sensible
})

DefineLanguageWord("Hazdaz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Civilization = "germanic",
	Meaning = "Head Hair",
	SingularNominative = "Hazdaz",
	Gender = "Masculine"
})

DefineLanguageWord("Hezdōn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Civilization = "germanic",
	Meaning = "Flax Fiber",
	SingularNominative = "Hezdōn",
	Uncountable = true -- as a material, it is likely to be uncountable
})

DefineLanguageWord("Hraznō", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Civilization = "germanic",
	Meaning = "Wave",
	SingularNominative = "Hraznō",
	Gender = "Feminine"
})

DefineLanguageWord("Huzda", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Civilization = "germanic",
	Meaning = "Hidden Treasure",
	SingularNominative = "Huzda"
})

DefineLanguageWord("Kizna", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 4, 7.
	Civilization = "germanic",
	Meaning = "Resinous Wood",
	SingularNominative = "Kizna",
	Gender = "Masculine"
})

DefineLanguageWord("Landa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 184.
	Civilization = "germanic",
	Meaning = "Terra Firma, Land, Country", -- source gives the German words "terra firma, Land"
	SingularNominative = "Landa",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"province"} -- seems sensible in face of a lack of examples
})

DefineLanguageWord("Lauda", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 181.
	Civilization = "germanic",
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

DefineLanguageWord("Maitila", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 164.
	Civilization = "germanic",
	Meaning = "Chisel", -- source gives meaning as "Meißel"
	SingularNominative = "Maitila",
	Gender = "Masculine"
})

DefineLanguageWord("Mark", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 160.
	Civilization = "germanic",
	Meaning = "March, Border, Borderland",
	SingularNominative = "Mark", -- source also gives the form "Markô"
	Gender = "Feminine",
	SuffixSingular = true,
	SuffixTypeName = {"province"} -- seems sensible in face of a lack of examples
})

DefineLanguageWord("Mazgaz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Civilization = "germanic",
	Meaning = "Marrow",
	SingularNominative = "Mazgaz",
	Gender = "Masculine"
})

DefineLanguageWord("Mizdō", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 7.
	Civilization = "germanic",
	Meaning = "Reward, Payment, Fee",
	SingularNominative = "Mizdō",
	Gender = "Feminine"
})

DefineLanguageWord("Razdō", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Civilization = "germanic",
	Meaning = "Voice, Sound",
	SingularNominative = "Razdō",
	Gender = "Feminine"
})

DefineLanguageWord("Razdō", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Civilization = "germanic",
	Meaning = "Food, Meal",
	SingularNominative = "Razdō",
	Gender = "Feminine"
})

DefineLanguageWord("Razna", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Civilization = "germanic",
	Meaning = "House",
	SingularNominative = "Razna",
	Gender = "Neuter"
})

DefineLanguageWord("Reupôn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 169.
	Civilization = "germanic",
	Meaning = "Ptarmigan", -- source gives meaning as "Schneehuhn (tetrao lagopus)"
	SingularNominative = "Reupôn" -- source also gives the forms "Gam" and "Gim"
})

DefineLanguageWord("Ristila", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 176.
	Civilization = "germanic",
	Meaning = "Plowshare", -- source gives meaning as "Sech, Pflugeisen"
	SingularNominative = "Ristila",
	Gender = "Masculine"
})

DefineLanguageWord("Rîkia", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 174.
	Civilization = "germanic",
	Meaning = "Power, Dominion, Realm", -- source gives meaning as "Macht, Herrschaft, Reich"
	SingularNominative = "Rîkia",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"province"} -- seems sensible in face of a lack of examples, specially since it is the etymological origin of the suffix in "Gardarike"
})

DefineLanguageWord("Rîþa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 174.
	Civilization = "germanic",
	Meaning = "Current, Stream", -- source gives meaning as "Strom, Bach"
	SingularNominative = "Rîþa",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- seems sensible in face of a lack of examples, specially since there are German settlement names which end in -bach
})

DefineLanguageWord("Saiþa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 221.
	Civilization = "germanic",
	Meaning = "Magic", -- source gives the German "Zauber"
	Gender = "Masculine",
	SingularNominative = "Saiþa",
	PrefixSingular = true,
	PrefixTypeName = {"unit-germanic-smithy"} -- seems sensible
})

DefineLanguageWord("Skaran", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 227.
	Civilization = "germanic",
	Meaning = "Plowshare", -- source gives "Schar, Pflugeisen" as the meaning
	SingularNominative = "Skaran" -- source also gives the alternative form "Skara"
})

DefineLanguageWord("Smiþjôn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 264.
	Civilization = "germanic",
	Meaning = "Smithy", -- source gives "Schmiede" as the meaning
	Gender = "Feminine",
	SingularNominative = "Smiþjôn",
	SuffixSingular = true,
	SuffixTypeName = {"unit-germanic-smithy"} -- seems sensible
})

DefineLanguageWord("Smiþu", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 263.
	Civilization = "germanic",
	Meaning = "Smith, Master Craftsman", -- source gives "Schmied, Werkmeister" as the meaning
	Gender = "Masculine",
	SingularNominative = "Smiþu" -- source also gives the alternative form "Smiþa"
})

DefineLanguageWord("Snaigva", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 260.
	Civilization = "germanic",
	Meaning = "Snow",
	SingularNominative = "Snaigva", -- source also gives the forms "Snaiva", "Snaigvi" and "Snaigi"
	Gender = "Masculine",
	Uncountable = true, -- seems likely to be uncountable
	PrefixSingular = true,
	PrefixTypeName = {"terrain-mountains"} -- seems sensible in face of a lack of examples, specially since in German there is the "Schneeberg"
})

DefineLanguageWord("Tandran", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 84.
	Civilization = "germanic",
	Meaning = "Fire, Burning Coal", -- source gives the German "Feuer, glühende Kohle" as the meaning
	Gender = "Masculine",
	SingularNominative = "Tandran",
	PrefixSingular = true,
	PrefixTypeName = {"unit-germanic-smithy"} -- seems sensible
})

DefineLanguageWord("Tîva", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 88.
	Civilization = "germanic",
	Meaning = "God", -- can also mean the name of a particular god
	SingularNominative = "Tîva",
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- seems sensible in face of a lack of examples
})

DefineLanguageWord("Þurpa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 100.
	Civilization = "germanic",
	Meaning = "Crowd, Village", -- source gives "Schar, Menschenhaufen, Dorf" as the meaning
	SingularNominative = "Þurpa",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- seems sensible in face of a lack of examples
})

DefineLanguageWord("Uzdaz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 7.
	Civilization = "germanic",
	Meaning = "Point, Place",
	SingularNominative = "Uzdaz",
	Gender = "Masculine"
})

DefineLanguageWord("Uzlaga", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Civilization = "germanic",
	Meaning = "Fate",
	SingularNominative = "Uzlaga"
})

DefineLanguageWord("Vîhsa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 206.
	Civilization = "germanic",
	Meaning = "Village", -- source gives "Flecken, Dorf" as the meaning
	SingularNominative = "Vîhsa",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- seems sensible in face of a lack of examples
})

DefineLanguageWord("Vikkan", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 206.
	Civilization = "germanic",
	Meaning = "Sorcerer",
	SingularNominative = "Vikkan",
	Gender = "Masculine"
})

DefineLanguageWord("Waida", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 4.
	Civilization = "germanic",
	Meaning = "Woad",
	SingularNominative = "Waida" -- source also gives alternative form "Waizda"
})

DefineLanguageWord("Walakuzjōn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Civilization = "germanic",
	Meaning = "Valkyrie",
	SingularNominative = "Walakuzjōn",
	Gender = "feminine"
})

DefineLanguageVerb("Laizijanã", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 4-5.
	Civilization = "germanic",
	Meaning = "Teach",
	Infinitive = "Laizijanã" -- causative verb
})

DefineLanguageVerb("Liznōn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Civilization = "germanic",
	Meaning = "Learn",
	Infinitive = "Liznōn"
})

DefineLanguageVerb("Nazjan", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Civilization = "germanic",
	Meaning = "Heal, Rescue, Sustain",
	Infinitive = "Nazjan"
})

DefineLanguageVerb("Twiznōn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	Civilization = "germanic",
	Meaning = "Twine",
	Infinitive = "Twiznōn"
})

DefineLanguageAdjective("Mēria", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	Civilization = "germanic",
	Meaning = "More",
	Comparative = "Maizan",
	Superlative = "Maista"
})

DefineLanguageAdjective("Twiznaz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 6.
	Civilization = "germanic",
	Meaning = "Twofold" -- source actually gives "two each" (je zwei) as the meaning in p. 6, but later there is an equivalent Proto-Germanic word for "threefold" which is noted as "je drei"; and besides, in p. 1 "Twofold" is given as a possible meaning
	 -- maybe is an adverb instead?
})

DefineLanguageAdjective("Þrizna", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	Civilization = "germanic",
	Meaning = "Threefold" -- source gives the meaning as "threefold, the three (je drei)"
	 -- maybe is an adverb instead?
})

DefineLanguageAdjective("Vîha", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 206.
	Civilization = "germanic",
	Meaning = "Holy",
	PrefixTypeName = {"settlement", "unit-germanic-smithy"}, -- seems sensible in face of a lack of examples
})

DefineLanguagePronoun("Miz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Civilization = "germanic",
	Meaning = "Me", -- dative
	Dative = "Miz"
})

DefineLanguagePronoun("Wīz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 5.
	Civilization = "germanic",
	Meaning = "We",
	Nominative = "Wīz"
})

DefineLanguageAdverb("Maiz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Civilization = "germanic",
	Meaning = "More"
})



-- Must re-check to see if actually correct

DefineLanguageWord("Godagaz", {
	Civilization = "germanic",
	Meaning = "Goody, Good One",
	SingularNominative = "Godagaz",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Hadu", {
	Civilization = "germanic",
	Meaning = "Battle",
	SingularNominative = "Hadu",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- example: "Hadulaikaz"
})

DefineLanguageWord("Hagu", {
	Civilization = "germanic",
	Meaning = "Small Property",
	SingularNominative = "Hadu",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- example: "Hagustaldaz"
})

DefineLanguageWord("Hlewa", {
	Civilization = "germanic",
	Meaning = "Glory",
	SingularNominative = "Hlewa",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- example: "Hlewagastiz"
})

DefineLanguageWord("Holta", {
	Civilization = "germanic",
	Meaning = "Wood",
	SingularNominative = "Holta",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- example: "Holtagastiz"
})

DefineLanguageWord("Laikaz", {
	Civilization = "germanic",
	Meaning = "Dancer",
	SingularNominative = "Laikaz",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- example: Hadulaikaz
})

DefineLanguageWord("Ridaz", {
	Civilization = "germanic",
	Meaning = "Rider",
	SingularNominative = "Ridaz",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- example: Woduridaz
})

DefineLanguageWord("Riks", {
	Civilization = "germanic",
	Meaning = "Ruler",
	SingularNominative = "Riks",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- example: Theudariks
})

DefineLanguageWord("Staldaz", {
	Civilization = "germanic",
	Meaning = "Owner",
	SingularNominative = "Staldaz",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- example: Hagustaldaz
})

DefineLanguageWord("Theuda", {
	Civilization = "germanic",
	Meaning = "People",
	SingularNominative = "Theuda",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- example: "Theudariks"
})

DefineLanguageWord("Wagigaz", {
	Civilization = "germanic",
	Meaning = "One Who Moves Along Impetuously",
	SingularNominative = "Wagigaz",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Wiwaz", {
	Civilization = "germanic",
	Meaning = "Darter",
	SingularNominative = "Wiwaz",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Wodu", {
	Civilization = "germanic",
	Meaning = "Fury",
	SingularNominative = "Wodu",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- example: Woduridaz
})

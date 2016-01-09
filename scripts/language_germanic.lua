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
	Civilization = "germanic",
	Meaning = "Ore", -- source gives "Erz" as the meaning
	SingularNominative = "Aiza", -- source also gives the alternative form "Skara"
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixSettlementName = true, -- seems sensible in face of a lack of examples
	PrefixTypeName = {
		"terrain-mountains", -- seems sensible in face of a lack of examples
		"terrain-hills" -- seems sensible in face of a lack of examples
	}
})

DefineLanguageNoun("Ansu", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 16.
	Civilization = "germanic",
	Meaning = "God",
	SingularNominative = "Ansu",
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixSettlementName = true -- seems sensible in face of a lack of examples (cognate of the prefix in Asgard, and Asgard is the settlement in "Asia" in which Odin's people used to be center until they migrated to Scandinavia in the Ynglinga saga's story)
})

DefineLanguageNoun("Austa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 12.
	Civilization = "germanic",
	Meaning = "East",
	SingularNominative = "Austa", -- source also gives the form "Austra"
	PrefixSingular = true,
	PrefixProvinceName = true, -- seems sensible in face of a lack of examples
	PrefixSettlementName = true -- seems sensible in face of a lack of examples
})

DefineLanguageNoun("Austrôn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 12.
	Civilization = "germanic",
	Meaning = "a Spring Goddess",
	SingularNominative = "Austrôn",
	Gender = "Feminine",
	PrefixSingular = true,
	PrefixSettlementName = true -- seems sensible in face of a lack of examples
})

DefineLanguageNoun("Berga", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137.
	Civilization = "germanic",
	Meaning = "Mountain, Hill",
	SingularNominative = "Berga",
	SuffixSingular = true,
	SuffixTypeName = {
		"terrain-mountains", -- seems rather sensible in face of a lack of examples and given the word's meaning
		"terrain-hills" -- seems rather sensible in face of a lack of examples and given the word's meaning
	}
})

DefineLanguageNoun("Brazda", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Civilization = "germanic",
	Meaning = "Edge",
	SingularNominative = "Brazda", -- source also gives the alternative form "Brezda"
	Gender = "Masculine"
})

DefineLanguageNoun("Bruzdaz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Civilization = "germanic",
	Meaning = "Blade, Edge",
	SingularNominative = "Bruzdaz",
	Gender = "Masculine"
})

DefineLanguageNoun("Burg", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137.
	Civilization = "germanic",
	Meaning = "Castle, City",
	SingularNominative = "Burg",
	Gender = "Feminine",
	SuffixSingular = true,
	SuffixProvinceName = true, -- seems sensible in face of a lack of examples
	SuffixSettlementName = true -- seems sensible in face of a lack of examples
})

DefineLanguageNoun("Bûra", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 141.
	Civilization = "germanic",
	Meaning = "Farmer, Peasant",
	SingularNominative = "Bûra",
	Gender = "Masculine"
})

DefineLanguageNoun("Dverga", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 113.
	Civilization = "germanic",
	Meaning = "Dwarf",
	SingularNominative = "Dverga",
	Gender = "Masculine"
})

DefineLanguageNoun("Erala", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 22.
	Civilization = "germanic",
	Meaning = "Man, Warrior",
	SingularNominative = "Erala",
	Gender = "Masculine"
})

DefineLanguageNoun("Garda", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 72.
	Civilization = "germanic",
	Meaning = "Enclosure, Court, Garden", -- source gives "Geheg, Hof, Garten" as the meaning
	SingularNominative = "Garda", -- source also gives the alternate forms "Gardi" and "Gardan"
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixProvinceName = true, -- seems sensible in face of a lack of examples, specially since is a cognate of the prefix in "Gardarike"
	SuffixSingular = true,
	SuffixSettlementName = true -- seems sensible in face of a lack of examples (cognate of the suffix in Asgard, and Asgard is the settlement in "Asia" in which Odin's people used to be center until they migrated to Scandinavia in the Ynglinga saga's story)
})

DefineLanguageNoun("Gastiz", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 74; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2007, 3.3.5.
	Civilization = "germanic",
	Meaning = "Guest",
	SingularNominative = "Gastiz",
	Gender = "Masculine",
	SuffixSingular = true,
	SuffixPersonalName = true -- examples: "Hlewagastiz", "Holtagastiz"
})

DefineLanguageNoun("Gavja", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 68.
	Civilization = "germanic",
	Meaning = "District", -- source gives "Gau" as the meaning
	SingularNominative = "Gavja",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixProvinceName = true -- seems sensible in face of a lack of examples
})

DefineLanguageNoun("Gazdaz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Civilization = "germanic",
	Meaning = "Rod, Prickle, Point",
	SingularNominative = "Gazdaz",
	Gender = "Masculine"
})

DefineLanguageNoun("Gôm", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 71.
	Civilization = "germanic",
	Meaning = "Winter",
	SingularNominative = "Gôm" -- source also gives the forms "Gam" and "Gim"
})

DefineLanguageNoun("Haima", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 52.
	Civilization = "germanic",
	Meaning = "Village, Home", -- source gives "Dorf, Heim, Heimat" as the meaning
	SingularNominative = "Haima",
	SingularAccusative = "Haima",
	Gender = "Masculine",
	SuffixSingular = true,
	SuffixProvinceName = true, -- seems sensible in face of a lack of examples (specially since in Old Norse there are many placenames ending in -heim)
	SuffixSettlementName = true -- seems sensible in face of a lack of examples
})

DefineLanguageNoun("Hazdaz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Civilization = "germanic",
	Meaning = "Head Hair",
	SingularNominative = "Hazdaz",
	Gender = "Masculine"
})

DefineLanguageNoun("Hezdōn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Civilization = "germanic",
	Meaning = "Flax Fiber",
	SingularNominative = "Hezdōn",
	Uncountable = true -- as a material, it is likely to be uncountable
})

DefineLanguageNoun("Hraznō", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Civilization = "germanic",
	Meaning = "Wave",
	SingularNominative = "Hraznō",
	Gender = "Feminine"
})

DefineLanguageNoun("Huzda", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Civilization = "germanic",
	Meaning = "Hidden Treasure",
	SingularNominative = "Huzda"
})

DefineLanguageNoun("Kizna", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 4, 7.
	Civilization = "germanic",
	Meaning = "Resinous Wood",
	SingularNominative = "Kizna",
	Gender = "Masculine"
})

DefineLanguageNoun("Landa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 184.
	Civilization = "germanic",
	Meaning = "Terra Firma, Land, Country", -- source gives the German words "terra firma, Land"
	SingularNominative = "Landa",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixProvinceName = true -- seems sensible in face of a lack of examples
})

DefineLanguageNoun("Lauda", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 181.
	Civilization = "germanic",
	Meaning = "Metal, Lead",
	SingularNominative = "Lauda",
	Gender = "Neuter",
	Uncountable = true, -- as a material, it is likely to be uncountable
	PrefixSingular = true,
	PrefixSettlementName = true, -- seems sensible in face of a lack of examples
	PrefixTypeName = {
		"terrain-mountains", -- seems sensible in face of a lack of examples
		"terrain-hills" -- seems sensible in face of a lack of examples
	}
})

DefineLanguageNoun("Maitila", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 164.
	Civilization = "germanic",
	Meaning = "Chisel", -- source gives meaning as "Meißel"
	SingularNominative = "Maitila",
	Gender = "Masculine"
})

DefineLanguageNoun("Mark", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 160.
	Civilization = "germanic",
	Meaning = "March, Border, Borderland",
	SingularNominative = "Mark", -- source also gives the form "Markô"
	Gender = "Feminine",
	SuffixSingular = true,
	SuffixProvinceName = true -- seems sensible in face of a lack of examples
})

DefineLanguageNoun("Mazgaz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Civilization = "germanic",
	Meaning = "Marrow",
	SingularNominative = "Mazgaz",
	Gender = "Masculine"
})

DefineLanguageNoun("Mizdō", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 7.
	Civilization = "germanic",
	Meaning = "Reward, Payment, Fee",
	SingularNominative = "Mizdō",
	Gender = "Feminine"
})

DefineLanguageNoun("Razdō", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Civilization = "germanic",
	Meaning = "Voice, Sound",
	SingularNominative = "Razdō",
	Gender = "Feminine"
})

DefineLanguageNoun("Razdō", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Civilization = "germanic",
	Meaning = "Food, Meal",
	SingularNominative = "Razdō",
	Gender = "Feminine"
})

DefineLanguageNoun("Razna", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Civilization = "germanic",
	Meaning = "House",
	SingularNominative = "Razna",
	Gender = "Neuter"
})

DefineLanguageNoun("Reupôn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 169.
	Civilization = "germanic",
	Meaning = "Ptarmigan", -- source gives meaning as "Schneehuhn (tetrao lagopus)"
	SingularNominative = "Reupôn" -- source also gives the forms "Gam" and "Gim"
})

DefineLanguageNoun("Ristila", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 176.
	Civilization = "germanic",
	Meaning = "Plowshare", -- source gives meaning as "Sech, Pflugeisen"
	SingularNominative = "Ristila",
	Gender = "Masculine"
})

DefineLanguageNoun("Rîkia", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 174.
	Civilization = "germanic",
	Meaning = "Power, Dominion, Realm", -- source gives meaning as "Macht, Herrschaft, Reich"
	SingularNominative = "Rîkia",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixProvinceName = true -- seems sensible in face of a lack of examples, specially since it is the etymological origin of the suffix in "Gardarike"
})

DefineLanguageNoun("Rîþa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 174.
	Civilization = "germanic",
	Meaning = "Current, Stream", -- source gives meaning as "Strom, Bach"
	SingularNominative = "Rîþa",
	SuffixSingular = true,
	SuffixSettlementName = true -- seems sensible in face of a lack of examples, specially since there are German settlement names which end in -bach
})

DefineLanguageNoun("Skaran", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 227.
	Civilization = "germanic",
	Meaning = "Plowshare", -- source gives "Schar, Pflugeisen" as the meaning
	SingularNominative = "Skaran" -- source also gives the alternative form "Skara"
})

DefineLanguageNoun("Snaigva", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 260.
	Civilization = "germanic",
	Meaning = "Snow",
	SingularNominative = "Snaigva", -- source also gives the forms "Snaiva", "Snaigvi" and "Snaigi"
	Gender = "Masculine",
	Uncountable = true, -- seems likely to be uncountable
	PrefixSingular = true,
	PrefixTypeName = {"terrain-mountains"} -- seems sensible in face of a lack of examples, specially since in German there is the "Schneeberg"
})

DefineLanguageNoun("Tîva", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 88.
	Civilization = "germanic",
	Meaning = "God", -- can also mean the name of a particular god
	SingularNominative = "Tîva",
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixSettlementName = true -- seems sensible in face of a lack of examples
})

DefineLanguageNoun("Þurpa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 100.
	Civilization = "germanic",
	Meaning = "Crowd, Village", -- source gives "Schar, Menschenhaufen, Dorf" as the meaning
	SingularNominative = "Þurpa",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixSettlementName = true -- seems sensible in face of a lack of examples
})

DefineLanguageNoun("Uzdaz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 7.
	Civilization = "germanic",
	Meaning = "Point, Place",
	SingularNominative = "Uzdaz",
	Gender = "Masculine"
})

DefineLanguageNoun("Uzlaga", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Civilization = "germanic",
	Meaning = "Fate",
	SingularNominative = "Uzlaga"
})

DefineLanguageNoun("Vîhsa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 206.
	Civilization = "germanic",
	Meaning = "Village", -- source gives "Flecken, Dorf" as the meaning
	SingularNominative = "Vîhsa",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixSettlementName = true -- seems sensible in face of a lack of examples
})

DefineLanguageNoun("Vikkan", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 206.
	Civilization = "germanic",
	Meaning = "Sorcerer",
	SingularNominative = "Vikkan",
	Gender = "Masculine"
})

DefineLanguageNoun("Waida", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 4.
	Civilization = "germanic",
	Meaning = "Woad",
	SingularNominative = "Waida" -- source also gives alternative form "Waizda"
})

DefineLanguageNoun("Walakuzjōn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
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
	PrefixSettlementName = true -- seems sensible in face of a lack of examples
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

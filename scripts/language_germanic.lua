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

DefineCivilizationLanguage("germanic", -- Proto-Germanic
	"nouns", {
		"Aiza", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 11.
			"meaning", "Ore", -- source gives "Erz" as the meaning
			"singular-nominative", "Aiza", -- source also gives the alternative form "Skara"
			"gender", "Neuter",
			"prefix-singular", true,
			"prefix-settlement-name", true, -- seems sensible in face of a lack of examples
			"prefix-terrain-name", "Mountains", true, -- seems sensible in face of a lack of examples
			"prefix-terrain-name", "Hills", true -- seems sensible in face of a lack of examples
		},
		"Ansu", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 16.
			"meaning", "God",
			"singular-nominative", "Ansu",
			"gender", "Masculine",
			"prefix-singular", true,
			"prefix-settlement-name", true -- seems sensible in face of a lack of examples (cognate of the prefix in Asgard, and Asgard is the settlement in "Asia" in which Odin's people used to be center until they migrated to Scandinavia in the Ynglinga saga's story)
		},
		"Austa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 12.
			"meaning", "East",
			"singular-nominative", "Austa", -- source also gives the form "Austra"
			"prefix-singular", true,
			"prefix-province-name", true, -- seems sensible in face of a lack of examples
			"prefix-settlement-name", true -- seems sensible in face of a lack of examples
		},
		"Austrôn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 12.
			"meaning", "a Spring Goddess",
			"singular-nominative", "Austrôn",
			"gender", "Feminine",
			"prefix-singular", true,
			"prefix-settlement-name", true -- seems sensible in face of a lack of examples
		},
		"Berga", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137.
			"meaning", "Mountain, Hill",
			"singular-nominative", "Berga",
			"suffix-singular", true,
			"suffix-terrain-name", "Mountains", true, -- seems rather sensible in face of a lack of examples and given the word's meaning
			"suffix-terrain-name", "Hills", true -- seems rather sensible in face of a lack of examples and given the word's meaning
		},
		"Brazda", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
			"meaning", "Edge",
			"singular-nominative", "Brazda", -- source also gives the alternative form "Brezda"
			"gender", "Masculine"
		},
		"Bruzdaz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
			"meaning", "Blade, Edge",
			"singular-nominative", "Bruzdaz",
			"gender", "Masculine"
		},
		"Burg", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137.
			"meaning", "Castle, City",
			"singular-nominative", "Burg",
			"gender", "Feminine",
			"suffix-singular", true,
			"suffix-province-name", true, -- seems sensible in face of a lack of examples
			"suffix-settlement-name", true -- seems sensible in face of a lack of examples
		},
		"Bûra", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 141.
			"meaning", "Farmer, Peasant",
			"singular-nominative", "Bûra",
			"gender", "Masculine"
		},
		"Dverga", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 113.
			"meaning", "Dwarf",
			"singular-nominative", "Dverga",
			"gender", "Masculine"
		},
		"Erala", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 22.
			"meaning", "Man, Warrior",
			"singular-nominative", "Erala",
			"gender", "Masculine"
		},
		"Garda", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 72.
			"meaning", "Enclosure, Court, Garden", -- source gives "Geheg, Hof, Garten" as the meaning
			"singular-nominative", "Garda", -- source also gives the alternate forms "Gardi" and "Gardan"
			"gender", "Masculine",
			"prefix-singular", true,
			"prefix-province-name", true, -- seems sensible in face of a lack of examples, specially since is a cognate of the prefix in "Gardarike"
			"suffix-singular", true,
			"suffix-settlement-name", true -- seems sensible in face of a lack of examples (cognate of the suffix in Asgard, and Asgard is the settlement in "Asia" in which Odin's people used to be center until they migrated to Scandinavia in the Ynglinga saga's story)
		},
		"Gastiz", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 74; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2007, 3.3.5.
			"meaning", "Guest",
			"singular-nominative", "Gastiz",
			"gender", "Masculine",
			"suffix-singular", true,
			"suffix-personal-name", true -- examples: "Hlewagastiz", "Holtagastiz"
		},
		"Gavja", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 68.
			"meaning", "District", -- source gives "Gau" as the meaning
			"singular-nominative", "Gavja",
			"gender", "Neuter",
			"suffix-singular", true,
			"suffix-province-name", true -- seems sensible in face of a lack of examples
		},
		"Gazdaz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
			"meaning", "Rod, Prickle, Point",
			"singular-nominative", "Gazdaz",
			"gender", "Masculine"
		},
		"Gôm", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 71.
			"meaning", "Winter",
			"singular-nominative", "Gôm" -- source also gives the forms "Gam" and "Gim"
		},
		"Haima", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 52.
			"meaning", "Village, Home", -- source gives "Dorf, Heim, Heimat" as the meaning
			"singular-nominative", "Haima",
			"singular-accusative", "Haima",
			"gender", "Masculine",
			"suffix-singular", true,
			"suffix-province-name", true, -- seems sensible in face of a lack of examples (specially since in Old Norse there are many placenames ending in -heim)
			"suffix-settlement-name", true -- seems sensible in face of a lack of examples
		},
		"Hazdaz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
			"meaning", "Head Hair",
			"singular-nominative", "Hazdaz",
			"gender", "Masculine"
		},
		"Hezdōn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
			"meaning", "Flax Fiber",
			"singular-nominative", "Hezdōn",
			"uncountable", true -- as a material, it is likely to be uncountable
		},
		"Hraznō", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
			"meaning", "Wave",
			"singular-nominative", "Hraznō",
			"gender", "Feminine"
		},
		"Huzda", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
			"meaning", "Hidden Treasure",
			"singular-nominative", "Huzda"
		},
		"Kizna", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 4, 7.
			"meaning", "Resinous Wood",
			"singular-nominative", "Kizna",
			"gender", "Masculine"
		},
		"Landa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 184.
			"meaning", "Terra Firma, Land, Country", -- source gives the German words "terra firma, Land"
			"singular-nominative", "Landa",
			"gender", "Neuter",
			"suffix-singular", true,
			"suffix-province-name", true -- seems sensible in face of a lack of examples
		},
		"Lauda", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 181.
			"meaning", "Metal, Lead",
			"singular-nominative", "Lauda",
			"gender", "Neuter",
			"uncountable", true, -- as a material, it is likely to be uncountable
			"prefix-singular", true,
			"prefix-settlement-name", true, -- seems sensible in face of a lack of examples
			"prefix-terrain-name", "Mountains", true, -- seems sensible in face of a lack of examples
			"prefix-terrain-name", "Hills", true -- seems sensible in face of a lack of examples
		},
		"Maitila", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 164.
			"meaning", "Chisel", -- source gives meaning as "Meißel"
			"singular-nominative", "Maitila",
			"gender", "Masculine"
		},
		"Mark", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 160.
			"meaning", "March, Border, Borderland",
			"singular-nominative", "Mark", -- source also gives the form "Markô"
			"gender", "Feminine",
			"suffix-singular", true,
			"suffix-province-name", true -- seems sensible in face of a lack of examples
		},
		"Mazgaz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
			"meaning", "Marrow",
			"singular-nominative", "Mazgaz",
			"gender", "Masculine"
		},
		"Mizdō", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 7.
			"meaning", "Reward, Payment, Fee",
			"singular-nominative", "Mizdō",
			"gender", "Feminine"
		},
		"Razdō", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
			"meaning", "Voice, Sound",
			"singular-nominative", "Razdō",
			"gender", "Feminine"
		},
		"Razdō", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
			"meaning", "Food, Meal",
			"singular-nominative", "Razdō",
			"gender", "Feminine"
		},
		"Razna", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
			"meaning", "House",
			"singular-nominative", "Razna",
			"gender", "Neuter"
		},
		"Reupôn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 169.
			"meaning", "Ptarmigan", -- source gives meaning as "Schneehuhn (tetrao lagopus)"
			"singular-nominative", "Reupôn" -- source also gives the forms "Gam" and "Gim"
		},
		"Ristila", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 176.
			"meaning", "Plowshare", -- source gives meaning as "Sech, Pflugeisen"
			"singular-nominative", "Ristila",
			"gender", "Masculine"
		},
		"Rîkia", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 174.
			"meaning", "Power, Dominion, Realm", -- source gives meaning as "Macht, Herrschaft, Reich"
			"singular-nominative", "Rîkia",
			"gender", "Neuter",
			"suffix-singular", true,
			"suffix-province-name", true -- seems sensible in face of a lack of examples, specially since it is the etymological origin of the suffix in "Gardarike"
		},
		"Rîþa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 174.
			"meaning", "Current, Stream", -- source gives meaning as "Strom, Bach"
			"singular-nominative", "Rîþa",
			"suffix-singular", true,
			"suffix-settlement-name", true -- seems sensible in face of a lack of examples, specially since there are German settlement names which end in -bach
		},
		"Skaran", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 227.
			"meaning", "Plowshare", -- source gives "Schar, Pflugeisen" as the meaning
			"singular-nominative", "Skaran" -- source also gives the alternative form "Skara"
		},
		"Snaigva", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 260.
			"meaning", "Snow",
			"singular-nominative", "Snaigva", -- source also gives the forms "Snaiva", "Snaigvi" and "Snaigi"
			"gender", "Masculine",
			"uncountable", true, -- seems likely to be uncountable
			"prefix-singular", true,
			"prefix-terrain-name", "Mountains", true -- seems sensible in face of a lack of examples, specially since in German there is the "Schneeberg"
		},
		"Tîva", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 88.
			"meaning", "God", -- can also mean the name of a particular god
			"singular-nominative", "Tîva",
			"gender", "Masculine",
			"prefix-singular", true,
			"prefix-settlement-name", true -- seems sensible in face of a lack of examples
		},
		"Þurpa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 100.
			"meaning", "Crowd, Village", -- source gives "Schar, Menschenhaufen, Dorf" as the meaning
			"singular-nominative", "Þurpa",
			"gender", "Neuter",
			"suffix-singular", true,
			"suffix-settlement-name", true -- seems sensible in face of a lack of examples
		},
		"Uzdaz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 7.
			"meaning", "Point, Place",
			"singular-nominative", "Uzdaz",
			"gender", "Masculine"
		},
		"Uzlaga", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
			"meaning", "Fate",
			"singular-nominative", "Uzlaga"
		},
		"Vîhsa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 206.
			"meaning", "Village", -- source gives "Flecken, Dorf" as the meaning
			"singular-nominative", "Vîhsa",
			"gender", "Neuter",
			"suffix-singular", true,
			"suffix-settlement-name", true -- seems sensible in face of a lack of examples
		},
		"Vikkan", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 206.
			"meaning", "Sorcerer",
			"singular-nominative", "Vikkan",
			"gender", "Masculine"
		},
		"Waida", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 4.
			"meaning", "Woad",
			"singular-nominative", "Waida" -- source also gives alternative form "Waizda"
		},
		"Walakuzjōn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
			"meaning", "Valkyrie",
			"singular-nominative", "Walakuzjōn",
			"gender", "feminine"
		}
	},
	"verbs", {
		"Laizijanã", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 4-5.
			"meaning", "Teach",
			"infinitive", "Laizijanã" -- causative verb
		},
		"Liznōn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
			"meaning", "Learn",
			"infinitive", "Liznōn"
		},
		"Nazjan", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
			"meaning", "Heal, Rescue, Sustain",
			"infinitive", "Nazjan"
		},
		"Twiznōn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
			"meaning", "Twine",
			"infinitive", "Twiznōn"
		}
	},
	"adjectives", {
		"Mēria", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
			"meaning", "More",
			"comparative", "Maizan",
			"superlative", "Maista"
		},
		"Twiznaz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 6.
			"meaning", "Twofold" -- source actually gives "two each" (je zwei) as the meaning in p. 6, but later there is an equivalent Proto-Germanic word for "threefold" which is noted as "je drei"; and besides, in p. 1 "Twofold" is given as a possible meaning
			 -- maybe is an adverb instead?
		},
		"Þrizna", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
			"meaning", "Threefold" -- source gives the meaning as "threefold, the three (je drei)"
			 -- maybe is an adverb instead?
		},
		"Vîha", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 206.
			"meaning", "Holy",
			"prefix-settlement-name", true -- seems sensible in face of a lack of examples
		}
	},
	"pronouns", {
		"Miz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
			"meaning", "Me", -- dative
			"dative", "Miz"
		},
		"Wīz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 5.
			"meaning", "We",
			"nominative", "Wīz"
		}
	},
	"adverbs", {
		"Maiz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
			"meaning", "More"
		}
	}
)

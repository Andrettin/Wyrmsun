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
--      (c) Copyright 2016 by Andrettin
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

DefineLanguageWord("Al", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 11.
	Language = "old-icelandic",
	Type = "affix", -- prefix
	Meanings = {"Thoroughly", "Quite", "Perfectly", "Completely"}
})

DefineLanguageWord("Ar", { -- appears in the horse name "Arvak"; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 99.
	Language = "old-icelandic",
	Type = "adjective",
	Meanings = {"Early"} -- presumably, given that "Arvak" means "Early Waker"
})

DefineLanguageWord("Bak", { -- appears in the name of a wyrm in Norse mythology
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Back"} -- Grabak means "Gray-Back"
})

DefineLanguageWord("Blær", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 71.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Gentle Breeze", "Puff of Air"},
	Gender = "masculine"
})

DefineLanguageWord("Bord", { -- Source: http://www.cnrtl.fr/definition/B%F6rde
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Board", "Table"}, -- source gives the French "planche, table" as the meaning
	DerivesFrom = {"old-norse", "noun", "Bord"},
	Replaces = {"old-norse", "noun", "Bord"}
})

DefineLanguageWord("Brímir", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 80.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Sword"}, -- poetic (does the author mean that this is the specific name of a sword instead?)
	Gender = "masculine"
})

DefineLanguageWord("Drósir", { -- this is the plural; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Women"},
	NumberCaseInflections = {
		"plural", "nominative", "Drósir"
	}
})

DefineLanguageWord("Dýrt", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-icelandic",
	Type = "adjective",
	Meanings = {"Dear", "Expensive"}
})

DefineLanguageWord("Eyra", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Ear"}
})

DefineLanguageWord("Fal", { -- appears in the horse name "Falhofnír"; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 96-97; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 139.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Barrel", "Hollow"} -- presumably, given that "Falhofnír" means "barrel-hoof" or "hollow-hoof"
})

DefineLanguageWord("Fax", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 145.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Mane"},
	Gender = "neuter"
})

DefineLanguageWord("Faxi", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, pp. 145, 547.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Mane"}, -- seems likely, since that's the meaning of "fax", and since "Skinfaxi" is given by the source as meaning "Sheen-Mane"
	Gender = "masculine"
})

DefineLanguageWord("Feti", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 153.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Stepper", "Pacer"},
	Gender = "masculine"
})

DefineLanguageWord("Gisl", { -- a horse name; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 96.
	Language = "old-icelandic",
	Type = "adjective",
	Meanings = {"Gleaming"}
})

DefineLanguageWord("Glath", { -- a horse name; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 96.
	Language = "old-icelandic",
	Type = "adjective",
	Meanings = {"Joyous"}
})

DefineLanguageWord("Glaumr", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 203.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Merry Noise"}
})

DefineLanguageWord("Gler", { -- a horse name; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 96.
	Language = "old-icelandic",
	Type = "adjective",
	Meanings = {"Shining"}
})

DefineLanguageWord("Gnísta", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, pp. 206-207.
	Language = "old-icelandic",
	Type = "verb",
	Meanings = {"Gnash the Teeth", "Snarl"},
	DerivesFrom = {"old-norse", "verb", "Gnîsta"}, -- presumably
	Replaces = {"old-norse", "verb", "Gnîsta"} -- presumably
})

DefineLanguageWord("Gnjóstr", { -- appears in the name of a male goat; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, pp. 207, 625.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Gnasher"}, -- presumably, since Tanngnjóstr means "Teeth-gnasher"
	DerivesFrom = {"old-norse", "verb", "Gnîsta"}, -- presumably, since "gnísta" presumably does
	Gender = "masculine"
})

DefineLanguageWord("Goin", { -- name of a wyrm in Norse mythology
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {}
})

DefineLanguageWord("Gra", { -- appears in the name of a wyrm in Norse mythology
	Language = "old-icelandic",
	Type = "adjective",
	Meanings = {"Gray"} -- Grabak means "Gray-Back"
})

DefineLanguageWord("Graf", { -- appears in the name of a wyrm in Norse mythology
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Gnawer"}
})

DefineLanguageWord("Gráni", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 212.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Gray Horse"},
	Gender = "masculine"
})

DefineLanguageWord("Grisnir", { -- appears in the name of a male goat; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 625.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Gat"} -- presumably, since Tanngrisni means "Gat-Tooth" (according to another source which wasn't noted down)
})

DefineLanguageWord("Gull", { -- earlier spelt as "goll"; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 220.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Gold"},
	DerivesFrom = {"old-norse", "noun", "Gull"}, -- presumably
	Replaces = {"old-norse", "noun", "Gull"},
	Gender = "neuter"
})

DefineLanguageWord("Gyllir", { -- a horse name; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 96.
	Language = "old-icelandic",
	Type = "adjective",
	Meanings = {"Golden"}
})

DefineLanguageWord("Heidrun", { -- name of a female goat
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {}
})

DefineLanguageWord("Hófnir", { -- appears in the horse name "Falhofnír"; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 96-97; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 139.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Hoof"} -- presumably, given that "Falhofnír" means "barrel-hoof" or "hollow-hoof"
})

DefineLanguageWord("Hogg", { -- appears in the name of a wyrm in Norse mythology
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Tearer"} -- Nidhogg means "Corpse Tearer"
})

DefineLanguageWord("Jormungand", { -- name of a wyrm in Norse mythology
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {}
})

DefineLanguageWord("Ker", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Container"}
})

DefineLanguageWord("Léttr", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 386.
	Language = "old-icelandic",
	Type = "adjective",
	Meanings = {"Light"},
	ComparisonDegreeCaseInflections = {
		"positive", "no-case", "Létt", -- presumably (assuming the "-r" ending here is the nominative ending)
	}
})

DefineLanguageWord("Lín", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Linen"}
})

DefineLanguageWord("Meiri", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 3.
	Language = "old-icelandic",
	Type = "adjective", -- perhaps a "determiner" class of words should be added?
	Meanings = {"More"},
	DerivesFrom = {"old-norse", "adjective", "Meiri"}, -- presumably
	Replaces = {"old-norse", "adjective", "Meiri"}
})

DefineLanguageWord("Melnir", { -- Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 306; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 423.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Bit-Bearer"}, -- as given by Bellows
	Gender = "masculine" -- as given by Cleasby
})

DefineLanguageWord("Moin", { -- name of a wyrm in Norse mythology
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {}
})

DefineLanguageWord("Mylnir", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 306.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Biter"}
})

DefineLanguageWord("Nid", { -- appears in the name of a wyrm in Norse mythology
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Corpse"} -- Nidhogg means "Corpse Tearer"
})

DefineLanguageWord("Ofnir", { -- name of a wyrm in Norse mythology
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Bewilderer"}
})

DefineLanguageWord("Rati", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 483.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Traveller", "Demoniac", "Raver", "Madman"},
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Rata" -- presumably, due to the writing in compounds using this word, like "ratalegr" and "rata-skapr"
	}
})

DefineLanguageWord("Reyrr", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Tube"}
})

DefineLanguageWord("Sár", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 3.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Wound"}
})

DefineLanguageWord("Silfr", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 528.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Silver"},
	DerivesFrom = {"old-norse", "noun", "Silfr"}, -- presumably
	Replaces = {"old-norse", "noun", "Silfr"},
	Gender = "neuter"
})

DefineLanguageWord("Silfrin", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 528.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Silver"},
	DerivesFrom = {"old-norse", "noun", "Silfr"}, -- presumably
	Gender = "neuter"
})

DefineLanguageWord("Silfr", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 528.
	Language = "old-icelandic",
	Type = "adjective",
	Meanings = {"Silver"},
	DerivesFrom = {"old-norse", "noun", "Silfr"} -- presumably
})

DefineLanguageWord("Sinir", { -- name of a horse; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, pp. 529; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 96.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Sinewy"}, -- as given by Bellows
	Gender = "masculine"
})

DefineLanguageWord("Skeið", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, pp. 542-543.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Race", "Course"}, -- "race" in the sense of a running course
	Gender = "neuter"
})

DefineLanguageWord("Skin", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 547.
	Language = "old-icelandic",
	Type = "adjective",
	Meanings = {"Sheen", "Shining"},
	Gender = "neuter" -- source gives the gender as neuter; this is (apparently, given the meanings) an adjective, though
})

DefineLanguageWord("Sleipnir", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 567.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Slipper"},
	Gender = "masculine"
})

DefineLanguageWord("Slöngvir", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 570.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"One Who Slings Away"}
})

DefineLanguageWord("Spor", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 583.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Track", "Footprint"},
	Gender = "neuter"
})

DefineLanguageWord("Spunno", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-icelandic",
	Type = "verb",
	Meanings = {"Spun"},
	NumberPersonTenseMoodInflections = {
		"plural", "third-person", "past", "indicative", "Spunno"
	}
})

DefineLanguageWord("Suðrœnar", { -- is this the plural inflection of the adjective? Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-icelandic",
	Type = "adjective",
	Meanings = {"Southern"}
})

DefineLanguageWord("Svafnir", { -- name of a wyrm in Norse mythology
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Sleep-Bringer"}
})

DefineLanguageWord("Svathilfari", { -- name of a horse; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 159, 196.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {}
})

DefineLanguageWord("Sveggjuth", { -- name of a horse; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 304.
	Language = "old-icelandic",
	Type = "adjective",
	Meanings = {"Lithe"}
})

DefineLanguageWord("Sviðr", { -- appears in the horse name "Alsviðr"; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 771; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 99.
	Language = "old-icelandic",
	Type = "adjective",
	Meanings = {"Swift"} -- presumably, given that "Alsviðr" means "All-Swift"
})

DefineLanguageWord("Svipr", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, pp. 611-612.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Swoop", "Sudden Loss", "Glimpse of a Person", "Fleeting Appearance", "Evanescent Appearance", "Look", "Countenance"},
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "no-case", "Svip", -- presumably (assuming the "-r" ending here is the nominative ending)
		"plural", "nominative", "Svipir"
	}
})

DefineLanguageWord("Tann", { -- appears in the names of male goats; older form of "tönn"; source also gives the alternative form "tannr"; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, pp. 625, 648.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Tooth", "Tusk"}, -- presumably, since that is the meaning of "tönn", and "tann" has the meaning of "tooth" in compounds
	Gender = "masculine",
	DerivesFrom = {"old-norse", "noun", "Tǫnn"} -- presumably
})

DefineLanguageWord("Tönn", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 648.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Tooth", "Tusk"},
	Gender = "feminine",
	DerivesFrom = {"old-norse", "noun", "Tǫnn"}, -- presumably
	Replaces = {"old-norse", "noun", "Tǫnn"} -- presumably
})

DefineLanguageWord("Toppr", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 636.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Tuft", "Lock of Hair"},
	Gender = "masculine"
})

DefineLanguageWord("Toskr", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 638.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Tusk", "Tooth"},
	Gender = "masculine",
	DerivesFrom = {"proto-germanic", "noun", "Tunþska"} -- presumably, since Fick lists that as the word from which words like "tusk" (English) come from, and Cleasby lists such words as cognates of "toskr"
})

DefineLanguageWord("Tuǽr", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
	Language = "old-icelandic",
	Type = "numeral",
	Number = 2
})

DefineLanguageWord("Úð", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 668.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Mind"},
	Gender = "feminine"
})

DefineLanguageWord("Vakr", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 674.
	Language = "old-icelandic",
	Type = "adjective",
	Meanings = {"Wakeful", "Watchful", "Alert"}
})

DefineLanguageWord("Víg", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 715.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Fight", "Battle"},
	Gender = "neuter"
})

DefineLanguageWord("Vingskornir", { -- name of a horse; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 384.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {}
})

DefineLanguageWord("Vitnir", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 713.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Wolf"}, -- poetic
	Gender = "masculine"
})

DefineLanguageWord("Volluth", { -- appears in the name of a wyrm in Norse mythology
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Field"}
})

-- Compounds

DefineLanguageWord("Vallarfax", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 145.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Field's Mane", "Wood"}, -- poetic
	CompoundElements = {
--		"prefix", -- ?
		"suffix", "old-icelandic", "noun", "Fax"
	}
})

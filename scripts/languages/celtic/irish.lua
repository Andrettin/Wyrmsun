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
--      (c) Copyright 2016-2017 by Andrettin
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

DefineLanguageWord("Áer", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 119.
	Language = "irish",
	Type = "noun",
	Meanings = {"Verbal Invective"} -- source gives the German "verbale Schmähung" as the meaning
})

DefineLanguageWord("Ammait", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 17.
	Language = "irish",
	Type = "noun",
	Meanings = {"Wet Nurse", "Foster Mother"} -- source gives the German "Amme" as the meaning
})

DefineLanguageWord("Arget", { -- Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 217.
	Language = "irish",
	Type = "noun",
	Meanings = {"Silver"}
})

DefineLanguageWord("Árus", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "irish",
	Type = "noun",
	Meanings = {"Dwelling"}
})

DefineLanguageWord("Atgleinn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 81.
	Language = "irish",
	Type = "verb",
	Meanings = {"Show"} -- source gives the Latin (?) "demonstrat" as the meaning
})

DefineLanguageWord("Blá", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 147.
	Language = "irish",
	Type = "adjective",
	Meanings = {"Yellow"} -- source gives the German "gelb" as the meaning
})

DefineLanguageWord("Brennim", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "irish",
	Type = "verb", -- correct?
	Meanings = {}, -- source gives the German (?) "sprudle" as the meaning
	DerivesFrom = {"proto-indo-european", "verb", "Bhrenvō"}
})

DefineLanguageWord("Bri", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137.
	Language = "irish",
	Type = "noun",
	Meanings = {"Mountain", "Hill"}, -- source gives "Berg" as the meaning
	NumberCaseInflections = {
		"singular", "genitive", "Brig"
	}
})

DefineLanguageWord("Brot", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "irish",
	Type = "noun",
	Meanings = {"Prickle"},
	Gender = "masculine"
})

DefineLanguageWord("Búal", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 133.
	Language = "irish",
	Type = "noun",
	Meanings = {"Water"}, -- source gives the German "Wasser" as the meaning
	DerivesFrom = {"proto-indo-european", "verb", "Bheg"}
})

DefineLanguageWord("Cairde", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 119.
	Language = "irish",
	Type = "noun",
	Meanings = {"Peace Treaty", "Peace"}, -- source gives the German "ein Friedensvertrag zwischen zwei Königreichen oder auch der dadurch (wieder-)hergestellte Friede" as the meaning
	DerivesFrom = {"proto-celtic", "noun", "Karantion"}
})

DefineLanguageWord("Cath", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and Soldier", 1919, p. 6.
	Language = "irish",
	Type = "noun",
	Meanings = {"Battle"}
})

DefineLanguageWord("Ceallach", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 50.
	Language = "irish",
	Type = "noun",
	Meanings = {"War"}, -- source gives the German "Krieg" as the meaning
	DerivesFrom = {"proto-indo-european", "noun", "Keld"}
})

DefineLanguageWord("Cíall", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
	Language = "irish",
	Type = "noun",
	Meanings = {"Wit"} -- source gives the German "Verstand" as the meaning
})

DefineLanguageWord("Cnú", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 58.
	Language = "irish",
	Type = "noun",
	Meanings = {"Nut"}, -- source gives the German "Nuß"
	DerivesFrom = {"proto-indo-european", "noun", "Knud"},
	Gender = "feminine"
})

DefineLanguageWord("Corann", { -- source also gives the alternative form "coróin"; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 119.
	Language = "irish",
	Type = "noun",
	Meanings = {"Crown"} -- source gives the German "Krone" as the meaning
})

DefineLanguageWord("Dún", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 89.
	Language = "irish",
	Type = "noun",
	Meanings = {"Firm City", "Firm Town"}, -- source gives the German "feßte Stadt" as the meaning
	NumberCaseInflections = {
		"singular", "genitive", "Dúne"
	}
})

DefineLanguageWord("Enech", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 119.
	Language = "irish",
	Type = "noun",
	Meanings = {"Honor"} -- source gives the German "Ehre" as the meaning
})

DefineLanguageWord("Fescor", { -- source also gives the alternative form "Ἑστέρα"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 204.
	Language = "irish",
	Type = "noun",
	Meanings = {"Evening"}, -- source gives the German "Abend" as the meaning
	DerivesFrom = {"proto-indo-european", "adverb", "Ve"}
})

DefineLanguageWord("Gas", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "irish",
	Type = "noun",
	Meanings = {"Sapling", "Sprout", "Shoot"},
	Gender = "feminine"
})

DefineLanguageWord("Gat", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "irish",
	Type = "noun",
	Meanings = {"Rod"}
})

DefineLanguageWord("Gius", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 7.
	Language = "irish",
	Type = "noun",
	Meanings = {"Fir", "Spruce"}
})

DefineLanguageWord("Glése", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 81.
	Language = "irish",
	Type = "noun",
	Meanings = {"Shine"} -- source gives the German "Glanz" as the meaning
})

DefineLanguageWord("Íarn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 24.
	Language = "irish",
	Type = "noun",
	Meanings = {"Iron"} -- source gives the German "Eisen" as the meaning
})

DefineLanguageWord("Kass", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "irish",
	Type = "noun",
	Meanings = {"Curl", "Tress"}
})

DefineLanguageWord("Land", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 184.
	Language = "irish",
	Type = "noun",
	Meanings = {"Free Space"}, -- source gives the German "freier Platz"
	Gender = "feminine"
})

DefineLanguageWord("Lóid", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 181.
	Language = "irish",
	Type = "noun",
	Meanings = {"Song"}, -- source gives the German "Lied" as the meaning
	DerivesFrom = {"proto-indo-european", "noun", "Lēut"}
})

DefineLanguageWord("Luad", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 181.
	Language = "irish",
	Type = "noun",
	Meanings = {"Talk", "Conversation"}, -- source gives the German "Gespräch, Rede" as the meaning
	DerivesFrom = {"proto-indo-european", "noun", "Lēut"}
})

DefineLanguageWord("Máo", { -- this is the comparative, what is the normal version of the word? Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	Language = "irish",
	Type = "adjective",
	Meanings = {"More"}, -- "Máo" actually means "größer"
	ComparisonDegreeCaseInflections = {
		"comparative", "Máo" -- source also gives alternative form "Móo"
	}
})

DefineLanguageWord("Medg", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "irish",
	Type = "noun",
	Meanings = {"Whey"},
	Gender = "feminine"
})

DefineLanguageWord("Mían", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 264.
	Language = "irish",
	Type = "noun",
	Meanings = {"Metal"} -- source gives the German "Metall"
})

DefineLanguageWord("Mind", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 119.
	Language = "irish",
	Type = "noun",
	Meanings = {"Diadem"} -- source gives the German "Diadem" as the meaning
})

DefineLanguageWord("Mruig", { -- source also gives the alternative form "Bruig"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 160.
	Language = "irish",
	Type = "noun",
	Meanings = {"March", "Landscape"}, -- source gives the German "Mark, Landschaft"
	DerivesFrom = {"proto-indo-european", "verb", "Mareĝ"} -- source indicates this as a possibility
})

DefineLanguageWord("Notail", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 19.
	Language = "irish",
	Type = "verb",
	Meanings = {"You Feed"} -- source gives the Latin (?) "alit te" as the meaning
})

DefineLanguageWord("Rí", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 174.
	Language = "irish",
	Type = "noun",
	Meanings = {"King"}, -- source gives the German "König" as the meaning
	DerivesFrom = {"proto-indo-european", "noun", "Reĝ"},
	NumberCaseInflections = {
		"singular", "genitive", "Ríg"
	}
})

DefineLanguageWord("Rīadaim", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 9.
	Language = "irish",
	Type = "verb",
	Meanings = {"Travel"}
})

DefineLanguageWord("Rige", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 174.
	Language = "irish",
	Type = "noun",
	Meanings = {"Dominion", "Realm", "Empire"}, -- source gives the German "Herrschaft, Reich" as the meaning
	Gender = "neuter"
})

DefineLanguageWord("Sam", { -- source also gives the alternative form "Samrad"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223.
	Language = "irish",
	Type = "noun",
	Meanings = {"Summer"} -- source gives the German "Sommer" as the meaning
})

DefineLanguageWord("Samaisc", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223.
	Language = "irish",
	Type = "noun",
	Meanings = {"Heifer"} -- source gives the German "Färse" as the meaning
})

DefineLanguageWord("Seamar", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223.
	Language = "irish",
	Type = "noun",
	Meanings = {"Clover"} -- source gives the German "Klee"
})

DefineLanguageWord("Túath", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 99.
	Language = "irish",
	Type = "noun",
	Meanings = {"People"} -- source gives the German "Volk" as the meaning
})

DefineLanguageWord("Úr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 127.
	Language = "irish",
	Type = "noun",
	Meanings = {"Fire"} -- source gives "Feuer" as the meaning
})

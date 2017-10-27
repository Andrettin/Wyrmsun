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

DefineLanguageWord("Áçman", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 46.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Stone"} -- source gives the German "Stein" as the meaning
})

DefineLanguageWord("Acmará", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 46.
	Language = "sanskrit",
	Type = "adjective",
	Meanings = {"Stone"} -- source gives the German "steinern" as the meaning
})

DefineLanguageWord("Ádhāt", { -- this is the aorist form; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.1.
	Language = "sanskrit",
	Type = "verb",
	Meanings = {"Sucked"},
	DerivesFrom = {"proto-indo-european", "noun", "Dheʔ"}
})

DefineLanguageWord("Áhar", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 106.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Day"}, -- source gives the German "Tag" as the meaning
	Gender = "neuter",
	NumberCaseInflections = {
		"singular", "genitive", "Áhnas"
	}
})

DefineLanguageWord("Áśvas", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Horse"},
	DerivesFrom = {"proto-indo-european", "noun", "Éḱwos"}
})

DefineLanguageWord("Áva", { -- source also gives the alternative form "ávas-tâd"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 204.
	Language = "sanskrit",
	Type = "adverb", -- correct?
	Meanings = {},
	DerivesFrom = {"proto-indo-european", "adverb", "Ve"}
})

DefineLanguageWord("Bardhaka", { -- this is presumably a past participle, since one is given as the meaning; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, pp. 135-136.
	Language = "sanskrit",
	Type = "verb",
	Meanings = {"Chopped"}, -- source gives the German "abschneidend" as the meaning
	DerivesFrom = {"proto-indo-european", "noun", "Bhrdho"}, -- the TLFi gives the cognates of this word as deriving from the Indo-European word "bhrdho-" (Source: http://www.cnrtl.fr/definition/bord); Fick gives the Indo-European root of this word as "bher(e)dh" instead
	Participles = {
		"past", "Bardhaka"
	}
})

DefineLanguageWord("Bhalla", { -- source also gives the alternative form "Bhallaka"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Bear"} -- source gives the German "Bär" as the meaning
})

DefineLanguageWord("Bhrā́tā", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Brother"}
})

DefineLanguageWord("Bhrū́", { -- same as "Bhrû"?; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.2.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Bridge"}
})

DefineLanguageWord("Bhrû", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 145.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Brow"}, -- source gives the German "Braue" as the meaning
	Gender = "feminine"
})

DefineLanguageWord("Bhūta", { -- this is a participle; source gives "Bhūta"; source later gives a "Bhūtá-", also descending from Proto-Indo-European "Bhew"; probably meant to be the same, but the author used the accents inconsistently? Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.1.
	Language = "sanskrit",
	Type = "verb",
	Meanings = {"Grown"},
	DerivesFrom = {"proto-indo-european", "verb", "Bhew"}, -- from the variant "bhu-H-" (more precisely bhu-H-tó-)
	Participles = {
		"present", "Bhūta" -- source only says that this is a participle, not that it is a present participle
	}
})

DefineLanguageWord("Bódhati", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "sanskrit",
	Type = "verb",
	Meanings = {"Observe"},
	DerivesFrom = {"proto-indo-european", "verb", "Bhewdh"}
})

DefineLanguageWord("Brhant", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137.
	Language = "sanskrit",
	Type = "adjective",
	Meanings = {"High"} -- source gives "Hoch" as the meaning
})

DefineLanguageWord("Çárman", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 49.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Shield", "Blanket"}, -- source gives the German "Schirm, Decke" as the meaning
	Gender = "neuter"
})

DefineLanguageWord("Çatru", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 6.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Enemy"}
})

DefineLanguageWord("Çṛṅga", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 47.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Horn"}, -- source gives the German "Horn" as the meaning
	Gender = "masculine"
})

DefineLanguageWord("Dāhas", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Heat"},
	DerivesFrom = {"proto-indo-european", "noun", "Dhagh"}
})

DefineLanguageWord("Dáhati", { -- given the meaning, this is presumably the third person singular; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 106.
	Language = "sanskrit",
	Type = "verb",
	Meanings = {"Burns"}, -- source gives the German "brennt" as the meaning
	NumberPersonTenseMoodInflections = {
		"singular", "third-person", "present", "indicative", "Dáhati" -- presumably, given the meaning
	}
})

DefineLanguageWord("Dán", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 84.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"proto-indo-european", "noun", "Dont"},
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Datás"
	}
})

DefineLanguageWord("Darbhá", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 86.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Tuft of Grass", "Bush Grass"}, -- source gives the German "Grasbüschel, Buschgras" as the meaning
	Gender = "masculine"
})

DefineLanguageWord("Devas", { -- Source: H. Munro Chadwick, "The Oak and the Thunder-God", 1900, p. 39.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"God"}
})

DefineLanguageWord("Devŗ́", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.2.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"proto-indo-european", "noun", "Daxw"}
})

DefineLanguageWord("Dhī́ta", { -- this is the past perfect participle; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.1.
	Language = "sanskrit",
	Type = "verb",
	Meanings = {}
})

DefineLanguageWord("Duhitā́", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Daughter"}
})

DefineLanguageWord("Dyāus", { -- Source: H. Munro Chadwick, "The Oak and the Thunder-God", 1900, p. 39.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Sky", "Day"},
	DerivesFrom = {"proto-indo-european", "noun", "Deiṷos"}
})

DefineLanguageWord("Gámati", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "sanskrit",
	Type = "verb",
	Meanings = {"Go"},
	DerivesFrom = {"proto-indo-european", "verb", "Gʷem"}
})

DefineLanguageWord("Gardhas", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Greed"},
	DerivesFrom = {"proto-indo-european", "noun", "Ghredh"}
})

DefineLanguageWord("Han", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 4.
	Language = "sanskrit",
	Type = "verb",
	Meanings = {"Smite"}
})

DefineLanguageWord("Hâṭaka", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 73.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Gold"}, -- source gives the German "Gold" as the meaning
	Gender = "neuter"
})

DefineLanguageWord("Hávate", { -- this is (apparently) the past; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 76.
	Language = "sanskrit",
	Type = "verb",
	Meanings = {"Called"}, -- source gives the German "ruft" as the meaning
	DerivesFrom = {"proto-indo-european", "verb", "Ĝhutó"}
})

DefineLanguageWord("Jīvá", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.2.
	Language = "sanskrit",
	Type = "adjective",
	Meanings = {"Alive"},
	DerivesFrom = {"proto-indo-european", "adjective", "Gʷyxwos"}
})

DefineLanguageWord("Késara", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 7.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Hair", "Mane"},
	Gender = "masculine"
})

DefineLanguageWord("Koca", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 54.
	Language = "sanskrit",
	Type = "adjective",
	Meanings = {"Shrunk"} -- source gives the German "einschrumpfend" as the meaning
})

DefineLanguageWord("Kravís", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.1.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Raw Meat"},
	DerivesFrom = {"proto-indo-european", "noun", "Krewx"},
})

DefineLanguageWord("Kuca", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 54.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Female Breast"}, -- source gives the German "die weibliche Brust" as the meaning
	Gender = "masculine"
})

DefineLanguageWord("Kuksi", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 54.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Belly"}, -- source gives the German "Bauch" as the meaning
	Gender = "masculine"
})

DefineLanguageWord("Lohá", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 181.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Copper", "Iron"}, -- source gives the German "Kupfer, Eisen" as the meaning
	Gender = "masculine"
})

DefineLanguageWord("Majjấ", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Marrow"},
	Gender = "feminine"
})

DefineLanguageWord("Majján", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Marrow"},
	Gender = "masculine"
})

DefineLanguageWord("Mīḍhá", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 7.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Reward from a Battle", "Reward from a Competition"},
	Gender = "neuter"
})

DefineLanguageWord("Náktam", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Night"} -- presumably, but is not entirely clear from source
})

DefineLanguageWord("Náus", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.2.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {},
	NumberCaseInflections = {
		"singular", "accusative", "Nā́vam",
		"singular", "genitive", "Nāvás"
	}
})

DefineLanguageWord("Návya", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 153.
	Language = "sanskrit",
	Type = "adjective",
	Meanings = {"New", "Fresh", "Young"} -- source gives the German "neu, frisch, jung" as the meaning
})

DefineLanguageWord("Nidâghá", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 106.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Heat", "Summer"}, -- source gives the German "Hitze, Sommer" as the meaning
	Gender = "masculine"
})

DefineLanguageWord("Pā́dam", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Foot"} -- meaning not explicitly given in source, but Proto-Germanic cognate "Fōts" means "Foot"
})

DefineLanguageWord("Páňca", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.1.
	Language = "sanskrit",
	Type = "numeral",
	Number = 5
})

DefineLanguageWord("Páśu", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {}
})

DefineLanguageWord("Pī́van", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.2.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Fat"},
	DerivesFrom = {"proto-indo-european", "noun", "Spyxwon"}
})

DefineLanguageWord("Pitā́", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.9.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Father"}
})

DefineLanguageWord("Prīnā́ti", { -- source gives "is pleased" as the meaning, so this is presumably the past form; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.1.
	Language = "sanskrit",
	Type = "verb",
	Meanings = {"Is Pleased"},
	DerivesFrom = {"proto-indo-european", "adjective", "Pryx"}
})

DefineLanguageWord("Prî́ti", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 128.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Happiness", "Friendly Attitude"}, -- source gives the German "Freude, freundschaftliche Gesinnung" as the meaning
	Gender = "feminine"
})

DefineLanguageWord("Pṛt", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 3.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Battle"}
})

DefineLanguageWord("Pṛtanā", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 3.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Battle", "Fighting Body"}
})

DefineLanguageWord("Puruhûta", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 76.
	Language = "sanskrit",
	Type = "adjective",
	Meanings = {"Much-Called"}, -- source gives the German "viel angerufen (Beiname des Indra)" as the meaning
	DerivesFrom = {"proto-indo-european", "verb", "Ĝhutó"}
})

DefineLanguageWord("Pū́tis", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "sanskrit",
	Type = "adjective",
	Meanings = {"Foul"}
})

DefineLanguageWord("Râjan", { -- source also gives the form "-râj-"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 174.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"King"}, -- source gives the German "König" as the meaning
	DerivesFrom = {"proto-indo-european", "noun", "Reĝ"}
})

DefineLanguageWord("Raṇa", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 6.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Joy", "Battle"}
})

DefineLanguageWord("Ṛbhú", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 20.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Artist"} -- source gives the German "Künstler" as the meaning
})

DefineLanguageWord("Ṛbhú", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 20.
	Language = "sanskrit",
	Type = "adjective",
	Meanings = {"Skilled"} -- source gives the German "geschickt" as the meaning
})

DefineLanguageWord("Rấdhas", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 172.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Success", "Pursuit", "Might", "Bestowal of Goodwill"}, -- source gives the German "Gelingen, Streben, Macht, Erweisung des Wohlwollens"
	Gender = "neuter"
})

DefineLanguageWord("Sáhas", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 214.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Violence", "Victory"}, -- source gives the German "Gewalt, Sieg" as the meaning
	Gender = "neuter"
})

DefineLanguageWord("Sámâ", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Semester", "Season", "Year"} -- source gives the German "Halbjahr, Jahreszeit, Jahr" as the meaning
})

DefineLanguageWord("Samaraṇa", { -- source gives "samaraṇa-", as well as the alternative form "samara-"; Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 5.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Meeting", "Hostile Meeting", "Fight"}
})

DefineLanguageWord("Samprahar", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 8.
	Language = "sanskrit",
	Type = "verb",
	Meanings = {"Hurl", "Cast", "Attack"}
})

DefineLanguageWord("Samprahāra", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 8.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"War"}
})

DefineLanguageWord("Samṛ", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 5.
	Language = "sanskrit",
	Type = "verb",
	Meanings = {"Come Together"}
})

DefineLanguageWord("Saptá", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "sanskrit",
	Type = "numeral",
	Number = 7
})

DefineLanguageWord("Skunā́ti", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.1.
	Language = "sanskrit",
	Type = "verb", -- verb of the ninth class
	Meanings = {"Cover"},
	DerivesFrom = {"proto-indo-european", "verb", "Kwneχ"}
})

DefineLanguageWord("Snuṣā́", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Daughter-in-Law"}
})

DefineLanguageWord("Stighnoti", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "sanskrit",
	Type = "verb",
	Meanings = {"Climb"}
})

DefineLanguageWord("Sûrkṣati", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 224.
	Language = "sanskrit",
	Type = "verb",
	Meanings = {"Preoccupies With"} -- source gives the German "kümmert sich um" as the meaning
})

DefineLanguageWord("Súvar", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.2.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Sun"}
})

DefineLanguageWord("Śvetá", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "sanskrit",
	Type = "adjective",
	Meanings = {"White"},
	DerivesFrom = {"proto-indo-european", "adjective", "Ḱweyt"}
})

DefineLanguageWord("Tanákti", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.1.
	Language = "sanskrit",
	Type = "verb",
	Meanings = {"Coagulate"}
})

DefineLanguageWord("Upári", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "sanskrit",
	Type = "adposition",
	Meanings = {"Over"}
})

DefineLanguageWord("Váhanam", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Vehicle"}
})

DefineLanguageWord("Vayati", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 8.
	Language = "sanskrit",
	Type = "verb",
	Meanings = {"Pursue", "Chase", "Drive"}
})

DefineLanguageWord("Vayim", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 5.
	Language = "sanskrit",
	Type = "pronoun",
	Meanings = {"We"},
	Nominative = "Vayim"
})

DefineLanguageWord("Vidma", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "sanskrit",
	Type = "verb",
	Meanings = {"Know"},
	NumberPersonTenseMoodInflections = {
		"plural", "first-person", "present", "indicative", "Vidma"
	}
})

DefineLanguageWord("Vigraha", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 8.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Separation", "Discord", "War"}
})

DefineLanguageWord("Vṛ́ká", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 209.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Wolf"}, -- source gives the German "Wolf"
	DerivesFrom = {"proto-indo-european", "noun", "Vl̥qo"},
	Gender = "masculine"
})

DefineLanguageWord("Yudh", { -- source gives "yudh-"; Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 2.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Fight", "Battle"}
})

DefineLanguageWord("Yudh", { -- source gives "yudh-"; Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 2.
	Language = "sanskrit",
	Type = "verb",
	Meanings = {"Fight"}
})

DefineLanguageWord("Yū́va", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.2.
	Language = "sanskrit",
	Type = "noun",
	Meanings = {"Youth"},
	NumberCaseInflections = {
		"singular", "genitive", "Yūnás"
	}
})

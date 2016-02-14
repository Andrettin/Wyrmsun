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

DefineLanguageWord("Âster", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 12.
	Language = "old-frisian",
	Type = "adverb",
	Meanings = {},
	DerivesFrom = {"proto-germanic", "adverb", "Austa"}
})

DefineLanguageWord("Berch", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Mountain", "Hill", "Grave Mound"}, -- source gives "Berg, Hügel, Grabhügel" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Berga"},
	Gender = "masculine"
})

DefineLanguageWord("Beth", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 133.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Bath", "Baths"}, -- source gives the German "Bad" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Baþa"},
	Gender = "neuter"
})

DefineLanguageWord("Bregge", { -- source also gives the alternative form "Brigge"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 145.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Bridge"}, -- source gives the German "Brücke" as the meaning
	Gender = "feminine",
	DerivesFrom = {"proto-germanic", "noun", "Brugjô"}
})

DefineLanguageWord("Burch", { -- source gives "Bur(i)ch"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Fortified Place", "City", "Town"}, -- source gives "befestigter Ort, Stadt" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Burg"},
	Gender = "feminine"
})

DefineLanguageWord("Hēde", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Flax Fiber"},
	DerivesFrom = {"proto-germanic", "noun", "Hezdōn"},
	Uncountable = true -- as a material, it is likely to be uncountable
})

DefineLanguageWord("Herth", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 46.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Fireplace", "Fire"}, -- source gives "Feuerstätte, Feuer" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Herþa"},
	Gender = "masculine"
})

DefineLanguageWord("Lâd", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 181.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Lot"}, -- source gives the German "Loth" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Lauda"}
})

DefineLanguageWord("Lēra", { -- causative verb; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 5.
	Language = "old-frisian",
	Type = "verb",
	Meanings = {"Teach"}
})

DefineLanguageWord("Lernēn", { -- source also gives "Lirnēn" as an alternative form; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-frisian",
	Type = "verb",
	Meanings = {"Learn"}
})

DefineLanguageWord("Māra", { -- this is the comparative, what is the normal version of the word? Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	Language = "old-frisian",
	Type = "adjective",
	Meanings = {"More"},
	ComparisonDegreeInflections = {
		"comparative", "Māra",
		"superlative", "Māst"
	}
})

DefineLanguageWord("Marg", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Marrow"},
	DerivesFrom = {"proto-germanic", "noun", "Mazgaz"}
})

DefineLanguageWord("Mēde", { -- source also gives as alternatives the forms "Mīde", "Meide" and "Hēde"; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 7.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Reward", "Rental", "Payment", "Gift"},
	DerivesFrom = {"proto-germanic", "noun", "Mizdō"},
	Gender = "feminine"
})

DefineLanguageWord("Mēr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-frisian",
	Type = "adverb",
	Meanings = {"More"},
	Nominative = "Mēr"
})

DefineLanguageWord("Nera", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-frisian",
	Type = "verb",
	Meanings = {"Nurture"}
})

DefineLanguageWord("North", { -- source also gives the alternative form "Nord"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 152.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"North"}, -- source gives the German "Norden" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Nurþa"}
})

DefineLanguageWord("North", { -- source also gives the alternative form "Nord"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 152.
	Language = "old-frisian",
	Type = "adverb",
	Meanings = {"Northward"}, -- source gives the German "nordwärts" as the meaning
	DerivesFrom = {"proto-germanic", "adverb", "Nurþa"}
})

DefineLanguageWord("Norther", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 152.
	Language = "old-frisian",
	Type = "adjective",
	Meanings = {},
	DerivesFrom = {"proto-germanic", "adverb", "Nurþa"}
})

DefineLanguageWord("Ord", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Point", "Place"}, -- source gives the meaning as "(spear)point, place"
	DerivesFrom = {"proto-germanic", "noun", "Uzdaz"}
})

DefineLanguageWord("Ransa", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"House"}
})

DefineLanguageWord("Selover", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 221.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Silver"}, -- source gives the German "Silber" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Silubra"},
	Gender = "neuter"
})

DefineLanguageWord("Sûth", { -- source also gives the alternative form "Sûther"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223.
	Language = "old-frisian",
	Type = "adverb",
	Meanings = {"Southward", "In the South"}, -- source gives the German "südwärts, im Süden" as the meaning
	DerivesFrom = {"proto-germanic", "adverb", "Sunþa"}
})

DefineLanguageWord("Therm", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 97.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Intestine"}, -- source gives the German "Darm" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Þarma"}
})

DefineLanguageWord("Thorp", { -- source also gives the alternative form "Therp"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 100.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Village"}, -- source gives the German "Dorf" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Þurpa"}
})

DefineLanguageWord("Wêd", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 4.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Woad"}
})

DefineLanguageWord("West", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 204.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"West"}, -- source gives the German "West" as the meaning
	DerivesFrom = {"proto-germanic", "adverb", "Vesta"}
})

DefineLanguageWord("Wester", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 204.
	Language = "old-frisian",
	Type = "adverb",
	Meanings = {"West"}, -- source gives the German "West" as the meaning
	DerivesFrom = {"proto-germanic", "adverb", "Vesta"}
})

DefineLanguageWord("Wi", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 5.
	Language = "old-frisian",
	Type = "pronoun",
	Meanings = {"We"},
	Nominative = "Wi"
})

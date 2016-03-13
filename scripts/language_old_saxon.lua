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

DefineLanguageWord("Ald", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 19.
	Language = "old-saxon",
	Type = "adjective",
	Meanings = {"Old"}, -- source gives the German "alt" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Alda"}
})

DefineLanguageWord("Athal", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 14.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Noble Lineage"}, -- source gives "edles Geschlecht" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Aþala"},
	Gender = "neuter"
})

DefineLanguageWord("Bath", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 133.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Bath", "Baths"}, -- source gives the German "Bad" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Baþa"},
	Gender = "neuter"
})

DefineLanguageWord("Beki", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 133.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Stream"}, -- source gives the German "Bach" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Baki"},
	Gender = "masculine"
})

DefineLanguageWord("Beran", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-saxon",
	Type = "verb",
	Meanings = {},
	DerivesFrom = {"proto-germanic", "verb", "Beran"}
})

DefineLanguageWord("Berg", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Mountain", "Hill", "Grave Mound"}, -- source gives "Berg, Hügel, Grabhügel" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Berga"},
	Gender = "masculine"
})

DefineLanguageWord("Beuuod", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.1.
	Language = "old-saxon",
	Type = "verb",
	Meanings = {"Harvest"},
	DerivesFrom = {"proto-indo-european", "verb", "Bhew"} -- apparently, since it is a cognate of Sanskrit "bhūtá-" and Greek "éphūn", both of which come from this Proto-Indo-European word
})

DefineLanguageWord("Birid", { -- this is the singular third person present form; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-saxon",
	Type = "verb",
	Meanings = {"Bears"},
	-- infinitive form? maybe is the same word as "beran", since the Latin cognate of "beran", "ferō", means "I bear"
	NumberPersonTenseMoodInflections = {
		"singular", "third-person", "present", "indicative", "Birid"
	}
})

DefineLanguageWord("Bītan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-saxon",
	Type = "verb",
	Meanings = {"Bite"},
	DerivesFrom = {"proto-germanic", "verb", "Bītan"}
})

DefineLanguageWord("Blāo", { -- Source: http://www.cnrtl.fr/definition/bleu
	Language = "old-saxon",
	Type = "adjective",
	Meanings = {"Blue"}, -- apparently
	DerivesFrom = {"proto-germanic", "adjective", "Blêva"} -- presumably
})

DefineLanguageWord("Blî", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 148.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Lead"}, -- source gives the German "Blei" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Blîva"},
	Gender = "neuter"
})

DefineLanguageWord("Blômo", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 146.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Flower"}, -- source gives the German "Blume" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Blôma"},
	Gender = "masculine"
})

DefineLanguageWord("Bord", { -- Source: http://www.cnrtl.fr/definition/B%F6rde
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Board", "Table"}, -- source gives the French "planche, table" as the meaning
	DerivesFrom = {"proto-indo-european", "noun", "Bhrdho"}, -- Source: http://www.cnrtl.fr/definition/bord
	Gender = "neuter"
})

DefineLanguageWord("Bord", { -- Source: http://www.cnrtl.fr/definition/bord
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Edge", "Ridge", "Edge of a Ship"}, -- source gives the French "bord, arête; bord de navire" as the meaning
	DerivesFrom = {"proto-indo-european", "noun", "Bhrdho"}
})

DefineLanguageWord("Brand", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "old-saxon", -- source gives Old Low German
	Type = "noun",
	Meanings = {"Fire", "Burning Log"}, -- source gives the German "Brand, brennendes Holzscheit"
	DerivesFrom = {"proto-germanic", "noun", "Branda"}, -- apparently
	Gender = "masculine"
})

DefineLanguageWord("Brinnan", { -- strong verb; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "old-saxon",
	Type = "verb",
	Meanings = {"Burn"}, -- presumably from the source
	DerivesFrom = {"proto-germanic", "verb", "Brennan"}
})

DefineLanguageWord("Bruggia", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 145.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Bridge"}, -- source gives the German "Brücke" as the meaning
	Gender = "feminine",
	DerivesFrom = {"proto-germanic", "noun", "Brugjô"}
})

DefineLanguageWord("Burg", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Fortified Place", "City", "Town"}, -- source gives "befestigter Ort, Stadt" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Burg"},
	Gender = "feminine"
})

DefineLanguageWord("Busc", { -- Source: http://www.cnrtl.fr/definition/bois
	Language = "old-saxon",
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"proto-germanic", "noun", "Buska"} -- presumably
})

DefineLanguageWord("Eiiere", { -- this is the genitive plural; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.1.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Egg"},
	NumberCaseInflections = {
		"plural", "genitive", "Eiiere"
	}
})

DefineLanguageWord("Êr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 11.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Ore"}, -- source gives the German "Erz" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Aiza"},
	Gender = "neuter"
})

DefineLanguageWord("Etan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "old-saxon",
	Type = "verb",
	Meanings = {"Eat"}
})

DefineLanguageWord("Fehu", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Cattle"},
	DerivesFrom = {"proto-germanic", "noun", "Fehu"}
})

DefineLanguageWord("Fiur", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 127.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Fire"}, -- source gives "Feuer" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Fûir"},
	Gender = "neuter"
})

DefineLanguageWord("Fisc", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Fish"}
})

DefineLanguageWord("Ford", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 120.
	Language = "old-saxon", -- source gives Old Low German
	Type = "noun",
	Meanings = {"Ford"}, -- source gives the German "Furt" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Furdu"},
	Gender = "masculine"
})

DefineLanguageWord("Frī", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.1.
	Language = "old-saxon",
	Type = "adjective",
	Meanings = {"Free"},
	DerivesFrom = {"proto-indo-european", "adjective", "Pryx"}
})

DefineLanguageWord("Frithu", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 128.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Peace"}, -- source gives the German "Friede" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Friþu"},
	Gender = "masculine"
})

DefineLanguageWord("Gard", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Staff", "Rod"},
	DerivesFrom = {"proto-germanic", "noun", "Gazdaz"}
})

DefineLanguageWord("God", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 76.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"God"}, -- source gives the German "Gott" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Guda"}
})

DefineLanguageWord("Gold", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 73.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Gold"}, -- source gives the German "Gold" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Gulþa"}
})

DefineLanguageWord("Grîs", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 79.
	Language = "old-saxon",
	Type = "adjective",
	Meanings = {"Gray", "Old"}, -- source gives the German "grau, greis" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Grîsa"}
})

DefineLanguageWord("Grôni", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 80.
	Language = "old-saxon",
	Type = "adjective",
	Meanings = {"Green"}, -- source gives the German "grün" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Grônia"}
})

DefineLanguageWord("Halƀa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 51.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Half", "Side"}, -- source gives the German "Hälfte, Seite" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Halba"},
	Gender = "feminine"
})

DefineLanguageWord("Half", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 51.
	Language = "old-saxon",
	Type = "adjective",
	Meanings = {"Half"}, -- source gives the German "halb" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Halba"}
})

DefineLanguageWord("Hals", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 50.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Neck", "Throat", "Front Part of a Ship"}, -- source gives the German "Hals, Vorderteil des Schiffes" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Halsa"},
	Gender = "masculine"
})

DefineLanguageWord("Hamur", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 46.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Hammer"}, -- source gives the German "Hammer" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Hamara"},
	Gender = "masculine"
})

DefineLanguageWord("Hard", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 48.
	Language = "old-saxon",
	Type = "adverb", -- apparently from the source
	Meanings = {},
	DerivesFrom = {"proto-germanic", "adjective", "Hardu"}
})

DefineLanguageWord("Hêlag", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 42.
	Language = "old-saxon",
	Type = "adjective",
	Meanings = {"Holy"}, -- source gives the German "heilig"
	DerivesFrom = {"proto-germanic", "adjective", "Hailaga"}
})

DefineLanguageWord("Helm", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 49.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Helm", "Helmet", "Treetop"}, -- source gives the German "Helm, Wipfel" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Helma"},
	Gender = "masculine"
})

DefineLanguageWord("Helpan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "old-saxon",
	Type = "verb",
	Meanings = {"Help"}
})

DefineLanguageWord("Hêm", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 52.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Home"}, -- source gives the German "Heimat" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Haima"},
	Gender = "masculine" -- alternatively also neuter
})

DefineLanguageWord("Hême", { -- dative; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 52.
	Language = "old-saxon",
	Type = "adverb",
	Meanings = {"Home"}, -- source gives the German "zu Hause" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Haima"}, -- unclear if the word comes from this noun or from one of the related adverbs
	Dative = "Heimi"
})

DefineLanguageWord("Herta", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Heart"}
})

DefineLanguageWord("Herth", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 46.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Fireplace", "Fire"}, -- source gives "Feuerstätte, Feuer" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Herþa"},
	Gender = "masculine"
})

DefineLanguageWord("Hild", { -- source gives by this word "das. hildi", that form either belonging to another language or being an inflection of this word; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 50.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Fight", "Conflict", "War"}, -- source gives the German "Kampf, Krieg" as the meaning
	Gender = "feminine",
	DerivesFrom = {"proto-germanic", "noun", "Heldî"}
})

DefineLanguageWord("Hôh", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 54.
	Language = "old-saxon",
	Type = "adjective",
	Meanings = {"High"}, -- source gives the German "hoch" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Hauha"}
})

DefineLanguageWord("Hord", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Treasure", "Closed Interior", "Hidden Interior"},
	DerivesFrom = {"proto-germanic", "noun", "Huzda"}
})

DefineLanguageWord("Horn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 47.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Horn", "Preeminent Peak"}, -- source (apparently) gives the German "Horn, hervorragende Spitze"
	DerivesFrom = {"northwest-germanic", "noun", "Horna"}, -- presumably
	NumberCaseInflections = {
		"plural", "nominative", "Horni"
	}
})

DefineLanguageWord("Hreuuan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.1.
	Language = "old-saxon",
	Type = "verb", -- correct?
	Meanings = {"Rue"},
	DerivesFrom = {"proto-indo-european", "noun", "Krewx"},
})

DefineLanguageWord("Hund", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Dog"}
})

DefineLanguageWord("Hungar", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 44.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Hunger"}, -- source gives the German "Hunger" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Hunhru"},
	Gender = "masculine"
})

DefineLanguageWord("Hurth", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Wattle"}, -- derived from Proto-Germanic "Χŕdiz", which has the meaning of "wattle"
	DerivesFrom = {"proto-germanic", "noun", "Χŕdiz"}
})

DefineLanguageWord("Hwit", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 67.
	Language = "old-saxon",
	Type = "adjective",
	Meanings = {"White"}, -- source gives the German "weiß" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Hvîta"}
})

DefineLanguageWord("Inkneht", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 27.
	Language = "old-saxon", -- source gives Old Low German
	Type = "noun",
	Meanings = {"House Servant"}, -- source gives the German "Diener des Hauses" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Knehta"}
})

DefineLanguageWord("Irminthiod", { -- the first part of this compound derives from the Proto-Germanic noun "Erman"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 18.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Wide Earth"} -- source gives the German "die weite Erde"
})

DefineLanguageWord("Îsarn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 24.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Iron"}, -- source gives the German "Eisen" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Îsarna"},
	Gender = "neuter"
})

DefineLanguageWord("Jung", {
	Language = "old-saxon",
	Type = "adjective",
	Meanings = {"Young"} -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
})

DefineLanguageWord("Kind", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 27.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Child"}, -- source apparently gives the German "Kind" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Kenþa"},
	Gender = "neuter"
})

DefineLanguageWord("Kuning", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 27.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"King"}, -- source (apparently) gives the German "König" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Kuninga"}
})

DefineLanguageWord("Kunni", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Race"},
	DerivesFrom = {"proto-germanic", "noun", "Kuni"}
})

DefineLanguageWord("Land", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 184.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Land", "Country"}, -- source gives the German "Land"
	DerivesFrom = {"proto-germanic", "noun", "Landa"},
	Gender = "neuter"
})

DefineLanguageWord("Lērian", { -- causative verb; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 5.
	Language = "old-saxon",
	Type = "verb",
	Meanings = {"Teach"}
})

DefineLanguageWord("Līfnara", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Food", "Nourishment"},
	Gender = "feminine"
})

DefineLanguageWord("Līnōn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-saxon",
	Type = "verb",
	Meanings = {"Learn"}
})

DefineLanguageWord("Marka", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 160.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Border", "Rural Area"}, -- source gives the German "Grenze, Landgebiet"
	DerivesFrom = {"proto-germanic", "noun", "Mark"},
	Gender = "feminine"
})

DefineLanguageWord("Merg", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Marrow"},
	DerivesFrom = {"proto-germanic", "noun", "Mazgaz"},
	DerivesFrom = {"proto-germanic", "noun", "Mazgaz"}
})

DefineLanguageWord("Mēda", { -- source also gives as an alternatives the form "Mieda"; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 7.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Payment"},
	Gender = "feminine"
})

DefineLanguageWord("Mēr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-saxon",
	Type = "adverb",
	Meanings = {"More"}
})

DefineLanguageWord("Mēro", { -- this is the comparative, what is the normal version of the word? Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	Language = "old-saxon",
	Type = "adjective",
	Meanings = {"More"},
	ComparisonDegreeCaseInflections = {
		"comparative", "Mēro",
		"superlative", "Mēst"
	}
})

DefineLanguageWord("Mī", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-saxon",
	Type = "pronoun",
	Meanings = {"Me"}, -- dative
	Dative = "Mī"
})

DefineLanguageWord("Nerian", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-saxon",
	Type = "verb",
	Meanings = {"Save"}
})

DefineLanguageWord("Niuwi", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 153.
	Language = "old-saxon",
	Type = "adjective",
	Meanings = {"New"}, -- source gives the German "neu" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Neuja"}
})

DefineLanguageWord("North", { -- source also gives the alternative form "Norđ"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 152.
	Language = "old-saxon",
	Type = "adverb",
	Meanings = {"Northward"}, -- source gives the German "nordwärts" as the meaning
	DerivesFrom = {"proto-germanic", "adverb", "Nurþa"}
})

DefineLanguageWord("Ord", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Point", "Edge of a Blade"},
	Gender = "masculine"
})

DefineLanguageWord("Orlag", { -- source also gives the alternative form "Orlagi"; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Fate"}
})

DefineLanguageWord("Ôstan", { -- source gives "Ôstan(a)"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 12.
	Language = "old-saxon",
	Type = "adverb",
	Meanings = {"From the East"}, -- source gives the German "von Osten her" as the meaning
	DerivesFrom = {"proto-germanic", "adverb", "Austanô"}
})

DefineLanguageWord("Ôstar", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 12.
	Language = "old-saxon",
	Type = "adverb",
	Meanings = {},
	DerivesFrom = {"proto-germanic", "adverb", "Austa"}
})

DefineLanguageWord("Râd", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 172.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Counsel", "Council", "Indoctrination", "Support", "Provision", "Supply", "Profit"}, -- source gives the German "Rat, Belehrung, Unterstützung, Vorsorge, Vorrat, Gewinn"
	DerivesFrom = {"proto-germanic", "noun", "Rêda"},
	Gender = "masculine"
})

DefineLanguageWord("Reht", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-saxon",
	Type = "adjective",
	Meanings = {"Right", "Straight"}, -- derived from Proto-Germanic "Reχtaz", which means "Right, Straight"
	DerivesFrom = {"proto-germanic", "adjective", "Reχtaz"}
})

DefineLanguageWord("Rîki", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 174.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Realm", "Empire", "Dominion", "Authority"}, -- source gives the German "Reich, Herrschaft, Obrigkeit" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Rîkia"},
	Gender = "neuter"
})

DefineLanguageWord("Rîki", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 174; Source: http://www.cnrtl.fr/definition/riche
	Language = "old-saxon", -- the TLFi gives Old Low German
	Type = "adjective",
	Meanings = {"Powerful"}, -- Fick gives the German "mächtig" as the meaning, while the TLFi gives the French "puissant"
	DerivesFrom = {"proto-germanic", "adjective", "Rîka"} -- as given by Fick
})

DefineLanguageWord("Scild", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 229.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Shield", "Protection"}, -- source gives the German "Schild, Schutz" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Skeldu"},
	Gender = "masculine"
})

DefineLanguageWord("Scrīban", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-saxon",
	Type = "verb",
	Meanings = {"Write"}
})

DefineLanguageWord("Sehan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5; Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-saxon",
	Type = "verb",
	Meanings = {"See"},
	NumberPersonTenseMoodInflections = {
		"singular", "first-person", "past", "indicative", "Sah",
		"singular", "third-person", "past", "indicative", "Sah",
		"plural", "first-person", "past", "indicative", "Sāwum"
	},
	Participles = {
		"past", "Gisewan"
	}
})

DefineLanguageWord("Sêu", { -- source also gives the alternative form "sêo"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 221.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Lake"}, -- source (apparently) gives the German "See" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Saivi"},
	Gender = "masculine"
})

DefineLanguageWord("Sigi", { -- source gives "sigi- (drohtin)"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 214.
	Language = "old-saxon",
	Type = "noun", -- correct?
	Meanings = {"Victory"}, -- source (apparently?) gives the German "Sieg" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Segiz"},
	Gender = "masculine"
})

DefineLanguageWord("Siluƀar", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 221.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Silver"}, -- source gives the German "Silber" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Silubra"},
	Gender = "neuter"
})

DefineLanguageWord("Smiđ", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 263.
	Language = "old-saxon", -- source gives Old Low German
	Type = "noun",
	Meanings = {"Smith"}, -- source gives the German "Schmied"
	DerivesFrom = {"proto-germanic", "noun", "Smiþu"}
})

DefineLanguageWord("Sorga", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Worry"}, -- source (apparently) gives the German "Sorge" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Surgô"},
	Gender = "feminine"
})

DefineLanguageWord("Sorgôn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, pp. 223-224.
	Language = "old-saxon",
	Type = "verb",
	Meanings = {"Worry"}, -- source gives the German "sorgen" as the meaning
	DerivesFrom = {"proto-germanic", "verb", "Surgên"}
})

DefineLanguageWord("Stên", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 245.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Stone"}, -- source (apparently) gives the German "Stein" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Staina"},
	Gender = "masculine"
})

DefineLanguageWord("Suht", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Sickness"}
})

DefineLanguageWord("Sumar", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Summer"}, -- source gives the German "Sommer" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Sumara"},
	Gender = "masculine"
})

DefineLanguageWord("Sûtharliuti", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Southern People"} -- source gives the German "Südleute" as the meaning
})

DefineLanguageWord("Tharm", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 97.
	Language = "old-saxon", -- source gives Old Low German
	Type = "noun",
	Meanings = {"Intestine"}, -- source gives the German "Darm" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Þarma"}
})

DefineLanguageWord("Thioda", { -- source also gives the alternative form "Thiod"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 99.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"People"}, -- source gives the German "Volk, Leute" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Þeudô"},
	Gender = "feminine"
})

DefineLanguageWord("Thorp", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 100.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Village"}, -- source gives the German "Dorf" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Þurpa"}
})

DefineLanguageWord("Treuua", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.1.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Faithfulness"}
})

DefineLanguageWord("Weg", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Way"}
})

DefineLanguageWord("Wel", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "old-saxon",
	Type = "adverb",
	Meanings = {"Well"}
})

DefineLanguageWord("Werthan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-saxon",
	Type = "verb",
	Meanings = {"Become"}
})

DefineLanguageWord("Westar", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 204.
	Language = "old-saxon",
	Type = "adverb",
	Meanings = {"West"}, -- source gives the German "West" as the meaning
	DerivesFrom = {"proto-germanic", "adverb", "Vesta"}
})

DefineLanguageWord("Wī", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-saxon",
	Type = "pronoun",
	Meanings = {"We"},
	Nominative = "Wī" -- source also gives "We" as alternative
})

DefineLanguageWord("Witan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-saxon",
	Type = "verb",
	Meanings = {"Know"}
})

DefineLanguageWord("Wulf", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 209.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Wolf"}, -- source gives the German "Wolf"
	DerivesFrom = {"proto-germanic", "noun", "Vulfa"}
})

DefineLanguageWord("Wurm", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 209.
	Language = "old-saxon",
	Type = "noun",
	Meanings = {"Worm", "Serpent"}, -- probably could be extended to mean "wyrm" as well
	DerivesFrom = {"proto-germanic", "noun", "Vurma"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 209.
	Gender = "masculine"
})

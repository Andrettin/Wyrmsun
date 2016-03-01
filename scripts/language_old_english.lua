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

DefineLanguageWord("Adl", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 114.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Illness"}
})

DefineLanguageWord("Ælf", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 20.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Elf"}, -- source gives the German "Alf, Elf" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Alba"},
	Gender = "masculine",
	NumberCaseInflections = {
		"plural", "nominative", "Ielfe"
	}
})

DefineLanguageWord("Ærn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-english",
	Type = "noun",
	Meanings = {"House"},
	Gender = "neuter"
})

DefineLanguageWord("Æþela", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 14.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Noble Birth"}, -- source gives "edle Geburt" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Aþala"},
	Gender = "feminine"
})

DefineLanguageWord("Âr", { -- source also gives the alternative form "Æ̂r" (with the circumflex accent on top of the Æ); Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 11.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Ore"}, -- source gives the German "Erz" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Aiza"},
	Gender = "neuter"
})

DefineLanguageWord("Bærnan", { -- causative; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Burn"}, -- source gives the German "brennen" as the meaning
	DerivesFrom = {"proto-germanic", "verb", "Brannian"}
})

DefineLanguageWord("Bæþ", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 133.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Bath", "Baths"}, -- source gives the German "Bad" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Baþa"},
	Gender = "neuter"
})

DefineLanguageWord("Bearn", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 238.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Child"}
})

DefineLanguageWord("Bece", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 133.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Stream"}, -- source gives the German "Bach" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Baki"},
	Gender = "masculine"
})

DefineLanguageWord("Beorg", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Mountain", "Hill", "Grave Mound"}, -- source gives "Berg, Hügel, Grabhügel" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Berga"},
	Gender = "masculine"
})

DefineLanguageWord("Beornan", { -- strong verb; source also gives the alternative form "biernan"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Burn"}, -- presumably from the source
	DerivesFrom = {"proto-germanic", "verb", "Brennan"}
})

DefineLanguageWord("Bera", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Bear"}, -- source gives the German "Bär" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Beran"},
	Gender = "masculine"
})

DefineLanguageWord("Blâw", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 147.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Blue"}, -- source (apparently) gives the German "blau" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Blêva"}
})

DefineLanguageWord("Blôstma", { -- source also gives the alternative forms "Blôsma" and "Blôstm"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 146.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Blossom"}, -- presumably, since it gave origin to the English term "Blossom", but the source doesn't specify the meaning precisely
	DerivesFrom = {"proto-germanic", "noun", "Blôma"}, 
	Gender = "masculine"
})

DefineLanguageWord("Bōc", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Book"}, -- derived from Proto-Germanic "Bōks"; the source has the meaning for that word as "'tablet' > 'book'", but it is not clear if it means that the meaning became book in the child languages of Proto-Germanic, or within the timespan of the language itself
	DerivesFrom = {"proto-germanic", "noun", "Bōks"}
})

DefineLanguageWord("Bord", { -- Source: http://www.cnrtl.fr/definition/B%F6rde
	Language = "old-english",
	Type = "noun",
	Meanings = {"Board", "Table"}, -- source gives the French "planche, table" as the meaning
	DerivesFrom = {"proto-indo-european", "noun", "Bhrdho"}, -- Source: http://www.cnrtl.fr/definition/bord
	Gender = "neuter"
})

DefineLanguageWord("Bord", { -- Source: http://www.cnrtl.fr/definition/bord
	Language = "old-english",
	Type = "noun",
	Meanings = {"Edge", "Ridge", "Edge of a Ship"}, -- source gives the French "bord, arête; bord de navire" as the meaning
	DerivesFrom = {"proto-indo-european", "noun", "Bhrdho"}
})

DefineLanguageWord("Breord", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Shore", "Edge"}
})

DefineLanguageWord("Brord", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Point", "Sprout"},
	DerivesFrom = {"proto-germanic", "noun", "Bruzdaz"},
	Gender = "masculine"
})

DefineLanguageWord("Brû", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 145.
	Language = "old-english",
	Type = "noun",
	Gender = "feminine",
	Meanings = {"Eyebrow", "Eyelid", "Eyelash"}, -- source gives the German "Augenbraue, Augenlid, Wimper" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Brûvô"},
	NumberCaseInflections = {
		"plural", "genitive", "Brûna"
	}
})

DefineLanguageWord("Brycg", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 145.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Bridge"}, -- source gives the German "Brücke" as the meaning
	Gender = "feminine",
	DerivesFrom = {"proto-germanic", "noun", "Brugjô"}
})

DefineLanguageWord("Burg", { -- source also gives the alternate form "Burh"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Fortified Place", "City", "Town"}, -- source gives "befestigter Ort, Stadt" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Burg"},
	NumberCaseInflections = {
		"plural", "nominative", "Byrig"
	},
	Gender = "feminine"
})

DefineLanguageWord("Cên", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 4-7.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Pine", "Fir", "Spruce"},
	Gender = "masculine"
})

DefineLanguageWord("Corn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Grain"}, -- derived from Proto-Germanic "Kŕnam", which has the meaning of "grain"
	DerivesFrom = {"proto-germanic", "noun", "Kŕnam"}
})

DefineLanguageWord("Cost", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 2.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Object of Choice"}
})

DefineLanguageWord("Cwene", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Woman"},
	DerivesFrom = {"proto-indo-european", "noun", "Gʷen"}
})

DefineLanguageWord("Cynn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Race"},
	DerivesFrom = {"proto-germanic", "noun", "Kuni"}
})

DefineLanguageWord("Duru", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Door"}, -- derived from Proto-Germanic "Durez", which has the meaning of "door"
	DerivesFrom = {"proto-germanic", "noun", "Durez"}
})

DefineLanguageWord("Eald", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 19.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Old"}, -- source gives the German "alt" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Alda"},
	ComparisonDegreeInflections = {
		"comparative", "Ieldra",
		"superlative", "Ieldest"
	}
})

DefineLanguageWord("Ealdorneru", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Saving of a Life"},
	Gender = "feminine"
})

DefineLanguageWord("Éast", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 12.
	Language = "old-english",
	Type = "adverb",
	Meanings = {},
	DerivesFrom = {"proto-germanic", "adverb", "Austa"}
})

DefineLanguageWord("Éastan", { -- source gives "Éastan(e)"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 12.
	Language = "old-english",
	Type = "adverb",
	Meanings = {"From the East"}, -- source gives the German "von Osten her" as the meaning
	DerivesFrom = {"proto-germanic", "adverb", "Austanô"}
})

DefineLanguageWord("Éaste", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 12.
	Language = "old-english",
	Type = "noun",
	Meanings = {"East"},
	DerivesFrom = {"proto-germanic", "noun", "Austa"},
	Gender = "feminine"
})

DefineLanguageWord("Éasterra", { -- source also gives the alternative form "Éastra"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 12.
	Language = "old-english",
	Type = "adjective",
	Meanings = {},
	DerivesFrom = {"proto-germanic", "adverb", "Austa"}
})

DefineLanguageWord("Eoh", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Horse"},
	DerivesFrom = {"proto-indo-european", "noun", "Éḱwos"}
})

DefineLanguageWord("Eorþe", { -- Runge gives "Eorþe", while Lehmann gives "Eorþ"; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 238; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Earth"},
	DerivesFrom = {"proto-germanic", "noun", "Erþō"},
	Uncountable = true
})

DefineLanguageWord("Feoh", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 238; Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2..
	Language = "old-english",
	Type = "noun",
	Meanings = {"Cattle"},
	DerivesFrom = {"proto-germanic", "noun", "Fehu"}
})

DefineLanguageWord("Fiðelestre", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 77.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Fiddler"},
	Gender = "feminine" -- presumably, given the source is talking about occupations for women
})

DefineLanguageWord("Fisc", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Fish"}
})

DefineLanguageWord("Ford", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 120.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Ford"}, -- source gives the German "Furt" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Furdu"},
	Gender = "masculine"
})

DefineLanguageWord("Fōt", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Foot"}, -- derived from Proto-Germanic "Fōts", which has the meaning of "foot"
	DerivesFrom = {"proto-germanic", "noun", "Fōts"}
})

DefineLanguageWord("Friþu", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 128.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Peace", "Protection", "Security"}, -- source gives the German "Friede, Schutz, Sicherheit" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Friþu"}
})

DefineLanguageWord("Fŷr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 127.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Fire"}, -- source gives "Feuer" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Fûir"},
	Gender = "neuter"
})

DefineLanguageWord("Gēar", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Year"}, -- derived from Proto-Germanic "Yēra", which means "Year"
	DerivesFrom = {"proto-germanic", "noun", "Yēra"}
})

DefineLanguageWord("Geard", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Garden"}, -- derived from Proto-Germanic "Gárdiz", which has the meaning of "garden"
	DerivesFrom = {"proto-germanic", "noun", "Gárdiz"}
})

DefineLanguageWord("Gereord", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Meal", "Feast", "Food"},
	Gender = "neuter"
})

DefineLanguageWord("Gesihþ", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Sight"},
	DerivesFrom = {"proto-indo-european", "verb", "Sekʷ"}
})

DefineLanguageWord("Gierd", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Rod", "Prickle"},
	DerivesFrom = {"proto-germanic", "noun", "Gazdaz"}
})

DefineLanguageWord("Glīwmǣden", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 77.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Musician"},
	Gender = "feminine" -- presumably, given the source is talking about occupations for women
})

DefineLanguageWord("God", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 89.
	Language = "old-english",
	Type = "noun",
	Meanings = {"God"},
	DerivesFrom = {"proto-germanic", "noun", "Guda"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 76.
	Gender = "masculine",
	NumberCaseInflections = {
		"plural", "nominative", "Godas" -- Fick also gives the alternative form "Godu"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 76.
	}
})

DefineLanguageWord("Gold", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 73.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Gold"}, -- source gives the German "Gold" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Gulþa"}
})

DefineLanguageWord("Græ̂g", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 79.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Gray"}, -- source gives the German "grau" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Grêva"}
})

DefineLanguageWord("Grêne", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 80.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Green"}, -- source gives the German "grün" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Grônia"}
})

DefineLanguageWord("Grīs", { -- Source: http://www.cnrtl.fr/definition/gris
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Gray"}, -- source gives the French "gris" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Grîsa"} -- presumably
})

DefineLanguageWord("Gyden", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 89.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Goddess"},
	NumberCaseInflections = {
		"plural", "nominative", "Gydena"
	},
	Gender = "feminine"
})

DefineLanguageWord("Hād", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 3.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Hair"}
})

DefineLanguageWord("Hamor", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 46.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Hammer"}, -- source gives the German "Hammer" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Hamara"},
	Gender = "masculine"
})

DefineLanguageWord("Héah", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 54.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"High"}, -- source gives the German "hoch" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Hauha"}
})

DefineLanguageWord("Heals", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 50.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Neck", "Throat", "Front Part of a Ship"}, -- source gives the German "Hals, Vorderteil des Schiffes" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Halsa"},
	Gender = "masculine"
})

DefineLanguageWord("Hearpestre", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, pp. 77-78.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Harp Player"},
	Gender = "feminine" -- presumably, given the source is talking about occupations for women
})

DefineLanguageWord("Heordan", { -- this is the plural, what is the singular? Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Hards of Flax"},
	DerivesFrom = {"proto-germanic", "noun", "Hazdaz"},
	NumberCaseInflections = {
		"plural", "nominative", "Heordan"
	}
})

DefineLanguageWord("Heorde", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Flax Fiber"},
	DerivesFrom = {"proto-germanic", "noun", "Hezdōn"},
	Uncountable = true -- as a material, it is likely to be uncountable, specially since there is a word for "hards of flax"
})

DefineLanguageWord("Heorte", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Heart"}
})

DefineLanguageWord("Heorþ", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 46.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Fireplace", "Fire"}, -- source gives "Feuerstätte, Feuer" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Herþa"},
	Gender = "masculine"
})

DefineLanguageWord("Hlēapestre", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, pp. 77-78.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Dancer"},
	Gender = "feminine" -- presumably, given the source is talking about occupations for women
})

DefineLanguageWord("Hléor", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Cheek"}
})

DefineLanguageWord("Hnutu", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 58.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Nut"}, -- source gives the German "Nuß"
	DerivesFrom = {"proto-germanic", "noun", "Hnut"},
	Gender = "feminine",
	NumberCaseInflections = {
		"plural", "nominative", "Hnyte"
	}
})

DefineLanguageWord("Hoppestre", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, pp. 77-78.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Dancer"},
	Gender = "feminine" -- presumably, given the source is talking about occupations for women
})

DefineLanguageWord("Hord", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Treasure", "Amassed Wealth"},
	DerivesFrom = {"proto-germanic", "noun", "Huzda"}
})

DefineLanguageWord("Horn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 47.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Horn", "Preeminent Peak"}, -- source (apparently) gives the German "Horn, hervorragende Spitze"
	DerivesFrom = {"northwest-germanic", "noun", "Horna"} -- presumably
})

DefineLanguageWord("Hræn", { -- source also gives the alternative form "Hærn"; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Wave", "Sea"},
	DerivesFrom = {"proto-germanic", "noun", "Hraznō"},
	Gender = "feminine"
})

DefineLanguageWord("Hweowol", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 238.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Wheel"}
})

DefineLanguageWord("Hund", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Dog"}
})

DefineLanguageWord("Hwīt", { -- Fick gives "hwit" instead; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 67.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"White"},
	DerivesFrom = {"proto-germanic", "adjective", "Hvîta"} -- as given by Fick
})

DefineLanguageWord("Ieldran", { -- this is the plural; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 19.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Parents"}, -- source gives the German "Eltern" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Alda"},
	NumberCaseInflections = {
		"plural", "nominative", "Ieldran"
	}
})

DefineLanguageWord("Îsern", { -- source also gives the alternative form "Îsen" and "Îren"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 24.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Iron"}, -- source gives the German "Eisen" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Îsarna"},
	Gender = "neuter"
})

DefineLanguageWord("Land", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 184.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Land", "Country"}, -- source gives the German "Land"
	DerivesFrom = {"proto-germanic", "noun", "Landa"},
	Gender = "neuter"
})

DefineLanguageWord("Léad", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 181.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Lead", "Cauldron"}, -- source gives the German "Blei, Kessel" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Lauda"},
	Gender = "neuter"
})

DefineLanguageWord("Leoðurun", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 124.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Sung Mistery"}
})

DefineLanguageWord("Mann", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, pp. 85-86, 89.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Person"},
	NumberCaseInflections = {
		"plural", "nominative", "Menn" -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 197.
	},
	Gender = "masculine"
})

DefineLanguageWord("Meaht", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Might"}, -- derived from Proto-Germanic "Maχtiz", which has the meaning of "Might"
	DerivesFrom = {"proto-germanic", "noun", "Maχtiz"}
})

DefineLanguageWord("Mearg", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Marrow"},
	DerivesFrom = {"proto-germanic", "noun", "Mazgaz"}
})

DefineLanguageWord("Mēd", { -- source also gives as an alternative the form "Meord"; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 7.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Reward", "Payment"},
	DerivesFrom = {"proto-germanic", "noun", "Mizdō"},
	Gender = "feminine"
})

DefineLanguageWord("Mennen", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 89.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Handmaid", "Female Slave"},
	Gender = "feminine"
})

DefineLanguageWord("Merisc", { -- Source: http://www.cnrtl.fr/definition/marais
	Language = "old-english",
	Type = "noun",
	Meanings = {"Mire", "Mud"}, -- source gives the French "bourbe, boue"
	DerivesFrom = {"proto-germanic", "noun", "Mari"}
})

DefineLanguageWord("Munuc", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 89.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Monk"},
	Gender = "masculine"
})

DefineLanguageWord("Mynecenu", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 89.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Nun"},
	Gender = "feminine"
})

DefineLanguageWord("Neaht", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 238; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Night"}
})

DefineLanguageWord("Nîwe", { -- source also gives the alternative form "néowe"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 153.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"New"}, -- source gives the German "neu" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Neuja"}
})

DefineLanguageWord("Norþ", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 152.
	Language = "old-english",
	Type = "adverb",
	Meanings = {"Northward", "North"}, -- source gives the German "nordwärts, nördlich" as the meaning
	DerivesFrom = {"proto-germanic", "adverb", "Nurþa"}
})

DefineLanguageWord("Ord", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Point", "Spearpoint"},
	DerivesFrom = {"proto-germanic", "noun", "Uzdaz"},
	Gender = "masculine"
})

DefineLanguageWord("Orlæg", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Fate"},
	Gender = "neuter"
})

DefineLanguageWord("Plegestre", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, pp. 77-78.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Athlete"},
	Gender = "feminine" -- presumably, given the source is talking about occupations for women
})

DefineLanguageWord("Ræ̂d", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 172.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Counsel", "Council", "Advice", "Resolution", "Plan", "Might", "Help", "Stance", "Condition", "Meaning", "Sense"}, -- source gives the German "Rat, Ratschlag, Entschluß, Plan, Macht, Hülfe, Stellung, Zustand, Bedeutung, Sinn"
	DerivesFrom = {"proto-germanic", "noun", "Rêda"},
	Gender = "masculine"
})

DefineLanguageWord("Ræsn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Plank", "Ceiling"},
	Gender = "neuter"
})

DefineLanguageWord("Reord", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Voice", "Sound", "Speech"},
	Gender = "feminine"
})

DefineLanguageWord("Rîca", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 174.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Ruler"}, -- source gives the German "Herrscher" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Rîka"}
})

DefineLanguageWord("Rîce", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 174.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Powerful", "Notable", "Rich"}, -- source gives the German "mächtig, vornehm, reich" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Rîka"}
})

DefineLanguageWord("Sǣd", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Seed"}, -- derived from the Proto-Germanic "Sēþiz", which means "Seed"
	DerivesFrom = {"proto-germanic", "noun", "Sēþiz"}
})

DefineLanguageWord("Sangestre", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, pp. 77-78.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Singer"},
	Gender = "feminine" -- presumably, given the source is talking about occupations for women
})

DefineLanguageWord("Sceadu", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Shadow"},
	DerivesFrom = {"proto-germanic", "noun", "Skadwas"}
})

DefineLanguageWord("Scernicge", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, pp. 77-78.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Actress"},
	Gender = "feminine"
})

DefineLanguageWord("Scîr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 233.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Service", "Shop", "Area"}, -- source gives the German "Dienst, Geschäft, Gebiet"
	DerivesFrom = {"proto-germanic", "noun", "Skîrô"},
	Gender = "feminine"
})

DefineLanguageWord("Sealticge", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, pp. 77-78.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Dancer"},
	Gender = "feminine" -- presumably, given the source is talking about occupations for women
})

DefineLanguageWord("Seolfor", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 221.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Silver"}, -- source gives the German "Silber" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Silubra"},
	Gender = "neuter"
})

DefineLanguageWord("Smiþ", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 263.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Smith", "Wheelwright"}, -- source gives the German "Schmied, Rademacher"
	DerivesFrom = {"proto-germanic", "noun", "Smiþu"}
})

DefineLanguageWord("Smiþian", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 264.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Work Metal", "Work Wood"}, -- source gives the German "in Metall oder Holz arbeiten" as the meaning
	DerivesFrom = {"proto-germanic", "verb", "Smîþôn"}
})

DefineLanguageWord("Smiþþe", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 264.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Smithy"}, -- source gives the German "Schmiede" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Smiþjôn"}
})

DefineLanguageWord("Snoru", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Daughter-in-Law"}
})

DefineLanguageWord("Sorg", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Worry"}, -- source (apparently) gives the German "Sorge" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Surgô"},
	Gender = "feminine"
})

DefineLanguageWord("Sorgian", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, pp. 223-224.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Worry"}, -- source gives the German "sorgen" as the meaning
	DerivesFrom = {"proto-germanic", "verb", "Surgên"}
})

DefineLanguageWord("Sperehealf", { -- also given as Sperehand; Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 197.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Spear-Side", "Patrilineal Ancestry"}
})

DefineLanguageWord("Spinelhealf", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 197.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Spindle-Side"}
})

DefineLanguageWord("Sunna", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Sun"}, -- derived from Proto-Germanic "Sunōn", which has the meaning of "Sun"
	DerivesFrom = {"proto-germanic", "noun", "Sunōn"}
})

DefineLanguageWord("Sûþ", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223.
	Language = "old-english",
	Type = "adverb",
	Meanings = {"Southward", "In the South"}, -- source gives the German "südwärts, im Süden" as the meaning
	DerivesFrom = {"proto-germanic", "adverb", "Sunþa"}
})

DefineLanguageWord("Swæger", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Mother-in-Law"}
})

DefineLanguageWord("Swīn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Pig"}, -- derived from the Proto-Germanic "Swīnaz", which means "Pig"
	DerivesFrom = {"proto-germanic", "noun", "Swīnaz"}
})

DefineLanguageWord("Þearm", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 97.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Intestine"}, -- source gives the German "Darm" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Þarma"},
	Gender = "masculine"
})

DefineLanguageWord("Þorp", { -- source also gives the alternative form "Þrop"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 100.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Manor", "Village"}, -- source gives the German "Landgut, Dorf" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Þurpa"},
	Gender = "masculine"
})

DefineLanguageWord("Þunorrad", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 169.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Peal of Thunder"} -- literally: "thunder-ride" or "Thunor-ride"
})

DefineLanguageWord("Twīn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 6.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Canvas", "Screen"}
})

DefineLanguageWord("Wâd", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 4.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Woad"}
})

DefineLanguageWord("Wægn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Wagon"}, -- derived from Proto-Germanic "Waganaz", which means "Wagon"
	DerivesFrom = {"proto-germanic", "noun", "Waganaz"}
})

DefineLanguageWord("Wælcyrige", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Sorceress"},
	Gender = "feminine"
})

DefineLanguageWord("Wæpnedmann", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 197.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Armed Person"}
})

DefineLanguageWord("Weg", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Way"}
})

DefineLanguageWord("Wer", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Man"},
	DerivesFrom = {"proto-indo-european", "noun", "Wiros"}
})

DefineLanguageWord("West", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 204.
	Language = "old-english",
	Type = "adverb",
	Meanings = {"West"}, -- source gives the German "West" as the meaning
	DerivesFrom = {"proto-germanic", "adverb", "Vesta"}
})

DefineLanguageWord("Wif", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 85.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Woman"},
	Gender = "neuter"
})

DefineLanguageWord("Wifmann", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 197.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Woman-Person"}
})

DefineLanguageWord("Wihte", { -- this is the plural; Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 102.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Being"},
	NumberCaseInflections = {
		"plural", "nominative", "Wihte"
	}
})

DefineLanguageWord("Wulf", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 209.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Wolf"}, -- source gives the German "Wolf"
	DerivesFrom = {"proto-germanic", "noun", "Vulfa"}
})

DefineLanguageWord("Aseowen", { -- this is the past participle; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 239.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Sifted"}, -- it seems like Aseowen corresponds to the English past participle of "sift" (the source says simply Aseowen = Sifted); maybe it is an adjective instead?
	-- infinitive form?
	Participles = {
		"past", "Aseowen"
	}
})

DefineLanguageWord("Bēodan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Sections 2, 4.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Bid", "Offer", "Order"},
	DerivesFrom = {"proto-germanic", "verb", "Beud"}
})

DefineLanguageWord("Beran", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-english",
	Type = "verb",
	Meanings = {},
	DerivesFrom = {"proto-germanic", "verb", "Beran"}
})

DefineLanguageWord("Bītan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Bite"},
	DerivesFrom = {"proto-germanic", "verb", "Bītan"}
})

DefineLanguageWord("Cēosan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 2.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Choose"}
	-- source also gives the forms "cēas", "curon" and "coren" (presumably conjugations of the verb)
})

DefineLanguageWord("Cēowan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 2.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Chew"}
	-- source also gives the forms "cēaw", "cuwon" and "cowen" (presumably conjugations of the verb)
})

DefineLanguageWord("Cuman", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Come"}
})

DefineLanguageWord("Etan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Eat"}
})

DefineLanguageWord("Gengan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 9.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Go", "Stride"}
})

DefineLanguageWord("Gereordian", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Feed", "Entertain", "Feast"}
})

DefineLanguageWord("Grīpan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 2.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Grab"}
	-- source also gives the forms "grāp", "gripon" and "gripen" (presumably conjugations of the verb)
})

DefineLanguageWord("Healdan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 238.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Hold"}
})

DefineLanguageWord("Helpan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Help"}
})

DefineLanguageWord("Hnīgan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Bow"},
	DerivesFrom = {"proto-indo-european", "verb", "Kneygʷh"}
})

DefineLanguageWord("Leornian", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Learn"}
})

DefineLanguageWord("Lǣran", { -- causative verb; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 5.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Teach"}
})

DefineLanguageWord("Nerian", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Save", "Protect"}
})

DefineLanguageWord("Niman", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Take", "Accept"},
	DerivesFrom = {"proto-indo-european", "verb", "Nem"}
})

DefineLanguageWord("Onlēon", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Lend"},
	DerivesFrom = {"proto-indo-european", "verb", "Leykʷ"},
	NumberPersonTenseMoodInflections = {
		"plural", "first-person", "past", "indicative", "Ligon" -- source actually gives "-ligon"; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	}
})

DefineLanguageWord("Rīdan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 9.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Travel"}
})

DefineLanguageWord("Sceadwian", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Shadow"}, -- "to shadow"
	DerivesFrom = {"proto-germanic", "noun", "Skadwas"}
})

DefineLanguageWord("Scrīfan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Write"}
})

DefineLanguageWord("Sēoðan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 2.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Boil"}
	-- source also gives the forms "sēað", "sudon" and "sodden" (presumably conjugations of the verb)
})

DefineLanguageWord("Sēon", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 238.
	Language = "old-english",
	Type = "verb",
	Meanings = {"See"},
	DerivesFrom = {"proto-indo-european", "verb", "Sekʷ"},
	NumberPersonTenseMoodInflections = {
		"singular", "first-person", "past", "indicative", "Sēah",
		"singular", "third-person", "past", "indicative", "Sēah", -- Runge gives "Seah" instead
		"plural", "first-person", "past", "indicative", "Sēgon" -- in the Anglian variety of Old English
--		"plural", "first-person", "past", "indicative", "Sāwon" -- in the West Saxon variety of Old English
	},
	Participles = {
		"past", "Gesegen" -- in the Anglian variety of Old English
--		"past", "Sewen" -- in the West Saxon variety of Old English
	}
})

DefineLanguageWord("Standan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Stand"}
})

DefineLanguageWord("Stīgan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Climb"},
	DerivesFrom = {"proto-germanic", "verb", "Steig"}
})

DefineLanguageWord("Táh", { -- this is the singular first person past; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Accuse"},
	NumberPersonTenseMoodInflections = {
		"singular", "first-person", "past", "indicative", "Táh",
		"plural", "first-person", "past", "indicative", "Tigon"
	}
})

DefineLanguageWord("Tēar", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Tear"}
})

DefineLanguageWord("Tēon", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Pull"}, -- derived from Proto-Germanic "Téuχanan", which has the meaning of "pull"
	DerivesFrom = {"proto-germanic", "verb", "Téuχanan"},
	NumberPersonTenseMoodInflections = {
		"singular", "third-person", "past", "indicative", "Tēah", -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
		"plural", "third-person", "past", "indicative", "Tugon" -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	}
})

DefineLanguageWord("Tiohhian", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 239.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Consider"}
})

DefineLanguageWord("Trūwian", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Trust"}
})

DefineLanguageWord("Wesan", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 110.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Be"},
	NumberPersonTenseMoodInflections = {
		"singular", "third-person", "present", "subjunctive", "Sy"
	}
})

DefineLanguageWord("Witan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Know"},
	DerivesFrom = {"proto-germanic", "verb", "Witum"},
	NumberPersonTenseMoodInflections = {
		"plural", "first-person", "present", "indicative", "Witom" -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	}
})

DefineLanguageWord("Ceorlisc", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 100.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Of a Churl", "Common"}
})

DefineLanguageWord("Cildisc", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 100.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Childish"}
})

DefineLanguageWord("Cwic", { -- source gives the word as "Cwic(u)"; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Alive"},
	DerivesFrom = {"proto-indo-european", "adjective", "Gʷīwos"}
})

DefineLanguageWord("Denisc", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 100.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Danish"}
})

DefineLanguageWord("Dēop", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Deep"}, -- derived from Proto-Germanic "Déwpaz", which has the meaning of "deep"
	DerivesFrom = {"proto-germanic", "adjective", "Déwpaz"}
})

DefineLanguageWord("Fūl", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Foul"}, -- derived from the Proto-Germanic "Fūla", which means "Foul"
	DerivesFrom = {"proto-germanic", "adjective", "Fūla"}
})

DefineLanguageWord("Geong", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Young"},
	DerivesFrom = {"proto-indo-european", "adjective", "Yehw"}
})

DefineLanguageWord("Gydig", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 94.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Possessed (by a God)"}
})

DefineLanguageWord("Hâlig", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 42.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Holy"}, -- source gives the German "heilig"
	DerivesFrom = {"proto-germanic", "adjective", "Hailaga"}
})

DefineLanguageWord("Long", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Long"}, -- derived from Proto-Germanic "Langaz", which means "Long"
	DerivesFrom = {"proto-germanic", "adjective", "Langaz"}
})

DefineLanguageWord("Māra", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"More"},
	DerivesFrom = {"proto-germanic", "adjective", "Mēria"},
	ComparisonDegreeInflections = {
		"superlative", "Māst"
	}
})

DefineLanguageWord("Mennisc", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 100.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Human"}
})

DefineLanguageWord("Rēad", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Red"},
	DerivesFrom = {"proto-indo-european", "adjective", "Rowdho"}
})

DefineLanguageWord("Sælig", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 94.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Happy", "Prosperous"}
})

DefineLanguageWord("Þyrre", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Dry"}, -- derived from Proto-Germanic "Þrsúz", which has the meaning of "dry"
	DerivesFrom = {"proto-germanic", "adjective", "Þrsúz"}
})

DefineLanguageWord("Werig", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 94.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Weary", "Tired", "Exhausted"}
})

DefineLanguageWord("Wod", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 96.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Frenzied", "Enraged", "Mad"}
})

DefineLanguageWord("Mē", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-english",
	Type = "pronoun",
	Meanings = {"Me"}, -- dative
	Dative = "Mē"
})

DefineLanguageWord("Wē", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-english",
	Type = "pronoun",
	Meanings = {"We"},
	Nominative = "Wē"
})

DefineLanguageWord("Mā", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-english",
	Type = "adverb",
	Meanings = {"More"}
})

DefineLanguageWord("Wel", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "old-english",
	Type = "adverb",
	Meanings = {"Well"}
})

DefineLanguageWord("Eþþa", { -- Also given as "Oþþe", are Eþþa and Oþþe two forms of "or" in Old English, or are they just different ways to write the same word in that language?; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "old-english",
	Type = "conjunction",
	Meanings = {"Or"}
})

DefineLanguageWord("Of", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "adposition",
	Meanings = {"From"}, -- derived from Proto-Germanic "Af", which means "From"
	DerivesFrom = {"proto-germanic", "adposition", "Af"}
})

DefineLanguageWord("Ofer", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "adposition",
	Meanings = {"Over"}, -- derived from the Proto-Germanic "Ufar", which means "Over"
	DerivesFrom = {"proto-germanic", "adposition", "Ufar"}
})

DefineLanguageWord("Wyrm", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 209.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Worm", "Maggot", "Adder", "Viper", "Serpent"}, -- source (apparently) gives the German "Wurm, Made, Natter, Schlange" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Vurma"},
	Gender = "masculine"
})

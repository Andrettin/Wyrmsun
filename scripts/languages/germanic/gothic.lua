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
--      (c) Copyright 2015-2020 by Andrettin
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

DefineLanguageWord("Af", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Type = "adposition",
	Meanings = {"From"}, -- derived from Proto-Germanic "Af", which means "From"
	DerivesFrom = {"proto-germanic", "adposition", "Af"}
})

DefineLanguageWord("Ahva", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 13.
	Language = "gothic",
	Type = "noun",
	Meanings = {"River"}, -- source gives the German "Fluß" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Ahvô"},
	Gender = "feminine"
})

DefineLanguageWord("Aihts", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Property"} -- source gives the German "Besitz"
})

DefineLanguageWord("Aihʷa", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Horse"},
	DerivesFrom = {"proto-indo-european", "noun", "Éḱwos"}
})

DefineLanguageWord("Ainlif", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 9.
	Language = "gothic",
	Type = "numeral",
	Number = 11
})

DefineLanguageWord("Áins", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.4.
	Language = "gothic",
	Type = "numeral",
	Number = 1, -- apparently
	DerivesFrom = {"proto-germanic", "numeral", "Aynos"}
})

DefineLanguageWord("Airmana", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 18.
	Language = "gothic",
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"proto-germanic", "noun", "Erman"}
})

DefineLanguageWord("Aírþa", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Earth"}, -- derived from Proto-Germanic "Erþō", which means "Earth"
	DerivesFrom = {"proto-germanic", "noun", "Erþō"}
})

DefineLanguageWord("Ais", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 11.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Ore", "Money"}, -- source gives the German "Erz, Geld" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Aiza"},
	NumberCaseInflections = {
		"singular", "genitive", "Aizis"
	}
})

DefineLanguageWord("Aiþþau", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "gothic",
	Type = "conjunction",
	Meanings = {"Or"}
})

DefineLanguageWord("Aiweins", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Lifetime"} -- seemingly etymologically, if not actually
})

DefineLanguageWord("Aiz", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Bronze"}
})

DefineLanguageWord("Aizasmiþa", { -- the latter part of this compound is derived from the Proto-Germanic noun "Smiþu"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, pp. 263-264.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Smith"}, -- source gives the German "Schmied"
	Gender = "masculine"
})

DefineLanguageWord("Alabrunsts", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "gothic",
	Type = "noun",
	Meanings = {}, -- source gives a Greek word as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Brundi"}, -- apparently
	Gender = "feminine"
})

DefineLanguageWord("Alan", { -- source also gives the alternative forms "Ôl" and "Alans"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 19.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Grow Up", "Nourish Oneself"}, -- source gives the German "aufwachsen, sich nähren" as the meaning
	DerivesFrom = {"proto-germanic", "verb", "Al"}
})

DefineLanguageWord("Alds", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.9.2b.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Age"}
})

DefineLanguageWord("Aljan", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 19.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Pull Up", "Fatten"}, -- source gives the German "aufziehen, mästen" as the meaning
	DerivesFrom = {"proto-germanic", "verb", "Al"},
	Participles = {
		"present", "Aliþs"
	}
})

DefineLanguageWord("Alþeis", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.9.2b; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 19.
	Language = "gothic",
	Type = "adjective",
	Meanings = {"Old"}, -- as given by Lehmann; Fick likewise gives the German "alt" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Alda"} -- as given by Fick
})

DefineLanguageWord("Aufto", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "gothic",
	Type = "adverb",
	Meanings = {"Perhaps"}
})

DefineLanguageWord("Áugō", { -- as given by Lehmann; Runge gives "augo" instead; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.4.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Eye"}, -- as given by both Lehmann and Runge
	DerivesFrom = {"proto-germanic", "noun", "Awgan"} -- as given by Lehmann
})

DefineLanguageWord("Auhsa", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 3.2.2.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Ox"},
	NumberCaseInflections = {
		"singular", "dative", "Auhsin",
		"plural", "nominative", "Auhsans",
		"plural", "genitive", "Auhsne"
	}
})

DefineLanguageWord("Auk", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "gothic",
	Type = "adverb",
	Meanings = {"Also"} -- source gives translation as the German word "auch"
})

DefineLanguageWord("Auso", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Ear"} -- seemingly etymologically, if not actually
})

DefineLanguageWord("Aviliudôn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 181.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Laud"}, -- source gives the German "lobsingen" as the meaning
	DerivesFrom = {"proto-germanic", "verb", "Leuþôn"} -- apparently
})

DefineLanguageWord("Aviliuþ", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 181.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Laud"}, -- source gives the German "Lobgesang" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Leuþa"}, -- apparently
	Gender = "neuter"
})

DefineLanguageWord("Avô", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 20.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Grandmother"}, -- source gives the German "Großmutter" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Avôn"},
	Gender = "feminine"
})

DefineLanguageWord("Bagms", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 134.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Tree"}, -- source gives the German "Baum" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Bagma"},
	Gender = "masculine"
})

DefineLanguageWord("Bairan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "gothic",
	Type = "verb",
	Meanings = {},
	DerivesFrom = {"proto-germanic", "verb", "Beran"},
	NumberPersonTenseMoodInflections = {
		"singular", "third-person", "past", "indicative", "Bar", -- correct?
		"plural", "third-person", "past", "indicative", "Baurun" -- correct?
	},
	Participles = {
		"past", "Baurans" -- correct?
	}
})

DefineLanguageWord("Baírgahei", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Mountainous Area"}, -- source gives "Berggegend" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Berga"},
	Gender = "feminine"
})

DefineLanguageWord("Bairiþ", { -- this is the singular third person present; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Bears"},
	-- infinitive form? maybe is the same word as "bairan", since the Latin cognate of "bairan", "ferō", means "I bear"
	NumberPersonTenseMoodInflections = {
		"singular", "third-person", "present", "indicative", "Bairiþ"
	}
})

DefineLanguageWord("Baurd", { -- the TLFi gives "(fotu-)baurd"; Fick gives "(fôtu-)baúrd" instead; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 135; Source: http://www.cnrtl.fr/definition/B%F6rde
	Language = "gothic",
	Type = "noun",
	Meanings = {"Small Bench", "Footstool"}, -- the TLFi gives the French "petit banc, tabouret" as the meaning; Fick gives the German "Foßbrett" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Burda"}, -- as given by Fick; the TLFi gives it as deriving from the Indo-European word "bhrdho-" (Source: http://www.cnrtl.fr/definition/bord)
	Gender = "neuter" -- as given by the TLFi and Fick
})

DefineLanguageWord("Baúrgs", { -- Donkin gives "Baurgs" instead; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137; Source: T. C. Donkin, "An Etymological Dictionary of the Romance Languages", 1864, p. 84.
	Language = "gothic",
	Type = "noun",
	Meanings = {"City", "Town"}, -- Fick gives "Stadt" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Burg"}, -- as given by Fick
	Gender = "feminine" -- as given by Fick
	-- Donkin (apparently) gives this word as coming "bairgan" (to shelter)
})

DefineLanguageWord("Beitan", { -- source gives ("(and-)beitan"); Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "gothic",
	Type = "verb",
	Meanings = {}, -- cognates have "bite" as their meaning
	DerivesFrom = {"proto-germanic", "verb", "Bītan"},
	NumberPersonTenseMoodInflections = {
		"singular", "third-person", "past", "indicative", "Andbait",
		"plural", "third-person", "past", "indicative", "Andbitan"
	},
	Participles = {
		"past", "Andbitans"
	}
})

DefineLanguageWord("Biudan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Sections 2-3.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Bid", "Offer", "Order"},
	DerivesFrom = {"proto-germanic", "verb", "Beud"},
	Participles = {
		"past", "Báuþ" -- "offered" / "ordered"
	}
})

DefineLanguageWord("Blôma", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 146.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Flower"}, -- source gives the German "Blume" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Blôma"},
	Gender = "masculine"
})

DefineLanguageWord("Bōka", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Book"}, -- derived from Proto-Germanic "Bōks"; the source has the meaning for that word as "'tablet' > 'book'", but it is not clear if it means that the meaning became book in the child languages of Proto-Germanic, or within the timespan of the language itself
	DerivesFrom = {"proto-germanic", "noun", "Bōks"}
})

DefineLanguageWord("Brannjan", { -- causative; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Burn"}, -- source gives the German "brennen" as the meaning
	DerivesFrom = {"proto-germanic", "verb", "Brannian"}
})

DefineLanguageWord("Brinnan", { -- strong verb; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Burn"}, -- source gives the German "brennen" as the meaning
	DerivesFrom = {"proto-germanic", "verb", "Brennan"}
})

DefineLanguageWord("Daddjan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.1.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Suckle"},
	DerivesFrom = {"proto-indo-european", "noun", "Dheʔ"}
})

DefineLanguageWord("Dags", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.4, 3.A.1; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 106.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Day"}, -- as given by Lehmann; Fick likewise gives the German "Tag" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Dag"}, -- as given by Lehmann and Fick
	Gender = "masculine" -- as given by Fick
})

DefineLanguageWord("Dails", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Part"}
})

DefineLanguageWord("Dauhtar", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Daughter"}
})

DefineLanguageWord("Daúr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.2, 2.7.2.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Door"},
	DerivesFrom = {"proto-germanic", "noun", "Dur"}
})

DefineLanguageWord("Dauþus", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Death"}
})

DefineLanguageWord("Diups", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Type = "adjective",
	Meanings = {"Deep"}, -- derived from Proto-Germanic "Déwpaz", which means "Deep"
	DerivesFrom = {"proto-germanic", "adjective", "Déwpaz"}
})

DefineLanguageWord("Dius", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Animal"}
})

DefineLanguageWord("Dōnawi", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.3.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Danube"}
})

DefineLanguageWord("Drauhtinassus", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 16.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Warfare"}
})

DefineLanguageWord("Drauhtinōn", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, pp. 4, 16.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Wage War", "War"}
})

DefineLanguageWord("Drauhtiwitōþ", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 16.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Warfare"}
})

DefineLanguageWord("Eisarn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 24.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Iron"}, -- source gives the German "Eisen" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Îsarna"},
	Gender = "neuter",
	Uncountable = true -- as a material, it is likely to be uncountable
})

DefineLanguageWord("Eisarneins", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 24.
	Language = "gothic",
	Type = "adjective",
	Meanings = {"Iron"}, -- source gives the German "Eisern" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Îsarna"}
})

DefineLanguageWord("Faihs", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "gothic",
	Type = "adjective",
	Meanings = {"Shining"}
})

DefineLanguageWord("Faíhu", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Cattle"},
	DerivesFrom = {"proto-germanic", "noun", "Fehu"}
})

DefineLanguageWord("Fairguni", { -- Source: H. Munro Chadwick, "The Oak and the Thunder-God", 1900, p. 25.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Mountain"}
})

DefineLanguageWord("Filu", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.2.
	Language = "gothic",
	Type = "adjective", -- correct? inferred from the meaning
	Meanings = {"Much"},
	DerivesFrom = {"proto-germanic", "adjective", "Filu"}
})

DefineLanguageWord("Fimf", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.1.
	Language = "gothic",
	Type = "numeral",
	Number = 5,
	DerivesFrom = {"proto-germanic", "numeral", "Fimfe"}
})

DefineLanguageWord("Fisks", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Fish"}
})

DefineLanguageWord("Flōdus", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Flood"}, -- derived from the Proto-Germanic "Flōduz", which means "Flood"
	DerivesFrom = {"proto-germanic", "noun", "Flōduz"}
})

DefineLanguageWord("Fōn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 3.2.1.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Fire"},
	DerivesFrom = {"proto-germanic", "noun", "Fōr"},
	NumberCaseInflections = {
		"singular", "dative", "Funin",
		"singular", "genitive", "Funins"
	}
})

DefineLanguageWord("Frijōndi", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 3.1.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Woman Friend"}
})

DefineLanguageWord("Frijōnds", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 3.1.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Friend"}
})

DefineLanguageWord("Friþa", { -- maybe is another form or an inflection of "Friþôn"? Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 128.
	Language = "gothic",
	Type = "noun", -- correct?
	Meanings = {},
	DerivesFrom = {"proto-germanic", "noun", "Friþu"}
})

DefineLanguageWord("Friþôn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 128.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Love", "Peace"}, -- source gives the German "Liebe, Friede"
	DerivesFrom = {"proto-germanic", "noun", "Friþu"}
})

DefineLanguageWord("Fugls", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.2.
	Language = "gothic",
	Type = "noun",
	Meanings = {}
})

DefineLanguageWord("Fūls", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Type = "adjective",
	Meanings = {"Foul"}, -- derived from the Proto-Germanic "Fūla", which means "Foul"
	DerivesFrom = {"proto-germanic", "adjective", "Fūla"}
})

DefineLanguageWord("Gadrauhts", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, pp. 4, 16.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Soldier"}
})

DefineLanguageWord("Gaits", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 9.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Goat"}
})

DefineLanguageWord("Gards", { -- the TLFi gives "Garda" instead; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2; Source: http://www.cnrtl.fr/definition/jardin
	Language = "gothic",
	Type = "noun",
	Meanings = {"Enclosure"}, -- the TLFi gives the French "clôture" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Gárdiz"}
})

DefineLanguageWord("Gasmiþôn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 264.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Forge", "Prepare"}, -- source gives the German "schmieden, bereiten" as the meaning
	DerivesFrom = {"proto-germanic", "verb", "Smîþôn"}
})

DefineLanguageWord("Gazds", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Prickle"},
	DerivesFrom = {"proto-germanic", "noun", "Gazdaz"},
	Gender = "masculine"
})

DefineLanguageWord("Ganasjan", { -- source gives "(ga)nasjan"; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Make Healthy", "Heal", "Rescue"}
})

DefineLanguageWord("Grēdags", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "gothic",
	Type = "adjective",
	Meanings = {"Hungry"},
	DerivesFrom = {"proto-germanic", "adjective", "Gred"}
})

DefineLanguageWord("Gudja", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 76.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Priest"}, -- source gives the German "Priester" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Gudjan"},
	Gender = "masculine"
})

DefineLanguageWord("Gulþ", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 73.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Gold"}, -- source gives the German "Gold" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Gulþa"},
	Gender = "neuter"
})

DefineLanguageWord("Guma", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.2, 3.2.3.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Man"},
	DerivesFrom = {"proto-germanic", "noun", "Gumō"},
	NumberCaseInflections = {
		"singular", "accusative", "Guman",
		"singular", "dative", "Gumin",
		"singular", "genitive", "Gumins",
		"plural", "nominative", "Gumans",
		"plural", "accusative", "Gumans",
		"plural", "dative", "Gumam",
		"plural", "genitive", "Gumanē"
	}
})

DefineLanguageWord("Guþ", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 76.
	Language = "gothic",
	Type = "noun",
	Meanings = {"God"}, -- source gives the German "Gott" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Guda"},
	Gender = "masculine",
	NumberCaseInflections = {
		"plural", "nominative", "Guda"
	}
})

DefineLanguageWord("Háidus", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 3.A.1.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Manner"}
})

DefineLanguageWord("Haims", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 52.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Village", "Hamlet"}, -- source gives the German "Dorf, Flecken" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Haima"},
	Gender = "feminine",
	NumberCaseInflections = {
		"plural", "nominative", "Haimôs"
	}
})

DefineLanguageWord("Hairto", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Heart"}
})

DefineLanguageWord("Halba", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 51.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Half", "Part", "Side"}, -- source (apparently) gives the German "Hälfte, Teil, Seite" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Halba"},
	Gender = "feminine"
})

DefineLanguageWord("Halbs", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 51.
	Language = "gothic",
	Type = "adjective",
	Meanings = {"Half"}, -- source gives the German "halb" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Halba"}
})

DefineLanguageWord("Halja", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 49.
	Language = "gothic",
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"proto-germanic", "noun", "Haljô"}
})

DefineLanguageWord("Hals", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 50.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Neck", "Throat"}, -- source gives the German "Hals" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Halsa"},
	Gender = "masculine"
})

DefineLanguageWord("Hardus", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 48.
	Language = "gothic",
	Type = "adjective",
	Meanings = {"Hard", "Strict"}, -- source gives the German "hart, streng" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Hardu"}
})

DefineLanguageWord("Harjis", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, pp. 4, 10.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Army"}
})

DefineLanguageWord("Haubiþ", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Main"} -- source gives German noun "Haupt" as transation
})

DefineLanguageWord("Hauhs", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 54.
	Language = "gothic",
	Type = "adjective",
	Meanings = {"High"}, -- Runge gives the German "hoch" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Hauha"} -- as given by Fick
})

DefineLanguageWord("Haúrds", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Wattle"}, -- derived from Proto-Germanic "Χŕdiz", which has the meaning of "wattle"
	DerivesFrom = {"proto-germanic", "noun", "Χŕdiz"}
})

DefineLanguageWord("Haurn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 47.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Horn"}, -- as given by Lehmann; Fick gives the German "Horn, Hornfrucht" instead
	DerivesFrom = {"proto-germanic", "noun", "Hurna"}, -- as given by Fick
	Gender = "neuter" -- as given by Fick
})

DefineLanguageWord("Hausjan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Hear"}
})

DefineLanguageWord("Hilms", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 49.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Helm", "Helmet"}, -- source gives the German "Helm" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Helma"}
})

DefineLanguageWord("Hilpan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Help"}
})

DefineLanguageWord("Hiri", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.1.
	Language = "gothic",
	Type = "verb", -- correct? source gave it as an interjection
	Meanings = {"Come Here"}
})

DefineLanguageWord("Hlaifs", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Bread"}
})

DefineLanguageWord("Hlaupan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Run"}
})

DefineLanguageWord("Hneiwan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Bow"},
	DerivesFrom = {"proto-indo-european", "verb", "Kneygʷh"}
})

DefineLanguageWord("Hûhrus", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 44.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Hunger"}, -- source gives the German "Hunger" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Hunhru"},
	Gender = "masculine"
})

DefineLanguageWord("Hunda", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.2.
	Language = "gothic",
	Type = "numeral", -- presumably
	DerivesFrom = {"proto-germanic", "numeral", "Χunda"}
})

DefineLanguageWord("Hunds", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Dog"}
})

DefineLanguageWord("Huzd", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Treasure"},
	DerivesFrom = {"proto-germanic", "noun", "Huzda"}
})

DefineLanguageWord("Hʷeits", { -- Fick gives "hveits" instead; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 67.
	Language = "gothic",
	Type = "adjective",
	Meanings = {"White"},
	DerivesFrom = {"proto-germanic", "adjective", "Hvîta"} -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 67.
})

DefineLanguageWord("Ist", { -- this is the singular first person present; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.1.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Is"},
	DerivesFrom = {"proto-germanic", "verb", "Isti"},
	NumberPersonTenseMoodInflections = {
		"singular", "first-person", "present", "indicative", "Ist"
	}
})

DefineLanguageWord("Itan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 1.3.1, 2.7.1.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Eat"},
	DerivesFrom = {"proto-germanic", "verb", "Etanan"} -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.1.
})

DefineLanguageWord("Izwis", { -- should be the nominative form; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 5, Subsection 1.
	Language = "gothic",
	Type = "pronoun",
	Meanings = {"You"}, -- second person plural
	-- what is the nominative form?
	Accusative = "Izwis",
	Dative = "Izwis"
})

DefineLanguageWord("Jēr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Year"}, -- derived from Proto-Germanic "Yēra", which means "Year"
	DerivesFrom = {"proto-germanic", "noun", "Yēra"}
})

DefineLanguageWord("Juggs", { -- Lehmann gives "Jugga-" instead; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "gothic",
	Type = "adjective",
	Meanings = {"Young"},
	DerivesFrom = {"proto-indo-european", "adjective", "Yehw"}
})

DefineLanguageWord("Kas", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Container"}
})

DefineLanguageWord("Kaúrn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Grain"}, -- derived from Proto-Germanic "Kŕnam", which has the meaning of "grain"
	DerivesFrom = {"proto-germanic", "noun", "Kŕnam"}
})

DefineLanguageWord("Kuni", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Race"},
	DerivesFrom = {"proto-germanic", "noun", "Kuni"}
})

DefineLanguageWord("Malan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Grind"},
	DerivesFrom = {"proto-indo-european", "verb", "Mel"}
})

DefineLanguageWord("Lagg", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Type = "adjective",
	Meanings = {"Long"}, -- derived from Proto-Germanic "Langaz", which means "Long"
	DerivesFrom = {"proto-germanic", "adjective", "Langaz"}
})

DefineLanguageWord("Laiba", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 187.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Remnant"}, -- source gives the German "Überbleibsel"
	DerivesFrom = {"proto-germanic", "noun", "Laibô"},
	Gender = "feminine"
})

DefineLanguageWord("Laílōt", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.1.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Let"}
})

DefineLanguageWord("Laisjan", { -- causative verb; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 4-5.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Teach"}
})

DefineLanguageWord("Land", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 184.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Land", "Country"}, -- source gives the German "Land"
	DerivesFrom = {"proto-germanic", "noun", "Landa"},
	Gender = "neuter"
})

DefineLanguageWord("Laun", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Pay"} -- source gives German word "Lohn" as transation
})

DefineLanguageWord("Laus", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "gothic",
	Type = "adjective",
	Meanings = {"Empty", "Loose"} -- source gives translation as the German words "los" and "leer"
})

DefineLanguageWord("Leihʷan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Lend"},
	DerivesFrom = {"proto-indo-european", "verb", "Leykʷ"},
	NumberPersonTenseMoodInflections = {
		"plural", "first-person", "past", "indicative", "Laihun" -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	}
})

DefineLanguageWord("Lein", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Linen"}
})

DefineLanguageWord("Liuga", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 8.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Marriage"}
})

DefineLanguageWord("Liuþareis", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 181.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Singer"}, -- source gives the German "Sänger" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Leuþa"}
})

DefineLanguageWord("Liuþôn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 181.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Sing"}, -- source gives the German "singen" as the meaning
	DerivesFrom = {"proto-germanic", "verb", "Leuþôn"}
})

DefineLanguageWord("Mahts", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Might"}, -- derived from Proto-Germanic "Maχtiz", which has the meaning of "Might"
	DerivesFrom = {"proto-germanic", "noun", "Maχtiz"}
})

DefineLanguageWord("Mais", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "gothic",
	Type = "adverb",
	Meanings = {"More"}
})

DefineLanguageWord("Maiza", { -- Lehmann gives "Máiza", while Runge gives "Maiza"; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, pp. 236, 242; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Type = "adjective",
	Meanings = {"More"}, -- perhaps a "determiner" class of words should be added?
	DerivesFrom = {"proto-germanic", "adjective", "Mēria"},
	ComparisonDegreeCaseInflections = {
		"comparative", "Maiza", -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
		"superlative", "Maists" -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	}
})

DefineLanguageWord("Manasēþs", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Type = "noun",
	Meanings = {} -- the "Sēþiz" Proto-Germanic word from which the "-sēþs" element in this word originates means "Seed"
})

DefineLanguageWord("Marka", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 160.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Mark", "Border", "Area"}, -- source gives the German "Marke, Grenze, Gebiet"
	DerivesFrom = {"proto-germanic", "noun", "Mark"},
	Gender = "feminine"
})

DefineLanguageWord("Mis", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "gothic",
	Type = "pronoun",
	Meanings = {"Me"}, -- dative
	Dative = "Mis"
})

DefineLanguageWord("Mizdon", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 7.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Reward"},
	DerivesFrom = {"proto-germanic", "noun", "Mizdō"},
	Gender = "feminine"
})

DefineLanguageWord("Nahts", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Night"}, -- derived from Proto-Germanic "Naχts", which means "Night"
	DerivesFrom = {"proto-germanic", "noun", "Naχts"}
})

DefineLanguageWord("Niman", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Take", "Accept"},
	DerivesFrom = {"proto-indo-european", "verb", "Nem"}
})

DefineLanguageWord("Niþjis", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 3.1.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Male Relative"}
})

DefineLanguageWord("Niþjō", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 3.1.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Female Relative"}
})

DefineLanguageWord("Niujus", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 153.
	Language = "gothic",
	Type = "adjective",
	Meanings = {"New"},	-- source gives the German "neu" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Neuja"}
})

DefineLanguageWord("Qiman", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Come"},
	DerivesFrom = {"proto-indo-european", "verb", "Gʷem"}
})

DefineLanguageWord("Qino", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Woman"},
	DerivesFrom = {"proto-indo-european", "noun", "Gʷen"}
})

DefineLanguageWord("Qius", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "gothic",
	Type = "adjective",
	Meanings = {"Alive"},
	DerivesFrom = {"proto-indo-european", "adjective", "Gʷīwos"}
})

DefineLanguageWord("Raíhts", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Type = "adjective",
	Meanings = {"Right", "Straight"}, -- derived from Proto-Germanic "Reχtaz", which means "Right, Straight"
	DerivesFrom = {"proto-germanic", "adjective", "Reχtaz"}
})

DefineLanguageWord("Ráudái", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "gothic",
	Type = "adjective",
	Meanings = {"Red"},
	DerivesFrom = {"proto-indo-european", "adjective", "Rowdho"}
})

DefineLanguageWord("Raus", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Tube"} -- seemingly etymologically, if not actually
})

DefineLanguageWord("Rauþs", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "gothic",
	Type = "adjective",
	Meanings = {"Red"}
})

DefineLanguageWord("Razda", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Voice", "Pronunciation", "Speech"},
	Gender = "feminine"
})

DefineLanguageWord("Razn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "gothic",
	Type = "noun",
	Meanings = {"House"},
	Gender = "neuter"
})

DefineLanguageWord("Reiki", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 174; Source: D. H. Green, "From Germania to Europe: the Evidence of Language and History", 1997, p. xxix.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Power", "Dominion", "Realm", "Empire"}, -- Fick gives the German "Macht, Herrschaft, Reich" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Rîkia"}, -- as given by Fick
	Gender = "neuter" -- as given by Fick
})

DefineLanguageWord("Reiks", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 174.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Ruler"}, -- source gives the German "Herrscher" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Rîka"}
})

DefineLanguageWord("Reiks", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 174; Source: http://www.cnrtl.fr/definition/riche
	Language = "gothic",
	Type = "adjective",
	Meanings = {"Powerful", "Notable"}, -- Fick gives the German "mächtig, vornehm" as the meaning, while the TLFi gives the French "puissant"
	DerivesFrom = {"proto-germanic", "adjective", "Rîka"} -- as given by Fick
})

DefineLanguageWord("Saihan", { -- Runge gives "Saihan", while Lehmann gives "Saíhʷan"; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241; Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "gothic",
	Type = "verb",
	Meanings = {"See"},
	DerivesFrom = {"proto-indo-european", "verb", "Sekʷ"}
})

DefineLanguageWord("Sair", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Wound"}
})

DefineLanguageWord("Saivs", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 221.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Lake"}, -- source gives the German "See, Bog" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Saivi"},
	Gender = "masculine"
})

DefineLanguageWord("Saiwala", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Soul"}
})

DefineLanguageWord("Sauhts", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Sickness"}
})

DefineLanguageWord("Saúrga", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Worry", "Grief"}, -- source gives the German "Sorge, Betrübnis" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Surgô"},
	Gender = "feminine"
})

DefineLanguageWord("Saúrgan", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, pp. 223-224.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Worry"}, -- source gives the German "sorgen" as the meaning
	DerivesFrom = {"proto-germanic", "verb", "Surgên"}
})

DefineLanguageWord("Sibja", { -- Source: H. Munro Chadwick, "The Oak and the Thunder-God", 1900, p. 25.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Relationship"}
})

DefineLanguageWord("Sibun", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "gothic",
	Type = "numeral",
	Number = 7
})

DefineLanguageWord("Sigis", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 214.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Victory"}, -- source gives the German "Sieg" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Segiz"},
	Gender = "neuter"
})

DefineLanguageWord("Siggwan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Sing"}, -- apparently, but not entirely clear from source
	DerivesFrom = {"proto-germanic", "verb", "Singwanan"}
})

DefineLanguageWord("Sihu", { -- source is unsure whether this is a writing mistake for "sigu"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 214.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Victory"}, -- source gives the German "Sieg" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Segiz"},
	Gender = "neuter"
})

DefineLanguageWord("Silubr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 221.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Silver"}, -- source gives the German "Silber" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Silubra"},
	Gender = "neuter"
})

DefineLanguageWord("Siuns", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Face"},
	DerivesFrom = {"proto-indo-european", "verb", "Sekʷ"}
})

DefineLanguageWord("Skadus", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Shadow"},
	DerivesFrom = {"proto-germanic", "noun", "Skadwas"}
})

DefineLanguageWord("Skeinan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Shine"}
})

DefineLanguageWord("Skildus", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 229.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Shield"}, -- source gives the German "Schild" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Skeldu"}
})

DefineLanguageWord("Skuggwa", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.1.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Mirror"},
	DerivesFrom = {"proto-indo-european", "verb", "Kwneχ"} -- presumably, since it is a cognate of Sanskrit "skunā́ti"
})

DefineLanguageWord("Speiwan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Spit"}
})

DefineLanguageWord("Stáins", { -- as given by Lehmann; Fick gives "stains" instead; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.4; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 245.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Stone"}, -- as given by Lehmann
	DerivesFrom = {"proto-germanic", "noun", "Staynas"}, -- as given by both Lehmann and Fick
	Gender = "masculine" -- as given by Fick
})

DefineLanguageWord("Standan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Stand"}
})

DefineLanguageWord("Stautan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Push"} -- source gives translation as the German word "stoßen"
})

DefineLanguageWord("Steigan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.2, 2.4, 2.7.1.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Climb"},
	DerivesFrom = {"proto-germanic", "verb", "Steig"},
	Participles = {
		"past", "Stáig"
	}
})

DefineLanguageWord("Sugil", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.2.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Sun"}
})

DefineLanguageWord("Sunnō", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Sun"}, -- derived from Proto-Germanic "Sunōn", which means "Sun"
	DerivesFrom = {"proto-germanic", "noun", "Sunōn"}
})

DefineLanguageWord("Swein", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Pig"}, -- derived from the Proto-Germanic "Swīnaz", which means "Pig"
	DerivesFrom = {"proto-germanic", "noun", "Swīnaz"}
})

DefineLanguageWord("Tagr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Tear"}
})

DefineLanguageWord("Taíhun", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.9.2b.
	Language = "gothic",
	Type = "numeral",
	Number = 10
})

DefineLanguageWord("Talzjan", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 86.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Lecture"}, -- source gives the German "belehren" as the meaning
	DerivesFrom = {"proto-germanic", "verb", "Talaz"}
})

DefineLanguageWord("Þaúrp", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 100.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Field"}, -- source gives the German "Feld" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Þurpa"},
	Gender = "neuter"
})

DefineLanguageWord("Þaúrsus", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Type = "adjective",
	Meanings = {"Dry"}, -- derived from Proto-Germanic "Þrsúz", which has the meaning of "dry"
	DerivesFrom = {"proto-germanic", "adjective", "Þrsúz"}
})

DefineLanguageWord("Þeihan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.1.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Thrive"},
	DerivesFrom = {"proto-germanic", "verb", "Þinχanan"}
})

DefineLanguageWord("Þiubs", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.4.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Thief"},
	DerivesFrom = {"proto-germanic", "noun", "Þewb"}
})

DefineLanguageWord("Þiuda", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 99.
	Language = "gothic",
	Type = "noun",
	Meanings = {"People"}, -- source gives the German "Volk" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Þeudô"},
	Gender = "feminine"
})

DefineLanguageWord("Þiudans", { -- Source: D. H. Green, "From Germania to Europe: the Evidence of Language and History", 1997, p. xxxi.
	Language = "gothic",
	Type = "noun",
	Meanings = {"King"}
})

DefineLanguageWord("Tigjus", { -- source gives "-tigjus"; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.9.2b.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Decade"}
})

DefineLanguageWord("Tiuhan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Pull"}, -- derived from Proto-Germanic "Téuχanan", which has the meaning of "pull"
	DerivesFrom = {"proto-germanic", "verb", "Téuχanan"}
})

DefineLanguageWord("Trauan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Trust"}
})

DefineLanguageWord("Triggws", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.1.
	Language = "gothic",
	Type = "adjective",
	Meanings = {"Faithful"}
})

DefineLanguageWord("Tunpus", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 84.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Tooth"}, -- source gives the German "Zahn" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Tanþ"},
	Gender = "masculine"
})

DefineLanguageWord("Twalif", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 9.
	Language = "gothic",
	Type = "numeral",
	Number = 12
})

DefineLanguageWord("Ufar", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.2, 2.7.2.
	Language = "gothic",
	Type = "adposition",
	Meanings = {"Over"},
	DerivesFrom = {"proto-germanic", "adposition", "Ufar"}
})

DefineLanguageWord("Untals", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 86.
	Language = "gothic",
	Type = "adjective",
	Meanings = {"Intractable", "Indocile"}, -- source gives the German "ungefügsam, ungelehrig" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Tala"} -- apparently, but not clear from source
})

DefineLanguageWord("Us", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
	Language = "gothic",
	Type = "adverb",
	Meanings = {"Out"}
})

DefineLanguageWord("Vulfs", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 209.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Wolf"}, -- source gives the German "Wolf"
	DerivesFrom = {"proto-germanic", "noun", "Wulfa"},
	Gender = "masculine"
})

DefineLanguageWord("Waihjō", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 4.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Battle", "War"}
})

DefineLanguageWord("Waíla", { -- Runge gives "Waila" instead; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.1.
	Language = "gothic",
	Type = "adverb",
	Meanings = {"Well", "Indeed"}, -- Runge gives "Well", while Lehmann gives "Indeed"
	DerivesFrom = {"proto-germanic", "adverb", "Wela"} -- as given by Lehmann
})

DefineLanguageWord("Waír", { -- at an earlier point the source gives "Wair" instead; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6, 2.7.1.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Man"},
	DerivesFrom = {"proto-indo-european", "noun", "Wiros"}
})

DefineLanguageWord("Wairþan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Become"}
})

DefineLanguageWord("Waúrms", { -- as given by Lehmann; Runge gives "waurms", while Fick gives "vaúrms" instead; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 3.A.1; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 209.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Worm", "Serpent"}, -- as given by Runge; Lehmann gives the meaning of "worm"; probably could be extended to mean "wyrm" as well
	DerivesFrom = {"proto-germanic", "noun", "Vurma"}, -- as given by Fick
	Gender = "masculine"
})

DefineLanguageWord("Weihan", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 4.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Fight"}
})

DefineLanguageWord("Weis", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 5, Subsection 1.
	Language = "gothic",
	Type = "pronoun",
	Meanings = {"We"},
	Nominative = "Weis"
})

DefineLanguageWord("Wigans", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 4.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Battle", "War"}
})

DefineLanguageWord("Wigs", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Way"}
})

DefineLanguageWord("Wilda", { -- this is the singular first person past; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.1.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Wished"},
	DerivesFrom = {"proto-germanic", "verb", "Wilda"},
	NumberPersonTenseMoodInflections = {
		"singular", "first-person", "past", "indicative", "Wilda" -- "I wished"
	}
})

DefineLanguageWord("Witan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241; Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 1.3.3, 2.7.1.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Know", "Keep Watch Over"},
	DerivesFrom = {"proto-germanic", "verb", "Witanan"},
	NumberPersonTenseMoodInflections = {
		"singular", "first-person", "present", "indicative", "Wáit", -- Lehmann 1.3.3 gives "Wait", while 2.6 in that same source gives "Wáit"; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
		"plural", "first-person", "present", "indicative", "Witum"
	}
})

-- compounds

DefineLanguageWord("Friþareiks", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 128.
	Language = "gothic",
	Type = "noun",
	Meanings = {},
	CompoundElements = {
		"prefix", "gothic", "noun", "Friþa",
		"suffix", "gothic", "noun", "Reiks" -- presumably; maybe the adjective written in the same manner is part of this compound instead
	}
	-- maybe it is a given name? it seems to correspond to "Friedrich"/"Frederick"
})


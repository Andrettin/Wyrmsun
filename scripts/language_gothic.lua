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
--      (c) Copyright 2015-2016 by Andrettin
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

DefineLanguageWord("Aljan", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 19.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Pull Up", "Fatten"}, -- source gives the German "aufziehen, mästen" as the meaning
	DerivesFrom = {"proto-germanic", "verb", "Al"},
	Participles = {
		"present", "Aliþs"
	}
})

DefineLanguageWord("Alþeis", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 19.
	Language = "gothic",
	Type = "adjective",
	Meanings = {"Old"}, -- source gives the German "alt" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Alda"}
})

DefineLanguageWord("Aufto", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "gothic",
	Type = "adverb",
	Meanings = {"Perhaps"}
})

DefineLanguageWord("Augo", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Eye"}
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

DefineLanguageWord("Dags", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Day"},
	DerivesFrom = {"proto-germanic", "noun", "Dag"}
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

DefineLanguageWord("Daúr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Door"}, -- derived from Proto-Germanic "Durez", which has the meaning of "door"
	DerivesFrom = {"proto-germanic", "noun", "Durez"}
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

DefineLanguageWord("Fotubaurd", { -- source gives "(fotu-)baurd"; Source: http://www.cnrtl.fr/definition/B%F6rde
	Language = "gothic",
	Type = "noun",
	Meanings = {"Small Bench", "Footstool"}, -- source gives the French "petit banc, tabouret" as the meaning
	DerivesFrom = {"proto-indo-european", "noun", "Bhrdho"}, -- Source: http://www.cnrtl.fr/definition/bord
	Gender = "neuter"
})

DefineLanguageWord("Friþôn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 128.
	Language = "gothic",
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"proto-germanic", "noun", "Friþu"}
})

DefineLanguageWord("Friþareiks", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 128.
	Language = "gothic",
	Type = "noun",
	Meanings = {}
	-- derived from the Proto-Germanic "Friþu", but apparently only for part of it (the noun seems to be a compound; maybe it is a given name? it seems to correspond to "Friedrich"/"Frederick")
})

DefineLanguageWord("Fūls", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Type = "adjective",
	Meanings = {"Foul"}, -- derived from the Proto-Germanic "Fūla", which means "Foul"
	DerivesFrom = {"proto-germanic", "adjective", "Fūla"}
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

DefineLanguageWord("Gulþ", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 73.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Gold"}, -- source gives the German "Gold" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Gulþa"},
	Gender = "neuter"
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

DefineLanguageWord("Hals", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 50.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Neck", "Throat"}, -- source gives the German "Hals" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Halsa"},
	Gender = "masculine"
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

DefineLanguageWord("Itan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Eat"}
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
	ComparisonDegreeInflections = {
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

DefineLanguageWord("Sibun", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "gothic",
	Type = "numeral",
	Number = 7
})

DefineLanguageWord("Siggwan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Sing"}, -- apparently, but not entirely clear from source
	DerivesFrom = {"proto-germanic", "verb", "Singwanan"}
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

DefineLanguageWord("Speiwan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Spit"}
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

DefineLanguageWord("Steigan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Sections 2, 4.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Climb"},
	DerivesFrom = {"proto-germanic", "verb", "Steig"},
	Participles = {
		"past", "Stáig"
	}
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

DefineLanguageWord("Þiuda", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 99.
	Language = "gothic",
	Type = "noun",
	Meanings = {"People"}, -- source gives the German "Volk" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Þeudô"},
	Gender = "feminine"
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

DefineLanguageWord("Twalif", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 9.
	Language = "gothic",
	Type = "numeral",
	Number = 12
})

DefineLanguageWord("Ufar", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Type = "adposition",
	Meanings = {"Over"}, -- derived from the Proto-Germanic "Ufar", which means "Over"
	DerivesFrom = {"proto-germanic", "adposition", "Ufar"}
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
	DerivesFrom = {"proto-germanic", "noun", "Vulfa"},
	Gender = "masculine"
})

DefineLanguageWord("Waila", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "gothic",
	Type = "adverb",
	Meanings = {"Well"}
})

DefineLanguageWord("Wair", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
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

DefineLanguageWord("Waurms", { -- Fick gives "Vaúrms" instead"; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 209.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Worm", "Serpent"}, -- probably could be extended to mean "wyrm" as well
	DerivesFrom = {"proto-germanic", "noun", "Vurma"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 209.
	Gender = "masculine"
})

DefineLanguageWord("Weis", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 5, Subsection 1.
	Language = "gothic",
	Type = "pronoun",
	Meanings = {"We"},
	Nominative = "Weis"
})

DefineLanguageWord("Wigs", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "gothic",
	Type = "noun",
	Meanings = {"Way"}
})

DefineLanguageWord("Witan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241; Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 3.
	Language = "gothic",
	Type = "verb",
	Meanings = {"Know", "Keep Watch Over"},
	DerivesFrom = {"proto-germanic", "verb", "Witum"},
	NumberPersonTenseMoodInflections = {
		"singular", "first-person", "present", "indicative", "Wáit", -- Lehmann 1.3.3 gives "Wait", while 2.6 in that same source gives "Wáit"; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
		"plural", "first-person", "present", "indicative", "Witum"
	}
})

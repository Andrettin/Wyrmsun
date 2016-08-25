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

DefineLanguageWord("Aba", { -- Lehmann also gives the alternative form "ab"; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Type = "adposition",
	Meanings = {"From"}, -- derived from the Proto-Germanic "Af", which means "From"
	DerivesFrom = {"proto-germanic", "adposition", "Af"}
})

DefineLanguageWord("Adal", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 14.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Lineage", "Noble Lineage", "Noble"}, -- source gives "Geschlecht, edles Geschlecht, Adel" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Aþala"},
	Gender = "masculine"
})

DefineLanguageWord("Adelâr", { -- could be a compound of "Adel" (noble) with "âr" (eagle); Source: http://www.cnrtl.fr/definition/al%C3%A9rion
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Noble Eagle"}
})

DefineLanguageWord("Alt", { -- source also gives the alternative form "altêr" (or is that the comparative?); Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 19.
	Language = "old-high-german",
	Type = "adjective",
	Meanings = {"Old"}, -- source gives the German "alt" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Alda"}
})

DefineLanguageWord("Altiron", { -- this is the plural; source also gives the alternative form "Eltiron"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 19.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Parents"}, -- source gives the German "Eltern" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Alda"},
	NumberCaseInflections = {
		"plural", "nominative", "Altiron"
	}
})

DefineLanguageWord("Amma", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 17.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Mother", "Wet Nurse", "Foster Mother"}, -- source gives the German "Mutter, Amme" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Ammôn"},
	Gender = "feminine"
})

DefineLanguageWord("Anafalz", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 124.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Anvil"}, -- source gives the German "Amboß" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Anafalta"},
	Gender = "masculine"
})

DefineLanguageWord("Bad", { -- source also gives the alternative form "Pad"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 133.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Bath", "Baths"}, -- source gives the German "Bad" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Baþa"},
	Gender = "neuter"
})

DefineLanguageWord("Bah", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 133.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Stream"}, -- source gives the German "Bach" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Baki"},
	Gender = "masculine"
})

DefineLanguageWord("Bart", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Beard"}, -- source gives the German "Bart" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Barda"},
	Gender = "masculine"
})

DefineLanguageWord("Barta", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"proto-germanic", "noun", "Barda"}
})

DefineLanguageWord("Bein", { -- source also gives the alternative form "pein"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 133.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Leg"}, -- source gives the German "Bein" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Baina"},
	Gender = "neuter"
})

DefineLanguageWord("Beran", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {},
	DerivesFrom = {"proto-germanic", "verb", "Beran"}
})

DefineLanguageWord("Berg", { -- source also gives the alternative forms "Berc", "Perc", "Perag" and "Perac"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Mountain", "Hill"}, -- source gives "Berg" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Berga"},
	Gender = "masculine"
})

DefineLanguageWord("Bero", { -- source also gives the alternative form "Pero"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Bear"}, -- source gives the German "Bär" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Beran"},
	Gender = "masculine"
})

DefineLanguageWord("Biotan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Bid", "Offer", "Order"},
	DerivesFrom = {"proto-germanic", "verb", "Beud"}
})

DefineLanguageWord("Birit", { -- this is the singular third person present form; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Bears"},
	-- infinitive form? maybe is the same word as "beran", since the Latin cognate of "beran", "ferō", means "I bear"
	NumberPersonTenseMoodInflections = {
		"singular", "third-person", "present", "indicative", "Birit"
	}
})

DefineLanguageWord("Biskerian", { -- Source: http://www.cnrtl.fr/definition/d%C3%A9chirer
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Deprive", "Frustrate", "Separate"} -- source gives the Latin (?) "privare, frustrare, separare" as the meaning
})

DefineLanguageWord("Bītan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Bite"}
})

DefineLanguageWord("Blāo", { -- the TLFi also gives the alternative form "blāwēr"; Fick gives "blâo, plâo" instead; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 147; Source: http://www.cnrtl.fr/definition/bleu
	Language = "old-high-german",
	Type = "adjective",
	Meanings = {"Blue"}, -- source (apparently) gives the German "blau" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Blêva"}
})

DefineLanguageWord("Blîo", { -- source also gives the alternative form "Plîo"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 148.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Lead"}, -- source gives the German "Blei" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Blîva"},
	Gender = "neuter",
	NumberCaseInflections = {
		"singular", "genitive", "Blîwes"
	}
})

DefineLanguageWord("Bluomo", { -- source also gives the alternative form "Pluomo", and the (feminine) alternative form "Bluoma"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 146.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Flower"}, -- source gives the German "Blume" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Blôma"},
	Gender = "masculine"
})

DefineLanguageWord("Bort", { -- Source: http://www.cnrtl.fr/definition/bord
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Edge", "Ridge", "Edge of a Ship"}, -- source gives the French "bord, arête; bord de navire" as the meaning
	DerivesFrom = {"proto-indo-european", "noun", "Bhrdho"}
})

DefineLanguageWord("Boum", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 134.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Tree"}, -- source gives the German "Baum" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Bagma"},
	Gender = "masculine"
})

DefineLanguageWord("Brant", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136; Source: http://www.cnrtl.fr/definition/brand
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Blaze", "Burning Log", "Sword", "Brand", "Sparkling Sword"}, -- Fick gives the German "Feuersbrunst, brennendes Holzscheit, Schwert", while the TLFi gives the French "tison" and "épée étincelante"
	DerivesFrom = {"proto-germanic", "noun", "Branda"}, -- apparently, as given by Fick
	Gender = "masculine" -- as given by Fick
})

DefineLanguageWord("Brart", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Edge", "Forepart of a Ship"},
	DerivesFrom = {"proto-germanic", "noun", "Bruzdaz"},
	Gender = "masculine"
})

DefineLanguageWord("Brennen", { -- causative; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Burn"}, -- source gives the German "brennen" as the meaning
	DerivesFrom = {"proto-germanic", "verb", "Brannian"}
})

DefineLanguageWord("Bret", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, pp. 135-136.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Board"}, -- source gives the German "Brett" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Burda"}
})

DefineLanguageWord("Brinnan", { -- strong verb; source also gives the alternative form "prinnan"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Burn", "Glow"}, -- source gives the German "brennen, glühen" as the meaning
	DerivesFrom = {"proto-germanic", "verb", "Brennan"}
})

DefineLanguageWord("Bronado", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Body Heat"}, -- source gives the German "Hitze im Körper"
	DerivesFrom = {"proto-germanic", "noun", "Brunaþan"}, -- apparently
	Gender = "masculine"
})

DefineLanguageWord("Brort", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Skewer", "Projectile", "Edge", "Rim", "Forepart of a Ship"},
	DerivesFrom = {"proto-germanic", "noun", "Bruzdaz"},
	Gender = "masculine"
})

DefineLanguageWord("Brukka", { -- Fick gives "prucca" and the alternative form "prucga" instead; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.2; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 145.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Bridge"}, -- as given by both Lehmann and Fick; Fick gives the German "Brücke" as the meaning
	Gender = "feminine", -- as given by Fick
	DerivesFrom = {"proto-germanic", "noun", "Brugjô"} -- as given by Fick
})

DefineLanguageWord("Brunst", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Burning", "Fire"}, -- source gives the German "Brennen, Brand"
	DerivesFrom = {"proto-germanic", "noun", "Brundi"}, -- apparently
	Gender = "feminine"
})

DefineLanguageWord("Buoh", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Book"}, -- derived from Proto-Germanic "Bōks"; the source has the meaning for that word as "'tablet' > 'book'", but it is not clear if it means that the meaning became book in the child languages of Proto-Germanic, or within the timespan of the language itself
	DerivesFrom = {"proto-germanic", "noun", "Bōks"}
})

DefineLanguageWord("Burg", { -- Fick also gives the alternative form "Purg"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137; Source: T. C. Donkin, "An Etymological Dictionary of the Romance Languages", 1864, p. 84.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Fortified Place", "Castle", "Palace", "City", "Town"}, -- Fick gives "befestigter Ort, Burg, Schloß, Stadt" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Burg"}, -- as given by Fick
	Gender = "feminine" -- as given by Fick
	-- Donkin gives this word as coming "bergan" (to shelter)
})

DefineLanguageWord("Busc", { -- Fick also gives the forms "Busk, Bosk" instead; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 143; Source: http://www.cnrtl.fr/definition/bois
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Bush", "Tuft", "Bouquet"}, -- source gives the German "Busch, Büschel, Strauß" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Buska"},
	Gender = "masculine"
})

DefineLanguageWord("Chien", { -- source also gives alternative forms "Kien" and "Kên"; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 4.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Resinous Wood"}
})

DefineLanguageWord("Chunni", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Race"},
	DerivesFrom = {"proto-germanic", "noun", "Kuni"}
})

DefineLanguageWord("Cneht", { -- source also gives the alternative form "chneht"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 27.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Boy", "Youth", "Young Warrior", "Servant", "Squire"}, -- source gives the German "Knabe, Jüngling, junger Krieger, Diener, Knecht, Knappe" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Knehta"}
})

DefineLanguageWord("Corn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Grain"}, -- derived from Proto-Germanic "Kŕnam", which has the meaning of "grain"
	DerivesFrom = {"proto-germanic", "noun", "Kŕnam"}
})

DefineLanguageWord("Coting", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 76.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Tribunal Head"} -- source gives the Latin "tribunus" and the German "priesterlicher Gerichtsvorsteher" as the meaning
})

DefineLanguageWord("Daram", { -- source also gives the alternative form "Darm"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 97.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Intestine"}, -- source gives the German "Darm" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Þarma"},
	Gender = "masculine",
	NumberCaseInflections = {
		"plural", "nominative", "Darama"
	}
})

DefineLanguageWord("Dīhan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.1.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Thrive"},
	DerivesFrom = {"proto-germanic", "verb", "Þinχanan"}
})

DefineLanguageWord("Diot", { -- source also gives the alternative form "Deot"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 99.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"People"}, -- source gives the German "Volk, Leute" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Þeudô"},
	Gender = "masculine" -- alternatively also neuter
})

DefineLanguageWord("Diota", { -- source also gives the alternative form "Deota"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 99.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"People"}, -- source gives the German "Volk, Leute" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Þeudô"},
	Gender = "feminine"
})

DefineLanguageWord("Dorf", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 100.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Village"}, -- source gives the German "Dorf" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Þurpa"},
	Gender = "neuter"
})

DefineLanguageWord("Drigil", { -- source also gives the alternative forms "dregil", "trikil" and "trigil"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 101.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Servant"}, -- source gives the German "Diener" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Þrahila"}
})

DefineLanguageWord("Durri", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Type = "adjective",
	Meanings = {"Dry"}, -- derived from Proto-Germanic "Þrsúz", which has the meaning of "dry"
	DerivesFrom = {"proto-germanic", "adjective", "Þrsúz"}
})

DefineLanguageWord("Eddo", { -- Also given as "Edo", are Eddo and Edo two forms of "or" in Old High German, or are they just different ways to write the same word in that language?; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "old-high-german",
	Type = "conjunction",
	Meanings = {"Or"}
})

DefineLanguageWord("Ēht", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Property"} -- source gives the German "Besitz"
})

DefineLanguageWord("Eiie", { -- this is the dative singular; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.1.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Egg"},
	NumberCaseInflections = {
		"singular", "dative", "Eiie"
	}
})

DefineLanguageWord("Elina", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.1.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Ell"}
})

DefineLanguageWord("Êr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 11.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Ore", "Iron"}, -- source gives the German "Erz" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Aiza"},
	Gender = "neuter"
})

DefineLanguageWord("Erda", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Earth"}, -- derived from Proto-Germanic "Erþō", which means "Earth"
	DerivesFrom = {"proto-germanic", "noun", "Erþō"}
})

DefineLanguageWord("Essa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 20.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Forge"}, -- source gives the German "Esse" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Asjôn"},
	Gender = "feminine"
})

DefineLanguageWord("Ezzan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 1.3.1, 2.7.1.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Eat"},
	DerivesFrom = {"proto-germanic", "verb", "Etanan"} -- as given by Lehmann
})

DefineLanguageWord("Fehu", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Cattle"},
	DerivesFrom = {"proto-germanic", "noun", "Fehu"}
})

DefineLanguageWord("Filu", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.2.
	Language = "old-high-german",
	Type = "adjective", -- correct? inferred from the meaning
	Meanings = {"Much"},
	DerivesFrom = {"proto-germanic", "adjective", "Filu"}
})

DefineLanguageWord("Fimf", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.1.
	Language = "old-high-german",
	Type = "numeral",
	Number = 5,
	DerivesFrom = {"proto-germanic", "numeral", "Fimfe"}
})

DefineLanguageWord("Fisk", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Fish"}
})

DefineLanguageWord("Fluot", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Flood"}, -- derived from the Proto-Germanic "Flōduz", which means "Flood"
	DerivesFrom = {"northwest-germanic", "noun", "Flodu"}
})

DefineLanguageWord("Fridu", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 128; Source: http://www.cnrtl.fr/definition/effrayer
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Peace", "Protection", "Security", "Enclosure"}, -- source gives the German "Friede, Schutz, Sicherheit, Einfriedigung" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Friþu"},
	Gender = "masculine"
})

DefineLanguageWord("Friia", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.1.
	Language = "old-high-german",
	Type = "adjective",
	Meanings = {"Free"},
	DerivesFrom = {"proto-indo-european", "adjective", "Pryx"}
})

DefineLanguageWord("Fugal", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.2.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {}
})

DefineLanguageWord("Fogal", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.2.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Bird"}
})

DefineLanguageWord("Fuir", { -- source also gives the alternate form "Fiur"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 127.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Fire"}, -- source gives "Feuer" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Fûir"},
	Gender = "neuter"
})

DefineLanguageWord("Fūl", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Type = "adjective",
	Meanings = {"Foul"}, -- derived from the Proto-Germanic "Fūla", which means "Foul"
	DerivesFrom = {"proto-germanic", "adjective", "Fūla"}
})

DefineLanguageWord("Fuoz", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Foot"}, -- derived from Proto-Germanic "Fōts", which has the meaning of "foot"
	DerivesFrom = {"proto-germanic", "noun", "Fōts"}
})

DefineLanguageWord("Furt", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, pp. 120-121.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Ford", "Path", "Riverbed"}, -- source gives the German "Furt, Weg, Flußbett" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Furdu"},
	Gender = "masculine"
})

DefineLanguageWord("Gart", { -- the TLFi also gives the alternative form "Garto"; is this the same word as the "Gart" which has another meaning detailed below? Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2; Source: http://www.cnrtl.fr/definition/jardin
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Garden"}, -- the TLFi gives the French "jardin" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Gárdiz"}
})

DefineLanguageWord("Gart", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Rod", "Prickle"},
	DerivesFrom = {"proto-germanic", "noun", "Gazdaz"}
})

DefineLanguageWord("Gisig", { -- related to Proto-Germanic "saig-vi", according to the source?; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 221.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Lake", "Bog"}, -- source gives the German "See, Sumpf" as the meaning
	Gender = "masculine" -- alternatively also neuter
})

DefineLanguageWord("Gisiht", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Sight"},
	DerivesFrom = {"proto-indo-european", "verb", "Sekʷ"}
})

DefineLanguageWord("Gizal", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 86.
	Language = "old-high-german",
	Type = "adjective",
	Meanings = {},
	DerivesFrom = {"proto-germanic", "noun", "Tala"} -- apparently, but not clear from source
})

DefineLanguageWord("Glanz", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 81.
	Language = "old-high-german",
	Type = "adjective",
	Meanings = {"Bright", "Shining"}, -- source gives the German "hell, glänzend" as the meaning
	DerivesFrom = {"proto-germanic", "verb", "Glent"}
})

DefineLanguageWord("Gnîtan", { -- source also gives the alternative form "knîtan"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 76.
	Language = "old-high-german",
	Type = "verb", -- a strong verb
	Meanings = {"Rub"}, -- source gives the German "reiben" as the meaning
	DerivesFrom = {"proto-germanic", "verb", "Gnid"}
})

DefineLanguageWord("Gold", { -- source also gives the alternative form "Cold"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 73.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Gold"}, -- source gives the German "Gold" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Gulþa"}
})

DefineLanguageWord("Gomo", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.2.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Man"},
	DerivesFrom = {"proto-germanic", "noun", "Gumn"}
})

DefineLanguageWord("Got", { -- Fick also gives the alternative form "Cot"; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.2; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 76.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"God"}, -- Fick gives the German "Gott" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Guda"} -- as given by Fick
})

DefineLanguageWord("Gota", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 76.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Godmother"}, -- source gives the German "Patin" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Gudjan"},
	Gender = "feminine"
})

DefineLanguageWord("Grâ", { -- source also gives the alternative form "crâ"; source also gives the inflected form "grâwer"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 79.
	Language = "old-high-german",
	Type = "adjective",
	Meanings = {"Gray"}, -- source gives the German "grau" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Grêva"}
})

DefineLanguageWord("Grîs", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 79.
	Language = "old-high-german",
	Type = "adjective",
	Meanings = {"Gray", "Old"}, -- source gives the German "grau, greis" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Grîsa"}
})

DefineLanguageWord("Gruoni", { -- source also gives the alternative form "cruoui"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 80.
	Language = "old-high-german",
	Type = "adjective",
	Meanings = {"Green"}, -- source gives the German "grün" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Grônia"}
})

DefineLanguageWord("Gruoti", { -- Source: http://www.cnrtl.fr/definition/gruyer
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Green"}, -- source gives the French "vert" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Grônia"} -- presumably, since the corresponding adjective does
})

DefineLanguageWord("Hagazussa", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 200.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Travelling Actor or Minstrel who Performs in Women's Clothing"},
	NumberCaseInflections = {
		"plural", "nominative", "Hagazussan"
	}
})

DefineLanguageWord("Halftanôd", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 51.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Half"}, -- source (apparently) gives the German "Hälfte" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Halba"}, -- comes from the (Proto-Germanic or Old High German?) verb "halftanôn"
	Gender = "neuter"
})

DefineLanguageWord("Halp", { -- source also gives the alternative form "halb"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 51.
	Language = "old-high-german",
	Type = "adjective",
	Meanings = {"Half"}, -- source gives the German "halb" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Halba"}
})

DefineLanguageWord("Halpa", { -- source also gives the alternative form "halba"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 51.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Side", "Direction"}, -- source gives the German "Seite, Richtung" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Halba"},
	Gender = "feminine"
})

DefineLanguageWord("Hals", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 50.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Neck", "Throat"}, -- source gives the German "Hals" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Halsa"},
	Gender = "masculine"
})

DefineLanguageWord("Hamar", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 46.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Hammer"}, -- source gives the German "Hammer" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Hamara"},
	Gender = "masculine"
})

DefineLanguageWord("Hart", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 48.
	Language = "old-high-german",
	Type = "adjective",
	Meanings = {"Strict", "Hefty", "Hard"}, -- source gives the German "streng, heftig, hart" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Hardu"}
})

DefineLanguageWord("Heilag", { -- source also gives the alternative form "heilac"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 42.
	Language = "old-high-german",
	Type = "adjective",
	Meanings = {"Holy"}, -- source gives the German "heilig"
	DerivesFrom = {"proto-germanic", "adjective", "Hailaga"}
})

DefineLanguageWord("Heim", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 52.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Home", "House"}, -- source gives the German "Haus, Heimat" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Haima"},
	Gender = "neuter"
})

DefineLanguageWord("Heima", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 52.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Home", "House"}, -- source gives the German "Haus, Heimat" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Haima"},
	Gender = "feminine"
})

DefineLanguageWord("Heimenân", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 52.
	Language = "old-high-german",
	Type = "adverb",
	Meanings = {"Home"}, -- source gives the German "aus der Heimat" as the meaning
	DerivesFrom = {"proto-germanic", "adverb", "Haimanô"} -- apparently
})

DefineLanguageWord("Heimi", { -- dative; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 52.
	Language = "old-high-german",
	Type = "adverb",
	Meanings = {"Home"}, -- source gives the German "zu Hause" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Haima"}, -- unclear if the word comes from this noun or from one of the related adverbs
	Dative = "Heimi"
})

DefineLanguageWord("Heimina", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 52.
	Language = "old-high-german",
	Type = "adverb",
	Meanings = {"Home"}, -- source gives the German "von Hause" as the meaning
	DerivesFrom = {"proto-germanic", "adverb", "Haimanô"} -- apparently
})

DefineLanguageWord("Heimisc", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 52.
	Language = "old-high-german",
	Type = "adjective",
	Meanings = {"Domestic"}, -- source gives the German "heimisch" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Haima"} -- apparently
})

DefineLanguageWord("Heira", { -- accusative; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 52.
	Language = "old-high-german",
	Type = "adverb",
	Meanings = {"Home"}, -- source gives the German "nach Hause" as the meaning
	DerivesFrom = {"proto-germanic", "adverb", "Haima"}, -- apparently
	Accusative = "Heira"
})

DefineLanguageWord("Helfan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Help"}
})

DefineLanguageWord("Helm", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 49; Source: http://www.cnrtl.fr/definition/heaume
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Helm", "Helmet"}, -- the TLFi gives the French "casque" as the meaning, while Fick gives the German "Helm"
	DerivesFrom = {"proto-germanic", "noun", "Helma"} -- as given by Fick
})

DefineLanguageWord("Herd", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 46.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Stove"}, -- source gives "Herd" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Herþa"},
	Gender = "masculine"
})

DefineLanguageWord("Herza", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Heart"}
})

DefineLanguageWord("Hiltja", { -- source also gives the alternative form "hilta"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 50.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Fight", "Conflict"}, -- source gives the German "Kampf" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Heldî"}
})

DefineLanguageWord("Hleib", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Bread"}
})

DefineLanguageWord("Hnīgan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Bow"},
	DerivesFrom = {"proto-indo-european", "verb", "Kneygʷh"}
})

DefineLanguageWord("Hnuz̨", { -- source also gives the alternative form "Nuz̨"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 58.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Nut"}, -- source gives the German "Nuß"
	DerivesFrom = {"proto-germanic", "noun", "Hnut"},
	Gender = "feminine",
	NumberCaseInflections = {
		"plural", "nominative", "Nuz̨z̨i"
	}
})

DefineLanguageWord("Hōh", { -- Fick gives "hôh" instead; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 54.
	Language = "old-high-german",
	Type = "adjective",
	Meanings = {"High"}, -- Runge gives the German "hoch" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Hauha"} -- as given by Fick
})

DefineLanguageWord("Hōren", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Hear"}
})

DefineLanguageWord("Horn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 47.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Horn", "Preeminent Peak"}, -- source (apparently) gives the German "Horn, hervorragende Spitze"
	DerivesFrom = {"northwest-germanic", "noun", "Horna"}, -- presumably
	Gender = "neuter"
})

DefineLanguageWord("Hort", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Treasure"},
	DerivesFrom = {"proto-germanic", "noun", "Huzda"}
})

DefineLanguageWord("Houbit", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Main"} -- source gives German noun "Haupt" as the translation
})

DefineLanguageWord("Hundert", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.2.
	Language = "old-high-german",
	Type = "numeral", -- presumably
	DerivesFrom = {"proto-germanic", "numeral", "Χunda"}
})

DefineLanguageWord("Hungar", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 44.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Hunger"}, -- source gives the German "Hunger" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Hunhru"},
	Gender = "masculine"
})

DefineLanguageWord("Hunt", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Dog"}
})

DefineLanguageWord("Hurd", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Wattle"}, -- derived from Proto-Germanic "Χŕdiz", which means "wattle"
	DerivesFrom = {"proto-germanic", "noun", "Χŕdiz"}
})

DefineLanguageWord("Hwerfan", { -- source also gives the alternative form "hwerban"; Source: http://www.cnrtl.fr/definition/barguigner
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Turn", "Return", "Practice a Profession"} -- source gives the French "se tourner, s'en retourner, exercer (une profession)" as the meaning
})

DefineLanguageWord("Irmindeot", { -- the first part of this compound derives from the Proto-Germanic noun "Erman"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 18.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Wide Earth"} -- source gives the German "die weite Erde"
})

DefineLanguageWord("Îsarn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 24.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Iron"}, -- source gives the German "Eisen" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Îsarna"},
	Gender = "neuter"
})

DefineLanguageWord("Ist", { -- this is the singular first person present; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.1.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Is"},
	DerivesFrom = {"proto-germanic", "verb", "Isti"},
	NumberPersonTenseMoodInflections = {
		"singular", "first-person", "present", "indicative", "Ist"
	}
})

DefineLanguageWord("Jār", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Year"}, -- derived from Proto-Germanic "Yēra", which means "Year"
	DerivesFrom = {"proto-germanic", "noun", "Yēra"}
})

DefineLanguageWord("Jugund", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.2.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Youth"}
})

DefineLanguageWord("Jung", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-high-german",
	Type = "adjective",
	Meanings = {"Young"},
	DerivesFrom = {"proto-indo-european", "adjective", "Yehw"}
})

DefineLanguageWord("Karal", { -- source also gives the alternative form "karl"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 29.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Man", "Husband", "Paramour"}, -- source gives the German "Mann, Ehemann, Buhle" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Karla"}
})

DefineLanguageWord("Kind", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 27.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Child"}, -- source gives the German "Kind" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Kenþa"},
	Gender = "neuter"
})

DefineLanguageWord("Kōl", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Cabbage"}
})

DefineLanguageWord("Kuning", { -- source also gives the alternative form "chuninc"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 27.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"King"}, -- source gives the German "König" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Kuninga"}
})

DefineLanguageWord("Kweman", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Come"}, -- apparently, but not entirely clear from the source
	DerivesFrom = {"proto-germanic", "verb", "Kwemanan"}
})

DefineLanguageWord("Lang", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Type = "adjective",
	Meanings = {"Long"}, -- derived from Proto-Germanic "Langaz", which means "Long"
	DerivesFrom = {"proto-germanic", "adjective", "Langaz"}
})

DefineLanguageWord("Lant", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 184.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Land", "Country"}, -- source gives the German "Land"
	DerivesFrom = {"proto-germanic", "noun", "Landa"},
	Gender = "neuter",
	NumberCaseInflections = {
		"singular", "genitive", "Lantes" -- source also gives the alternative form "Landes"
	}
})

DefineLanguageWord("Lēren", { -- causative verb; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 4.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Teach"}
})

DefineLanguageWord("Lernēn", { -- source also gives "Lirnēn" as an alternative; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Learn"}
})

DefineLanguageWord("Līhan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Lend"},
	DerivesFrom = {"proto-indo-european", "verb", "Leykʷ"},
	NumberPersonTenseMoodInflections = {
		"plural", "first-person", "past", "indicative", "Liwum" -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	}
})

DefineLanguageWord("Liod", { -- source also gives the alternative form "lioth"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 181.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Song"}, -- source gives the German "Lied" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Leuþa"},
	Gender = "neuter"
})

DefineLanguageWord("Liudôn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 181.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Sing"}, -- source (apparently) gives the German "singen" as the meaning
	DerivesFrom = {"proto-germanic", "verb", "Leuþôn"}
})

DefineLanguageWord("Lōn", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Pay"} -- source gives German word "Lohn" as transation
})

DefineLanguageWord("Lōs", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Type = "adjective",
	Meanings = {"Empty", "Loose"} -- source gives translation as the German words "los" and "leer"
})

DefineLanguageWord("Loufan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Run"}
})

DefineLanguageWord("Mago", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 156.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Stomach"}, -- source gives the German "Magen" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Magan"},
	Gender = "masculine"
})

DefineLanguageWord("Maht", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Might"}, -- derived from Proto-Germanic "Maχtiz", which means "Might"
	DerivesFrom = {"proto-germanic", "noun", "Maχtiz"}
})

DefineLanguageWord("Malan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Grind"},
	DerivesFrom = {"proto-indo-european", "verb", "Mel"}
})

DefineLanguageWord("Marc", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Marrow"},
	DerivesFrom = {"proto-germanic", "noun", "Mazgaz"},
	NumberCaseInflections = {
		"singular", "genitive", "Marges" -- source also gives the alternative form "Marages"
	}
})

DefineLanguageWord("Marca", { -- source also gives the alternative form "Marcha"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 160.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Border", "Borderland", "District", "Forest"}, -- source gives the German "Grenze, Grenzland, Bezirk, Wald"
	DerivesFrom = {"proto-germanic", "noun", "Mark"},
	Gender = "feminine"
})

DefineLanguageWord("Meisa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 155; Source: http://www.cnrtl.fr/definition/m%C3%A9sange
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Tit", "Titmouse"}, -- Fick gives the German "Meise" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Maisôn"}, -- as given by Fick
	Gender = "feminine" -- as given by Fick
})

DefineLanguageWord("Mēr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-high-german",
	Type = "adverb",
	Meanings = {"More"}
})

DefineLanguageWord("Mēro", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Type = "adjective",
	Meanings = {"More"}, -- perhaps a "determiner" class of words should be added?
	DerivesFrom = {"proto-germanic", "adjective", "Mēria"},
	ComparisonDegreeCaseInflections = {
		"comparative", "Mēro", -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
		"superlative", "Mēst" -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	}
})

DefineLanguageWord("Mēta", { -- source also gives as alternatives the forms "Miata" and "Mieta"; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Reward", "Payment"},
	DerivesFrom = {"proto-germanic", "noun", "Mizdō"}
})

DefineLanguageWord("Mir", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-high-german",
	Type = "pronoun",
	Meanings = {"Me"}, -- dative
	Dative = "Mir"
})

DefineLanguageWord("Munt", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 167.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Hand", "Protection", "Tutelage"}, -- source gives the German "Hand, Schutz, Bevormundung" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Mundô"},
	Gender = "feminine"
})

DefineLanguageWord("Nacho", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.2.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Boat"}
})

DefineLanguageWord("Naht", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Night"}, -- derived from Proto-Germanic "Naχts", which means "Night"
	DerivesFrom = {"proto-germanic", "noun", "Naχts"}
})

DefineLanguageWord("Nara", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Salvation", "Rescue", "Nourishment", "Sustenance"}, -- meaning given for Middle High German, but not for Old High German, presumably because both are the same
	Gender = "feminine"
})

DefineLanguageWord("Nerjan", { -- source also gives alternative forms "Nerren" and "Neren"; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Heal", "Sustain the Life of", "Save", "Protect", "Nourish"} -- meaning given for Middle High German, but not for Old High German, presumably because both are the same
})

DefineLanguageWord("Nest", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.1.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Nest"},
	DerivesFrom = {"proto-germanic", "noun", "Nistǒs"}
})

DefineLanguageWord("Niuwi", { -- source also gives the alternative form "niwi"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 153.
	Language = "old-high-german",
	Type = "adjective",
	Meanings = {"New"}, -- source gives the German "neu" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Neuja"}
})

DefineLanguageWord("Nord", { -- source also gives the alternative form "Nort"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 152.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"North"}, -- source gives the German "Norden" as the meaning
	DerivesFrom = {"proto-germanic", "adverb", "Nurþa"},
	Gender = "neuter"
})

DefineLanguageWord("Ôheim", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 20.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Uncle"}, -- source (apparently) gives the German "Oheim, Ohm" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Avan"}
})

DefineLanguageWord("Orlac", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Fate"},
	Gender = "masculine"
})

DefineLanguageWord("Ort", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Point", "Corner", "Edge of a Part", "Edge of a Piece", "Edge of a Small Coin"},
	DerivesFrom = {"proto-germanic", "noun", "Uzdaz"},
	Gender = "masculine"
})

DefineLanguageWord("Ôstan", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 12.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"East"}, -- source gives the German "Osten" as the meaning
	DerivesFrom = {"proto-germanic", "adverb", "Austanô"},
	Gender = "masculine"
})

DefineLanguageWord("Ôstana", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 12.
	Language = "old-high-german",
	Type = "adverb",
	Meanings = {"From the East", "In the East", "To the East"}, -- source gives the German "von Osten, im Osten, nach Osten" as the meaning
	DerivesFrom = {"proto-germanic", "adverb", "Austanô"}
})

DefineLanguageWord("Ôstar", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 12.
	Language = "old-high-german",
	Type = "adjective",
	Meanings = {},
	DerivesFrom = {"proto-germanic", "adverb", "Austa"}
})

DefineLanguageWord("Ôstar", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 12.
	Language = "old-high-german",
	Type = "adverb",
	Meanings = {},
	DerivesFrom = {"proto-germanic", "adverb", "Austa"}
})

DefineLanguageWord("Ouga", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Eye"}
})

DefineLanguageWord("Ouh", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "old-high-german",
	Type = "adverb",
	Meanings = {"Also"} -- source gives translation as the German word "auch"
})

DefineLanguageWord("Pfeife", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Pipe"}
})

DefineLanguageWord("Queh", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.2.
	Language = "old-high-german",
	Type = "adjective",
	Meanings = {"Alive"}
})

DefineLanguageWord("Queman", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Come"},
	DerivesFrom = {"proto-indo-european", "verb", "Gʷem"}
})

DefineLanguageWord("Rarta", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 10.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Voice", "Modulation"},
	Gender = "feminine"
})

DefineLanguageWord("Rât", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 172.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Counsel", "Council", "Advice", "Indoctrination", "Consultation", "Consideration", "Resolution", "Intention", "Attack", "Provision", "Supply"}, -- source gives the German "Rat, Ratschlag, Belehrung, Beratung, Überlegung, Entschluß, Absicht, Anschlag, Vorsorge, Vorrat"
	DerivesFrom = {"proto-germanic", "noun", "Rêda"},
	Gender = "masculine"
})

DefineLanguageWord("Reht", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Type = "adjective",
	Meanings = {"Right", "Straight"}, -- derived from Proto-Germanic "Reχtaz", which means "Right, Straight"
	DerivesFrom = {"proto-germanic", "adjective", "Reχtaz"}
})

DefineLanguageWord("Rîchi", { -- Fick also gives the alternative forms "rîhhi" and "rîche"; Green gives as "rîchi"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 174; Source: D. H. Green, "From Germania to Europe: the Evidence of Language and History", 1997, p. xxix.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Dominion", "Realm", "Empire", "Authority"}, -- Fick gives the German "Herrschaft, Reich, Obrigkeit" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Rîkia"}, -- as given by Fick
	Gender = "neuter" -- as given by Fick
})

DefineLanguageWord("Rîchi", { -- Fick also gives the alternative form "rîhhi"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 174; Source: http://www.cnrtl.fr/definition/riche
	Language = "old-high-german",
	Type = "adjective",
	Meanings = {"Powerful", "Notable", "Rich", "Magnificent", "Splendid"}, -- Fick gives the German "mächtig, vornehm, reich, prächtig, herrlich" as the meaning, while the TLFi gives the French "puissant"
	DerivesFrom = {"proto-germanic", "adjective", "Rîka"} -- as given by Fick
})

DefineLanguageWord("Rîchisôn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 174.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Rule"}, -- source gives the German "herrschen" as the meaning
	DerivesFrom = {"proto-germanic", "verb", "Rîkisôn"}
})

DefineLanguageWord("Rōt", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Type = "adjective",
	Meanings = {"Red"}
})

DefineLanguageWord("Saga", { -- source also gives the alternative form "sega"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 213.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Saw"}, -- source gives the German "Säge" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Sagô"},
	Gender = "feminine"
})

DefineLanguageWord("Sāt", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Seed"}, -- derived from the Proto-Germanic "Sēþiz", which means "Seed"
	DerivesFrom = {"proto-germanic", "noun", "Sēþiz"}
})

DefineLanguageWord("Scilt", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 229.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Shield"}, -- source gives the German "Schild" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Skeldu"},
	Gender = "masculine",
	NumberCaseInflections = {
		"plural", "nominative", "Scilti" -- alternatively also "schiltâ"
	}
})

DefineLanguageWord("Scîra", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 233.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Procurement", "Shop"}, -- source gives the German "Besorgung, Geschäft"
	DerivesFrom = {"proto-germanic", "noun", "Skîrô"},
	Gender = "feminine"
})

DefineLanguageWord("Scrīban", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Write"}
})

DefineLanguageWord("Sehan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"See"},
	DerivesFrom = {"proto-indo-european", "verb", "Sekʷ"},
	NumberPersonTenseMoodInflections = {
		"singular", "first-person", "past", "indicative", "Sah",
		"singular", "third-person", "past", "indicative", "Sah",
		"plural", "first-person", "past", "indicative", "Sāhum"
	},
	Participles = {
		"past", "Gisewan"
	}
})

DefineLanguageWord("Sêu", { -- source also gives the alternative forms "sêo" and "sê"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 221.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Lake"}, -- source gives the German "See" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Saivi"},
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Sêwes"
	}
})

DefineLanguageWord("Sēula", { -- source also gives "Sēla"; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Soul"}
})

DefineLanguageWord("Sibun", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "old-high-german",
	Type = "numeral",
	Number = 7
})

DefineLanguageWord("Sigu", { -- source also gives the alternative forms "sigo", "sigi" and "siki"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 214.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Victory"}, -- source (apparently) gives the German "Sieg" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Segiz"},
	Gender = "masculine"
})

DefineLanguageWord("Silabar", { -- source also gives the alternative forms "Silapar" and "Silbar"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 221.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Silver"}, -- source gives the German "Silber" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Silubra"},
	Gender = "neuter"
})

DefineLanguageWord("Sippa", { -- Source: H. Munro Chadwick, "The Oak and the Thunder-God", 1900, p. 25.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Relationship", "Friendship", "Peace"}
})

DefineLanguageWord("Skatewen", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Shadow"}, -- "to shadow"
	DerivesFrom = {"proto-germanic", "noun", "Skadwas"}
})

DefineLanguageWord("Skato", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Shadow"},
	DerivesFrom = {"proto-germanic", "noun", "Skadwas"}
})

DefineLanguageWord("Skuwo", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.1.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Shadow"},
	DerivesFrom = {"proto-indo-european", "verb", "Kwneχ"} -- presumably, since it is a cognate of Sanskrit "skunā́ti"
})

DefineLanguageWord("Smaidar", { -- source also gives the alternative form "smeidar"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, pp. 263-264.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Artist"}, -- source gives the Latin "artifex"
	DerivesFrom = {"proto-germanic", "noun", "Smaiþra"},
	Gender = "masculine"
})

DefineLanguageWord("Smid", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, pp. 263-264.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Smith", "Skilled Metalworker"}, -- source gives the German "Schmied, (kunstfertiger) Arbeiter in Metall"
	DerivesFrom = {"proto-germanic", "noun", "Smiþu"},
	Gender = "masculine"
})

DefineLanguageWord("Smidôn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 264.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Forge"}, -- source gives the German "schmieden" as the meaning
	DerivesFrom = {"proto-germanic", "verb", "Smîþôn"}
})

DefineLanguageWord("Smiththa", { -- source also gives the alternative forms "smitta", "smidda" and "smida"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 264.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Smithy"}, -- source gives the German "Schmiede" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Smiþjôn"}
})

DefineLanguageWord("Snura", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Daughter-in-Law"}
})

DefineLanguageWord("Sorga", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Worry"}, -- source gives the German "Sorge" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Surgô"},
	Gender = "feminine"
})

DefineLanguageWord("Sorgên", { -- source also gives the alternative form "sworgên"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, pp. 223-224.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Worry"}, -- source gives the German "sorgen" as the meaning
	DerivesFrom = {"proto-germanic", "verb", "Surgên"}
})

DefineLanguageWord("Speck", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.2.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Bacon"},
	DerivesFrom = {"proto-indo-european", "noun", "Spyxwon"} -- apparently
})

DefineLanguageWord("Standan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Stand"}
})

DefineLanguageWord("Staphal", { -- source also gives the alternative forms "staffal" and "stafol"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 241.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Tier", "Foot Stand"}, -- source gives the German "Stufe, Fußgestell" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Stapula"},
	Gender = "masculine"
})

DefineLanguageWord("Stein", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 245.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Stone"}, -- source gives the German "Stein" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Staina"},
	Gender = "masculine"
})

DefineLanguageWord("Stīgan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.2, 2.7.1.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Climb"},
	DerivesFrom = {"proto-germanic", "verb", "Steig"},
	Participles = {
		"past", "Steig"
	}
})

DefineLanguageWord("Stōzan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Push"} -- source gives translation as the German word "stoßen"
})

DefineLanguageWord("Suht", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Sickness"}
})

DefineLanguageWord("Sumar", { -- Fick also gives the alternative form "Sumer"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223; Source: http://www.cnrtl.fr/definition/sombre//3
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Summer"}, -- Fick gives the German "Sommer" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Sumara"}, -- as given by Fick
	Gender = "masculine" -- as given by Fick
})

DefineLanguageWord("Sundar", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"South"}, -- source gives the German "Süden" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Sunþa"}
})

DefineLanguageWord("Sunno", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Sun"}, -- derived from Proto-Germanic "Sunōn", which has the meaning of "Sun"
	DerivesFrom = {"proto-germanic", "noun", "Sunōn"}
})

DefineLanguageWord("Swigar", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Mother-in-Law"}
})

DefineLanguageWord("Swīn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Pig"}, -- derived from the Proto-Germanic "Swīnaz", which means "Pig"
	DerivesFrom = {"proto-germanic", "noun", "Swīnaz"}
})

DefineLanguageWord("Tac", { -- source also gives the alternative form "tag"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 106.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Day"}, -- source gives the German "Tag" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Dag"},
	Gender = "masculine"
})

DefineLanguageWord("Tagên", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 106.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Dawn"}, -- source gives the German "tagen" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Dag"}
})

DefineLanguageWord("Tago", { -- source gives "-tago"; suffix used in compounds; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 106.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"proto-germanic", "noun", "Dag"},
	Gender = "masculine"
})

DefineLanguageWord("Tāju", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.1.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Suckle"},
	DerivesFrom = {"proto-indo-european", "noun", "Dheʔ"}
})

DefineLanguageWord("Teil", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Part"}
})

DefineLanguageWord("Tiuf", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Type = "adjective",
	Meanings = {"Deep"}, -- derived from Proto-Germanic "Déwpaz", which has the meaning of "deep"
	DerivesFrom = {"proto-germanic", "adjective", "Déwpaz"}
})

DefineLanguageWord("Tōd", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Death"}
})

DefineLanguageWord("Tor", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.2.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Door"},
	DerivesFrom = {"proto-germanic", "noun", "Dur"}
})

DefineLanguageWord("Trēow", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.1.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Faithfulness"}
})

DefineLanguageWord("Trūēn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Trust"}
})

DefineLanguageWord("Vernawun", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.2.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Wood-Carrying Boats"}
})

DefineLanguageWord("Truhtîn", { -- source also gives the alternative form "trohtîn"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 113.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Lord", "Warlord", "Lord (God)"}, -- source gives the German "Herr, Kriegsherr, meist von Gott als Herrn der Heerscharen" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Druhtîna"},
	Gender = "masculine"
})

DefineLanguageWord("Ubir", { -- Lehmann also gives the alternative form "ubar"; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.2, 2.7.2.
	Language = "old-high-german",
	Type = "adposition",
	Meanings = {"Over"},
	DerivesFrom = {"proto-germanic", "adposition", "Ufar"}
})

DefineLanguageWord("Urlaga", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Fate"},
	Gender = "feminine"
})

DefineLanguageWord("Wald", { -- Fick also gives the alternative form "walth"; Source: H. Munro Chadwick, "The Oak and the Thunder-God", 1900, p. 31; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 203.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Forest"}, -- as given by Chadwick; Fick gives the German "Wald" and the Latin "saltus" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Valþu"}, -- as given by Fick
	Gender = "masculine" -- as given by Fick
})

DefineLanguageWord("Weg", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Way"}
})

DefineLanguageWord("Weit", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 4, 7.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Woad"},
	Gender = "masculine"
})

DefineLanguageWord("Wela", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.1.
	Language = "old-high-german",
	Type = "adverb",
	Meanings = {"Well", "Indeed"}, -- Runge gives "Well", while Lehmann gives "Indeed"
	DerivesFrom = {"proto-germanic", "adverb", "Wela"} -- as given by Lehmann
})

DefineLanguageWord("Wer", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6, 2.7.1; Source: http://www.cnrtl.fr/definition/garou
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Man"},
	DerivesFrom = {"proto-indo-european", "noun", "Wiros"} -- as given by Lehmann
})

DefineLanguageWord("Werdan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Become"}
})

DefineLanguageWord("West", { -- source also gives the alternative form "Westar"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 204.
	Language = "old-high-german",
	Type = "noun", -- presumably, since it is listed next to the German masculine noun "West"
	Meanings = {"West"}, -- source gives the German "West" as the meaning
	DerivesFrom = {"proto-germanic", "adverb", "Vesta"}
})

DefineLanguageWord("Wī̆r", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-high-german",
	Type = "pronoun",
	Meanings = {"We"},
	Nominative = "Wī̆r"
})

DefineLanguageWord("Wîz̨", { -- Fick gives "(h)wîz̨"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 67.
	Language = "old-high-german",
	Type = "adjective",
	Meanings = {"White"}, -- source gives the German "weiß" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Hvîta"}
})

DefineLanguageWord("Wizzan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.1.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Know"},
	DerivesFrom = {"proto-germanic", "verb", "Witanan"},
	NumberPersonTenseMoodInflections = {
		"plural", "first-person", "present", "indicative", "Wizzum" -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	}
})
DefineLanguageWord("Wolf", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 209; Source: http://www.cnrtl.fr/definition/garou
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Wolf"}, -- the TLFi gives the French "loup", while Fick gives the German "Wolf"
	DerivesFrom = {"proto-germanic", "noun", "Vulfa"}
})

DefineLanguageWord("Wulpa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 209.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Female Wolf"}, -- source gives the German "Wölfin"
	DerivesFrom = {"proto-germanic", "noun", "Vulbî"}
})

DefineLanguageWord("Wurm", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 209; Source: http://www.cnrtl.fr/definition/gourme
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Worm", "Serpent", "Maggot", "Adder", "Viper", "Pus"}, -- probably could be extended to mean "wyrm" as well; Runge gives "worm, serpent" as the meaning; Fick gives the German "Wurm, Made, Natter, Schlange" as the meaning; the TLFi gives "pus" as the meaning, is the "Wurm" mentioned there actually a different word?
	DerivesFrom = {"proto-germanic", "noun", "Vurma"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 209.
	Gender = "masculine",
	NumberCaseInflections = {
		"plural", "nominative", "Wurmi"
	}
})

DefineLanguageWord("Zahar", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Tear"}
})

DefineLanguageWord("Zala", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 86.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Number", "Quantity", "Enumeration", "Account", "Narrative", "Speech"}, -- source gives the German "Zahl, Anzahl, Aufzählung, Berechnung, Erzählung, Rede" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Talô"},
	Gender = "feminine"
})

DefineLanguageWord("Zan", { -- source also gives the alternative form "zand"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 84.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Tooth"}, -- source gives the German "Zahn" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Tanþ"},
	Gender = "masculine",
	NumberCaseInflections = {
		"plural", "nominative", "Zendî" -- source also gives the alternative form "zeni̊"
	}
})

DefineLanguageWord("Zeh", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Accuse"},
	NumberPersonTenseMoodInflections = {
		"singular", "first-person", "past", "indicative", "Zeh",
		"plural", "first-person", "past", "indicative", "Zigum"
	}
})

DefineLanguageWord("Zeichur", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.2.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Brother-in-Law"},
	DerivesFrom = {"proto-indo-european", "noun", "Daxw"} -- apparently
})

DefineLanguageWord("Ziohan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Pull"}, -- derived from Proto-Germanic "Téuχanan", which has the meaning of "pull"
	DerivesFrom = {"proto-germanic", "verb", "Téuχanan"}
})

DefineLanguageWord("Ziu", { -- name of a god; Source: Peter Buchholz, "Perspectives for Historical Research in Germanic Religion", 1968, p. 115.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"proto-germanic", "noun", "Tīwaz"}
})

DefineLanguageWord("Zûn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 89.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Fence", "Hedge", "Enclosure"}, -- source gives the German "Zaun, Hecke, Gehege" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Tûna"},
	Gender = "masculine",
	NumberCaseInflections = {
		"plural", "nominative", "Zûnî"
	}
})

DefineLanguageWord("Zurba", { -- source also gives the alternative form "Zurf"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 86.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Lawn", "Turf"}, -- source gives the German "Rasen" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Turba"},
	Gender = "feminine"
})

DefineLanguageWord("Zwirnēn", { -- source also gives the alternative form "Zwirnōn"; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Twine"}
})

-- compounds

DefineLanguageWord("Bahweiga", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 205.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Plate", "Dish", "Platter"} -- source gives the Latin "lanx" as the meaning
	-- the second part of this compound (apparently) comes from the Proto-Germanic "vaigô"
})

DefineLanguageWord("Elmboum", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 23.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Elm"} -- source apparently gives the German "Ulme" as the meaning
	-- the first part of this compound derives from the Proto-Germanic "alma"
})

DefineLanguageWord("Himilrîchi", { -- Source: D. H. Green, "From Germania to Europe: the Evidence of Language and History", 1997, p. xxxi.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Kingdom of Heaven"},
	CompoundElements = {
--		"prefix", "old-high-german", "noun", -- ?
		"suffix", "old-high-german", "noun", "Rîchi"
	}
})

DefineLanguageWord("Jârzala", { -- apparently a compound; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 86.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Calendar"}, -- source (apparently, but not entirely clear) gives the German "Kalender" as the meaning
	CompoundElements = {
		"prefix", "old-high-german", "noun", "Jār", -- presumably
		"suffix", "old-high-german", "noun", "Zala"
	},
	Gender = "feminine" -- apparently
})

DefineLanguageWord("Muntboro", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 167.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Guardian", "Protector"}, -- source apparently gives the German "Vormund, Beschützer" as the meaning
	CompoundElements = {
		"prefix", "old-high-german", "noun", "Munt", -- presumably
--		"suffix", -- ?
	}
})

DefineLanguageWord("Siohtago", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 106.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {},
	CompoundElements = {
--		"prefix", -- ?
		"suffix", "old-high-german", "noun", "Tago"
	}
})
DefineLanguageWord("Werwolf", { -- Source: http://www.cnrtl.fr/definition/garou
	Language = "old-high-german",
	Type = "noun",
	Meanings = {},
	CompoundElements = {
		"prefix", "old-high-german", "noun", "Wer",
		"suffix", "old-high-german", "noun", "Wolf"
	}
})

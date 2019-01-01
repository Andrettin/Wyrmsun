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
--      (c) Copyright 2015-2019 by Andrettin
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
	Meanings = {"Noble Birth"}, -- source gives the German "edle Geburt" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Aþala"},
	Gender = "feminine"
})

DefineLanguageWord("Ān", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.4.
	Language = "old-english",
	Type = "numeral",
	Number = 1, -- apparently
	DerivesFrom = {"proto-germanic", "numeral", "Aynos"}
})

DefineLanguageWord("Ândaga", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 106.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Appointment"}, -- source gives the German "Termin" as the meaning
	-- the suffix in this compound is derived from the Proto-Germanic noun "Dag"
	Gender = "masculine"
})

DefineLanguageWord("Anfilte", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 124.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Anvil"}, -- source gives the German "Amboß" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Anafalta"},
	Gender = "neuter"
})

DefineLanguageWord("Âr", { -- source also gives the alternative form "Æ̂r" (with the circumflex accent on top of the Æ); Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 11.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Ore"}, -- source gives the German "Erz" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Aiza"},
	Gender = "neuter"
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

DefineLanguageWord("Bân", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 133.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Leg"}, -- source gives the German "Bein" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Baina"},
	Gender = "neuter"
})

DefineLanguageWord("Beadu", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, pp. 3-4.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Battle", "War"}
})

DefineLanguageWord("Béam", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 134.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Tree", "Beam"}, -- source gives the German "Baum, Balken" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Bagma"},
	Gender = "masculine"
})

DefineLanguageWord("Beard", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Beard"}, -- source gives the German "Bart" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Barda"},
	Gender = "masculine"
})

DefineLanguageWord("Bearn", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 238.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Child"}
})

DefineLanguageWord("Bearu", { -- Source: H. Munro Chadwick, "The Oak and the Thunder-God", 1900, p. 30.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Grove"}
})

DefineLanguageWord("Bece", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 133.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Stream"}, -- source gives the German "Bach" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Baki"},
	Gender = "masculine"
})

DefineLanguageWord("Bēodan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Sections 2, 4.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Bid", "Offer", "Order"},
	DerivesFrom = {"proto-germanic", "verb", "Beud"}
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

DefineLanguageWord("Beran", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-english",
	Type = "verb",
	Meanings = {},
	DerivesFrom = {"proto-germanic", "verb", "Beran"}
})

DefineLanguageWord("Berstan", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 8.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Break", "Burst"}
})

DefineLanguageWord("Bītan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Bite"},
	DerivesFrom = {"proto-germanic", "verb", "Bītan"}
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

DefineLanguageWord("Bord", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, pp. 135-136; Source: http://www.cnrtl.fr/definition/B%F6rde
	Language = "old-english",
	Type = "noun",
	Meanings = {"Board", "Table"}, -- the TLFi gives the French "planche, table" as the meaning; Fick gives the German "Brett, Tisch"
	DerivesFrom = {"proto-germanic", "noun", "Burda"}, -- as given by Fick; the TLFi gives it as deriving from the Indo-European word "bhrdho-" (Source: http://www.cnrtl.fr/definition/bord)
	Gender = "neuter" -- as given by the TLFi and Fick
})

DefineLanguageWord("Bord", { -- Source: http://www.cnrtl.fr/definition/bord
	Language = "old-english",
	Type = "noun",
	Meanings = {"Edge", "Ridge", "Edge of a Ship"}, -- source gives the French "bord, arête; bord de navire" as the meaning
	DerivesFrom = {"proto-indo-european", "noun", "Bhrdho"}
})

DefineLanguageWord("Bós", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 135.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Cowshed"}, -- source gives the German "Kuhstall"
	DerivesFrom = {"proto-germanic", "noun", "Bansa"}
})

DefineLanguageWord("Bred", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, pp. 135-136.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Board"}, -- source apparently gives the German "Brett" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Burda"},
	Gender = "neuter"
})

DefineLanguageWord("Breord", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Shore", "Edge"}
})

DefineLanguageWord("Brēowan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.1.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Brew"},
	DerivesFrom = {"proto-indo-european", "noun", "Bhru"} -- apparently
})

DefineLanguageWord("Brond", { -- Fick gives "Brand" instead; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136; Source: http://www.cnrtl.fr/definition/brand
	Language = "old-english",
	Type = "noun",
	Meanings = {"Fire", "Firebrand", "Sword", "Brand", "Sword Blade"}, -- Fick gives the German "Feuer, Feuerbrand, Schwert", while the TLFi gives the French "tison" and "lame d'épée, épée"
	DerivesFrom = {"proto-germanic", "noun", "Branda"}, -- apparently, as given by Fick
	Gender = "masculine" -- as given by Fick
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

DefineLanguageWord("Bruneþa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Body Heat"}, -- source gives the German "Hitze im Körper"
	DerivesFrom = {"proto-germanic", "noun", "Brunaþan"}, -- apparently
	Gender = "masculine"
})

DefineLanguageWord("Brycg", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.2; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 145.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Bridge"}, -- as given by Lehmann and Fick; Fick gives the German "Brücke" as the meaning
	Gender = "feminine", -- as given by Fick
	DerivesFrom = {"proto-germanic", "noun", "Brugjô"} -- as given by Fick
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

DefineLanguageWord("Ceorl", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 29.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Freeman", "Husband"}, -- source gives the German "gemeinfreier Mann, Ehemann" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Karla"},
	Gender = "masculine"
})

DefineLanguageWord("Ceorlisc", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 100.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Of a Churl", "Common"},
	DerivesFrom = {"proto-germanic", "noun", "Karla"} -- presumably
})

DefineLanguageWord("Cēosan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 2.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Choose"}
	-- source also gives the forms "cēas", "curon" and "coren" (presumably conjugations of the verb)
})

DefineLanguageWord("Cēowan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 1.3.2, 2.6.1.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Chew"},
	DerivesFrom = {"proto-indo-european", "verb", "Kewx"}
	-- source also gives the forms "cēaw", "cuwon" and "cowen" (presumably conjugations of the verb)
})

DefineLanguageWord("Cildisc", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 100.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Childish"}
})

DefineLanguageWord("Clæ̂g", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 38.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Clay"}, -- source gives the German "Lehm" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Klajja"},
	Gender = "masculine"
})

DefineLanguageWord("Cniht", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 27.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Boy", "Youth", "Servant"}, -- source gives the German "Knabe, Jüngling, Diener" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Knehta"}
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

DefineLanguageWord("Cuman", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Come"}
})

DefineLanguageWord("Cwene", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Woman"},
	DerivesFrom = {"proto-indo-european", "noun", "Gʷen"}
})

DefineLanguageWord("Cwic", { -- source gives the word as "cwic(u)"; source also gives "cuic" with the same meaning later; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.5, 2.6.2.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Alive"},
	DerivesFrom = {"proto-indo-european", "adjective", "Gʷīwos"}
})

DefineLanguageWord("Cyning", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 27.
	Language = "old-english",
	Type = "noun",
	Meanings = {"King"}, -- source (apparently) gives the German "König" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Kuninga"}
})

DefineLanguageWord("Cynn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Race"},
	DerivesFrom = {"proto-germanic", "noun", "Kuni"}
})

DefineLanguageWord("Dæg", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 106.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Day"}, -- source apparently gives the German "Tag" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Dag"}
})

DefineLanguageWord("Dagian", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 106.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Dawn"}, -- source gives the German "tagen" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Dag"}
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

DefineLanguageWord("Done", { -- appears in the field-name "Wedone"; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 101.
	Language = "old-english",
	Type = "noun",
	Meanings = {}
})

DefineLanguageWord("Drēogan", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 16.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Perform", "Practice"}
})

DefineLanguageWord("Drygt", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 16.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Troop", "Company", "Army"}
})

DefineLanguageWord("Dryhten", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 113.
	Language = "old-english",
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"proto-germanic", "noun", "Druhtana"}
})

DefineLanguageWord("Dun", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 101.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Hill"}
})

DefineLanguageWord("Duru", { -- at first the source gives "duru", but later on it gives "dor"; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.2, 2.7.2.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Door"},
	DerivesFrom = {"proto-germanic", "noun", "Dur"}
})

DefineLanguageWord("Éa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 13.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Water", "River"}, -- source gives the German "Wasser, Fluß" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Ahvô"},
	Gender = "feminine"
})

DefineLanguageWord("Eald", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 19.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Old"}, -- source gives the German "alt" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Alda"},
	ComparisonDegreeCaseInflections = {
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

DefineLanguageWord("Ealh", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 101.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Temple"}
})

DefineLanguageWord("Éam", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 20.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Uncle"}, -- source gives the German "Oheim, Ohm" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Aban"}
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

DefineLanguageWord("Ēage", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.4.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Eye"},
	DerivesFrom = {"proto-germanic", "noun", "Awgan"}
})

DefineLanguageWord("Elm", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 23.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Elm"}, -- source apparently gives the German "Ulme" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Alma"}
})

DefineLanguageWord("Eoh", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Horse"},
	DerivesFrom = {"proto-indo-european", "noun", "Éḱwos"}
})

DefineLanguageWord("Eormengrund", { -- the first part of this compound derives from the Proto-Germanic noun "Erman"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 18.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Wide Earth"} -- source gives the German "die weite Erde"
})

DefineLanguageWord("Eormenþéod", { -- the first part of this compound derives from the Proto-Germanic noun "Erman"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 18.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Wide Earth"} -- source gives the German "die weite Erde"
})

DefineLanguageWord("Eornost", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 6.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Earnestness", "Battle"}
})

DefineLanguageWord("Eorþe", { -- Runge gives "Eorþe", while Lehmann gives "Eorþ"; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 238; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Earth"},
	DerivesFrom = {"proto-germanic", "noun", "Erþō"},
	Uncountable = true
})

DefineLanguageWord("Etan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 1.3.1, 2.7.1.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Eat"},
	DerivesFrom = {"proto-germanic", "verb", "Etanan"} -- as given by Lehmann
})

DefineLanguageWord("Eþþa", { -- Also given as "Oþþe", are Eþþa and Oþþe two forms of "or" in Old English, or are they just different ways to write the same word in that language?; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "old-english",
	Type = "conjunction",
	Meanings = {"Or"}
})

DefineLanguageWord("Falod", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 123.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Sheepfold", "Ox Barn"}, -- source gives the German "Schafhürde, Ochsenstall"
	DerivesFrom = {"proto-germanic", "noun", "Faluda"},
	Gender = "masculine"
})

DefineLanguageWord("Feld", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 124.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Field", "Area"}, -- source gives the German "Feld, Fläche" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Felþa"},
	Gender = "masculine"
})

DefineLanguageWord("Feoh", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 238; Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2..
	Language = "old-english",
	Type = "noun",
	Meanings = {"Cattle"},
	DerivesFrom = {"proto-germanic", "noun", "Fehu"}
})

DefineLanguageWord("Feohtan", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 4.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Fight"}
})

DefineLanguageWord("Feolu", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.2.
	Language = "old-english",
	Type = "adjective", -- correct? inferred from the meaning
	Meanings = {"Much"},
	DerivesFrom = {"proto-germanic", "adjective", "Filu"}
})

DefineLanguageWord("Fiðelestre", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 77.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Fiddler"},
	Gender = "feminine" -- presumably, given the source is talking about occupations for women
})

DefineLanguageWord("Fierd", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 14.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Military Expedition", "Campaign", "Army"}
})

DefineLanguageWord("Fīf", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.1.
	Language = "old-english",
	Type = "numeral",
	Number = 5,
	DerivesFrom = {"proto-germanic", "numeral", "Fimfe"}
})

DefineLanguageWord("Firgen", { -- Source: H. Munro Chadwick, "The Oak and the Thunder-God", 1900, p. 25.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Forest"}
})

DefineLanguageWord("Fisc", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Fish"}
})

DefineLanguageWord("Folc", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 9.
	Language = "old-english",
	Type = "noun",
	Meanings = {"People", "Armed Band", "Army"}
})

DefineLanguageWord("Ford", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 120.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Ford"}, -- source gives the German "Furt" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Furdu"},
	Gender = "masculine"
})

DefineLanguageWord("Fōt", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.2, 3.2.1.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Foot"},
	DerivesFrom = {"proto-germanic", "noun", "Fōts"},
	NumberCaseInflections = {
		"singular", "dative", "Fēt",
		"singular", "genitive", "Fōtes",
		"plural", "nominative", "Fēt",
		"plural", "accusative", "Fēt",
		"plural", "dative", "Fōtum",
		"plural", "genitive", "Fōta"
	}
})

DefineLanguageWord("Friþu", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 128.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Peace", "Protection", "Security"}, -- source gives the German "Friede, Schutz, Sicherheit" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Friþu"}
})

DefineLanguageWord("Fugol", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.2.
	Language = "old-english",
	Type = "noun",
	Meanings = {}
})

DefineLanguageWord("Fūl", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Foul"}, -- derived from the Proto-Germanic "Fūla", which means "Foul"
	DerivesFrom = {"proto-germanic", "adjective", "Fūla"}
})

DefineLanguageWord("Fȳr", { -- as given by Lehmann; Fick gives "fŷr" instead; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 3.2.1; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 127.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Fire"}, -- as given by Lehmann; Fick likewise gives the German "Feuer" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Fōr"},
	Gender = "neuter" -- as given by Fick
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

DefineLanguageWord("Gedreag", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 16.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Crowd"}
})

DefineLanguageWord("Gefeoht", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 4.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Fight", "Battle"}
})

DefineLanguageWord("Gefylce", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 9.
	Language = "old-english",
	Type = "noun",
	Meanings = {"People", "Armed Band", "Army"}
})

DefineLanguageWord("Gengan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 9.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Go", "Stride"}
})

DefineLanguageWord("Geong", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Young"},
	DerivesFrom = {"proto-indo-european", "adjective", "Yehw"}
})

DefineLanguageWord("Gereord", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Meal", "Feast", "Food"},
	Gender = "neuter"
})

DefineLanguageWord("Gereordian", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Feed", "Entertain", "Feast"}
})

DefineLanguageWord("Gesihþ", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Sight"},
	DerivesFrom = {"proto-indo-european", "verb", "Sekʷ"}
})

DefineLanguageWord("Gesleht", { -- source also gives the alternative form "gesliht"; Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 4.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Fight", "Battle"}
})

DefineLanguageWord("Getæl", { -- source also gives the alternative form "tæl"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 86.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Number", "Row", "Account"}, -- source gives the German "Anzahl, Reihe, Berechnung" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Tala"},
	Gender = "neuter"
})

DefineLanguageWord("Getæl", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 86.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Swift"}, -- source gives the German "rasch" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Tala"} -- apparently, but not clear from source
})

DefineLanguageWord("Gewinn", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 8.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Toil", "Struggle", "Strife"}
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

DefineLanguageWord("Gnîdan", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 76.
	Language = "old-english",
	Type = "verb", -- strong verb
	Meanings = {"Rub"}, -- source gives the German "reiben" as the meaning
	DerivesFrom = {"proto-germanic", "verb", "Gnid"}
})

DefineLanguageWord("God", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 89; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.2; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 76.
	Language = "old-english",
	Type = "noun",
	Meanings = {"God"},
	DerivesFrom = {"proto-germanic", "noun", "Guda"}, -- as given by Fick
	Gender = "masculine",
	NumberCaseInflections = {
		"plural", "nominative", "Godas" -- as given by Fick; Fick also gives the alternative form "Godu"
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

DefineLanguageWord("Grīpan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 2.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Grab"}
	-- source also gives the forms "grāp", "gripon" and "gripen" (presumably conjugations of the verb)
})

DefineLanguageWord("Grīs", { -- Source: http://www.cnrtl.fr/definition/gris
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Gray"}, -- source gives the French "gris" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Grîsa"} -- presumably
})

DefineLanguageWord("Guma", { -- given by Lehmann as "gume" in 2.7.2; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.2, 3.2.3.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Man"},
	DerivesFrom = {"proto-germanic", "noun", "Gumō"},
	NumberCaseInflections = {
		"singular", "accusative", "Guman",
		"singular", "dative", "Guman",
		"singular", "genitive", "Guman",
		"plural", "nominative", "Guman",
		"plural", "accusative", "Guman",
		"plural", "dative", "Gumum",
		"plural", "genitive", "Gumena"
	}
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

DefineLanguageWord("Gydig", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 94.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Possessed (by a God)"}
})

DefineLanguageWord("Hād", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 3.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Hair"}
})

DefineLanguageWord("Hæfen", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 45.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Harbor"}, -- source (apparently) gives the German "Hafen" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Habanô"},
	Gender = "feminine"
})

DefineLanguageWord("Hæ̂man", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, pp. 52-53.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Copulate", "Sleep With"}, -- source gives the German "beischlafen" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Haima"} -- apparently
})

DefineLanguageWord("Hâlig", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 42.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Holy"}, -- source gives the German "heilig"
	DerivesFrom = {"proto-germanic", "adjective", "Hailaga"}
})

DefineLanguageWord("Hâm", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 52.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Home", "House", "Dwelling"}, -- source gives the German "Heimat, Haus, Wohnung" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Haima"},
	Gender = "masculine"
})

DefineLanguageWord("Hâm", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 52.
	Language = "old-english",
	Type = "adverb",
	Meanings = {"Home"}, -- source gives the German "nach Hause" as the meaning
	DerivesFrom = {"proto-germanic", "adverb", "Haima"} -- apparently
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

DefineLanguageWord("Healdan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 238.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Hold"}
})

DefineLanguageWord("Healf", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 51.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Half", "Side"}, -- source gives the German "Hälfte, Seite" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Halba"},
	Gender = "feminine"
})

DefineLanguageWord("Healf", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 51.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Half"}, -- source gives the German "halb" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Halba"}
})

DefineLanguageWord("Heals", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 50.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Neck", "Throat", "Front Part of a Ship"}, -- source gives the German "Hals, Vorderteil des Schiffes" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Halsa"},
	Gender = "masculine"
})

DefineLanguageWord("Heard", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 48.
	Language = "old-english",
	Type = "adverb", -- apparently from the source
	Meanings = {},
	DerivesFrom = {"proto-germanic", "adjective", "Hardu"}
})

DefineLanguageWord("Hearh", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 101.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Hill Sanctuary"}
})

DefineLanguageWord("Hearpestre", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, pp. 77-78.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Harp Player"},
	Gender = "feminine" -- presumably, given the source is talking about occupations for women
})

DefineLanguageWord("Hell", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 49.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Underworld"}, -- source gives the German "Unterwelt" as the meaning
	Gender = "feminine",
	DerivesFrom = {"proto-germanic", "noun", "Haljô"}
})

DefineLanguageWord("Helm", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 49.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Helm", "Helmet", "Treetop"}, -- source gives the German "Helm, Wipfel" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Helma"},
	Gender = "masculine"
})

DefineLanguageWord("Helpan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Help"}
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

DefineLanguageWord("Here", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 10-11.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Army", "War", "Devastation"}
})

DefineLanguageWord("Hild", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 50.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Fight", "Conflict", "War"}, -- source gives the German "Kampf, Krieg" as the meaning
	Gender = "feminine",
	DerivesFrom = {"proto-germanic", "noun", "Heldî"}
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

DefineLanguageWord("Hnīgan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Bow"},
	DerivesFrom = {"proto-indo-european", "verb", "Kneygʷh"}
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

DefineLanguageWord("Holm", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 50.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Island", "Wave", "Sea"}, -- source gives the German "Land das sich aus dem Wasser erhebt, Insel, Meereswoge, Meer"
	Gender = "masculine",
	DerivesFrom = {"proto-germanic", "noun", "Hulma"}
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

DefineLanguageWord("Hund", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Dog"}
})

DefineLanguageWord("Hundred", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.2.
	Language = "old-english",
	Type = "numeral", -- presumably
	DerivesFrom = {"proto-germanic", "numeral", "Χunda"}
})

DefineLanguageWord("Hungor", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 44.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Hunger"}, -- source gives the German "Hunger" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Hunhru"},
	Gender = "masculine"
})

DefineLanguageWord("Hweowol", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 238.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Wheel"}
})

DefineLanguageWord("Hwīt", { -- Fick gives "hwit" instead; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 67.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"White"},
	DerivesFrom = {"proto-germanic", "adjective", "Hvîta"} -- as given by Fick
})

DefineLanguageWord("Hyll", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 50.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Hill"}, -- source gives the German "Hügel"
	Gender = "masculine", -- can be both masculine and feminine
	DerivesFrom = {"proto-germanic", "noun", "Hulnia"}
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

DefineLanguageWord("Is", { -- this is the singular first person present; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.1.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Is"},
	DerivesFrom = {"proto-germanic", "verb", "Isti"},
	NumberPersonTenseMoodInflections = {
		"singular", "first-person", "present", "indicative", "Is"
	}
})

DefineLanguageWord("Îsern", { -- source also gives the alternative form "Îsen" and "Îren"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 24.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Iron"}, -- source gives the German "Eisen" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Îsarna"},
	Gender = "neuter"
})

DefineLanguageWord("Iuguð", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.2.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Youth"}
})

DefineLanguageWord("Lǣran", { -- causative verb; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 5.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Teach"}
})

DefineLanguageWord("Lâf", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 187.
	Language = "old-english",
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"proto-germanic", "noun", "Laibô"},
	Gender = "feminine"
})

DefineLanguageWord("Lagu", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 9.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Law"}
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

DefineLanguageWord("Leah", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 101.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Grove"}
})

DefineLanguageWord("Leoðurun", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 124.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Sung Mistery"}
})

DefineLanguageWord("Leornian", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Learn"}
})

DefineLanguageWord("Léoþ", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 181.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Song"}, -- source gives the German "Lied" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Leuþa"},
	Gender = "neuter"
})

DefineLanguageWord("Léoþian", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 181.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Sing"}, -- source (apparently) gives the German "singen" as the meaning
	DerivesFrom = {"proto-germanic", "verb", "Leuþôn"}
})

DefineLanguageWord("Lindplega", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 4.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Swordplay"}
})

DefineLanguageWord("Long", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Long"}, -- derived from Proto-Germanic "Langaz", which means "Long"
	DerivesFrom = {"proto-germanic", "adjective", "Langaz"}
})

DefineLanguageWord("Mā", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-english",
	Type = "adverb",
	Meanings = {"More"}
})

DefineLanguageWord("Maga", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 156.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Stomach"}, -- source (apparently) gives the German "Magen" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Magan"},
	Gender = "masculine"
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

DefineLanguageWord("Māra", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"More"},
	DerivesFrom = {"proto-germanic", "adjective", "Mēria"},
	ComparisonDegreeCaseInflections = {
		"superlative", "Māst"
	}
})

DefineLanguageWord("Mâse", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 155.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Tit", "Titmouse"}, -- source gives the German "Meise" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Maisôn"},
	Gender = "feminine"
})

DefineLanguageWord("Mē", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-english",
	Type = "pronoun",
	Meanings = {"Me"}, -- dative
	Dative = "Mē"
})

DefineLanguageWord("Meaht", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Might"}, -- derived from Proto-Germanic "Maχtiz", which has the meaning of "Might"
	DerivesFrom = {"proto-germanic", "noun", "Maχtiz"}
})

DefineLanguageWord("Mearc", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 160.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Border", "End", "District"}, -- source gives the German "Grenze, Ende, Bezirk"
	DerivesFrom = {"proto-germanic", "noun", "Mark"},
	Gender = "feminine"
})

DefineLanguageWord("Mearc", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 160.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Mark", "Sign"}, -- source gives the German "Marke, Zeichen"
	DerivesFrom = {"proto-germanic", "noun", "Markô"},
	Gender = "feminine"
})

DefineLanguageWord("Mearc", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 160.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Half Silver Pound"}, -- source gives the German "halbes Pfund Silbers"
	DerivesFrom = {"old-norse", "noun", {"Silver Mark"}, "Mǫrk"} -- "from the Nordic" according to the source
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

DefineLanguageWord("Mennisc", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 100.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Human"}
})

DefineLanguageWord("Merisc", { -- Source: http://www.cnrtl.fr/definition/marais
	Language = "old-english",
	Type = "noun",
	Meanings = {"Mire", "Mud"}, -- source gives the French "bourbe, boue"
	DerivesFrom = {"proto-germanic", "noun", "Mari"}
})

DefineLanguageWord("Muggia", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.2.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Midge"}
})

DefineLanguageWord("Mund", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 167.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Hand", "Protection", "Tutelage"}, -- source gives the German "Hand, Schutz, Bevormundung" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Mundô"},
	Gender = "feminine"
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

DefineLanguageWord("Naca", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.2.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Boat"}
})

DefineLanguageWord("Neaht", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 238; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Night"}
})

DefineLanguageWord("Nerian", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Save", "Protect"}
})

DefineLanguageWord("Nest", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.1.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Nest"},
	DerivesFrom = {"proto-germanic", "noun", "Nistǒs"}
})

DefineLanguageWord("Nīđ", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 7.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Hatred", "Spite", "Enmity", "Battle", "War"}
})

DefineLanguageWord("Niman", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Take", "Accept"},
	DerivesFrom = {"proto-indo-european", "verb", "Nem"}
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

DefineLanguageWord("Onlēon", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Lend"},
	DerivesFrom = {"proto-indo-european", "verb", "Leykʷ"},
	NumberPersonTenseMoodInflections = {
		"plural", "first-person", "past", "indicative", "Ligon" -- source actually gives "-ligon"; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	}
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

DefineLanguageWord("Orleg", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 9.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Strife", "War"}
})

DefineLanguageWord("Pāl", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.3.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Pole"}
})

DefineLanguageWord("Penn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 115.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Pen"}, -- source gives the German "Pferch"
	DerivesFrom = {"proto-germanic", "noun", "Penna"},
	Gender = "masculine"
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

DefineLanguageWord("Ræs", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 4.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Rush", "Attack"}
})

DefineLanguageWord("Ræsn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Plank", "Ceiling"},
	Gender = "neuter"
})

DefineLanguageWord("Rēad", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Red"},
	DerivesFrom = {"proto-indo-european", "adjective", "Rowdho"}
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
	Type = "noun",
	Meanings = {"Power", "Kingdom"}, -- source gives the German "Macht, Königreich" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Rîkia"},
	Gender = "neuter"
})

DefineLanguageWord("Rîce", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 174.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Powerful", "Notable", "Rich"}, -- source gives the German "mächtig, vornehm, reich" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Rîka"}
})

DefineLanguageWord("Rîcsian", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 174.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Rule"}, -- source gives the German "herrschen" as the meaning
	DerivesFrom = {"proto-germanic", "verb", "Rîkisôn"}
})

DefineLanguageWord("Rīdan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 9.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Travel"}
})

DefineLanguageWord("Sacu", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 6.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Strife", "Verbal Strife", "Battle", "War"}
})

DefineLanguageWord("Sæ̂", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 221.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Lake"}, -- source (apparently) gives the German "See" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Saivi"},
	Gender = "masculine"
})

DefineLanguageWord("Sǣd", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Seed"}, -- derived from the Proto-Germanic "Sēþiz", which means "Seed"
	DerivesFrom = {"proto-germanic", "noun", "Sēþiz"}
})

DefineLanguageWord("Sælig", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 94.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Happy", "Prosperous"}
})

DefineLanguageWord("Sagu", { -- source also gives the alternative form "sage"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 213.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Saw"}, -- source gives the German "Säge" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Sagô"},
	Gender = "feminine"
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

DefineLanguageWord("Sceadwian", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Shadow"}, -- "to shadow"
	DerivesFrom = {"proto-germanic", "noun", "Skadwas"}
})

DefineLanguageWord("Scernicge", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, pp. 77-78.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Actress"},
	Gender = "feminine"
})

DefineLanguageWord("Scield", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 229.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Shield", "Protection"}, -- source gives the German "Schild, Schutz" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Skeldu"},
	Gender = "masculine"
})

DefineLanguageWord("Scîr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 233.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Service", "Shop", "Area"}, -- source gives the German "Dienst, Geschäft, Gebiet"
	DerivesFrom = {"proto-germanic", "noun", "Skîrô"},
	Gender = "feminine"
})

DefineLanguageWord("Scrīfan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Write"}
})

DefineLanguageWord("Scuwo", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.1.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Shadow"},
	DerivesFrom = {"proto-indo-european", "verb", "Kwneχ"} -- presumably, since it is a cognate of Sanskrit "skunā́ti"
})

DefineLanguageWord("Sealticge", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, pp. 77-78.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Dancer"},
	Gender = "feminine" -- presumably, given the source is talking about occupations for women
})

DefineLanguageWord("Sēoðan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 2.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Boil"}
	-- source also gives the forms "sēað", "sudon" and "sodden" (presumably conjugations of the verb)
})

DefineLanguageWord("Seolfor", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 221.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Silver"}, -- source gives the German "Silber" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Silubra"},
	Gender = "neuter"
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

DefineLanguageWord("Set", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 214.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Army Camp", "Barn", "Pen", "Sunset"}, -- source gives the German "Heerlager, Stall, Pferch, Sonnenuntergang"
	DerivesFrom = {"proto-germanic", "noun", "Seta"},
	Gender = "neuter"
})

DefineLanguageWord("Sib", { -- Source: H. Munro Chadwick, "The Oak and the Thunder-God", 1900, p. 25.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Relationship", "Friendship", "Peace"}
})

DefineLanguageWord("Sige", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 214.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Victory"}, -- source (apparently) gives the German "Sieg" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Segiz"},
	Gender = "masculine"
})

DefineLanguageWord("Sigor", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 214.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Victory"}, -- source (apparently) gives the German "Sieg" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Segiz"},
	Gender = "masculine"
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

DefineLanguageWord("Spic", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.2.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Bacon"},
	DerivesFrom = {"proto-indo-european", "noun", "Spyxwon"} -- apparently
})

DefineLanguageWord("Spinelhealf", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 197.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Spindle-Side"}
})

DefineLanguageWord("Stān", { -- as given by Lehmann; Fick gives "stân" instead; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.4; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 245.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Stone"}, -- as given by Lehmann
	DerivesFrom = {"proto-germanic", "noun", "Staynas"}, -- as given by both Lehmann and Fick
	Gender = "masculine" -- as given by Fick
})

DefineLanguageWord("Standan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Stand"}
})

DefineLanguageWord("Stapol", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 241.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Pillar", "Foundation", "Bustard"}, -- source gives the German "Pfeiler, Grundlage, Trappe" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Stapula"},
	Gender = "masculine"
})

DefineLanguageWord("Stīgan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Climb"},
	DerivesFrom = {"proto-germanic", "verb", "Steig"}
})

DefineLanguageWord("Stig", { -- source also gives the alternative form "stî-"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 245.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Pigsty"}, -- source gives the German "Schweinestall"
	DerivesFrom = {"proto-germanic", "noun", "Stijôn"}
})

DefineLanguageWord("Stock", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 247.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Stick", "Tree Trunk", "Tree Stump"}, -- source gives the German "Stock, Baumstamm, Baumstumpf"
	Gender = "masculine",
	DerivesFrom = {"proto-germanic", "noun", "Stukka"}
})

DefineLanguageWord("Strīđ", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 6.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Strife", "Struggle"}
})

DefineLanguageWord("Sumor", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Summer"}, -- source gives the German "Sommer" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Sumara"},
	Gender = "masculine"
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

DefineLanguageWord("Sygel", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.2.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Sun"}
})

DefineLanguageWord("Symeringwyrt", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223.
	Language = "old-english",
	Type = "noun",
	Meanings = {}
	-- the first part of this compound is (apparently) derived from the Proto-Germanic noun "Sumara"
})

DefineLanguageWord("Tācor", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.2.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Brother-in-Law"},
	DerivesFrom = {"proto-indo-european", "noun", "Daxw"} -- apparently
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

DefineLanguageWord("Talu", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 86.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Narrative", "Legal Matter", "Row"}, -- source gives the German "Erzählung, Rechtssache, Reihe" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Talô"},
	Gender = "feminine"
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

DefineLanguageWord("Þearm", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 97.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Intestine"}, -- source gives the German "Darm" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Þarma"},
	Gender = "masculine"
})

DefineLanguageWord("Þegn", { -- source gives "þeg(e)n" and the alternative form "þên"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 95.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Nobleman", "Warrior", "Hero", "Servant"}, -- source gives the German "Edelmann, Krieger, Held, Diener" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Þegna"},
	Gender = "masculine"
})

DefineLanguageWord("Þéod", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 99.
	Language = "old-english",
	Type = "noun",
	Meanings = {"People"}, -- source gives the German "Volk, Leute" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Þeudô"},
	Gender = "feminine"
})

DefineLanguageWord("Þīof", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.4.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Thief"},
	DerivesFrom = {"proto-germanic", "noun", "Þewb"}
})

DefineLanguageWord("Þorp", { -- source also gives the alternative form "Þrop"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 100.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Manor", "Village"}, -- source gives the German "Landgut, Dorf" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Þurpa"},
	Gender = "masculine"
})

DefineLanguageWord("Þræ̂l", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 101.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Servant", "Serf"}, -- source gives the German "Knecht, der Unfreie" as the meaning
	DerivesFrom = {"old-norse", "noun", "Þræll"} -- a loanword from Old Norse, according to Fick
})

DefineLanguageWord("Þrȳþ", { -- Source: H. Munro Chadwick, "The Oak and the Thunder-God", 1900, p. 25.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Strength"}
})

DefineLanguageWord("Þunorrad", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 169.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Peal of Thunder"} -- literally: "thunder-ride" or "Thunor-ride"
})

DefineLanguageWord("Þyrre", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Dry"}, -- derived from Proto-Germanic "Þrsúz", which has the meaning of "dry"
	DerivesFrom = {"proto-germanic", "adjective", "Þrsúz"}
})

DefineLanguageWord("Tiohhian", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 239.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Consider"}
})

DefineLanguageWord("Tīw", { -- name of a god; Source: Peter Buchholz, "Perspectives for Historical Research in Germanic Religion", 1968, p. 115.
	Language = "old-english",
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"proto-germanic", "noun", "Tīwaz"}
})

DefineLanguageWord("Tôþ", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 84.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Tooth"}, -- source (apparently) gives the German "Zahn" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Tanþ"},
	Gender = "masculine",
	NumberCaseInflections = {
		"plural", "nominative", "Têþ"
	}
})

DefineLanguageWord("Trēow", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.1.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Faithfulness"}
})

DefineLanguageWord("Turf", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 86.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Peat", "Lawn", "Turf"}, -- source gives the German "Torf, Rasen" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Turba"},
	Gender = "feminine"
})

DefineLanguageWord("Trūwian", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Trust"}
})

DefineLanguageWord("Tûn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 89.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Fence Around the House", "Garden", "Farm", "Village", "City", "Town"}, -- source gives the German "Zaun um das Haus, Garten, Hof, Dorf, Stadt" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Tûna"},
	Gender = "masculine"
})

DefineLanguageWord("Tûx", { -- source also gives the alternative form "Tûsc"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 84.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Tusk"}, -- source gives the German "Fangzahn" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Tunþska"}
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

DefineLanguageWord("Wæ̂ge", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 205.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Cup"}, -- source gives the German "Becher" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Vaigô"}, -- apparently
	Gender = "neuter"
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
	DerivesFrom = {"proto-germanic", "noun", "Valakuzjōn"},
	Gender = "feminine"
})

DefineLanguageWord("Wæpnedmann", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 197.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Armed Person"}
})

DefineLanguageWord("Wald", { -- Source: H. Munro Chadwick, "The Oak and the Thunder-God", 1900, p. 31.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Forest"}
})

DefineLanguageWord("We", { -- alternative form of "weoh" which appears in the field-name "Wedone"; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 101.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Idol", "Shrine", "Sacred Precinct"}
})

DefineLanguageWord("Wē", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-english",
	Type = "pronoun",
	Meanings = {"We"},
	Nominative = "Wē"
})

DefineLanguageWord("Weald", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 203.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Forest", "Foliage"}, -- source gives the German "Wald, poet. auch Laubwerk" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Valþu"},
	Gender = "masculine"
})

DefineLanguageWord("Wearg", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, p. 146.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Accursed Thing"}
})

DefineLanguageWord("Weg", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Way"}
})

DefineLanguageWord("Wel", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.1.
	Language = "old-english",
	Type = "adverb",
	Meanings = {"Well", "Indeed"}, -- Runge gives "Well", while Lehmann gives "Indeed"
	DerivesFrom = {"proto-germanic", "adverb", "Wela"} -- as given by Lehmann
})

DefineLanguageWord("Weo", { -- alternative form of "weoh" which appears in the field-name "Weoland"; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 101.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Idol", "Shrine", "Sacred Precinct"}
})

DefineLanguageWord("Weoh", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 101.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Idol", "Shrine", "Sacred Precinct"}
})

DefineLanguageWord("Wer", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6; Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 10.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Man"}, -- as given by both sources
	DerivesFrom = {"proto-indo-european", "noun", "Wiros"} -- as given by Lehmann
})

DefineLanguageWord("Werig", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 94.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Weary", "Tired", "Exhausted"}
})

DefineLanguageWord("Wesan", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 110.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Be"},
	NumberPersonTenseMoodInflections = {
		"singular", "third-person", "present", "subjunctive", "Sy"
	}
})

DefineLanguageWord("West", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 204.
	Language = "old-english",
	Type = "adverb",
	Meanings = {"West"}, -- source gives the German "West" as the meaning
	DerivesFrom = {"proto-germanic", "adverb", "Vesta"}
})

DefineLanguageWord("Widu", { -- source also gives the alternative forms "wiodu" and "wudu"; Source: Guus Kroonen, "Etymological Dictionary of Proto-Germanic", 2013, p. 585.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Tree", "Wood"},
	DerivesFrom = {"proto-germanic", "noun", "Widu"},
	Gender = "masculine"
})

DefineLanguageWord("Wiella", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 101.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Spring"}
})

DefineLanguageWord("Wīg", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 4.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Battle", "War"}
})

DefineLanguageWord("Wigan", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 4.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Fight"}
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

DefineLanguageWord("Wiga", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 16.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Fighter", "Warrior"}
})

DefineLanguageWord("Wīgan", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 16.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Fight"}
})

DefineLanguageWord("Wihte", { -- this is the plural; Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 102.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Being"},
	NumberCaseInflections = {
		"plural", "nominative", "Wihte"
	}
})

DefineLanguageWord("Winnan", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 8.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Strive"}
})

DefineLanguageWord("Witan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.1.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Know"},
	DerivesFrom = {"proto-germanic", "verb", "Witanan"},
	NumberPersonTenseMoodInflections = {
		"plural", "first-person", "present", "indicative", "Witom" -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	}
})

DefineLanguageWord("Wod", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 96.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Frenzied", "Enraged", "Mad"}
})

DefineLanguageWord("Wulf", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 209.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Wolf"}, -- source gives the German "Wolf"
	DerivesFrom = {"proto-germanic", "noun", "Wulfa"}
})

DefineLanguageWord("Wyrm", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 209.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Worm", "Maggot", "Adder", "Viper", "Serpent"}, -- source (apparently) gives the German "Wurm, Made, Natter, Schlange" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Vurma"},
	Gender = "masculine"
})

-- Compounds

DefineLanguageWord("Heremaecg", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 15.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Soldier"},
	CompoundElements = {
		"prefix", "old-english", "noun", "Here", -- as given by the source
--		"suffix", -- ?
	}
})

DefineLanguageWord("Heremann", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 15.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Soldier"},
	CompoundElements = {
		"prefix", "old-english", "noun", "Here", -- as given by the source
		"suffix", "old-english", "noun", "Mann" -- presumably
	}
})

DefineLanguageWord("Mundbora", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 167.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Guardian", "Protector"}, -- source apparently gives the German "Vormund, Beschützer" as the meaning
	CompoundElements = {
		"prefix", "old-english", "noun", "Mund", -- presumably
--		"suffix", -- ?
	}
})

DefineLanguageWord("Werod", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 10.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Throng", "Band", "Army"},
	CompoundElements = {
		"prefix", "old-english", "noun", "Wer",
--		"suffix", -- ?
	}
})


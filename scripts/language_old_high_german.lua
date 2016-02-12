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

DefineLanguageWord("Adal", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 14.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Lineage", "Noble Lineage", "Noble"}, -- source gives "Geschlecht, edles Geschlecht, Adel" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Aþala"},
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

DefineLanguageWord("Bluomo", { -- source also gives the alternative form "Pluomo", and the (feminine) alternative form "Bluoma"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 146.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Flower"}, -- source gives the German "Blume" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Blôma"},
	Gender = "masculine"
})

DefineLanguageWord("Brart", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Edge", "Forepart of a Ship"},
	Gender = "masculine"
})

DefineLanguageWord("Brort", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Skewer", "Projectile", "Edge", "Rim", "Forepart of a Ship"},
	Gender = "masculine"
})

DefineLanguageWord("Buoh", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Book"}, -- derived from Proto-Germanic "Bōks"; the source has the meaning for that word as "'tablet' > 'book'", but it is not clear if it means that the meaning became book in the child languages of Proto-Germanic, or within the timespan of the language itself
	DerivesFrom = {"proto-germanic", "noun", "Bōks"}
})

DefineLanguageWord("Burg", { -- source also gives the alternative form "Purg"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Fortified Place", "Castle", "Palace", "City"}, -- source gives "befestigter Ort, Burg, Schloß, Stadt" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Burg"},
	Gender = "feminine"
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

DefineLanguageWord("Corn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Grain"}, -- derived from Proto-Germanic "Kŕnam", which has the meaning of "grain"
	DerivesFrom = {"proto-germanic", "noun", "Kŕnam"}
})

DefineLanguageWord("Dorf", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 100.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Village"}, -- source gives the German "Dorf" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Þurpa"},
	Gender = "neuter"
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

DefineLanguageWord("Fehu", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Cattle"},
	DerivesFrom = {"proto-germanic", "noun", "Fehu"}
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
	DerivesFrom = {"proto-germanic", "noun", "Flōduz"}
})

DefineLanguageWord("Fuir", { -- source also gives the alternate form "Fiur"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 127.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Fire"}, -- source gives "Feuer" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Fûir"},
	Gender = "neuter"
})

DefineLanguageWord("Fuoz", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Foot"}, -- derived from Proto-Germanic "Fōts", which has the meaning of "foot"
	DerivesFrom = {"proto-germanic", "noun", "Fōts"}
})

DefineLanguageWord("Gart", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Rod", "Prickle"}
})

DefineLanguageWord("Gart", { -- is this the same word as the "Gart" which has another meaning detailed above? Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Garden"}, -- derived from Proto-Germanic "Gárdiz", which has the meaning of "garden"
	DerivesFrom = {"proto-germanic", "noun", "Gárdiz"}
})

DefineLanguageWord("Gisiht", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Sight"},
	DerivesFrom = {"proto-indo-european", "verb", "Sekʷ"}
})

DefineLanguageWord("Hagazussa", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 200.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Travelling Actor or Minstrel who Performs in Women's Clothing"},
	NumberCaseInflections = {
		"plural", "nominative", "Hagazussan"
	}
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

DefineLanguageWord("Hleib", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Bread"}
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

DefineLanguageWord("Îsarn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 24.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Iron"}, -- source gives the German "Eisen" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Îsarna"},
	Gender = "neuter"
})

DefineLanguageWord("Jār", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Year"}, -- derived from Proto-Germanic "Yēra", which means "Year"
	DerivesFrom = {"proto-germanic", "noun", "Yēra"}
})

DefineLanguageWord("Kōl", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Cabbage"}
})

DefineLanguageWord("Lōn", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Pay"} -- source gives German word "Lohn" as transation
})

DefineLanguageWord("Maht", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Might"}, -- derived from Proto-Germanic "Maχtiz", which means "Might"
	DerivesFrom = {"proto-germanic", "noun", "Maχtiz"}
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

DefineLanguageWord("Mēr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-high-german",
	Type = "adverb",
	Meanings = {"More"}
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

DefineLanguageWord("Prucca", { -- source also gives the alternative form "Prucga"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 145.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Bridge"}, -- source gives the German "Brücke" as the meaning
	Gender = "feminine",
	DerivesFrom = {"proto-germanic", "noun", "Brugjô"}
})

DefineLanguageWord("Rarta", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 10.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Voice", "Modulation"},
	Gender = "feminine"
})

DefineLanguageWord("Sāt", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Seed"}, -- derived from the Proto-Germanic "Sēþiz", which means "Seed"
	DerivesFrom = {"proto-germanic", "noun", "Sēþiz"}
})

DefineLanguageWord("Sēula", { -- source also gives "Sēla"; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Soul"}
})

DefineLanguageWord("Skato", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Shadow"},
	DerivesFrom = {"proto-germanic", "noun", "Skadwas"}
})

DefineLanguageWord("Snura", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Daughter-in-Law"}
})

DefineLanguageWord("Suht", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Sickness"}
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

DefineLanguageWord("Teil", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Part"}
})

DefineLanguageWord("Tōd", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Death"}
})

DefineLanguageWord("Urlaga", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Fate"},
	Gender = "feminine"
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

DefineLanguageWord("Wela", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "old-high-german",
	Type = "adverb",
	Meanings = {"Well"}
})

DefineLanguageWord("Wer", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Man"},
	DerivesFrom = {"proto-indo-european", "noun", "Wiros"}
})

DefineLanguageWord("Wī̆r", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-high-german",
	Type = "pronoun",
	Meanings = {"We"},
	Nominative = "Wī̆r"
})

DefineLanguageWord("Wurm", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-high-german",
	Type = "noun",
	Meanings = {"Worm", "Serpent"} -- probably could be extended to mean "wyrm" as well
})

DefineLanguageWord("Beran", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {},
	DerivesFrom = {"proto-germanic", "verb", "Beran"}
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

DefineLanguageWord("Bītan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Bite"}
})

DefineLanguageWord("Ezzan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Eat"}
})

DefineLanguageWord("Helfan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Help"}
})

DefineLanguageWord("Hnīgan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Bow"},
	DerivesFrom = {"proto-indo-european", "verb", "Kneygʷh"}
})

DefineLanguageWord("Hōren", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Hear"}
})

DefineLanguageWord("Kweman", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Come"}, -- apparently, but not entirely clear from source
	DerivesFrom = {"proto-germanic", "verb", "Kwemanan"}
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

DefineLanguageWord("Loufan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Run"}
})

DefineLanguageWord("Malan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Grind"},
	DerivesFrom = {"proto-indo-european", "verb", "Mel"}
})

DefineLanguageWord("Nerjan", { -- source also gives alternative forms "Nerren" and "Neren"; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Heal", "Sustain the Life of", "Save", "Protect", "Nourish"} -- meaning given for Middle High German, but not for Old High German, presumably because both are the same
})

DefineLanguageWord("Queman", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Come"},
	DerivesFrom = {"proto-indo-european", "verb", "Gʷem"}
})

DefineLanguageWord("Scrīban", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Write"}
})

DefineLanguageWord("Skatewen", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Shadow"}, -- "to shadow"
	DerivesFrom = {"proto-germanic", "noun", "Skadwas"}
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

DefineLanguageWord("Standan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Stand"}
})

DefineLanguageWord("Stīgan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
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

DefineLanguageWord("Trūēn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Trust"}
})

DefineLanguageWord("Werdan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Become"}
})

DefineLanguageWord("Wizzan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Know"},
	DerivesFrom = {"proto-germanic", "verb", "Witum"},
	NumberPersonTenseMoodInflections = {
		"plural", "first-person", "present", "indicative", "Wizzum" -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	}
})

DefineLanguageWord("Zahar", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Tear"}
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

DefineLanguageWord("Ziohan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Pull"}, -- derived from Proto-Germanic "Téuχanan", which has the meaning of "pull"
	DerivesFrom = {"proto-germanic", "verb", "Téuχanan"}
})

DefineLanguageWord("Zwirnēn", { -- source also gives the alternative form "Zwirnōn"; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	Language = "old-high-german",
	Type = "verb",
	Meanings = {"Twine"}
})

DefineLanguageWord("Durri", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Type = "adjective",
	Meanings = {"Dry"}, -- derived from Proto-Germanic "Þrsúz", which has the meaning of "dry"
	DerivesFrom = {"proto-germanic", "adjective", "Þrsúz"}
})

DefineLanguageWord("Fūl", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Type = "adjective",
	Meanings = {"Foul"}, -- derived from the Proto-Germanic "Fūla", which means "Foul"
	DerivesFrom = {"proto-germanic", "adjective", "Fūla"}
})

DefineLanguageWord("Hōh", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Type = "adjective",
	Meanings = {"High"} -- source gives translation as the German word "hoch"
})

DefineLanguageWord("Jung", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-high-german",
	Type = "adjective",
	Meanings = {"Young"},
	DerivesFrom = {"proto-indo-european", "adjective", "Yehw"}
})

DefineLanguageWord("Lang", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Type = "adjective",
	Meanings = {"Long"}, -- derived from Proto-Germanic "Langaz", which means "Long"
	DerivesFrom = {"proto-germanic", "adjective", "Langaz"}
})

DefineLanguageWord("Lōs", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Type = "adjective",
	Meanings = {"Empty", "Loose"} -- source gives translation as the German words "los" and "leer"
})

DefineLanguageWord("Mēro", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Type = "adjective",
	Meanings = {"More"}, -- perhaps a "determiner" class of words should be added?
	DerivesFrom = {"proto-germanic", "adjective", "Mēria"},
	ComparisonDegreeInflections = {
		"comparative", "Mēro", -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
		"superlative", "Mēst" -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	}
})

DefineLanguageWord("Reht", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Type = "adjective",
	Meanings = {"Right", "Straight"}, -- derived from Proto-Germanic "Reχtaz", which means "Right, Straight"
	DerivesFrom = {"proto-germanic", "adjective", "Reχtaz"}
})

DefineLanguageWord("Rōt", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Type = "adjective",
	Meanings = {"Red"}
})

DefineLanguageWord("Tiuf", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Type = "adjective",
	Meanings = {"Deep"}, -- derived from Proto-Germanic "Déwpaz", which has the meaning of "deep"
	DerivesFrom = {"proto-germanic", "adjective", "Déwpaz"}
})

DefineLanguageWord("Aba", { -- Lehmann also gives the alternative form "ab"; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Type = "adposition",
	Meanings = {"From"}, -- derived from the Proto-Germanic "Af", which means "From"
	DerivesFrom = {"proto-germanic", "adposition", "Af"}
})

DefineLanguageWord("Ubir", { -- Lehmann also gives the alternative form "ubar"; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Type = "adposition",
	Meanings = {"Over"}, -- derived from the Proto-Germanic "Ufar", which means "Over"
	DerivesFrom = {"proto-germanic", "adposition", "Ufar"}
})

DefineLanguageWord("Sibun", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "old-high-german",
	Type = "numeral",
	Number = 7
})

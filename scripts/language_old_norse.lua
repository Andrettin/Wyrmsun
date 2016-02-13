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

DefineLanguageWord("Ađal", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 14.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Nature", "Character"}, -- source gives "natura, indoles" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Aþala"},
	Gender = "neuter"
})

DefineLanguageWord("Ađalskâli", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 14.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Main Hall"}, -- source gives "Haupthalle" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Aþala"},
	Gender = "masculine"
})

DefineLanguageWord("Ađili", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 14.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Him whom Befits to Take Charge of Something in a Tribunal"}, -- source gives "dem es zukommt, eine Sache, vor Gericht zu führen" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Aþala"},
	Gender = "masculine"
})

DefineLanguageWord("Aldr", { -- Source: Geir T. Zoëga, "A Concise Dictionary of Old Icelandic", 1910, p. 8.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Age", "Lifetime"},
	NumberCaseInflections = {
		"singular", "genitive", "Aldrs"
	},
	Gender = "masculine"
})

DefineLanguageWord("Aldrnari", { -- Compound of the words "Aldr" and "Nari", literally "life-sustainer"; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Fire"},
	Gender = "masculine"
})

DefineLanguageWord("Ār", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Year"}, -- derived from Proto-Germanic "Yēra", which means "Year"
	DerivesFrom = {"proto-germanic", "noun", "Yēra"}
})

DefineLanguageWord("Bađ", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 133.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Steam Bath"}, -- source gives the German "Dampfbad" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Baþa"},
	Gender = "neuter"
})

DefineLanguageWord("Bekkr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 133.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Stream"}, -- source gives the German "Bach" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Baki"}
})

DefineLanguageWord("Bera", { -- source also gives alternative form "Birna"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Female Bear"}, -- source gives the German "Bärin" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Berôn"}, -- presumably from "Berôn", since that has the (apparently) same meaning and is also feminine, but the source is not entirely clear (it could be "Beran" instead)
	Gender = "feminine"
})

DefineLanguageWord("Bjarg", { -- source also gives the alternate form "Berg"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Cliff", "Mountain"}, -- source gives "Fels, Berg" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Berga"},
	Gender = "neuter"
})

DefineLanguageWord("Bjǫrn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Bear"}, -- source gives the German "Bär" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Beran"},
	Gender = "masculine"
})

DefineLanguageWord("Blômi", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 146.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Flower"}, -- source gives the German "Blume" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Blôma"},
	Gender = "masculine"
})

DefineLanguageWord("Blômstr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 146.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Blossom"}, -- apparently, but it is not clear from the source
	DerivesFrom = {"proto-germanic", "noun", "Blôma"},
	Gender = "neuter"
})

DefineLanguageWord("Bōk", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Book"}, -- derived from Proto-Germanic "Bōks"; the source has the meaning for that word as "'tablet' > 'book'", but it is not clear if it means that the meaning became book in the child languages of Proto-Germanic, or within the timespan of the language itself
	DerivesFrom = {"proto-germanic", "noun", "Bōks"}
})

DefineLanguageWord("Borg", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Terrace", "Rampart", "Wall", "Castle", "City"}, -- source gives "Terrasse, Wall, Mauer, Burg, Stadt" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Burg"},
	Gender = "feminine"
})

DefineLanguageWord("Bǫrr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 9.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Wheat", "Spelt"} -- the word means one of these, not both
})

DefineLanguageWord("Broddr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Point", "Sprout"},
	DerivesFrom = {"proto-germanic", "noun", "Bruzdaz"},
	Gender = "masculine"
})

DefineLanguageWord("Brû", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 145.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Bridge"}, -- source gives the German "Brücke" as the meaning
	Gender = "feminine",
	DerivesFrom = {"proto-germanic", "noun", "Brôvô"}
})

DefineLanguageWord("Brûn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 145.
	Language = "old-norse",
	Type = "noun",
	Gender = "feminine",
	Meanings = {"Brow", "Edge"}, -- source gives the German "Braue, Rand" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Brûvô"},
	NumberCaseInflections = {
		"plural", "nominative", "Brŷnn"
	}
})

DefineLanguageWord("Bryggja", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 145.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Ship Bridge"}, -- source gives the German "Schiffsbrücke" as the meaning
	Gender = "feminine",
	DerivesFrom = {"proto-germanic", "noun", "Brugjô"}
})

DefineLanguageWord("Dyrr", { -- this is the nominative plural; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Door"}, -- derived from Proto-Germanic "Durez", which has the meaning of "door"
	DerivesFrom = {"proto-germanic", "noun", "Durez"},
	NumberCaseInflections = {
		"plural", "nominative", "Dyrr"
	}
})

DefineLanguageWord("Eir", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 11.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Ore", "Copper"}, -- source gives the German "Erz, Kupfer" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Aiza"},
	Gender = "neuter"
})

DefineLanguageWord("Fé", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Cattle"},
	DerivesFrom = {"proto-germanic", "noun", "Fehu"}
})

DefineLanguageWord("Fiskr", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Fish"}
})

DefineLanguageWord("Flōđ", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Flood"}, -- derived from the Proto-Germanic "Flōduz", which means "Flood"
	DerivesFrom = {"proto-germanic", "noun", "Flōduz"}
})

DefineLanguageWord("Fōtr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Foot"}, -- derived from Proto-Germanic "Fōts", which has the meaning of "foot"
	DerivesFrom = {"proto-germanic", "noun", "Fōts"}
})

DefineLanguageWord("Fŷrr", { -- source also gives the alternate form "Fûrr"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 127.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Fire"}, -- source gives "Feuer" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Fûir"},
	Gender = "masculine"
})

DefineLanguageWord("Gaddr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Prickle"},
	DerivesFrom = {"proto-germanic", "noun", "Gazdaz"},
	Gender = "masculine"
})

DefineLanguageWord("Garđr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Garden"}, -- derived from Proto-Germanic "Gárdiz", which has the meaning of "garden"
	DerivesFrom = {"proto-germanic", "noun", "Gárdiz"}
})

DefineLanguageWord("Greddir", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Feeder", "Satisfier"}
})

DefineLanguageWord("Haddr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 3, 8.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Woman's Long Hair"},
	DerivesFrom = {"proto-germanic", "noun", "Hazdaz"},
	Gender = "masculine"
})

DefineLanguageWord("Hafr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 9.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Male Goat"}
})

DefineLanguageWord("Hane", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Rooster"}
})

DefineLanguageWord("Hodd", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Treasure"},
	DerivesFrom = {"proto-germanic", "noun", "Huzda"}
})

DefineLanguageWord("Hrǫnn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Wave"},
	DerivesFrom = {"proto-germanic", "noun", "Hraznō"},
	Gender = "feminine"
})

DefineLanguageWord("Hundr", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Dog"}
})

DefineLanguageWord("Hurđ", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Wattle"}, -- derived from Proto-Germanic "Χŕdiz", which has the meaning of "wattle"
	DerivesFrom = {"proto-germanic", "noun", "Χŕdiz"}
})

DefineLanguageWord("Îsarn", { -- source also gives the alternative form "Jârn"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 24.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Iron"}, -- source gives the German "Eisen" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Îsarna"},
	Gender = "neuter"
})

DefineLanguageWord("Kona", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Woman"},
	DerivesFrom = {"proto-indo-european", "noun", "Gʷen"}
})

DefineLanguageWord("Korn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Grain"}, -- derived from Proto-Germanic "Kŕnam", which has the meaning of "grain"
	DerivesFrom = {"proto-germanic", "noun", "Kŕnam"}
})

DefineLanguageWord("Kyn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Race"},
	DerivesFrom = {"proto-germanic", "noun", "Kuni"}
})

DefineLanguageWord("Māttr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Might"}, -- derived from Proto-Germanic "Maχtiz", which has the meaning of "Might"
	DerivesFrom = {"proto-germanic", "noun", "Maχtiz"}
})

DefineLanguageWord("Meir", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-norse",
	Type = "adverb",
	Meanings = {"More"}
})

DefineLanguageWord("Mēr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-norse",
	Type = "pronoun",
	Meanings = {"Me"}, -- dative
	Dative = "Mēr"
})

DefineLanguageWord("Mergr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Marrow in a Bone"},
	DerivesFrom = {"proto-germanic", "noun", "Mazgaz"},
	NumberCaseInflections = {
		"singular", "genitive", "Mergjar"
	},
	Gender = "masculine"
})

DefineLanguageWord("Nātt", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Night"}, -- derived from Proto-Germanic "Naχts", which means "Night"
	DerivesFrom = {"proto-germanic", "noun", "Naχts"}
})

DefineLanguageWord("Oddr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 7.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Point", "Place"},
	DerivesFrom = {"proto-germanic", "noun", "Uzdaz"},
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Odds"
	}
})

DefineLanguageWord("Orlǫg", { -- is singular or plural?; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Fate"}
})

DefineLanguageWord("Rann", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"House"},
	Gender = "neuter"
})

DefineLanguageWord("Rǫdd", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Sound", "Voice", "Vowel"},
	Gender = "feminine"
})

DefineLanguageWord("Sāđ", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Seed"}, -- derived from the Proto-Germanic "Sēþiz", which means "Seed"
	DerivesFrom = {"proto-germanic", "noun", "Sēþiz"}
})

DefineLanguageWord("Síði", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 118.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Magic-Worker"}
})

DefineLanguageWord("Síða", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 118.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Work Magic"}
})

DefineLanguageWord("Sunna", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Sun"}, -- derived from Proto-Germanic "Sunōn", which has the meaning of "Sun"
	DerivesFrom = {"proto-germanic", "noun", "Sunōn"}
})

DefineLanguageWord("Svīn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Pig"}, -- derived from the Proto-Germanic "Swīnaz", which means "Pig"
	DerivesFrom = {"proto-germanic", "noun", "Swīnaz"}
})

DefineLanguageWord("Þorp", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 100.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Flock", "Crowd", "Farmstead"}, -- source gives the German "Schar, Menschenhaufen, kleineres Gehöft" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Þurpa"},
	Gender = "neuter"
})

DefineLanguageWord("Þyrpast", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 100.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Herd Together in Large Numbers"}, -- source gives the German "sich massenhaft zusammendrängen" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Þurpa"}
})

DefineLanguageWord("Vagn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 9.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Wagon"},
	DerivesFrom = {"proto-germanic", "noun", "Waganaz"} -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
})

DefineLanguageWord("Valkyrja", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Valkyrie"},
	Gender = "feminine"
})

DefineLanguageWord("Vegr", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Way"}
})

DefineLanguageWord("Vēr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-norse",
	Type = "pronoun",
	Meanings = {"We"},
	Nominative = "Vēr"
})

DefineLanguageWord("Verr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Man"},
	DerivesFrom = {"proto-indo-european", "noun", "Wiros"}
})

DefineLanguageWord("Bauþ", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Offered"},
	DerivesFrom = {"proto-germanic", "verb", "Beud"},
	Participles = {
		"past", "Bauþ" -- "offered"
	}
})

DefineLanguageWord("Bera", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-norse",
	Type = "verb",
	Meanings = {},
	DerivesFrom = {"proto-germanic", "verb", "Beran"}
})

DefineLanguageWord("Bīta", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Bite"},
	DerivesFrom = {"proto-germanic", "verb", "Bītan"}
})

DefineLanguageWord("Eta", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Eat"}
})

DefineLanguageWord("Grenna", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Feed"}
})

DefineLanguageWord("Hnīga", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Bow"},
	DerivesFrom = {"proto-indo-european", "verb", "Kneygʷh"}
})

DefineLanguageWord("Koma", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Come"},
	DerivesFrom = {"proto-indo-european", "verb", "Gʷem"}
})

DefineLanguageWord("Ljā", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Lend"},
	DerivesFrom = {"proto-indo-european", "verb", "Leykʷ"}
})

DefineLanguageWord("Mala", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Grind"},
	DerivesFrom = {"proto-indo-european", "verb", "Mel"}
})

DefineLanguageWord("Nara", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Live"}
})

DefineLanguageWord("Nema", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Take", "Accept"},
	DerivesFrom = {"proto-indo-european", "verb", "Nem"}
})

DefineLanguageWord("Stīga", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Climb"},
	DerivesFrom = {"proto-germanic", "verb", "Steig"}
})

DefineLanguageWord("Tvinna", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Double", "Duplicate"}
})

DefineLanguageWord("Verða", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Become"}
})

DefineLanguageWord("Vita", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Know"},
	DerivesFrom = {"proto-germanic", "verb", "Witum"},
	NumberPersonTenseMoodInflections = {
		"plural", "first-person", "present", "indicative", "Vitom" -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	}
})

DefineLanguageWord("Djūpr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"Deep"}, -- derived from Proto-Germanic "Déwpaz", which has the meaning of "deep"
	DerivesFrom = {"proto-germanic", "adjective", "Déwpaz"}
})

DefineLanguageWord("Fūll", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"Foul"}, -- derived from the Proto-Germanic "Fūla", which means "Foul"
	DerivesFrom = {"proto-germanic", "adjective", "Fūla"}
})

DefineLanguageWord("Hvītr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"White"},
	DerivesFrom = {"proto-indo-european", "adjective", "Ḱweyt"}
})

DefineLanguageWord("Kvikr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"Alive"},
	DerivesFrom = {"proto-indo-european", "adjective", "Gʷīwos"}
})

DefineLanguageWord("Langr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"Long"}, -- derived from Proto-Germanic "Langaz", which means "Long"
	DerivesFrom = {"proto-germanic", "adjective", "Langaz"}
})

DefineLanguageWord("Meiri", { -- given by Lehmann, but it is not entirely clear if he meant that this is the positive version of the word; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"More"},
	DerivesFrom = {"proto-germanic", "adjective", "Mēria"},
	ComparisonDegreeInflections = {
		"comparative", "Meiri",
		"superlative", "Mestr"
	}
})

DefineLanguageWord("Rauðr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"Red"},
	DerivesFrom = {"proto-indo-european", "adjective", "Rowdho"}
})

DefineLanguageWord("Rēttr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"Right", "Straight"}, -- derived from Proto-Germanic "Reχtaz", which means "Right, Straight"
	DerivesFrom = {"proto-germanic", "adjective", "Reχtaz"}
})

DefineLanguageWord("Seiðr", { -- maybe is the past participle of Síði instead? Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 118.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"Magic Worked"}
})

DefineLanguageWord("Tvennr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 6.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"Twofold"} -- maybe is an adverb instead?
	-- source also gives "Tvinnr" as an alternative form
})

DefineLanguageWord("Þrennr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"Threefold"} -- maybe is an adverb instead?
	-- source also gives "Þrinnr" as an alternative form
})

DefineLanguageWord("Þurr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"Dry"}, -- derived from Proto-Germanic "Þrsúz", which has the meaning of "dry"
	DerivesFrom = {"proto-germanic", "adjective", "Þrsúz"}
})

DefineLanguageWord("Af", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "adposition",
	Meanings = {"From"}, -- derived from Proto-Germanic "Af", which means "From"
	DerivesFrom = {"proto-germanic", "adposition", "Af"}
})

DefineLanguageWord("Yfir", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "adposition",
	Meanings = {"Over"}, -- derived from the Proto-Germanic "Ufar", which means "Over"
	DerivesFrom = {"proto-germanic", "adposition", "Ufar"}
})

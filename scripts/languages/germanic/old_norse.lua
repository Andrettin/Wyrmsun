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

DefineLanguageWord("Af", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "adposition",
	Meanings = {"From"}, -- derived from Proto-Germanic "Af", which means "From"
	DerivesFrom = {"proto-germanic", "adposition", "Af"}
})

DefineLanguageWord("Afi", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 20.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Grandfather"}, -- source gives the German "Großvater" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Avan"},
	Gender = "masculine"
})

DefineLanguageWord("Ala", { -- source also gives the alternative form "Ôl"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 19.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Bring Forth", "Procreate", "Feed"}, -- source gives the German "hervorbringen, zeugen, füttern" as the meaning
	DerivesFrom = {"proto-germanic", "verb", "Al"}
})

DefineLanguageWord("Aldin", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 19.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Beechnut"}, -- source gives the German "Ecker" as the meaning
	DerivesFrom = {"proto-germanic", "verb", "Al"}, -- comes from the participle past of "Al", "Alda"
	Gender = "neuter"
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

DefineLanguageWord("Alfr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 20.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Elf"}, -- source gives the German "Alf, Elf" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Alba"},
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "no-case", "Alf", -- presumably (assuming the "-r" ending here is the nominative ending)
		"plural", "nominative", "Alfar"
	}
})

DefineLanguageWord("Ali", { -- this is the (present?) participle; source gives "ali(þ)"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 19.
	Language = "old-norse",
	Type = "verb",
	Meanings = {},
	DerivesFrom = {"proto-germanic", "verb", "Al"},
	Participles = {
		"present", "Ali"
	}
	-- appears in ali-svîn
})

DefineLanguageWord("Alin", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.1.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Ell"}
})

DefineLanguageWord("Almr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 23.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Elm"}, -- source apparently gives the German "Ulme" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Alma"},
	NumberCaseInflections = {
		"singular", "no-case", "Alm", -- presumably (assuming the "-r" ending here is the nominative ending)
	}
})

DefineLanguageWord("Amma", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 17.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Grandmother"}, -- source gives the German "Großmutter" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Ammôn"},
	Gender = "feminine"
})

DefineLanguageWord("Anga", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, p. 228.
	Language = "old-norse",
	Type = "verb", -- apparently
	Meanings = {"Sprout", "Shoot"}
})

DefineLanguageWord("Ār", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Year"}, -- derived from Proto-Germanic "Yēra", which means "Year"
	DerivesFrom = {"proto-germanic", "noun", "Yēra"}
})

DefineLanguageWord("Austan", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 12.
	Language = "old-norse",
	Type = "adverb",
	Meanings = {"From the East"}, -- source gives the German "von Osten her" as the meaning
	DerivesFrom = {"proto-germanic", "adverb", "Austanô"}
})

DefineLanguageWord("Austr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 12.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"East"}, -- source gives the German "Osten" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Austa"},
	Gender = "neuter"
})

DefineLanguageWord("Austr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 12.
	Language = "old-norse",
	Type = "adverb",
	Meanings = {"Eastward"}, -- source gives the German "ostwärts" as the meaning
	DerivesFrom = {"proto-germanic", "adverb", "Austa"}
})

DefineLanguageWord("Bađ", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 133.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Steam Bath"}, -- source gives the German "Dampfbad" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Baþa"},
	Gender = "neuter"
})

DefineLanguageWord("Bađmr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 134.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Tree"}, -- source gives the German "Baum" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Bagma"},
	Gender = "masculine"
})

DefineLanguageWord("Barđ", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Beard", "Stem", "Edge", "Seam"}, -- source gives the German "Bart, Steven, Rand, Saum" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Barda"},
	Gender = "neuter"
})

DefineLanguageWord("Barđa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"A Type of Axe"}, -- source gives the German "eine Art Axt" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Barda"}
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

DefineLanguageWord("Bein", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 133.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Bone", "Leg"}, -- source gives the German "Knochen, Bein" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Baina"},
	Gender = "neuter"
})

DefineLanguageWord("Beinn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 133.
	Language = "old-norse",
	Type = "adjective", -- or was the adverb meant instead?
	Meanings = {"Straight"} -- source gives the German "gerade" as the meaning
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

DefineLanguageWord("Blār", { -- Fick gives "blâr" instead; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 147; Source: http://www.cnrtl.fr/definition/bleu
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"Blue", "Dark", "Black"}, -- source gives the German "blau, dunkel, schwarz" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Blêva"}
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

DefineLanguageWord("Blŷ", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 148.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Lead"}, -- source gives the German "Blei" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Blîva"},
	Gender = "neuter"
})

DefineLanguageWord("Bōk", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Book"}, -- derived from Proto-Germanic "Bōks"; the source has the meaning for that word as "'tablet' > 'book'", but it is not clear if it means that the meaning became book in the child languages of Proto-Germanic, or within the timespan of the language itself
	DerivesFrom = {"proto-germanic", "noun", "Bōks"}
})

DefineLanguageWord("Bord", { -- Fick gives "borđ" instead; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, pp. 135-136; Source: http://www.cnrtl.fr/definition/B%F6rde
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Board", "Table"}, -- the TLFi gives the French "planche, table" as the meaning; Fick gives the German "Brett, Tisch"
	DerivesFrom = {"proto-germanic", "noun", "Burda"}, -- as given by Fick; the TLFi gives it as deriving from the Indo-European word "bhrdho-" (Source: http://www.cnrtl.fr/definition/bord)
	Gender = "neuter" -- as given by the TLFi
})

DefineLanguageWord("Bord", { -- Source: http://www.cnrtl.fr/definition/bord
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Edge", "Ridge", "Edge of a Ship"}, -- source gives the French "bord, arête; bord de navire" as the meaning
	DerivesFrom = {"proto-indo-european", "noun", "Bhrdho"}
})

DefineLanguageWord("Borg", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Terrace", "Rampart", "Wall", "Castle", "City", "Town"}, -- source gives "Terrasse, Wall, Mauer, Burg, Stadt" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Burg"},
	Gender = "feminine"
})

DefineLanguageWord("Bǫrr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 9.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Wheat", "Spelt"} -- the word means one of these, not both
})

DefineLanguageWord("Brandr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136; Source: http://www.cnrtl.fr/definition/brand
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Fire", "Pole", "Sword Blade", "Burning", "Firewood", "Two-Edged Sword"}, -- Fick gives the German "Brand, Pfosten, Schwertklinge", while the TLFi gives the French "embrasement, bois de chauffage" and "lame de l'épée, glaive"
	DerivesFrom = {"proto-germanic", "noun", "Branda"}, -- apparently, as given by Fick
	Gender = "masculine" -- as given by Fick
})

DefineLanguageWord("Brenna", { -- causative; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Burn"}, -- source gives the German "brennen" as the meaning
	DerivesFrom = {"proto-germanic", "verb", "Brannian"}
})

DefineLanguageWord("Brinna", { -- strong verb; source also gives the alternative form "Brenna"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Burn"}, -- source gives the German "brennen" as the meaning
	DerivesFrom = {"proto-germanic", "verb", "Brennan"}
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

DefineLanguageWord("Brugginn", { -- source gives "brewed" as the meaning, so this is likely the participle past; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.1.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Brewed"},
	DerivesFrom = {"proto-indo-european", "noun", "Bhru"}, -- apparently
	Participles = {
		"past", "Brugginn"
	}
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

DefineLanguageWord("Brundr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Rut"}, -- source gives the German "Brunst"
	DerivesFrom = {"proto-germanic", "noun", "Brundi"}, -- apparently
	Gender = "masculine"
})

DefineLanguageWord("Bruni", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Burning"}, -- source gives the German "Brennen"
	DerivesFrom = {"proto-germanic", "noun", "Brunan"}, -- apparently
	Gender = "masculine"
})

DefineLanguageWord("Bryggia", { -- Fick gives "bryggja" instead; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.2; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 145.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Pier"}, -- as given by Lehmann; Fick gives the German "Schiffsbrücke" as the meaning instead
	DerivesFrom = {"proto-germanic", "noun", "Brugjô"}, -- as given by Fick
	Gender = "feminine" -- as given by Fick
})

DefineLanguageWord("Bygg", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.1.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Barley"},
	DerivesFrom = {"proto-indo-european", "verb", "Bhew"}, -- apparently, since it is a cognate of Sanskrit "bhūtá-" and Greek "éphūn", both of which come from this Proto-Indo-European word
	NumberCaseInflections = {
		"singular", "dative", "Byggue"
	}
})

DefineLanguageWord("Daga", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 106.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Dawn"}, -- source gives the German "tagen" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Dag"}
})

DefineLanguageWord("Dagi", { -- source gives "-dagi"; suffix used in compounds; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 106.
	Language = "old-norse",
	Type = "noun", -- correct?
	Meanings = {},
	DerivesFrom = {"proto-germanic", "noun", "Dag"}
})

DefineLanguageWord("Dagr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 106.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Day"}, -- source apparently gives the German "Tag" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Dag"},
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "no-case", "Dag" -- presumably (assuming the "-r" ending here is the nominative ending)
	}
})

DefineLanguageWord("Djūpr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"Deep"}, -- derived from Proto-Germanic "Déwpaz", which has the meaning of "deep"
	DerivesFrom = {"proto-germanic", "adjective", "Déwpaz"}
})

DefineLanguageWord("Drôttinn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 113.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Prince", "Lord (God)"}, -- source gives the German "Fürst, Herr (Gott)" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Druhtîna"},
	Gender = "masculine"
})

DefineLanguageWord("Dyrr", { -- this is the nominative plural; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Door"}, -- derived from Proto-Germanic "Dur", which has the meaning of "door"
	DerivesFrom = {"proto-germanic", "noun", "Dur"},
	NumberCaseInflections = {
		"plural", "nominative", "Dyrr"
	}
})

DefineLanguageWord("Egg", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.1.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Egg"}
})

DefineLanguageWord("Einn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.4.
	Language = "old-norse",
	Type = "numeral",
	Number = 1, -- apparently
	DerivesFrom = {"proto-germanic", "numeral", "Aynos"}
})

DefineLanguageWord("Eir", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 11.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Ore", "Copper"}, -- source gives the German "Erz, Kupfer" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Aiza"},
	Gender = "neuter"
})

DefineLanguageWord("Eldast", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 19.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Grow Old"}, -- source gives the German "alt werden" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Alda"}
})

DefineLanguageWord("Ellri", { -- this is the comparative; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 19.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"Older"}, -- source gives the German "älter" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Alda"},
	ComparisonDegreeCaseInflections = {
		"comparative", "Ellri", -- source gives the German "älter" as the meaning
		"superlative", "Elztr" -- source gives the German "ältest" as the meaning
	}
})

DefineLanguageWord("Eta", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.1.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Eat"},
	DerivesFrom = {"proto-germanic", "verb", "Etanan"} -- as given by Lehmann
})

DefineLanguageWord("Eystri", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 12.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"Eastern"}, -- source gives the German "östlich" as the meaning
	DerivesFrom = {"proto-germanic", "adverb", "Austa"} -- could also come from the noun written in the same manner
})

DefineLanguageWord("Fé", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Cattle"},
	DerivesFrom = {"proto-germanic", "noun", "Fehu"}
})

DefineLanguageWord("Fimm", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.1.
	Language = "old-norse",
	Type = "numeral",
	Number = 5,
	DerivesFrom = {"proto-germanic", "numeral", "Fimfe"}
})

DefineLanguageWord("Fiskr", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Fish"}
})

DefineLanguageWord("Fjǫrđr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 120.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Bay", "Fjord"}, -- source gives the German "Bucht, Fjord" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Ferþu"},
	Gender = "masculine"
})

DefineLanguageWord("Flōđ", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Flood"}, -- derived from the Proto-Germanic "Flōduz", which means "Flood"
	DerivesFrom = {"northwest-germanic", "noun", "Flodu"}
})

DefineLanguageWord("Fogl", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Bird"}
})

DefineLanguageWord("Fōtr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Foot"}, -- derived from Proto-Germanic "Fōts", which has the meaning of "foot"
	DerivesFrom = {"proto-germanic", "noun", "Fōts"}
})

DefineLanguageWord("Friđr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 128.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Love", "Peace"}, -- source gives the German "Liebe, Friede" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Friþu"},
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "no-case", "Friđ" -- presumably (assuming the "-r" ending here is the nominative ending)
	}
})

DefineLanguageWord("Frigg", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.1.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"A Goddess"}, -- Odin's wife
	DerivesFrom = {"proto-indo-european", "adjective", "Pryx"}
})

DefineLanguageWord("Fugl", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {}
})

DefineLanguageWord("Fūll", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"Foul"}, -- derived from the Proto-Germanic "Fūla", which means "Foul"
	DerivesFrom = {"proto-germanic", "adjective", "Fūla"}
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

DefineLanguageWord("Glotta", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 81.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Laugh with Scorn", "Show the Teeth"}, -- source gives the German "hohnlachen (die Zähne zeigen)" as the meaning
	DerivesFrom = {"proto-germanic", "verb", "Glent"}
})

DefineLanguageWord("Gnîsta", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 76.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Make a Grating Sound Through Hard Brushing", "Gnash the Teeth"}, -- source gives the German "durch hartes Anstreifen einen knirschenden Laut bewirken" and "die Zähne knirschen" as the meanings
	DerivesFrom = {"proto-germanic", "verb", "Gnid"}
})

DefineLanguageWord("Godahus", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Temple"}
	-- this is a compound which has a first element related to "guð"
})

DefineLanguageWord("Gođi", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 76.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Sacerdotal and Judicial Administrator of a District"}, -- source gives the German "priesterlicher und richterlicher Vorstand eines Bezirks auf Island" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Gudjan"},
	Gender = "masculine"
})

DefineLanguageWord("Grâr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 79.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"Gray"}, -- source gives the German "grau" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Grêva"}
})

DefineLanguageWord("Greddir", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Feeder", "Satisfier"}
})

DefineLanguageWord("Grenna", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Feed"}
})

DefineLanguageWord("Grœnn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 80.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"Green"}, -- source gives the German "grün" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Grônia"}
})

DefineLanguageWord("Grŷjandi", { -- part of this compound is derived from the Proto-Germanic adjective "Grêva"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 79.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Dawn"}, -- source gives the German "Morgendämmerung" as the meaning
	Gender = "feminine"
})

DefineLanguageWord("Guð", { -- Lehmann also gives the alternative form "goð"; Fick gives "Guđ", and the alternative form "Gođ"; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.2; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 76.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"God"}, -- as given by Lehmann; Fick corroborates it, giving the German "Gott" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Guda"}, -- as given by Fick
	Gender = "neuter" -- as given by Fick
})

DefineLanguageWord("Guđ", { -- source also gives the alternative form "Gođ"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 76.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"The Christian God"}, -- source gives the German "der christliche Gott" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Guda"},
	Gender = "masculine"
})

DefineLanguageWord("Gull", { -- source also gives the alternative form "goll"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 73.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Gold"}, -- source gives the German "Gold" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Gulþa"},
	Gender = "neuter"
})

DefineLanguageWord("Gume", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Man"},
	DerivesFrom = {"proto-germanic", "noun", "Gumn"}
})

DefineLanguageWord("Gydja", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 76.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Priestess", "Goddess"}, -- source gives the German "Priesterin, Göttin" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Gudjan"},
	Gender = "feminine"
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

DefineLanguageWord("Halfa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 51.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Half", "Part", "Side"}, -- source gives the German "Hälfte, Teil, Seite" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Halba"},
	Gender = "feminine"
})

DefineLanguageWord("Halfr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 51.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"Half"}, -- source gives the German "halb" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Halba"},
	ComparisonDegreeCaseInflections = {
		"positive", "no-case", "Half" -- presumably (assuming the "-r" ending here is a nominative ending)
	}
})

DefineLanguageWord("Hals", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 50.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Neck", "Throat", "Front Part of a Ship", "Elongated Ridge"}, -- source gives the German "Hals, Vorderteil des Schiffes, länglicher Bergrücken" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Halsa"},
	Gender = "masculine"
})

DefineLanguageWord("Hamarr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 46.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Hammer", "Mining Hammer"}, -- source gives the German "Hammer, Berghammer" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Hamara"},
	Gender = "masculine"
})

DefineLanguageWord("Hane", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Rooster"}
})

DefineLanguageWord("Harđr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 48.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"Hard", "Sturdy", "Hefty"}, -- source gives the German "hart, kräftig, heftig" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Hardu"}
})

DefineLanguageWord("Haugr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 54.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Hill"}, -- source gives the German "Hügel" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Hauga"},
	Gender = "masculine"
})

DefineLanguageWord("Heilagr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 42.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"Holy"}, -- source gives the German "heilig"
	DerivesFrom = {"proto-germanic", "adjective", "Hailaga"}
})

DefineLanguageWord("Heim", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 52.
	Language = "old-norse",
	Type = "adverb",
	Meanings = {"Home"}, -- source gives the German "nach Hause" as the meaning
	DerivesFrom = {"proto-germanic", "adverb", "Haima"} -- apparently
})

DefineLanguageWord("Heíman", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 52.
	Language = "old-norse",
	Type = "adverb",
	Meanings = {"Home"}, -- source gives the German "von Hause" as the meaning
	DerivesFrom = {"proto-germanic", "adverb", "Haimanô"} -- apparently
})

DefineLanguageWord("Heima", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 52.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Home"}, -- source gives the German "Heimat" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Haima"},
	Gender = "neuter",
	NumberCaseInflections = {
		"singular", "dative", "Heima" -- source gives meaning of "zu Hause"
	}
})

DefineLanguageWord("Heimr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 52.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Home", "World"}, -- source gives the German "Heimat, Welt" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Haima"},
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "no-case", "Heim", -- presumably (assuming the "-r" ending here is the nominative ending)
		"singular", "genitive", "Heims" -- correct?
	}
})

DefineLanguageWord("Heimskr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 52.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"Dumb"}, -- source gives the German "dumm (immer zu Hause hockend)" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Haima"} -- apparently
})

DefineLanguageWord("Helfđ", { -- source also gives the alternative form "helft"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 51.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Half"}, -- source (apparently) gives the German "Hälfte" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Halbiþô"},
	Gender = "feminine"
})

DefineLanguageWord("Hildr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 50.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Fight", "Conflict", "A Conflict Goddess"}, -- source gives the German "Kampf, Kampfgöttin" as the meaning
	Gender = "feminine",
	DerivesFrom = {"proto-germanic", "noun", "Heldî"}
})

DefineLanguageWord("Hjalmr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 49.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Helm", "Helmet", "Treetop"}, -- source (apparently) gives the German "Helm, Wipfel" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Helma"},
	Gender = "masculine" -- apparently
})

DefineLanguageWord("Hnīga", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Bow"},
	DerivesFrom = {"proto-indo-european", "verb", "Kneygʷh"}
})

DefineLanguageWord("Hnot", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 58.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Nut"}, -- source gives the German "Nuß"
	DerivesFrom = {"proto-germanic", "noun", "Hnut"},
	Gender = "feminine",
	NumberCaseInflections = {
		"plural", "nominative", "Hnetr"
	}
})

DefineLanguageWord("Hodd", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Treasure"},
	DerivesFrom = {"proto-germanic", "noun", "Huzda"}
})

DefineLanguageWord("Hôr", { -- source also gives the alternative form "hâr"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 54.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"High"}, -- source gives the German "hoch" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Hauha"}
})

DefineLanguageWord("Horn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 47.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Horn", "Drinking Horn", "Corner"}, -- source gives the German "Horn, Trinkhorn, Ecke"
	DerivesFrom = {"northwest-germanic", "noun", "Horna"}, -- presumably
	Gender = "neuter"
})

DefineLanguageWord("Hreimr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 60.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Noise", "Roar"}, -- source gives the Latin "sonitus, fremitus" as the meaning
	DerivesFrom = {"proto-germanic", "verb", "Hri"}
})

DefineLanguageWord("Hrîna", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 60.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Pig Shout"}, -- source gives the German "schreien, vom Schweine" as the meaning
	DerivesFrom = {"proto-germanic", "verb", "Hri"}
})

DefineLanguageWord("Hrǫnn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Wave"},
	DerivesFrom = {"proto-germanic", "noun", "Hraznō"},
	Gender = "feminine"
})

DefineLanguageWord("Hryggva", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.1.
	Language = "old-norse",
	Type = "verb", -- correct?
	Meanings = {"Rue"},
	DerivesFrom = {"proto-indo-european", "noun", "Krewx"},
})

DefineLanguageWord("Hundr", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Dog"}
})

DefineLanguageWord("Hundrað", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.2.
	Language = "old-norse",
	Type = "numeral", -- presumably
	DerivesFrom = {"proto-germanic", "numeral", "Χunda"}
})

DefineLanguageWord("Hungr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 44.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Hunger"}, -- source gives the German "Hunger" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Hunhru"},
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Hungrar"
	}
})

DefineLanguageWord("Hurđ", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Wattle"}, -- derived from Proto-Germanic "Χŕdiz", which has the meaning of "wattle"
	DerivesFrom = {"proto-germanic", "noun", "Χŕdiz"}
})

DefineLanguageWord("Hvītr", { -- Fick gives "hvîtr" instead; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 67.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"White", "Light Colored"}, -- Lehmann gives only "white" as the meaning, while Fick gives the German "weiß, hellfarbig"
	DerivesFrom = {"proto-germanic", "adjective", "Hvîta"} -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 67.
})

DefineLanguageWord("Hyrni", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 47.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Corner", "Angle"}, -- source gives the German "Ecke, Winkel" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Hurnia"},
	Gender = "neuter"
})

DefineLanguageWord("Îsarn", { -- source also gives the alternative form "Jârn"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 24.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Iron"}, -- source gives the German "Eisen" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Îsarna"},
	Gender = "neuter"
})

DefineLanguageWord("Ist", { -- this is the singular first person present; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.1.
	Language = "old-norse", -- source gives Old Norse Runic
	Type = "verb",
	Meanings = {"Is"},
	DerivesFrom = {"proto-germanic", "verb", "Isti"},
	NumberPersonTenseMoodInflections = {
		"singular", "first-person", "present", "indicative", "Ist"
	}
})

DefineLanguageWord("Jǫrmungrund", { -- the first part of this compound derives from the Proto-Germanic noun "Erman"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 18.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Wide Earth"} -- source gives the German "die weite Erde"
})

DefineLanguageWord("Jǫrmuni", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 18.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Ox", "Horse"}, -- source gives the German "Ochs, Pferd"
	DerivesFrom = {"proto-germanic", "noun", "Erman"},
	Gender = "masculine"
})

DefineLanguageWord("Karl", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 29.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Old Man", "Mature Man", "Husband", "Commoner"}, -- source gives the German "alter Mann, reifer Mann, Ehemann, Mann aus dem Volke" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Karla"}
})

DefineLanguageWord("Kerling", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 29.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Old Woman"}, -- source gives the German "altes Weib" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Karla"},
	Gender = "feminine"
})

DefineLanguageWord("Kleggi", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 38.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Horse-Fly"}, -- source gives the German "Viehbremse" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Klajja"},
	Gender = "masculine"
})

DefineLanguageWord("Koma", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Come"},
	DerivesFrom = {"proto-indo-european", "verb", "Gʷem"}
})

DefineLanguageWord("Kona", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Woman"},
	DerivesFrom = {"proto-indo-european", "noun", "Gʷen"}
})

DefineLanguageWord("Konungr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 27.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"King"}, -- source gives the German "König" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Kuninga"},
	Gender = "masculine"
})

DefineLanguageWord("Korn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Grain"}, -- derived from Proto-Germanic "Kŕnam", which has the meaning of "grain"
	DerivesFrom = {"proto-germanic", "noun", "Kŕnam"}
})

DefineLanguageWord("Krâ", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 35.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Angle"}, -- source gives the German "Winkel" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Krenh"},
	Gender = "feminine"
})

DefineLanguageWord("Kringr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 35.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Circle"}, -- source gives the German "Kreis" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Krenga"},
	Gender = "masculine"
})

DefineLanguageWord("Kringla", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 35.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Circle"}, -- source gives the German "Kreis" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Krenga"},
	Gender = "feminine"
})

DefineLanguageWord("Kvikr", { -- source also gives "Kuikr" with the same meaning later; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.5, 2.6.2.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"Alive"},
	DerivesFrom = {"proto-indo-european", "adjective", "Gʷīwos"}
})

DefineLanguageWord("Kyn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Race"},
	DerivesFrom = {"proto-germanic", "noun", "Kuni"}
})

DefineLanguageWord("Land", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 184.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Land", "Country"}, -- source gives the German "Land"
	DerivesFrom = {"proto-germanic", "noun", "Landa"},
	Gender = "neuter"
})

DefineLanguageWord("Langr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"Long"}, -- derived from Proto-Germanic "Langaz", which means "Long"
	DerivesFrom = {"proto-germanic", "adjective", "Langaz"}
})

DefineLanguageWord("Ljā", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Lend"},
	DerivesFrom = {"proto-indo-european", "verb", "Leykʷ"}
})

DefineLanguageWord("Ljôđ", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 181.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Strophe"}, -- source gives the German "Strophe" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Leuþa"},
	Gender = "neuter"
})

DefineLanguageWord("Ljôđa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 181.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Sing"}, -- source (apparently) gives the German "singen" as the meaning
	DerivesFrom = {"proto-germanic", "verb", "Leuþôn"}
})

DefineLanguageWord("Magi", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 156.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Stomach"}, -- source gives the German "Magen" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Magan"},
	Gender = "masculine"
})

DefineLanguageWord("Mala", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Grind"},
	DerivesFrom = {"proto-indo-european", "verb", "Mel"}
})

DefineLanguageWord("Mark", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 160.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Sign", "Indicator", "Border"}, -- source gives the German "Zeichen, Kennzeichen (auch 'Grenze' in endi-mark, land-mark)"
	DerivesFrom = {"proto-germanic", "noun", "Marka"},
	Gender = "neuter"
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

DefineLanguageWord("Meiri", { -- given by Lehmann, but it is not entirely clear if he meant that this is the positive version of the word; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"More"},
	DerivesFrom = {"proto-germanic", "adjective", "Mēria"},
	ComparisonDegreeCaseInflections = {
		"comparative", "Meiri",
		"superlative", "Mestr"
	}
})

DefineLanguageWord("Meisingr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 155.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Tit", "Titmouse"}, -- source gives the German "Meise" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Maisôn"},
	Gender = "masculine"
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

DefineLanguageWord("Mǫrk", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 160.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Forest", "Border Forest"}, -- source gives the German "Wald, Grenzwald (ursprünglich ungerodetes Grenzland)"
	DerivesFrom = {"proto-germanic", "noun", "Mark"},
	Gender = "feminine",
	NumberCaseInflections = {
		"singular", "genitive", "Markar", -- alternatively also "Merkr"
		"plural", "nominative", "Markir" -- alternatively also "Merkr"
	}
})

DefineLanguageWord("Mǫrk", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 160.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Silver Mark"}, -- source gives the German "Mark Silbers"
	DerivesFrom = {"proto-germanic", "noun", {"Mark", "Half Pound", "Half Silver Pound"}, "Markô"},
	Gender = "feminine",
	NumberCaseInflections = {
		"singular", "genitive", "Markar",
		"plural", "nominative", "Merkr"
	}
})

DefineLanguageWord("Mund", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 167.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Hand"}, -- source gives the German "Hand" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Mundô"},
	Gender = "feminine"
})

DefineLanguageWord("Mundr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 167.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Price of the Bride", "Tutelage Over the Bridge Obtained by Paying Her Price"}, -- source gives the German "Kaufpreis der Braut und die durch den Kauf erworbene Vormundschaft über dieselbe" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Mundô"},
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "no-case", "Mund" -- presumably (assuming the "-r" ending here is the nominative ending)
	}
})

DefineLanguageWord("Nara", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Live"}
})

DefineLanguageWord("Nātt", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Night"}, -- derived from Proto-Germanic "Naχts", which means "Night"
	DerivesFrom = {"proto-germanic", "noun", "Naχts"}
})

DefineLanguageWord("Naust", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Boat-House"}
})

DefineLanguageWord("Nema", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Take", "Accept"},
	DerivesFrom = {"proto-indo-european", "verb", "Nem"}
})

DefineLanguageWord("Nǫkkvi", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Boat"}
})

DefineLanguageWord("Nōr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Ship"}
})

DefineLanguageWord("Norđ", { -- source also gives the alternative form "Norđr"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 152.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"North"}, -- source gives the German "Nord" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Nurþa"},
	Gender = "neuter"
})

DefineLanguageWord("Norđ", { -- source also gives the alternative form "Norđr"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 152.
	Language = "old-norse",
	Type = "adverb",
	Meanings = {"Northward"}, -- source gives the German "nordwärts" as the meaning
	DerivesFrom = {"proto-germanic", "adverb", "Nurþa"}
})

DefineLanguageWord("Nŷ", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 153.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"New Moon"}, -- source gives the German "Neumond" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Neuja"},
	Gender = "neuter"
})

DefineLanguageWord("Nŷr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 153.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"New"}, -- source gives the German "neu" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Neuja"}
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

DefineLanguageWord("Ormr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 209.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Worm", "Serpent"}, -- source gives the German "Wurm, Schlange" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Vurma"},
	Gender = "masculine"
})

DefineLanguageWord("Râđ", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 172.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Counsel", "Council", "Consideration", "Decision", "Determination", "Disposal", "Violence", "Means", "Supply", "Stance", "Marriage"}, -- source gives the German "Rat, Überlegung, Entscheidung, Bestimmung, Verfügung, Gewalt, Mittel, Vorrat, Stellung, Heirat"
	DerivesFrom = {"proto-germanic", "noun", "Rêda"},
	Gender = "neuter"
})

DefineLanguageWord("Rann", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"House"},
	Gender = "neuter"
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

DefineLanguageWord("Rîki", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 174.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Power", "Dominion", "Realm", "Empire"}, -- source gives the German "Macht, Herrschaft, Reich" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Rîkia"}
})

DefineLanguageWord("Rîkja", { -- related to the Proto-Germanic noun "rîkia"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 174.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Rule"} -- source gives the German "herrschen" as the meaning
})

DefineLanguageWord("Rîkr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 174.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"Powerful"}, -- source gives the German "mächtig" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Rîka"}
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

DefineLanguageWord("Sær", { -- source also (apparently) gives the alternative forms "sjâr" and "sjôr"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 221.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Lake", "Sea"}, -- source gives the German "See, Meer" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Saivi"},
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "no-case", "Sæ" -- presumably (assuming the "-r" ending here is a nominative ending)
	}
})

DefineLanguageWord("Seiðr", { -- maybe is the past participle of Síði instead? Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 118.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"Magic Worked"}
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

DefineLanguageWord("Sifiar", { -- Source: H. Munro Chadwick, "The Oak and the Thunder-God", 1900, p. 25.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Relationship"},
	GrammaticalNumber = "plural" -- the word is inherently plural
})

DefineLanguageWord("Sigr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 214.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Victory"}, -- source (apparently) gives the German "Sieg" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Segiz"},
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "no-case", "Sig", -- presumably (assuming the "-r" ending here is a nominative ending)
		"singular", "genitive", "Sigrs"
	}
})

DefineLanguageWord("Silfr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 221.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Silver"}, -- source gives the German "Silber" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Silubra"},
	Gender = "neuter"
})

DefineLanguageWord("Simull", { -- source also gives the alternative forms "Simi" and "Siruir"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Ox", "One Year Old Ox"}, -- source gives the German "(einjähriger) Ochs" as the meaning
	-- according to the source, this word possibly comes from an original (Proto-Germanic?) "sem-", meaning "Summer" and being related to Proto-Germanic "Sumara"
})

DefineLanguageWord("Skjaldþili", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 229.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Board"} -- source gives the German "Getäfel" as the meaning
	-- the first part of this compound derives from Proto-Germanic "Skeldu"
})

DefineLanguageWord("Skjǫldr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 229.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Shield"}, -- source gives the German "Schild" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Skeldu"},
	Gender = "masculine"
})

DefineLanguageWord("Skuggi", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.1.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Shadow"},
	DerivesFrom = {"proto-indo-european", "verb", "Kwneχ"} -- presumably, since it is a cognate of Sanskrit "skunā́ti"
})

DefineLanguageWord("Smiđja", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 264.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Smithy"}, -- source gives the German "Schmiede" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Smiþjôn"}
})

DefineLanguageWord("Smiđr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 263.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Craftsman", "Builder", "Smith"}, -- source gives the German "Handwerker, Baumeister, Schmied"
	DerivesFrom = {"proto-germanic", "noun", "Smiþu"},
	NumberCaseInflections = {
		"singular", "genitive", "Smiđs" -- alternatively also "Smiđar" (is that the genitive plural?)
	}
})

DefineLanguageWord("Sǫg", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 213.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Saw"}, -- source gives the German "Säge" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Sagô"},
	Gender = "feminine"
})

DefineLanguageWord("Sorg", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Worry"}, -- source (apparently) gives the German "Sorge" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Surgô"},
	Gender = "feminine"
})

DefineLanguageWord("Spic", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Bacon"},
	DerivesFrom = {"proto-indo-european", "noun", "Spyxwon"} -- apparently
})

DefineLanguageWord("Steinn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 245.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Stone"}, -- source (apparently) gives the German "Stein" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Staynas"},
	Gender = "masculine"
})

DefineLanguageWord("Stīga", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.2, 2.7.1.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Climb"},
	DerivesFrom = {"proto-germanic", "verb", "Steig"}
})

DefineLanguageWord("Stǫpull", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 241.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Pole", "Pillar", "Church Tower"}, -- source gives the German "Pfoste, Pfeiler, Kirchturm" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Stapula"},
	Gender = "masculine"
})

DefineLanguageWord("Suđr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"South"}, -- source gives the German "Süd" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Sunþa"},
	Gender = "neuter"
})

DefineLanguageWord("Suđr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223.
	Language = "old-norse",
	Type = "adverb",
	Meanings = {"Southward"}, -- source gives the German "südwärts" as the meaning
	DerivesFrom = {"proto-germanic", "adverb", "Sunþa"}
})

DefineLanguageWord("Sumar", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223; Source: http://www.cnrtl.fr/definition/sombre//3
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Summer"}, -- Fick gives the German "Sommer" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Sumara"}, -- as given by Fick
	Gender = "neuter" -- as given by Fick
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

DefineLanguageWord("Syrgja", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, pp. 223-224.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Worry"}, -- source gives the German "sorgen" as the meaning
	DerivesFrom = {"proto-germanic", "verb", "Surgên"}
})

DefineLanguageWord("Tal", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 86.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Account", "Quantity", "Speech"}, -- source gives the German "Rechnung, Anzahl, Rede" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Tala"},
	Gender = "neuter"
})

DefineLanguageWord("Tala", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 86.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Number", "Account", "Speech"}, -- source gives the German "Zahl, Rechnung, Rede" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Talô"},
	Gender = "feminine"
})

DefineLanguageWord("Þarmr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 97.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Intestine"}, -- source gives the German "Darm" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Þarma"},
	Gender = "masculine"
})

DefineLanguageWord("Þjôđ", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 99.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"People", "Nation"}, -- source gives the German "Volk, Nation, Leute" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Þeudô"},
	Gender = "feminine"
})

DefineLanguageWord("Þorp", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 100; Source: http://www.cnrtl.fr/definition/trop
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Flock", "Crowd", "Farmstead"}, -- Fick gives the German "Schar, Menschenhaufen, kleineres Gehöft" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Þurpa"}, -- as given by Fick
	Gender = "neuter" -- as given by Fick
})

DefineLanguageWord("Þræll", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 101.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Servant", "Serf"}, -- source gives the German "Knecht, der Unfreie" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Þrahila"},
	Gender = "masculine"
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

DefineLanguageWord("Þyrpast", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 100.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Herd Together in Large Numbers"}, -- source gives the German "sich massenhaft zusammendrängen" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Þurpa"}
})

DefineLanguageWord("Tívar", { -- Source: H. Munro Chadwick, "The Oak and the Thunder-God", 1900, p. 39.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"God"},
	GrammaticalNumber = "plural" -- the word is inherently plural
})

DefineLanguageWord("Tǫnn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 84.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Tooth"}, -- source gives the German "Zahn" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Tanþ"},
	Gender = "feminine",
	NumberCaseInflections = {
		"plural", "nominative", "Teđr"
	}
})

DefineLanguageWord("Torf", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 86.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Peat"}, -- source gives the German "Torf" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Turba"},
	Gender = "neuter"
})

DefineLanguageWord("Torfa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 86; Source: http://www.cnrtl.fr/definition/tourbe//1
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Sod"}, -- Fick gives the German "Torfscholle" as the meaning, while the TLFi gives the French "motte de gazon"
	DerivesFrom = {"proto-germanic", "noun", "Turba"}, -- as given by Fick
	Gender = "feminine" -- as given by Fick
})

DefineLanguageWord("Tryggr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.1.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"Faithful"}
})

DefineLanguageWord("Tûn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 89.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Enclosed Lawn in Front of the House", "Court Square", "City", "Town"}, -- source gives the German "eingehegter Grasplatz vor dem Hause, Hofplatz, Stadt" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Tûna"},
	Gender = "neuter"
})

DefineLanguageWord("Tvennr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 6.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"Twofold"} -- maybe is an adverb instead?
	-- source also gives "Tvinnr" as an alternative form
})

DefineLanguageWord("Tvinna", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Double", "Duplicate"}
})

DefineLanguageWord("Tyggia", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.1.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Chew"},
	DerivesFrom = {"proto-indo-european", "verb", "Kewx"}
})

DefineLanguageWord("Týr", { -- name of a god; Source: Peter Buchholz, "Perspectives for Historical Research in Germanic Religion", 1968, p. 115.
	Language = "old-norse",
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"proto-germanic", "noun", "Tīwaz"}
})

DefineLanguageWord("Ulfr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 209.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Wolf"}, -- source gives the German "Wolf"
	DerivesFrom = {"proto-germanic", "noun", "Vulfa"},
	NumberCaseInflections = {
		"singular", "no-case", "Ulf" -- presumably (assuming the "-r" ending here is the nominative ending)
	}
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

DefineLanguageWord("Veig", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 205.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Strength", "Strong Drink", "Beaker"}, -- source gives the German "Kraft, Stärke, starkes Getrank, Trinkbecher" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Vaigô"},
	Gender = "feminine"
})

DefineLanguageWord("Vēr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-norse",
	Type = "pronoun",
	Meanings = {"We"},
	Nominative = "Vēr"
})

DefineLanguageWord("Verða", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Become"}
})

DefineLanguageWord("Verr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6, 2.7.1.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Man"},
	DerivesFrom = {"proto-indo-european", "noun", "Wiros"}
})

DefineLanguageWord("Vest", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 204.
	Language = "old-norse",
	Type = "adverb",
	Meanings = {"Westward"}, -- source gives the German "westwärts" as the meaning
	DerivesFrom = {"proto-germanic", "adverb", "Vesta"},
	AffixNameTypes = {"compound", "prefix", "singular", "province"} -- example: "Vestfold"
})

DefineLanguageWord("Vestr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 204.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"West"}, -- source gives the German "Westen" as the meaning
	DerivesFrom = {"proto-germanic", "adverb", "Vesta"},
	Gender = "neuter"
})

DefineLanguageWord("Vilda", { -- this is the singular first person past; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.1.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Wished"},
	DerivesFrom = {"proto-germanic", "verb", "Wilda"},
	NumberPersonTenseMoodInflections = {
		"singular", "first-person", "past", "indicative", "Vilda" -- "I wished"
	}
})

DefineLanguageWord("Vita", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.1.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Know"},
	DerivesFrom = {"proto-germanic", "verb", "Witanan"},
	NumberPersonTenseMoodInflections = {
		"plural", "first-person", "present", "indicative", "Vitom" -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	}
})

DefineLanguageWord("Vǫllr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 203.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Field"}, -- source gives the Latin "campus" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Valþu"},
	Gender = "masculine"
})

DefineLanguageWord("Wel", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.1.
	Language = "old-norse",
	Type = "adverb",
	Meanings = {"Indeed"},
	DerivesFrom = {"proto-germanic", "adverb", "Wela"}
})

DefineLanguageWord("Yfir", { -- later the source gives "yfer" instead; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.2, 2.7.2.
	Language = "old-norse",
	Type = "adposition",
	Meanings = {"Over"},
	DerivesFrom = {"proto-germanic", "adposition", "Ufar"}
})

DefineLanguageWord("Ylgr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 209.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Female Wolf"}, -- source gives the German "Wölfin"
	DerivesFrom = {"proto-germanic", "noun", "Vulgvî"},
	Gender = "feminine"
})

-- compounds

DefineLanguageWord("Aldrnari", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Fire"}, -- literally (as a compound): "life-sustainer"
	CompoundElements = {
		"prefix", "old-norse", "noun", "Aldr",
--		"suffix", "old-norse", "noun", "Nari" -- need to add this as a word
	},
	Gender = "masculine"
})

DefineLanguageWord("Eindagi", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 106.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Certain Day", "Appointment"}, -- source gives the German "bestimmter Tag, Termin" as the meaning
	CompoundElements = {
--		"prefix", -- ?
		"suffix", "old-norse", "noun", "Dagi"
	}
})

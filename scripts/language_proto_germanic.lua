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

-- Proto-Germanic

-- Note: According to Sean Crist, the reconstructions by August Fick are out of date; as such, they should be replaced by more recent data as the opportunity arises

DefineLanguageWord("Aχtō", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "proto-germanic",
	Type = "numeral",
	Number = 8
})

DefineLanguageWord("Af", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "adposition",
	Meanings = {"From"}
})

DefineLanguageWord("Aiza", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 11.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Ore"}, -- source gives the German "Erz" as the meaning
	Gender = "neuter"
})

DefineLanguageWord("Al", { -- source also gives the alternative forms "Alan", "Ôl" and "Alana"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 19.
	Language = "proto-germanic",
	Type = "verb",
	Meanings = {"Feed"}, -- source gives the Latin "alere" as the meaning
	Participles = {
		"past", "Alda"
	}
})

DefineLanguageWord("Alba", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 20.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Elf"} -- source gives the German "Alb, Elf" as the meaning
})

DefineLanguageWord("Alda", { -- source also gives the alternative form "Alþia"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 19.
	Language = "proto-germanic",
	Type = "adjective",
	Meanings = {"Old"}, -- source gives the German "alt" as the meaning
	ComparisonDegreeInflections = {
		"comparative", "Alþizan",
		"superlative", "Alþista"
	}
})

DefineLanguageWord("Ansu", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 16.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"God"},
	Gender = "masculine"
})

DefineLanguageWord("Asjôn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 20.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Forge"}, -- source gives the German "Esse" as the meaning
	Gender = "feminine"
})

DefineLanguageWord("Aþala", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 14.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Kind", "Gender", "Lineage"}, -- source gives the German "Art, Geschlecht (innerstes Wesen)" as the meaning
	Gender = "neuter"
})

DefineLanguageWord("Austa", { -- source also gives the alternative form "Austra"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 12.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"East"} -- source gives the German "Osten" as the meaning
})

DefineLanguageWord("Austa", { -- source also gives the alternative form "Austra"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 12.
	Language = "proto-germanic",
	Type = "adverb",
	Meanings = {"To the East"} -- source gives the German "nach Osten hin" as the meaning
})

DefineLanguageWord("Austanô", { -- source also gives the alternative form "Austra"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 12.
	Language = "proto-germanic",
	Type = "adverb",
	Meanings = {"From the East"} -- source gives the German "von Osten her" as the meaning
})

DefineLanguageWord("Austrô", { -- source gives "Austrô(n)"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 12.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"a Spring Goddess"},
	Gender = "feminine"
})

DefineLanguageWord("Baki", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 133.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Stream"}, -- source gives the German "Bach" as the meaning
	DerivesFrom = {"proto-indo-european", "verb", "Bheg"},
	Gender = "masculine"
})

DefineLanguageWord("Baþa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 133.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Bath", "Baths"}, -- source gives the German "Bad" as the meaning
	Gender = "neuter"
})

DefineLanguageWord("Beran", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Bear"}, -- source gives the German "Bär" as the meaning
	Gender = "masculine"
})

DefineLanguageWord("Berôn", { -- source also gives the alternative form "Berniôn"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Female Bear"},
	Gender = "feminine"
})

DefineLanguageWord("Berga", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Mountain", "Hill"},
	Gender = "neuter"
})

DefineLanguageWord("Blêva", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 147.
	Language = "proto-germanic",
	Type = "adjective",
	Meanings = {"Blue"} -- source gives the German "blau" as the meaning
})

DefineLanguageWord("Blîva", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 148.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Lead"}, -- source gives the German "Blei" as the meaning
	Gender = "neuter"
})

DefineLanguageWord("Blôma", { -- source also gives the alternative (masculine) form "Blôman"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 146.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Flower"}, -- source gives the German "Blume" as the meaning
	Gender = "neuter"
})

DefineLanguageWord("Bōks", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Sections 2-3.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Tablet"}
})

DefineLanguageWord("Branda", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Fire", "Stick", "Stick for Burning"}, -- source gives the German "Brand, Stock (zum Brennen)" as the meaning
	Gender = "masculine"
})

DefineLanguageWord("Brannian", { -- causative; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "proto-germanic",
	Type = "verb",
	Meanings = {"Burn"}, -- source gives the German "brennen" as the meaning
	DerivesFrom = {"proto-indo-european", "verb", "Bhrenvō"}
})

DefineLanguageWord("Brazda", { -- source also gives the alternative form "Brezda"; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Edge"},
	Gender = "masculine"
})

DefineLanguageWord("Brennan", { -- source also gives the alternative forms "Brann", "Brunnum" and "Brunnana"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "proto-germanic",
	Type = "verb",
	Meanings = {"Burn"}, -- source gives the German "brennen" as the meaning
	DerivesFrom = {"proto-indo-european", "verb", "Bhrenvō"}
})

DefineLanguageWord("Brōþar", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Brother"}
})

DefineLanguageWord("Brôvô", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 145.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Bridge", "Brow"}, -- source gives the German "Brücke, Braue" as the meaning
	Gender = "feminine"
})

DefineLanguageWord("Brugjô", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 145.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Bridge"}, -- source gives the German "Brücke" as the meaning
	Gender = "feminine"
})

DefineLanguageWord("Brunan", { -- source also gives the alternative form "Bruni"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Fire"}, -- source gives the German "Brand" as the meaning
	Gender = "masculine"
})

DefineLanguageWord("Brunaþan", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Heat", "Body Heat"}, -- source gives the German "Hitze (im Körper)" as the meaning
	Gender = "masculine"
})

DefineLanguageWord("Brundi", { -- source also gives the alternative form "Brunsti"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Fire"}, -- source gives the German "Brand" as the meaning
	Gender = "feminine"
})

DefineLanguageWord("Brûvô", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 145.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Brow"}, -- source gives the German "Braue" as the meaning
	Gender = "feminine",
	NumberCaseInflections = {
		"plural", "nominative", "Brûniz"
	}
})

DefineLanguageWord("Bruzdaz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Blade", "Edge"},
	Gender = "masculine"
})

DefineLanguageWord("Burg", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Castle", "City", "Town"}, -- source gives "Burg, Stadt" as the meaning
	Gender = "feminine"
})

DefineLanguageWord("Bûra", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 141.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Farmer", "Peasant"},
	Gender = "masculine"
})

DefineLanguageWord("Buska", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 143.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Bush"}, -- source gives the German "Busch" as the meaning
	Gender = "masculine"
})

DefineLanguageWord("Χŕdiz", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Wattle"}
})

DefineLanguageWord("Dag", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"proto-indo-european", "noun", "Dhagh"}
})

DefineLanguageWord("Durez", { -- this is the nominative plural; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Door"},
	NumberCaseInflections = {
		"plural", "nominative", "Durez"
	}
})

DefineLanguageWord("Dverga", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 113.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Dwarf"},
	Gender = "masculine"
})

DefineLanguageWord("Ek", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "proto-germanic", -- from the Gallehus inscription, is it really Proto-Germanic?
	Type = "pronoun",
	Meanings = {"I"},
	Nominative = "Ek"
})

DefineLanguageWord("Erala", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 22.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Man", "Warrior"},
	Gender = "masculine"
})

DefineLanguageWord("Erman", { -- source gives "Erman(a)", and also the alternative form "Ermun(a)"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 18.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Large Livestock", "Herd of Cattle", "Head of Cattle"} -- source gives the German "Großvieh" and the Latin "armentum"
})

DefineLanguageWord("Erþō", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Earth"}
})

DefineLanguageWord("Fadēr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Father"}
})

DefineLanguageWord("Fehu", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Cattle"}
})

DefineLanguageWord("Ferþu", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 120.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Fjord"}, -- source gives the German "Fjord" as the meaning
	Gender = "masculine"
})

DefineLanguageWord("Flōduz", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Flood"}
})

DefineLanguageWord("Fōts", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Foot"}
})

DefineLanguageWord("Friþu", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 128.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Love", "Peace"}, -- source gives the German "Liebe, Friede" as the meaning
	Gender = "masculine"
})

DefineLanguageWord("Fûir", { -- source also gives the alternate form "Fûr"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 127.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Fire"}, -- source gives "Feuer" as the meaning
	Gender = "neuter"
})

DefineLanguageWord("Furdu", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 120.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Ford"}, -- source gives the German "Furt" as the meaning
	Gender = "masculine"
})

DefineLanguageWord("Gárdiz", { -- Fick and Torp spell the word as "Garda"/"Gardi"/"Gardan"; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 72.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Enclosure", "Court", "Garden"}, -- Fick and Torp give "Geheg, Hof, Garten" as the meaning; Lehmann gives the meaning as "Garden"
	Gender = "masculine",
	AffixNameTypes = {
		"compound", "prefix", "singular", "province" -- seems sensible in face of a lack of examples, specially since is a cognate of the prefix in "Gardarike"
	}
})

DefineLanguageWord("Gastiz", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 74; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2007, 3.3.5.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Guest"},
	Gender = "masculine",
	AffixNameTypes = {"compound", "suffix", "singular", "person"} -- examples: "Hlewagastiz", "Holtagastiz" (the latter needs confirmation from a source; the source I got it from I have lost the reference to)
})

DefineLanguageWord("Gavja", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 68.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"District"}, -- source gives "Gau" as the meaning
	Gender = "neuter"
})

DefineLanguageWord("Gazdaz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Rod", "Prickle", "Point"},
	Gender = "masculine"
})

DefineLanguageWord("Glent", { -- source also gives the alternative forms "glentan" and "glant"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 81.
	Language = "proto-germanic",
	Type = "verb",
	Meanings = {"Glance", "Shine"} -- source gives the German "blicken, glänzen" as the meaning
})

DefineLanguageWord("Glôdi", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 82.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Ember"}, -- source gives the German "Glut" as the meaning
	Gender = "feminine"
})

DefineLanguageWord("Gôm", { -- source also gives the forms "Gam" and "Gim"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 71.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Winter"}
})

DefineLanguageWord("Gred", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "proto-germanic",
	Type = "adjective",
	Meanings = {},
	DerivesFrom = {"proto-indo-european", "noun", "Ghredh"}
})

DefineLanguageWord("Grêva", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 79.
	Language = "proto-germanic",
	Type = "adjective",
	Meanings = {"Gray"}, -- source gives the German "grau" as the meaning
	DerivesFrom = {"proto-indo-european", "verb", "Ĝherē"}
})

DefineLanguageWord("Grîsa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, pp. 79-80.
	Language = "proto-germanic",
	Type = "adjective",
	Meanings = {"Gray", "Old"}, -- source gives the German "grau, greis" as the meaning
	DerivesFrom = {"proto-indo-european", "verb", "Ĝherē"}
})

DefineLanguageWord("Grônia", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 80.
	Language = "proto-germanic",
	Type = "adjective",
	Meanings = {"Green"} -- source gives the German "grün" as the meaning
})

DefineLanguageWord("Guda", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 76.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"God"}, -- source gives the German "Gott" as the meaning
	DerivesFrom = {"proto-indo-european", "verb", "Ĝhutó"},
	Gender = "masculine" -- can also be neuter
})

DefineLanguageWord("Gulþa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 73.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Gold"}, -- source gives the German "Gold" as the meaning
	Gender = "neuter"
})

DefineLanguageWord("Haima", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 52.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Village", "Home"}, -- source gives the German "Dorf, Heim, Heimat" as the meaning
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "accusative", "Haima" -- source gives meaning of "nach Hause" for the accusative; source also gives the (apparently accusative) "Haimanô", meaning "von Hause"
	}
})

DefineLanguageWord("Haima", { -- accusative; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 52.
	Language = "proto-germanic",
	Type = "adverb", -- apparently
	Meanings = {"Home"}, -- source gives the German "nach Hause" as the meaning
	Accusative = "Haima"
})

DefineLanguageWord("Haimanô", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 52.
	Language = "proto-germanic",
	Type = "adverb",
	Meanings = {"Home"} -- source gives the German "von Hause" as the meaning
})

DefineLanguageWord("Halsa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 50.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Neck", "Throat"}, -- source gives the German "Hals" as the meaning
	DerivesFrom = {"proto-indo-european", "verb", "Kel"},
	Gender = "masculine"
})

DefineLanguageWord("Hamara", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 46.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Stone", "Hammer"}, -- source gives the German "Stein, Hammer" as the meaning
	Gender = "masculine"
})

DefineLanguageWord("Hauga", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 54.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Hill"}, -- source gives the German "Hügel" as the meaning
	Gender = "masculine"
})

DefineLanguageWord("Hauha", { -- source also gives the alternative form "hauga"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 54.
	Language = "proto-germanic",
	Type = "adjective",
	Meanings = {"High"} -- source gives the German "hoch" as the meaning
})

DefineLanguageWord("Hazdaz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Head Hair"},
	Gender = "masculine"
})

DefineLanguageWord("Hailaga", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 42.
	Language = "proto-germanic",
	Type = "adjective",
	Meanings = {"Holy"} -- source gives the German "heilig"
})

DefineLanguageWord("Hardu", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 48.
	Language = "proto-germanic",
	Type = "adjective",
	Meanings = {"Hard", "Strict"} -- source gives the German "hart, streng" as the meaning
})

DefineLanguageWord("Heldî", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 50.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Fight", "Conflict"}, -- source gives the German "Kampf" as the meaning
	Gender = "feminine",
	DerivesFrom = {"proto-indo-european", "noun", "Keld"} -- apparently
})

DefineLanguageWord("Helma", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 49.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Helm", "Helmet"}, -- source gives the German "Helm" as the meaning
	Gender = "masculine"
})

DefineLanguageWord("Herþa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 46.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Fireplace", "Fire"}, -- source gives "Feuerstätte, Feuer" as the meaning
	Gender = "masculine"
})

DefineLanguageWord("Hezdōn", { -- apparently the same as "Hezdon", though Torp gave them as being different; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 7.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Flax Fiber", "Coarse Flax Fiber", "Coarse Hemp Fiber", "Oakum"},
	Uncountable = true -- as a material, it is likely to be uncountable
})

DefineLanguageWord("Hlewa", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "proto-germanic", -- from the Gallehus inscription, is it really Proto-Germanic?
	Type = "noun",
	Meanings = {"Glory"}, -- meaning given in another source, which I have lost the reference to
	AffixNameTypes = {"compound", "prefix", "singular", "person"} -- example: "Hlewagastiz"
})

DefineLanguageWord("Hnut", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 58.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Nut"}, -- source gives the German "Nuß"
	Gender = "feminine",
	DerivesFrom = {"proto-indo-european", "noun", "Knud"}
})

DefineLanguageWord("Hraznō", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Wave"},
	Gender = "feminine"
})

DefineLanguageWord("Hurna", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 47.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Horn"}, -- source gives the German "Horn"
	Gender = "neuter"
})

DefineLanguageWord("Hurnia", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 47.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Corner", "Angle"} -- source gives the German "Ecke, Winkel" as the meaning
})

DefineLanguageWord("Huzda", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Hidden Treasure"}
})

DefineLanguageWord("Hvîta", { -- source also gives the alternative form "hvitta"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 67.
	Language = "proto-germanic",
	Type = "adjective",
	Meanings = {"White", "Light Colored"}, -- source gives the German "weiß, hellfarbig" as the meaning
	DerivesFrom = {"proto-indo-european", "adjective", "Ḱweyt"} -- Lehmann gives its reflexes as being derived from this word; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
})

DefineLanguageWord("Îsarna", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 24.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Iron"}, -- source gives the German "Eisen" as the meaning
	Gender = "neuter"
})

DefineLanguageWord("Kizna", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 4, 7.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Resinous Wood"},
	Gender = "masculine"
})

DefineLanguageWord("Kŕnam", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Grain"}
})

DefineLanguageWord("Kuni", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Race"}
})

DefineLanguageWord("Landa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 184.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Terra Firma", "Land", "Country"}, -- source gives the German "terra firma, Land"
	Gender = "neuter"
})

DefineLanguageWord("Lauda", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 181.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Metal", "Lead"}, -- source gives the German "Metall, Blei" as the meaning
	Gender = "neuter",
	Uncountable = true -- as a material, it is likely to be uncountable
})

DefineLanguageWord("Maχtiz", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Might"}
})

DefineLanguageWord("Maisôn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 155.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Tit", "Titmouse"}, -- source gives the German "Meise" as the meaning
	Gender = "feminine"
})

DefineLanguageWord("Maitila", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 164.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Chisel"}, -- source gives meaning as "Meißel"
	Gender = "masculine"
})

DefineLanguageWord("Maiz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "proto-germanic",
	Type = "adverb",
	Meanings = {"More"}
})

DefineLanguageWord("Mari", { -- source gives "mari-"; Source: http://www.cnrtl.fr/definition/marais
	Language = "proto-germanic", -- source gives "Germanic"
	Type = "noun",
	Meanings = {"Sea"} -- source gives the French "mer"
})

DefineLanguageWord("Mark", { -- source also gives the alternative form "Markô"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 160.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Mark", "Border", "Borderland"}, -- source gives the German "Marke, Grenze, Grenzland"
	DerivesFrom = {"proto-indo-european", "verb", "Mareĝ"}, -- source indicates this as a possibility
	Gender = "feminine"
})

DefineLanguageWord("Marka", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 160.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Sign", "Indicator", "Mark"}, -- source gives the German "Zeichen, Kennzeichen, Marke"
	DerivesFrom = {"proto-indo-european", "verb", "Mareĝ"}, -- presumably, since the source lists this word as being equivalent (same origin?) to the noun "Mark"
	Gender = "neuter"
})

DefineLanguageWord("Markô", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 160.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Sign", "Indicator", "Mark"}, -- source gives the German "Zeichen, Kennzeichen, Marke"
	DerivesFrom = {"proto-indo-european", "verb", "Mareĝ"}, -- presumably, since the source lists this word as being equivalent (same origin?) to the noun "Mark"
	Gender = "feminine"
})

DefineLanguageWord("Markô", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 160.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Mark", "Half Pound", "Half Silver Pound"}, -- source gives the German "Mark, halbes Pfund (Silbers)"
	DerivesFrom = {"proto-indo-european", "verb", "Mareĝ"}, -- presumably, since the source lists this word as being originally equivalent to the noun "Marka"
	Gender = "feminine"
})

DefineLanguageWord("Mazgaz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Marrow"},
	Gender = "masculine"
})

DefineLanguageWord("Miz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "proto-germanic",
	Type = "pronoun",
	Meanings = {"Me"}, -- dative
	Dative = "Miz"
})

DefineLanguageWord("Mizdō", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 7.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Reward", "Payment", "Fee"},
	Gender = "feminine"
})

DefineLanguageWord("Naχts", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Night"}
})

DefineLanguageWord("Nemida", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 151.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Holy Pasture"} -- source gives (in German) "heiliger Weideplatz" as the meaning
})

DefineLanguageWord("Neuja", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 153.
	Language = "proto-germanic",
	Type = "adjective",
	Meanings = {"New"} -- source gives the German "neu" as the meaning
})

DefineLanguageWord("Nurþa", { -- source also gives the alternative form "Nurþra"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 152.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"North"} -- source gives the German "Nord" as the meaning
})

DefineLanguageWord("Nurþa", { -- source also gives the alternative form "Nurþra"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 152.
	Language = "proto-germanic",
	Type = "adverb",
	Meanings = {"North"} -- source gives the German "nördlich" as the meaning
})

DefineLanguageWord("Razdō", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Voice", "Sound"},
	Gender = "feminine"
})

DefineLanguageWord("Razdō", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Food", "Meal"},
	Gender = "feminine"
})

DefineLanguageWord("Razna", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"House"},
	Gender = "neuter"
})

DefineLanguageWord("Rêda", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 172.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Counsel", "Council"}, -- source gives the German "Rat"
	Gender = "masculine" -- alternatively also neuter
})

DefineLanguageWord("Reupôn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 169.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Ptarmigan"} -- source gives meaning as "Schneehuhn (tetrao lagopus)"
})

DefineLanguageWord("Rîka", { -- source also gives the alternative form "Rîkia"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 174.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Ruler"}, -- source gives the German "Herrscher" as the meaning
	DerivesFrom = {"proto-indo-european", "noun", "Reĝ"},
	AffixNameTypes = {"compound", "suffix", "singular", "person"} -- example (from another, now unknown, source): "Theudariks" (presuming "riks" to equal "rîka")
})

DefineLanguageWord("Rîka", { -- source also gives the alternative form "Rîkia"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 174.
	Language = "proto-germanic",
	Type = "adjective",
	Meanings = {"Powerful"}, -- source gives the German "mächtig" as the meaning
	DerivesFrom = {"proto-indo-european", "noun", "Reĝ"}
})

DefineLanguageWord("Rîkia", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 174.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Power", "Dominion", "Realm"}, -- source gives meaning as "Macht, Herrschaft, Reich"
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "province"} -- seems sensible in face of a lack of examples, specially since it is the etymological origin of the suffix in "Gardarike"
})

DefineLanguageWord("Ristila", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 176.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Plowshare"}, -- source gives meaning as "Sech, Pflugeisen"
	Gender = "masculine"
})

DefineLanguageWord("Rîþa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 174.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Current", "Stream"} -- source gives meaning as "Strom, Bach"
})

DefineLanguageWord("Saiþa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 221.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Magic"}, -- source gives the German "Zauber"
	Gender = "masculine"
})

DefineLanguageWord("Sēþiz", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Seed"}
})

DefineLanguageWord("Silubra", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 221.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Silver"} -- source gives the German "Silber" as the meaning
})

DefineLanguageWord("Sinaskalka", { -- Source: http://www.cnrtl.fr/definition/s%C3%A9n%C3%A9chal
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Senior Servant"} -- the TLFi gives the French "serviteur le plus âgé" as the meaning
})

DefineLanguageWord("Skadwas", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Shadow"}
})

DefineLanguageWord("Skaran", { -- source also gives the alternative form "Skara"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 227.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Plowshare"} -- source gives "Schar, Pflugeisen" as the meaning
})

DefineLanguageWord("Skîrô", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 233.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Procurement"}, -- source gives the German "Besorgung"
	Gender = "feminine"
})

DefineLanguageWord("Smaiþra", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 263.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Artist"}, -- source gives the Latin "artifex"
	Gender = "masculine"
})

DefineLanguageWord("Smiþjôn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 264.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Smithy"}, -- source gives the German "Schmiede" as the meaning
	Gender = "feminine"
})

DefineLanguageWord("Smîþôn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 264.
	Language = "proto-germanic",
	Type = "verb",
	Meanings = {}
})

DefineLanguageWord("Smiþu", { -- source also gives the alternative form "Smiþa"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 263.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Smith", "Master Craftsman"}, -- source gives the German "Schmied, Werkmeister" as the meaning
	Gender = "masculine"
})

DefineLanguageWord("Snaigva", { -- source also gives the forms "Snaiva", "Snaigvi" and "Snaigi"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 260.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Snow"},
	Gender = "masculine",
	Uncountable = true -- seems likely to be uncountable
})

DefineLanguageWord("Sumara", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Summer"}, -- source gives the German "Sommer" as the meaning
	Gender = "neuter" -- alternatively also masculine
})

DefineLanguageWord("Sunōn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Sun"}
})

DefineLanguageWord("Sunþa", { -- source also gives the alternative form "Sunþra"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"South"} -- source gives the German "Süd" as the meaning
})

DefineLanguageWord("Sunþa", { -- source also gives the alternative form "Sunþra"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223.
	Language = "proto-germanic",
	Type = "adverb",
	Meanings = {"Southward"} -- source gives the German "südwärts" as the meaning
})

DefineLanguageWord("Surgên", { -- source gives "S(v)urgên"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223.
	Language = "proto-germanic",
	Type = "verb",
	Meanings = {"Worry"} -- source gives the German "sorgen" as the meaning
})

DefineLanguageWord("Surgô", { -- source also gives the alternative form "Svurgô"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Worry"}, -- source gives the German "Sorge" as the meaning
	Gender = "feminine"
})

DefineLanguageWord("Swīnaz", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Pig"}
})

DefineLanguageWord("Tandran", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 84.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Fire", "Burning Coal"}, -- source gives the German "Feuer, glühende Kohle" as the meaning
	Gender = "masculine"
})

DefineLanguageWord("Tîva", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 88.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"God"}, -- can also mean the name of a particular god
	Gender = "masculine"
})

DefineLanguageWord("Þarma", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 97.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Intestine"}, -- source gives the German "Darm" as the meaning
	Gender = "masculine"
})

DefineLanguageWord("Þeudô", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 99.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"People"}, -- source gives the German "Volk" as the meaning
	Gender = "feminine",
	AffixNameTypes = {"compound", "prefix", "singular", "person"} -- example: "Theudariks" (from a source I lost the reference to) (presuming "Theuda" to equal "Þeudô")
})

DefineLanguageWord("Þurpa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 100.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Flock", "Crowd", "Village"}, -- source gives the German "Schar, Menschenhaufen, Dorf" as the meaning
	Gender = "neuter"
})

DefineLanguageWord("Turba", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 86.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Peat", "Lawn", "Turf"} -- source gives the German "Torf, Rasen" as the meaning
})

DefineLanguageWord("Ufar", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "adposition",
	Meanings = {"Over"}
})

DefineLanguageWord("Uzdaz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 7.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Point", "Place"},
	Gender = "masculine"
})

DefineLanguageWord("Uzlaga", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Fate"}
})

DefineLanguageWord("Vesta", { -- source also gives the alternative form "Vestra"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 204.
	Language = "proto-germanic",
	Type = "adverb",
	Meanings = {"Westward"}, -- source gives the German "westwärts" as the meaning
	DerivesFrom = {"proto-indo-european", "adverb", "Ve"}
})

DefineLanguageWord("Vîha", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 206.
	Language = "proto-germanic",
	Type = "adjective",
	Meanings = {"Holy"}
})

DefineLanguageWord("Vîhsa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 206.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Hamlet", "Village"}, -- source gives the German "Flecken, Dorf" as the meaning
	Gender = "neuter"
})

DefineLanguageWord("Vikkan", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 206.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Sorcerer"},
	Gender = "masculine"
})

DefineLanguageWord("Vulbî", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 209.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Female Wolf"}, -- source gives the German "Wölfin"
	DerivesFrom = {"proto-indo-european", "noun", "Vl̥po"}, -- apparently
	Gender = "feminine"
})

DefineLanguageWord("Vulfa", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 209.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Wolf"}, -- source gives the German "Wolf"
	DerivesFrom = {"proto-indo-european", "noun", "Vl̥po"},
	Gender = "masculine"
})

DefineLanguageWord("Vulgvî", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 209.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"proto-indo-european", "noun", "Vl̥qo"},
	Gender = "feminine"
})

DefineLanguageWord("Vulhva", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 209.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"proto-indo-european", "noun", "Vl̥qo"}
})

DefineLanguageWord("Vurma", { -- source also gives the alternative form "Vurmi"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 209.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Worm"}, -- source gives the German "Wurm" as the meaning
	Gender = "masculine"
})

DefineLanguageWord("Waganaz", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Wagon"}
})

DefineLanguageWord("Waida", { -- source also gives alternative form "Waizda"; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 4.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Woad"}
})

DefineLanguageWord("Walakuzjōn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Valkyrie"},
	Gender = "feminine"
})

DefineLanguageWord("Wīz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 5.
	Language = "proto-germanic",
	Type = "pronoun",
	Meanings = {"We"},
	Nominative = "Wīz"
})

DefineLanguageWord("Yēra", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Year"}
})

DefineLanguageWord("Beran", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "proto-germanic",
	Type = "verb",
	Meanings = {}
})

DefineLanguageWord("Beud", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Sections 2-4.
	Language = "proto-germanic",
	Type = "verb",
	Meanings = {"Bid", "Offer", "Order"},
	DerivesFrom = {"proto-indo-european", "verb", "Bhewdh"},
	Participles = {
		"past", "Baud" -- "offered" / "ordered"
	}
})

DefineLanguageWord("Bītan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "proto-germanic",
	Type = "verb",
	Meanings = {"Bite"} -- reflexes have "bite" as their meaning
})

DefineLanguageWord("Kwemanan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "proto-germanic",
	Type = "verb",
	Meanings = {"Come"}
})

DefineLanguageWord("Laizijanã", { -- causative verb; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 4-5.
	Language = "proto-germanic",
	Type = "verb",
	Meanings = {"Teach"}
})

DefineLanguageWord("Liznōn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "proto-germanic",
	Type = "verb",
	Meanings = {"Learn"}
})

DefineLanguageWord("Malanan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "proto-germanic",
	Type = "verb",
	Meanings = {"Grind"}
})

DefineLanguageWord("Nazjan", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "proto-germanic",
	Type = "verb",
	Meanings = {"Heal", "Rescue", "Sustain"}
})

DefineLanguageWord("Singwanan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "proto-germanic",
	Type = "verb",
	Meanings = {"Sing"}
})

DefineLanguageWord("Steig", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "verb",
	Meanings = {"Climb"},
	Participles = {
		"past", "Staig"
	}
})

DefineLanguageWord("Tawido", { -- this is the singular first person past (apparently); Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "proto-germanic", -- from the Gallehus inscription, is it really Proto-Germanic?
	Type = "verb",
	Meanings = {"Made"},
	NumberPersonTenseMoodInflections = {
		"singular", "first-person", "past", "indicative", "Tawido"
	}
})

DefineLanguageWord("Téuχanan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Sections 2-3.
	Language = "proto-germanic",
	Type = "verb",
	Meanings = {"Pull"} -- the same source gives the meaning as "Push" previously (though when it gives the meaning as "Pull" it writes the word as "Teuχanan" instead in that instance), but the meaning of "Pull" given later seems correct, since it is repeated later on as well
})

DefineLanguageWord("Twiznōn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	Language = "proto-germanic",
	Type = "verb",
	Meanings = {"Twine"}
})

DefineLanguageWord("Witum", { -- this is the plural first person present; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "verb",
	Meanings = {"Know"},
	NumberPersonTenseMoodInflections = {
		"plural", "first-person", "present", "indicative", "Witum"
	}
})

DefineLanguageWord("Déwpaz", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "adjective",
	Meanings = {"Deep"}
})

DefineLanguageWord("Fūla", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "adjective",
	Meanings = {"Foul"}
})

DefineLanguageWord("Langaz", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "adjective",
	Meanings = {"Long"}
})

DefineLanguageWord("Mēria", { -- Crist gives "Mēria", while Lehmann gives "Méyzaz"; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "adjective",
	Meanings = {"More"},
	ComparisonDegreeInflections = {
		"comparative", "Maizan",
		"superlative", "Maista"
	}
})

DefineLanguageWord("Reχtaz", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "adjective",
	Meanings = {"Right", "Straight"}
})

DefineLanguageWord("Twiznaz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 6.
	Language = "proto-germanic",
	Type = "adjective",
	Meanings = {"Twofold"} -- source actually gives "two each" (je zwei) as the meaning in p. 6, but later there is an equivalent Proto-Germanic word for "threefold" which is noted as "je drei"; and besides, in p. 1 "Twofold" is given as a possible meaning
	 -- maybe is an adverb instead?
})

DefineLanguageWord("Þrizna", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	Language = "proto-germanic",
	Type = "adjective",
	Meanings = {"Threefold"} -- source gives the meaning as "threefold, the three (je drei)"
	 -- maybe is an adverb instead?
})

DefineLanguageWord("Þrsúz", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "proto-germanic",
	Type = "adjective",
	Meanings = {"Dry"}
})

DefineLanguageWord("Χwat", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "proto-germanic",
	Type = "pronoun",
	Meanings = {"What"},
	Nominative = "Χwat"
})

-- Must re-check to see if actually correct

DefineLanguageWord("Godagaz", {
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Goody", "Good One"},
	NameTypes = {"person"}
})

DefineLanguageWord("Hadu", {
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Battle"},
	AffixNameTypes = {"compound", "prefix", "singular", "person"} -- example: "Hadulaikaz"
})

DefineLanguageWord("Hagu", {
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Small Property"},
	AffixNameTypes = {"compound", "prefix", "singular", "person"} -- example: "Hagustaldaz"
})

DefineLanguageWord("Holta", {
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Wood"},
	AffixNameTypes = {"compound", "prefix", "singular", "person"} -- example: "Holtagastiz"
})

DefineLanguageWord("Laikaz", {
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Dancer"},
	AffixNameTypes = {"compound", "suffix", "singular", "person"} -- example: Hadulaikaz
})

DefineLanguageWord("Ridaz", {
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Rider"},
	AffixNameTypes = {"compound", "suffix", "singular", "person"} -- example: Woduridaz
})

DefineLanguageWord("Staldaz", {
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Owner"},
	AffixNameTypes = {"compound", "suffix", "singular", "person"} -- example: Hagustaldaz
})

DefineLanguageWord("Wagigaz", {
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"One Who Moves Along Impetuously"},
	NameTypes = {"person"}
})

DefineLanguageWord("Wiwaz", {
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Darter"},
	NameTypes = {"person"}
})

DefineLanguageWord("Wodu", {
	Language = "proto-germanic",
	Type = "noun",
	Meanings = {"Fury"},
	AffixNameTypes = {"compound", "prefix", "singular", "person"} -- example: Woduridaz
})

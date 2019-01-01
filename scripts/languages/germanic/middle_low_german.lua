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
--      (c) Copyright 2016-2019 by Andrettin
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

DefineLanguageWord("Alf", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 20.
	Language = "middle-low-german",
	Type = "noun",
	Meanings = {"Evil Spirit", "Incubus"}, -- source gives the German "böser Geist, incubus" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Alba"}
})

DefineLanguageWord("Bart", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "middle-low-german",
	Type = "noun",
	Meanings = {"Beard"}, -- source gives the German "Bart" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Barda"}
})

DefineLanguageWord("Blî", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 148.
	Language = "middle-low-german",
	Type = "noun",
	Meanings = {"Lead"}, -- source gives the German "Blei" as the meaning
	DerivesFrom = {"old-saxon", "noun", "Blî"},
	Gender = "neuter"
})

DefineLanguageWord("Blôsem", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 146.
	Language = "middle-low-german",
	Type = "noun",
	Meanings = {"Blossom"}, -- apparently, but it is not clear from the source
	DerivesFrom = {"proto-germanic", "noun", "Blôma"},
	Gender = "feminine"
})

DefineLanguageWord("Bort", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, pp. 135-136; Source: http://www.cnrtl.fr/definition/B%F6rde
	Language = "middle-low-german",
	Type = "noun",
	Meanings = {"Board", "Table"}, -- the TLFi gives the French "planche, table" as the meaning; Fick gives the German "Tisch"
	DerivesFrom = {"old-saxon", "noun", "Bord"}, -- as given by the TLFi and Fick
	Gender = "neuter" -- as given by the TLFi
})

DefineLanguageWord("Brant", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "middle-low-german",
	Type = "noun",
	Meanings = {"Fire", "Firebrand", "Sword"}, -- source gives the German "Feuer, Feuerbrand, Schwert"
	DerivesFrom = {"old-saxon", "noun", "Brand"},
	Gender = "masculine"
})

DefineLanguageWord("Bret", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, pp. 135-136.
	Language = "middle-low-german",
	Type = "noun",
	Meanings = {"Board"}, -- source apparently gives the German "Brett" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Burda"},
	Gender = "neuter",
	NumberCaseInflections = {
		"singular", "genitive", "Bredes"
	}
})

DefineLanguageWord("Busch", { -- the TLFi also gives the alternative form "Busk"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 143; Source: http://www.cnrtl.fr/definition/bois
	Language = "middle-low-german",
	Type = "noun",
	Meanings = {"Bush"}, -- source gives the German "Busch" as the meaning
	DerivesFrom = {"old-saxon", "noun", "Busc"}, -- presumably
	Gender = "masculine"
})

DefineLanguageWord("Darm", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 97.
	Language = "middle-low-german",
	Type = "noun",
	Meanings = {"Intestine"}, -- source gives the German "Darm" as the meaning
	DerivesFrom = {"old-saxon", "noun", "Tharm"}
})

DefineLanguageWord("Drelle", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 101.
	Language = "middle-low-german",
	Type = "noun",
	Meanings = {"Serf"}, -- source gives the Latin "servus" as the meaning
	DerivesFrom = {"old-norse", "noun", "Þræll"} -- Fick mentions this as a possibility
})

DefineLanguageWord("Gnîden", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 76.
	Language = "middle-low-german",
	Type = "verb", -- (apparently) a strong verb
	Meanings = {"Rub"}, -- source (apparently) gives the German "reiben" as the meaning
	DerivesFrom = {"proto-germanic", "verb", "Gnid"}
})

DefineLanguageWord("Gnist", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 76.
	Language = "middle-low-german",
	Type = "noun",
	Meanings = {"Mange"}, -- source gives the German "Räude" as the meaning
	DerivesFrom = {"proto-germanic", "verb", "Gnid"}
})

DefineLanguageWord("Gnisteren", { -- source also gives the alternative form "knisteren"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 76.
	Language = "middle-low-german",
	Type = "verb", --
	Meanings = {"Grate"}, -- source gives the German "knirschen" and the Latin "stridere" as the meaning
	DerivesFrom = {"proto-germanic", "verb", "Gnid"}
})

DefineLanguageWord("Gode", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 76.
	Language = "middle-low-german",
	Type = "noun",
	Meanings = {"Godfather"}, -- source (apparently, but not at all clear that this is the case) gives the German "Taufzeuge, Pate" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Gudjan"},
	Gender = "masculine" -- apparently, but not at all clear that this is the case
})

DefineLanguageWord("Grâwe", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 79.
	Language = "middle-low-german",
	Type = "adjective",
	Meanings = {"Gray"}, -- source gives the German "grau" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Grêva"}
})

DefineLanguageWord("Hameide", { -- source also gives the alternative forms "homeide" and "hameie"; Source: http://www.cnrtl.fr/definition/Amad%E9
	Language = "middle-low-german",
	Type = "noun",
	Meanings = {"Enclosure", "Fence"} -- source gives the French "enclos, clôture" as the meaning
})

DefineLanguageWord("Hēde", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 7.
	Language = "middle-low-german",
	Type = "noun",
	Meanings = {"Flax Fiber"},
	DerivesFrom = {"proto-germanic", "noun", "Hezdōn"},
	Uncountable = true, -- as a material, it is likely to be uncountable
	Gender = "feminine"
})

DefineLanguageWord("Helfte", { -- source also gives the alternative form "helft"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 51.
	Language = "middle-low-german",
	Type = "noun", -- apparently
	Meanings = {"Half"}, -- source (apparently) gives the German "Hälfte" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Halbiþô"}
})

DefineLanguageWord("Here", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 10.
	Language = "middle-low-german",
	Type = "noun",
	Meanings = {"Army"},
	DerivesFrom = {"old-saxon", "noun", "Heri"}
})

DefineLanguageWord("Kên", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 4.
	Language = "middle-low-german",
	Type = "noun",
	Meanings = {"Resinous Wood"}
})

DefineLanguageWord("Kerle", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 29.
	Language = "middle-low-german",
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"proto-germanic", "noun", "Karla"}
})

DefineLanguageWord("Klei", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 38.
	Language = "middle-low-german",
	Type = "noun",
	Meanings = {"Clay"}, -- source gives the German "Lehm" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Klajja"}
})

DefineLanguageWord("Knecht", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 27.
	Language = "middle-low-german",
	Type = "noun",
	Meanings = {"Boy", "Bachelor", "Servant"}, -- source gives the German "Knabe, Junggesell, Diener" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Knehta"} -- Old Low German "inkneht", although having the same root, appears to have a prefix, and thus this word likely does not derive from it
})

DefineLanguageWord("Kringel", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 35.
	Language = "middle-low-german",
	Type = "noun",
	Meanings = {"Ring", "Circle", "Round Pastry"}, -- source gives the German "Ring, Kreis, rundes Gebäck" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Krenga"}
})

DefineLanguageWord("Lêt", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 181.
	Language = "middle-low-german",
	Type = "noun",
	Meanings = {"Song"}, -- source gives the German "Lied" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Leuþa"},
	Gender = "neuter"
})

DefineLanguageWord("Liet", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 181.
	Language = "middle-low-german",
	Type = "noun",
	Meanings = {"Song"}, -- source gives the German "Lied" as the meaning
	DerivesFrom = {"old-high-german", "noun", "Liod"}, -- apparently, but isn't entirely clear from source
	Gender = "neuter"
})

DefineLanguageWord("Lôt", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 181.
	Language = "middle-low-german",
	Type = "noun",
	Meanings = {"Lead", "Ball", "Lot"}, -- source gives the German "Blei, Kugel, ein gewisses Gewicht (Loth)" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Lauda"},
	Gender = "neuter"
})

DefineLanguageWord("Mage", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 156.
	Language = "middle-low-german",
	Type = "noun",
	Meanings = {"Stomach"}, -- source (apparently) gives the German "Magen" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Magan"},
	Gender = "masculine"
})

DefineLanguageWord("Mark", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 160.
	Language = "middle-low-german",
	Type = "noun",
	Meanings = {"Sign"}, -- source gives the German "Zeichen"
	DerivesFrom = {"proto-germanic", "noun", "Marka"},
	Gender = "neuter"
})

DefineLanguageWord("Marke", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 160.
	Language = "middle-low-german",
	Type = "noun",
	Meanings = {"Half Silver Pound"}, -- source gives the German "halbes Pfund Silbers"
	DerivesFrom = {"proto-germanic", "noun", {"Mark", "Half Pound", "Half Silver Pound"}, "Markô"}
})

DefineLanguageWord("Mersch", { -- source also gives the alternative form "Marsch"; Source: http://www.cnrtl.fr/definition/marais
	Language = "middle-low-german",
	Type = "noun",
	Meanings = {"Fertile Coastland"}, -- source gives the French "terre fertile au bord de la mer"
	DerivesFrom = {"proto-germanic", "noun", "Mari"}
})

DefineLanguageWord("Mêse", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 155.
	Language = "middle-low-german",
	Type = "noun",
	Meanings = {"Tit", "Titmouse"}, -- source gives the German "Meise" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Maisôn"},
	Gender = "feminine"
})

DefineLanguageWord("Note", { -- source also gives the alternative form "Not"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 58.
	Language = "middle-low-german",
	Type = "noun",
	Meanings = {"Nut"}, -- source (apparently) gives the German "Nuß"
	DerivesFrom = {"proto-germanic", "noun", "Hnut"}
})

DefineLanguageWord("Orloge", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 8.
	Language = "middle-low-german",
	Type = "noun",
	Meanings = {"War"}
})

DefineLanguageWord("Sage", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 213.
	Language = "middle-low-german",
	Type = "noun",
	Meanings = {"Saw"}, -- source (apparently) gives the German "Säge" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Sagô"}
})

DefineLanguageWord("Smede", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 264.
	Language = "middle-low-german",
	Type = "noun",
	Meanings = {"Smithy"}, -- source gives the German "Schmiede" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Smiþjôn"}
})

DefineLanguageWord("Smeden", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 264.
	Language = "middle-low-german",
	Type = "verb",
	Meanings = {"Forge"}, -- source gives the German "schmieden" as the meaning
	DerivesFrom = {"proto-germanic", "verb", "Smîþôn"}
})

DefineLanguageWord("Smit", { -- source also gives the alternative form "Smet"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 263.
	Language = "middle-low-german",
	Type = "noun",
	Meanings = {"Smith"}, -- source gives the German "Schmied"
	DerivesFrom = {"old-saxon", "noun", "Smiđ"}
})

DefineLanguageWord("Stapel", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 241.
	Language = "middle-low-german",
	Type = "noun",
	Meanings = {"Column", "Document", "Church Tower", "Piled Horde", "Stockyard"}, -- source gives the German "Säule, Unterlage, aufgeschichteter Haufe, Stapelplatz" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Stapula"},
	Gender = "masculine"
})

DefineLanguageWord("Stok", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 247.
	Language = "middle-low-german",
	Type = "noun",
	Meanings = {"Stick", "Tree Stump", "Beehive"}, -- source gives the German "Stock, Baumstumpf, Bienenstock"
	Gender = "masculine",
	DerivesFrom = {"old-saxon", "noun", "Stok"}
})

DefineLanguageWord("Sûd", { -- source also gives the alternative form "sûder"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223.
	Language = "middle-low-german",
	Type = "adverb",
	Meanings = {"Southward", "In the South"}, -- source gives the German "südwärts, im Süden" as the meaning
	DerivesFrom = {"proto-germanic", "adverb", "Sunþa"}
})

DefineLanguageWord("Torf", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 86.
	Language = "middle-low-german",
	Type = "noun",
	Meanings = {"Lawn", "Turf"}, -- source gives the German "Rasen" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Turba"},
	Gender = "masculine"
})

DefineLanguageWord("Tûn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 89.
	Language = "middle-low-german",
	Type = "noun",
	Meanings = {"Fence", "Property Enclosure", "Garden"}, -- source gives the German "Zaun, als Einfriedigung des Eigentums, Garten" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Tûna"},
	Gender = "masculine"
})

DefineLanguageWord("Twern", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	Language = "middle-low-german",
	Type = "noun",
	Meanings = {"Doubly Spun Twine"}
})

DefineLanguageWord("Twernen", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	Language = "middle-low-german",
	Type = "verb",
	Meanings = {"Twine"}
})

DefineLanguageWord("Vorde", { -- source also gives the alternative form "Vort"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 120.
	Language = "middle-low-german",
	Type = "noun",
	Meanings = {"Ford"}, -- source gives the German "Furt" as the meaning
	DerivesFrom = {"old-saxon", "noun", "Ford"},
	Gender = "masculine"
})

DefineLanguageWord("Werf", { -- source also gives the alternative form "Warf"; Source: http://www.cnrtl.fr/definition/barguigner
	Language = "middle-low-german",
	Type = "noun",
	Meanings = {"Industry", "Trade"} -- source gives the French "industrie, métier" as the meaning
})

DefineLanguageWord("Wêt", { -- source also gives the alternative form "Wêde"; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 4.
	Language = "middle-low-german",
	Type = "noun",
	Meanings = {"Woad"}
})

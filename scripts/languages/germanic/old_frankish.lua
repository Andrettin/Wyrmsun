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

DefineLanguageWord("Aδalarjo", { -- source also gives the alternative form "Adalaro"; Source: http://www.cnrtl.fr/definition/al%C3%A9rion
	Language = "old-frankish", -- source gives "Ancien Bas Francique" (= Old Frankish)
	Type = "noun",
	Meanings = {"Eagle"} -- source gives the French "aigle" as the meaning
})

DefineLanguageWord("Bergan", { -- Source: http://www.cnrtl.fr/definition/haubert
	Language = "old-frankish", -- source gives "Ancien Bas Francique" (= Old Frankish)
	Type = "verb",
	Meanings = {"Salvage"} -- source gives the French "mettre en sûreté" as the meaning
})

DefineLanguageWord("Blāo", { -- Source: http://www.cnrtl.fr/definition/bleu
	Language = "old-frankish", -- source gives "Ancien Bas Francique" (= Old Frankish)
	Type = "adjective",
	Meanings = {"Blue"}, -- apparently
	DerivesFrom = {"proto-germanic", "adjective", "Blêva"} -- presumably
})

DefineLanguageWord("Bord", { -- Source: http://www.cnrtl.fr/definition/B%F6rde
	Language = "old-frankish", -- source gives "Ancien Bas Francique" (= Old Frankish)
	Type = "noun",
	Meanings = {"Board"}, -- source gives the French "planche" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Burda"}, -- the TLFi gives it as deriving from the Indo-European word "bhrdho-" (Source: http://www.cnrtl.fr/definition/bord); Fick gives this word's cognates as deriving from Proto-Germanic "burda"
	Gender = "neuter",
	NumberCaseInflections = {
		"plural", "nominative", "Borda"
	}
})

DefineLanguageWord("Bord", { -- Source: http://www.cnrtl.fr/definition/bord
	Language = "old-frankish", -- source gives "Ancien Bas Francique" (= Old Frankish)
	Type = "noun",
	Meanings = {"Edge of a Vessel"}, -- source gives the French "bord d'un vaisseau" as the meaning
	DerivesFrom = {"proto-indo-european", "noun", "Bhrdho"}
})

DefineLanguageWord("Borganjan", { -- cross of "borgen" with "waidanjan"; Source: http://www.cnrtl.fr/definition/barguigner
	Language = "old-frankish", -- source gives "Ancien Bas Francique" (= Old Frankish)
	Type = "verb",
	Meanings = {}
})

DefineLanguageWord("Borgen", { -- Source: http://www.cnrtl.fr/definition/barguigner
	Language = "old-frankish", -- source gives it as being Frankish, presumably implying that it is Old Frankish, as an Old Frankish word had just been mentioned; also, it says than an Old Frankish word is a cross of this word with another, so it can only be Old Frankish too
	Type = "verb",
	Meanings = {"Lend", "Borrow"} -- source gives the French "prêter, emprunter" as the meaning of the modern German word "Borgen", which is a cognate according to the source; so this is the closest to the meaning we have
})

DefineLanguageWord("Bŏsk", { -- Source: http://www.cnrtl.fr/definition/bois
	Language = "old-frankish", -- source gives "Ancien Bas Francique" (= Old Frankish)
	Type = "noun",
	Meanings = {"Bush"}, -- source gives the French "buisson" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Buska"} -- presumably
})

DefineLanguageWord("Brand", { -- Source: http://www.cnrtl.fr/definition/brand
	Language = "old-frankish", -- source gives "Ancien Bas Francique" (= Old Frankish)
	Type = "noun",
	Meanings = {"Brand", "Firebrand"}, -- source gives the French "tison, brandon" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Branda"} -- presumably
})

DefineLanguageWord("Fridu", { -- Source: http://www.cnrtl.fr/definition/effrayer
	Language = "old-frankish", -- source gives "Ancien Bas Francique" (= Old Frankish)
	Type = "noun",
	Meanings = {"Peace"}, -- source gives the French "paix" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Friþu"} -- presumably
})

DefineLanguageWord("Gart", { -- source also gives the alternative form "Gardo"; Source: http://www.cnrtl.fr/definition/jardin
	Language = "old-frankish", -- source gives "Ancien Bas Francique" (= Old Frankish)
	Type = "noun",
	Meanings = {"Enclosure"}, -- source gives the French "clôture" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Gárdiz"} -- presumably
})

DefineLanguageWord("Grîs", { -- Source: http://www.cnrtl.fr/definition/gris
	Language = "old-frankish", -- source gives "Ancien Bas Francique" (= Old Frankish)
	Type = "adjective",
	Meanings = {"Gray"}, -- source gives the French "gris" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Grîsa"} -- presumably
})

DefineLanguageWord("Grôdi", { -- Source: http://www.cnrtl.fr/definition/gruyer
	Language = "old-frankish", -- source gives "Ancien Bas Francique" (= Old Frankish)
	Type = "noun",
	Meanings = {"Green"}, -- source gives the French "vert" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Grônia"} -- presumably
})

DefineLanguageWord("Haim", { -- Source: http://www.cnrtl.fr/definition/hameau
	Language = "old-frankish", -- source gives "Ancien Bas Francique" (= Old Frankish)
	Type = "noun",
	Meanings = {"Small Village"}, -- source gives the French "petit village" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Haima"} -- presumably
})

DefineLanguageWord("Hals", { -- Source: http://www.cnrtl.fr/definition/haubert
	Language = "old-frankish", -- source gives "Ancien Bas Francique" (= Old Frankish)
	Type = "noun",
	Meanings = {"Neck"}, -- source gives the French "cou" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Halsa"} -- presumably
})

DefineLanguageWord("Helm", { -- Source: http://www.cnrtl.fr/definition/heaume
	Language = "old-frankish", -- source gives "Ancien Bas Francique" (= Old Frankish)
	Type = "noun",
	Meanings = {"Helm", "Helmet"}, -- source gives the French "casque" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Helma"} -- presumably
})

DefineLanguageWord("Ithi", { -- apparently a suffix forming the compound "haimithi"; Source: http://www.cnrtl.fr/definition/Amad%E9
	Language = "old-frankish",
	Type = "noun", -- correct?
	Meanings = {}
})

DefineLanguageWord("Kresso", { -- Source: http://www.cnrtl.fr/definition/cresson
	Language = "old-frankish", -- source gives "Ancien Bas Francique" (= Old Frankish)
	Type = "noun",
	Meanings = {"Cress"} -- source gives the French "cresson" as the meaning
})

DefineLanguageWord("Laisius", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 181.
	Language = "old-frankish",
	Type = "noun",
	Meanings = {"Womb"} -- source gives (in German) "Schoß" as the meaning
})

DefineLanguageWord("Marka", { -- Source: http://www.cnrtl.fr/definition/marc
	Language = "old-frankish", -- source gives "Ancien Bas Francique" (= Old Frankish)
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"proto-germanic", "noun", {"Mark", "Half Pound", "Half Silver Pound"}, "Markô"} -- presumably
})

DefineLanguageWord("Marisk", { -- Source: http://www.cnrtl.fr/definition/marais
	Language = "old-frankish", -- source gives "Ancien Bas Francique" (= Old Frankish)
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"proto-germanic", "noun", "Mari"}
})

DefineLanguageWord("Meisinga", { -- Source: http://www.cnrtl.fr/definition/m%C3%A9sange
	Language = "old-frankish", -- source gives "Ancien Bas Francique" (= Old Frankish)
	Type = "noun",
	Meanings = {"Tit", "Titmouse"}, -- source gives the French "mésange" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Maisôn"} -- presumably
})

DefineLanguageWord("Nimid", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 151.
	Language = "old-frankish",
	Type = "noun",
	Meanings = {"Holy Pasture"}, -- source gives (in German) "heiliger, gehegter Waldplatz, Weideplatz für die gehegten Opfertiere" as the meaning
	Gender = "masculine"
})

DefineLanguageWord("Riki", { -- Source: http://www.cnrtl.fr/definition/riche
	Language = "old-frankish", -- source gives "Ancien Bas Francique" (= Old Frankish)
	Type = "adjective",
	Meanings = {"Powerful"}, -- source gives the French "puissant" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Rîka"} -- presumably
})

DefineLanguageWord("Scramasacs", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 235.
	Language = "old-frankish",
	Type = "noun",
	Meanings = {"Knife-like Sword"} -- source gives (in German) "messerartiges Schwert" as the meaning
})

DefineLanguageWord("Siniskalk", { -- Fick gives "Sinigus, seniscalcus" instead; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 215; Source: http://www.cnrtl.fr/definition/s%C3%A9n%C3%A9chal
	Language = "old-frankish", -- the TLFi gives "Ancien Bas Francique" (= Old Frankish)
	Type = "noun",
	Meanings = {"Senior Servant"}, -- the TLFi gives the French "serviteur le plus âgé" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Sinaskalka"}
})

DefineLanguageWord("Skerian", { -- Source: http://www.cnrtl.fr/definition/d%C3%A9chirer
	Language = "old-frankish", -- source gives "Ancien Bas Francique" (= Old Frankish)
	Type = "verb",
	Meanings = {"Separate", "Divide"} -- source gives the French "séparer, diviser" as the meaning
})

DefineLanguageWord("Skîran", { -- Source: http://www.cnrtl.fr/definition/d%C3%A9chirer
	Language = "old-frankish", -- source gives "Ancien Bas Francique" (= Old Frankish)
	Type = "verb",
	Meanings = {"Scrape", "Scratch"} -- source gives the French "râcler, gratter" as the meaning
})

DefineLanguageWord("Skĭrmjan", { -- Source: http://www.cnrtl.fr/definition/escrime
	Language = "old-frankish", -- source gives "Ancien Bas Francique" (= Old Frankish, not Old Low Franconian as might be expected)
	Type = "verb",
	Meanings = {"Defend", "Protect"} -- source gives the French "défendre, protéger" as the meaning
})

DefineLanguageWord("Sumar", { -- Source: http://www.cnrtl.fr/definition/sombre//3
	Language = "old-frankish", -- source gives "Ancien Bas Francique" (= Old Frankish)
	Type = "noun",
	Meanings = {"Summer"}, -- source gives the French "été" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Sumara"} -- presumably
})

DefineLanguageWord("Sworga", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223.
	Language = "old-frankish",
	Type = "noun",
	Meanings = {"Worry"}, -- source gives the German "Sorge" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Surgô"},
	Gender = "feminine"
})

DefineLanguageWord("Thorp", { -- source also gives the alternative form "throp"; Source: http://www.cnrtl.fr/definition/trop
	Language = "old-frankish", -- source gives "Ancien Bas Francique" (= Old Frankish)
	Type = "noun",
	Meanings = {"Heap", "Agglomeration", "Village"}, -- source gives the French "amas, agglomération; village" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Þurpa"} -- presumably
})

DefineLanguageWord("Turba", { -- Source: http://www.cnrtl.fr/definition/tourbe//1
	Language = "old-frankish", -- source gives "Francique" (which likely means Old Frankish in this case)
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"proto-germanic", "noun", "Turba"} -- presumably
})

DefineLanguageWord("Waidanjan", { -- Source: http://www.cnrtl.fr/definition/barguigner
	Language = "old-frankish", -- source gives "Ancien Bas Francique" (= Old Frankish)
	Type = "verb",
	Meanings = {"Win", "Gain"} -- source gives the French "gagner" as the meaning (or as a cognate, it isn't clear from it)
})

DefineLanguageWord("Wald", { -- a suffix, from the verb "walden"; http://www.cnrtl.fr/definition/lourdaud//1
	Language = "old-frankish",
	Type = "noun", -- correct? maybe should be "walden"'s participle instead
	Meanings = {}
})

DefineLanguageWord("Walden", { -- http://www.cnrtl.fr/definition/lourdaud//1
	Language = "old-frankish",
	Type = "verb",
	Meanings = {"Govern"}
})

DefineLanguageWord("Warb", { -- Source: http://www.cnrtl.fr/definition/barguigner
	Language = "old-frankish", -- source gives "Francique" (which seems to equal Old Frankish)
	Type = "noun",
	Meanings = {}
})

DefineLanguageWord("Warbanjan", { -- derived from the noun "Warb"; Source: http://www.cnrtl.fr/definition/barguigner
	Language = "old-frankish", -- source gives "Francique" (which seems to equal Old Frankish)
	Type = "verb",
	Meanings = {}
})

DefineLanguageWord("Wer", { -- Source: http://www.cnrtl.fr/definition/garou
	Language = "old-frankish", -- source gives "Ancien Bas Francique" (= Old Frankish)
	Type = "noun",
	Meanings = {"Man"}, -- source gives the French "homme" as the meaning
	DerivesFrom = {"proto-indo-european", "noun", "Wiros"} -- presumably
})

DefineLanguageWord("Wolf", { -- Source: http://www.cnrtl.fr/definition/garou
	Language = "old-frankish", -- source gives "Ancien Bas Francique" (= Old Frankish)
	Type = "noun",
	Meanings = {"Wolf"}, -- source gives the French "loup" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Wulfa"} -- presumably
})

DefineLanguageWord("Worm", { -- source also gives the alternative form "Wurm"; Source: http://www.cnrtl.fr/definition/gourme
	Language = "old-frankish", -- source gives "Ancien Bas Francique" (= Old Frankish)
	Type = "noun",
	Meanings = {"Pus"}, -- source gives the French "pus" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Vurma"} -- presumably
})

-- compounds

DefineLanguageWord("Haimithi", { -- Source: http://www.cnrtl.fr/definition/Amad%E9
	Language = "old-frankish",
	Type = "noun",
	Meanings = {"Fenced Place"}, -- source gives the French "lieu entouré de clôture" as the meaning
	CompoundElements = { -- apparently
		"prefix", "old-frankish", "noun", "Haim",
		"suffix", "old-frankish", "noun", "Ithi"
	}
})

DefineLanguageWord("Halsberg", { -- Source: http://www.cnrtl.fr/definition/haubert
	Language = "old-frankish", -- source gives "Ancien Bas Francique" (= Old Frankish)
	Type = "noun",
	Meanings = {"Neck Cover"}, -- source gives the French "ce qui protège le cou" as the meaning
	CompoundElements = {
		"prefix", "old-frankish", "noun", "Hals",
		"suffix", "old-frankish", "verb", "Bergan"
	}
})

DefineLanguageWord("Werwolf", { -- Source: http://www.cnrtl.fr/definition/garou
	Language = "old-frankish", -- source gives "Ancien Bas Francique" (= Old Frankish)
	Type = "noun",
	Meanings = {},
	CompoundElements = {
		"prefix", "old-frankish", "noun", "Wer",
		"suffix", "old-frankish", "noun", "Wolf"
	}
})

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
--      (c) Copyright 2016 by Andrettin
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
	DerivesFrom = {"proto-indo-european", "noun", "Bhrdho"},
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

DefineLanguageWord("Nimid", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 151.
	Language = "old-frankish",
	Type = "noun",
	Meanings = {"Holy Pasture"}, -- source gives (in German) "heiliger, gehegter Waldplatz, Weideplatz für die gehegten Opfertiere" as the meaning
	Gender = "masculine"
})

DefineLanguageWord("Scramasacs", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 235.
	Language = "old-frankish",
	Type = "noun",
	Meanings = {"Knife-like Sword"} -- source gives (in German) "messerartiges Schwert" as the meaning
})

DefineLanguageWord("Sinigus", { -- source also gives the alternative form "Seniscalcus"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 215.
	Language = "old-frankish",
	Type = "adjective",
	Meanings = {"Old"} -- presumably (this is the meaning given to the Proto-Germanic original word, and no meaning is specifically given to this one)
})

DefineLanguageWord("Skĭrmjan", { -- Source: http://www.cnrtl.fr/definition/escrime
	Language = "old-frankish", -- source gives "Ancien Bas Francique" (= Old Frankish, not Old Low Franconian as might be expected)
	Type = "verb",
	Meanings = {"Defend", "Protect"} -- source gives the French "défendre, protéger" as the meaning
})

DefineLanguageWord("Sworga", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223.
	Language = "old-frankish",
	Type = "noun",
	Meanings = {"Worry"}, -- presumably (this is the meaning given to the Proto-Germanic original word, and no meaning is specifically given to this one)
	Gender = "feminine"
})

DefineLanguageWord("Waidanjan", { -- Source: http://www.cnrtl.fr/definition/barguigner
	Language = "old-frankish", -- source gives "Ancien Bas Francique" (= Old Frankish)
	Type = "verb",
	Meanings = {"Win", "Gain"} -- source gives the French "gagner" as the meaning (or as a cognate, it isn't clear from it)
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

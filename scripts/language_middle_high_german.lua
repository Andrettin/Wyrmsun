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

DefineLanguageWord("Adel", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 14.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Lineage", "Noble Lineage", "Noble"}, -- source gives "Geschlecht, edles Geschlecht, Adel" as the meaning
	DerivesFrom = {"old-high-german", "noun", "Adal"},
	Gender = "Masculine"
})

DefineLanguageWord("Bach", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 133.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Stream"}, -- source gives the German "Bach" as the meaning
	DerivesFrom = {"old-high-german", "noun", "Bah"},
	Gender = "Masculine"
})

DefineLanguageWord("Bat", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 133.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Bath", "Baths"}, -- source gives the German "Bad" as the meaning
	DerivesFrom = {"old-high-german", "noun", "Bad"},
	Gender = "Neuter"
})

DefineLanguageWord("Berc", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Mountain", "Hill"}, -- source gives "Berg" as the meaning
	DerivesFrom = {"old-high-german", "noun", "Berg"},
	NumberCaseInflections = {
		"singular", "genitive", "Berges"
	},
	Gender = "Masculine"
})

DefineLanguageWord("Bluome", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 146.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Flower"}, -- source gives the German "Blume" as the meaning
	DerivesFrom = {"old-high-german", "noun", "Bluomo"},
	Gender = "Masculine"
})

DefineLanguageWord("Bluost", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 146.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Blossom"}, -- apparently, but it is not clear from the source
	DerivesFrom = {"proto-germanic", "noun", "Blôma"},
	Gender = "Feminine"
})

DefineLanguageWord("Burc", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Fortified Place", "Castle", "Palace", "City"}, -- source gives "befestigter Ort, Burg, Schloß, Stadt" as the meaning
	DerivesFrom = {"old-high-german", "noun", "Burg"},
	Gender = "Feminine"
})

DefineLanguageWord("Gart", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Prickle", "Stick for Driving Animals"},
	Gender = "Masculine"
})
			
DefineLanguageWord("Hert", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 46.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Stove"}, -- source gives "Herd" as the meaning
	DerivesFrom = {"old-high-german", "noun", "Herd"},
	NumberCaseInflections = {
		"singular", "genitive", "Herdes"
	},
	Gender = "Masculine"
})

DefineLanguageWord("Hort", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Treasure"},
	DerivesFrom = {"old-high-german", "noun", "Hort"}
})

DefineLanguageWord("Kien", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 4, 7.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Fir", "Spruce"," Fir Splinter", "Fir Torch", "Spruce Splinter", "Spruce Torch"},
	Gender = "Masculine"
})

DefineLanguageWord("Lēren", { -- causative verb; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 5.
	Language = "middle-high-german",
	Type = "verb",
	Meanings = {"Teach"}
})

DefineLanguageWord("Lernen", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 5.
	Language = "middle-high-german",
	Type = "verb",
	Meanings = {"Learn"}
})

DefineLanguageWord("Marc", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Marrow"},
	DerivesFrom = {"old-high-german", "noun", "Marc"},
	NumberCaseInflections = {
		"singular", "genitive", "Marges"
	}
})

DefineLanguageWord("Miete", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 7.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Payment", "Reward", "Bribe"},
	DerivesFrom = {"old-high-german", "noun", "Mēta"},
	Gender = "Feminine"
})

DefineLanguageWord("Nare", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Salvation", "Rescue", "Nourishment", "Sustenance"},
	Gender = "Feminine"
})

DefineLanguageWord("Nerigen", { -- source also gives alternative forms "Neren" and "Nern"; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "middle-high-german",
	Type = "verb",
	Meanings = {"Heal", "Sustain the Life of", "Save", "Protect", "Nourish"}
})

DefineLanguageWord("Ort", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Point", "Corner", "Edge of a Part", "Edge of a Piece", "Edge of a Small Coin"},
	DerivesFrom = {"old-high-german", "noun", "Ort"},
	Gender = "Masculine"
})

DefineLanguageWord("Rünne", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Storm Surge"},
	Gender = "Feminine"
})

DefineLanguageWord("Viur", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 127.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Fire"}, -- source gives "Feuer" as the meaning
	DerivesFrom = {"old-high-german", "noun", "Fuir"},
	Gender = "Neuter"
})

DefineLanguageWord("Weit", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 4, 7.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Woad"},
	Gender = "Masculine"
})

DefineLanguageWord("Zwirn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1-2, 6.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Doubly Spun Twine"}
})

DefineLanguageWord("Zwirnen", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	Language = "middle-high-german",
	Type = "verb",
	Meanings = {"Twist Together Twice", "Twine"}
})

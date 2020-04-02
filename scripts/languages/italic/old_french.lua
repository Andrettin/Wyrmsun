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
--      (c) Copyright 2016-2020 by Andrettin
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

DefineLanguageWord("Alt", { -- a suffix; http://www.cnrtl.fr/definition/lourdaud//1
	Language = "old-french",
	Type = "noun", -- correct?
	Meanings = {},
	DerivesFrom = {"old-frankish", "noun", "Wald"}
})

DefineLanguageWord("Borgois", { -- Source: T. C. Donkin, "An Etymological Dictionary of the Romance Languages", 1864, p. 84.
	Language = "old-french",
	Type = "noun", -- correct?
	Meanings = {},
	DerivesFrom = {"proto-germanic", "noun", "Burg"} -- the source (apparently) gives it as being of Germanic origin; presumably from the Old Frankish in French, since they were the Germanic people who settled in France; but since we don't know the relevant Old Frankish word, set this as being derived from the Proto-Germanic one instead
})

DefineLanguageWord("Halberc", { -- Source: http://www.cnrtl.fr/definition/haubert
	Language = "old-french", -- attested c. 1100 AD
	Type = "noun",
	Meanings = {"Hauberk"}, -- apparently
	DerivesFrom = {"old-frankish", "noun", "Halsberg"}
})

DefineLanguageWord("Ham", { -- Source: http://www.cnrtl.fr/definition/hameau
	Language = "old-french",
	Type = "noun",
	Meanings = {"Small Village"}, -- source gives the French "petit village" as the meaning
	DerivesFrom = {"old-frankish", "noun", "Haim"}
})

DefineLanguageWord("Hamede", { -- Source: http://www.cnrtl.fr/definition/Amad%E9
	Language = "old-french",
	Type = "noun",
	Meanings = {"Bar", "Barrier"}, -- source gives the French "barre, barrière" as the meaning
	DerivesFrom = {"middle-dutch", "noun", "Hameide"} -- alternatively from Old Flemish "Hameyde" (or was the source specifying the dialect of Middle Dutch?)
})

DefineLanguageWord("Hamie", { -- Source: http://www.cnrtl.fr/definition/Amad%E9
	Language = "old-french",
	Type = "noun",
	Meanings = {"Bar"}, -- source gives the French "barre" as the meaning
	DerivesFrom = {"old-frankish", "noun", "Haimithi"} -- apparently
})

DefineLanguageWord("Paile", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 121.
	Language = "old-french",
	Type = "noun",
	Meanings = {}
})

DefineLanguageWord("Saudenier", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 17.
	Language = "old-french",
	Type = "noun",
	Meanings = {"Soldier"},
	DerivesFrom = {"latin", "noun", "Solidenarius"}
})

DefineLanguageWord("Soudoier", { -- source also gives the alternative forms "soldoier", "sodoier", "saudoier" and "soldeier"; Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 17.
	Language = "old-french",
	Type = "noun",
	Meanings = {"Soldier"},
	DerivesFrom = {"latin", "noun", "Solidatarius"}
})

DefineLanguageWord("Vautre", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 118.
	Language = "old-french",
	Type = "noun",
	Meanings = {"Hunting Dog"}, -- source gives the German "Jagdhund" as the meaning
	DerivesFrom = {"gaulish", "noun", "Vertragos"}
})

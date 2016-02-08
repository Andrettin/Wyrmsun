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

DefineLanguageWord("Hēde", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Flax Fiber"},
	SingularNominative = "Hēde",
	Uncountable = true -- as a material, it is likely to be uncountable
})

DefineLanguageWord("Lēra", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 5.
	Language = "old-frisian",
	Type = "verb",
	Meanings = {"Teach"},
	Infinitive = "Lēra" -- causative verb
})

DefineLanguageWord("Lernēn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-frisian",
	Type = "verb",
	Meanings = {"Learn"},
	Infinitive = "Lernēn" -- source also gives "Lirnēn" as an alternative
})

DefineLanguageWord("Māra", { -- this is the comparative, what is the normal version of the word? Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	Language = "old-frisian",
	Type = "adjective",
	Meanings = {"More"},
	Comparative = "Māra",
	Superlative = "Māst"
})

DefineLanguageWord("Marg", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Marrow"},
	DerivesFrom = {"proto-germanic", "noun", "Mazgaz"},
	SingularNominative = "Marg"
})

DefineLanguageWord("Mēde", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 7.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Reward", "Rental", "Payment", "Gift"},
	DerivesFrom = {"proto-germanic", "noun", "Mizdō"},
	SingularNominative = "Mēde", -- source also gives as alternatives the forms "Mīde", "Meide" and "Hēde"
	Gender = "Feminine"
})

DefineLanguageWord("Mēr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-frisian",
	Type = "adverb",
	Meanings = {"More"},
	Nominative = "Mēr"
})

DefineLanguageWord("Nera", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-frisian",
	Type = "verb",
	Meanings = {"Nurture"},
	Infinitive = "Nera"
})

DefineLanguageWord("Ord", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Point", "Place"}, -- source gives the meaning as "(spear)point, place"
	SingularNominative = "Ord"
})

DefineLanguageWord("Ransa", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"House"},
	SingularNominative = "Ransa"
})

DefineLanguageWord("Wêd", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 4.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Woad"},
	SingularNominative = "Wêd"
})

DefineLanguageWord("Wi", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 5.
	Language = "old-frisian",
	Type = "pronoun",
	Meanings = {"We"},
	Nominative = "Wi"
})

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
--      (c) Copyright 2015 by Andrettin
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

-- Greek

DefineLanguageWord("Κώνωπες", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 101.
	Civilization = "greek",
	Meaning = "Gnats",
	PluralNominative = "Κώνωπες"
})

DefineLanguageWord("Μισθός", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 7.
	Civilization = "greek",
	Meaning = "Reward, Payment of a Soldier",
	SingularNominative = "Μισθός",
	Gender = "Masculine"
})

DefineLanguageWord("Χέσ-χιον", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Civilization = "greek",
	Meaning = "Oakum", -- source gives the German word "Werg" as the meaning
	SingularNominative = "Χέσ-χιον" -- is this really an hyphen in the word, or are these two forms of the word?
})

DefineLanguageWord("Χύσθος", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Civilization = "greek",
	Meaning = "Cavity, Vulva",
	SingularNominative = "Χύσθος",
	Gender = "Masculine"
})

DefineLanguageWord("Abdera", { -- should be written as the original Greek name (with Greek characters)
	Civilization = "greek",
	Meaning = "?",
	SingularNominative = "Abdera",
	NameSingular = true,
	TypeName = {"settlement"} -- example: "Abdera"
})

DefineLanguageWord("Abydus", { -- should be written as the original Greek name (with Greek characters)
	Civilization = "greek",
	Meaning = "?",
	SingularNominative = "Abydus",
	NameSingular = true,
	TypeName = {"settlement"} -- example: "Abydus"
})

DefineLanguageWord("Acragas", { -- should be written as the original Greek name (with Greek characters)
	Civilization = "greek",
	Meaning = "?",
	SingularNominative = "Acragas",
	NameSingular = true,
	TypeName = {"settlement"} -- example: "Acragas" (Agrigentum)
})

DefineLanguageWord("Agathe", { -- should be written as the original Greek name (with Greek characters)
	Civilization = "greek",
	Meaning = "?",
	SingularNominative = "Agathe",
	NameSingular = true,
	TypeName = {"settlement"} -- example: "Agathe"
})

DefineLanguageWord("Ainos", { -- should be written as the original Greek name (with Greek characters)
	Civilization = "greek",
	Meaning = "?",
	SingularNominative = "Ainos",
	NameSingular = true,
	TypeName = {"settlement"} -- example: "Ainos"
})

DefineLanguageWord("Alalia", { -- should be written as the original Greek name (with Greek characters)
	Civilization = "greek",
	Meaning = "?",
	SingularNominative = "Alalia",
	NameSingular = true,
	TypeName = {"settlement"} -- example: "Alalia" (Aleria)
})

DefineLanguageWord("Alonae", { -- should be written as the original Greek name (with Greek characters)
	Civilization = "greek",
	Meaning = "?",
	SingularNominative = "Alonae",
	NameSingular = true,
	TypeName = {"settlement"} -- example: "Alonae"
})

DefineLanguageWord("Amisus", { -- should be written as the original Greek name (with Greek characters)
	Civilization = "greek",
	Meaning = "?",
	SingularNominative = "Amisus",
	NameSingular = true,
	TypeName = {"settlement"} -- example: "Amisus"
})

DefineLanguageWord("Amphi", { -- should be written as the original Greek name (with Greek characters)
	Civilization = "greek",
	Meaning = "?",
	SingularNominative = "Amphi",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Amphipolis"
})

DefineLanguageWord("Calli", { -- should be written as the original Greek name (with Greek characters)
	Civilization = "greek",
	Meaning = "?",
	SingularNominative = "Calli",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Callipolis"
})

DefineLanguageWord("Polis", { -- should be written as the original Greek name (with Greek characters)
	Civilization = "greek",
	Meaning = "City",
	SingularNominative = "Polis",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- examples: "Amphipolis", "Callipolis", "Neapolis" (Naples)
})

DefineLanguageAdjective("Nea", { -- should be written as the original Greek name (with Greek characters)
	Civilization = "greek",
	Meaning = "New",
	PrefixTypeName = {"settlement"} -- example: "Neapolis" (Naples)
})

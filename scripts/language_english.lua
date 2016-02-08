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

DefineLanguageWord("Alf", { -- archaic
	Language = "english",
	Type = "noun",
	Meanings = {"Elf"},
	SingularNominative = "Alf",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"},
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- example: "Alfred"
})

DefineLanguageWord("Anvil", {
	Language = "english",
	Type = "noun",
	Meanings = {"Anvil"},
	SingularNominative = "Anvil",
	PluralNominative = "Anvils",
	Gender = "Neuter",
	SuffixSingular = true,
	SeparateSuffixTypeName = {"unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Ash", {
	Language = "english",
	Type = "noun",
	Meanings = {"Ash"},
	SingularNominative = "Ash",
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Ashford"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Barn", {
	Language = "english",
	Type = "noun",
	Meanings = {"Barn"},
	SingularNominative = "Barn",
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Barnstaple"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Bay", {
	Language = "english",
	Type = "noun",
	Meanings = {"Bay"},
	SingularNominative = "Bay",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Torbay"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Bed", {
	Language = "english",
	Type = "noun",
	Meanings = {"Bed"},
	SingularNominative = "Bed",
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Bedford"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Bernard", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Bernard",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Brass", {
	Language = "english",
	Type = "noun",
	Meanings = {"Brass"},
	SingularNominative = "Brass",
	Gender = "Neuter",
	Uncountable = true,
	PrefixSingular = true,
	SeparatePrefixTypeName = {"unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Burn", { -- archaic
	Language = "english",
	Type = "noun",
	Meanings = {"Creek"},
	SingularNominative = "Burn",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Blackburn"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Bury", { -- archaic
	Language = "english",
	Type = "noun",
	Meanings = {"Bury"},
	SingularNominative = "Bury",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- examples: "Newbury", "Salisbury", "Shrewsbury"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Charles", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Charles",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Corn", {
	Language = "english",
	Type = "noun",
	Meanings = {"Corn"},
	SingularNominative = "Corn",
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"province"} -- example: "Cornwall"
})

DefineLanguageWord("Ditch", {
	Language = "english",
	Type = "noun",
	Meanings = {"Ditch"},
	SingularNominative = "Ditch",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Redditch"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Es", { -- archaic
	Language = "english",
	Type = "noun",
	Meanings = {"East"},
	SingularNominative = "Es",
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"province"} -- example: "Essex"
})

DefineLanguageWord("Fish", {
	Language = "english",
	Type = "noun",
	Meanings = {"Fish"},
	SingularNominative = "Fish",
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Fishguard"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Folk", {
	Language = "english",
	Type = "noun",
	Meanings = {"Folk"},
	SingularNominative = "Folk",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"province"} -- examples: "Norfolk", "Suffolk"
})

DefineLanguageWord("Ford", {
	Language = "english",
	Type = "noun",
	Meanings = {"Ford"},
	SingularNominative = "Ford",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- examples: "Ashford", "Bedford", "Oxford"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Forge", {
	Language = "english",
	Type = "noun",
	Meanings = {"Forge"},
	SingularNominative = "Forge",
	PluralNominative = "Forges",
	Gender = "Neuter",
	SuffixSingular = true,
	SeparateSuffixTypeName = {"unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Francis", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Francis",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Frederick", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Frederick",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Gate", {
	Language = "english",
	Type = "noun",
	Meanings = {"Gate"},
	SingularNominative = "Gate",
	SingularGenitive = "Gates",
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Gateshead"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Guard", {
	Language = "english",
	Type = "noun",
	Meanings = {"Guard"},
	SingularNominative = "Guard",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Fishguard"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Hammer", {
	Language = "english",
	Type = "noun",
	Meanings = {"Hammer"},
	SingularNominative = "Hammer",
	PluralNominative = "Hammers",
	Gender = "Neuter",
	SuffixSingular = true,
	SeparateSuffixTypeName = {"unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Haven", {
	Language = "english",
	Type = "noun",
	Meanings = {"Haven"},
	SingularNominative = "Haven",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Stonehaven"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Head", {
	Language = "english",
	Type = "noun",
	Meanings = {"Head"},
	SingularNominative = "Head",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Gateshead"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Hemp", {
	Language = "english",
	Type = "noun",
	Meanings = {"Hemp"},
	SingularNominative = "Hemp",
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Hempstead"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Henry", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Henry",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Hoard", {
	Language = "english",
	Type = "noun",
	Meanings = {"Hoard"},
	DerivesFrom = {"old-english", "noun", "Hord"}, -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	SingularNominative = "Hoard",
	Gender = "Neuter"
})

DefineLanguageWord("House", {
	Language = "english",
	Type = "noun",
	Meanings = {"House"},
	SingularNominative = "House",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 336.
})

DefineLanguageWord("Hyrst", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Hyrst",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 336.
})

DefineLanguageWord("Ing", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Ing",
--	Gender = "?",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 336.
})

DefineLanguageWord("James", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	SingularNominative = "James",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("John", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	SingularNominative = "John",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Land", {
	Language = "english",
	Type = "noun",
	Meanings = {"Land"},
	SingularNominative = "Land",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"province"} -- example: "Portland"
})

DefineLanguageWord("Lewis", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Lewis",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Maid", {
	Language = "english",
	Type = "noun",
	Meanings = {"Maid"},
	SingularNominative = "Maid",
	Gender = "Feminine",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Maidstone"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Middle", {
	Language = "english",
	Type = "noun",
	Meanings = {"Middle"},
	SingularNominative = "Middle",
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"province"} -- example: "Middlesex"
})

DefineLanguageWord("Mouth", {
	Language = "english",
	Type = "noun",
	Meanings = {"Mouth"},
	SingularNominative = "Mouth",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- examples: "Plymouth", "Portsmouth"
})

DefineLanguageWord("Nor", { -- archaic
	Language = "english",
	Type = "noun",
	Meanings = {"North"},
	SingularNominative = "Nor",
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {
		"settlement", -- example: "Norwich"
		"province" -- example: "Norfolk"
	}
})

DefineLanguageWord("Ox", {
	Language = "english",
	Type = "noun",
	Meanings = {"Ox"},
	SingularNominative = "Ox",
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Oxford"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Peter", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Peter",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Ply", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Ply",
--	Gender = "?",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Plymouth"
})

DefineLanguageWord("Pool", {
	Language = "english",
	Type = "noun",
	Meanings = {"Pool"},
	SingularNominative = "Pool",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Blackpool"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Port", {
	Language = "english",
	Type = "noun",
	Meanings = {"Port"},
	SingularNominative = "Port",
	SingularGenitive = "Ports",
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {
		"settlement", -- example: "Portsmouth"
		"province" -- example: "Portland" (duchy)
	},
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Newport"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Quay", {
	Language = "english",
	Type = "noun",
	Meanings = {"Quay"},
	SingularNominative = "Quay",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Newquay"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Red", { -- archaic
	Language = "english",
	Type = "noun",
	Meanings = {"Counsel", "Advice", "Account", "Story"},
	SingularNominative = "Red",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- example: "Alfred"
})

DefineLanguageWord("Richard", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Richard",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Salt", {
	Language = "english",
	Type = "noun",
	Meanings = {"Salt"},
	SingularNominative = "Salt",
	SingularGenitive = "Salis", -- archaic
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Salisbury"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Sea", {
	Language = "english",
	Type = "noun",
	Meanings = {"Sea"},
	SingularNominative = "Sea",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Swansea"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Sex", { -- archaic
	Language = "english",
	Type = "noun",
	Meanings = {"Saxon"},
	SingularNominative = "Sex",
	Gender = "Neuter",
	SuffixPlural = true,
	SuffixTypeName = {"province"} -- examples: "Essex", "Middlesex", "Sussex", "Wessex"
})

DefineLanguageWord("Shrew", {
	Language = "english",
	Type = "noun",
	Meanings = {"Shrew"},
	SingularNominative = "Shrew",
	SingularGenitive = "Shrews",
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {
		"settlement" -- example: "Shrewsbury"; Source: "Philip's International School Atlas", 2006, p. 64.
	}
})

DefineLanguageWord("Smithy", {
	Language = "english",
	Type = "noun",
	Meanings = {"Smithy"},
	SingularNominative = "Smithy",
	PluralNominative = "Smithies",
	Gender = "Neuter",
	SuffixSingular = true,
	SeparateSuffixTypeName = {"unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Staple", {
	Language = "english",
	Type = "noun",
	Meanings = {"Staple"},
	SingularNominative = "Staple",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Barnstaple"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Stead", {
	Language = "english",
	Type = "noun",
	Meanings = {"Stead"},
	SingularNominative = "Stead",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Hempstead"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Stone", {
	Language = "english",
	Type = "noun",
	Meanings = {"Stone"},
	SingularNominative = "Stone",
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"}, -- example: "Stonehaven"; Source: "Philip's International School Atlas", 2006, p. 64.
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Maidstone"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Suf", { -- archaic
	Language = "english",
	Type = "noun",
	Meanings = {"South"},
	SingularNominative = "Suf",
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"province"} -- example: "Suffolk"
})

DefineLanguageWord("Sus", { -- archaic
	Language = "english",
	Type = "noun",
	Meanings = {"South"},
	SingularNominative = "Sus",
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"province"} -- example: "Sussex"
})

DefineLanguageWord("Swan", {
	Language = "english",
	Type = "noun",
	Meanings = {"Swan"},
	SingularNominative = "Swan",
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Swansea"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Tor", {
	Language = "english",
	Type = "noun",
	Meanings = {}, -- maybe comes from the name of the corresponding Anglo-Saxon God to Thor?
	SingularNominative = "Tor",
--	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Torbay"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Town", {
	Language = "english",
	Type = "noun",
	Meanings = {"Town"},
	SingularNominative = "Town",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 336.
})

DefineLanguageWord("Tree", {
	Language = "english",
	Type = "noun",
	Meanings = {"Tree"},
	SingularNominative = "Tree",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 336.
})

DefineLanguageWord("Wall", {
	Language = "english",
	Type = "noun",
	Meanings = {"Wall"},
	SingularNominative = "Wall",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"province"} -- example: "Cornwall"
})

DefineLanguageWord("Wes", { -- archaic
	Language = "english",
	Type = "noun",
	Meanings = {"West"},
	SingularNominative = "Wes",
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"province"} -- example: "Wessex"
})

DefineLanguageWord("Wich", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Wich",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Norwich"; Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 336.
})

DefineLanguageWord("William", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	SingularNominative = "William",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Black", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Black"},
	Positive = "Black",
	SeparatePrefixTypeName = {
		"settlement", -- examples: "Blackburn", "Blackpool"; Source: "Philip's International School Atlas", 2006, p. 64.
		"unit-class-smithy" -- seems sensible
	}
})

DefineLanguageWord("Fiery", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Fiery"},
	Positive = "Fiery",
	SeparatePrefixTypeName = {"unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("New", {
	Language = "english",
	Type = "adjective",
	Meanings = {"New"},
	Positive = "New",
	SuffixTypeName = {"settlement"} -- examples: "Newbury", "Newport", "Newquay"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Red", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Red"},
	Positive = "Red",
	SeparatePrefixTypeName = {
		"settlement", -- example: "Redditch"; Source: "Philip's International School Atlas", 2006, p. 64.
		"unit-class-smithy" -- seems sensible
	}
})

DefineLanguageWord("Smoldering", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Smoldering"},
	Positive = "Smoldering",
	SeparatePrefixTypeName = {"unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("The", {
	Language = "english",
	Type = "article",
	Meanings = {"The"},
	Nominative = "The",
	Accusative = "The",
	Dative = "The",
	Genitive = "The",
	Definite = true
})

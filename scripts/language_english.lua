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

DefineLanguageNoun("Alf", { -- archaic
	Language = "english",
	Meanings = {"Elf"},
	SingularNominative = "Alf",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"},
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- example: "Alfred"
})

DefineLanguageNoun("Anvil", {
	Language = "english",
	Meanings = {"Anvil"},
	SingularNominative = "Anvil",
	PluralNominative = "Anvils",
	Gender = "Neuter",
	SuffixSingular = true,
	SeparateSuffixTypeName = {"unit-teuton-smithy"} -- seems sensible
})

DefineLanguageNoun("Ash", {
	Language = "english",
	Meanings = {"Ash"},
	SingularNominative = "Ash",
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Ashford"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageNoun("Barn", {
	Language = "english",
	Meanings = {"Barn"},
	SingularNominative = "Barn",
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Barnstaple"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageNoun("Bay", {
	Language = "english",
	Meanings = {"Bay"},
	SingularNominative = "Bay",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Torbay"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageNoun("Bed", {
	Language = "english",
	Meanings = {"Bed"},
	SingularNominative = "Bed",
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Bedford"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageNoun("Bernard", {
	Language = "english",
	Meanings = {},
	SingularNominative = "Bernard",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Brass", {
	Language = "english",
	Meanings = {"Brass"},
	SingularNominative = "Brass",
	Gender = "Neuter",
	Uncountable = true,
	PrefixSingular = true,
	SeparatePrefixTypeName = {"unit-teuton-smithy"} -- seems sensible
})

DefineLanguageNoun("Burn", { -- archaic
	Language = "english",
	Meanings = {"Creek"},
	SingularNominative = "Burn",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Blackburn"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageNoun("Bury", { -- archaic
	Language = "english",
	Meanings = {"Bury"},
	SingularNominative = "Bury",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- examples: "Newbury", "Salisbury", "Shrewsbury"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageNoun("Charles", {
	Language = "english",
	Meanings = {},
	SingularNominative = "Charles",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Corn", {
	Language = "english",
	Meanings = {"Corn"},
	SingularNominative = "Corn",
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"province"} -- example: "Cornwall"
})

DefineLanguageNoun("Ditch", {
	Language = "english",
	Meanings = {"Ditch"},
	SingularNominative = "Ditch",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Redditch"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageNoun("Es", { -- archaic
	Language = "english",
	Meanings = {"East"},
	SingularNominative = "Es",
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"province"} -- example: "Essex"
})

DefineLanguageNoun("Fish", {
	Language = "english",
	Meanings = {"Fish"},
	SingularNominative = "Fish",
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Fishguard"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageNoun("Folk", {
	Language = "english",
	Meanings = {"Folk"},
	SingularNominative = "Folk",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"province"} -- examples: "Norfolk", "Suffolk"
})

DefineLanguageNoun("Ford", {
	Language = "english",
	Meanings = {"Ford"},
	SingularNominative = "Ford",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- examples: "Ashford", "Bedford", "Oxford"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageNoun("Forge", {
	Language = "english",
	Meanings = {"Forge"},
	SingularNominative = "Forge",
	PluralNominative = "Forges",
	Gender = "Neuter",
	SuffixSingular = true,
	SeparateSuffixTypeName = {"unit-teuton-smithy"} -- seems sensible
})

DefineLanguageNoun("Francis", {
	Language = "english",
	Meanings = {},
	SingularNominative = "Francis",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Frederick", {
	Language = "english",
	Meanings = {},
	SingularNominative = "Frederick",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Gate", {
	Language = "english",
	Meanings = {"Gate"},
	SingularNominative = "Gate",
	SingularGenitive = "Gates",
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Gateshead"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageNoun("Guard", {
	Language = "english",
	Meanings = {"Guard"},
	SingularNominative = "Guard",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Fishguard"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageNoun("Hammer", {
	Language = "english",
	Meanings = {"Hammer"},
	SingularNominative = "Hammer",
	PluralNominative = "Hammers",
	Gender = "Neuter",
	SuffixSingular = true,
	SeparateSuffixTypeName = {"unit-teuton-smithy"} -- seems sensible
})

DefineLanguageNoun("Haven", {
	Language = "english",
	Meanings = {"Haven"},
	SingularNominative = "Haven",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Stonehaven"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageNoun("Head", {
	Language = "english",
	Meanings = {"Head"},
	SingularNominative = "Head",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Gateshead"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageNoun("Hemp", {
	Language = "english",
	Meanings = {"Hemp"},
	SingularNominative = "Hemp",
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Hempstead"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageNoun("Henry", {
	Language = "english",
	Meanings = {},
	SingularNominative = "Henry",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("House", {
	Language = "english",
	Meanings = {"House"},
	SingularNominative = "House",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 336.
})

DefineLanguageNoun("Hyrst", {
	Language = "english",
	Meanings = {},
	SingularNominative = "Hyrst",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 336.
})

DefineLanguageNoun("Ing", {
	Language = "english",
	Meanings = {},
	SingularNominative = "Ing",
--	Gender = "?",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 336.
})

DefineLanguageNoun("James", {
	Language = "english",
	Meanings = {},
	SingularNominative = "James",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("John", {
	Language = "english",
	Meanings = {},
	SingularNominative = "John",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Land", {
	Language = "english",
	Meanings = {"Land"},
	SingularNominative = "Land",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"province"} -- example: "Portland"
})

DefineLanguageNoun("Lewis", {
	Language = "english",
	Meanings = {},
	SingularNominative = "Lewis",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Maid", {
	Language = "english",
	Meanings = {"Maid"},
	SingularNominative = "Maid",
	Gender = "Feminine",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Maidstone"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageNoun("Middle", {
	Language = "english",
	Meanings = {"Middle"},
	SingularNominative = "Middle",
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"province"} -- example: "Middlesex"
})

DefineLanguageNoun("Mouth", {
	Language = "english",
	Meanings = {"Mouth"},
	SingularNominative = "Mouth",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- examples: "Plymouth", "Portsmouth"
})

DefineLanguageNoun("Nor", { -- archaic
	Language = "english",
	Meanings = {"North"},
	SingularNominative = "Nor",
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {
		"settlement", -- example: "Norwich"
		"province" -- example: "Norfolk"
	}
})

DefineLanguageNoun("Ox", {
	Language = "english",
	Meanings = {"Ox"},
	SingularNominative = "Ox",
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Oxford"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageNoun("Peter", {
	Language = "english",
	Meanings = {},
	SingularNominative = "Peter",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Ply", {
	Language = "english",
	Meanings = {},
	SingularNominative = "Ply",
--	Gender = "?",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Plymouth"
})

DefineLanguageNoun("Pool", {
	Language = "english",
	Meanings = {"Pool"},
	SingularNominative = "Pool",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Blackpool"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageNoun("Port", {
	Language = "english",
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

DefineLanguageNoun("Quay", {
	Language = "english",
	Meanings = {"Quay"},
	SingularNominative = "Quay",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Newquay"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageNoun("Red", { -- archaic
	Language = "english",
	Meanings = {"Counsel", "Advice", "Account", "Story"},
	SingularNominative = "Red",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- example: "Alfred"
})

DefineLanguageNoun("Richard", {
	Language = "english",
	Meanings = {},
	SingularNominative = "Richard",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Salt", {
	Language = "english",
	Meanings = {"Salt"},
	SingularNominative = "Salt",
	SingularGenitive = "Salis", -- archaic
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Salisbury"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageNoun("Sea", {
	Language = "english",
	Meanings = {"Sea"},
	SingularNominative = "Sea",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Swansea"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageNoun("Sex", { -- archaic
	Language = "english",
	Meanings = {"Saxon"},
	SingularNominative = "Sex",
	Gender = "Neuter",
	SuffixPlural = true,
	SuffixTypeName = {"province"} -- examples: "Essex", "Middlesex", "Sussex", "Wessex"
})

DefineLanguageNoun("Shrew", {
	Language = "english",
	Meanings = {"Shrew"},
	SingularNominative = "Shrew",
	SingularGenitive = "Shrews",
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {
		"settlement" -- example: "Shrewsbury"; Source: "Philip's International School Atlas", 2006, p. 64.
	}
})

DefineLanguageNoun("Smithy", {
	Language = "english",
	Meanings = {"Smithy"},
	SingularNominative = "Smithy",
	PluralNominative = "Smithies",
	Gender = "Neuter",
	SuffixSingular = true,
	SeparateSuffixTypeName = {"unit-teuton-smithy"} -- seems sensible
})

DefineLanguageNoun("Staple", {
	Language = "english",
	Meanings = {"Staple"},
	SingularNominative = "Staple",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Barnstaple"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageNoun("Stead", {
	Language = "english",
	Meanings = {"Stead"},
	SingularNominative = "Stead",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Hempstead"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageNoun("Stone", {
	Language = "english",
	Meanings = {"Stone"},
	SingularNominative = "Stone",
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"}, -- example: "Stonehaven"; Source: "Philip's International School Atlas", 2006, p. 64.
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Maidstone"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageNoun("Suf", { -- archaic
	Language = "english",
	Meanings = {"South"},
	SingularNominative = "Suf",
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"province"} -- example: "Suffolk"
})

DefineLanguageNoun("Sus", { -- archaic
	Language = "english",
	Meanings = {"South"},
	SingularNominative = "Sus",
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"province"} -- example: "Sussex"
})

DefineLanguageNoun("Swan", {
	Language = "english",
	Meanings = {"Swan"},
	SingularNominative = "Swan",
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Swansea"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageNoun("Tor", {
	Language = "english",
	Meanings = {}, -- maybe comes from the name of the corresponding Anglo-Saxon God to Thor?
	SingularNominative = "Tor",
--	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Torbay"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageNoun("Town", {
	Language = "english",
	Meanings = {"Town"},
	SingularNominative = "Town",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 336.
})

DefineLanguageNoun("Tree", {
	Language = "english",
	Meanings = {"Tree"},
	SingularNominative = "Tree",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 336.
})

DefineLanguageNoun("Wall", {
	Language = "english",
	Meanings = {"Wall"},
	SingularNominative = "Wall",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"province"} -- example: "Cornwall"
})

DefineLanguageNoun("Wes", { -- archaic
	Language = "english",
	Meanings = {"West"},
	SingularNominative = "Wes",
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"province"} -- example: "Wessex"
})

DefineLanguageNoun("Wich", {
	Language = "english",
	Meanings = {},
	SingularNominative = "Wich",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Norwich"; Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 336.
})

DefineLanguageNoun("William", {
	Language = "english",
	Meanings = {},
	SingularNominative = "William",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageAdjective("Black", {
	Language = "english",
	Meanings = {"Black"},
	Positive = "Black",
	SeparatePrefixTypeName = {
		"settlement", -- examples: "Blackburn", "Blackpool"; Source: "Philip's International School Atlas", 2006, p. 64.
		"unit-teuton-smithy" -- seems sensible
	}
})

DefineLanguageAdjective("Fiery", {
	Language = "english",
	Meanings = {"Fiery"},
	Positive = "Fiery",
	SeparatePrefixTypeName = {"unit-teuton-smithy"} -- seems sensible
})

DefineLanguageAdjective("New", {
	Language = "english",
	Meanings = {"New"},
	Positive = "New",
	SuffixTypeName = {"settlement"} -- examples: "Newbury", "Newport", "Newquay"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageAdjective("Red", {
	Language = "english",
	Meanings = {"Red"},
	Positive = "Red",
	SeparatePrefixTypeName = {
		"settlement", -- example: "Redditch"; Source: "Philip's International School Atlas", 2006, p. 64.
		"unit-teuton-smithy" -- seems sensible
	}
})

DefineLanguageAdjective("Smoldering", {
	Language = "english",
	Meanings = {"Smoldering"},
	Positive = "Smoldering",
	SeparatePrefixTypeName = {"unit-teuton-smithy"} -- seems sensible
})

DefineLanguageArticle("The", {
	Language = "english",
	Meanings = {"The"},
	Nominative = "The",
	Accusative = "The",
	Dative = "The",
	Genitive = "The",
	Definite = true
})

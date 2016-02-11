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

DefineLanguageWord("Alf", { -- archaic
	Language = "english",
	Type = "noun",
	Meanings = {"Elf"},
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
	NumberCaseInflections = {
		"plural", "nominative", "Anvils"
	},
	Gender = "Neuter",
	SuffixSingular = true,
	SeparateSuffixTypeName = {"unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Ash", {
	Language = "english",
	Type = "noun",
	Meanings = {"Ash"},
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Ashford"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Barn", {
	Language = "english",
	Type = "noun",
	Meanings = {"Barn"},
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Barnstaple"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Barrow", {
	Language = "english",
	Type = "noun",
	Meanings = {"Barrow"},
	DerivesFrom = {"old-english", "noun", "Beorg"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137.
	Gender = "Neuter"
})

DefineLanguageWord("Bath", {
	Language = "english",
	Type = "noun",
	Meanings = {"Bath"},
	DerivesFrom = {"old-english", "noun", "Bæþ"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 133.
	Gender = "Neuter"
})

DefineLanguageWord("Bay", {
	Language = "english",
	Type = "noun",
	Meanings = {"Bay"},
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Torbay"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Bear", {
	Language = "english",
	Type = "noun",
	Meanings = {"Bear"},
	DerivesFrom = {"old-english", "noun", "Bera"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Gender = "Neuter"
})

DefineLanguageWord("Beck", {
	Language = "english",
	Type = "noun",
	Meanings = {"Creek"},
	DerivesFrom = {"old-norse", "noun", "Bekkr"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 133.
	Gender = "Neuter"
})

DefineLanguageWord("Bed", {
	Language = "english",
	Type = "noun",
	Meanings = {"Bed"},
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Bedford"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Bernard", {
	Language = "english",
	Type = "noun",
	Meanings = {},
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

DefineLanguageWord("Blade", {
	Language = "english",
	Type = "noun",
	Meanings = {"Blade"},
	NumberCaseInflections = {
		"plural", "nominative", "Blades"
	},
	Gender = "Neuter",
	SuffixSingular = true,
	SeparateSuffixTypeName = {"unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Blossom", {
	Language = "english",
	Type = "noun",
	Meanings = {"Blossom"},
	DerivesFrom = {"old-english", "noun", "Blôstma"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 146.
	Gender = "Neuter"
})

DefineLanguageWord("Brass", {
	Language = "english",
	Type = "noun",
	Meanings = {"Brass"},
	Gender = "Neuter",
	Uncountable = true
})

DefineLanguageWord("Brass", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Brass"},
	Positive = "Brass",
	SeparatePrefixTypeName = {"unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Bronze", {
	Language = "english",
	Type = "noun",
	Meanings = {"Bronze"},
	Gender = "Neuter",
	Uncountable = true
})

DefineLanguageWord("Bronze", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Bronze"},
	Positive = "Bronze",
	SeparatePrefixTypeName = {"unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Burn", { -- archaic
	Language = "english",
	Type = "noun",
	Meanings = {"Creek"},
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Blackburn"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Bury", { -- archaic
	Language = "english",
	Type = "noun",
	Meanings = {"Bury"},
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- examples: "Newbury", "Salisbury", "Shrewsbury"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Charles", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Copper", {
	Language = "english",
	Type = "noun",
	Meanings = {"Copper"},
	Gender = "Neuter",
	Uncountable = true
})

DefineLanguageWord("Copper", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Copper"},
	Positive = "Copper",
	SeparatePrefixTypeName = {"unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Corn", {
	Language = "english",
	Type = "noun",
	Meanings = {"Corn"},
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"province"} -- example: "Cornwall"
})

DefineLanguageWord("Ditch", {
	Language = "english",
	Type = "noun",
	Meanings = {"Ditch"},
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Redditch"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Es", { -- archaic
	Language = "english",
	Type = "noun",
	Meanings = {"East"},
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"province"} -- example: "Essex"
})

DefineLanguageWord("Fiery", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Fiery"},
	Positive = "Fiery",
	SeparatePrefixTypeName = {"unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Fire", {
	Language = "english",
	Type = "noun",
	Meanings = {"Fire"},
	DerivesFrom = {"old-english", "noun", "Fŷr"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 127.
	Gender = "Neuter"
})

DefineLanguageWord("Fish", {
	Language = "english",
	Type = "noun",
	Meanings = {"Fish"},
	DerivesFrom = {"old-english", "noun", "Fisc"},
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Fishguard"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Folk", {
	Language = "english",
	Type = "noun",
	Meanings = {"Folk"},
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"province"} -- examples: "Norfolk", "Suffolk"
})

DefineLanguageWord("Ford", {
	Language = "english",
	Type = "noun",
	Meanings = {"Ford"},
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- examples: "Ashford", "Bedford", "Oxford"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Forge", {
	Language = "english",
	Type = "noun",
	Meanings = {"Forge"},
	NumberCaseInflections = {
		"plural", "nominative", "Forges"
	},
	Gender = "Neuter",
	SuffixSingular = true,
	SeparateSuffixTypeName = {"unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Francis", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Frederick", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Gate", {
	Language = "english",
	Type = "noun",
	Meanings = {"Gate"},
	NumberCaseInflections = {
		"singular", "genitive", "Gates"
	},
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Gateshead"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Gauntlet", {
	Language = "english",
	Type = "noun",
	Meanings = {"Gauntlet"},
	NumberCaseInflections = {
		"plural", "nominative", "Gauntlets"
	},
	Gender = "Neuter",
	SuffixSingular = true,
	SeparateSuffixTypeName = {"unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Gold", {
	Language = "english",
	Type = "noun",
	Meanings = {"Gold"},
	Gender = "Neuter",
	Uncountable = true
})

DefineLanguageWord("Golden", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Golden"},
	Positive = "Golden",
	SeparatePrefixTypeName = {"unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Guard", {
	Language = "english",
	Type = "noun",
	Meanings = {"Guard"},
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Fishguard"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Hammer", {
	Language = "english",
	Type = "noun",
	Meanings = {"Hammer"},
	NumberCaseInflections = {
		"plural", "nominative", "Hammers"
	},
	Gender = "Neuter",
	SuffixSingular = true,
	SeparateSuffixTypeName = {"unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Haven", {
	Language = "english",
	Type = "noun",
	Meanings = {"Haven"},
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Stonehaven"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Head", {
	Language = "english",
	Type = "noun",
	Meanings = {"Head"},
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Gateshead"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Hearth", {
	Language = "english",
	Type = "noun",
	Meanings = {"Hearth"},
	DerivesFrom = {"old-english", "noun", "Heorþ"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 46.
	Gender = "Neuter"
})

DefineLanguageWord("Hemp", {
	Language = "english",
	Type = "noun",
	Meanings = {"Hemp"},
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Hempstead"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Henry", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Hoard", {
	Language = "english",
	Type = "noun",
	Meanings = {"Hoard"},
	DerivesFrom = {"old-english", "noun", "Hord"}, -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Gender = "Neuter"
})

DefineLanguageWord("Holy", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Holy"},
	Positive = "Holy",
	SeparatePrefixTypeName = {"unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("House", {
	Language = "english",
	Type = "noun",
	Meanings = {"House"},
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 336.
})

DefineLanguageWord("Hyrst", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 336.
})

DefineLanguageWord("Ing", {
	Language = "english",
	Type = "noun",
	Meanings = {},
--	Gender = "?",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 336.
})

DefineLanguageWord("Iron", {
	Language = "english",
	Type = "noun",
	Meanings = {"Iron"},
	Gender = "Neuter",
	Uncountable = true
})

DefineLanguageWord("Iron", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Iron"},
	Positive = "Iron",
	SeparatePrefixTypeName = {"unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("James", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("John", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Land", {
	Language = "english",
	Type = "noun",
	Meanings = {"Land"},
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"province"} -- example: "Portland"
})

DefineLanguageWord("Lewis", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Magic", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Magic"},
	Positive = "Magic",
	SeparatePrefixTypeName = {"unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Maid", {
	Language = "english",
	Type = "noun",
	Meanings = {"Maid"},
	Gender = "Feminine",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Maidstone"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Mail", {
	Language = "english",
	Type = "noun",
	Meanings = {"Mail"},
	Gender = "Neuter",
	SuffixSingular = true,
	SeparateSuffixTypeName = {"unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Middle", {
	Language = "english",
	Type = "noun",
	Meanings = {"Middle"},
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"province"} -- example: "Middlesex"
})

DefineLanguageWord("Mouth", {
	Language = "english",
	Type = "noun",
	Meanings = {"Mouth"},
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- examples: "Plymouth", "Portsmouth"
})

DefineLanguageWord("New", {
	Language = "english",
	Type = "adjective",
	Meanings = {"New"},
	Positive = "New",
	SuffixTypeName = {"settlement"} -- examples: "Newbury", "Newport", "Newquay"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Nor", { -- archaic
	Language = "english",
	Type = "noun",
	Meanings = {"North"},
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
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Oxford"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Peter", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Ply", {
	Language = "english",
	Type = "noun",
	Meanings = {},
--	Gender = "?",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Plymouth"
})

DefineLanguageWord("Pool", {
	Language = "english",
	Type = "noun",
	Meanings = {"Pool"},
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Blackpool"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Port", {
	Language = "english",
	Type = "noun",
	Meanings = {"Port"},
	NumberCaseInflections = {
		"singular", "genitive", "Ports"
	},
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
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Newquay"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Red", { -- archaic
	Language = "english",
	Type = "noun",
	Meanings = {"Counsel", "Advice", "Account", "Story"},
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- example: "Alfred"
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

DefineLanguageWord("Richard", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Rusty", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Rusty"},
	Positive = "Rusty",
	SeparatePrefixTypeName = {"unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Salt", {
	Language = "english",
	Type = "noun",
	Meanings = {"Salt"},
	NumberCaseInflections = {
		"singular", "genitive", "Salis" -- archaic (is this actually a genitive?)
	},
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Salisbury"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Sea", {
	Language = "english",
	Type = "noun",
	Meanings = {"Sea"},
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Swansea"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Sex", { -- archaic
	Language = "english",
	Type = "noun",
	Meanings = {"Saxon"},
	Gender = "Neuter",
	SuffixPlural = true,
	SuffixTypeName = {"province"} -- examples: "Essex", "Middlesex", "Sussex", "Wessex"
})

DefineLanguageWord("Shield", {
	Language = "english",
	Type = "noun",
	Meanings = {"Shield"},
	Gender = "Neuter",
	SuffixSingular = true,
	SeparateSuffixTypeName = {"unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Shining", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Shining"},
	Positive = "Shining",
	SeparatePrefixTypeName = {"unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Shrew", {
	Language = "english",
	Type = "noun",
	Meanings = {"Shrew"},
	NumberCaseInflections = {
		"singular", "genitive", "Shrews"
	},
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
	NumberCaseInflections = {
		"plural", "nominative", "Smithies"
	},
	Gender = "Neuter",
	SuffixSingular = true,
	SeparateSuffixTypeName = {"unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Smoldering", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Smoldering"},
	Positive = "Smoldering",
	SeparatePrefixTypeName = {"unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Staple", {
	Language = "english",
	Type = "noun",
	Meanings = {"Staple"},
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Barnstaple"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Stead", {
	Language = "english",
	Type = "noun",
	Meanings = {"Stead"},
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Hempstead"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Stone", {
	Language = "english",
	Type = "noun",
	Meanings = {"Stone"},
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
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"province"} -- example: "Suffolk"
})

DefineLanguageWord("Sus", { -- archaic
	Language = "english",
	Type = "noun",
	Meanings = {"South"},
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"province"} -- example: "Sussex"
})

DefineLanguageWord("Swan", {
	Language = "english",
	Type = "noun",
	Meanings = {"Swan"},
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Swansea"; Source: "Philip's International School Atlas", 2006, p. 64.
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

DefineLanguageWord("Tor", {
	Language = "english",
	Type = "noun",
	Meanings = {}, -- maybe comes from the name of the corresponding Anglo-Saxon God to Thor?
--	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Torbay"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Town", {
	Language = "english",
	Type = "noun",
	Meanings = {"Town"},
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 336.
})

DefineLanguageWord("Tree", {
	Language = "english",
	Type = "noun",
	Meanings = {"Tree"},
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 336.
})

DefineLanguageWord("Wall", {
	Language = "english",
	Type = "noun",
	Meanings = {"Wall"},
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"province"} -- example: "Cornwall"
})

DefineLanguageWord("Wes", { -- archaic
	Language = "english",
	Type = "noun",
	Meanings = {"West"},
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"province"} -- example: "Wessex"
})

DefineLanguageWord("Wich", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Norwich"; Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 336.
})

DefineLanguageWord("William", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"}
})

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
	Gender = "masculine",
	NameTypes = {"person"},
	AffixNameTypes = {"compound", "prefix", "singular", "person"} -- example: "Alfred"
})

DefineLanguageWord("Anvil", {
	Language = "english",
	Type = "noun",
	Meanings = {"Anvil"},
	NumberCaseInflections = {
		"plural", "nominative", "Anvils"
	},
	Gender = "neuter",
	AffixNameTypes = {"separate", "suffix", "singular", "unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Ash", {
	Language = "english",
	Type = "noun",
	Meanings = {"Ash"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- example: "Ashford"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Barn", {
	Language = "english",
	Type = "noun",
	Meanings = {"Barn"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- example: "Barnstaple"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Barrow", {
	Language = "english",
	Type = "noun",
	Meanings = {"Barrow"},
	DerivesFrom = {"old-english", "noun", "Beorg"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137.
	Gender = "neuter"
})

DefineLanguageWord("Bath", {
	Language = "english",
	Type = "noun",
	Meanings = {"Bath"},
	DerivesFrom = {"old-english", "noun", "Bæþ"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 133.
	Gender = "neuter"
})

DefineLanguageWord("Bay", {
	Language = "english",
	Type = "noun",
	Meanings = {"Bay"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- example: "Torbay"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Bear", {
	Language = "english",
	Type = "noun",
	Meanings = {"Bear"},
	DerivesFrom = {"old-english", "noun", "Bera"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Gender = "neuter"
})

DefineLanguageWord("Beck", {
	Language = "english",
	Type = "noun",
	Meanings = {"Creek"},
	DerivesFrom = {"old-norse", "noun", "Bekkr"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 133.
	Gender = "neuter"
})

DefineLanguageWord("Bed", {
	Language = "english",
	Type = "noun",
	Meanings = {"Bed"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- example: "Bedford"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Bernard", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"}
})

DefineLanguageWord("Black", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Black"},
	AffixNameTypes = {
		"separate", "prefix", "singular", "settlement", -- examples: "Blackburn", "Blackpool"; Source: "Philip's International School Atlas", 2006, p. 64.
		"separate", "prefix", "singular", "unit-class-smithy" -- seems sensible
	}
})

DefineLanguageWord("Blade", {
	Language = "english",
	Type = "noun",
	Meanings = {"Blade"},
	NumberCaseInflections = {
		"plural", "nominative", "Blades"
	},
	Gender = "neuter",
	AffixNameTypes = {"separate", "suffix", "singular", "unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Blossom", {
	Language = "english",
	Type = "noun",
	Meanings = {"Blossom"},
	DerivesFrom = {"old-english", "noun", "Blôstma"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 146.
	Gender = "neuter"
})

DefineLanguageWord("Brass", {
	Language = "english",
	Type = "noun",
	Meanings = {"Brass"},
	Gender = "neuter",
	Uncountable = true
})

DefineLanguageWord("Brass", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Brass"},
	AffixNameTypes = {"separate", "prefix", "singular", "unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Bridge", {
	Language = "english",
	Type = "noun",
	Meanings = {"Bridge"},
	Gender = "neuter",
	DerivesFrom = {"old-english", "noun", "Brycg"} -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 145.
})

DefineLanguageWord("Bronze", {
	Language = "english",
	Type = "noun",
	Meanings = {"Bronze"},
	Gender = "neuter",
	Uncountable = true
})

DefineLanguageWord("Bronze", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Bronze"},
	AffixNameTypes = {"separate", "prefix", "singular", "unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Burn", { -- archaic
	Language = "english",
	Type = "noun",
	Meanings = {"Creek"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- example: "Blackburn"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Bury", { -- archaic
	Language = "english",
	Type = "noun",
	Meanings = {"Bury"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- examples: "Newbury", "Salisbury", "Shrewsbury"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Charles", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person"}
})

DefineLanguageWord("Copper", {
	Language = "english",
	Type = "noun",
	Meanings = {"Copper"},
	Gender = "neuter",
	Uncountable = true
})

DefineLanguageWord("Copper", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Copper"},
	AffixNameTypes = {"separate", "prefix", "singular", "unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Corn", {
	Language = "english",
	Type = "noun",
	Meanings = {"Corn"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "prefix", "singular", "province"} -- example: "Cornwall"
})

DefineLanguageWord("Ditch", {
	Language = "english",
	Type = "noun",
	Meanings = {"Ditch"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- example: "Redditch"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Es", { -- archaic
	Language = "english",
	Type = "noun",
	Meanings = {"East"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "prefix", "singular", "province"} -- example: "Essex"
})

DefineLanguageWord("Fiery", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Fiery"},
	AffixNameTypes = {"separate", "prefix", "singular", "unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Fire", {
	Language = "english",
	Type = "noun",
	Meanings = {"Fire"},
	DerivesFrom = {"old-english", "noun", "Fŷr"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 127.
	Gender = "neuter"
})

DefineLanguageWord("Fish", {
	Language = "english",
	Type = "noun",
	Meanings = {"Fish"},
	DerivesFrom = {"old-english", "noun", "Fisc"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- example: "Fishguard"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Folk", {
	Language = "english",
	Type = "noun",
	Meanings = {"Folk"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "province"} -- examples: "Norfolk", "Suffolk"
})

DefineLanguageWord("Ford", {
	Language = "english",
	Type = "noun",
	Meanings = {"Ford"},
	DerivesFrom = {"old-english", "noun", "Ford"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 120.
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- examples: "Ashford", "Bedford", "Oxford"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Forge", {
	Language = "english",
	Type = "noun",
	Meanings = {"Forge"},
	NumberCaseInflections = {
		"plural", "nominative", "Forges"
	},
	Gender = "neuter",
	AffixNameTypes = {"separate", "suffix", "singular", "unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Francis", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person"}
})

DefineLanguageWord("Frederick", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"}
})

DefineLanguageWord("Gate", {
	Language = "english",
	Type = "noun",
	Meanings = {"Gate"},
	NumberCaseInflections = {
		"singular", "genitive", "Gates"
	},
	Gender = "neuter",
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- example: "Gateshead"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Gauntlet", {
	Language = "english",
	Type = "noun",
	Meanings = {"Gauntlet"},
	NumberCaseInflections = {
		"plural", "nominative", "Gauntlets"
	},
	Gender = "neuter",
	AffixNameTypes = {"separate", "suffix", "singular", "unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Gold", {
	Language = "english",
	Type = "noun",
	Meanings = {"Gold"},
	Gender = "neuter",
	Uncountable = true
})

DefineLanguageWord("Golden", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Golden"},
	AffixNameTypes = {"separate", "prefix", "singular", "unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Guard", {
	Language = "english",
	Type = "noun",
	Meanings = {"Guard"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- example: "Fishguard"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Hammer", {
	Language = "english",
	Type = "noun",
	Meanings = {"Hammer"},
	NumberCaseInflections = {
		"plural", "nominative", "Hammers"
	},
	Gender = "neuter",
	AffixNameTypes = {"separate", "suffix", "singular", "unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Hards", {
	Language = "english",
	Type = "noun",
	Meanings = {"Hards", "Coarse Refuse of Flax"},
	DerivesFrom = {"old-english", "noun", "Heorde"}, -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Uncountable = true
})

DefineLanguageWord("Haven", {
	Language = "english",
	Type = "noun",
	Meanings = {"Haven"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- example: "Stonehaven"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Head", {
	Language = "english",
	Type = "noun",
	Meanings = {"Head"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- example: "Gateshead"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Hearth", {
	Language = "english",
	Type = "noun",
	Meanings = {"Hearth"},
	DerivesFrom = {"old-english", "noun", "Heorþ"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 46.
	Gender = "neuter"
})

DefineLanguageWord("Hemp", {
	Language = "english",
	Type = "noun",
	Meanings = {"Hemp"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- example: "Hempstead"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Henry", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person"}
})

DefineLanguageWord("Hoard", {
	Language = "english",
	Type = "noun",
	Meanings = {"Hoard"},
	DerivesFrom = {"old-english", "noun", "Hord"}, -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Gender = "neuter"
})

DefineLanguageWord("Holy", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Holy"},
	AffixNameTypes = {"separate", "prefix", "singular", "unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("House", {
	Language = "english",
	Type = "noun",
	Meanings = {"House"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 336.
})

DefineLanguageWord("Hyrst", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 336.
})

DefineLanguageWord("Ing", {
	Language = "english",
	Type = "noun",
	Meanings = {},
--	Gender = "?",
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 336.
})

DefineLanguageWord("Iron", {
	Language = "english",
	Type = "noun",
	Meanings = {"Iron"},
	DerivesFrom = {"old-english", "noun", "Îsern"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 24.
	Gender = "neuter",
	Uncountable = true
})

DefineLanguageWord("Iron", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Iron"},
	DerivesFrom = {"old-english", "noun", "Îsern"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 24.
	AffixNameTypes = {"separate", "prefix", "singular", "unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("James", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person"}
})

DefineLanguageWord("John", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person"}
})

DefineLanguageWord("Land", {
	Language = "english",
	Type = "noun",
	Meanings = {"Land"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "province"} -- example: "Portland"
})

DefineLanguageWord("Lead", {
	Language = "english",
	Type = "noun",
	Meanings = {"Lead"},
	Gender = "neuter",
	Uncountable = true
})

DefineLanguageWord("Lead", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Lead"},
	AffixNameTypes = {"separate", "prefix", "singular", "unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Lewis", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person"}
})

DefineLanguageWord("Magic", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Magic"},
	AffixNameTypes = {"separate", "prefix", "singular", "unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Maid", {
	Language = "english",
	Type = "noun",
	Meanings = {"Maid"},
	Gender = "feminine",
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- example: "Maidstone"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Mail", {
	Language = "english",
	Type = "noun",
	Meanings = {"Mail"},
	Gender = "neuter",
	AffixNameTypes = {"separate", "suffix", "singular", "unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Middle", {
	Language = "english",
	Type = "noun",
	Meanings = {"Middle"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "prefix", "singular", "province"} -- example: "Middlesex"
})

DefineLanguageWord("Mouth", {
	Language = "english",
	Type = "noun",
	Meanings = {"Mouth"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- examples: "Plymouth", "Portsmouth"
})

DefineLanguageWord("New", {
	Language = "english",
	Type = "adjective",
	Meanings = {"New"},
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- examples: "Newbury", "Newport", "Newquay"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Nor", { -- archaic
	Language = "english",
	Type = "noun",
	Meanings = {"North"},
	Gender = "neuter",
	AffixNameTypes = {
		"compound", "prefix", "singular", "settlement", -- example: "Norwich"
		"compound", "prefix", "singular", "province" -- example: "Norfolk"
	}
})

DefineLanguageWord("Ox", {
	Language = "english",
	Type = "noun",
	Meanings = {"Ox"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- example: "Oxford"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Peter", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person"}
})

DefineLanguageWord("Ply", {
	Language = "english",
	Type = "noun",
	Meanings = {},
--	Gender = "?",
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- example: "Plymouth"
})

DefineLanguageWord("Pool", {
	Language = "english",
	Type = "noun",
	Meanings = {"Pool"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- example: "Blackpool"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Port", {
	Language = "english",
	Type = "noun",
	Meanings = {"Port"},
	NumberCaseInflections = {
		"singular", "genitive", "Ports"
	},
	Gender = "neuter",
	AffixNameTypes = {
		"compound", "prefix", "singular", "settlement", -- example: "Portsmouth"
		"compound", "prefix", "singular", "province", -- example: "Portland" (duchy)
		"compound", "suffix", "singular", "settlement" -- example: "Newport"; Source: "Philip's International School Atlas", 2006, p. 64.
	}
})

DefineLanguageWord("Quay", {
	Language = "english",
	Type = "noun",
	Meanings = {"Quay"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- example: "Newquay"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Red", { -- archaic
	Language = "english",
	Type = "noun",
	Meanings = {"Counsel", "Advice", "Account", "Story"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "person"} -- example: "Alfred"
})

DefineLanguageWord("Red", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Red"},
	AffixNameTypes = {
		"separate", "prefix", "singular", "settlement", -- example: "Redditch"; Source: "Philip's International School Atlas", 2006, p. 64.
		"separate", "prefix", "singular", "unit-class-smithy" -- seems sensible
	}
})

DefineLanguageWord("Richard", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person"}
})

DefineLanguageWord("Rusty", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Rusty"},
	AffixNameTypes = {"separate", "prefix", "singular", "unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Salis", { -- used in placenames, but not in actual speech
	Language = "english",
	Type = "noun", -- correct?
	Meanings = {"Salt"}, -- presumably
	Gender = "neuter",
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- example: "Salisbury"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Salt", {
	Language = "english",
	Type = "noun",
	Meanings = {"Salt"},
	Gender = "neuter"
})

DefineLanguageWord("Sea", {
	Language = "english",
	Type = "noun",
	Meanings = {"Sea"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- example: "Swansea"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Sex", { -- archaic
	Language = "english",
	Type = "noun",
	Meanings = {"Saxon"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "plural", "province"} -- examples: "Essex", "Middlesex", "Sussex", "Wessex"
})

DefineLanguageWord("Shield", {
	Language = "english",
	Type = "noun",
	Meanings = {"Shield"},
	Gender = "neuter",
	AffixNameTypes = {"separate", "suffix", "singular", "unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Shining", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Shining"},
	AffixNameTypes = {"separate", "prefix", "singular", "unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Shrew", {
	Language = "english",
	Type = "noun",
	Meanings = {"Shrew"},
	NumberCaseInflections = {
		"singular", "genitive", "Shrews"
	},
	Gender = "neuter",
	AffixNameTypes = {
		"compound", "prefix", "singular", "settlement" -- example: "Shrewsbury"; Source: "Philip's International School Atlas", 2006, p. 64.
	}
})

DefineLanguageWord("Silver", {
	Language = "english",
	Type = "noun",
	Meanings = {"Silver"},
	DerivesFrom = {"old-english", "noun", "Seolfor"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 221.
	Gender = "neuter",
	Uncountable = true
})

DefineLanguageWord("Silver", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Silver"},
	DerivesFrom = {"old-english", "noun", "Seolfor"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 221.
	AffixNameTypes = {"separate", "prefix", "singular", "unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Smithy", {
	Language = "english",
	Type = "noun",
	Meanings = {"Smithy"},
	NumberCaseInflections = {
		"plural", "nominative", "Smithies"
	},
	Gender = "neuter",
	AffixNameTypes = {"separate", "suffix", "singular", "unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Smoldering", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Smoldering"},
	AffixNameTypes = {"separate", "prefix", "singular", "unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Staple", {
	Language = "english",
	Type = "noun",
	Meanings = {"Staple"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- example: "Barnstaple"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Stead", {
	Language = "english",
	Type = "noun",
	Meanings = {"Stead"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- example: "Hempstead"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Stone", {
	Language = "english",
	Type = "noun",
	Meanings = {"Stone"},
	Gender = "neuter",
	AffixNameTypes = {
		"compound", "prefix", "singular", "settlement", -- example: "Stonehaven"; Source: "Philip's International School Atlas", 2006, p. 64.
		"compound", "suffix", "singular", "settlement" -- example: "Maidstone"; Source: "Philip's International School Atlas", 2006, p. 64.
	}
})

DefineLanguageWord("Suf", { -- archaic
	Language = "english",
	Type = "noun",
	Meanings = {"South"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "prefix", "singular", "province"} -- example: "Suffolk"
})

DefineLanguageWord("Sus", { -- archaic
	Language = "english",
	Type = "noun",
	Meanings = {"South"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "prefix", "singular", "province"} -- example: "Sussex"
})

DefineLanguageWord("Swan", {
	Language = "english",
	Type = "noun",
	Meanings = {"Swan"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- example: "Swansea"; Source: "Philip's International School Atlas", 2006, p. 64.
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
--	Gender = "neuter",
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- example: "Torbay"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Town", {
	Language = "english",
	Type = "noun",
	Meanings = {"Town"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 336.
})

DefineLanguageWord("Tree", {
	Language = "english",
	Type = "noun",
	Meanings = {"Tree"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 336.
})

DefineLanguageWord("Wall", {
	Language = "english",
	Type = "noun",
	Meanings = {"Wall"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "province"} -- example: "Cornwall"
})

DefineLanguageWord("Wes", { -- archaic
	Language = "english",
	Type = "noun",
	Meanings = {"West"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "prefix", "singular", "province"} -- example: "Wessex"
})

DefineLanguageWord("Wich", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- example: "Norwich"; Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 336.
})

DefineLanguageWord("William", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person"}
})

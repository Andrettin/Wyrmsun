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

DefineLanguageWord("Adam", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person-male"}
})

DefineLanguageWord("Alexander", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person-male"}
})

DefineLanguageWord("Alf", {
	Language = "english",
	Type = "noun",
	Meanings = {"Elf"},
	DerivesFrom = {"old-english", "noun", "Ælf"}, -- seems sensible
	Gender = "masculine",
	Archaic = true,
	NameTypes = {"person-male"}
})

DefineLanguageWord("Anvil", {
	Language = "english",
	Type = "noun",
	Meanings = {"Anvil"},
	DerivesFrom = {"old-english", "noun", "Anfilte"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 124.
	Gender = "neuter",
	AffixNameTypes = {"separate", "suffix", "singular", "unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Apple", {
	Language = "english",
	Type = "noun",
	Meanings = {"Apple"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-hills" -- example: "Apple Down"
	}
})

DefineLanguageWord("Ard", {
	Language = "english",
	Type = "adjective",
	Meanings = {},
	Archaic = true
})

DefineLanguageWord("Arthur", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person-male"}
})

DefineLanguageWord("Ash", {
	Language = "english",
	Type = "noun",
	Meanings = {"Ash"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- example: "Ashford"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Back", {
	Language = "english",
	Type = "noun",
	Meanings = {"Back"},
	Gender = "neuter",
	AffixNameTypes = {"separate", "suffix", "singular", "genitive", "terrain-hills"} -- example: "Hog's Back"
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
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-hills", -- example: "Barrow Hill"
		"compound", "suffix", "singular", "terrain-mountains" -- example: "Yewbarrow"
	}
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

DefineLanguageWord("Beacon", {
	Language = "english",
	Type = "noun",
	Meanings = {"Beacon"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-hills" -- example: "Beacon Hill"
	}
})

DefineLanguageWord("Bean", {
	Language = "english",
	Type = "noun",
	Meanings = {"Bean"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-hills" -- example: "Bean Hill"
	}
})

DefineLanguageWord("Bear", {
	Language = "english",
	Type = "noun",
	Meanings = {"Bear"},
	DerivesFrom = {"old-english", "noun", "Bera"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Gender = "neuter"
})

DefineLanguageWord("Beard", {
	Language = "english",
	Type = "noun",
	Meanings = {"Beard"},
	DerivesFrom = {"old-english", "noun", "Beard"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
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

DefineLanguageWord("Beech", {
	Language = "english",
	Type = "noun",
	Meanings = {"Beech"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-hills", -- example: "Beech Pollard"
		"separate", "prefix", "singular", "unit-class-lumber-mill" -- seems sensible
	}
})

DefineLanguageWord("Bell", {
	Language = "english",
	Type = "noun",
	Meanings = {"Bell"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "suffix", "singular", "terrain-mountains" -- example: "Ill Bell"
	}
})

DefineLanguageWord("Benjamin", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person-male"}
})

DefineLanguageWord("Berk", {
	Language = "english",
	Type = "noun", -- correct?
	Meanings = {},
	Gender = "neuter",
	Archaic = true,
	AffixNameTypes = {"compound", "prefix", "singular", "province"} -- example: "Berkshire"
})

DefineLanguageWord("Bern", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Archaic = true
})

DefineLanguageWord("Berry", {
	Language = "english",
	Type = "noun",
	Meanings = {"Berry"},
	Gender = "neuter",
	NumberCaseInflections = {
		"plural", "nominative", "Berries",
		"plural", "genitive", "Berries"
	},
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-hills" -- example: "Berry Hill"
	}
})

DefineLanguageWord("Black", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Black"},
	AffixNameTypes = {
		"compound", "prefix", "settlement", -- examples: "Blackburn", "Blackpool" (Source: "Philip's International School Atlas", 2006, p. 64), "Blackwall"
		"separate", "prefix", "terrain-hills", -- example: "Black Hill"
		"separate", "prefix", "terrain-mountains", -- examples: "Black Crag", "Black Fell", "Black Hill", "Black Sails"
		"separate", "prefix", "unit-class-smithy", -- seems sensible
		"separate", "prefix", "unit-class-lumber-mill" -- seems sensible
	}
})

DefineLanguageWord("Blade", {
	Language = "english",
	Type = "noun",
	Meanings = {"Blade"},
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

DefineLanguageWord("Blue", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Blue"},
	DerivesFrom = {"old-english", "adjective", "Blâw"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 147.
	AffixNameTypes = {
		"separate", "prefix", "singular", "unit-class-smithy", -- seems sensible
		"separate", "prefix", "unit-class-lumber-mill" -- seems sensible
	}
})

DefineLanguageWord("Blunt", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Blunt"},
	AffixNameTypes = {
		"separate", "prefix", "terrain-mountains" -- example: "Blunt Top"
	}
})

DefineLanguageWord("Boar", {
	Language = "english",
	Type = "noun",
	Meanings = {"Boar"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "infix", "singular", "terrain-mountains" -- example: "Wild Boar Fell"
	}
})

DefineLanguageWord("Board", {
	Language = "english",
	Type = "noun",
	Meanings = {"Board"},
	DerivesFrom = {"old-english", "noun", "Bord"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, pp. 135-136.
	Gender = "neuter",
	AffixNameTypes = {"separate", "suffix", "singular", "unit-class-lumber-mill"} -- seems sensible
})

DefineLanguageWord("Borough", {
	Language = "english",
	Type = "noun",
	Meanings = {"Borough"},
	DerivesFrom = {"old-english", "noun", "Burg"}, -- presumably, since Donkin gives this word as being cognate of the Gothic "Baurgs" and the Old High German "Burg"; Source: T. C. Donkin, "An Etymological Dictionary of the Romance Languages", 1864, p. 84.
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- example: "Scarborough"
})

DefineLanguageWord("Bow", {
	Language = "english",
	Type = "noun",
	Meanings = {"Bow"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-hills", -- example: "Bow Hill"
		"compound", "prefix", "singular", "terrain-mountains" -- example: "Bowfell"
	}
})

DefineLanguageWord("Brand", {
	Language = "english",
	Type = "noun",
	Meanings = {"Brand"},
	DerivesFrom = {"old-english", "noun", "Brond"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
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
	DerivesFrom = {"old-english", "noun", "Brycg"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 145.
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- example: "Woodbridge"
})

DefineLanguageWord("Brim", {
	Language = "english",
	Type = "noun",
	Meanings = {"Brim"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-mountains" -- example: "Brim Fell"
	}
})

DefineLanguageWord("Broad", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Broad"},
	AffixNameTypes = {
		"separate", "prefix", "terrain-mountains" -- examples: "Broad Crag", "Broad End"
	}
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

DefineLanguageWord("Brook", {
	Language = "english",
	Type = "noun",
	Meanings = {"Brook"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-hills" -- example: "Brook Down"
	}
})

DefineLanguageWord("Brown", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Brown"},
	AffixNameTypes = {
		"separate", "prefix", "terrain-mountains", -- examples: "Brown Crag", "Brown Pike"
		"separate", "prefix", "singular", "unit-class-smithy", -- seems sensible
		"separate", "prefix", "unit-class-lumber-mill" -- seems sensible
	}
})

DefineLanguageWord("Brunt", {
	Language = "english",
	Type = "noun",
	Meanings = {"Brunt"},
	DerivesFrom = {"old-english", "noun", "Bruneþa"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Gender = "neuter"
})

DefineLanguageWord("Buck", {
	Language = "english",
	Type = "noun",
	Meanings = {"Buck"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-mountains" -- example: "Buck Pike"
	}
})

DefineLanguageWord("Burgh", { -- Source: T. C. Donkin, "An Etymological Dictionary of the Romance Languages", 1864, p. 84.
	Language = "english",
	Type = "noun",
	Meanings = {"Burgh"},
	DerivesFrom = {"old-english", "noun", "Burg"}, -- presumably, since Donkin gives this word as being cognate of the Gothic "Baurgs" and the Old High German "Burg"
	Gender = "neuter" -- presumably
})

DefineLanguageWord("Burn", {
	Language = "english",
	Type = "noun",
	Meanings = {"Creek"},
	Gender = "neuter",
	Archaic = true,
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- example: "Blackburn"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Burn", { 
	Language = "english",
	Type = "verb",
	Meanings = {"Burn"},
	DerivesFrom = {"old-english", "verb", "Beornan"} -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
})

DefineLanguageWord("Burning", { 
	Language = "english",
	Type = "adjective",
	Meanings = {"Burning"},
	DerivesFrom = {"old-english", "verb", "Beornan"}, -- presumably, since the verb "Burn" does
	AffixNameTypes = {"separate", "prefix", "unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Bury", {
	Language = "english",
	Type = "noun",
	Meanings = {"Bury"},
	Gender = "neuter",
	Archaic = true,
	AffixNameTypes = {
		"compound", "suffix", "singular", "settlement", -- examples: "Newbury", "Salisbury", "Shrewsbury"; Source: "Philip's International School Atlas", 2006, p. 64.
		"compound", "suffix", "singular", "terrain-hills" -- example: "Woolbury"
	}
})

DefineLanguageWord("Bush", {
	Language = "english",
	Type = "noun",
	Meanings = {"Bush"},
	DerivesFrom = {"middle-english", "noun", "Busch"}, -- presumably
	Gender = "neuter"
})

DefineLanguageWord("Butcher", {
	Language = "english",
	Type = "noun",
	Meanings = {"Butcher"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "singular", "genitive", "terrain-hills" -- example: "Butcher's Cross"
	}
})

DefineLanguageWord("Cairn", {
	Language = "english",
	Type = "noun",
	Meanings = {"Cairn"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-mountains" -- example: "Cairn Hill"
	}
})

DefineLanguageWord("Camp", {
	Language = "english",
	Type = "noun",
	Meanings = {"Camp"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-hills" -- example: "Camp Hill"
	}
})

DefineLanguageWord("Castle", {
	Language = "english",
	Type = "noun",
	Meanings = {"Castle"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-hills" -- example: "Castle Hill"
	}
})

DefineLanguageWord("Chair", {
	Language = "english",
	Type = "noun",
	Meanings = {"Chair"},
	Gender = "neuter",
	AffixNameTypes = {"separate", "suffix", "singular", "unit-class-lumber-mill"} -- seems sensible
})

DefineLanguageWord("Charles", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person-male"}
})

DefineLanguageWord("Chat", {
	Language = "english",
	Type = "noun",
	Meanings = {"Chat"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- example: "Chatham"
})

DefineLanguageWord("Che", {
	Language = "english",
	Type = "noun", -- correct?
	Meanings = {},
	Gender = "neuter",
	Archaic = true,
	AffixNameTypes = {"compound", "prefix", "singular", "province"} -- example: "Cheshire"
})

DefineLanguageWord("Chester", {
	Language = "english",
	Type = "noun", -- correct?
	Meanings = {},
	Gender = "neuter",
	Archaic = true,
	NameTypes = {"settlement"},
	AffixNameTypes = {
		"compound", "prefix", "singular", "settlement", -- example: "Chesterfield"
		"compound", "suffix", "singular", "settlement" -- examples: "Dorchester", "Winchester"
	}
})

DefineLanguageWord("Christopher", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person-male"}
})

DefineLanguageWord("Church", {
	Language = "english",
	Type = "noun",
	Meanings = {"Church"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-hills" -- example: "Church Hill"
	}
})

DefineLanguageWord("Cold", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Cold"},
	AffixNameTypes = {
		"separate", "prefix", "terrain-mountains", -- examples: "Cold Fell", "Cold Pike"
		"separate", "prefix", "unit-class-smithy", -- seems sensible
		"separate", "prefix", "unit-class-lumber-mill" -- seems sensible
	}
})

DefineLanguageWord("Combe", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "neuter",
	Archaic = true,
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- example: "Swanscombe"
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
	DerivesFrom = {"old-english", "noun", "Corn"}, -- presumably
	Gender = "neuter"
})

DefineLanguageWord("Cottage", {
	Language = "english",
	Type = "noun",
	Meanings = {"Cottage"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-hills" -- example: "Cottage Hill"
	}
})

DefineLanguageWord("Cove", {
	Language = "english",
	Type = "noun",
	Meanings = {"Cove"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "infix", "singular", "terrain-mountains" -- example: "Stony Cove Pike"
	}
})

DefineLanguageWord("Crag", {
	Language = "english",
	Type = "noun",
	Meanings = {"Crag"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-mountains", -- example: "Crag Hill"
		"separate", "suffix", "singular", "terrain-mountains", -- examples: "Black Crag", "Broad Crag", "Brown Crag", "Dove Crag", "Eel Crag", "Gray Crag", "Grey Crag", "High Crag", "Ill Crag", "Iron Crag", "Loft Crag", "Long Crag", "Raven Crag", "Thorn Crag", "Water Crag"
		"separate", "suffix", "plural", "terrain-mountains" -- examples: "Scar Crags", "Shelter Crags"
	}
})

DefineLanguageWord("Cross", {
	Language = "english",
	Type = "noun",
	Meanings = {"Cross"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "suffix", "singular", "terrain-hills", -- example: "Butcher's Cross"
		"separate", "prefix", "singular", "terrain-mountains" -- example: "Cross Fell"
	}
})

DefineLanguageWord("Dale", {
	Language = "english",
	Type = "noun",
	Meanings = {"Dale"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-mountains" -- example: "Dale Head"
	}
})

DefineLanguageWord("Dart", {
	Language = "english",
	Type = "noun",
	Meanings = {"Dart"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- examples: "Dartford", "Dartmouth"
})

DefineLanguageWord("David", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person-male"}
})

DefineLanguageWord("Day", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 106.
	Language = "english",
	Type = "noun",
	Meanings = {"Day"},
	DerivesFrom = {"old-english", "noun", "Dæg"},
	Gender = "neuter"
})

DefineLanguageWord("Dead", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Dead"},
	AffixNameTypes = {
		"separate", "prefix", "terrain-mountains" -- example: "Dead Stones"
	}
})

DefineLanguageWord("Ditch", {
	Language = "english",
	Type = "noun",
	Meanings = {"Ditch"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- example: "Redditch"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Don", {
	Language = "english",
	Type = "noun", -- correct?
	Meanings = {},
	Gender = "neuter",
	Archaic = true,
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- examples: "Huntingdon", "Wimbledon"
})

DefineLanguageWord("Donald", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person-male"}
})

DefineLanguageWord("Dor", {
	Language = "english",
	Type = "noun", -- correct?
	Meanings = {},
	Gender = "neuter",
	Archaic = true,
	AffixNameTypes = {
		"compound", "prefix", "singular", "province", -- example: "Dorset"
		"compound", "prefix", "singular", "settlement" -- example: "Dorchester"
	}
})

DefineLanguageWord("Dove", {
	Language = "english",
	Type = "noun",
	Meanings = {"Dove"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-mountains" -- example: "Dove Crag"
	}
})

DefineLanguageWord("Down", {
	Language = "english",
	Type = "noun",
	Meanings = {"Down"}, -- a (usually) treeless upland with sparse soil
	Gender = "neuter",
	AffixNameTypes = {
		"compound", "suffix", "singular", "terrain-hills", -- example: "Hooksdown"
		"separate", "suffix", "singular", "terrain-hills" -- examples: "Apple Down", "Brook Down", "Head Down", "Home Down", "Middle Down", "North Down", "Ribs Down", "Steep Down", "West Down"
	}
})

DefineLanguageWord("Dry", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Dry"},
	DerivesFrom = {"old-english", "adjective", "Þyrre"}, -- presumably
	AffixNameTypes = {
		"separate", "prefix", "terrain-hills" -- example: "Dry Hill"
	}
})

DefineLanguageWord("Dur", {
	Language = "english",
	Type = "noun", -- correct?
	Meanings = {},
	Gender = "neuter",
	Archaic = true
})

DefineLanguageWord("East", {
	Language = "english",
	Type = "noun",
	Meanings = {"East"},
	DerivesFrom = {"old-english", "noun", "Éaste"}, -- presumably? Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 12.
	Gender = "neuter",
	Uncountable = true
})

DefineLanguageWord("East", {
	Language = "english",
	Type = "adjective",
	Meanings = {"East"},
	DerivesFrom = {"old-english", "adjective", "Éasterra"} -- presumably? Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 12.
})

DefineLanguageWord("East", {
	Language = "english",
	Type = "adverb",
	Meanings = {"East"},
	DerivesFrom = {"old-english", "adverb", "Éast"} -- presumably? Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 12.
})

DefineLanguageWord("Edgar", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person-male"}
})

DefineLanguageWord("Edmund", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person-male"}
})

DefineLanguageWord("Edward", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person-male"}
})

DefineLanguageWord("Eel", {
	Language = "english",
	Type = "noun",
	Meanings = {"Eel"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-mountains" -- example: "Eel Crag"
	}
})

DefineLanguageWord("Eight", {
	Language = "english",
	Type = "numeral",
	Number = 8,
	AffixNameTypes = {
		"separate", "prefix", "unit-class-smithy", -- seems sensible
		"separate", "prefix", "unit-class-lumber-mill" -- seems sensible
	}
})

DefineLanguageWord("Eleven", {
	Language = "english",
	Type = "numeral",
	Number = 11,
	AffixNameTypes = {
		"separate", "prefix", "unit-class-smithy", -- seems sensible
		"separate", "prefix", "unit-class-lumber-mill" -- seems sensible
	}
})

DefineLanguageWord("Elf", {
	Language = "english",
	Type = "noun",
	Meanings = {"Elf"},
	DerivesFrom = {"old-english", "noun", "Ælf"}, -- seems sensible
	Gender = "masculine",
	NumberCaseInflections = {
		"plural", "nominative", "Elves",
		"plural", "genitive", "Elves"
	}
})

DefineLanguageWord("Elias", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person-male"}
})

DefineLanguageWord("Elm", {
	Language = "english",
	Type = "noun",
	Meanings = {"Elm"},
	DerivesFrom = {"old-english", "noun", "Elm"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 23.
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "unit-class-lumber-mill" -- seems sensible
	}
})

DefineLanguageWord("End", {
	Language = "english",
	Type = "noun",
	Meanings = {"End"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "suffix", "singular", "terrain-mountains" -- examples: "Broad End", "Great End"
	}
})

DefineLanguageWord("Es", {
	Language = "english",
	Type = "noun", -- correct?
	Meanings = {"East"},
	DerivesFrom = {"old-english", "noun", "Éaste"}, -- presumably, since the English noun "East" is also set to derive from that word? Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 12.
	Gender = "neuter",
	Archaic = true,
	AffixNameTypes = {"compound", "prefix", "singular", "province"} -- example: "Essex"
})

DefineLanguageWord("Fair", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Fair"},
	AffixNameTypes = {
		"compound", "prefix", "terrain-mountains" -- example: "Fairfield"
	}
})

DefineLanguageWord("Farm", {
	Language = "english",
	Type = "noun",
	Meanings = {"Farm"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-hills" -- example: "Farm Hill"
	}
})

DefineLanguageWord("Fell", {
	Language = "english",
	Type = "noun",
	Meanings = {"Fell"}, -- high barren field or moor
	Gender = "neuter",
	AffixNameTypes = {
		"compound", "suffix", "singular", "terrain-mountains", -- example: "Bowfell"
		"separate", "prefix", "singular", "terrain-mountains", -- example: "Fell Head"
		"separate", "suffix", "singular", "terrain-mountains" -- examples: "Black Fell", "Brim Fell", "Cold Fell", "Cross Fell", "Frozen Fell", "Little Fell", "Long Fell", "Place Fell", "Scales Fell", "Wild Boar Fell"
	}
})

DefineLanguageWord("Field", {
	Language = "english",
	Type = "noun",
	Meanings = {"Field"},
	Gender = "neuter",
	AffixNameTypes = {
		"compound", "suffix", "singular", "settlement", -- examples: "Chesterfield", "Mansfield", "Marshfield"
		"compound", "suffix", "singular", "terrain-mountains" -- example: "Fairfield"
	}
})

DefineLanguageWord("Fiend", {
	Language = "english",
	Type = "noun",
	Meanings = {"Fiend"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "singular", "genitive", "terrain-mountains" -- example: "Fiend's Fell"
	}
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

DefineLanguageWord("Five", {
	Language = "english",
	Type = "numeral",
	Number = 5,
	DerivesFrom = {"old-english", "numeral", "Fīf"}, -- presumably
	AffixNameTypes = {
		"separate", "prefix", "unit-class-smithy", -- seems sensible
		"separate", "prefix", "unit-class-lumber-mill" -- seems sensible
	}
})

DefineLanguageWord("Fleet", {
	Language = "english",
	Type = "noun",
	Meanings = {"Fleet"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- example: "Northfleet"
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
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- examples: "Ashford", "Bedford", "Guildford", "Longford", "Oxford" (Source: "Philip's International School Atlas", 2006, p. 64), "Waterford"
})

DefineLanguageWord("Forest", {
	Language = "english",
	Type = "noun",
	Meanings = {"Forest"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-hills" -- example: "Forest Hill"
	}
})

DefineLanguageWord("Forge", {
	Language = "english",
	Type = "noun",
	Meanings = {"Forge"},
	Gender = "neuter",
	AffixNameTypes = {"separate", "suffix", "singular", "unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Fox", {
	Language = "english",
	Type = "noun",
	Meanings = {"Fox"},
	Gender = "neuter",
	NumberCaseInflections = {
		"plural", "nominative", "Foxes",
		"plural", "genitive", "Foxes"
	},
	AffixNameTypes = {
		"compound", "prefix", "singular", "terrain-hills" -- example: "Foxridge"
	}
})

DefineLanguageWord("Francis", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person-male"}
})

DefineLanguageWord("Frederick", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person-male"}
})

DefineLanguageWord("Frey", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"old-english", "noun", "Friþu"}, -- presumably
	Archaic = true
})

DefineLanguageWord("Friar", {
	Language = "english",
	Type = "noun",
	Meanings = {"Friar"},
	Gender = "masculine",
	AffixNameTypes = {
		"separate", "suffix", "singular", "terrain-mountains" -- example: "Grey Friar"
	}
})

DefineLanguageWord("Frith", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 128.
	Language = "english",
	Type = "noun",
	Meanings = {"Enclosure"}, -- source gives the German "Einfriedigung" as the meaning
	DerivesFrom = {"old-english", "noun", "Friþu"},
	Gender = "neuter",
	Archaic = true
})

DefineLanguageWord("Frozen", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Frozen"},
	AffixNameTypes = {
		"separate", "prefix", "terrain-mountains" -- example: "Frozen Fell"
	}
})

DefineLanguageWord("Furnace", {
	Language = "english",
	Type = "noun",
	Meanings = {"Furnace"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-hills", -- example: "Furnace Hill"
		"separate", "suffix", "singular", "unit-class-smithy" -- seems sensible
	}
})

DefineLanguageWord("Gable", {
	Language = "english",
	Type = "noun",
	Meanings = {"Gable"}, -- triangular part of the outside wall of a building, formed by two sloping down roof sections
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "suffix", "singular", "terrain-mountains" -- examples: "Great Gable", "Green Gable"
	}
})

DefineLanguageWord("Gate", {
	Language = "english",
	Type = "noun",
	Meanings = {"Gate"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "prefix", "singular", "genitive", "settlement"} -- example: "Gateshead"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Gauntlet", {
	Language = "english",
	Type = "noun",
	Meanings = {"Gauntlet"},
	Gender = "neuter",
	AffixNameTypes = {"separate", "suffix", "singular", "unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Gavel", {
	Language = "english",
	Type = "noun",
	Meanings = {"Gavel"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-mountains" -- example: "Gavel Pike"
	}
})

DefineLanguageWord("George", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person-male"}
})

DefineLanguageWord("Goat", {
	Language = "english",
	Type = "noun",
	Meanings = {"Goat"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-mountains" -- example: "Goat Scar"
	}
})

DefineLanguageWord("God", {
	Language = "english",
	Type = "noun",
	Meanings = {"God"},
	DerivesFrom = {"old-english", "noun", "God"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 76.
	Gender = "masculine"
})

DefineLanguageWord("Gold", {
	Language = "english",
	Type = "noun",
	Meanings = {"Gold"},
	DerivesFrom = {"old-english", "noun", "Gold"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 73.
	Gender = "neuter",
	Uncountable = true
})

DefineLanguageWord("Golden", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Golden"},
	DerivesFrom = {"old-english", "noun", "Gold"}, -- seems sensible, since the corresponding noun derives from that word
	AffixNameTypes = {
		"separate", "prefix", "terrain-hills", -- example: "Golden Hill"
		"separate", "prefix", "unit-class-smithy" -- seems sensible
	}
})

DefineLanguageWord("Gray", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Gray"},
	DerivesFrom = {"old-english", "adjective", "Græ̂g"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 79.
	AffixNameTypes = {
		"separate", "prefix", "terrain-mountains", -- examples: "Gray Crag", "Grey Crag", "Grey Friar"
		"separate", "prefix", "singular", "unit-class-smithy", -- seems sensible
		"separate", "prefix", "unit-class-lumber-mill" -- seems sensible
	}
})

DefineLanguageWord("Great", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Great"},
	AffixNameTypes = {
		"separate", "prefix", "terrain-mountains" -- examples: "Great End", "Great Gable", "Great Stony Hill"
	}
})

DefineLanguageWord("Green", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Green"},
	DerivesFrom = {"old-english", "adjective", "Grêne"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 80.
	AffixNameTypes = {
		"compound", "prefix", "settlement", -- example: "Greenwich"
		"separate", "prefix", "terrain-hills", -- example: "Green Hill"
		"separate", "prefix", "terrain-mountains", -- examples: "Green Gable", "Green Hill", "Green Side"
		"separate", "prefix", "unit-class-smithy", -- seems sensible
		"separate", "prefix", "unit-class-lumber-mill" -- seems sensible
	}
})

DefineLanguageWord("Guard", {
	Language = "english",
	Type = "noun",
	Meanings = {"Guard"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- example: "Fishguard"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Guild", {
	Language = "english",
	Type = "noun",
	Meanings = {"Guild"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- example: "Guildford"
})

DefineLanguageWord("Half", {
	Language = "english",
	Type = "noun",
	Meanings = {"Half"},
	DerivesFrom = {"old-english", "noun", "Healf"}, -- presumably; could also have come from the corresponding adjective
	Gender = "neuter"
})

DefineLanguageWord("Half", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Half"},
	DerivesFrom = {"old-english", "adjective", "Healf"} -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 51.
})

DefineLanguageWord("Ham", {
	Language = "english",
	Type = "noun", -- correct?
	Meanings = {},
	DerivesFrom = {"old-english", "noun", "Hâm"}, -- presumably
	Gender = "neuter",
	Archaic = true,
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- examples: "Chatham", "Oldham"
})

DefineLanguageWord("Hammer", {
	Language = "english",
	Type = "noun",
	Meanings = {"Hammer"},
	DerivesFrom = {"old-english", "noun", "Hamor"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 46.
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "suffix", "singular", "unit-class-smithy", -- seems sensible
		"separate", "suffix", "singular", "unit-class-lumber-mill" -- seems sensible
	}
})

DefineLanguageWord("Hamp", {
	Language = "english",
	Type = "noun", -- correct?
	Meanings = {},
	Gender = "neuter",
	Archaic = true,
	AffixNameTypes = {"compound", "prefix", "singular", "province"} -- example: "Hampshire"
})

DefineLanguageWord("Hard", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Hard"},
	DerivesFrom = {"old-english", "adverb", "Heard"} -- presumably? though I imagine Old English also had a cognate adjective, this is the closest we have for now
})

DefineLanguageWord("Hard", {
	Language = "english",
	Type = "adverb",
	Meanings = {"Hard"},
	DerivesFrom = {"old-english", "adverb", "Heard"} -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 48.
})

DefineLanguageWord("Hards", {
	Language = "english",
	Type = "noun",
	Meanings = {"Hards", "Coarse Refuse of Flax"},
	DerivesFrom = {"old-english", "noun", "Heorde"}, -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Uncountable = true
})

DefineLanguageWord("Harold", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person-male"}
})

DefineLanguageWord("Harrison", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person-male"}
})

DefineLanguageWord("Harrow", {
	Language = "english",
	Type = "noun",
	Meanings = {"Harrow"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-hills" -- example: "Harrow Hill"
	}
})

DefineLanguageWord("Harry", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person-male"}
})

DefineLanguageWord("Hauberk", {
	Language = "english",
	Type = "noun",
	Meanings = {"Hauberk"},
	DerivesFrom = {"old-french", "noun", "Halberc"}, -- Merriam-Webster gives "Hauberc" instead; Source: http://www.merriam-webster.com/dictionary/hauberk
	Gender = "neuter",
	AffixNameTypes = {"separate", "suffix", "singular", "unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Haven", {
	Language = "english",
	Type = "noun",
	Meanings = {"Haven"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- examples: "Stonehaven", "Whitehaven" (Source: "Philip's International School Atlas", 2006, p. 64)
})

DefineLanguageWord("Head", {
	Language = "english",
	Type = "noun",
	Meanings = {"Head"},
	Gender = "neuter",
	AffixNameTypes = {
		"compound", "suffix", "singular", "settlement", -- examples: "Gateshead" (Source: "Philip's International School Atlas", 2006, p. 64), "Holyhead"
		"separate", "prefix", "singular", "terrain-hills", -- example: "Head Down"
		"separate", "suffix", "singular", "terrain-mountains" -- examples: "Dale Head", "Fell Head", "Tongue Head"
	}
})

DefineLanguageWord("Hearth", {
	Language = "english",
	Type = "noun",
	Meanings = {"Hearth"},
	DerivesFrom = {"old-english", "noun", "Heorþ"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 46.
	Gender = "neuter"
})

DefineLanguageWord("Helm", {
	Language = "english",
	Type = "noun",
	Meanings = {"Helm"},
	DerivesFrom = {"old-english", "noun", "Helm"}, -- presumably
	Gender = "neuter",
	AffixNameTypes = {"separate", "suffix", "singular", "unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Helmet", {
	Language = "english",
	Type = "noun",
	Meanings = {"Helmet"},
	DerivesFrom = {"old-english", "noun", "Helm"}, -- presumably
	Gender = "neuter",
	AffixNameTypes = {"separate", "suffix", "singular", "unit-class-smithy"} -- seems sensible
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
	NameTypes = {"person-male"}
})

DefineLanguageWord("High", {
	Language = "english",
	Type = "adjective",
	Meanings = {"High"},
	DerivesFrom = {"old-english", "adjective", "Héah"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 54.
	AffixNameTypes = {
		"separate", "prefix", "terrain-mountains" -- examples: "High Crag", "High Pike", "High Seat", "High Spy", "High Street"
	}
})

DefineLanguageWord("Hill", {
	Language = "english",
	Type = "noun",
	Meanings = {"Hill"},
	Gender = "neuter",
	AffixNameTypes = {
		"compound", "suffix", "singular", "settlement", -- example: "Wormshill"
		"compound", "suffix", "plural", "terrain-hills", -- example: "Sandhills"
		"separate", "suffix", "singular", "terrain-hills", -- examples: "Barrow Hill", "Beacon Hill", "Bean Hill", "Berry Hill", "Black Hill", "Bow Hill", "Camp Hill", "Castle Hill", "Church Hill", "Cottage Hill", "Dry Hill", "Farm Hill", "Forest Hill", "Furnace Hill", "Golden Hill", "Green Hill", "Harrow Hill", "Holly Hill", "Horseshoe Hill", "Lodge Hill", "Mount Hill", "Northward Hill", "Park Hill", "Red Hill", "River Hill", "Shooters Hill", "Shrubs Hill", "Silver Hill", "Stocks Hill", "Tower Hill", "Toy's Hill", "Violet Hill", "West Hill", "White Hill", "Windmill Hill"
		"separate", "suffix", "singular", "terrain-mountains" -- examples: "Black Hill", "Cairn Hill", "Crag Hill", "Great Stony Hill", "Green Hill", "Round Hill", "Sand Hill", "White Mossy Hill"
	}
})

DefineLanguageWord("Hoard", {
	Language = "english",
	Type = "noun",
	Meanings = {"Hoard"},
	DerivesFrom = {"old-english", "noun", "Hord"}, -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Gender = "neuter"
})

DefineLanguageWord("Hog", {
	Language = "english",
	Type = "noun",
	Meanings = {"Hog"},
	Gender = "neuter",
	AffixNameTypes = {"separate", "prefix", "singular", "genitive", "terrain-hills"} -- example: "Hog's Back"
})

DefineLanguageWord("Holly", {
	Language = "english",
	Type = "noun",
	Meanings = {"Holly"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-hills", -- example: "Holly Hill"
		"separate", "prefix", "unit-class-lumber-mill" -- seems sensible
	}
})

DefineLanguageWord("Holy", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Holy"},
	DerivesFrom = {"old-english", "adjective", "Hâlig"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 42.
	AffixNameTypes = {
		"compound", "prefix", "settlement", -- example: "Holyhead"
		"separate", "prefix", "unit-class-smithy", -- seems sensible
		"separate", "prefix", "unit-class-lumber-mill" -- seems sensible
	}
})

DefineLanguageWord("Home", {
	Language = "english",
	Type = "noun",
	Meanings = {"Home"},
	Gender = "neuter",
	DerivesFrom = {"old-english", "noun", "Hâm"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 52.
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-hills" -- example: "Home Down"
	}
})

DefineLanguageWord("Hook", {
	Language = "english",
	Type = "noun",
	Meanings = {"Hook"},
	Gender = "neuter",
	AffixNameTypes = {
		"compound", "prefix", "singular", "genitive", "terrain-hills" -- example: "Hooksdown"
	}
})

DefineLanguageWord("Horn", {
	Language = "english",
	Type = "noun",
	Meanings = {"Horn"},
	DerivesFrom = {"old-english", "noun", "Horn"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 47.
	Gender = "neuter"
})

DefineLanguageWord("Horseshoe", {
	Language = "english",
	Type = "noun",
	Meanings = {"Horseshoe"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-hills" -- example: "Horseshoe Hill"
	}
})

DefineLanguageWord("House", {
	Language = "english",
	Type = "noun",
	Meanings = {"House"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 336.
})

DefineLanguageWord("Hull", {
	Language = "english",
	Type = "noun",
	Meanings = {"Hull"},
	Gender = "neuter"
})

DefineLanguageWord("Hunger", {
	Language = "english",
	Type = "noun",
	Meanings = {"Hunger"},
	DerivesFrom = {"old-english", "noun", "Hungor"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 44.
	Gender = "neuter"
})

DefineLanguageWord("Hunt", {
	Language = "english",
	Type = "verb",
	Meanings = {"Hunt"},
	Participles = {
		"present", "Hunting",
		"past", "Hunted"
	}
})

DefineLanguageWord("Hunting", {
	Language = "english",
	Type = "noun",
	Meanings = {"Hunting"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- example: "Huntingdon"
})

DefineLanguageWord("Hyrst", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 336.
})

DefineLanguageWord("Ill", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Ill"},
	AffixNameTypes = {
		"separate", "prefix", "terrain-mountains" -- example: "Ill Bell", "Ill Crag"
	}
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
	AffixNameTypes = {
		"separate", "prefix", "terrain-mountains", -- example: "Iron Crag"
		"separate", "prefix", "unit-class-smithy" -- seems sensible
	}
})

DefineLanguageWord("Jack", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person-male"}
})

DefineLanguageWord("James", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person-male"}
})

DefineLanguageWord("John", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person-male"}
})

DefineLanguageWord("Joseph", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person-male"}
})

DefineLanguageWord("Kenneth", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person-male"}
})

DefineLanguageWord("King", {
	Language = "english",
	Type = "noun",
	Meanings = {"King"},
	DerivesFrom = {"old-english", "noun", "Cyning"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 27.
	Gender = "masculine",
	AffixNameTypes = {"compound", "prefix", "singular", "genitive", "settlement"} -- example: "Kingston"
})

DefineLanguageWord("Knight", {
	Language = "english",
	Type = "noun",
	Meanings = {"Knight"},
	DerivesFrom = {"old-english", "noun", "Cniht"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 27.
	Gender = "masculine"
})

DefineLanguageWord("Lanca", {
	Language = "english",
	Type = "noun", -- correct?
	Meanings = {},
	Gender = "neuter",
	Archaic = true,
	AffixNameTypes = {"compound", "prefix", "singular", "province"} -- example: "Lancashire"
})

DefineLanguageWord("Land", {
	Language = "english",
	Type = "noun",
	Meanings = {"Land"},
	DerivesFrom = {"old-english", "noun", "Land"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 184.
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
	AffixNameTypes = {"separate", "prefix", "unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Lewis", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person-male"}
})

DefineLanguageWord("Little", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Little"},
	AffixNameTypes = {
		"separate", "prefix", "terrain-mountains" -- examples: "Little Fell", "Little Stand"
	}
})

DefineLanguageWord("Liver", {
	Language = "english",
	Type = "noun",
	Meanings = {"Liver"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- example: "Liverpool"
})

DefineLanguageWord("Lodge", {
	Language = "english",
	Type = "noun",
	Meanings = {"Lodge"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-hills" -- example: "Lodge Hill"
	}
})

DefineLanguageWord("Loft", {
	Language = "english",
	Type = "noun",
	Meanings = {"Loft"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-mountains" -- example: "Loft Crag"
	}
})

DefineLanguageWord("Long", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Long"},
	DerivesFrom = {"old-english", "adjective", "Long"}, -- presumably
	AffixNameTypes = {
		"compound", "prefix", "settlement", -- example: "Longford"
		"compound", "prefix", "terrain-hills", -- example: "Longmoor"
		"separate", "prefix", "terrain-mountains" -- examples: "Long Crag", "Long Fell", "Long Side"
	}
})

DefineLanguageWord("Lovely", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Lovely"},
	AffixNameTypes = {
		"separate", "prefix", "terrain-mountains" -- example: "Lovely Seat"
	}
})

DefineLanguageWord("Low", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Low"},
	AffixNameTypes = {
		"separate", "prefix", "terrain-mountains" -- example: "Low White Stones"
	}
})

DefineLanguageWord("Magic", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Magic"},
	AffixNameTypes = {
		"separate", "prefix", "unit-class-smithy",  -- seems sensible
		"separate", "prefix", "unit-class-lumber-mill" -- seems sensible
	}
})

DefineLanguageWord("Maid", {
	Language = "english",
	Type = "noun",
	Meanings = {"Maid"},
	Gender = "feminine",
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- example: "Maidstone"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Maiden", {
	Language = "english",
	Type = "noun",
	Meanings = {"Maiden"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "suffix", "singular", "terrain-mountains" -- example: "White Maiden"
	}
})

DefineLanguageWord("Mail", {
	Language = "english",
	Type = "noun",
	Meanings = {"Mail"},
	Gender = "neuter",
	AffixNameTypes = {"separate", "suffix", "singular", "unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Malcolm", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person-male"}
})

DefineLanguageWord("Man", {
	Language = "english",
	Type = "noun",
	Meanings = {"Man"},
	Gender = "masculine",
	AffixNameTypes = {"compound", "prefix", "singular", "genitive", "settlement"} -- example: "Mansfield"
})

DefineLanguageWord("March", {
	Language = "english",
	Type = "noun",
	Meanings = {"March"},
	DerivesFrom = {"old-english", "noun", {"Border", "End", "District"}, "Mearc"}, -- presumably
	Gender = "neuter"
})

DefineLanguageWord("Mark", {
	Language = "english",
	Type = "noun",
	Meanings = {"Mark"},
	DerivesFrom = {"old-english", "noun", {"Mark", "Sign"}, "Mearc"}, -- presumably
	Gender = "neuter",
	NameTypes = {"person-male"}
})

DefineLanguageWord("Mark", {
	Language = "english",
	Type = "noun",
	Meanings = {"Mark"}, -- Currency unit used by i.e. Germany
	DerivesFrom = {"old-english", "noun", {"Half Silver Pound"}, "Mearc"}, -- presumably
	Gender = "neuter"
})

DefineLanguageWord("Marsh", {
	Language = "english",
	Type = "noun",
	Meanings = {"Marsh"},
	Gender = "neuter",
	DerivesFrom = {"old-english", "noun", "Merisc"}, -- Source: http://www.cnrtl.fr/definition/marais
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- example: "Marshfield"
})

DefineLanguageWord("Matthew", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person-male"}
})

DefineLanguageWord("Maw", {
	Language = "english",
	Type = "noun",
	Meanings = {"Maw"},
	DerivesFrom = {"old-english", "noun", "Maga"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 156.
	Gender = "neuter"
})

DefineLanguageWord("Michael", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person-male"}
})

DefineLanguageWord("Middle", {
	Language = "english",
	Type = "noun",
	Meanings = {"Middle"},
	Gender = "neuter",
	AffixNameTypes = {
		"compound", "prefix", "singular", "province", -- example: "Middlesex"
		"separate", "prefix", "terrain-hills", -- example: "Middle Down"
	}
})

DefineLanguageWord("Mighty", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Mighty"},
	AffixNameTypes = {
		"separate", "prefix", "unit-class-smithy", -- seems sensible
		"separate", "prefix", "unit-class-lumber-mill" -- seems sensible
	}
})

DefineLanguageWord("Moor", {
	Language = "english",
	Type = "noun",
	Meanings = {"Moor"},
	Gender = "neuter",
	AffixNameTypes = {
		"compound", "suffix", "singular", "terrain-hills" -- example: "Longmoor"
	}
})

DefineLanguageWord("Mossy", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Mossy"},
	AffixNameTypes = {
		"separate", "infix", "terrain-mountains", -- example: "White Mossy Hill"
		"separate", "prefix", "unit-class-smithy", -- seems sensible
		"separate", "prefix", "unit-class-lumber-mill" -- seems sensible
	}
})

DefineLanguageWord("Mount", {
	Language = "english",
	Type = "noun",
	Meanings = {"Mount"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-hills" -- example: "Mount Hill"
	}
})

DefineLanguageWord("Mouth", {
	Language = "english",
	Type = "noun",
	Meanings = {"Mouth"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- examples: "Plymouth", "Portsmouth"
})

DefineLanguageWord("Nathan", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person-male"}
})

DefineLanguageWord("Nethermost", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Nethermost"}, -- lowest
	AffixNameTypes = {
		"separate", "prefix", "terrain-mountains" -- example: "Nethermost Pike"
	}
})

DefineLanguageWord("New", {
	Language = "english",
	Type = "adjective",
	Meanings = {"New"},
	DerivesFrom = {"old-english", "adjective", "Nîwe"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 153.
	AffixNameTypes = {
		"compound", "prefix", "settlement", -- examples: "Newbury", "Newport", "Newquay"; Source: "Philip's International School Atlas", 2006, p. 64.
		"separate", "prefix", "unit-class-smithy", -- seems sensible
		"separate", "prefix", "unit-class-lumber-mill" -- seems sensible
	}
})

DefineLanguageWord("Nine", {
	Language = "english",
	Type = "numeral",
	Number = 9,
	AffixNameTypes = {
		"separate", "prefix", "unit-class-smithy", -- seems sensible
		"separate", "prefix", "unit-class-lumber-mill" -- seems sensible
	}
})

DefineLanguageWord("Nor", {
	Language = "english",
	Type = "noun",
	Meanings = {"North"},
	Gender = "neuter",
	DerivesFrom = {"old-english", "adverb", "Norþ"}, -- presumably, since the English word "North" also comes from that Old English word
	Archaic = true,
	AffixNameTypes = {
		"compound", "prefix", "singular", "settlement", -- example: "Norwich"
		"compound", "prefix", "singular", "province" -- example: "Norfolk"
	}
})

DefineLanguageWord("North", {
	Language = "english",
	Type = "noun",
	Meanings = {"North"},
	DerivesFrom = {"old-english", "adverb", "Norþ"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 152.
	Gender = "neuter",
	Uncountable = true,
	AffixNameTypes = {
		"compound", "prefix", "singular", "settlement", -- example: "Northfleet"
		"separate", "prefix", "singular", "terrain-hills" -- example: "North Down"
	}
})

DefineLanguageWord("North", {
	Language = "english",
	Type = "adjective",
	Meanings = {"North"},
	DerivesFrom = {"old-english", "adverb", "Norþ"} -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 152.
})

DefineLanguageWord("North", {
	Language = "english",
	Type = "adverb",
	Meanings = {"North"},
	DerivesFrom = {"old-english", "adverb", "Norþ"} -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 152.
})

DefineLanguageWord("Northward", {
	Language = "english",
	Type = "adverb",
	Meanings = {"Northward"},
	AffixNameTypes = {
		"separate", "prefix", "terrain-hills" -- example: "Northward Hill"
	}
})

DefineLanguageWord("Nut", {
	Language = "english",
	Type = "noun",
	Meanings = {"Nut"},
	DerivesFrom = {"old-english", "noun", "Hnutu"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 58.
	Gender = "neuter"
})

DefineLanguageWord("Oaken", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Oaken"},
	AffixNameTypes = {
		"separate", "prefix", "unit-class-lumber-mill" -- seems sensible
	}
})

DefineLanguageWord("Old", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Old"},
	DerivesFrom = {"old-english", "adjective", "Eald"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 19.
	ComparisonDegreeCaseInflections = {
		"comparative", "Older",
		"superlative", "Oldest"
	},
	AffixNameTypes = {
		"compound", "prefix", "settlement", -- example: "Oldham"
		"separate", "prefix", "unit-class-smithy", -- seems sensible
		"separate", "prefix", "unit-class-lumber-mill" -- seems sensible
	}
})

DefineLanguageWord("Oliver", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person-male"}
})

DefineLanguageWord("Orange", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Orange"},
	AffixNameTypes = {
		"separate", "prefix", "unit-class-smithy", -- seems sensible
		"separate", "prefix", "unit-class-lumber-mill" -- seems sensible
	}
})

DefineLanguageWord("Ox", {
	Language = "english",
	Type = "noun",
	Meanings = {"Ox"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- example: "Oxford"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Park", {
	Language = "english",
	Type = "noun",
	Meanings = {"Park"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-hills" -- example: "Park Hill"
	}
})

DefineLanguageWord("Pen", {
	Language = "english",
	Type = "noun",
	Meanings = {"Pen"},
	Gender = "neuter",
	NameTypes = {"terrain-mountains"}
})

DefineLanguageWord("Peter", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person-male"}
})

DefineLanguageWord("Philip", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person-male"}
})

DefineLanguageWord("Pike", {
	Language = "english",
	Type = "noun",
	Meanings = {"Pike"}, -- mountain or hill with a peaked summit
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "suffix", "singular", "terrain-mountains", -- examples: "Buck Pike", "Brown Pike", "Cold Pike", "Gavel Pike", "High Pike", "Nethermost Pike", "Red Pike", "Stony Cove Pike", "White Pike"
		"separate", "suffix", "plural", "terrain-mountains" -- example: "Three Pikes"
	}
})

DefineLanguageWord("Pillar", {
	Language = "english",
	Type = "noun",
	Meanings = {"Pillar"},
	Gender = "neuter",
	NameTypes = {"terrain-mountains"},
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-mountains" -- example: "Pillar Rock"
	}
})

DefineLanguageWord("Place", {
	Language = "english",
	Type = "noun",
	Meanings = {"Place"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-mountains" -- example: "Place Fell"
	}
})

DefineLanguageWord("Plank", {
	Language = "english",
	Type = "noun",
	Meanings = {"Plank"},
	Gender = "neuter",
	AffixNameTypes = {"separate", "suffix", "singular", "unit-class-lumber-mill"} -- seems sensible
})

DefineLanguageWord("Ply", {
	Language = "english",
	Type = "noun",
	Meanings = {},
--	Gender = "?",
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- example: "Plymouth"
})

DefineLanguageWord("Pollard", {
	Language = "english",
	Type = "noun",
	Meanings = {"Pollard"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "suffix", "singular", "terrain-hills" -- example: "Beech Pollard"
	}
})

DefineLanguageWord("Pool", {
	Language = "english",
	Type = "noun",
	Meanings = {"Pool"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- examples: "Blackpool", "Liverpool"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Port", {
	Language = "english",
	Type = "noun",
	Meanings = {"Port"},
	Gender = "neuter",
	AffixNameTypes = {
		"compound", "prefix", "singular", "genitive", "settlement", -- example: "Portsmouth"
		"compound", "prefix", "singular", "province", -- example: "Portland" (duchy)
		"compound", "suffix", "singular", "settlement" -- examples: "Newport", "Stockport" (Source: "Philip's International School Atlas", 2006, p. 64), "Westport"
	}
})

DefineLanguageWord("Purple", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Purple"},
	AffixNameTypes = {
		"separate", "prefix", "unit-class-smithy", -- seems sensible
		"separate", "prefix", "unit-class-lumber-mill" -- seems sensible
	}
})

DefineLanguageWord("Quay", {
	Language = "english",
	Type = "noun",
	Meanings = {"Quay"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- example: "Newquay"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Raven", {
	Language = "english",
	Type = "noun",
	Meanings = {"Raven"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-mountains" -- example: "Raven Crag"
	}
})

DefineLanguageWord("Read", {
	Language = "english",
	Type = "verb",
	Meanings = {"Read"},
	Participles = {
		"present", "Reading"
	}
})

DefineLanguageWord("Reading", {
	Language = "english",
	Type = "noun",
	Meanings = {"Reading"},
	Gender = "neuter",
	NameTypes = {"settlement"}
})

DefineLanguageWord("Red", {
	Language = "english",
	Type = "noun",
	Meanings = {"Counsel", "Advice", "Account", "Story"},
	DerivesFrom = {"old-english", "noun", "Ræ̂d"}, -- presumably
	Gender = "neuter",
	Archaic = true
})

DefineLanguageWord("Red", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Red"},
	DerivesFrom = {"old-english", "adjective", "Rēad"}, -- presumably
	AffixNameTypes = {
		"compound", "prefix", "singular", "settlement", -- example: "Redditch"; Source: "Philip's International School Atlas", 2006, p. 64.
		"separate", "prefix", "terrain-hills", -- example: "Red Hill"
		"separate", "prefix", "terrain-mountains", -- examples: "Red Crag", "Red Pike", "Red Screes"
		"separate", "prefix", "unit-class-smithy", -- seems sensible
		"separate", "prefix", "unit-class-lumber-mill" -- seems sensible
	}
})

DefineLanguageWord("Rib", {
	Language = "english",
	Type = "noun",
	Meanings = {"Rib"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "plural", "terrain-hills" -- example: "Ribs Down"
	}
})

DefineLanguageWord("Rich", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Rich"},
	DerivesFrom = {"old-english", "adjective", "Rîce"} -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 174.
})

DefineLanguageWord("Ridge", {
	Language = "english",
	Type = "noun",
	Meanings = {"Ridge"},
	Gender = "neuter",
	AffixNameTypes = {
		"compound", "suffix", "singular", "terrain-hills", -- example: "Foxridge"
		"separate", "suffix", "singular", "terrain-hills" -- example: "Windy Ridge"
	}
})

DefineLanguageWord("River", {
	Language = "english",
	Type = "noun",
	Meanings = {"River"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-hills" -- example: "River Hill"
	}
})

DefineLanguageWord("Robert", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person-male"}
})

DefineLanguageWord("Rock", {
	Language = "english",
	Type = "noun",
	Meanings = {"Rock"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "suffix", "singular", "terrain-mountains" -- example: "Pillar Rock"
	}
})

DefineLanguageWord("Round", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Round"},
	AffixNameTypes = {
		"separate", "prefix", "terrain-mountains" -- example: "Round Hill"
	}
})

DefineLanguageWord("Rusty", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Rusty"},
	AffixNameTypes = {"separate", "prefix", "singular", "unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Sail", {
	Language = "english",
	Type = "noun",
	Meanings = {"Sail"},
	Gender = "neuter",
	NameTypes = {"terrain-mountains"},
	AffixNameTypes = {
		"separate", "suffix", "plural", "terrain-mountains" -- example: "Black Sails"
	}
})

DefineLanguageWord("Salis", { -- used in placenames, but not in actual speech
	Language = "english",
	Type = "noun", -- correct?
	Meanings = {"Salt"}, -- presumably
	Gender = "neuter",
	Archaic = true,
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- example: "Salisbury"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Salt", {
	Language = "english",
	Type = "noun",
	Meanings = {"Salt"},
	Gender = "neuter"
})

DefineLanguageWord("Sand", {
	Language = "english",
	Type = "noun",
	Meanings = {"Sand"},
	Gender = "neuter",
	Uncountable = true,
	AffixNameTypes = {
		"compound", "prefix", "singular", "terrain-hills", -- example: "Sandhills"
		"separate", "prefix", "singular", "terrain-mountains" -- example: "Sand Hill"
	}
})

DefineLanguageWord("Sandal", {
	Language = "english",
	Type = "noun",
	Meanings = {"Sandal"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "suffix", "singular", "terrain-mountains" -- example: "Seat Sandal"
	}
})

DefineLanguageWord("Saw", {
	Language = "english",
	Type = "noun",
	Meanings = {"Saw"},
	DerivesFrom = {"old-english", "noun", "Sagu"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 213.
	Gender = "neuter",
	AffixNameTypes = {"separate", "suffix", "singular", "unit-class-lumber-mill"} -- seems sensible
})

DefineLanguageWord("Scale", {
	Language = "english",
	Type = "noun",
	Meanings = {"Scale"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "plural", "terrain-mountains" -- example: "Scales Fell"
	}
})

DefineLanguageWord("Scar", {
	Language = "english",
	Type = "noun",
	Meanings = {"Scar"},
	Gender = "neuter",
	AffixNameTypes = {
		"compound", "prefix", "singular", "settlement", -- example: "Scarborough"
		"separate", "prefix", "singular", "terrain-mountains", -- example: "Scar Crags"
		"separate", "suffix", "singular", "terrain-mountains" -- example: "Goat Scar"
	}
})

DefineLanguageWord("Scree", {
	Language = "english",
	Type = "noun",
	Meanings = {"Scree"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "suffix", "plural", "terrain-mountains" -- example: "Red Screes"
	}
})

DefineLanguageWord("Sea", {
	Language = "english",
	Type = "noun",
	Meanings = {"Sea"},
	DerivesFrom = {"old-english", "noun", "Sæ̂"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 221.
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- example: "Swansea"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Sebastian", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person-male"}
})

DefineLanguageWord("Seat", {
	Language = "english",
	Type = "noun",
	Meanings = {"Seat"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-mountains", -- example: "Seat Sandal"
		"separate", "suffix", "singular", "terrain-mountains" -- examples: "High Seat", "Lovely Seat"
	}
})

DefineLanguageWord("Set", {
	Language = "english",
	Type = "noun", -- correct?
	Meanings = {},
	Gender = "neuter",
	Archaic = true,
	AffixNameTypes = {"compound", "suffix", "singular", "province"} -- examples: "Dorset", "Somerset"
})

DefineLanguageWord("Seven", {
	Language = "english",
	Type = "numeral",
	Number = 7,
	AffixNameTypes = {
		"separate", "prefix", "unit-class-smithy", -- seems sensible
		"separate", "prefix", "unit-class-lumber-mill" -- seems sensible
	}
})

DefineLanguageWord("Sex", {
	Language = "english",
	Type = "noun",
	Meanings = {"Saxon"},
	Gender = "neuter",
	Archaic = true,
	NumberCaseInflections = {
		"plural", "nominative", "Sex",
		"plural", "genitive", "Sex"
	},
	AffixNameTypes = {"compound", "suffix", "plural", "province"} -- examples: "Essex", "Middlesex", "Sussex"
})

DefineLanguageWord("Shelter", {
	Language = "english",
	Type = "noun",
	Meanings = {"Shelter"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-mountains" -- example: "Shelter Crags"
	}
})

DefineLanguageWord("Shield", {
	Language = "english",
	Type = "noun",
	Meanings = {"Shield"},
	DerivesFrom = {"old-english", "noun", "Scield"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 229.
	Gender = "neuter",
	AffixNameTypes = {"separate", "suffix", "singular", "unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Shining", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Shining"},
	AffixNameTypes = {"separate", "prefix", "singular", "unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Shire", {
	Language = "english",
	Type = "noun",
	Meanings = {"Shire"},
	DerivesFrom = {"old-english", "noun", "Scîr"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 233.
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "province"} -- examples: "Berkshire", "Cheshire", "Hampshire", "Lancashire", "Shropshire", "Wiltshire"
})

DefineLanguageWord("Shooter", {
	Language = "english",
	Type = "noun",
	Meanings = {"Shooter"},
	Gender = "masculine", -- also feminine
	AffixNameTypes = {
		"separate", "prefix", "plural", "terrain-hills" -- example: "Shooters Hill"
	}
})

DefineLanguageWord("Shrew", {
	Language = "english",
	Type = "noun",
	Meanings = {"Shrew"},
	Gender = "neuter",
	AffixNameTypes = {
		"compound", "prefix", "singular", "genitive", "settlement" -- example: "Shrewsbury"; Source: "Philip's International School Atlas", 2006, p. 64.
	}
})

DefineLanguageWord("Shrop", {
	Language = "english",
	Type = "noun", -- correct?
	Meanings = {},
	Gender = "neuter",
	Archaic = true,
	AffixNameTypes = {"compound", "prefix", "singular", "province"} -- example: "Shropshire"
})

DefineLanguageWord("Shrub", {
	Language = "english",
	Type = "noun",
	Meanings = {"Shrub"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "plural", "terrain-hills" -- example: "Shrubs Hill"
	}
})

DefineLanguageWord("Side", {
	Language = "english",
	Type = "noun",
	Meanings = {"Side"},
	Gender = "neuter",
	AffixNameTypes = {
		"compound", "suffix", "singular", "terrain-mountains", -- example: "Whiteside"
		"separate", "suffix", "singular", "terrain-mountains" -- examples: "Green Side", "Long Side", "Slight Side", "White Side"
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
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-hills", -- example: "Silver Hill"
		"separate", "prefix", "singular", "unit-class-smithy" -- seems sensible
	}
	
})

DefineLanguageWord("Slight", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Slight"},
	AffixNameTypes = {
		"separate", "prefix", "terrain-mountains" -- example: "Slight Side"
	}
})

DefineLanguageWord("Smith", {
	Language = "english",
	Type = "noun",
	Meanings = {"Smith"},
	DerivesFrom = {"old-english", "noun", "Smiþ"} -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, pp. 263-264.
})

DefineLanguageWord("Smithy", {
	Language = "english",
	Type = "noun",
	Meanings = {"Smithy"},
	DerivesFrom = {"old-english", "noun", "Smiþþe"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 264.
	Gender = "neuter",
	NumberCaseInflections = {
		"plural", "nominative", "Smithies",
		"plural", "genitive", "Smithies"
	},
	AffixNameTypes = {"separate", "suffix", "singular", "unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Smoldering", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Smoldering"},
	AffixNameTypes = {"separate", "prefix", "singular", "unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Somer", {
	Language = "english",
	Type = "noun", -- correct?
	Meanings = {},
	DerivesFrom = {"old-english", "noun", "Sumor"}, -- possibly, since "Summer" does
	Gender = "neuter",
	Archaic = true,
	AffixNameTypes = {"compound", "prefix", "singular", "province"} -- example: "Somerset"
})

DefineLanguageWord("Sorrow", {
	Language = "english",
	Type = "noun",
	Meanings = {"Sorrow"},
	DerivesFrom = {"old-english", "noun", "Sorg"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223.
	Gender = "neuter"
})

DefineLanguageWord("South", {
	Language = "english",
	Type = "noun",
	Meanings = {"South"},
	DerivesFrom = {"old-english", "adverb", "Sûþ"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223.
	Gender = "neuter",
	Uncountable = true
})

DefineLanguageWord("South", {
	Language = "english",
	Type = "adjective",
	Meanings = {"South"},
	DerivesFrom = {"old-english", "adverb", "Sûþ"} -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223.
})

DefineLanguageWord("South", {
	Language = "english",
	Type = "adverb",
	Meanings = {"South"},
	DerivesFrom = {"old-english", "adverb", "Sûþ"} -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223.
})

DefineLanguageWord("Spy", {
	Language = "english",
	Type = "noun",
	Meanings = {"Spy"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "suffix", "singular", "terrain-mountains" -- example: "High Spy"
	}
})

DefineLanguageWord("Stand", {
	Language = "english",
	Type = "noun",
	Meanings = {"Stand"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "suffix", "singular", "terrain-mountains" -- example: "Little Stand"
	}
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

DefineLanguageWord("Steep", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Steep"},
	AffixNameTypes = {
		"separate", "prefix", "terrain-hills" -- example: "Steep Down"
	}
})

DefineLanguageWord("Stephen", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person-male"}
})

DefineLanguageWord("Stock", {
	Language = "english",
	Type = "noun",
	Meanings = {"Stock"},
	Gender = "neuter",
	AffixNameTypes = {
		"compound", "prefix", "singular", "settlement", -- example: "Stockport"
		"separate", "prefix", "plural", "terrain-hills" -- example: "Stocks Hill"
	}
})

DefineLanguageWord("Stone", {
	Language = "english",
	Type = "noun",
	Meanings = {"Stone"},
	DerivesFrom = {"old-english", "noun", "Stân"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 245.
	Gender = "neuter",
	AffixNameTypes = {
		"compound", "prefix", "singular", "settlement", -- example: "Stonehaven"; Source: "Philip's International School Atlas", 2006, p. 64.
		"compound", "suffix", "singular", "settlement", -- example: "Maidstone"; Source: "Philip's International School Atlas", 2006, p. 64.
		"separate", "suffix", "plural", "terrain-mountains" -- examples: "Dead Stones", "Low White Stones"
	}
})

DefineLanguageWord("Stone", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Stone"},
	DerivesFrom = {"old-english", "noun", "Stân"}, -- presumably, since the corresponding noun does
	AffixNameTypes = {"separate", "prefix", "singular", "unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Stony", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Stony"},
	DerivesFrom = {"old-english", "noun", "Stân"}, -- presumably, since the noun "stone" does
	AffixNameTypes = {
		"separate", "prefix", "terrain-mountains", -- example: "Stony Cove Pike"
		"separate", "infix", "terrain-mountains" -- example: "Great Stony Hill"
	}
})

DefineLanguageWord("Street", {
	Language = "english",
	Type = "noun",
	Meanings = {"Street"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "suffix", "singular", "terrain-mountains" -- example: "High Street"
	}
})

DefineLanguageWord("Suf", {
	Language = "english",
	Type = "noun",
	Meanings = {"South"},
	DerivesFrom = {"old-english", "adverb", "Sûþ"}, -- presumably, since the English word "South" comes from that Old English word
	Gender = "neuter",
	Archaic = true,
	AffixNameTypes = {"compound", "prefix", "singular", "province"} -- example: "Suffolk"
})

DefineLanguageWord("Summer", {
	Language = "english",
	Type = "noun",
	Meanings = {"Summer"},
	DerivesFrom = {"old-english", "noun", "Sumor"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223.
	Gender = "neuter"
})

DefineLanguageWord("Sus", {
	Language = "english",
	Type = "noun",
	Meanings = {"South"},
	DerivesFrom = {"old-english", "adverb", "Sûþ"}, -- presumably, since the English word "South" comes from that Old English word
	Gender = "neuter",
	Archaic = true,
	AffixNameTypes = {"compound", "prefix", "singular", "province"} -- example: "Sussex"
})

DefineLanguageWord("Swan", {
	Language = "english",
	Type = "noun",
	Meanings = {"Swan"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- examples: "Swansea" (Source: "Philip's International School Atlas", 2006, p. 64), "Swanscombe"
})

DefineLanguageWord("The", {
	Language = "english",
	Type = "article",
	Meanings = {"The"},
	ArticleType = "definite",
	Nominative = "The",
	Accusative = "The",
	Dative = "The",
	Genitive = "The"
})

DefineLanguageWord("Theodore", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person-male"}
})

DefineLanguageWord("Thomas", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person-male"}
})

DefineLanguageWord("Thorn", {
	Language = "english",
	Type = "noun",
	Meanings = {"Thorn"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-mountains" -- example: "Thorn Crag"
	}
})

DefineLanguageWord("Thorp", { -- Source: http://www.cnrtl.fr/definition/trop
	Language = "english",
	Type = "noun",
	Meanings = {"Village"}, -- source gives the French "village" as the meaning
	DerivesFrom = {"old-english", "noun", "Þorp"} -- presumably
})

DefineLanguageWord("Three", {
	Language = "english",
	Type = "numeral",
	Number = 3,
	AffixNameTypes = {
		"separate", "prefix", "terrain-mountains", -- example: "Three Pikes"
		"separate", "prefix", "unit-class-smithy", -- seems sensible
		"separate", "prefix", "unit-class-lumber-mill" -- seems sensible
	}
})

DefineLanguageWord("Titmouse", {
	Language = "english",
	Type = "noun",
	Meanings = {"Titmouse"},
	DerivesFrom = {"old-english", "noun", "Mâse"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 155.
	Gender = "neuter"
})

DefineLanguageWord("Ton", {
	Language = "english",
	Type = "noun",
	Meanings = {}, -- town?
	DerivesFrom = {"old-english", "noun", "Tûn"}, -- presumably? if this is indeed related to the word "Town"
	Gender = "neuter",
	Archaic = true,
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- example: "Kingston"
})

DefineLanguageWord("Tongue", {
	Language = "english",
	Type = "noun",
	Meanings = {"Tongue"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-mountains" -- example: "Tongue Head"
	}
})

DefineLanguageWord("Top", {
	Language = "english",
	Type = "noun",
	Meanings = {"Top"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "suffix", "singular", "terrain-mountains" -- example: "Blunt Top"
	}
})

DefineLanguageWord("Tor", {
	Language = "english",
	Type = "noun",
	Meanings = {},
--	Gender = "neuter",
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- example: "Torbay"; Source: "Philip's International School Atlas", 2006, p. 64.
})

DefineLanguageWord("Tower", {
	Language = "english",
	Type = "noun",
	Meanings = {"Tower"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-hills" -- example: "Tower Hill"
	}
})

DefineLanguageWord("Town", {
	Language = "english",
	Type = "noun",
	Meanings = {"Town"},
	DerivesFrom = {"old-english", "noun", "Tûn"}, -- presumably
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 336.
})

DefineLanguageWord("Toy", {
	Language = "english",
	Type = "noun",
	Meanings = {"Toy"},
	Gender = "neuter",
	AffixNameTypes = {"separate", "prefix", "singular", "genitive", "terrain-hills"} -- example: "Toy's Hill"
})

DefineLanguageWord("Tree", {
	Language = "english",
	Type = "noun",
	Meanings = {"Tree"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 336.
})

DefineLanguageWord("Turf", {
	Language = "english",
	Type = "noun",
	Meanings = {"Turf"},
	DerivesFrom = {"old-english", "noun", "Turf"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 86.
	Gender = "neuter"
})

DefineLanguageWord("Twelve", {
	Language = "english",
	Type = "numeral",
	Number = 12,
	AffixNameTypes = {
		"separate", "prefix", "unit-class-smithy", -- seems sensible
		"separate", "prefix", "unit-class-lumber-mill" -- seems sensible
	}
})

DefineLanguageWord("Two", {
	Language = "english",
	Type = "numeral",
	Number = 2,
	AffixNameTypes = {
		"separate", "prefix", "unit-class-smithy", -- seems sensible
		"separate", "prefix", "unit-class-lumber-mill" -- seems sensible
	}
})

DefineLanguageWord("Violet", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Violet"},
	AffixNameTypes = {
		"separate", "prefix", "terrain-hills", -- example: "Violet Hill"
		"separate", "prefix", "unit-class-smithy", -- seems sensible
		"separate", "prefix", "unit-class-lumber-mill" -- seems sensible
	}
})

DefineLanguageWord("Wall", {
	Language = "english",
	Type = "noun",
	Meanings = {"Wall"},
	Gender = "neuter",
	AffixNameTypes = {
		"compound", "suffix", "singular", "settlement" -- example: "Blackwall"
	}
})

DefineLanguageWord("Water", {
	Language = "english",
	Type = "noun",
	Meanings = {"Water"},
	Gender = "neuter",
	Uncountable = true,
	AffixNameTypes = {
		"compound", "prefix", "singular", "settlement", -- example: "Waterford"
		"separate", "prefix", "singular", "terrain-mountains" -- example: "Water Crag"
	}
})

DefineLanguageWord("Wes", {
	Language = "english",
	Type = "noun",
	Meanings = {"West"},
	Gender = "neuter",
	DerivesFrom = {"old-english", "adverb", "West"}, -- presumably, since the English word "West" comes from that Old English word
	Archaic = true
})

DefineLanguageWord("West", {
	Language = "english",
	Type = "noun",
	Meanings = {"West"},
	DerivesFrom = {"old-english", "adverb", "West"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 204.
	Gender = "neuter",
	Uncountable = true,
	AffixNameTypes = {
		"compound", "prefix", "singular", "settlement", -- examples: "Westbury", "Westport"
		"separate", "prefix", "singular", "terrain-hills" -- examples: "West Down", "West Hill"
	}
})

DefineLanguageWord("West", {
	Language = "english",
	Type = "adjective",
	Meanings = {"West"},
	DerivesFrom = {"old-english", "adverb", "West"} -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 204.
})

DefineLanguageWord("West", {
	Language = "english",
	Type = "adverb",
	Meanings = {"West"},
	DerivesFrom = {"old-english", "adverb", "West"} -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 204.
})

DefineLanguageWord("White", {
	Language = "english",
	Type = "adjective",
	Meanings = {"White"},
	DerivesFrom = {"old-english", "adjective", "Hwīt"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 67.
	AffixNameTypes = {
		"compound", "prefix", "settlement", -- example: "Whitehaven"
		"separate", "prefix", "terrain-hills", -- example: "White Hill"
		"compound", "prefix", "terrain-mountains", -- example: "Whiteside"
		"separate", "prefix", "terrain-mountains", -- examples: "White Maiden", "White Mossy Hill", "White Pike", "White Side"
		"separate", "infix", "terrain-mountains", -- example: "Low White Stones"
		"separate", "prefix", "unit-class-smithy", -- seems sensible
		"separate", "prefix", "unit-class-lumber-mill" -- seems sensible
	}
})

DefineLanguageWord("Wich", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- examples: "Greenwich", "Norwich"; Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 336.
})

DefineLanguageWord("Wild", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Wild"},
	AffixNameTypes = {
		"separate", "prefix", "terrain-mountains" -- example: "Wild Boar Fell"
	}
})

DefineLanguageWord("William", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	Gender = "masculine",
	NameTypes = {"person-male"}
})

DefineLanguageWord("Wilt", {
	Language = "english",
	Type = "noun", -- correct?
	Meanings = {},
	Gender = "neuter",
	Archaic = true,
	AffixNameTypes = {"compound", "prefix", "singular", "province"} -- example: "Wiltshire"
})

DefineLanguageWord("Wimble", {
	Language = "english",
	Type = "noun", -- correct?
	Meanings = {},
	Gender = "neuter",
	Archaic = true,
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- example: "Wimbledon"
})

DefineLanguageWord("Win", {
	Language = "english",
	Type = "noun",
	Meanings = {"Win"},
	Gender = "neuter",
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- example: "Winchester"
})

DefineLanguageWord("Windmill", {
	Language = "english",
	Type = "noun",
	Meanings = {"Windmill"},
	Gender = "neuter",
	AffixNameTypes = {
		"separate", "prefix", "singular", "terrain-hills" -- example: "Windmill Hill"
	}
})

DefineLanguageWord("Windy", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Windy"},
	AffixNameTypes = {
		"separate", "prefix", "terrain-hills" -- example: "Windy Ridge"
	}
})

DefineLanguageWord("Wolf", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 209.
	Language = "english",
	Type = "noun",
	Meanings = {"Wolf"},
	DerivesFrom = {"old-english", "noun", "Wulf"},
	Gender = "neuter"
})

DefineLanguageWord("Wood", {
	Language = "english",
	Type = "noun",
	Meanings = {"Wood"},
	Gender = "neuter",
	AffixNameTypes = {
		"compound", "prefix", "singular", "settlement" -- example: "Woodbridge"
	}
})

DefineLanguageWord("Wool", {
	Language = "english",
	Type = "noun",
	Meanings = {"Wool"},
	Gender = "neuter",
	Uncountable = true,
	AffixNameTypes = {
		"compound", "prefix", "singular", "settlement", -- example: "Woolwich"
		"compound", "prefix", "singular", "terrain-hills" -- example: "Woolbury"
	}
})

DefineLanguageWord("Worm", {
	Language = "english",
	Type = "noun",
	Meanings = {"Worm"},
	DerivesFrom = {"old-english", "noun", "Wyrm"}, -- presumably
	Gender = "neuter",
	AffixNameTypes = {"compound", "prefix", "singular", "genitive", "settlement"} -- example: "Wormshill"
})

DefineLanguageWord("Wyrm", {
	Language = "english",
	Type = "noun",
	Meanings = {"Wyrm"},
	DerivesFrom = {"old-english", "noun", "Wyrm"}, -- presumably
	Gender = "neuter"
})

DefineLanguageWord("Yellow", {
	Language = "english",
	Type = "adjective",
	Meanings = {"Yellow"},
	AffixNameTypes = {
		"separate", "prefix", "unit-class-smithy", -- seems sensible
		"separate", "prefix", "unit-class-lumber-mill" -- seems sensible
	}
})

DefineLanguageWord("Yew", {
	Language = "english",
	Type = "noun",
	Meanings = {"Yew"},
	Gender = "neuter",
	AffixNameTypes = {
		"compound", "prefix", "singular", "terrain-mountains" -- example: "Yewbarrow"
	}
})

-- compounds

DefineLanguageWord("Alfred", {
	Language = "english",
	Type = "noun",
	Meanings = {"Elf-Counsel"}, -- Alf = Elf, Red = Counsel
	CompoundElements = {
		"prefix", "english", "noun", "Alf",
		"suffix", "english", "noun", "Red"
	},
	Archaic = true,
	NameTypes = {"person-male"}
})

DefineLanguageWord("Bernard", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	CompoundElements = {
		"prefix", "english", "noun", "Bern",
		"suffix", "english", "adjective", "Ard"
	},
	Archaic = true,
	NameTypes = {"person-male"}
})

DefineLanguageWord("Godfrey", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	CompoundElements = {
		"prefix", "english", "noun", "God",
		"suffix", "english", "noun", "Frey"
	},
	Archaic = true,
	NameTypes = {"person-male"}
})

DefineLanguageWord("Richard", {
	Language = "english",
	Type = "noun",
	Meanings = {},
	CompoundElements = {
		"prefix", "english", "adjective", "Rich",
		"suffix", "english", "adjective", "Ard"
	},
	Archaic = true,
	NameTypes = {"person-male"}
})


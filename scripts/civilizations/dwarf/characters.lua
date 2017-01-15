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

-- Dwarven heroes

DefineCharacter("modsognir", { -- one of the earliest dwarven leaders
	Name = "Modsognir",
	Gender = "male",
	Type = "unit-dwarven-steelclad",
	Civilization = "dwarf",
	Faction = "brising-clan",
	Description = "The leader of one of the first dwarven tribes, Modsognir is a mighty warrior.",
	Background = "In Norse mythology, Modsognir appears in the ~<Voluspo~> as the first and mightiest of the dwarves.",
	Icon = "icon-modsognir",
	HairVariation = "brown-hair",
	Trait = "upgrade-mighty",
	ProvinceOfOrigin = "Svarinshaug",
	Year = -3000,
	ForbiddenUpgrades = {"unit-dwarven-yale-rider"},
	HistoricalTitles = {
		"head-of-state", -3000, -3000 + 30, "dwarf", "brising-clan"
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Allow", "upgrade-dwarven-runewriting") ~= "R") then -- Modsognir shouldn't appear in eras with too advanced technology
			return true
		end
		return false
	end
})

DefineCharacter("durin", {
	Name = "Durin", -- possibly the same as the Diurnir mentioned in the Ynglinga saga; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 228.
	Gender = "male",
	Type = "unit-dwarven-steelclad",
	Civilization = "dwarf",
	Faction = "brising-clan",
	Description = "Durin is a valiant dwarven warrior and loyal vassal of chieftain Modsognir.",
	Background = "In Norse mythology, Durin appears in the ~<Voluspo~> as one of the first dwarves and the deputy of Modsognir.",
	Icon = "icon-durin",
	HairVariation = "brown-hair",
	Trait = "upgrade-dextrous",
	ProvinceOfOrigin = "Svarinshaug",
	Year = -3000,
	ForbiddenUpgrades = {"unit-dwarven-yale-rider"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Allow", "upgrade-dwarven-runewriting") ~= "R") then -- Durin shouldn't appear in eras with too advanced technology
			return true
		end
		return false
	end
})

DefineCharacter("fjalar", { -- dwarf from Norse mythology who, with the help of his brother Galar, brew Kvasir's blood into the Mead of Poetry
	Name = "Fjalar",
	Gender = "male",
	Type = "unit-dwarven-steelclad", -- should be a thief
	Civilization = "dwarf",
	Faction = "shadowcharm-clan",
	Description = "The greedy Fjalar is joint chieftain of the Shadowcharm Clan together with his brother Galar. He is adept at deception and stealth.",
	HairVariation = "brown-hair",
	Trait = "upgrade-cruel",
	Year = -3000,
	ForbiddenUpgrades = {"unit-dwarven-yale-rider"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "shadowcharm-clan") then
			return true
		end
		return false
	end
})

DefineCharacter("galar", {
	Name = "Galar",
	Gender = "male",
	Type = "unit-dwarven-steelclad", -- should be an alchemist
	Civilization = "dwarf",
	Faction = "shadowcharm-clan",
	Description = "The envious Galar is joint chieftain of the Shadowcharm Clan together with his brother Fjalar. He is known for his thieving skills and his dabbling in magic.",
	HairVariation = "brown-hair",
	Trait = "upgrade-cruel",
	Year = -3000,
	ForbiddenUpgrades = {"unit-dwarven-yale-rider"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "shadowcharm-clan") then
			return true
		end
		return false
	end
})

DefineCharacter("thjodrorir", { -- dwarf from Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 17; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 66.
	Name = "Thjodrorir",
	Gender = "male",
	Type = "unit-dwarven-witness",
	Civilization = "dwarf",
	Description = "A wise loremaster, Thjodrorir possesses knowledge of many powerful charms.",
	Background = "In Norse mythology, Thjodrorir was a dwarf who knew a potent magic charm. This he sang before the doors of the god Delling, to bring might for the gods, glory for the elves and wisdom for Odin. Thjodrorir is mentioned in the ~<Hovamol~>.",
	HairVariation = "gray-hair",
	Trait = "upgrade-wise",
	Year = -3000,
	-- worships deities: Hroptatyr (Odin) and Delling
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") ~= "shadowcharm-clan") then
			return true
		end
		return false
	end
})

DefineCharacter("gandalf", {
	Name = "Gandalf",
	Gender = "male",
	Type = "unit-dwarven-witness", -- his name means "magic elf", so it makes sense that he is a spellcaster
	Civilization = "dwarf",
	Background = "Gandalf is a dwarf from Norse mythology. His name means \"magic elf\"."
})

DefineCharacter("vindalf", {
	Name = "Vindalf",
	Gender = "male",
	Type = "unit-dwarven-scout", -- his name means "wind elf", so it makes sense to make him a projectile thrower
	Civilization = "dwarf",
	Background = "Vindalf is a dwarf from Norse mythology. His name means \"wind elf\"."
})

DefineCharacter("alvis", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 144-145; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 183-194.
	Name = "Alvis",
	Gender = "male",
	Type = "unit-dwarven-witness",
	Civilization = "dwarf",
	Background = "In the ~<Alvismol~>, Alvis is an extremely knowledgeable dwarf who desires to marry Thor's daughter. His name means \"all-knowing\" or \"all-wise\".",
	HairVariation = "gray-hair",
	Trait = "upgrade-wise"
})

DefineCharacter("regin", {
	Name = "Regin",
	Gender = "male",
	Type = "unit-dwarven-thane", -- should be a runemaster
	Civilization = "dwarf",
	Faction = "brising-clan",
	Description = "Regin is a dwarven mastersmith, unrivalled in his time. The mythical sword Gram was of his making, as were several other legendary blades.",
	Background = "In Norse mythology, Regin was a skilled dwarven smith and the brother of the dragon Fafnir.",
	HairVariation = "brown-hair",
	Trait = "upgrade-intelligent",
	ForbiddenUpgrades = {"unit-dwarven-yale-rider"}
})

DefineCharacter("thursagan", { -- from Battle for Wesnoth: The Sceptre of Fire; master runesmith who crafted the Sceptre of Fire
	Name = "Thursagan",
	Gender = "male",
	Type = "unit-dwarven-thane",
	Civilization = "dwarf",
	Faction = "norlund-clan",
	Description = "Thursagan is an extremely skilled runemaster who has retired to live as a hermit in the Northern Wastelands. Due to his talents, he was contacted by Rugnur to craft of the Scepter of Fire. His hammer is considered legendary, and dwarves have sought to find it for centuries after his death.",
	Quote = "\"Ye mean the insane dwarf who lives in the far north?!\"\n- Baglur, Retired Norlund Warrior",
	Background = "~<The Sceptre of Fire~> poem about the crafting of that artifact mentions Thursagan (as \"a runesmith\") as the maker of the scepter.",
	Trait = "upgrade-strong",
	Icon = "icon-thursagan",
	HairVariation = "gray-hair",
	ProvinceOfOrigin = "Caverns of Chaincolt",
	Year = -1,
	DeathYear = 40, -- died in 40 AD of a violent death
	ViolentDeath = true,
	ForbiddenUpgrades = {"unit-dwarven-yale-rider"},
	Items = {
		{
			"unique", "the-hammer-of-thursagan",
			"bound", true
		},
	}
})

DefineCharacter("baglur", { -- from Battle for Wesnoth: The Sceptre of Fire; veteran warrior and member of the party of dwarves who handled the crafting of the Sceptre of Fire
	Name = "Baglur",
	Gender = "male",
	Type = "unit-dwarven-steelclad",
	Civilization = "dwarf",
	Faction = "norlund-clan",
	Description = "Baglur is an old and well-experienced warrior. He came back from retirement to help Rugnur defend their homeland against an attack from the Shinsplitter Clan.",
	Quote = "\"Argh! I'm a retired warrior... it looks like I'll ha' to come out and help ye, else we'll be overrun by these damn raiders...\"\n- Baglur",
 	Icon = "icon-baglur",
	Trait = "upgrade-resilient",
	HairVariation = "gray-hair",
	ProvinceOfOrigin = "Caverns of Chaincolt",
	Year = -1,
	DeathYear = 40, -- died in 40 AD of a violent death
	ViolentDeath = true,
	ForbiddenUpgrades = {"unit-dwarven-yale-rider"}
})

DefineCharacter("durstorn", { -- from Battle for Wesnoth: The Sceptre of Fire; chieftain of Rugnur's tribe
	Name = "Durstorn",
	Gender = "male",
	Type = "unit-dwarven-thane",
	Civilization = "dwarf",
	Faction = "norlund-clan",
	Description = "Durstorn is the chief of the Norlund Clan. Despite being greedy and unpleasant to be around, he makes a passable leader. When under pressure, however, he tends to become hasty and crass, impoverishing his capability to make good decisions.",
	Icon = "icon-durstorn",
	Trait = "upgrade-strong",
	HairVariation = "brown-hair",
	ProvinceOfOrigin = "Caverns of Chaincolt",
	Year = -1,
	DeathYear = 35, -- died in 35 AD of a violent death
	ViolentDeath = true,
	ForbiddenUpgrades = {"unit-dwarven-yale-rider"},
	HistoricalTitles = {
		"head-of-state", -1, 35, "dwarf", "norlund-clan"
	}
})

DefineCharacter("glonoin", { -- from Battle for Wesnoth: The Sceptre of Fire; chieftain of the Shorbear clan
	Name = "Glonoin",
	Gender = "male",
	Type = "unit-dwarven-thane",
	Civilization = "dwarf",
	Faction = "shorbear-clan",
	ProvinceOfOrigin = "Shorbear Hills",
	Year = -1,
	DeathYear = 29, -- Shorbear Hold conquered in 29 AD by Rugnur's and Durstorn's Clan
	ViolentDeath = true,
	HistoricalTitles = {
		"head-of-state", -1, 29, "dwarf", "shorbear-clan"
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "shorbear-clan") then
			return true
		end
		return false
	end
})

DefineCharacter("rugnur", { -- from Battle for Wesnoth: The Sceptre of Fire; leader of the party of dwarves who handled the crafting of the Sceptre of Fire
	Name = "Rugnur",
	Gender = "male",
	Type = "unit-dwarven-axefighter",
	Civilization = "dwarf",
	Faction = "norlund-clan",
	Description = "Rugnur is a relatively young dwarven warrior. He belongs to the lower strata of his tribe's notables, not being of high enough rank to have a leading position in the clan, but important enough to be granted control of an outpost in the Chaincolt Foothills. Despite being neither ambitious nor adventurous, Rugnur nevertheless ended up being embroiled in the quest to craft the Scepter of Fire for a gnomish monarch.",
	Icon = "icon-rugnur",
	HeroicIcon = "icon-rugnur-older",
	Trait = "upgrade-keen", -- not the best fit for this character, should be replaced with something else perhaps?
	HairVariation = "brown-hair",
	ProvinceOfOrigin = "Caverns of Chaincolt",
	Year = 25,
	DeathYear = 40, -- died in 40 AD of a violent death
	ViolentDeath = true,
	ForbiddenUpgrades = {"unit-dwarven-yale-rider"}
})

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
--      (c) Copyright 2015-2019 by Andrettin
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

DefineCharacter("fjalar", { -- dwarf from Norse mythology who, with the help of his brother Galar, brew Kvasir's blood into the Mead of Poetry
	Name = "Fjalar",
	Gender = "male",
	Type = "unit-dwarven-steelclad", -- should be a thief
	Civilization = "dwarf",
	Faction = "shadowcharm-clan",
	Description = "The greedy Fjalar is joint chieftain of the Shadowcharm Clan together with his brother Galar. He is adept at deception and stealth.",
	HairVariation = "brown-hair",
	Trait = "upgrade-cruel",
	StartDate = -3000,
	ForbiddenUpgrades = {"unit-dwarven-yale-rider"},
	Deities = {"loki", "tyr"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "shadowcharm-clan") then
			return true
		end
		return false
	end
})

DefineCharacter("galar", { -- dwarf from Norse mythology who, with the help of his brother Fjalar, brew Kvasir's blood into the Mead of Poetry
	Name = "Galar",
	Gender = "male",
	Type = "unit-dwarven-steelclad", -- should be an alchemist
	Civilization = "dwarf",
	Faction = "shadowcharm-clan",
	Description = "The envious Galar is joint chieftain of the Shadowcharm Clan together with his brother Fjalar. He is known for his thieving skills and his dabbling in magic.",
	HairVariation = "brown-hair",
	Trait = "upgrade-cruel",
	StartDate = -3000,
	ForbiddenUpgrades = {"unit-dwarven-yale-rider"},
	Deities = {"loki", "tyr"},
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
	Type = "unit-dwarven-loremaster",
	Civilization = "dwarf",
	Description = "A wise loremaster, Thjodrorir possesses knowledge of many powerful charms.",
	Background = "In Norse mythology, Thjodrorir was a dwarf who knew a potent magic charm. This he sang before the doors of the god Delling, to bring might for the gods, glory for the elves and wisdom for Odin. Thjodrorir is mentioned in the [url=literary_text:hovamol]Hovamol[/url].",
	HairVariation = "gray-hair",
	Trait = "upgrade-wise",
	StartDate = -3000,
	-- worships deities: Hroptatyr (Odin) and Delling
	Deities = {"odin", "tyr"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") ~= "shadowcharm-clan") then
			return true
		end
		return false
	end
})

DefineCharacter("brokk", {
	Name = "Brokk",
	Gender = "male",
	Type = "unit-dwarven-runemaster",
	Civilization = "dwarf",
	Background = "Brokk is a dwarf from Norse mythology who was an expert smith. He is the brother of Eitri.",
	Deities = {"odin", "tyr"},
	Trait = "upgrade-keen"
})

DefineCharacter("eitri", {
	Name = "Eitri",
	Gender = "male",
	Type = "unit-dwarven-runemaster",
	Civilization = "dwarf",
	Background = "Eitri is a dwarf from Norse mythology who was an expert smith. He is the brother of Brokk.",
	Deities = {"odin", "tyr"},
	Trait = "upgrade-dextrous"
})

DefineCharacter("ivaldi", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 63.
	Name = "Ivaldi",
	Gender = "male",
	Type = "unit-dwarven-runemaster",
	Civilization = "dwarf",
	Background = "Ivaldi is a dwarf from Norse mythology whose sons were mastersmiths.",
	Deities = {"odin", "tyr"}
})

DefineCharacter("gandalf", {
	Name = "Gandalf",
	Gender = "male",
	Type = "unit-dwarven-witness", -- his name means "magic elf", so it makes sense that he is a spellcaster
	Civilization = "dwarf",
	Background = "Gandalf is a dwarf from Norse mythology. His name means \"magic elf\".",
	Deities = {"odin", "tyr"}
})

DefineCharacter("vindalf", {
	Name = "Vindalf",
	Gender = "male",
	Type = "unit-dwarven-scout", -- his name means "wind elf", so it makes sense to make him a projectile thrower
	Civilization = "dwarf",
	Background = "Vindalf is a dwarf from Norse mythology. His name means \"wind elf\".",
	ForbiddenUpgrades = {"unit-dwarven-explorer"},
	Deities = {"thor", "tyr"}
})

DefineCharacter("bafur", {
	Name = "Bafur",
	Gender = "male",
	Type = "unit-dwarven-runesmith",
	Civilization = "dwarf",
	Background = "In Norse mythology, Bafur was one of the dwarves who crafted the mighty fetter Gleipnir.",
	Deities = {"odin", "tyr"}
})

DefineCharacter("bifur", {
	Name = "Bifur",
	Gender = "male",
	Type = "unit-dwarven-runesmith",
	Civilization = "dwarf",
	Background = "In Norse mythology, Bifur was one of the dwarves who crafted the mighty fetter Gleipnir.",
	Deities = {"odin", "tyr"}
})

DefineCharacter("bombor", {
	Name = "Bombor",
	Gender = "male",
	Type = "unit-dwarven-runesmith",
	Civilization = "dwarf",
	Background = "In Norse mythology, Bombor was one of the dwarves who crafted the mighty fetter Gleipnir.",
	Deities = {"odin", "tyr"}
})

DefineCharacter("dain", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 100.
	Name = "Dain",
	Gender = "male",
	Type = "unit-dwarven-runemaster",
	Civilization = "dwarf",
	Description = "In Norse mythology, Dain was a mastersmith who was one of the dwarves who crafted the mighty fetter Gleipnir.", -- him having partook in Gleipnir's crafting is not in the source given above
	Deities = {"odin", "tyr"}
})

DefineCharacter("nain", {
	Name = "Nain",
	Gender = "male",
	Type = "unit-dwarven-runesmith",
	Civilization = "dwarf",
	Background = "In Norse mythology, Nain was one of the dwarves who crafted the mighty fetter Gleipnir.",
	Deities = {"odin", "tyr"}
})

DefineCharacter("nar", {
	Name = "Nar",
	Gender = "male",
	Type = "unit-dwarven-runesmith",
	Civilization = "dwarf",
	Background = "In Norse mythology, Nar was one of the dwarves who crafted the mighty fetter Gleipnir.",
	Deities = {"odin", "tyr"}
})

DefineCharacter("niping", {
	Name = "Niping",
	Gender = "male",
	Type = "unit-dwarven-runesmith",
	Civilization = "dwarf",
	Background = "In Norse mythology, Niping was one of the dwarves who crafted the mighty fetter Gleipnir.",
	Deities = {"odin", "tyr"}
})

DefineCharacter("nori", {
	Name = "Nori",
	Gender = "male",
	Type = "unit-dwarven-runesmith",
	Civilization = "dwarf",
	Background = "In Norse mythology, Nori was one of the dwarves who crafted the mighty fetter Gleipnir.",
	Deities = {"odin", "tyr"}
})

DefineCharacter("dvalin", {
	Name = "Dvalin",
	Gender = "male",
	Type = "unit-dwarven-loremaster",
	Civilization = "dwarf",
	Background = "In Norse mythology, Dvalin was a dwarf who taught knowledge of the runes to his fellow dwarves.",
	HairVariation = "gray-hair",
	Trait = "upgrade-wise",
	Deities = {"odin", "tyr"}
	-- one of the four who crafted the Necklace of the Brisings (or was that another Dvalin?)
})

DefineCharacter("alvis", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 144-145; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 183-194.
	Name = "Alvis",
	Gender = "male",
	Type = "unit-dwarven-loremaster",
	Civilization = "dwarf",
	Background = "In the [url=literary_text:alvissmol]Alvissmol[/url], Alvis is an extremely knowledgeable dwarf who desires to marry Thor's daughter. His name means \"all-knowing\" or \"all-wise\".",
	HairVariation = "gray-hair",
	Trait = "upgrade-wise",
	Deities = {"odin", "tyr"}
})

DefineCharacter("andvari", {
	Name = "Andvari",
	Gender = "male",
	Type = "unit-dwarven-runemaster",
	Civilization = "dwarf",
	Faction = "oinling-clan",
	Description = "The son of Oin, Andvari is famous for his large hoard of gold.",
	Trait = "upgrade-ambitious",
	ForbiddenUpgrades = {"unit-dwarven-yale-rider"},
	Deities = {"odin", "tyr"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "oinling-clan") then
			return true
		end
		return false
	end
})

DefineCharacter("regin", {
	Name = "Regin",
	Gender = "male",
	Type = "unit-dwarven-runemaster",
	Civilization = "dwarf",
	Faction = "brising-clan",
	Description = "Regin is a dwarven mastersmith, unrivalled in his time. The mythical sword Gram was of his making, as were several other legendary blades.",
	Background = "In Norse mythology, Regin was a skilled dwarven smith and the brother of the dragon Fafnir.",
	HairVariation = "brown-hair",
	Trait = "upgrade-intelligent",
	StartDate = 561, -- Sigibert's campaign begins in 561; Sigibert's encounter with Regin (which causes the latter's death in the end) should take place between Sigibert's initial defeat of the Avars and Chilperich in 561-562, and Sigibert's marriage to Brunichilde in 566
	DeathDate = 566,
	ForbiddenUpgrades = {"unit-dwarven-yale-rider"},
	Deities = {"odin", "tyr"}
})

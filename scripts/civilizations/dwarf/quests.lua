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
--      (c) Copyright 2013-2016 by Andrettin
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

DefineQuest("a-rocky-home", {
	Name = "A Rocky Home",
	Icon = "icon-modsognir",
	Description = "A clan of dwarves led by Modsognir has arrived in Svarinshaug, seeking a new home. Beset by hostile natural forces on all sides, can they survive their first winter?\n\nMap: Svarinshaug",
	World = "Nidavellir",
	Civilization = "dwarf",
	TechnologyPoints = 2,
	Map = "maps/nidavellir/svarinshaug.smp",
	Scenario = "scripts/civilizations/dwarf/scenarios/a_rocky_home.lua",
	PlayerColor = "white",
	LoadingMusic = "DwarfLoading",
	MapMusic = "DwarfTheme",
	IntroductionDialogue = "a-rocky-home-introduction"
})

DefineQuest("the-mead-of-wisdom", {
	Name = "The Mead of Wisdom",
	Icon = "icon-durin",
	Description = "The sage of Modsognir's clan has disappeared, taken by two dwarves called Fjalar and Galar. Modsognir has sent Durin to enter their hall, rescue the sage - or what remains of him - and bring the evil pair to justice.\n\nMap: Fjalar's and Galar's Hall",
	RequiredQuest = "a-rocky-home",
	World = "Nidavellir",
	Civilization = "dwarf",
	TechnologyPoints = 2,
	Map = "maps/nidavellir/fjalars-and-galars-hall.smp",
	Scenario = "scripts/civilizations/dwarf/scenarios/the_mead_of_wisdom.lua",
	PlayerColor = "white",
	LoadingMusic = "DwarfLoading",
	MapMusic = "DwarfTheme2"
})

DefineQuest("the-treasures-of-svarinshaug", {
	Name = "The Treasures of Svarinshaug",
	Icon = "icon-brising-smithy",
	Description = "The dwarven smiths Brokk and Eitri are competing with the renowned sons of Ivaldi to craft the best artifacts for Modsognir. To obtain the necessary high quality ores will be perilous, however, as dangerous creatures abound in the deep mines where they lay...\n\nMap: Eastern Mines",
	RequiredQuest = "the-mead-of-wisdom",
	World = "Nidavellir",
	Civilization = "dwarf",
	TechnologyPoints = 3,
	Map = "maps/nidavellir/eastern-mines.smp",
	Scenario = "scripts/civilizations/dwarf/scenarios/the_treasures_of_svarinshaug.lua",
	PlayerColor = "white",
	LoadingMusic = "DwarfLoading",
--	MapMusic = "DwarfTheme3"
})

DefineQuest("the-necklace-of-the-brisings", {
	Name = "The Necklace of the Brisings",
	Icon = "icon-dwarven-steelclad",
	Description = "The necklace made for Modsognir's wife by a group of four dwarven smiths has been stolen! The culprits, a band of local dwarven thieves, sneaked away with the necklace last night, going back to their hideout. We must recover the necklace from these bandits!\n\nMap: Aurvang",
	RequiredQuest = "the-treasures-of-svarinshaug",
	World = "Nidavellir",
	Civilization = "dwarf",
	TechnologyPoints = 3,
	Map = "maps/nidavellir/aurvang.smp",
	Scenario = "scripts/civilizations/dwarf/scenarios/the_necklace_of_the_brisings.lua",
	PlayerColor = "black",
	LoadingMusic = "DwarfLoading",
--	MapMusic = "DwarfTheme4"
})

DefineQuest("the-binding-of-grafvitnir", {
	Name = "The Binding of Grafvitnir",
	Icon = "icon-wyrm",
	Description = "The colossal wyrm Grafvitnir threatens the survival of the fledgling dwarves, who have little chance of slaying the monstrous creature. The only hope rests in getting close enough to bind Grafvitnir with a powerful fetter crafted by the clan's talented smiths.\n\nMap: Grafvitnir's Lair",
	RequiredQuest = "the-necklace-of-the-brisings",
	World = "Nidavellir",
	Civilization = "dwarf",
	TechnologyPoints = 3,
	Map = "maps/nidavellir/grafvitnirs-lair.smp",
	Scenario = "scripts/civilizations/dwarf/scenarios/the_binding_of_grafvitnir.lua",
	PlayerColor = "black"
})

DefineQuest("the-dripping-hall", { -- based on the lay of Alvis from Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 144.
	Name = "The Dripping Hall",
	Icon = "icon-dwarven-gryphon-rider",
	Description = "We call the sky \"the dripping hall\", for the water that falls from it from time to time. The loremaster Alvis asks you to train a gryphon rider, so that we may better explore the skies.",
	World = "Nidavellir",
	Civilization = "dwarf",
	PlayerColor = "red",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "RaceName") == "dwarf" and GetPlayerData(trigger_player, "UnitTypesCount", "unit-dwarven-gryphon-rider") == 0 and CheckDependency(trigger_player, "unit-dwarven-gryphon-rider")) then -- should be made to require Alvis in the future, when he is added as a hero and there are more dwarven quests in general
			return true
		end
		return false
	end,
	CompletionEffects = function(s)
		SetPlayerData(trigger_player, "Resources", "gold", GetPlayerData(trigger_player, "Resources", "gold") + 1000)
		SetPlayerData(trigger_player, "Resources", "lumber", GetPlayerData(trigger_player, "Resources", "lumber") + 1000)
		SetPlayerData(trigger_player, "Resources", "stone", GetPlayerData(trigger_player, "Resources", "stone") + 500)
	end,
	Objectives = {"- Train a Gryphon Rider"}, -- could be changed to exploring a % of the skies? (or unpassable terrain)
	Rewards = "+1000 Gold, +1000 Lumber, +500 Stone",
	Hint = "Select a War Hall and then click on the Train Gryphon Rider button to train a gryphon rider.",
	BuildUnits = {"unit-dwarven-gryphon-rider", 1}
})

DefineQuest("the-gleamer", { -- based on the lay of Alvis from Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 144.
	Name = "The Gleamer",
	Icon = "icon-cauldron",
	Description = "We call our moon \"the Gleamer\", for its reflection of light, and our sun \"Dvalin's Deceiver\", for the dangers Dvalin faced during the day outside the safety of our underground homes. The loremaster Alvis asks you to instigate our sages to discover the secrets of the moon, the sun and the stars.",
	World = "Nidavellir",
	Civilization = "dwarf",
	PlayerColor = "red",
	Conditions = function(s)
--		if (GetPlayerData(trigger_player, "RaceName") == "dwarf" and GetPlayerData(trigger_player, "UnitTypesCount", "unit-dwarven-astrology") > 0 and GetPlayerData(trigger_player, "Allow", "upgrade-dwarven-astrology") == "A" and CheckDependency(trigger_player, "upgrade-dwarven-astrology")) then -- should be made to require Alvis in the future, when he is added as a hero and there are more dwarven quests in general
		if (GetPlayerData(trigger_player, "RaceName") == "dwarf" and GetPlayerData(trigger_player, "UnitTypesCount", "unit-dwarven-stronghold") > 0 and GetPlayerData(trigger_player, "Allow", "upgrade-dwarven-runewriting") == "A" and CheckDependency(trigger_player, "upgrade-dwarven-runewriting")) then -- should be made to require Alvis in the future, when he is added as a hero and there are more dwarven quests in general
			return true
		end
		return false
	end,
	CompletionEffects = function(s)
		SetPlayerData(trigger_player, "Resources", "gold", GetPlayerData(trigger_player, "Resources", "gold") + 1000)
		SetPlayerData(trigger_player, "Resources", "lumber", GetPlayerData(trigger_player, "Resources", "lumber") + 1000)
		SetPlayerData(trigger_player, "Resources", "stone", GetPlayerData(trigger_player, "Resources", "stone") + 500)
	end,
	Objectives = {"- Research Astrology"}, -- this technology could improve farm output, to represent better knowledge of the seasons which knowing about celestial bodies provided; that might make farms give too much food though, so it might be better for it to give a bonus to dwarven priests
	Rewards = "+1000 Gold, +1000 Lumber, +500 Stone",
	Hint = "Select a Temple and then click on the Research Astrology button to research the technology required for this quest.",
--	ResearchUpgrades = {"upgrade-dwarven-astrology"},
	Hidden = true
})

DefineQuest("the-days-refuge", { -- based on the lay of Alvis from Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 144-145.
	Name = "The Day's Refuge",
	Icon = "icon-norse-runewriting",
	Description = "We call the calm \"the day's refuge\", for the peace and safety enjoyed under the earth in our homes. The loremaster Alvis asks you to promote the invention of a system of writing, so that we may write treatises and learn more about the art of diplomacy and peace-making.",
	World = "Nidavellir",
	Civilization = "dwarf",
	PlayerColor = "red",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "RaceName") == "dwarf" and GetPlayerData(trigger_player, "UnitTypesCount", "unit-dwarven-stronghold") > 0 and GetPlayerData(trigger_player, "Allow", "upgrade-dwarven-runewriting") == "A" and CheckDependency(trigger_player, "upgrade-dwarven-runewriting")) then -- should be made to require Alvis in the future, when he is added as a hero and there are more dwarven quests in general
			return true
		end
		return false
	end,
	CompletionEffects = function(s)
		SetPlayerData(trigger_player, "Resources", "gold", GetPlayerData(trigger_player, "Resources", "gold") + 1000)
		SetPlayerData(trigger_player, "Resources", "lumber", GetPlayerData(trigger_player, "Resources", "lumber") + 1000)
		SetPlayerData(trigger_player, "Resources", "stone", GetPlayerData(trigger_player, "Resources", "stone") + 500)
	end,
	Objectives = {"- Research Dvalic Runewriting"},
	Rewards = "+1000 Gold, +1000 Lumber, +500 Stone",
	Hint = "Select a Bastion and then click on the Research Dvalic Runewriting button to research the technology required for this quest.",
	ResearchUpgrades = {"upgrade-dwarven-runewriting"},
	Hidden = true
})

DefineQuest("the-deep", { -- based on the lay of Alvis from Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 145.
	Name = "The Deep",
	Icon = "icon-dwarven-transport-ship",
	Description = "We call the sea \"the deep\", for the profoundity of its waters. The loremaster Alvis asks you to build a ship, so that we may better explore the seas.",
	World = "Nidavellir",
	Civilization = "dwarf",
	PlayerColor = "red",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "RaceName") == "dwarf" and GetPlayerData(trigger_player, "UnitTypesCount", "unit-dwarven-dock") > 0 and GetPlayerData(trigger_player, "UnitTypesCount", "unit-dwarven-transport-ship") == 0 and CheckDependency(trigger_player, "unit-dwarven-transport-ship")) then -- should be made to require Alvis in the future, when he is added as a hero and there are more dwarven quests in general
			return true
		end
		return false
	end,
	CompletionEffects = function(s)
		SetPlayerData(trigger_player, "Resources", "gold", GetPlayerData(trigger_player, "Resources", "gold") + 1000)
		SetPlayerData(trigger_player, "Resources", "lumber", GetPlayerData(trigger_player, "Resources", "lumber") + 1000)
		SetPlayerData(trigger_player, "Resources", "stone", GetPlayerData(trigger_player, "Resources", "stone") + 500)
	end,
	Objectives = {"- Build a Transport"}, -- could be changed to be about exploring a % of the seas, or finding a certain neutral building in the seas or shores
	Rewards = "+1000 Gold, +1000 Lumber, +500 Stone",
	Hint = "Select a Dock and then click on the Build Transport button to build a transport ship.",
	BuildUnits = {"unit-dwarven-transport-ship", 1}
})

DefineQuest("the-burner", { -- based on the lay of Alvis from Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 145.
	Name = "The Burner",
	Icon = "icon-cauldron",
	Description = "We call fire \"the burner\", for the damage it inflicts on the body. The loremaster Alvis asks you to instigate our sages to discover the secrets of making potent flammable liquids.",
	World = "Nidavellir",
	Civilization = "dwarf",
	PlayerColor = "red",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "RaceName") == "dwarf" and GetPlayerData(trigger_player, "UnitTypesCount", "unit-dwarven-stronghold") > 0 and GetPlayerData(trigger_player, "Allow", "upgrade-dwarven-alchemy") == "A" and CheckDependency(trigger_player, "upgrade-dwarven-alchemy")) then -- should be made to require Alvis in the future, when he is added as a hero and there are more dwarven quests in general
			return true
		end
		return false
	end,
	CompletionEffects = function(s)
		SetPlayerData(trigger_player, "Resources", "gold", GetPlayerData(trigger_player, "Resources", "gold") + 1000)
		SetPlayerData(trigger_player, "Resources", "lumber", GetPlayerData(trigger_player, "Resources", "lumber") + 1000)
		SetPlayerData(trigger_player, "Resources", "stone", GetPlayerData(trigger_player, "Resources", "stone") + 500)
	end,
	Objectives = {"- Research Alchemy"},
	Rewards = "+1000 Gold, +1000 Lumber, +500 Stone",
	Hint = "Select a Bastion and then click on the Research Alchemy button to research the technology required for this quest.",
	ResearchUpgrades = {"upgrade-dwarven-alchemy"}
})

DefineQuest("the-weaver-of-dreams", { -- based on the lay of Alvis from Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 145.
	Name = "The Weaver of Dreams",
	Icon = "icon-dwarven-temple",
	Description = "We call the night \"the weaver of dreams\", for the figments wrought into our minds as we sleep at night. The loremaster Alvis asks you to build a temple, so that we may train priests skilled in discerning visions from the dreamworld.",
	World = "Nidavellir",
	Civilization = "dwarf",
	PlayerColor = "red",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "RaceName") == "dwarf" and GetPlayerData(trigger_player, "UnitTypesCount", "unit-dwarven-temple") == 0 and CheckDependency(trigger_player, "unit-dwarven-temple")) then -- should be made to require Alvis in the future, when he is added as a hero and there are more dwarven quests in general
			return true
		end
		return false
	end,
	CompletionEffects = function(s)
		SetPlayerData(trigger_player, "Resources", "gold", GetPlayerData(trigger_player, "Resources", "gold") + 1000)
		SetPlayerData(trigger_player, "Resources", "lumber", GetPlayerData(trigger_player, "Resources", "lumber") + 1000)
		SetPlayerData(trigger_player, "Resources", "stone", GetPlayerData(trigger_player, "Resources", "stone") + 500)
	end,
	Objectives = {"- Build a Temple"},
	Rewards = "+1000 Gold, +1000 Lumber, +500 Stone",
	Hint = "Select a Miner, press the Build Structure button and then click on the Build Temple button to build a temple.",
	BuildUnits = {"unit-dwarven-temple", 1}
})

DefineQuest("the-tomb-of-durahn-eikinskjaldi", {
	Name = "The Tomb of Durahn Eikinskjaldi",
	Icon = "icon-dwarven-shield-3",
	Description = "The dwarves of the Eikinskjaldi Clan need to recover Durahn Eikinskjaldi's skull to prove their claim in the lordship of Joruvellir, but Durahn's tomb has fallen prey to a band of gnomish raiders...\n\nMap: Tomb of Durahn Eikinskjaldi",
	RequiredQuest = "the-binding-of-grafvitnir",
	World = "Nidavellir",
	Civilization = "dwarf",
	TechnologyPoints = 2,
	Map = "maps/nidavellir/tomb-of-durahn-eikinskjaldi.smp",
	Scenario = "scripts/civilizations/dwarf/scenarios/the_tomb_of_durahn_eikinskjaldi.lua",
	PlayerColor = "brown"
})

DefineQuest("shorbear-hold", {
	Name = "Shorbear Hold",
	Icon = "icon-dwarven-stronghold",
	Description = "Our clan is renowned for its toolmaking and engineering prowess. Our skills would be well put to use in the construction of a stronghold to protect us against our enemies.",
	World = "Nidavellir",
	Civilization = "dwarf",
	PlayerColor = "blue",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "Shorbear Clan" and GetPlayerData(trigger_player, "UnitTypesCount", "unit-dwarven-stronghold") == 0 and CheckDependency(trigger_player, "unit-dwarven-stronghold") and GetPlayerData(trigger_player, "UnitTypesCount", "unit-dwarven-town-hall") > 0 and GetUniqueItemData("shorbear-hold", "CanDrop")) then
			return true
		end
		return false
	end,
	CompletionEffects = function(s)
		SetUnitVariable(FindUnit("unit-dwarven-stronghold", trigger_player), "Unique", "shorbear-hold")
	end,
	Objectives = {"- Build a Bastion"},
	Rewards = "The Bastion will become the Shorbear Hold unique building",
	Hint = "Select a Mead Hall and then click on the Upgrade to Bastion button to transform it into a bastion.",
	BuildUnits = {"unit-dwarven-stronghold", 1}
})

DefineQuest("a-bargain-is-struck", {
	Name = "A Bargain is Struck",
	Icon = "icon-rugnur",
	Description = "A gnomish monarch arrives at a small border outpost led by Rugnur, asking that his clan craft a special scepter for him.\n\nMap: Chaincolt Foothills",
	RequiredQuest = "the-tomb-of-durahn-eikinskjaldi",
	World = "Nidavellir",
	Civilization = "dwarf",
	TechnologyPoints = 2,
	Map = "maps/nidavellir/chaincolt-foothills.smp",
	Scenario = "scripts/civilizations/dwarf/scenarios/a_bargain_is_struck.lua",
	PlayerColor = "red",
	MapMusic = "ABargainIsStruck"
})

DefineQuest("closing-the-gates", {
	Name = "Closing the Gates",
	Icon = "icon-baglur",
	Description = "Having retreated from the raiders' onslaught, Rugnur reaches the gates of his clan's tunnels.\n\nMap: Caverns of Chaincolt",
	RequiredQuest = "a-bargain-is-struck",
	World = "Nidavellir",
	Civilization = "dwarf",
	TechnologyPoints = 2,
	Map = "maps/nidavellir/caverns-of-chaincolt.smp",
	Scenario = "scripts/civilizations/dwarf/scenarios/closing_the_gates.lua",
	PlayerColor = "red",
	MapMusic = "ClosingTheGates"
})

DefineQuest("searching-for-the-runecrafter", {
	Name = "Searching for the Runecrafter",
	Icon = "icon-thursagan",
	Description = "Rugnur's expedition reaches the northlands, and begin to search for the runesmith named Thursagan - the sage of fire.\n\nMap: Northern Wastelands",
	RequiredQuest = "closing-the-gates",
	World = "Nidavellir",
	Civilization = "dwarf",
	TechnologyPoints = 2,
	Map = "maps/nidavellir/northern-wastelands.smp",
	Scenario = "scripts/civilizations/dwarf/scenarios/searching_for_the_runecrafter.lua",
	PlayerColor = "red",
	MapMusic = "SearchingForTheRunecrafter"
})

DefineQuest("gathering-materials", {
	Name = "Gathering Materials",
	Icon = "icon-dwarven-miner",
	Description = "Rugnur and his brave companions, having spent two years harvesting materials in the tunnels of the eastern mines, now venture into the very heart of the goblins' territory to obtain the last materials needed...\n\nMap: Eastern Mines",
	RequiredQuest = "searching-for-the-runecrafter",
	World = "Nidavellir",
	Civilization = "dwarf",
	TechnologyPoints = 2,
	Map = "maps/nidavellir/eastern-mines.smp",
	Scenario = "scripts/civilizations/dwarf/scenarios/gathering_materials.lua",
	PlayerColor = "red",
	MapMusic = "GatheringMaterials"
})

DefineQuest("hills-of-the-shorbear-clan", {
	Name = "Hills of the Shorbear Clan",
	Icon = "icon-durstorn",
	Description = "Durstorn, Rugnur and their companions travel to the hills of the Shorbear Clan, seeking access to that tribe's magnificent tools, which are needed to craft the Scepter of Fire.\n\nMap: Shorbear Hills",
	RequiredQuest = "gathering-materials",
	World = "Nidavellir",
	Civilization = "dwarf",
	TechnologyPoints = 3,
	Map = "maps/nidavellir/shorbear-hills.smp",
	Scenario = "scripts/civilizations/dwarf/scenarios/hills_of_the_shorbear_clan.lua",
	PlayerColor = "red",
	MapMusic = "HillsOfTheShorbearClan"
})

DefineQuest("the-wyrm", {
	Name = "The Wyrm",
	Icon = "icon-wyrm-vicious",
	Description = "Rugnur's dwarves delve deep into underground caves, seeking to escape from the Shinsplitter Clan. However, the section of the old eastern mines that they reached had long since become the lair of Svafnir... the wyrm.\n\nMap: Svafnir's Lair",
	RequiredQuest = "hills-of-the-shorbear-clan",
	World = "Nidavellir",
	Civilization = "dwarf",
	TechnologyPoints = 2,
	Map = "maps/nidavellir/svafnirs-lair.smp",
	Scenario = "scripts/civilizations/dwarf/scenarios/the_wyrm.lua",
	PlayerColor = "red",
	MapMusic = "TheWyrm"
})

DefineQuest("caverns-of-flame", {
	Name = "Caverns of Flame",
	Icon = "icon-goblin-swordsman",
	Description = "Rugnur and his companions reach deep into the Caverns of Flame, where they find an ancient dwarven mechanism which may just allow them to prevent the Shinsplitters from getting their hands on the Scepter.\n\nMap: Caverns of Flame",
	RequiredQuest = "the-wyrm",
	World = "Nidavellir",
	Civilization = "dwarf",
	TechnologyPoints = 2,
	Map = "maps/nidavellir/caverns-of-flame.smp",
	Scenario = "scripts/civilizations/dwarf/scenarios/caverns_of_flame.lua",
	PlayerColor = "red",
	MapMusic = "CavernsOfFlame"
})

--[[
DefineQuest("last-stand-at-the-forge", {
	Name = "Last Stand at the Forge",
	Icon = "icon-dwarven-smithy",
	Description = "Goblins are overruning dwarven settlements in the region of the Caverns of Flame. The volcanic forge must be defended, lest the goblins be able to use it to craft wondrous weapon with which they could inflict even more damage on dwarven societies.\n\nMap: Svafnir's Lair",
	RequiredTechnology = "upgrade-dwarven-alchemy",
	World = "Nidavellir",
	Civilization = "dwarf",
	TechnologyPoints = 1,
	Map = "maps/nidavellir/svafnirs-lair.smp",
	PlayerColor = "red"
})
--]]

DefineQuest("andvaris-gold", {
	Name = "Andvari's Gold",
	Icon = "icon-gold",
	Description = "Regin has asked you to help him take Andvari's gold forcibly, giving promises of great wealth.",
	World = "Nidavellir",
	Civilization = "dwarf",
	RequiredQuest = "the-binding-of-grafvitnir", -- this happens long after Modsognir's time
	QuestGiver = "Regin",
	Area = "Andvari's Falls",
	StartSpeech = "Listen... there is a dwarf who lives near here, called Andvari. He has gathered a large gold hoard, by methods unknown. For me alone, it would be too risky to wrest the gold from Andvari. But with your help... can I count on it?",
	InProgressSpeech = "We shall be very wealthy!",
	CompletionSpeech = "The hoard is nowhere to be found! Wait, I see some kobold equipment has been left here in their rush to take the hoard away... I think I can identify the tribe they belong to.",
	Hidden = true
})

DefineQuest("fafnirs-hoard", {
	Name = "Fafnir's Hoard",
	Icon = "icon-wyrm-vicious",
	Description = "Andvari's gold hoard has been taken by the kobolds who care for the wyrm Fafnir. If you and Regin are to recover the gold, you must enter Fafnir's perilous domain and slay the giant beast.",
	World = "Nidavellir",
	Civilization = "dwarf",
	RequiredQuest = "andvaris-gold",
	QuestGiver = "Regin",
	Area = "Gnitaheith",
	StartSpeech = "Andvari's gold hoard was taken by a group of treacherous kobolds, who took it to the lair of their wyrm, Fafnir. To recover the precious metal, we must enter the wyrm's lair.",
	InProgressSpeech = "Fafnir is a vicious creature - be on your guard!",
	CompletionSpeech = "Excellent! So much gold... Ah, and this ring of red gold, so beautiful...",
	Hidden = true
})

DefineQuest("mushroom-fields", { -- inspired by the dialogue in Battle for Wesnoth: Northern Rebirth (Infested Caves)
	Name = "Mushroom Fields",
	Icon = "icon-dwarven-mushroom-farm",
	Description = "The harsh soil of Nidavellir supports little life. Long ago, our people learned how to grow mushrooms as a nutritive source of sustenance, which has allowed us to survive and multiply. We would do well to build a few mushroom farms to support ourselves here.",
	World = "Nidavellir",
	Civilization = "dwarf",
	PlayerColor = "red",
	Conditions = function(s)
--		if (GetPlayerData(trigger_player, "Faction") == "Knalga") then
		if (GetPlayerData(trigger_player, "RaceName") == "dwarf") then -- allow for all Dwarven factions for now, since they don't have many quests
			return true
		end
		return false
	end,
	CompletionEffects = function(s)
		SetPlayerData(trigger_player, "Resources", "gold", GetPlayerData(trigger_player, "Resources", "gold") + 1500)
	end,
	Objectives = {"- Build 3 Mushroom Farms"},
	Rewards = "+1500 Gold",
	Hint = "Select a Miner, press the Build Structure button and then click on the Build Mushroom Farm button to build a mushroom farm.",
	BuildUnits = {"unit-dwarven-mushroom-farm", 3}
})


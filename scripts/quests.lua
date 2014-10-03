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
--      quests.lua - Defines quests.
--
--      (c) Copyright 2013-2014 by Andre Novellino Gouvêa
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

Quests = {
	OnTheVanaquisl = {
		Name = "On the Vanaquisl",
		Icon = "germanic/icons/short_sword", -- should be an Erala instead
		Description = "Having assembled a great army, we are to attack the people of Vanaland and take their lands into our possession.\n\nMap: Don Basin\n\nRewards: 2 Germanic Technology Points, Jutland Map.",
		Civilization = "germanic",
		TechnologyPoints = 2,
		Map = "Don Basin",
		X = 1,
		Y = 2,
		PlayerColor = "orange"
	},
	ABargainIsStruck = {
		Name = "A Bargain is Struck",
		Icon = "dwarf/icons/rugnur",
		Description = "A gnomish monarch arrives at a small border outpost led by Rugnur, asking that his clan craft a special scepter for him.\n\nMap: Chaincolt Foothills\n\nRewards: 2 Dwarven Technology Points, Caverns of Chaincolt Map.",
		Civilization = "dwarf",
		TechnologyPoints = 2,
		Map = "Chaincolt Foothills",
		X = 1,
		Y = 1,
		PlayerColor = "red"
	},
	ClosingTheGates = {
		Name = "Closing the Gates",
		Icon = "dwarf/icons/baglur",
		Description = "Having retreated from the raiders' onslaught, Rugnur reaches the gates of his clan's tunnels.\n\nMap: Caverns of Chaincolt\n\nRewards: 2 Dwarven Technology Points, Northern Wastelands Map.",
		RequiredQuest = "A Bargain is Struck",
		Civilization = "dwarf",
		TechnologyPoints = 2,
		Map = "Caverns of Chaincolt",
		X = 2,
		Y = 1,
		PlayerColor = "red"
	},
	SearchingForTheRunecrafter = {
		Name = "Searching for the Runecrafter",
		Icon = "dwarf/icons/thursagan",
		Description = "Rugnur's expedition reaches the northlands, and begin to search for the runesmith named Thursagan - the sage of fire.\n\nMap: Northern Wastelands\n\nRewards: 2 Dwarven Technology Points, Eastern Mines Map.",
		RequiredQuest = "Closing the Gates",
		Civilization = "dwarf",
		TechnologyPoints = 2,
		Map = "Northern Wastelands",
		X = 3,
		Y = 1,
		PlayerColor = "red"
	},
	GatheringMaterials = {
		Name = "Gathering Materials",
		Icon = "dwarf/icons/miner",
		Description = "Rugnur and his brave companions, having spent two years harvesting materials in the tunnels of the eastern mines, now venture into the very heart of the goblins' territory to obtain the last materials needed...\n\nMap: Eastern Mines\n\nRewards: 2 Dwarven Technology Points, Shorbear Hills Map.",
		RequiredQuest = "Searching for the Runecrafter",
		Civilization = "dwarf",
		TechnologyPoints = 2,
		Map = "Eastern Mines",
		X = 4,
		Y = 1,
		PlayerColor = "red"
	},
	HillsOfTheShorbearClan = {
		Name = "Hills of the Shorbear Clan",
		Icon = "dwarf/icons/durstorn",
		Description = "Durstorn, Rugnur and their companions travel to the hills of the Shorbear Clan, seeking access to that tribe's magnificent tools, which are needed to craft the Scepter of Fire.\n\nMap: Shorbear Hills\n\nRewards: 2 Dwarven Technology Points, Wyrm's Lair Map.",
		RequiredQuest = "Gathering Materials",
		Civilization = "dwarf",
		TechnologyPoints = 2,
		Map = "Shorbear Hills",
		X = 5,
		Y = 1,
		PlayerColor = "red"
	},
	TheWyrm = {
		Name = "The Wyrm",
		Icon = "neutral/icons/wyrm_vicious",
		Description = "Rugnur's dwarves dwelve deep into underground caves, seeking to escape from the Shinsplitter Clan. Unfortunately for them, the section of the old eastern mines that they reached in their flight had long since become the lair of Svafnir... the wyrm.\n\nMap: Wyrm's Lair\n\nRewards: 2 Dwarven Technology Points, Caverns of Flame Map.",
		RequiredQuest = "Hills of the Shorbear Clan",
		Civilization = "dwarf",
		TechnologyPoints = 2,
		Map = "Svafnir's Lair",
		X = 6,
		Y = 1,
		PlayerColor = "red"
	},
	CavernsOfFlame = {
		Name = "Caverns of Flame",
		Icon = "goblin/icons/goblin_spearman",
		Description = "Rugnur and his companions reach deep into the Caverns of Flame, where they find an ancient dwarven mechanism which may just allow them to prevent the Shinsplitters from getting their hands on the Scepter.\n\nMap: Caverns of Flame\n\nRewards: 2 Dwarven Technology Points.",
		RequiredQuest = "The Wyrm",
		Civilization = "dwarf",
		TechnologyPoints = 2,
		Map = "Caverns of Flame",
		X = 7,
		Y = 1,
		PlayerColor = "red"
	},
	LastStandAtTheForge = {
		Name = "Last Stand at the Forge",
		Icon = "dwarf/icons/smith",
		Description = "Goblins are overruning dwarven settlements in the region of the Caverns of Flame. The volcanic forge must be defended, lest the goblins be able to use it to craft wondrous weapon with which they could inflict even more damage on dwarven societies.\n\nMap: Svafnir's Lair\n\nRewards: 1 Dwarven Technology Point.",
		RequiredTechnology = "upgrade-dwarven-alchemy",
		Civilization = "dwarf",
		TechnologyPoints = 1,
		Map = "Svafnir's Lair",
		X = 8,
		Y = 1,
		PlayerColor = "red"
	},
	TheMeadOfPoetry = {
		Name = "The Mead of Poetry",
		Icon = "dwarf/icons/alchemy",
		Description = "\n\nMap: Fjalar's and Galar's Hall\n\nRewards: 2 Dwarven Technology Points.",
		RequiredTechnology = "upgrade-dwarven-alchemy",
		Civilization = "dwarf",
		TechnologyPoints = 2,
		Map = "Fjalar's and Galar's Hall",
		X = 9,
		Y = 1,
		PlayerColor = "red"
	}
}

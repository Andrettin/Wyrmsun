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
	ABargainIsStruck = {
		Name = "A Bargain is Struck",
		Icon = "dwarf/icons/rugnur",
		Description = "A gnomish monarch arrives at a small border outpost led by Rugnur, asking that his clan craft a special scepter for him.\n\nMap: Chaincolt Foothills\n\nRewards: 2 Dwarven Technology Points, Caverns of Chaincolt Map, Rugnur (Hero).",
		Civilization = "dwarf",
		TechnologyPoints = 2,
		Map = "Chaincolt Foothills",
		X = 1,
		Y = 1
	},
	ClosingTheGates = {
		Name = "Closing the Gates",
		Icon = "dwarf/icons/baglur",
		Description = "Having retreated from the raiders' onslaught, Rugnur reaches the gates of his clan's tunnels.\n\nMap: Caverns of Chaincolt\n\nRewards: 2 Dwarven Technology Points, Northern Wastelands Map, Baglur (Hero).",
		RequiredQuest = "A Bargain is Struck",
		Civilization = "dwarf",
		TechnologyPoints = 2,
		Map = "Caverns of Chaincolt",
		X = 2,
		Y = 1
	},
	SearchingForTheRunecrafter = {
		Name = "Searching for the Runecrafter",
		Icon = "dwarf/icons/thursagan",
		Description = "Rugnur's expedition reaches the northlands, and begin to search for the runesmith named Thursagan - the sage of fire.\n\nMap: Northern Wastelands\n\nRewards: 2 Dwarven Technology Points, Eastern Mines Map (Coming Soon), Thursagan (Hero).",
		RequiredQuest = "Closing the Gates",
		Civilization = "dwarf",
		TechnologyPoints = 2,
		Map = "Northern Wastelands",
		X = 3,
		Y = 1
	},
	GatheringMaterials = {
		Name = "Gathering Materials",
		Icon = "dwarf/icons/miner",
		Description = "\n\nMap: Eastern Mines\n\nRewards: 2 Dwarven Technology Points, Shorbear Hills Map (Coming Soon).",
		RequiredQuest = "Searching for the Runecrafter (Coming Soon)", -- added the "(Coming Soon)" here to prevent the quest from showing up before it's ready
		Civilization = "dwarf",
		TechnologyPoints = 2,
		Map = "Eastern Mines",
		X = 4,
		Y = 1
	},
	HillsOfTheShorbearClan = {
		Name = "Hills of the Shorbear Clan",
		Icon = "dwarf/icons/durstorn",
		Description = "\n\nMap: Shorbear Hills\n\nRewards: 1 Dwarven Technology Point, Durstorn (Hero).",
		RequiredQuest = "Gathering Materials",
		Civilization = "dwarf",
		TechnologyPoints = 1,
		Map = "Shorbear Hills",
		X = 5,
		Y = 1
	},
	TowardsTheCaves = {
		Name = "Towards the Caves",
		Icon = "dwarf/icons/rugnur_older",
		Description = "\n\nMap: Shorbear Hills\n\nRewards: 1 Dwarven Technology Point.",
		RequiredQuest = "Hills of the Shorbear Clan",
		Civilization = "dwarf",
		TechnologyPoints = 1,
		Map = "Shorbear Hills",
		X = 6,
		Y = 1
	},
	TheWyrm = {
		Name = "The Wyrm",
		Icon = "neutral/icons/wyrm",
		Description = "\n\nMap: Wyrm's Lair\n\nRewards: 2 Dwarven Technology Points.",
		RequiredQuest = "Towards the Caves",
		Civilization = "dwarf",
		TechnologyPoints = 2,
		Map = "Wyrm's Lair",
		X = 7,
		Y = 1
	},
	CavernsOfFlame = {
		Name = "Caverns of Flame",
		Icon = "dwarf/icons/scepter_of_fire",
		Description = "\n\nMap: Caverns of Flame\n\nRewards: 2 Dwarven Technology Points.",
		RequiredQuest = "The Wyrm",
		Civilization = "dwarf",
		TechnologyPoints = 2,
		Map = "Caverns of Flame",
		X = 8,
		Y = 1
	},
	TheMeadOfPoetry = {
		Name = "The Mead of Poetry",
		Icon = "dwarf/icons/alchemy",
		Description = "\n\nMap: Fjalar's and Galar's Hall\n\nRewards: 2 Dwarven Technology Points, Fjalar (Hero), Galar (Hero), Thjodrorir (Hero).",
		RequiredTechnology = "upgrade-dwarven-alchemy",
		Civilization = "dwarf",
		TechnologyPoints = 2,
		Map = "Fjalar's and Galar's Hall",
		X = 9,
		Y = 1
	}
}

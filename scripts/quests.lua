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
	{ "A Bargain is Struck", -- name
		"dwarf/icons/rugnur", -- icon
		"A gnomish monarch arrives at a small border outpost led by Rugnur, asking that his clan craft a special scepter for him.\n\nMap: Chaincolt Foothills\n\nRewards: 2 Dwarven Technology Points, Caverns of Chaincolt Map, Rugnur (Hero).", -- description
		"", -- required quest
		"dwarf", -- civilization
		2, -- technology point reward
		"Chaincolt Foothills"
	},
	{ "Closing the Gates",
		"dwarf/icons/baglur",
		"Having retreated from the raiders' onslaught, Rugnur reaches the gates of his clan's tunnels.\n\nMap: Caverns of Chaincolt\n\nRewards: 2 Dwarven Technology Points, Northern Wastelands Map, Baglur (Hero).",
		"A Bargain is Struck",
		"dwarf",
		2,
		"Caverns of Chaincolt"
	},
	{ "Searching for the Runecrafter",
		"dwarf/icons/thursagan",
		"Rugnur's expedition reaches the northlands, and begin to search for the runesmith named Thursagan - the sage of fire.\n\nMap: Northern Wastelands\n\nRewards: 2 Dwarven Technology Points, Eastern Mines Map (Coming Soon), Thursagan (Hero).",
		"Closing the Gates",
		"dwarf",
		2,
		"Northern Wastelands"
	},
	{ "Gathering Materials",
		"dwarf/icons/miner",
		"\n\nMap: Eastern Mines\n\nRewards: 2 Dwarven Technology Points, Shorbear Hills Map (Coming Soon).",
		"Searching for the Runecrafter (Coming Soon)", -- added the "(Coming Soon)" here to prevent the quest from showing up before it's ready
		"dwarf",
		2,
		"Eastern Mines"
	},
	{ "Hills of the Shorbear Clan",
		"dwarf/icons/durstorn",
		"\n\nMap: Shorbear Hills\n\nRewards: 1 Dwarven Technology Point, Durstorn (Hero).",
		"Gathering Materials",
		"dwarf",
		1,
		"Shorbear Hills"
	},
	{ "Towards the Caves",
		"dwarf/icons/rugnur_older",
		"\n\nMap: Shorbear Hills\n\nRewards: 1 Dwarven Technology Point.",
		"Hills of the Shorbear Clan",
		"dwarf",
		1,
		"Shorbear Hills"
	},
	{ "The Wyrm",
		"neutral/icons/wyrm",
		"\n\nMap: Wyrm's Lair\n\nRewards: 2 Dwarven Technology Points.",
		"Towards the Caves",
		"dwarf",
		2,
		"Wyrm's Lair"
	},
	{ "Caverns of Flame",
		"dwarf/icons/blacksmith",
		"\n\nMap: Caverns of Flame\n\nRewards: 2 Dwarven Technology Points.",
		"The Wyrm",
		"dwarf",
		2,
		"Caverns of Flame"
	}
}

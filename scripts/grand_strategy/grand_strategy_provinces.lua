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
--      (c) Copyright 2015-2018 by Andrettin
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

WorldMapProvinces = {}
WorldMapWaterProvinces = {}

function LoadProvinces(world)
	local EarthProvinces = {
		Jutland = {
			Name = "Jutland",
			Units = {
				unit_germanic_warrior = 4,
				unit_germanic_archer = 2
			}
		}
	}
	
	local NidavellirProvinces = {
		Aurvang = {
			Name = "Aurvang",
			Units = { -- Dwarven bandits
				unit_dwarven_steelclad = 1,
				unit_dwarven_axefighter = 3
			}
		},
		CavernsofChaincolt = {
			Name = "Caverns of Chaincolt",
			Units = {
				unit_goblin_spearman = 4
			}
		},
		CavernsofFlame = {
			Name = "Caverns of Flame",
			Civilization = "goblin",
			Units = { -- starting units in the Caverns of Flame scenario
				unit_goblin_spearman = 10, -- 2 orcish warlords, 2 troll warriors, 2 trolls, 4 orcish warriors
				unit_goblin_war_machine = 1
			}
		},
		EasternMines = {
			Name = "Eastern Mines",
			Civilization = "goblin",
			Units = {
	--			unit_goblin_spearman = 3 -- three starting chieftains in the Gathering Materials scenario
				unit_goblin_spearman = 9 * 2 -- three starting chieftains in the Gathering Materials scenario, plus 2 goblins for each tribe and multiplied by 2 to prevent too early expansion into this province
			}
		},
		GryphonMountain = {
			Name = "Gryphon Mountain",
			Units = { -- wild units in the Gryphon Mountain scenario
				unit_dwarven_gryphon_rider = 6 -- Mother Gryphon, Graak, Grook, Gruak, Graik, Griak
			}
		},
		Heartfangs = {
			Name = "Heartfangs",
			Owner = "khag-tribe",
			Civilization = "goblin",
			Units = {
				unit_goblin_spearman = 5 -- Fal Khag, Gatrakh, Thurg, Krung, Gorokh (should all be cavalry)
			}
		},
		HighPass = {
			Name = "High Pass",
			Units = { -- wild units in the High Pass scenario
				unit_goblin_spearman = 10, -- 10 uses of the WILD_THING function which generates trolls, ogres and wolves
				unit_dwarven_gryphon_rider = 1 -- Kaara
			}
		},
		HighbrookPass = {
			Name = "Highbrook Pass",
			Units = { -- starting units in the Settling Disputes scenario
				unit_dwarven_axefighter = 0,
				unit_dwarven_steelclad = 0,
				unit_dwarven_thane = 0,
				unit_goblin_spearman = 4 * 3, -- one troll, two young ogres, one ogre -- multiply by three to prevent dwarven expansion here too early
				unit_goblin_archer = 2 * 3 -- two liches
			}
		},
		Joruvellir = {
			Name = "Joruvellir",
			Units = {
				unit_goblin_spearman = 6, -- some enemy goblins
				unit_goblin_archer = 3
			}
		},
		KalKartha = {
			Name = "Kal Kartha",
			Units = { -- some wild gnomes from the Forbidden Forest to stop too early expansion into this province
				unit_dwarven_axefighter = 0,
				unit_dwarven_steelclad = 0,
				unit_dwarven_thane = 0,
				unit_gnomish_recruit = 4
			}
		},
		Lyr = {
			Name = "Lyr",
			Units = { -- some wild dwarves to stop too early expansion into this province
				unit_dwarven_axefighter = 12
			}
		},
		NorthernWastelands = {
			Name = "Northern Wastelands",
			Civilization = "goblin",
			Units = { -- numbers derived from 3 goblins per 13 groups which appear in the map during the Searching for the Runecrafter quest (the 2 other goblins which appear in the NorthernWastelandsEnemy() function were added for balance reasons)
				unit_goblin_spearman = 26,
				unit_goblin_archer = 13
			}
		},
		PeacefulValley = {
			Name = "Peaceful Valley",
			Owner = "lggi-tribe",
			Civilization = "goblin",
			Units = {
				unit_goblin_spearman = 14 -- 13 is the quantity of villages in Peaceful Valley map (each can generate 0-2 goblin spearmen) + T'shar Lggi himself
			}
		},
		ShorbearHills = {
			Name = "Shorbear Hills",
			Units = {
				unit_goblin_spearman = 4
			}
		},
		SouthernTunnels = {
			Name = "Southern Tunnels",
			Units = {
				unit_goblin_spearman = 4
			}
		},
		Untersberg = {
			Name = "Untersberg",
			Units = {
				unit_gnomish_duelist = 1 -- Pypo's envoy
			}
		}
	}
end

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
--      grand_strategy_factions.lua - Defines the grand strategy factions.
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

function LoadFactions(world)
	Factions = nil
	Factions = {}

	local EarthFactions = {
		-- Germanic tribes
		asa_tribe = {
			Name = "asa-tribe",
			Civilization = "germanic",
			Copper = 3000,
			Commodities = {
				Lumber = 1500, -- half of the copper value
				Stone = 1500 -- half of the copper value
			}
		},
		-- Latin polities
		rome = {
			Name = "rome",
			Civilization = "latin",
			Copper = 5000
		},
		-- Non-Playable Tribes
		gylfing_tribe = {
			Name = "gylfing-tribe",
			Civilization = "basque",
			Copper = 5000,
			Commodities = {
				Lumber = 2500, -- half of the copper value
				Stone = 2500 -- half of the copper value
			}
		},
		vana_tribe = {
			Name = "vana-tribe",
			Civilization = "celt",
			Copper = 5000,
			Commodities = {
				Lumber = 2500, -- half of the copper value
				Stone = 2500 -- half of the copper value
			}
		}
	}
	
	local NidavellirFactions = {
		untersberg = {
			Name = "untersberg",
			Civilization = "gnome",
			Copper = 7500,
			Commodities = {
				Lumber = 3750, -- half of the copper value
				Stone = 3750 -- half of the copper value
			}
		},
		-- Dwarven clans
		norlund_clan = {
			Name = "norlund-clan",
			Civilization = "dwarf",
			Copper = 3000,
			Commodities = {
				Lumber = 1500, -- half of the copper value
				Stone = 1500 -- half of the copper value
			}
		},
		shinsplitter_clan = {
			Name = "shinsplitter-clan",
			Civilization = "dwarf",
			Copper = 7500,
			Commodities = {
				Lumber = 3750, -- half of the copper value
				Stone = 3750 -- half of the copper value
			}
		},
		shorbear_clan = {
			Name = "shorbear-clan",
			Civilization = "dwarf",
			Copper = 9000, -- 300 / 20 * 600 (base value divided by 20, the usual level 1 Wesnoth unit gold cost, and multiplied by 600, the basic military unit copper cost in Wyrmsun)
			Commodities = {
				Lumber = 4500, -- half of the copper value
				Stone = 4500 -- half of the copper value
			}
		},
		-- Goblin tribes
		khag_tribe = {
			Name = "khag-tribe",
			Civilization = "goblin",
			Copper = 750,
			Commodities = {
				Lumber = 375, -- half of the copper value
				Stone = 375 -- half of the copper value
			}
		},
		lggi_tribe = {
			Name = "lggi-tribe",
			Civilization = "goblin",
			Copper = 2700,
			Commodities = {
				Lumber = 1350, -- half of the copper value
				Stone = 1350 -- half of the copper value
			}
		}
	}
end

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
--      (c) Copyright 2015 by Andrettin
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
			Metal = 3000,
			Commodities = {
				Lumber = 1500, -- half of the metal value
				Stone = 1500 -- half of the metal value
			}
		},
		-- Latin polities
		rome = {
			Name = "rome",
			Civilization = "latin",
			Metal = 5000
		},
		-- Non-Playable Tribes
		gylfing_tribe = {
			Name = "gylfing-tribe",
			Civilization = "basque",
			Metal = 5000,
			Commodities = {
				Lumber = 2500, -- half of the metal value
				Stone = 2500 -- half of the metal value
			}
		},
		vana_tribe = {
			Name = "vana-tribe",
			Civilization = "celt",
			Metal = 5000,
			Commodities = {
				Lumber = 2500, -- half of the metal value
				Stone = 2500 -- half of the metal value
			}
		}
	}
	
	local NidavellirFactions = {
		untersberg = {
			Name = "untersberg",
			Civilization = "gnome",
			Metal = 7500,
			Commodities = {
				Lumber = 3750, -- half of the metal value
				Stone = 3750 -- half of the metal value
			}
		},
		-- Dwarven clans
		norlund_clan = {
			Name = "norlund-clan",
			Civilization = "dwarf",
			Metal = 3000,
			Commodities = {
				Lumber = 1500, -- half of the metal value
				Stone = 1500 -- half of the metal value
			}
		},
		shinsplitter_clan = {
			Name = "shinsplitter-clan",
			Civilization = "dwarf",
			Metal = 7500,
			Commodities = {
				Lumber = 3750, -- half of the metal value
				Stone = 3750 -- half of the metal value
			}
		},
		shorbear_clan = {
			Name = "shorbear-clan",
			Civilization = "dwarf",
			Metal = 9000, -- 300 / 20 * 600 (base value divided by 20, the usual level 1 Wesnoth unit metal cost, and multiplied by 600, the basic military unit metal cost in Wyrmsun)
			Commodities = {
				Lumber = 4500, -- half of the metal value
				Stone = 4500 -- half of the metal value
			}
		},
		-- Goblin tribes
		khag_tribe = {
			Name = "khag-tribe",
			Civilization = "goblin",
			Metal = 750,
			Commodities = {
				Lumber = 375, -- half of the metal value
				Stone = 375 -- half of the metal value
			}
		},
		lggi_tribe = {
			Name = "lggi-tribe",
			Civilization = "goblin",
			Metal = 2700,
			Commodities = {
				Lumber = 1350, -- half of the metal value
				Stone = 1350 -- half of the metal value
			}
		}
	}
	
	local civilizations = GetCivilizations()
	for i=1,table.getn(civilizations) do
		local factions = GetCivilizationFactionNames(civilizations[i])
		for j=1,table.getn(factions) do
			local faction_name = factions[j]
			local key = string.gsub(faction_name, "-", "_")
			Factions[key] = {}
			Factions[key]["Name"] = faction_name
			Factions[key]["Civilization"] = civilizations[i]
		end
	end
end

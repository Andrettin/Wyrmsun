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
--      (c) Copyright 2015 by Andre Novellino Gouvêa
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
		AsaTribe = {
			Name = "Asa Tribe",
			Civilization = "germanic",
			Gold = 3000,
			Commodities = {
				Lumber = 1500 -- half of the gold value
			}
		},
		BavarianTribe = {
			Name = "Bavarian Tribe",
			Civilization = "germanic"
		},
		BurgundianTribe = {
			Name = "Burgundian Tribe",
			Civilization = "germanic"
		},
		DaneTribe = {
			Name = "Dane Tribe",
			Civilization = "germanic"
		},
		FrankTribe = {
			Name = "Frank Tribe",
			Civilization = "germanic"
		},
		FrisianTribe = {
			Name = "Frisian Tribe",
			Civilization = "germanic"
		},
		GothTribe = {
			Name = "Goth Tribe",
			Civilization = "germanic"
		},
		MarcomanniTribe = {
			Name = "Marcomanni Tribe",
			Civilization = "germanic"
		},
		OstrogothTribe = {
			Name = "Ostrogoth Tribe",
			Civilization = "germanic"
		},
		RugianTribe = {
			Name = "Rugian Tribe",
			Civilization = "germanic"
		},
		SaxonTribe = {
			Name = "Saxon Tribe",
			Civilization = "germanic"
		},
		SuebiTribe = {
			Name = "Suebi Tribe",
			Civilization = "germanic"
		},
		SwedeTribe = {
			Name = "Swede Tribe",
			Civilization = "germanic"
		},
		VandalTribe = {
			Name = "Vandal Tribe",
			Civilization = "germanic"
		},
		VisigothTribe = {
			Name = "Visigoth Tribe",
			Civilization = "germanic"
		},
		-- Germanic polities
		Austria = {
			Name = "Austria",
			Civilization = "germanic",
			Title = "Duchy" -- later Archduchy
		},
		Bavaria = {
			Name = "Bavaria",
			Civilization = "germanic",
			Title = "Duchy"
		},
		Brandenburg = {
			Name = "Brandenburg",
			Civilization = "germanic",
			Title = "Margravate"
		},
		Burgundy = {
			Name = "Burgundy",
			Civilization = "germanic",
			Title = "Kingdom"
		},
		Denmark = {
			Name = "Denmark",
			Civilization = "germanic",
			Title = "Kingdom"
		},
		England = {
			Name = "England",
			Civilization = "germanic",
			Title = "Kingdom"
		},
		Francia = {
			Name = "Francia",
			Civilization = "germanic",
			Title = "Kingdom"
		},
		Galicia = { -- Suebi kingdom of Galicia
			Name = "Galicia",
			Civilization = "germanic",
			Title = "Kingdom"
		},
		Netherlands = {
			Name = "Netherlands",
			Civilization = "germanic",
			Title = "Republic"
		},
		Norway = {
			Name = "Norway",
			Civilization = "germanic",
			Title = "Kingdom"
		},
		Saxony = {
			Name = "Saxony",
			Civilization = "germanic",
			Title = "Duchy"
		},
		Scotland = {
			Name = "Scotland",
			Civilization = "germanic",
			Title = "Kingdom"
		},
		Sweden = {
			Name = "Sweden",
			Civilization = "germanic",
			Title = "Kingdom"
		},
		Switzerland = {
			Name = "Switzerland",
			Civilization = "germanic",
			Title = "Confederation"
		},
		TeutonicOrder = {
			Name = "Teutonic Order",
			Civilization = "germanic",
			Title = "Dominion"
		},
		Westphalia = {
			Name = "Westphalia",
			Civilization = "germanic",
			Title = "Duchy"
		},
		-- Non-Playable Tribes
		AeduiTribe = {
			Name = "Aedui Tribe",
			Civilization = "germanic"
		},
		ArverniTribe = {
			Name = "Arverni Tribe",
			Civilization = "germanic"
		},
		GylfingTribe = {
			Name = "Gylfing Tribe",
			Civilization = "germanic",
			Gold = 5000,
			Commodities = {
				Lumber = 2500 -- half of the gold value
			}
		},
		MenapiiTribe = {
			Name = "Menapii Tribe",
			Civilization = "germanic"
		},
		MinoanTribe = {
			Name = "Minoan Tribe",
			Civilization = "germanic"
		},
		PictTribe = {
			Name = "Pict Tribe",
			Civilization = "germanic"
		},
		ScotTribe = {
			Name = "Scot Tribe",
			Civilization = "germanic"
		},
		SequaniTribe = {
			Name = "Sequani Tribe",
			Civilization = "germanic"
		},
		VanaTribe = {
			Name = "Vana Tribe",
			Civilization = "germanic",
			Gold = 5000,
			Commodities = {
				Lumber = 2500 -- half of the gold value
			}
		},
		-- Non-Playable Polities
		Crete = {
			Name = "Crete",
			Civilization = "germanic",
			Title = "Kingdom"
		},
		Crimea = {
			Name = "Crimea",
			Civilization = "germanic",
			Title = "Khanate"
		},
		France = {
			Name = "France",
			Civilization = "germanic",
			Title = "Kingdom"
		},
		Moldavia = {
			Name = "Moldavia",
			Civilization = "germanic",
			Title = "Principality"
		},
		Muscovy = {
			Name = "Muscovy",
			Civilization = "germanic",
			Title = "Dominion"
		},
		Poland = {
			Name = "Poland",
			Civilization = "germanic",
			Title = "Kingdom"
		},
		Portugal = {
			Name = "Portugal",
			Civilization = "germanic",
			Title = "Kingdom"
		},
		Rome = {
			Name = "Rome",
			Civilization = "germanic",
			Title = "Republic",
			Gold = 5000
		},
		Russia = {
			Name = "Russia",
			Civilization = "germanic",
			Title = "Empire"
		},
		Spain = {
			Name = "Spain",
			Civilization = "germanic",
			Title = "Kingdom"
		},
		Transylvania = {
			Name = "Transylvania",
			Civilization = "germanic",
			Title = "Principality"
		},
		Turkey = {
			Name = "Turkey",
			Civilization = "germanic",
			Title = "Empire"
		},
		Wallachia = {
			Name = "Wallachia",
			Civilization = "germanic",
			Title = "Principality"
		}
	}
	
	local NidavellirFactions = {
		Untersberg = {
			Name = "Untersberg",
			Civilization = "gnome",
			Title = "Kingdom",
			Gold = 7500,
			Commodities = {
				Lumber = 3750 -- half of the gold value
			}
		},
		-- Dwarven clans
		NorlundClan = {
			Name = "Norlund Clan",
			Civilization = "dwarf",
			Gold = 3000,
			Commodities = {
				Lumber = 1500 -- half of the gold value
			}
		},
		ShinsplitterClan = {
			Name = "Shinsplitter Clan",
			Civilization = "dwarf",
			Gold = 7500,
			Commodities = {
				Lumber = 3750 -- half of the gold value
			}
		},
		ShorbearClan = {
			Name = "Shorbear Clan",
			Civilization = "dwarf",
			Gold = 9000, -- 300 / 20 * 600 (base value divided by 20, the usual level 1 Wesnoth unit gold cost, and multiplied by 600, the basic military unit gold cost in Wyrmsun)
			Commodities = {
				Lumber = 4500 -- half of the gold value
			}
		},
		-- Dwarven polities
		KalKartha = {
			Name = "Kal Kartha",
			Civilization = "dwarf",
			Title = "Lordship"
		},
		Knalga = {
			Name = "Knalga",
			Civilization = "dwarf",
			Title = "Lordship"
		},
		Lyr = {
			Name = "Lyr",
			Civilization = "dwarf",
			Title = "Lordship"
		},
		-- Goblin tribes
		KhagTribe = {
			Name = "Khag Tribe",
			Civilization = "goblin",
			Gold = 750,
			Commodities = {
				Lumber = 375 -- half of the gold value
			}
		},
		LggiTribe = {
			Name = "Lggi Tribe",
			Civilization = "goblin",
			Gold = 2700,
			Commodities = {
				Lumber = 1350 -- half of the gold value
			}
		}
	}
	
	local function AddFactionTable(faction_table)
		for key, value in pairs(faction_table) do
			Factions[key] = {}
			Factions[key]["Name"] = faction_table[key].Name
			Factions[key]["Civilization"] = faction_table[key].Civilization
			if (faction_table[key].Title ~= nil) then
				Factions[key]["Title"] = faction_table[key].Title
			end
			if (faction_table[key].Gold ~= nil) then
				Factions[key]["Gold"] = faction_table[key].Gold
			end
			Factions[key]["Commodities"] = {}
			if (faction_table[key].Commodities ~= nil) then
				if (faction_table[key].Commodities.Lumber ~= nil) then
					Factions[key].Commodities["Lumber"] = faction_table[key].Commodities.Lumber
				end
			end
			Factions[key]["Technologies"] = {}
			Factions[key]["Diplomacy"] = {}
		end
	end
	
	if (world == "Earth") then
		AddFactionTable(EarthFactions)
	elseif (world == "Nidavellir") then
		AddFactionTable(NidavellirFactions)
	elseif (world == "Random") then
		AddFactionTable(NidavellirFactions)
		AddFactionTable(EarthFactions)
	end
end

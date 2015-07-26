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
		-- Celtic tribes
		AeduiTribe = {
			Name = "Aedui Tribe",
			Civilization = "celt"
		},
		ArverniTribe = {
			Name = "Arverni Tribe",
			Civilization = "celt"
		},
		BoiiTribe = {
			Name = "Boii Tribe",
			Civilization = "celt"
		},
		HelvetiiTribe = {
			Name = "Helvetii Tribe",
			Civilization = "celt"
		},
		MenapiiTribe = {
			Name = "Menapii Tribe",
			Civilization = "celt"
		},
		NoriciTribe = {
			Name = "Norici Tribe",
			Civilization = "celt"
		},
		PictTribe = {
			Name = "Pict Tribe",
			Civilization = "celt"
		},
		ScotTribe = {
			Name = "Scot Tribe",
			Civilization = "celt"
		},
		SequaniTribe = {
			Name = "Sequani Tribe",
			Civilization = "celt"
		},
		-- Germanic tribes
		AlamanniTribe = {
			Name = "Alamanni Tribe",
			Civilization = "teuton"
		},
		AsaTribe = {
			Name = "Asa Tribe",
			Civilization = "germanic",
			Gold = 3000,
			Commodities = {
				Lumber = 1500, -- half of the gold value
				Stone = 1500 -- half of the gold value
			}
		},
		BavarianTribe = {
			Name = "Bavarian Tribe",
			Civilization = "teuton"
		},
		BurgundianTribe = {
			Name = "Burgundian Tribe",
			Civilization = "goth"
		},
		DaneTribe = {
			Name = "Dane Tribe",
			Civilization = "norse"
		},
		FrankTribe = {
			Name = "Frank Tribe",
			Civilization = "germanic"
		},
		FrisianTribe = {
			Name = "Frisian Tribe",
			Civilization = "teuton"
		},
		GothTribe = {
			Name = "Goth Tribe",
			Civilization = "germanic"
		},
		JuteTribe = {
			Name = "Jute Tribe",
			Civilization = "germanic"
		},
		LombardTribe = {
			Name = "Lombard Tribe",
			Civilization = "teuton"
		},
		MarcomanniTribe = {
			Name = "Marcomanni Tribe",
			Civilization = "teuton"
		},
		OstrogothTribe = {
			Name = "Ostrogoth Tribe",
			Civilization = "goth"
		},
		RugianTribe = {
			Name = "Rugian Tribe",
			Civilization = "goth"
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
			Civilization = "goth"
		},
		VisigothTribe = {
			Name = "Visigoth Tribe",
			Civilization = "goth"
		},
		-- Germanic polities
		Austria = {
			Name = "Austria",
			Civilization = "teuton",
			Title = "Duchy" -- later Archduchy
		},
		Bavaria = {
			Name = "Bavaria",
			Civilization = "teuton",
			Title = "Duchy"
		},
		Brandenburg = {
			Name = "Brandenburg",
			Civilization = "teuton",
			Title = "Margravate"
		},
		Burgundy = {
			Name = "Burgundy",
			Civilization = "goth",
			Title = "Kingdom"
		},
		Denmark = {
			Name = "Denmark",
			Civilization = "norse",
			Title = "Kingdom"
		},
		England = {
			Name = "England",
			Civilization = "teuton",
			Title = "Kingdom"
		},
		Francia = {
			Name = "Francia",
			Civilization = "teuton",
			Title = "Kingdom"
		},
		Galicia = { -- Suebi kingdom of Galicia
			Name = "Galicia",
			Civilization = "teuton",
			Title = "Kingdom"
		},
		Netherlands = {
			Name = "Netherlands",
			Civilization = "teuton",
			Title = "Republic"
		},
		Norway = {
			Name = "Norway",
			Civilization = "norse",
			Title = "Kingdom"
		},
		Prussia = {
			Name = "Prussia",
			Civilization = "teuton",
			Title = "Duchy"
		},
		Saxony = {
			Name = "Saxony",
			Civilization = "teuton",
			Title = "Duchy"
		},
		Scotland = {
			Name = "Scotland",
			Civilization = "teuton",
			Title = "Kingdom"
		},
		Sweden = {
			Name = "Sweden",
			Civilization = "norse",
			Title = "Kingdom"
		},
		Switzerland = {
			Name = "Switzerland",
			Civilization = "teuton",
			Title = "Confederation"
		},
		Westphalia = {
			Name = "Westphalia",
			Civilization = "teuton",
			Title = "Duchy"
		},
		-- Greek polities
		Athens = {
			Name = "Athens",
			Civilization = "greek",
			Title = "City-State"
		},
		Macedon = {
			Name = "Athens",
			Civilization = "greek",
			Title = "Kingdom"
		},
		Sparta = {
			Name = "Sparta",
			Civilization = "greek",
			Title = "City-State"
		},
		-- Latin polities
		France = {
			Name = "France",
			Civilization = "latin",
			Title = "Kingdom"
		},
		Moldavia = {
			Name = "Moldavia",
			Civilization = "latin",
			Title = "Principality"
		},
		Portugal = {
			Name = "Portugal",
			Civilization = "latin",
			Title = "Kingdom"
		},
		Rome = {
			Name = "Rome",
			Civilization = "latin",
			Title = "Republic",
			Gold = 5000
		},
		Sicily = {
			Name = "Sicily",
			Civilization = "latin",
			Title = "Duchy"
		},
		Spain = {
			Name = "Spain",
			Civilization = "latin",
			Title = "Kingdom"
		},
		Transylvania = {
			Name = "Transylvania",
			Civilization = "latin",
			Title = "Principality"
		},
		Wallachia = {
			Name = "Wallachia",
			Civilization = "latin",
			Title = "Principality"
		},
		-- Non-Playable Tribes
		GylfingTribe = {
			Name = "Gylfing Tribe",
			Civilization = "germanic",
			Gold = 5000,
			Commodities = {
				Lumber = 2500, -- half of the gold value
				Stone = 2500 -- half of the gold value
			}
		},
		MinoanTribe = {
			Name = "Minoan Tribe",
			Civilization = "greek"
		},
		VanaTribe = {
			Name = "Vana Tribe",
			Civilization = "celt",
			Gold = 5000,
			Commodities = {
				Lumber = 2500, -- half of the gold value
				Stone = 2500 -- half of the gold value
			}
		},
		-- Non-Playable Polities
		Crete = {
			Name = "Crete",
			Civilization = "greek",
			Title = "Kingdom"
		},
		Crimea = {
			Name = "Crimea",
			Civilization = "germanic",
			Title = "Khanate"
		},
		Muscovy = {
			Name = "Muscovy",
			Civilization = "germanic",
			Title = "Dominion"
		},
		Persia = {
			Name = "Persia",
			Civilization = "greek",
			Title = "Kingdom"
		},
		Poland = {
			Name = "Poland",
			Civilization = "germanic",
			Title = "Kingdom"
		},
		Russia = {
			Name = "Russia",
			Civilization = "germanic",
			Title = "Empire"
		},
		Turkey = {
			Name = "Turkey",
			Civilization = "germanic",
			Title = "Empire"
		}
	}
	
	local NidavellirFactions = {
		Untersberg = {
			Name = "Untersberg",
			Civilization = "gnome",
			Title = "Kingdom",
			Gold = 7500,
			Commodities = {
				Lumber = 3750, -- half of the gold value
				Stone = 3750 -- half of the gold value
			}
		},
		-- Dwarven clans
		ModsogningClan = {
			Name = "Modsogning Clan",
			Civilization = "dwarf"
		},
		NorlundClan = {
			Name = "Norlund Clan",
			Civilization = "dwarf",
			Gold = 3000,
			Commodities = {
				Lumber = 1500, -- half of the gold value
				Stone = 1500 -- half of the gold value
			}
		},
		ShinsplitterClan = {
			Name = "Shinsplitter Clan",
			Civilization = "dwarf",
			Gold = 7500,
			Commodities = {
				Lumber = 3750, -- half of the gold value
				Stone = 3750 -- half of the gold value
			}
		},
		ShorbearClan = {
			Name = "Shorbear Clan",
			Civilization = "dwarf",
			Gold = 9000, -- 300 / 20 * 600 (base value divided by 20, the usual level 1 Wesnoth unit gold cost, and multiplied by 600, the basic military unit gold cost in Wyrmsun)
			Commodities = {
				Lumber = 4500, -- half of the gold value
				Stone = 4500 -- half of the gold value
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
				Lumber = 375, -- half of the gold value
				Stone = 375 -- half of the gold value
			}
		},
		LggiTribe = {
			Name = "Lggi Tribe",
			Civilization = "goblin",
			Gold = 2700,
			Commodities = {
				Lumber = 1350, -- half of the gold value
				Stone = 1350 -- half of the gold value
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
				if (faction_table[key].Commodities.Stone ~= nil) then
					Factions[key].Commodities["Stone"] = faction_table[key].Commodities.Stone
				end
			end
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

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
		-- Etruscan tribes
		EtruscanTribe = {
			Name = "Etruscan Tribe",
			Civilization = "etruscan"
		},
		-- Etruscan polities
		Etruria = {
			Name = "Etruria",
			Civilization = "etruscan"
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
			Civilization = "germanic"
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
			Civilization = "teuton"
		},
		Bavaria = {
			Name = "Bavaria",
			Civilization = "teuton"
		},
		Brandenburg = {
			Name = "Brandenburg",
			Civilization = "teuton"
		},
		Burgundy = {
			Name = "Burgundy",
			Civilization = "goth"
		},
		Denmark = {
			Name = "Denmark",
			Civilization = "norse"
		},
		England = {
			Name = "England",
			Civilization = "teuton"
		},
		Francia = {
			Name = "Francia",
			Civilization = "teuton"
		},
		Galicia = { -- Suebi kingdom of Galicia
			Name = "Galicia",
			Civilization = "teuton"
		},
		Gothia = {
			Name = "Gothia",
			Civilization = "goth"
		},
		Jutland = {
			Name = "Jutland",
			Civilization = "teuton"
		},
		Netherlands = {
			Name = "Netherlands",
			Civilization = "teuton"
		},
		Norway = {
			Name = "Norway",
			Civilization = "norse"
		},
		Prussia = {
			Name = "Prussia",
			Civilization = "teuton"
		},
		Saxony = {
			Name = "Saxony",
			Civilization = "teuton"
		},
		Scotland = {
			Name = "Scotland",
			Civilization = "teuton"
		},
		Sweden = {
			Name = "Sweden",
			Civilization = "norse"
		},
		Switzerland = {
			Name = "Switzerland",
			Civilization = "teuton"
		},
		Vandalia = {
			Name = "Vandalia",
			Civilization = "goth"
		},
		Westphalia = {
			Name = "Westphalia",
			Civilization = "teuton"
		},
		-- Greek tribes
		ChaoniTribe = {
			Name = "Chaoni Tribe",
			Civilization = "greek"
		},
		DolopesTribe = {
			Name = "Dolopes Tribe",
			Civilization = "greek"
		},
		-- Greek polities
		Argos = {
			Name = "Argos",
			Civilization = "greek"
		},
		Athens = {
			Name = "Athens",
			Civilization = "greek"
		},
		Crete = {
			Name = "Crete",
			Civilization = "greek"
		},
		Epirus = {
			Name = "Epirus",
			Civilization = "greek"
		},
		Macedon = {
			Name = "Macedon",
			Civilization = "greek"
		},
		Mycenae = {
			Name = "Mycenae",
			Civilization = "greek"
		},
		Sparta = {
			Name = "Sparta",
			Civilization = "greek"
		},
		Thebes = {
			Name = "Thebes",
			Civilization = "greek"
		},
		Thrace = {
			Name = "Thrace",
			Civilization = "greek"
		},
		-- Illyrian tribes
		IllyrianTribe = {
			Name = "Illyrian Tribe",
			Civilization = "illyrian"
		},
		TaulantiiTribe = {
			Name = "Taulantii Tribe",
			Civilization = "illyrian"
		},
		-- Latin tribes
		AequianTribe = {
			Name = "Aequian Tribe",
			Civilization = "latin"
		},
		ElymianTribe = {
			Name = "Elymian Tribe",
			Civilization = "latin"
		},
		FrentanianTribe = {
			Name = "Frentanian Tribe",
			Civilization = "latin"
		},
		IapygianTribe = {
			Name = "Iapygian Tribe",
			Civilization = "latin"
		},
		LatinTribe = {
			Name = "Latin Tribe",
			Civilization = "latin"
		},
		MarsianTribe = {
			Name = "Marsian Tribe",
			Civilization = "latin"
		},
		MessapianTribe = {
			Name = "Messapian Tribe",
			Civilization = "latin"
		},
		OenotrianTribe = {
			Name = "Oenotrian Tribe",
			Civilization = "latin"
		},
		PicentianTribe = {
			Name = "Picentian Tribe",
			Civilization = "latin"
		},
		SabellianTribe = {
			Name = "Sabellian Tribe",
			Civilization = "latin"
		},
		SabineTribe = {
			Name = "Sabine Tribe",
			Civilization = "latin"
		},
		SamniteTribe = {
			Name = "Samnite Tribe",
			Civilization = "latin"
		},
		SicanianTribe = {
			Name = "Sicanian Tribe",
			Civilization = "latin"
		},
		SicelTribe = {
			Name = "Sicel Tribe",
			Civilization = "latin"
		},
		UmbrianTribe = {
			Name = "Umbrian Tribe",
			Civilization = "latin"
		},
		VenetianTribe = {
			Name = "Venetian Tribe",
			Civilization = "latin"
		},
		-- Latin polities
		France = {
			Name = "France",
			Civilization = "latin"
		},
		Moldavia = {
			Name = "Moldavia",
			Civilization = "latin"
		},
		Portugal = {
			Name = "Portugal",
			Civilization = "latin"
		},
		Rome = {
			Name = "Rome",
			Civilization = "latin",
			Gold = 5000
		},
		Savoy = {
			Name = "Savoy",
			Civilization = "latin"
		},
		Sicily = {
			Name = "Sicily",
			Civilization = "latin"
		},
		Spain = {
			Name = "Spain",
			Civilization = "latin"
		},
		Transylvania = {
			Name = "Transylvania",
			Civilization = "latin"
		},
		Venice = {
			Name = "Venice",
			Civilization = "latin"
		},
		Wallachia = {
			Name = "Wallachia",
			Civilization = "latin"
		},
		-- Minoan Tribes
		MinoanTribe = {
			Name = "Minoan Tribe",
			Civilization = "minoan"
		},
		-- Minoan Polities
		Crete = {
			Name = "Crete",
			Civilization = "minoan"
		},
		-- Persian tribes
		SarmatianTribe = {
			Name = "Sarmatian Tribe",
			Civilization = "persian"
		},
		ScythianTribe = {
			Name = "Scythian Tribe",
			Civilization = "persian"
		},
		-- Persian polities
		Persia = {
			Name = "Persia",
			Civilization = "persian"
		},
		-- Phoenician polities
		Carthage = {
			Name = "Carthage",
			Civilization = "phoenician"
		},
		-- Phrygian tribes
		BrygesTribe = {
			Name = "Bryges Tribe",
			Civilization = "phrygian"
		},
		-- Thracian tribes
		ApsinthiiTribe = {
			Name = "Apsinthii Tribe",
			Civilization = "thracian"
		},
		EdoniTribe = {
			Name = "Edoni Tribe",
			Civilization = "thracian"
		},
		GetaeTribe = {
			Name = "Getae Tribe",
			Civilization = "thracian"
		},
		OdomantiTribe = {
			Name = "Odomanti Tribe",
			Civilization = "thracian"
		},
		OdrysaeTribe = {
			Name = "Odrysae Tribe",
			Civilization = "thracian"
		},
		TriballiTribe = {
			Name = "Triballi Tribe",
			Civilization = "thracian"
		},
		-- Non-Playable Tribes
		ErtebolleTribe = {
			Name = "Ertebolle Tribe",
			Civilization = "basque"
		},
		FunnelbeakerTribe = {
			Name = "Funnelbeaker Tribe",
			Civilization = "basque"
		},
		GylfingTribe = {
			Name = "Gylfing Tribe",
			Civilization = "basque",
			Gold = 5000,
			Commodities = {
				Lumber = 2500, -- half of the gold value
				Stone = 2500 -- half of the gold value
			}
		},
		KongemoseTribe = {
			Name = "Kongemose Tribe",
			Civilization = "basque"
		},
		MaglemoseTribe = {
			Name = "Maglemose Tribe",
			Civilization = "basque"
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
		Crimea = {
			Name = "Crimea",
			Civilization = "teuton"
		},
		Croatia = {
			Name = "Croatia",
			Civilization = "teuton"
		},
		Hungary = {
			Name = "Hungary",
			Civilization = "teuton"
		},
		Muscovy = {
			Name = "Muscovy",
			Civilization = "teuton"
		},
		Poland = {
			Name = "Poland",
			Civilization = "teuton"
		},
		Russia = {
			Name = "Russia",
			Civilization = "teuton"
		},
		Turkey = {
			Name = "Turkey",
			Civilization = "teuton"
		}
	}
	
	local NidavellirFactions = {
		ActhnicTribe = {
			Name = "Acthnic Tribe",
			Civilization = "gnome"
		},
		CubitalTribe = {
			Name = "Cubital Tribe",
			Civilization = "gnome"
		},
		SaganTribe = {
			Name = "Sagan Tribe",
			Civilization = "gnome"
		},
		Untersberg = {
			Name = "Untersberg",
			Civilization = "gnome",
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
			Civilization = "dwarf"
		},
		Knalga = {
			Name = "Knalga",
			Civilization = "dwarf"
		},
		Lyr = {
			Name = "Lyr",
			Civilization = "dwarf"
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
			if (faction_table[key].Gold ~= nil) then
				SetFactionResource(Factions[key].Civilization, Factions[key].Name, "gold", faction_table[key].Gold)
			end
			Factions[key]["Commodities"] = {}
			if (faction_table[key].Commodities ~= nil) then
				if (faction_table[key].Commodities.Lumber ~= nil) then
					SetFactionResource(Factions[key].Civilization, Factions[key].Name, "lumber", faction_table[key].Commodities.Lumber)
				end
				if (faction_table[key].Commodities.Stone ~= nil) then
					SetFactionResource(Factions[key].Civilization, Factions[key].Name, "stone", faction_table[key].Commodities.Stone)
				end
			end
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

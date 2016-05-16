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
--      (c) Copyright 2016 by Andrettin
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

--Load("scripts/world_earth_tiles_asia.lua")
Load("scripts/world_earth_tiles_austria.lua") -- German-speaking territories of the Empire of Austria
Load("scripts/world_earth_tiles_finland.lua")
Load("scripts/world_earth_tiles_france.lua") -- modern France (excluding Corsica)
Load("scripts/world_earth_tiles_germany.lua") -- territory of Imperial Germany (excluding Alsace-Lorraine)
Load("scripts/world_earth_tiles_greece.lua") -- territory of modern Greece
Load("scripts/world_earth_tiles_italy.lua") -- includes Corsica since it is closer to the Italian mainland than to France, and since for centuries it belonged to Genoa
Load("scripts/world_earth_tiles_low_countries.lua") -- Netherlands, Belgium and Luxembourg
Load("scripts/world_earth_tiles_scandinavia.lua")
Load("scripts/world_earth_tiles_spain.lua")

DefineWorldMapTile({418, 73}, {
	World = "Earth",
	CulturalSettlementNames = {
		"norse", "Reykjavik"
	}
})

DefineWorldMapTile({454, 145}, {
	World = "Earth",
	CulturalSettlementNames = {
		"latin", "Olisipo"
	},
	FactionCulturalSettlementNames = {
		"latin", "Portugal", "Lisbon"
	}
})

DefineWorldMapTile({462, 104}, {
	World = "Earth",
	CulturalSettlementNames = {
		"celt", "Eblana", -- or is this the Latin name? Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	},
	FactionCulturalSettlementNames = {
		"teuton", "England", "Dublin"
	}
})

DefineWorldMapTile({465, 113}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "Falmouth", "name-elements", {
--			"compound", "prefix", -- ?
			"compound", "suffix", "english", "noun", "singular", "Mouth"
		}
	}
})

DefineWorldMapTile({470, 87}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "Kirkwall"
	}
})

DefineWorldMapTile({470, 97}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "Edinburgh", "name-elements", {
--			"compound", "prefix", -- ?
			"compound", "suffix", "english", "noun", "singular", "Burgh"
		}
	}
})

DefineWorldMapTile({471, 100}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "Carlisle"
	}
})

DefineWorldMapTile({473, 93}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "Aberdeen"
	}
})

DefineWorldMapTile({474, 97}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "Berwick" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	}
})

DefineWorldMapTile({475, 98}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "Bamburgh", "name-elements", { -- Shepherd gives it as "Bamborough" instead; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 74.
--			"compound", "prefix", "english", -- ?
			"compound", "suffix", "english", "noun", "Burgh" -- presumably
		}
	}
})

DefineWorldMapTile({475, 99}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "Newcastle", "name-elements", { -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
			"compound", "prefix", "english", "adjective", "New", -- presumably
			"compound", "suffix", "english", "noun", "singular", "Castle" -- presumably
		}
	}
})

DefineWorldMapTile({475, 100}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "Durham", "name-elements", { -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
			"compound", "prefix", "english", "noun", "Dur", -- presumably
			"compound", "suffix", "english", "noun", "Ham" -- presumably
		}
	}
})

DefineWorldMapTile({475, 106}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "Tamworth" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
	}
})

DefineWorldMapTile({476, 110}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "Winchester", "name-elements", {
			"compound", "prefix", "english", "noun", "singular", "Win",
			"compound", "suffix", "english", "noun", "singular", "Chester"
		}
	}
})

DefineWorldMapTile({477, 102}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "York" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	}
})

DefineWorldMapTile({478, 102}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "Hull", "name-elements", { -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
			"word", "english", "noun", "Hull" -- presumably
		}
	}
})

DefineWorldMapTile({478, 104}, { -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "Lincoln"
	}
})

DefineWorldMapTile({480, 109}, {
	World = "Earth",
	CulturalSettlementNames = {
		"celt", "Londinium",
		"latin", "Londinium"
	},
	FactionCulturalSettlementNames = {
		"teuton", "England", "London"
	}
})

DefineWorldMapTile({480, 111}, { -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "Newhaven", "name-elements", {
			"compound", "prefix", "english", "adjective", "New",
			"compound", "suffix", "english", "noun", "singular", "Haven"
		}
	}
})

DefineWorldMapTile({483, 110}, { -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "Dover"
	}
})

DefineWorldMapTile({484, 106}, { -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "Yarmouth", "name-elements", {
--			"compound", "prefix", -- ?
			"compound", "suffix", "english", "noun", "singular", "Mouth"
		}
	}
})

DefineWorldMapTile({501, 122}, {
	World = "Earth",
	CulturalSettlementNames = {
		"teuton", "Bern"
	}
})

DefineWorldMapTile({520, 113}, {
	World = "Earth",
	CulturalSettlementNames = {
		"slav", "Prague",
		"teuton", "Prague"
	},
	FactionCulturalSettlementNames = {
		"teuton", "Marcomanni Tribe", "Bubienum" -- name of the Marcomannic capital; also known as Marobudum; either located where modern Prague or Budweis are; Source: Frederick Kohlrausch, "A History of Germany", 1844, p. 57.
	}
})

DefineWorldMapTile({521, 125}, {
	World = "Earth",
	CulturalSettlementNames = {
		"latin", "Emona", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		"slav", "Ljubljana",
		"teuton", "Laibach", "name-elements", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
			"compound", "prefix", "high-german", "noun", "singular", "Lai",
			"compound", "suffix", "high-german", "noun", "singular", "Bach"
		}
	}
})

DefineWorldMapTile({521, 153}, {
	World = "Earth",
	CulturalSettlementNames = {
		-- Valetta (in Maltese?)
	}
})

DefineWorldMapTile({523, 130}, {
	World = "Earth",
	CulturalSettlementNames = {
		"latin", "Iadera", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		"slav", "Zara"
	}
})

DefineWorldMapTile({525, 125}, {
	World = "Earth",
	CulturalSettlementNames = {
		"latin", "Celeta", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		"slav", "Zagreb"
	}
})

DefineWorldMapTile({527, 116}, {
	World = "Earth",
	CulturalSettlementNames = {
		"slav", "Brno",
		"teuton", "Brünn"
	}
})

DefineWorldMapTile({528, 118}, {
	World = "Earth",
	CulturalSettlementNames = {
		"slav", "Bratislava",
		"teuton", "Presburg", "name-elements", {
--			"compound", "prefix", -- ?
			"compound", "suffix", "high-german", "noun", "singular", "Burg"
		}
	}
})

DefineWorldMapTile({532, 131}, {
	World = "Earth",
	CulturalSettlementNames = {
		"slav", "Sarajevo"
	}
})

DefineWorldMapTile({534, 120}, {
	World = "Earth",
	CulturalSettlementNames = {
		"latin", "Aquincum",
		"magyar", "Buda"
	}
})

DefineWorldMapTile({534, 135}, {
	World = "Earth",
	CulturalSettlementNames = {
		"latin", "Doclea", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		"slav", "Podgorica"
	}
})

DefineWorldMapTile({535, 120}, {
	World = "Earth",
	CulturalSettlementNames = {
		"magyar", "Pest"
	}
})

DefineWorldMapTile({536, 127}, {
	World = "Earth",
	CulturalSettlementNames = {
		"slav", "Novi Sad",
		"teuton", "Neusatz", "name-elements", { -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 168.
			"compound", "prefix", "high-german", "adjective", "Neu",
			"compound", "suffix", "high-german", "noun", "singular", "Satz"
		}
	}
})

DefineWorldMapTile({536, 138}, {
	World = "Earth",
	CulturalSettlementNames = {
		"greek", "Epidamnus",
		"latin", "Dyrrhachium"
	}
})

DefineWorldMapTile({538, 107}, {
	World = "Earth",
	CulturalSettlementNames = {
		"slav", "Warsaw"
	}
})

DefineWorldMapTile({538, 129}, {
	World = "Earth",
	CulturalSettlementNames = {
		"latin", "Singidunum", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		"slav", "Belgrade"
	}
})

DefineWorldMapTile({540, 136}, {
	World = "Earth",
	CulturalSettlementNames = {
		"latin", "Scupi", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		"slav", "Skopje"
	}
})

DefineWorldMapTile({543, 110}, {
	World = "Earth",
	CulturalSettlementNames = {
		"slav", "Lublin"
	}
})

DefineWorldMapTile({545, 122}, {
	World = "Earth",
	CulturalSettlementNames = {
		"teuton", "Klausenburg", "name-elements", {
			"compound", "prefix", "high-german", "noun", "plural", "Klause",
			"compound", "suffix", "high-german", "noun", "singular", "Burg"
		}
	},
	FactionCulturalSettlementNames = {
		"latin", "Romania", "Cluj"
	}
})

DefineWorldMapTile({546, 134}, {
	World = "Earth",
	CulturalSettlementNames = {
		"latin", "Ulpia",
		-- Sardica
		"slav", "Sofia"
	}
})

DefineWorldMapTile({547, 95}, {
	World = "Earth",
	CulturalSettlementNames = {
		"teuton", "Mitau"
	}
})

DefineWorldMapTile({547, 114}, {
	World = "Earth",
	CulturalSettlementNames = {
		"slav", "Lvov",
		"teuton", "Lemberg", "name-elements", {
--			"compound", "prefix", -- ?
			"compound", "suffix", "high-german", "noun", "singular", "Berg"
		}
	}
})

DefineWorldMapTile({548, 94}, {
	World = "Earth",
	CulturalSettlementNames = {
		"teuton", "Riga"
	}
})

DefineWorldMapTile({550, 87}, {
	World = "Earth",
	CulturalSettlementNames = {
		"finnish", "Tallinn", -- Estonian
		"teuton", "Reval"
	}
})

DefineWorldMapTile({552, 100}, {
	World = "Earth",
	CulturalSettlementNames = {
		-- Lithuanian name: "Vilnius"
	}
})

DefineWorldMapTile({552, 119}, {
	World = "Earth",
	CulturalSettlementNames = {
		"teuton", "Czernowitz"
	}
})

DefineWorldMapTile({554, 129}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"latin", "Romania", "Bucharest"
	}
})

DefineWorldMapTile({557, 121}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"latin", "Romania", "Iași"
	}
})

DefineWorldMapTile({559, 102}, {
	World = "Earth",
	CulturalSettlementNames = {
		"slav", "Minsk"
	}
})

DefineWorldMapTile({560, 130}, {
	World = "Earth",
	CulturalSettlementNames = {
		"latin", "Tomi", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	},
	FactionCulturalSettlementNames = {
		"latin", "Romania", "Constanța"
	}
})

DefineWorldMapTile({562, 122}, {
	World = "Earth",
	CulturalSettlementNames = {
		"slav", "Kishinev"
	}
})

DefineWorldMapTile({566, 112}, {
	World = "Earth",
	CulturalSettlementNames = {
		"slav", "Kiev"
	}
})

DefineWorldMapTile({576, 128}, {
	World = "Earth",
	CulturalSettlementNames = {
		"greek", "Heraclea Chersonesus", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 18-19.
		"slav", "Simferopol"
	},
})

DefineWorldMapTile({587, 97}, {
	World = "Earth",
	CulturalSettlementNames = {
		"slav", "Moscow"
	}
})

DefineWorldMapTile({592, 121}, {
	World = "Earth",
	CulturalSettlementNames = {
		"greek", "Tanais"
	},
	FactionCulturalSettlementNames = {
		"slav", "Russia", "Rostov-on-Don"
	}
})

DefineWorldMapTile({618, 124}, {
	World = "Earth",
	CulturalSettlementNames = {
		"germanic", "Ansugárdiz", "name-elements", { -- rendering of "Asgaard" in Proto-Germanic, as in the Ynglinga saga's story Asgard is the settlement in "Asia" in which Odin's people (here understood as the Indo-Europeans who went on to settle Scandinavia and become speakers of Proto-Germanic) used to live until they migrated to Scandinavia; shouldn't be in the location of Astrakhan, but instead where modern Assor is (where?), or alternatively Chasgar (again, where?); Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 217.
			"compound", "prefix", "proto-germanic", "noun", "singular", "Ansu",
			"compound", "suffix", "proto-germanic", "noun", "singular", "Gárdiz"
		}
	},
	FactionCulturalSettlementNames = {
		"slav", "Russia", "Astrakhan"
	}
})

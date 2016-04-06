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

DefineWorldMapTile({456, 132}, {
	World = "Earth",
	CulturalSettlementNames = {
		"latin", "Lucus Augusti"
	},
	FactionCulturalSettlementNames = {
		"latin", "Spain", "Corunna"
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

DefineWorldMapTile({464, 141}, {
	World = "Earth",
	FactionCulturalTerrainNames = {
		"Mountains", "latin", "Spain", "Pico Almanzor" -- Source: "Philip's International School Atlas", 2006, p. 69
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

DefineWorldMapTile({466, 148}, {
	World = "Earth",
	CulturalSettlementNames = {
		"latin", "Corduba"
	}
})

DefineWorldMapTile({469, 141}, {
	World = "Earth",
	CulturalSettlementNames = {
		"latin", "Complutum"
	},
	FactionCulturalSettlementNames = {
		"latin", "Spain", "Madrid"
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

DefineWorldMapTile({470, 150}, {
	World = "Earth",
	FactionCulturalTerrainNames = {
		"Mountains", "latin", "Spain", "Mulhacén" -- Source: "Philip's International School Atlas", 2006, p. 69
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

DefineWorldMapTile({475, 119}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"latin", "France", "Rennes"
	}
})

DefineWorldMapTile({475, 121}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"latin", "France", "Nantes"
	}
})

DefineWorldMapTile({477, 102}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "York" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	}
})

DefineWorldMapTile({477, 137}, {
	World = "Earth",
	CulturalSettlementNames = {
		"latin", "Caesaraugusta"
	},
	FactionCulturalSettlementNames = {
		"latin", "Spain", "Zaragoza"
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

DefineWorldMapTile({481, 135}, {
	World = "Earth",
	FactionCulturalTerrainNames = {
		"Mountains", "latin", "Spain", "Monte Perdido" -- Source: "Philip's International School Atlas", 2006, p. 69
	}
})

DefineWorldMapTile({482, 115}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"latin", "France", "Rouen"
	}
})

DefineWorldMapTile({483, 132}, {
	World = "Earth",
	CulturalSettlementNames = {
		"latin", "Tolosa"
	},
	FactionCulturalSettlementNames = {
		"latin", "France", "Toulouse"
	}
})

DefineWorldMapTile({486, 117}, {
	World = "Earth",
	CulturalSettlementNames = {
		"latin", "Lutetia"
	},
	FactionCulturalSettlementNames = {
		"latin", "France", "Paris"
	}
})

DefineWorldMapTile({492, 111}, {
	World = "Earth",
	CulturalSettlementNames = {
		"latin", "Aduatuca"
	},
	FactionCulturalSettlementNames = {
		"teuton", "Netherlands", "Brussels"
	}
})

DefineWorldMapTile({493, 107}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "Netherlands", "Amsterdam"
	}
})

DefineWorldMapTile({494, 121}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"latin", "France", "Dijon"
	}
})

DefineWorldMapTile({495, 84}, {
	World = "Earth",
	CulturalSettlementNames = {
		"norse", "Bergen"
	}
})

DefineWorldMapTile({495, 132}, {
	World = "Earth",
	CulturalSettlementNames = {
		"latin", "Massilia"
	},
	FactionCulturalSettlementNames = {
		"latin", "France", "Marseilles"
	}
})

DefineWorldMapTile({496, 104}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "Netherlands", "Leeuwarden" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
	}
})

DefineWorldMapTile({496, 116}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"latin", "France", "Metz"
	}
})

DefineWorldMapTile({496, 118}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"latin", "France", "Nancy"
	}
})

DefineWorldMapTile({496, 126}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"latin", "France", "Chambéry"
	}
})

DefineWorldMapTile({497, 106}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "Netherlands", "Zwolle" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
	}
})

DefineWorldMapTile({497, 121}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"latin", "France", "Besançon"
	}
})

DefineWorldMapTile({498, 105}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "Netherlands", "Assen" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
	}
})

DefineWorldMapTile({498, 111}, {
	World = "Earth",
	CulturalSettlementNames = {
		"latin", "Colonia Agrippina", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		"teuton", "Köln"
	},
	FactionCulturalSettlementNames = {
		"latin", "France", "Cologne"
	}
})

DefineWorldMapTile({500, 104}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "Netherlands", "Emden"
	}
})

DefineWorldMapTile({500, 109}, {
	World = "Earth",
	CulturalSettlementNames = {
		"teuton", "Düsseldorf"
	}
})

DefineWorldMapTile({501, 118}, {
	World = "Earth",
	CulturalSettlementNames = {
		"latin", "Argentoratum", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		"teuton", "Strasburg", "name-elements", {
--			"compound", "prefix", -- ?
			"compound", "suffix", "high-german", "noun", "singular", "Burg"
		}
	}
})

DefineWorldMapTile({501, 122}, {
	World = "Earth",
	CulturalSettlementNames = {
		"teuton", "Bern"
	}
})

DefineWorldMapTile({502, 115}, {
	World = "Earth",
	CulturalSettlementNames = {
		"latin", "Borbetomagus", -- not actually the same city as Kaiserslautern (Borbetomagus is Worms), but nevertheless in the Palatinate; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		"teuton", "Kaiserslautern", "name-elements", {
			"compound", "prefix", "high-german", "noun", "singular", "genitive", "Kaiser",
--			"suffix" -- ?
		}
	}
})

DefineWorldMapTile({502, 127}, {
	World = "Earth",
	CulturalSettlementNames = {
		"latin", "Augusta Taurinorum"
	},
	FactionCulturalSettlementNames = {
		"latin", "Italy", "Turin"
	}
})

DefineWorldMapTile({503, 104}, {
	World = "Earth",
	CulturalSettlementNames = {
		"teuton", "Oldenburg", "name-elements", {
--			"compound", "prefix", -- ?
			"compound", "suffix", "high-german", "noun", "singular", "Burg"
		}
	}
})

DefineWorldMapTile({503, 117}, {
	World = "Earth",
	CulturalSettlementNames = {
		"teuton", "Rastatt"
	}
})

DefineWorldMapTile({504, 104}, {
	World = "Earth",
	CulturalSettlementNames = {
		"teuton", "Bremen"
	}
})

DefineWorldMapTile({505, 129}, {
	World = "Earth",
	CulturalSettlementNames = {
		"latin", "Genua"
	},
	FactionCulturalSettlementNames = {
		"latin", "Italy", "Genoa"
	}
})

DefineWorldMapTile({505, 135}, {
	World = "Earth",
	FactionCulturalTerrainNames = {
		"Mountains", "latin", "Italy", "Monte Cinto" -- Source: "Philip's International School Atlas", 2006, p. 70
	}
})

DefineWorldMapTile({505, 144}, {
	World = "Earth",
	CulturalSettlementNames = {
		"latin", "Caralis"
	},
	FactionCulturalSettlementNames = {
		"latin", "Italy", "Cagliari"
	}
})

DefineWorldMapTile({506, 100}, {
	World = "Earth",
	CulturalSettlementNames = {
		"teuton", "Flensburg", "name-elements", {
--			"compound", "prefix", -- ?
			"compound", "suffix", "high-german", "noun", "singular", "Burg"
		}
	}
})

DefineWorldMapTile({506, 109}, {
	World = "Earth",
	CulturalSettlementNames = {
		"teuton", "Kassel"
	},
	FactionCulturalSettlementNames = {
		"teuton", "England", "Cassel"
	}
})

DefineWorldMapTile({506, 117}, {
	World = "Earth",
	CulturalSettlementNames = {
		"teuton", "Stuttgart", "name-elements", {
--			"compound", "prefix", -- ?
			"compound", "suffix", "high-german", "noun", "singular", "Gart" -- possibly? alternatively, it could be a remnant of Old (or Middle) High German "Gart" (two words were spelled like that for OHG)
		}
	}
})

DefineWorldMapTile({506, 126}, {
	World = "Earth",
	CulturalSettlementNames = {
		"latin", "Mediolanum",
		"teuton", "Mailand"
	},
	FactionCulturalSettlementNames = {
		"latin", "Italy", "Milan"
	}
})

DefineWorldMapTile({506, 136}, {
	World = "Earth",
	CulturalSettlementNames = {
		"latin", "Aleria"
	}
})

DefineWorldMapTile({506, 142}, {
	World = "Earth",
	FactionCulturalTerrainNames = {
		"Mountains", "latin", "Italy", "Monti del Gennargentu" -- Source: "Philip's International School Atlas", 2006, p. 70
	}
})

DefineWorldMapTile({507, 107}, {
	World = "Earth",
	CulturalSettlementNames = {
		"teuton", "Hannover"
	},
	FactionCulturalSettlementNames = {
		"teuton", "England", "Hanover"
	}
})

DefineWorldMapTile({508, 96}, {
	World = "Earth",
	CulturalSettlementNames = {
		"norse", "Aarhus"
	}
})

DefineWorldMapTile({508, 101}, {
	World = "Earth",
	CulturalSettlementNames = {
		"teuton", "Kiel"
	}
})

DefineWorldMapTile({508, 114}, {
	World = "Earth",
	CulturalSettlementNames = {
		"teuton", "Würzburg", "name-elements", {
--			"compound", "prefix", -- ?
			"compound", "suffix", "high-german", "noun", "singular", "Burg"
		}
	}
})

DefineWorldMapTile({509, 107}, {
	World = "Earth",
	CulturalSettlementNames = {
		"teuton", "Braunschweig"
	},
	FactionCulturalSettlementNames = {
		"teuton", "England", "Brunswick"
	}
})

DefineWorldMapTile({509, 128}, {
	World = "Earth",
	CulturalSettlementNames = {
		"latin", "Parma"
--		"latin", "Placentia" -- Piacenza
	}
})

DefineWorldMapTile({510, 102}, {
	World = "Earth",
	CulturalSettlementNames = {
		"teuton", "Lübeck"
	}
})

DefineWorldMapTile({510, 118}, {
	World = "Earth",
	CulturalSettlementNames = {
		"latin", "Augusta Vindelicorum", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		"teuton", "Augsburg", "name-elements", {
--			"compound", "prefix", -- ?
			"compound", "suffix", "high-german", "noun", "singular", "Burg"
		}
	}
})

DefineWorldMapTile({511, 110}, {
	World = "Earth",
	CulturalSettlementNames = {
		"teuton", "Erfurt", "name-elements", {
--			"compound", "prefix", -- ?
			"compound", "suffix", "high-german", "noun", "singular", "Furt"
		}
	}
})

DefineWorldMapTile({511, 129}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"latin", "Italy", "Modena"
	}
})

DefineWorldMapTile({512, 103}, {
	World = "Earth",
	CulturalSettlementNames = {
		"teuton", "Schwerin"
	}
})

DefineWorldMapTile({512, 129}, {
	World = "Earth",
	CulturalSettlementNames = {
		"latin", "Bononia"
	},
	FactionCulturalSettlementNames = {
		"latin", "Italy", "Bologna"
	}
})

DefineWorldMapTile({512, 131}, {
	World = "Earth",
	CulturalSettlementNames = {
		"latin", "Florentia"
	},
	FactionCulturalSettlementNames = {
		"latin", "Italy", "Florence"
	}
})

DefineWorldMapTile({513, 91}, {
	World = "Earth",
	CulturalSettlementNames = {
		"goth", "Gothenburg",
		"norse", "Göteborg"
	}
})

DefineWorldMapTile({513, 107}, {
	World = "Earth",
	CulturalSettlementNames = {
		"teuton", "Magdeburg", "name-elements", {
--			"compound", "prefix", -- ?
			"compound", "suffix", "high-german", "noun", "singular", "Burg"
		}
	}
})

DefineWorldMapTile({514, 116}, {
	World = "Earth",
	CulturalSettlementNames = {
		"latin", "Regina Castra",
		"teuton", "Regensburg", "name-elements", {
--			"compound", "prefix", -- ?
			"compound", "suffix", "high-german", "noun", "singular", "Burg"
		}
		-- also "Ratisbon"
	}
})

DefineWorldMapTile({515, 97}, {
	World = "Earth",
	CulturalSettlementNames = {
		"norse", "Copenhagen"
	}
})

DefineWorldMapTile({515, 109}, {
	World = "Earth",
	CulturalSettlementNames = {
		"teuton", "Leipzig"
	}
})

DefineWorldMapTile({515, 126}, {
	World = "Earth",
	CulturalSettlementNames = {
		"latin", "Aquileia",
		"teuton", "Venedig"
	},
	FactionCulturalSettlementNames = {
		"latin", "Italy", "Venice"
	}
})

DefineWorldMapTile({515, 134}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"latin", "Italy", "Perugia"
	}
})

DefineWorldMapTile({515, 136}, {
	World = "Earth",
	CulturalSettlementNames = {
		"latin", "Roma"
	},
	FactionCulturalSettlementNames = {
		"teuton", "England", "Rome"
	}
})

DefineWorldMapTile({517, 97}, {
	World = "Earth",
	CulturalSettlementNames = {
		"norse", "Malmö"
	}
})

DefineWorldMapTile({517, 147}, {
	World = "Earth",
	CulturalSettlementNames = {
		"greek", "Panormus",
		"latin", "Panormus" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 12.
	},
	FactionCulturalSettlementNames = {
		"latin", "Italy", "Palermo"
	}
})

DefineWorldMapTile({518, 106}, {
	World = "Earth",
	CulturalSettlementNames = {
		"teuton", "Berlin"
	}
})

DefineWorldMapTile({518, 135}, {
	World = "Earth",
	CulturalSettlementNames = {
		"latin", "Amiternum"
	},
	FactionCulturalSettlementNames = {
		"latin", "Italy", "L'Aquila"
	}
})

DefineWorldMapTile({519, 126}, {
	World = "Earth",
	CulturalSettlementNames = {
		"latin", "Tergeste", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		"teuton", "Triest"
	},
	FactionCulturalSettlementNames = {
		"latin", "Italy", "Trieste"
	}
})

DefineWorldMapTile({520, 109}, {
	World = "Earth",
	CulturalSettlementNames = {
		"teuton", "Bautzen"
	}
})

DefineWorldMapTile({520, 113}, {
	World = "Earth",
	CulturalSettlementNames = {
		"slav", "Prague",
		"teuton", "Prague"
	},
	FactionCulturalSettlementNames = {
		"teuton", "Marcomanni Tribe", "Bubienum" -- name of the Marcomannic capital; Source: Frederick Kohlrausch, "A History of Germany", 1844, p. 57.
	}
})

DefineWorldMapTile({520, 139}, {
	World = "Earth",
	CulturalSettlementNames = {
		"greek", "Neapolis", "name-elements", {
			"compound", "prefix", "greek", "adjective", "Nea",
			"compound", "suffix", "greek", "noun", "singular", "Polis"
		},
		"latin", "Neapolis"
	}
})

DefineWorldMapTile({521, 103}, {
	World = "Earth",
	CulturalSettlementNames = {
		"teuton", "Stettin"
	}
})

DefineWorldMapTile({521, 108}, {
	World = "Earth",
	CulturalSettlementNames = {
		"teuton", "Guben"
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

DefineWorldMapTile({522, 106}, {
	World = "Earth",
	CulturalSettlementNames = {
		"teuton", "Küstrin"
	}
})

DefineWorldMapTile({522, 148}, {
	World = "Earth",
	CulturalTerrainNames = {
		"Mountains", "latin", "Etna"
	}
})

DefineWorldMapTile({522, 150}, {
	World = "Earth",
	CulturalSettlementNames = {
		"greek", "Syracusae",
		"latin", "Syracusae"
	},
	FactionCulturalSettlementNames = {
		"teuton", "England", "Syracuse"
	}
})

DefineWorldMapTile({523, 102}, {
	World = "Earth",
	CulturalSettlementNames = {
		"teuton", "Kolberg", "name-elements", {
--			"compound", "prefix", -- ?
			"compound", "suffix", "high-german", "noun", "singular", "Berg"
		}
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

DefineWorldMapTile({526, 110}, {
	World = "Earth",
	CulturalSettlementNames = {
		"teuton", "Breslau"
	}
})

DefineWorldMapTile({526, 118}, {
	World = "Earth",
	CulturalSettlementNames = {
		"celt", "Vindobona",
		"latin", "Vindobona",
		"teuton", "Vienna"
	}
})

DefineWorldMapTile({526, 145}, {
	World = "Earth",
	CulturalSettlementNames = {
		"latin", "Castra Hannibalis"
	},
	FactionCulturalSettlementNames = {
		"latin", "Italy", "Catanzaro"
	}
})

DefineWorldMapTile({527, 116}, {
	World = "Earth",
	CulturalSettlementNames = {
		"slav", "Brno",
		"teuton", "Brünn"
	}
})

DefineWorldMapTile({527, 139}, {
	World = "Earth",
	CulturalSettlementNames = {
		"latin", "Barium"
	},
	FactionCulturalSettlementNames = {
		"latin", "Italy", "Bari"
	}
})

DefineWorldMapTile({528, 107}, {
	World = "Earth",
	CulturalSettlementNames = {
		"teuton", "Posen"
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

DefineWorldMapTile({531, 87}, {
	World = "Earth",
	CulturalSettlementNames = {
		"norse", "Segiztûna", "name-elements", { -- rendering of "Sigtun" in Proto-Germanic, since the Ynglinga saga the city was founded when the cultural ancestors of the Germanic peoples (= Odin's people) first settled Scandinavia
			"compound", "prefix", "proto-germanic", "noun", "Segiz",
			"compound", "suffix", "proto-germanic", "noun", "Tûna"
		},
		"norse", "Sigtun", "name-elements", {
			"compound", "prefix", "old-norse", "noun", "no-case", "Sigr", -- presumably; used "no-case" to avoid the nominative ending "-r"
			"compound", "suffix", "old-norse", "noun", "Tûn" -- presumably
		}
	}
})

DefineWorldMapTile({532, 92}, {
	World = "Earth",
	CulturalSettlementNames = {
		"norse", "Wisby"
	}
})

DefineWorldMapTile({532, 101}, {
	World = "Earth",
	CulturalSettlementNames = {
		"slav", "Gdańsk", -- Polish
		"teuton", "Danzig"
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
--		"magyar", "Buda"
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
--		"magyar", "Pest"
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

DefineWorldMapTile({537, 100}, {
	World = "Earth",
	CulturalSettlementNames = {
		"teuton", "Königsberg", "name-elements", {
			"compound", "prefix", "high-german", "noun", "singular", "genitive", "König",
			"compound", "suffix", "high-german", "noun", "singular", "Berg"
		}
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

DefineWorldMapTile({538, 144}, {
	World = "Earth",
	CulturalSettlementNames = {
		"greek", "Nicopolis"
	}
})

DefineWorldMapTile({540, 136}, {
	World = "Earth",
	CulturalSettlementNames = {
		"latin", "Scupi", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		"slav", "Skopje"
	}
})

DefineWorldMapTile({541, 145}, {
	World = "Earth",
	CulturalSettlementNames = {
		"greek", "Naupactus"
	}
})

DefineWorldMapTile({542, 140}, {
	World = "Earth",
	CulturalSettlementNames = {
		"greek", "Aegae",
		"latin", "Edessa"
	}
})

DefineWorldMapTile({543, 110}, {
	World = "Earth",
	CulturalSettlementNames = {
		"slav", "Lublin"
	}
})

DefineWorldMapTile({543, 143}, {
	World = "Earth",
	CulturalSettlementNames = {
		"greek", "Larissa"
	}
})

DefineWorldMapTile({543, 150}, {
	World = "Earth",
	CulturalSettlementNames = {
		"greek", "Sparta"
	}
})

DefineWorldMapTile({544, 148}, {
	World = "Earth",
	CulturalSettlementNames = {
		"greek", "Argos"
	},
	FactionCulturalSettlementNames = {
		"greek", "Mycenae", "Mycenae"
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

DefineWorldMapTile({545, 148}, {
	World = "Earth",
	CulturalSettlementNames = {
		"greek", "Corinth"
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

DefineWorldMapTile({546, 146}, {
	World = "Earth",
	CulturalSettlementNames = {
		"greek", "Thebes"
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

DefineWorldMapTile({547, 147}, {
	World = "Earth",
	CulturalSettlementNames = {
		"greek", "Athens",
		"latin", "Athens"
	}
})

DefineWorldMapTile({548, 94}, {
	World = "Earth",
	CulturalSettlementNames = {
		"teuton", "Riga"
	}
})

DefineWorldMapTile({548, 145}, {
	World = "Earth",
	CulturalSettlementNames = {
		"greek", "Chalcis"
	}
})

DefineWorldMapTile({550, 87}, {
	World = "Earth",
	CulturalSettlementNames = {
		"teuton", "Reval"
		-- in Estonian: "Tallinn"
	}
})

DefineWorldMapTile({551, 155}, {
	World = "Earth",
	CulturalSettlementNames = {
		"greek", "Knossos",
		"latin", "Cnossus"
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

DefineWorldMapTile({552, 139}, {
	World = "Earth",
	CulturalSettlementNames = {
		"greek", "Komotiní"
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

DefineWorldMapTile({559, 152}, {
	World = "Earth",
	CulturalSettlementNames = {
		"greek", "Ialysus"
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

DefineWorldMapTile({561, 138}, {
	World = "Earth",
	CulturalSettlementNames = {
		"greek", "Byzantium",
		"latin", "Constantinople"
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
		"germanic", "Ansugárdiz", "name-elements", { -- rendering of "Asgard" in Proto-Germanic, as in the Ynglinga saga's story Asgard is the settlement in "Asia" in which Odin's people (here understood as the Indo-Europeans who went on to settle Scandinavia and become speakers of Proto-Germanic) used to live until they migrated to Scandinavia; should it really be placed where Astrakhan is?
			"compound", "prefix", "proto-germanic", "noun", "singular", "Ansu",
			"compound", "suffix", "proto-germanic", "noun", "singular", "Gárdiz"
		}
	},
	FactionCulturalSettlementNames = {
		"slav", "Russia", "Astrakhan"
	}
})

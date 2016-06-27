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

DefineWorldMapTile({465, 113}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "Falmouth", "name-elements", {
--			"compound", "prefix", -- ?
			"compound", "suffix", "english", "noun", "singular", "Mouth"
		}
	}
})

DefineWorldMapTile({468, 112}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "Plymouth", "name-elements", {
			"compound", "prefix", "english", "noun", "Ply",
			"compound", "suffix", "english", "noun", "singular", "Mouth"
		}
	}
})

DefineWorldMapTile({470, 111}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "Exeter"
	}
})

DefineWorldMapTile({471, 100}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "Carlisle"
	}
})

DefineWorldMapTile({471, 104}, {
	World = "Earth",
	CulturalSettlementNames = {
		"celt", "Deva",
		"latin", "Deva" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	FactionCulturalSettlementNames = {
		"teuton", "England", "Chester", "name-elements", { -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
			"word", "english", "noun", "Chester" -- presumably
		}
	}
})

DefineWorldMapTile({471, 109}, {
	World = "Earth",
	CulturalSettlementNames = {
		"celt", "Isca Silurum",
		"latin", "Isca Silurum" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	}
})

DefineWorldMapTile({471, 110}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "Angle Tribe", "Æthelingaig", -- Old English name of Athelney; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"teuton", "England", "Athelney"
	}
})

DefineWorldMapTile({472, 110}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "Angle Tribe", "Alre", -- Old English name of Aller; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"teuton", "England", "Aller"
	}
})

DefineWorldMapTile({472, 111}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "Angle Tribe", "Abbodesbyrig", "name-elements", { -- Old English name of Abbotsbury; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
			-- "compound", "prefix", "old-english", -- ?
			"compound", "suffix", "old-english", "noun", "plural", "Burg" -- presumably
		},
		"teuton", "England", "Abbotsbury"
	}
})

DefineWorldMapTile({473, 110}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "Wells", "name-elements", {
			"word", "english", "noun", "plural", "Well"
		}
	}
})

DefineWorldMapTile({474, 97}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "Berwick" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	}
})

DefineWorldMapTile({474, 109}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "Wootton Bassett"
	},
	FactionCulturalResourceNames = {
		"grain", "teuton", "Angle Tribe", "Weoland", "name-elements", { -- Old English field-name; Weoland was near the location of Wootton Bassett; the first part of the name is formed by a variant of the Old English word "weoh"; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 101.
			"compound", "prefix", "old-english", "noun", "Weo",
			"compound", "suffix", "old-english", "noun", "Land" -- presumably
		}
	}
})

DefineWorldMapTile({474, 110}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "Angle Tribe", "Ambresbyrig", "name-elements", { -- Old English name of Amesbury; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
			-- "compound", "prefix", "old-english", -- ?
			"compound", "suffix", "old-english", "noun", "plural", "Burg" -- presumably
		},
		"teuton", "England", "Amesbury"
	}
})

DefineWorldMapTile({474, 111}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "Damerham"
	},
	FactionCulturalResourceNames = {
		"grain", "teuton", "Angle Tribe", "Wedone", "name-elements", { -- Old English field-name; Wedone was near the location of Damerham; the first part of the name is formed by a variant of the Old English word "weoh"; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 101.
			"compound", "prefix", "old-english", "noun", "We",
			"compound", "suffix", "old-english", "noun", "Done"
		}
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

DefineWorldMapTile({475, 109}, {
	World = "Earth",
	FactionCulturalTerrainNames = {
		"Hills", "teuton", "Angle Tribe", "Æscesdun", "name-elements", { -- Old English name of the Berkshire Downs; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
			-- "compound", "prefix", "old-english", -- ?
			"compound", "suffix", "old-english", "noun", "Dun" -- presumably
		},
		"Hills", "teuton", "England", "Berkshire Downs", "name-elements", {
			"separate", "suffix", "english", "noun", "plural", "Down" -- presumably
		}
	}
})

DefineWorldMapTile({476, 109}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "Angle Tribe", "Abbandun", "name-elements", { -- Old English name of Abingdon; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
			-- "compound", "prefix", "old-english", -- ?
			"compound", "suffix", "old-english", "noun", "Dun" -- presumably
		},
		"teuton", "Angle Tribe", "Bænesingtun", "name-elements", { -- Old English name of Bensington; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
			-- "compound", "prefix", "old-english", -- ?
			"compound", "suffix", "old-english", "noun", "Tûn" -- presumably
		},
		"teuton", "England", "Abingdon",
		"teuton", "England", "Bensington"
	}
})

DefineWorldMapTile({476, 110}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "Angle Tribe", "Andeferas", -- Old English name of Andover; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"teuton", "England", "Winchester", "name-elements", {
			"compound", "prefix", "english", "noun", "singular", "Win",
			"compound", "suffix", "english", "noun", "singular", "Chester"
		},
		"teuton", "England", "Andover"
	}
})

DefineWorldMapTile({477, 102}, {
	World = "Earth",
	CulturalSettlementNames = {
		"celt", "Eboracum",
		"latin", "Eboracum" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	FactionCulturalSettlementNames = {
		"teuton", "England", "York" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	}
})

DefineWorldMapTile({477, 108}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "Angle Tribe", "Ægelesburg", "name-elements", { -- Old English name of Aylesbury; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
			-- "compound", "prefix", "old-english", -- ?
			"compound", "suffix", "old-english", "noun", "Burg" -- presumably
		},
		"teuton", "England", "Aylesbury"
	}
})

DefineWorldMapTile({477, 110}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "England", "Farnham"
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

DefineWorldMapTile({479, 109}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "Angle Tribe", "Gumeninga Hearh", "name-elements", { -- Old English name of Harrow on the Hill; the name means "the holy place of the Gumeningas"; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 101.
			-- the prefix is a demonym (of the Gumeningas)
			"separate", "suffix", "old-english", "noun", "Hearh"
		},
		"teuton", "England", "Harrow on the Hill"
	}
})

DefineWorldMapTile({479, 110}, {
	World = "Earth",
	FactionCulturalTerrainNames = {
		"Conifer Forest", "teuton", "Angle Tribe", "Andredesweald", "name-elements", { -- Old English name of The Weald; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
			-- "compound", "prefix", "old-english", -- ?
			"compound", "suffix", "old-english", "noun", "Weald" -- presumably
		},
		"Conifer Forest", "teuton", "England", "The Weald" -- The Weald was a forest, but of what kind?
	}
})

DefineWorldMapTile({480, 109}, {
	World = "Earth",
	CulturalSettlementNames = {
		"celt", "Londinium",
		"latin", "Londinium" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
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

DefineWorldMapTile({481, 109}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "Angle Tribe", "Assandun", "name-elements", { -- Old English name of Ashingdon; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
			-- "compound", "prefix", "old-english", -- ?
			"compound", "suffix", "old-english", "noun", "Dun" -- presumably
		},
		"teuton", "England", "Ashingdon"
	}
})

DefineWorldMapTile({481, 110}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "Angle Tribe", "Ægelesford", "name-elements", { -- Old English name of Aylesford; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
			-- "compound", "prefix", "old-english", -- ?
			"compound", "suffix", "old-english", "noun", "Ford" -- presumably
		},
		"teuton", "England", "Aylesford"
	}
})

DefineWorldMapTile({482, 110}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "Angle Tribe", "Apuldre", -- Old English name of Appledore; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"teuton", "England", "Appledore"
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

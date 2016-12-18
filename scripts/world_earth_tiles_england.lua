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
		"teuton", "england", "Falmouth"
	}
})

DefineWorldMapTile({468, 110}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "angle-tribe", "Bardanstapol", -- Old English name of Barnstaple; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"teuton", "england", "Barnstaple"
	}
})

DefineWorldMapTile({468, 112}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "england", "Plymouth"
	}
})

DefineWorldMapTile({470, 111}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "england", "Exeter"
	}
})

DefineWorldMapTile({471, 100}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "england", "Carlisle"
	}
})

DefineWorldMapTile({471, 104}, {
	World = "Earth",
	CulturalSettlementNames = {
		"celt", "Deva",
		"latin", "Deva" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	FactionCulturalSettlementNames = {
		"teuton", "england", "Chester" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	}
})

DefineWorldMapTile({471, 105}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "angle-tribe", "Bancornaburg", -- Old English name of Bangor on Dee; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"teuton", "england", "Bangor on Dee"
	}
})

DefineWorldMapTile({471, 110}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "angle-tribe", "Æthelingaig", -- Old English name of Athelney; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"teuton", "england", "Athelney"
	}
})

DefineWorldMapTile({472, 110}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "angle-tribe", "Alre", -- Old English name of Aller; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"teuton", "england", "Aller"
	}
})

DefineWorldMapTile({472, 111}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "angle-tribe", "Abbodesbyrig", -- Old English name of Abbotsbury; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"teuton", "england", "Abbotsbury"
	}
})

DefineWorldMapTile({473, 109}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "angle-tribe", "Bathum", -- Old English name of Bath; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"teuton", "england", "Bath"
	}
})

DefineWorldMapTile({473, 110}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "england", "Wells"
	}
})

DefineWorldMapTile({474, 97}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "england", "Berwick" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	}
})

DefineWorldMapTile({474, 109}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "england", "Wootton Bassett"
	},
	FactionCulturalResourceNames = {
		"grain", "teuton", "angle-tribe", "Weoland", "name-elements", { -- Old English field-name; Weoland was near the location of Wootton Bassett; the first part of the name is formed by a variant of the Old English word "weoh"; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 101.
			"compound", "prefix", "old-english", "noun", "Weo",
			"compound", "suffix", "old-english", "noun", "Land" -- presumably
		}
	}
})

DefineWorldMapTile({474, 110}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "angle-tribe", "Ambresbyrig", -- Old English name of Amesbury; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"teuton", "england", "Amesbury"
	}
})

DefineWorldMapTile({474, 111}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "angle-tribe", "Baddanbyrig", -- Old English name of the Badbury Rings; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"teuton", "england", "Damerham"
	},
	FactionCulturalResourceNames = {
		"grain", "teuton", "angle-tribe", "Wedone", "name-elements", { -- Old English field-name; Wedone was near the location of Damerham; the first part of the name is formed by a variant of the Old English word "weoh"; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 101.
			"compound", "prefix", "old-english", "noun", "We",
			"compound", "suffix", "old-english", "noun", "Done"
		}
	}
})

DefineWorldMapTile({475, 98}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "england", "Bamburgh" -- Shepherd gives it as "Bamborough" instead; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 74.
	}
})

DefineWorldMapTile({475, 99}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "england", "Newcastle" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	}
})

DefineWorldMapTile({475, 100}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "england", "Durham" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	}
})

DefineWorldMapTile({475, 104}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "angle-tribe", "Badecanwiellon", -- Old English name of Bakewell; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"teuton", "england", "Bakewell"
	}
})

DefineWorldMapTile({475, 106}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "england", "Tamworth" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
	}
})

DefineWorldMapTile({475, 109}, {
	World = "Earth",
	FactionCulturalTerrainNames = {
		"Hills", "teuton", "angle-tribe", "Æscesdun", "name-elements", { -- Old English name of the Berkshire Downs; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
			-- "compound", "prefix", "old-english", -- ?
			"compound", "suffix", "old-english", "noun", "Dun" -- presumably
		},
		"Hills", "teuton", "england", "Berkshire Downs", "name-elements", {
			"separate", "suffix", "english", "noun", "plural", "Down" -- presumably
		}
	}
})

DefineWorldMapTile({476, 109}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "angle-tribe", "Abbandun", -- Old English name of Abingdon; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"teuton", "angle-tribe", "Bænesingtun", -- Old English name of Bensington; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"teuton", "england", "Abingdon",
		"teuton", "england", "Bensington"
	}
})

DefineWorldMapTile({476, 110}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "angle-tribe", "Basengum", -- Old English name of Basing; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"teuton", "angle-tribe", "Andeferas", -- Old English name of Andover; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"teuton", "england", "Winchester",
		"teuton", "england", "Basing",
		"teuton", "england", "Andover"
	}
})

DefineWorldMapTile({477, 102}, {
	World = "Earth",
	CulturalSettlementNames = {
		"celt", "Eboracum",
		"latin", "Eboracum" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	FactionCulturalSettlementNames = {
		"teuton", "england", "York" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	}
})

DefineWorldMapTile({477, 108}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "angle-tribe", "Ægelesburg", -- Old English name of Aylesbury; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"teuton", "england", "Aylesbury"
	}
})

DefineWorldMapTile({477, 110}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "england", "Farnham"
	}
})

DefineWorldMapTile({478, 102}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "england", "Hull" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	}
})

DefineWorldMapTile({478, 104}, { -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "england", "Lincoln"
	}
})

DefineWorldMapTile({479, 109}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "angle-tribe", "Gumeninga Hearh", -- Old English name of Harrow on the Hill; the name means "the holy place of the Gumeningas"; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 101.
		"teuton", "england", "Harrow on the Hill"
	}
})

DefineWorldMapTile({479, 110}, {
	World = "Earth",
	FactionCulturalTerrainNames = {
		"Conifer Forest", "teuton", "angle-tribe", "Andredesweald", "name-elements", { -- Old English name of The Weald; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
			-- "compound", "prefix", "old-english", -- ?
			"compound", "suffix", "old-english", "noun", "Weald" -- presumably
		},
		"Conifer Forest", "teuton", "england", "The Weald" -- The Weald was a forest, but of what kind?
	}
})

DefineWorldMapTile({480, 109}, {
	World = "Earth",
	CulturalSettlementNames = {
		"celt", "Londinium",
		"latin", "Londinium" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	FactionCulturalSettlementNames = {
		"teuton", "england", "London"
	}
})

DefineWorldMapTile({480, 111}, { -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "england", "Newhaven"
	}
})

DefineWorldMapTile({481, 109}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "angle-tribe", "Assandun", -- Old English name of Ashingdon; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"teuton", "angle-tribe", "Beamfleot", -- Old English name of Benfleet; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"teuton", "england", "Ashingdon",
		"teuton", "england", "Benfleet"
	}
})

DefineWorldMapTile({481, 110}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "angle-tribe", "Ægelesford", -- Old English name of Aylesford; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"teuton", "england", "Aylesford"
	}
})

DefineWorldMapTile({482, 110}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "angle-tribe", "Apuldre", -- Old English name of Appledore; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"teuton", "england", "Appledore"
	}
})

DefineWorldMapTile({483, 110}, { -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "england", "Dover"
	}
})

DefineWorldMapTile({484, 106}, { -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "england", "Yarmouth"
	}
})

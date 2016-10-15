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

DefineWorldMapTile({492, 111}, {
	World = "Earth",
	CulturalSettlementNames = {
		"latin", "Aduatuca"
	},
	FactionCulturalSettlementNames = {
		"teuton", "netherlands", "Brussels"
	}
})

DefineWorldMapTile({493, 107}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "netherlands", "Amsterdam"
	}
})

DefineWorldMapTile({494, 109}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "netherlands", "'s-Hertogenbosch", "name-elements", {
			"compound", "prefix", "dutch", "noun", "singular", "genitive", "Hertog",
			"compound", "suffix", "dutch", "noun", "singular", "Bosch"
		}
	}
})

DefineWorldMapTile({495, 111}, {
	World = "Earth",
	CulturalSettlementNames = {
		"celt", "Aduatuca" -- Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, pp. 223-226.
	},
	FactionCulturalSettlementNames = {
		"latin", "france", "Tongres"
	}
})

DefineWorldMapTile({495, 112}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"latin", "france", "Liège"
	}
})

DefineWorldMapTile({496, 104}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "netherlands", "Leeuwarden" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
	}
})

DefineWorldMapTile({497, 106}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "netherlands", "Zwolle" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
	}
})

DefineWorldMapTile({497, 115}, {
	World = "Earth",
	CulturalSettlementNames = {
		"teuton", "Luxemburg", "name-elements", {
--			"compound", "prefix", -- ?
			"compound", "suffix", "high-german", "noun", "singular", "Burg"
		}
	},
	FactionCulturalSettlementNames = {
		"latin", "france", "Luxembourg", "name-elements", {
--			"compound", "prefix", -- ?
			"compound", "suffix", "french", "noun", "singular", "Bourg"
		}
	}
})

DefineWorldMapTile({498, 105}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "netherlands", "Assen" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
	}
})

DefineWorldMapTile({500, 104}, {
	World = "Earth",
	FactionCulturalSettlementNames = {
		"teuton", "netherlands", "Emden"
	}
})


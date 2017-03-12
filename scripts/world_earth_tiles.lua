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
--      (c) Copyright 2016-2017 by Andrettin
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

--Load("scripts/world_earth_tiles_africa.lua")
--Load("scripts/world_earth_tiles_asia.lua")
Load("scripts/world_earth_tiles_austria.lua") -- German-speaking territories of the Empire of Austria, as well as Carniola
Load("scripts/world_earth_tiles_bulgaria.lua")
--Load("scripts/world_earth_tiles_egypt.lua")
Load("scripts/world_earth_tiles_england.lua")
Load("scripts/world_earth_tiles_finland.lua")
Load("scripts/world_earth_tiles_france.lua") -- modern France (excluding Corsica)
Load("scripts/world_earth_tiles_germany.lua") -- territory of Imperial Germany (excluding Alsace-Lorraine)
Load("scripts/world_earth_tiles_greece.lua") -- territory of modern Greece
Load("scripts/world_earth_tiles_hungary.lua") -- includes Transylvania, Slovakia and Vojvodina
Load("scripts/world_earth_tiles_illyria.lua") -- Western Balkans: Albania and former Yugoslavia (sans Slovenia, Vojvodina and Istria)
Load("scripts/world_earth_tiles_ireland.lua")
Load("scripts/world_earth_tiles_italy.lua") -- includes Corsica since it is closer to the Italian mainland than to France, and since for centuries it belonged to Genoa
Load("scripts/world_earth_tiles_low_countries.lua") -- Netherlands, Belgium and Luxembourg
Load("scripts/world_earth_tiles_portugal.lua")
Load("scripts/world_earth_tiles_romania.lua") -- Moldavia, Wallachia, Dobruja and Bessarabia
Load("scripts/world_earth_tiles_scandinavia.lua")
Load("scripts/world_earth_tiles_scotland.lua")
Load("scripts/world_earth_tiles_spain.lua")
Load("scripts/world_earth_tiles_ukraine.lua")
Load("scripts/world_earth_tiles_wales.lua")

DefineWorldMapTile({418, 73}, {
	World = "Earth",
	CulturalSettlementNames = {
		"norse", "Reykjavik"
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
		"suebi", "Bubienum", -- name of the Marcomannic capital; also known as Marobudum; either located where modern Prague or Budweis are; Source: Frederick Kohlrausch, "A History of Germany", 1844, p. 57.
		"teuton", "Prague"
	}
})

DefineWorldMapTile({521, 153}, {
	World = "Earth",
	CulturalSettlementNames = {
		-- Valetta (in Maltese?)
	}
})

DefineWorldMapTile({527, 116}, {
	World = "Earth",
	CulturalSettlementNames = {
		"slav", "Brno",
		"teuton", "Brünn"
	}
})

DefineWorldMapTile({538, 107}, {
	World = "Earth",
	CulturalSettlementNames = {
		"slav", "Warsaw"
	}
})

DefineWorldMapTile({543, 110}, {
	World = "Earth",
	CulturalSettlementNames = {
		"slav", "Lublin"
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
		"teuton", "Lemberg"
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

DefineWorldMapTile({559, 102}, {
	World = "Earth",
	CulturalSettlementNames = {
		"slav", "Minsk"
	}
})

DefineWorldMapTile({562, 122}, {
	World = "Earth",
	CulturalSettlementNames = {
		"slav", "Kishinev"
	}
})

DefineWorldMapTile({566, 86}, {
	World = "Earth",
	CulturalSettlementNames = {
		"slav", "Saint Petersburg"
	}
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
		"greek", "Tanais",
		"latin", "Tanais" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	FactionCulturalSettlementNames = {
		"slav", "russia", "Rostov-on-Don"
	}
})

DefineWorldMapTile({618, 124}, {
	World = "Earth",
	CulturalSettlementNames = {
		"germanic", "Ansugárdiz"
	},
	FactionCulturalSettlementNames = {
		"slav", "russia", "Astrakhan"
	}
})

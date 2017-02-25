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
--      (c) Copyright 2015-2017 by Andrettin
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

DefineFaction("angle-tribe", {
	Name = "Angle Tribe",
	Civilization = "anglo-saxon",
	Type = "tribe",
	Colors = {"white"},
	DevelopsTo = {"england", "bernicia", "deira", "east-anglia", "mercia", "middle-anglia", "northumbria", "scotland"},
	FactionUpgrade = "upgrade-faction-angle-tribe"
})

DefineFaction("avione-tribe", {
	Name = "Avione Tribe",
	Civilization = "anglo-saxon", -- accurate?
	Type = "tribe",
	Colors = {"white"},
	FactionUpgrade = "upgrade-faction-avione-tribe"
})

DefineFaction("charude-tribe", {
	Name = "Charude Tribe",
	Civilization = "anglo-saxon", -- accurate?
	Type = "tribe",
	Colors = {"purple"},
	DevelopsTo = {"jutland"}, -- same general area
	FactionUpgrade = "upgrade-faction-charude-tribe"
})

DefineFaction("jute-tribe", {
	Name = "Jute Tribe",
	Civilization = "anglo-saxon", -- accurate?
	Type = "tribe",
	Colors = {"red", "white"},
	DevelopsTo = {"jutland", "kent"},
	FactionUpgrade = "upgrade-faction-jute-tribe"
})

DefineFaction("bernice-tribe", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 74.
	Name = "Bernice Tribe",
	Civilization = "anglo-saxon",
	Type = "tribe",
	Colors = {"brown"},
	DevelopsTo = {"bernicia", "northumbria", "england", "scotland"},
	FactionUpgrade = "upgrade-faction-bernice-tribe",
	DefaultAI = "sea-attack",
	Description = "The Bernice were an Anglian people who established themselves on the Northumbrian coast, eventually managing to conquer the surrounding Celtic territories."
})

DefineFaction("dere-tribe", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 74.
	Name = "Dere Tribe",
	Civilization = "anglo-saxon",
	Type = "tribe",
	Colors = {"blue"},
	DevelopsTo = {"deira", "northumbria", "england", "scotland"},
	FactionUpgrade = "upgrade-faction-dere-tribe",
	DefaultAI = "sea-attack",
	Description = "The Dere were a group of Anglian peoples, who originally dwelled in the central and eastern parts of modern Yorkshire. Their name comes from the British word \"deifr\" (meaning \"waters\"), likely due to their initial settlements being located at the confluence of multiple rivers into the Humber."
})

DefineFaction("gumeninga-tribe", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 101.
	Name = "Gumeninga Tribe",
	Civilization = "anglo-saxon",
	Type = "tribe",
	Colors = {"brown"},
	DevelopsTo = {"england"},
	FactionUpgrade = "upgrade-faction-gumeninga-tribe", -- since all we know about them is their religious location, it makes sense to give them a priest-related bonus
	DefaultAI = "sea-attack",
	Description = "The Gumeningas were an Anglo-Saxon tribe who inhabited the area of Middlesex.",
	Background = "The name of the Gumeningas was present in the place name \"Gumeninga hearh\" (the Old English name for Harrow on the Hill), meaning \"the holy place of the Gumeningas\"."
})

DefineFaction("bernicia", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 75.
	Name = "Bernicia",
	Civilization = "anglo-saxon",
	Type = "polity",
	Colors = {"brown"},
	DefaultTier = "kingdom",
	DevelopsTo = {"northumbria", "england", "scotland"},
	FactionUpgrade = "upgrade-faction-bernicia",
	DefaultAI = "sea-attack",
	Description = "Bernicia was the kingdom founded by the Bernice people in Northumbria."
})

DefineFaction("deira", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 75.
	Name = "Deira",
	Civilization = "anglo-saxon",
	Type = "polity",
	Colors = {"blue"},
	DefaultTier = "kingdom",
	DevelopsTo = {"northumbria", "england", "scotland"},
	FactionUpgrade = "upgrade-faction-deira",
	DefaultAI = "sea-attack",
	Description = "Deira was the kingdom founded by the Dere people in Northumbria."
})

DefineFaction("east-anglia", {
	Name = "East Anglia",
	Civilization = "anglo-saxon",
	Type = "polity",
	Colors = {"pink"},
	DefaultTier = "kingdom",
	DevelopsTo = {"england"},
	FactionUpgrade = "upgrade-faction-east-anglia",
	DefaultAI = "sea-attack",
	Description = ""
})

DefineFaction("essex", {
	Name = "Essex",
	Civilization = "anglo-saxon",
	Type = "polity",
	Colors = {"purple"},
	DefaultTier = "kingdom",
	DevelopsTo = {"england"},
	FactionUpgrade = "upgrade-faction-essex",
	DefaultAI = "sea-attack",
	Description = ""
})

DefineFaction("jutland", {
	Name = "Jutland",
	Civilization = "anglo-saxon",
	Type = "polity",
	Colors = {"red", "white"},
	DefaultTier = "duchy",
	FactionUpgrade = "upgrade-faction-jutland"
})

DefineFaction("kent", {
	Name = "Kent",
	Civilization = "anglo-saxon",
	Type = "polity",
	Colors = {"cyan"},
	DefaultTier = "kingdom",
	DevelopsTo = {"england"},
	FactionUpgrade = "upgrade-faction-kent",
	DefaultAI = "sea-attack",
	Description = ""
})

DefineFaction("mercia", {
	Name = "Mercia",
	Civilization = "anglo-saxon",
	Type = "polity",
	Colors = {"white"},
	DefaultTier = "kingdom",
	DevelopsTo = {"england"},
	FactionUpgrade = "upgrade-faction-mercia",
	DefaultAI = "sea-attack",
	Description = ""
})

DefineFaction("middle-anglia", {
	Name = "Middle Anglia",
	Civilization = "anglo-saxon",
	Type = "polity",
	Colors = {"violet"},
	DefaultTier = "kingdom",
	DevelopsTo = {"england"},
	FactionUpgrade = "upgrade-faction-middle-anglia",
	DefaultAI = "sea-attack",
	Description = ""
})

DefineFaction("northumbria", {
	Name = "Northumbria",
	Civilization = "anglo-saxon",
	Type = "polity",
	Colors = {"brown"},
	DefaultTier = "kingdom",
	DevelopsTo = {"england", "scotland"},
	FactionUpgrade = "upgrade-faction-northumbria",
	DefaultAI = "sea-attack"
})

DefineFaction("wessex", {
	Name = "Wessex",
	Civilization = "anglo-saxon",
	Type = "polity",
	Colors = {"red"},
	DefaultTier = "kingdom",
	DevelopsTo = {"england"},
	FactionUpgrade = "upgrade-faction-wessex",
	DefaultAI = "sea-attack",
	Description = ""
})

DefineFaction("england", {
	Name = "England",
	Civilization = "anglo-saxon",
	Type = "polity",
	Colors = {"red", "white"},
	DefaultTier = "kingdom",
	FactionUpgrade = "upgrade-faction-england",
	SettlementNames = {
		"Ashford", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Bamburgh", -- Shepherd gives it as "Bamborough" instead; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 74.
		"Bedford", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Blackburn", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Blackpool", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Blackwall",
		"Chatham",
		"Chester",
		"Chesterfield",
		"Dartford",
		"Dartmouth",
		"Dorchester",
		"Durham", -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
		"Edinburgh", -- in Scotland
		"Falmouth",
		"Fishguard", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Gateshead", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Greenwich",
		"Guildford", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Harrow on the Hill",
		"Hempstead", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Holyhead",
		"Hull", -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
		"Huntingdon",
		"Kingston",
		"Kirkwall", -- in Scotland
		"Liverpool", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Longford", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Maidstone", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Mansfield",
		"Marshfield",
		"Newbury", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Newcastle", -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
		"Newhaven", -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
		"Newport", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Newquay", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Northfleet",
		"Norwich",
		"Oldham",
		"Oxford", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Plymouth",
		"Portsmouth",
		"Reading",
		"Redditch", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Salisbury", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Scarborough",
		"Shrewsbury", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Stockport", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Stonehaven", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Swanscombe",
		"Swansea", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Torbay", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Waterford",
		"Wells",
		"Westbury",
		"Westport",
		"Whitehaven", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Wimbledon",
		"Woodbridge",
		"Woolwich",
		"Wormshill",
		"Yarmouth" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	},
	ProvinceNames = {
		"Berkshire",
		"Cheshire",
		"Cornwall",
		"Dorset",
		"East Anglia",
		"Essex",
		"Hampshire",
		"Lancashire",
		"Middlesex",
		"Norfolk",
		"Northumberland",
		"Portland", -- duchy
		"Shropshire",
		"Somerset",
		"Suffolk",
		"Sussex",
		"Wessex",
		"Wiltshire"
	}
})

DefineFaction("scotland", {
	Name = "Scotland",
	Civilization = "anglo-saxon",
	Type = "polity",
	Colors = {"blue", "white"},
	DefaultTier = "kingdom",
	FactionUpgrade = "upgrade-faction-scotland"
})

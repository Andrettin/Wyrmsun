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
--      (c) Copyright 2015-2018 by Andrettin
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

-- Tribes

DefineFaction("dane-tribe", {
	Name = "Dane Tribe",
	Civilization = "norse",
	Type = "tribe",
	Colors = {"red", "white"},
	DefaultAI = "sea-attack",
	FactionUpgrade = "upgrade-faction-dane-tribe"
	-- Danes were in Scania and Zealand in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
})

DefineFaction("geat-tribe", {
	Name = "Geat Tribe",
	Civilization = "norse",
	Type = "tribe",
	Colors = {"teal"},
	DefaultAI = "sea-attack",
--	DevelopsFrom = {"goth-tribe"},
	FactionUpgrade = "upgrade-faction-geat-tribe"
})

DefineFaction("gute-tribe", {
	Name = "Gute Tribe",
	Civilization = "norse",
	Type = "tribe",
	Colors = {"cyan"},
	DefaultAI = "sea-attack",
	FactionUpgrade = "upgrade-faction-gute-tribe"
})

DefineFaction("sitone-tribe", { -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	Name = "Sitone Tribe",
	Civilization = "norse", -- correct?
	Type = "tribe",
	Colors = {"brown"},
	DefaultAI = "sea-attack",
	FactionUpgrade = "upgrade-faction-sitone-tribe"
})

DefineFaction("swede-tribe", {
	Name = "Swede Tribe",
	Civilization = "norse",
	Type = "tribe",
	Colors = {"blue", "yellow"},
	DefaultAI = "sea-attack",
	FactionUpgrade = "upgrade-faction-swede-tribe"
})

-- Polities

DefineFaction("scania", {
	Name = "Scania",
	Civilization = "norse",
	Type = "polity",
	Colors = {"green"},
	DefaultTier = "kingdom",
	DefaultAI = "sea-attack",
	Adjective = "Scanian",
	FactionUpgrade = "upgrade-faction-denmark",
	DevelopsFrom = {"dane-tribe", "swede-tribe"}
})

DefineFaction("denmark", {
	Name = "Denmark",
	Civilization = "norse",
	Type = "polity",
	Colors = {"red", "white"},
	DefaultTier = "kingdom",
	DefaultAI = "sea-attack",
	FactionUpgrade = "upgrade-faction-denmark",
	DevelopsFrom = {"dane-tribe", "scania"}
})

DefineFaction("gautland", {
	Name = "Gautland",
	Civilization = "norse",
	Type = "polity",
	Colors = {"teal"},
	DefaultTier = "kingdom",
	DefaultAI = "sea-attack",
	FactionUpgrade = "upgrade-faction-gautland",
	DevelopsFrom = {"geat-tribe"}
})

DefineFaction("gotland", {
	Name = "Gotland",
	Civilization = "norse",
	Type = "polity",
	Colors = {"cyan"},
	DefaultTier = "duchy", -- correct?
	DefaultAI = "sea-attack",
	FactionUpgrade = "upgrade-faction-gotland",
	DevelopsFrom = {"gute-tribe"}
})

DefineFaction("halogaland", {
	Name = "Halogaland",
	Civilization = "norse",
	Type = "polity",
	Colors = {"purple"},
	DefaultTier = "kingdom",
	DefaultAI = "sea-attack",
	FactionUpgrade = "upgrade-faction-norway",
	DevelopsFrom = {"sitone-tribe", "swede-tribe"}
})

DefineFaction("holmgard", {
	Name = "Holmgard",
	Civilization = "norse",
	Type = "polity",
	Colors = {"blue"},
	DefaultTier = "kingdom",
	FactionUpgrade = "upgrade-faction-sweden",
	DevelopsFrom = {"sitone-tribe", "swede-tribe"}
})

DefineFaction("hordaland", {
	Name = "Hordaland",
	Civilization = "norse",
	Type = "polity",
	Colors = {"cyan"},
	DefaultTier = "kingdom",
	DefaultAI = "sea-attack",
	FactionUpgrade = "upgrade-faction-norway",
	DevelopsFrom = {"sitone-tribe", "swede-tribe"}
})

DefineFaction("orkney", { -- Earldom of Orkney
	Name = "Orkney",
	Civilization = "norse",
	Type = "polity",
	Colors = {"yellow"},
	DefaultTier = "duchy",
	Titles = {
		"monarchy", "duchy", "Earldom"
	},
	MinisterTitles = {
		"head-of-state", "male", "monarchy", "duchy", "Earl",
		"head-of-state", "female", "monarchy", "duchy", "Earl" -- correct?
	},
	DefaultAI = "sea-attack",
	FactionUpgrade = "upgrade-faction-norway",
	DevelopsFrom = {"sitone-tribe", "swede-tribe"}
})

DefineFaction("norway", {
	Name = "Norway",
	Civilization = "norse",
	Type = "polity",
	Colors = {"blue", "red"},
	DefaultTier = "kingdom",
	DefaultAI = "sea-attack",
	FactionUpgrade = "upgrade-faction-norway",
	DevelopsFrom = {"sitone-tribe", "swede-tribe", "halogaland", "hordaland", "orkney"}
})

DefineFaction("sweden", {
	Name = "Sweden",
	Civilization = "norse",
	Type = "polity",
	Colors = {"blue", "yellow"},
	DefaultTier = "kingdom",
	DefaultAI = "sea-attack",
	Adjective = "Swedish",
	FactionUpgrade = "upgrade-faction-sweden",
	DevelopsFrom = {"sitone-tribe", "swede-tribe", "gautland", "scania"}
})

-- Mercenary Companies

DefineFaction("jomsvikings", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 94.
	Name = "Jomsvikings",
	Civilization = "norse",
	Type = "mercenary-company",
	Colors = {"blue"},
	DefaultTier = "duchy",
	FactionUpgrade = "upgrade-faction-dane-tribe",
	Description = "The Jomsvikings were a group of warriors and pirates based in Jomsburg."
})

DefineFaction("varangian-guard", {
	Name = "Varangian Guard",
	Civilization = "norse",
	Type = "mercenary-company",
	Colors = {"red"},
	DefaultTier = "duchy",
	FactionUpgrade = "upgrade-faction-swede-tribe"
})

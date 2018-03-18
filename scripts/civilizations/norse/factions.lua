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
	FactionUpgrade = "upgrade-faction-dane-tribe",
	Icon = "icon-flag-blue-lion-on-yellow",
	DevelopsFrom = {"asa-tribe", "hersing-tribe", "hlesing-tribe", "jarling-tribe", "karling-tribe", "skeldung-tribe", "thralling-tribe"}
	-- Danes were in Scania and Zealand in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
})

DefineFaction("geat-tribe", {
	Name = "Geat Tribe",
	Civilization = "norse",
	Type = "tribe",
	Colors = {"teal"},
	FactionUpgrade = "upgrade-faction-geat-tribe",
	Icon = "icon-flag-yellow-lion-on-cyan",
	DevelopsFrom = {"asa-tribe", "goth-tribe", "hersing-tribe", "hlesing-tribe", "jarling-tribe", "karling-tribe", "thielung-tribe", "thralling-tribe"}
})

DefineFaction("gute-tribe", {
	Name = "Gute Tribe",
	Civilization = "norse",
	Type = "tribe",
	Colors = {"cyan"},
	FactionUpgrade = "upgrade-faction-gute-tribe",
	Icon = "icon-flag-old-austria",
	DevelopsFrom = {"asa-tribe", "goth-tribe", "hersing-tribe", "hlesing-tribe", "jarling-tribe", "karling-tribe", "thielung-tribe", "thralling-tribe"}
})

DefineFaction("sitone-tribe", { -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	Name = "Sitone Tribe",
	Civilization = "norse", -- correct?
	Type = "tribe",
	Colors = {"brown"},
	FactionUpgrade = "upgrade-faction-sitone-tribe",
	Icon = "icon-flag-five-red-birds-on-yellow",
	DevelopsFrom = {"asa-tribe", "hersing-tribe", "jarling-tribe", "karling-tribe", "thralling-tribe", "yngling-tribe"}
})

DefineFaction("swede-tribe", {
	Name = "Swede Tribe",
	Civilization = "norse",
	Type = "tribe",
	Colors = {"blue", "yellow"},
	FactionUpgrade = "upgrade-faction-swede-tribe",
	Icon = "icon-flag-yellow-lion-on-cyan",
	DevelopsFrom = {"asa-tribe", "hersing-tribe", "jarling-tribe", "karling-tribe", "thralling-tribe", "yngling-tribe"}
})

-- Polities

DefineFaction("scania", {
	Name = "Scania",
	Civilization = "norse",
	Type = "polity",
	Colors = {"green"},
	DefaultTier = "kingdom",
	Adjective = "Scanian",
	FactionUpgrade = "upgrade-faction-denmark",
	Icon = "icon-flag-habsburg",
	DevelopsFrom = {"dane-tribe", "swede-tribe"}
})

DefineFaction("denmark", {
	Name = "Denmark",
	Civilization = "norse",
	Type = "polity",
	Colors = {"red", "white"},
	DefaultTier = "kingdom",
	FactionUpgrade = "upgrade-faction-denmark",
	Icon = "icon-flag-blue-lion-on-yellow",
	DevelopsFrom = {"dane-tribe", "scania"}
})

DefineFaction("gautland", {
	Name = "Gautland",
	Civilization = "norse",
	Type = "polity",
	Colors = {"teal"},
	DefaultTier = "kingdom",
	FactionUpgrade = "upgrade-faction-gautland",
	Icon = "icon-flag-yellow-lion-on-cyan",
	DevelopsFrom = {"geat-tribe"}
})

DefineFaction("gotland", {
	Name = "Gotland",
	Civilization = "norse",
	Type = "polity",
	Colors = {"cyan"},
	DefaultTier = "duchy", -- correct?
	FactionUpgrade = "upgrade-faction-gotland",
	Icon = "icon-flag-old-austria",
	DevelopsFrom = {"gute-tribe"}
})

DefineFaction("halogaland", {
	Name = "Halogaland",
	Civilization = "norse",
	Type = "polity",
	Colors = {"purple"},
	DefaultTier = "kingdom",
	FactionUpgrade = "upgrade-faction-norway",
	Icon = "icon-flag-five-red-birds-on-yellow",
	DevelopsFrom = {"sitone-tribe", "swede-tribe"}
})

DefineFaction("holmgard", {
	Name = "Holmgard",
	Civilization = "norse",
	Type = "polity",
	Colors = {"blue"},
	DefaultTier = "kingdom",
	FactionUpgrade = "upgrade-faction-sweden",
	Icon = "icon-flag-five-black-birds-on-purple",
	DevelopsFrom = {"sitone-tribe", "swede-tribe"}
})

DefineFaction("hordaland", {
	Name = "Hordaland",
	Civilization = "norse",
	Type = "polity",
	Colors = {"cyan"},
	DefaultTier = "kingdom",
	FactionUpgrade = "upgrade-faction-norway",
	Icon = "icon-flag-five-orange-birds-on-black",
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
	FactionUpgrade = "upgrade-faction-norway",
	Icon = "icon-flag-cyan-lion-on-red",
	DevelopsFrom = {"sitone-tribe", "swede-tribe"}
})

DefineFaction("norway", {
	Name = "Norway",
	Civilization = "norse",
	Type = "polity",
	Colors = {"blue", "red"},
	DefaultTier = "kingdom",
	FactionUpgrade = "upgrade-faction-norway",
	Icon = "icon-flag-cyan-lion-on-red",
	DevelopsFrom = {"sitone-tribe", "swede-tribe", "halogaland", "hordaland", "orkney"}
})

DefineFaction("sweden", {
	Name = "Sweden",
	Civilization = "norse",
	Type = "polity",
	Colors = {"blue", "yellow"},
	DefaultTier = "kingdom",
	Adjective = "Swedish",
	FactionUpgrade = "upgrade-faction-sweden",
	Icon = "icon-flag-yellow-lion-on-cyan",
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

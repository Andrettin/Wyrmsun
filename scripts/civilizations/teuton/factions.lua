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
--      (c) Copyright 2015-2021 by Andrettin
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

DefineFaction("saxon-tribe", {
	Name = "Saxon Tribe",
	Adjective = "Saxon",
	Civilization = "teuton",
	Type = "tribe",
	Color = "pink",
	FactionUpgrade = "upgrade-faction-saxon-tribe",
	Icon = "icon-flag-red-lion-on-green",
	DevelopsFrom = {"asa-tribe", "hersing-tribe", "hlesing-tribe", "ingaevone-tribe", "jarling-tribe", "karling-tribe", "thielung-tribe", "thralling-tribe"},
	DevelopsTo = {"gumeninga-tribe", "essex", "middlesex", "sussex", "wessex"},
	--[[
	SettlementNames = {
		"Hardego", -- one of the pagi in Eastphalia in 852; Source: James Westfall Thompson, "The Early History of the Saxons as a Field for the Study of German Social Origins", 1926, p. 610.
		"Hohsingo", -- one of the pagi in Eastphalia in 852; Source: James Westfall Thompson, "The Early History of the Saxons as a Field for the Study of German Social Origins", 1926, p. 610.
		"Suabengo" -- one of the pagi in Eastphalia in 852; Source: James Westfall Thompson, "The Early History of the Saxons as a Field for the Study of German Social Origins", 1926, p. 610.
	}
	--]]
})

DefineFaction("chauci-tribe", {
	Name = "Chauci Tribe",
	Adjective = "Chauci",
	Civilization = "teuton",
	Type = "tribe",
	Color = "black",
	FactionUpgrade = "upgrade-faction-chauci-tribe",
	Icon = "icon-flag-five-purple-birds-on-green",
	DevelopsFrom = {"saxon-tribe"}
})

DefineFaction("cherusci-tribe", {
	Name = "Cherusci Tribe",
	Adjective = "Cherusci",
	Civilization = "teuton",
	Type = "tribe",
	Color = "teal",
	FactionUpgrade = "upgrade-faction-cherusci-tribe",
	Icon = "icon-flag-green-lion-on-purple",
	DevelopsFrom = {"saxon-tribe"}
})

DefineFaction("frisian-tribe", {
	Name = "Frisian Tribe",
	Adjective = "Frisian",
	Civilization = "teuton",
	Type = "tribe",
	Color = "violet",
	FactionUpgrade = "upgrade-faction-frisian-tribe",
	Icon = "icon-flag-green-lion-on-orange",
	DevelopsFrom = {"asa-tribe", "hersing-tribe", "hlesing-tribe", "ingaevone-tribe", "jarling-tribe", "karling-tribe", "thielung-tribe", "thralling-tribe"}
})

DefineFaction("bavarian-tribe", {
	Name = "Bavarian Tribe",
	Adjective = "Bavarian",
	Civilization = "teuton",
	Type = "tribe",
	Color = "cyan",
	FactionUpgrade = "upgrade-faction-bavarian-tribe",
	Icon = "icon-flag-five-white-birds-on-red",
	DevelopsFrom = {"marcomanni-tribe", "quadi-tribe", "buri-tribe"}, -- must be the Marcomanni or a closely related tribe to found the Bavarian Tribe
	Description = "The early Bavarians were a West Germanic people who traced their origins to the Marcomanni. Their name means \"men of Bohemia\", an appelation they gained due to the Marcomanni having established themselves in Bohemia under Marbod. The Bavarians migrated south, giving their newly-settled land the name it has to this day, Bavaria."
})

DefineFaction("varini-tribe", {
	Name = "Varini Tribe",
	Adjective = "Varini",
	Civilization = "teuton",
	Type = "tribe",
	Color = "brown",
	FactionUpgrade = "upgrade-faction-varini-tribe",
	Icon = "icon-flag-green-lion-on-orange",
	DevelopsFrom = {"saxon-tribe"}
})

-- Teuton polities

DefineFaction("brandenburg", {
	Name = "Brandenburg",
	Civilization = "teuton",
	Type = "polity",
	Color = "blue",
	DefaultTier = "duchy",
	FactionUpgrade = "upgrade-faction-brandenburg",
	Icon = "icon-flag-five-red-birds-on-yellow",
	Adjective = "Brandenburgian",
	DevelopsFrom = {"saxon-tribe"},
	Titles = {
		"monarchy", "duchy", "Margravate"
	},
	MinisterTitles = {
		"ruler", "male", "monarchy", "duchy", "Margrave",
		"ruler", "female", "monarchy", "duchy", "Margrave" -- correct?
	}
})

DefineFaction("bremen", {
	Name = "Bremen",
	Adjective = "Bremer",
	Civilization = "teuton",
	Type = "polity",
	Color = "black",
	DefaultTier = "duchy",
	FactionUpgrade = "upgrade-faction-bremen",
	Icon = "icon-flag-five-white-birds-on-red",
	DevelopsFrom = {"saxon-tribe", "chauci-tribe"}
})

DefineFaction("brunswick", {
	Name = "Brunswick",
	Adjective = "Brunswick",
	Civilization = "teuton",
	Type = "polity",
	Color = "green",
	DefaultTier = "duchy",
	FactionUpgrade = "upgrade-faction-brunswick",
	Icon = "icon-flag-old-austria",
	DevelopsFrom = {"saxon-tribe", "cherusci-tribe"}
})

DefineFaction("cologne", {
	Name = "Cologne",
	Adjective = "Cologne",
	Civilization = "teuton",
	Type = "polity",
	Color = "white",
	DefaultTier = "duchy", -- Cologne was an archbishopric in 1378; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 78-79.
	FactionUpgrade = "upgrade-faction-cologne",
	Icon = "icon-flag-five-black-birds-on-purple",
	DevelopsFrom = {"ubii-tribe"},
	Titles = {
		"theocracy", "duchy", "Archbishopric"
	},
	MinisterTitles = {
		"ruler", "none", "theocracy", "duchy", "Archbishop"
	}
})

DefineFaction("hesse", {
	Name = "Hesse",
	Civilization = "teuton",
	Type = "polity",
	Color = "black",
	DefaultTier = "duchy", -- Hesse was a landgraviate in 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
	FactionUpgrade = "upgrade-faction-hesse",
	Icon = "icon-flag-cyan-lion-on-red",
	Adjective = "Hessian",
	DevelopsFrom = {"ubii-tribe"},
	Titles = {
		"monarchy", "duchy", "Landgraviate"
	},
	MinisterTitles = {
		"ruler", "none", "monarchy", "duchy", "Landgrave"
	},
	HistoricalTiers = {
		1815, "grand_duchy" -- Hesse was a grand duchy in 1815-1866 (there were two German states called "Hesse" then, the Grand Duchy of Hesse and the Electorate of Hesse); Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	}
})

DefineFaction("lombardy", {
	Name = "Lombardy",
	Adjective = "Lombard",
	Civilization = "teuton",
	Type = "polity",
	Color = "green",
	DefaultTier = "kingdom",
	FactionUpgrade = "upgrade-faction-lombardy",
	Icon = "icon-flag-five-purple-birds-on-green",
	DevelopsFrom = {"lombard_tribe"}
})

DefineFaction("magdeburg", {
	Name = "Magdeburg",
	Adjective = "Magdeburgian",
	Civilization = "teuton",
	Type = "polity",
	Color = "black",
	DefaultTier = "duchy", -- Magdeburg was an archbishopric in 1547; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 114-115.
	FactionUpgrade = "upgrade-faction-magdeburg",
	Icon = "icon-flag-five-white-birds-on-red",
	DevelopsFrom = {"saxon-tribe", "cherusci-tribe"},
	Titles = {
		"theocracy", "duchy", "Archbishopric"
	},
	MinisterTitles = {
		"ruler", "none", "theocracy", "duchy", "Archbishop"
	},
	HistoricalGovernmentTypes = {
		1547, "theocracy" -- Political situation in Central Europe in 1547; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 114-115.
	}
})

DefineFaction("mecklenburg", {
	Name = "Mecklenburg",
	Adjective = "Mecklenburgian",
	Civilization = "teuton",
	Type = "polity",
	Color = "brown",
	DefaultTier = "grand_duchy",
	FactionUpgrade = "upgrade-faction-mecklenburg",
	Icon = "icon-flag-blue-lion-on-yellow",
	DevelopsFrom = {"saxon-tribe", "varini-tribe"}
})

DefineFaction("prussia", {
	Name = "Prussia", -- "Preussen"
	Civilization = "teuton",
	ParentFaction = "brandenburg",
	Type = "polity",
	Color = "black",
	DefaultTier = "duchy",
	FactionUpgrade = "upgrade-faction-prussia",
	Icon = "icon-flag-five-black-birds-on-purple",
	Adjective = "Prussian",
	DevelopsFrom = {"brandenburg"}
})

Load("scripts/civilizations/teuton/factions_austrian.lua")
Load("scripts/civilizations/teuton/factions_dutch.lua")
Load("scripts/civilizations/teuton/factions_swabian.lua")

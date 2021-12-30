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

DefineFaction("bastarnae-tribe", {
	Name = "Bastarnae Tribe",
	Adjective = "Bastarnae",
	Civilization = "goth",
	Type = "tribe",
	Color = "blue",
	FactionUpgrade = "upgrade-faction-bastarnae-tribe",
	Icon = "icon-flag-blue-lion-on-yellow",
	DevelopsFrom = {"gothic_tribe"}
})

DefineFaction("burgundian-tribe", {
	Name = "Burgundian Tribe",
	Adjective = "Burgundian",
	Civilization = "goth",
	Type = "tribe",
	Color = "brown",
	FactionUpgrade = "upgrade-faction-burgundian-tribe",
	Icon = "icon-flag-old-austria",
	DevelopsFrom = {"asa_tribe", "hersing_tribe", "hlesing-tribe", "jarling-tribe", "karling-tribe", "skeldung-tribe", "thielung-tribe", "thralling-tribe", "yngling-tribe"}
})

DefineFaction("herulian-tribe", {
	Name = "Herulian Tribe",
	Adjective = "Herulian",
	Civilization = "goth",
	Type = "tribe",
	Color = "green",
	FactionUpgrade = "upgrade-faction-herulian-tribe",
	Icon = "icon-flag-cyan-lion-on-red",
	DevelopsFrom = {"gothic_tribe"}
})

DefineFaction("lugii-tribe", {
	Name = "Lugii Tribe",
	Adjective = "Lugii",
	Civilization = "goth",
	Type = "tribe",
	Color = "purple",
	FactionUpgrade = "upgrade-faction-lugii-tribe",
	Icon = "icon-flag-five-purple-birds-on-green",
	DevelopsFrom = {"gothic_tribe"}
})

DefineFaction("rugian-tribe", {
	Name = "Rugian Tribe",
	Adjective = "Rugian",
	Civilization = "goth",
	Type = "tribe",
	Color = "red",
	FactionUpgrade = "upgrade-faction-rugian-tribe",
	Icon = "icon-flag-five-white-birds-on-red",
	DevelopsFrom = {"gothic_tribe"}
})

DefineFaction("silingae-tribe", {
	Name = "Silingae Tribe",
	Adjective = "Silingae",
	Civilization = "goth",
	Type = "tribe",
	Color = "orange",
	FactionUpgrade = "upgrade-faction-silingae-tribe",
	Icon = "icon-flag-green-lion-on-purple",
	DevelopsFrom = {"gothic_tribe"}
})

DefineFaction("turcilingian-tribe", {
	Name = "Turcilingian Tribe",
	Adjective = "Turcilingian",
	Civilization = "goth",
	Type = "tribe",
	Color = "blue",
	FactionUpgrade = "upgrade-faction-turcilingian-tribe",
	Icon = "icon-flag-green-lion-on-orange",
	DevelopsFrom = {"gothic_tribe"}
})

DefineFaction("vandal-tribe", {
	Name = "Vandal Tribe",
	Adjective = "Vandal",
	Civilization = "goth",
	Type = "tribe",
	Color = "cyan",
	FactionUpgrade = "upgrade-faction-vandal-tribe",
	Icon = "icon-flag-five-blue-birds-on-orange",
	DevelopsFrom = {"gothic_tribe"}
})

-- polities

DefineFaction("burgundy", {
	Name = "Burgundy",
	Civilization = "goth",
	Type = "polity",
	Color = "brown",
	DefaultTier = "kingdom",
	FactionUpgrade = "upgrade-faction-burgundy",
	Icon = "icon-flag-old-austria",
	DevelopsFrom = {"burgundian-tribe"},
	HistoricalCapitals = {
		411, "worms" -- Kingdom of the Burgundians established by Gundahar (a Burgundian tribal chief) in 411 AD, with its center in Borbetomagus (Worms); Source: Norman Davies, "Vanished Kingdoms", 2012, pp. 91-93.
	}
})

DefineFaction("gothia", {
	Name = "Gothia",
	Adjective = "Gothic",
	Civilization = "goth",
	Type = "polity",
	Color = "red",
	DefaultTier = "kingdom",
	FactionUpgrade = "upgrade-faction-gothia",
	Icon = "icon-flag-yellow-lion-on-cyan",
	DevelopsFrom = {"gothic_tribe", "herulian-tribe"}
})

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

DefineFaction("Acthnic Tribe", {
	Civilization = "gnome",
	Type = "tribe",
	Colors = {"red"},
	DevelopsTo = {"Acthna", "Untersberg"},
	FactionUpgrade = "upgrade-acthnic-tribe-faction"
})

DefineFaction("Cubital Tribe", {
	Civilization = "gnome",
	Type = "tribe",
	Colors = {"brown"},
	DevelopsTo = {"Untersberg"}
})

DefineFaction("Derro Tribe", {
	Civilization = "gnome",
	Type = "tribe",
	Colors = {"green"},
	DevelopsTo = {"Acthna", "Untersberg"},
	Playable = false,
	FactionUpgrade = "upgrade-derro-tribe-faction",
	Description = "The Derro are a cruel gnomish offshoot, which separated themselves from the rest of their kin aeons ago. They dwell in the dark depths of Nidavellir's tunnels, in caves isolated even from other underground denizens. These gnomish fiends think themselves uniquely gifted, being at the same time wary and disdainful of other peoples. They see individuals of other races trespassing on their territory as a great crime, and will gladly put them in their place with the most sadistic of measures."
})

DefineFaction("Sagan Tribe", {
	Civilization = "gnome",
	Type = "tribe",
	Colors = {"green"},
	DevelopsTo = {"Untersberg"},
	FactionUpgrade = "upgrade-sagan-tribe-faction"
})

DefineFaction("Acthna", {
	ParentFaction = "Acthnic Tribe",
	Civilization = "gnome",
	Type = "polity",
	Colors = {"red"},
	DefaultTier = "duchy"
})

DefineFaction("Untersberg", { -- Source: Franz Hartmann, "Among the Gnomes", 1895, pp. 1, 12-13.
	Civilization = "gnome",
	Type = "polity",
	Colors = {"blue"}, -- the king of Untersberg, Pypo, wore a steel-blue gown; Source: Franz Hartmann, "Among the Gnomes", 1895, pp. 12-13.
	DefaultTier = "kingdom"
})

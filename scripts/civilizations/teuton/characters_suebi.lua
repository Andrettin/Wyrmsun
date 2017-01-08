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

DefineCharacter("marbod", {
	Name = "Marbod",
	Gender = "male",
	Type = "unit-suebi-swordsman",
	Level = 2,
	Civilization = "teuton",
	Faction = "marcomanni-tribe",
	Trait = "upgrade-keen",
	HairVariation = "blond-hair",
	Description = _("A young chieftain of the Marcomanni, Marbod aspires to forge a realm for his tribe capable of withstanding the test of time."),
	Icon = "icon-marbod",
	ProvinceOfOrigin = "Brandenburg",
	Year = -9, -- Marbod, king of the Suebic tribe of the Marcomanni, conquers Bohemia in 9 BC
	DeathYear = 19, -- Marbod deposed in 19 AD
	ViolentDeath = true, -- to represent him being deposed; remove when his DeathYear is replaced with his actual year of death
	Persistent = true,
	HistoricalTitles = {
		"head-of-state", -9, 19, "teuton", "marcomanni-tribe"
	}
})

DefineCharacter("ballomar", { -- Source: "Ancient Warfare VII.6", 2013, pp. 29-32.
	Name = "Ballomar",
	Gender = "male",
	Type = "unit-suebi-swordsman",
	Civilization = "teuton",
	Faction = "marcomanni-tribe",
	Trait = "upgrade-intelligent",
	HairVariation = "brown-hair",
--	Description = _("The Marcomannic chieftain Ballomar seeks to establish his tribe in the Roman lands to their south. To that effect, he has gathered a coalition of tribes - and is ready to cross the Danube.")
})


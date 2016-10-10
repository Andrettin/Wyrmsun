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
--      (c) Copyright 2015-2016 by Andrettin
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

Load("scripts/civilizations/baltic/factions.lua")
Load("scripts/civilizations/basque/factions.lua")
Load("scripts/civilizations/celt/factions.lua")
Load("scripts/civilizations/dwarf/factions.lua")
Load("scripts/civilizations/elf/factions.lua")
Load("scripts/civilizations/etruscan/factions.lua")
Load("scripts/civilizations/uralic/factions.lua")
Load("scripts/civilizations/finnish/factions.lua")
Load("scripts/civilizations/germanic/factions.lua")
Load("scripts/civilizations/gnome/factions.lua")
Load("scripts/civilizations/goblin/factions.lua")
Load("scripts/civilizations/goth/factions.lua")
Load("scripts/civilizations/greek/factions.lua")
Load("scripts/civilizations/hittite/factions.lua")
Load("scripts/civilizations/illyrian/factions.lua")
Load("scripts/civilizations/kobold/factions.lua")
Load("scripts/civilizations/latin/factions.lua")
Load("scripts/civilizations/magyar/factions.lua")
Load("scripts/civilizations/minoan/factions.lua")
Load("scripts/civilizations/norse/factions.lua")
Load("scripts/civilizations/orc/factions.lua")
Load("scripts/civilizations/persian/factions.lua")
Load("scripts/civilizations/phoenician/factions.lua")
Load("scripts/civilizations/phrygian/factions.lua")
Load("scripts/civilizations/slav/factions.lua")
Load("scripts/civilizations/teuton/factions.lua")
Load("scripts/civilizations/thracian/factions.lua")
Load("scripts/civilizations/troll/factions.lua")

-- deity factions

DefineFaction("Asgard", {
	Civilization = "aesir",
	Type = "polity",
	Colors = {"blue"},
	DefaultTier = "kingdom",
	DefaultAI = "passive",
	HistoricalTechnologies = { -- give the Aesir iron weapons and armor from the beginning
		"upgrade-germanic-broad-sword", 0,
		"upgrade-teuton-spatha", 0,
		"upgrade-germanic-bronze-shield", 0,
		"upgrade-teuton-iron-shield", 0
	}
})

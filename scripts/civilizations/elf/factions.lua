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
--      (c) Copyright 2016-2018 by Andrettin
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

DefineFaction("annwn", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, pp. 10, 119-120.
	Name = "Annwn",
	Civilization = "elf", -- Annwn was an otherworld in Welsh legends; here we make it an elven kingdom, as (Celtic) fairies are amalgamated into elves in Wyrmsun (which makes particular sense given that in English the two were amalgamated historically as well)
	Type = "polity",
	Colors = {"brown"},
	DefaultTier = "kingdom", -- Arawn was king of Annwn
	Description = "Annwn is an elven island kingdom, famous for the civil war fought between Arawn and Hafgan for its throne."
})

DefineFaction("lintanir", {
	Name = "Lintanir",
	Civilization = "elf",
	Type = "polity",
	Colors = {"red"},
	DefaultTier = "kingdom"
})

DefineFaction("ulfdalir", {
	Name = "Ulfdalir",
	Civilization = "elf",
	Type = "polity",
	Colors = {"black"},
	DefaultTier = "kingdom", -- because Volund's father was a king (though of Finland in the original myth)
	Description = "Ulfdalir was one of the main participants in the Winter War. Facing an attack by a neighboring elven realm, they allied themselves with the frost trolls to the north."
})

DefineFaction("wesmere", {
	Name = "Wesmere",
	Civilization = "elf",
	Type = "polity",
	Colors = {"green"},
	DefaultTier = "kingdom"
})

-- Mercenary Companies

DefineFaction("bloodleaf-company", {
	Name = "Bloodleaf Company",
	Civilization = "elf",
	Type = "mercenary-company",
	Colors = {"red"},
	DefaultTier = "duchy",
	Description = ""
})

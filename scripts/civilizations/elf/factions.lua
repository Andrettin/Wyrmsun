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
--      (c) Copyright 2016-2022 by Andrettin
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
	Adjective = "Annwn",
	Civilization = "elf", -- Annwn was an otherworld in Welsh legends; here we make it an elven kingdom, as (Celtic) fairies are amalgamated into elves in Wyrmsun (which makes particular sense given that in English the two were amalgamated historically as well)
	Type = "polity",
	Color = "brown",
	DefaultTier = "kingdom", -- Arawn was king of Annwn
	Description = "Annwn is an elven island kingdom, famous for the civil war fought between Arawn and Hafgan for its throne."
})

DefineFaction("lintanir", {
	Name = "Lintanir",
	Adjective = "Lintanir",
	Civilization = "elf",
	Type = "polity",
	Color = "red",
	DefaultTier = "kingdom"
})

DefineFaction("ulfdalir", {
	Name = "Ulfdalir", -- the name means "Wolf-Dale"
	Adjective = "Ulfdalir",
	Civilization = "elf",
	Type = "polity",
	Color = "black",
	DefaultTier = "kingdom", -- because Volund's father was a king (though of Finland in the original myth)
	Description = "Ulfdalir was one of the main participants in the Winter War. Facing an attack by a neighboring elven realm, they allied themselves with the frost trolls to the north."
	
	-- has one lake, Ulfsjar
})

-- Mercenary Companies

DefineFaction("bloodleaf-company", {
	Name = "Bloodleaf Company",
	Adjective = "Bloodleaf",
	Civilization = "elf",
	Type = "mercenary_company",
	Color = "red",
	DefaultTier = "duchy",
	Description = ""
})

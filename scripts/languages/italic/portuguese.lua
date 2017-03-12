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
--      (c) Copyright 2016-2017 by Andrettin
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

DefineLanguageWord("Burgel", { -- Source: T. C. Donkin, "An Etymological Dictionary of the Romance Languages", 1864, p. 84.
	Language = "portuguese",
	Type = "noun", -- correct?
	Meanings = {},
	DerivesFrom = {"late-latin", "noun", "Burgus"}
})

DefineLanguageWord("Burguez", { -- Source: T. C. Donkin, "An Etymological Dictionary of the Romance Languages", 1864, p. 84.
	Language = "portuguese",
	Type = "noun", -- correct?
	Meanings = {},
	DerivesFrom = {"gothic", "noun", "Baúrgs"} -- apparently
})

DefineLanguageWord("Burgo", { -- Source: T. C. Donkin, "An Etymological Dictionary of the Romance Languages", 1864, p. 84.
	Language = "portuguese",
	Type = "noun",
	Meanings = {"Small Town", "Borough"},
	DerivesFrom = {"gothic", "noun", "Baúrgs"} -- the source gives it as being of Germanic origin (then going on to list a series of Germanic words including this Gothic one); presumably from the Gothic in Portuguese, since it seems likely it has the same origin as the Spanish word
})

DefineLanguageWord("Macaco", {
	Language = "portuguese",
	Type = "noun",
	Meanings = {"Monkey"}
})

DefineLanguageWord("Rico", {
	Language = "portuguese",
	Type = "adjective",
	Meanings = {"Rich"},
	DerivesFrom = {"gothic", "adjective", "Reiks"} -- Source: http://www.cnrtl.fr/definition/riche
})

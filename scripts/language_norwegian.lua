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

DefineLanguageWord("Bradd", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "norwegian",
	Type = "noun",
	Meanings = {"Shore", "Edge"},
	Gender = "masculine"
})

DefineLanguageWord("Esja", { -- vernacular; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 20.
	Language = "norwegian",
	Type = "noun",
	Meanings = {"Kind of Soaprock Usable for a Forge"}, -- source gives the German "eine Art (für die Esse anwendbare) Seifenstein" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Asjôn"},
	Gender = "feminine"
})

DefineLanguageWord("Esja", { -- vernacular; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 20.
	Language = "norwegian",
	Type = "noun",
	Meanings = {"Burning Ashes"}, -- source gives the German "glühende Asche" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Asjôn"},
	Gender = "feminine"
})

DefineLanguageWord("Torp", { -- vernacular; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 100.
	Language = "norwegian",
	Type = "noun",
	Meanings = {"Herd"}, -- source gives the German "Haufe (z. B. von Kühen)" as the meaning
	DerivesFrom = {"old-norse", "noun", "Þorp"}
})

DefineLanguageWord("Torpast", { -- vernacular; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 100.
	Language = "norwegian",
	Type = "verb",
	Meanings = {"Herd Together in Large Numbers"}, -- source gives the German "sich massenhaft zusammendrängen" as the meaning
	DerivesFrom = {"old-norse", "verb", "Þyrpast"}
})

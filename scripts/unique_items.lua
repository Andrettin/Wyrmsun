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
--      (c) Copyright 2015 by Andrettin
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

DefineUniqueItem("Toporik", { -- name means "hatchet" in Russian; renaming of the Axe of Perun (Perun is a god from Slavic mythology), here made into a dwarven unique throwing axe (since it wouldn't make much sense for the dwarves to have a throwing axe named after a god from a human mythology); was made a dwarven item under the following premise: many scholars associate the Axe of Perun with Thor's Mjollnir hammer in function and origin, and the latter was made by dwarves
	Type = "unit-bearded-throwing-axe",
	Prefix = "upgrade-item-prefix-storm",
	Suffix = "upgrade-item-suffix-of-victory"
} )

DefineUniqueItem("Svalin", { -- shield from Norse mythology which stands in front of the sun, preventing the mountains and the sea from bursting into flames; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 63.
	Type = "unit-bronze-shield",
	Prefix = "upgrade-item-prefix-impregnable",
	Suffix = "upgrade-item-suffix-of-extinguishment"
} )

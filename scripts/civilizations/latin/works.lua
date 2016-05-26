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

DefineUpgrade("upgrade-work-de-bello-gallico", { -- Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 227.
	Name = _("De Bello Gallico"),
	Work = "scroll",
	Civilization = "latin",
--	Description = "Caesar has written his treatise on the Gallic Wars, \"De Bello Gallico\"",
	Description = "This work is a treatise on the Gallic Wars.",
	Year = -52 -- De Bello Gallico was written 58-52 BC
	-- should probably have some other requirements, like events pertaining to the Gallic Wars having occurred, or Gaul having been conquered by Rome
})

DefineUpgrade("upgrade-work-notitia-dignitatum", { -- Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 231.
	Name = _("Notitia Dignitatum"),
	Work = "scroll",
	Civilization = "latin",
--	Description = "A new military handbook has been written, the \"Notitia Dignitatum\". Among other things, the manual details Germanic military units, such as the Brisigavi iuniores, the Brisigavi seniores and the Lentienses.",
	Description = "Among other things, this military handbook details Germanic military units, such as the Brisigavi iuniores, the Brisigavi seniores and the Lentienses.",
	Year = 400 -- Notitia Dignitatum was written c. 400 AD
})

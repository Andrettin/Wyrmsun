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

DefineCharacter("Mauá", { -- Source: Elisabeth von der Weid, "O bonde como elemento de expansão urbana no Rio de Janeiro", pp. 6-7.
	Name = "Mauá", -- this was the name of his barony title, not his actual name
	Gender = "male",
	Type = "unit-teuton-worker", -- businessman
	Civilization = "latin",
	ProvinceOfOrigin = "Rio de Janeiro", -- had businesses in Rio de Janeiro
	Year = 1861, -- became president of the Companhia de Carris de Ferro da Cidade à Boavista (tram company), in Rio de Janeiro
	HistoricalTitles = {
		"head-of-state", 0, 0, "latin", "Maua" -- was Baron of Mauá
	}
})

DefineCharacter("Rio Negro", { -- Source: Elisabeth von der Weid, "O bonde como elemento de expansão urbana no Rio de Janeiro", p. 9.
	Name = "Rio Negro", -- this was the name of his barony title, not his actual name
	Gender = "male",
	Type = "unit-teuton-worker", -- had businesses
	Civilization = "latin",
	ProvinceOfOrigin = "Rio de Janeiro", -- had businesses in Rio de Janeiro
	Year = 1868, -- received authorization to reactivate the Companhia de Carris de Ferro da Cidade à Boavista (tram company), in Rio de Janeiro
	HistoricalTitles = {
		"head-of-state", 0, 0, "latin", "Rio Negro" -- was Baron of Rio Negro
	}
})

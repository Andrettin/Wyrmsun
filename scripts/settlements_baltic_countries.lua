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
--      (c) Copyright 2017-2020 by Andrettin
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

DefineSite("mitau", {
	Name = "Mitau",
	MapTemplate = "earth",
	Position = {4378, 763},
	Major = true,
	CulturalNames = {
		"teuton", "Mitau"
	},
	HistoricalOwners = {
		-9000, "uralic-tribe", -- the ancestors of Finno-Ugric speaking peoples settled the eastern Baltic (apparently meaning Estonia and Latvia) c. 9000 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 184.
	},
	HistoricalBuildings = {
		-9000, 0, "town-hall"
	},
	Regions = {"europe", "west-and-central-europe"}
})

DefineSite("riga", {
	Name = "Riga",
	MapTemplate = "earth",
	Position = {4392, 750},
	Major = true,
	CulturalNames = {
		"baltic", "Riga",
		"teuton", "Riga"
	},
	HistoricalOwners = {
		-9000, "uralic-tribe", -- the ancestors of Finno-Ugric speaking peoples settled the eastern Baltic (apparently meaning Estonia and Latvia) c. 9000 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 184.
	},
	HistoricalBuildings = {
		-9000, 0, "town-hall"
	},
	Regions = {"europe", "west-and-central-europe"}
})

DefineSite("tallinn", {
	Name = "Tallinn",
	MapTemplate = "earth",
	Position = {4402, 697},
	Major = true,
	CulturalNames = {
		"finnish", "Tallinn", -- Estonian
		"teuton", "Reval"
	},
	HistoricalOwners = {
		-9000, "uralic-tribe", -- the ancestors of Finno-Ugric speaking peoples settled the eastern Baltic (apparently meaning Estonia and Latvia) c. 9000 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 184.
		1561, "sweden" -- Reval became a Swedish possession in 1561; Source: William R. Shepherd, "Historical Atlas", 1926, pp. 118-119.
	},
	HistoricalBuildings = {
		-9000, 0, "town-hall"
	},
	Regions = {"europe", "west-and-central-europe"}
})

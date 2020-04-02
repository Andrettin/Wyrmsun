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

-- some coastline fixes
SetMapTemplateTileTerrain("earth", "shallow-water", {4334, 1175})
SetMapTemplateTileTerrain("earth", "shallow-water", {4335, 1176})
SetMapTemplateTileTerrain("earth", "shallow-water", {4336, 1174})
SetMapTemplateTileTerrain("earth", "shallow-water", {4336, 1176})
SetMapTemplateTileTerrain("earth", "shallow-water", {4337, 1174})
SetMapTemplateTileTerrain("earth", "shallow-water", {4338, 1174})
SetMapTemplateTileTerrain("earth", "shallow-water", {4340, 1174})
SetMapTemplateTileTerrain("earth", "shallow-water", {4340, 1176})

SetMapTemplateTileTerrain("earth", "shallow-water", {4361, 1163})
SetMapTemplateTileTerrain("earth", "shallow-water", {4362, 1161})
SetMapTemplateTileTerrain("earth", "shallow-water", {4362, 1163})
SetMapTemplateTileTerrain("earth", "shallow-water", {4363, 1160})
SetMapTemplateTileTerrain("earth", "shallow-water", {4363, 1162})
SetMapTemplateTileTerrain("earth", "shallow-water", {4363, 1163})
SetMapTemplateTileTerrain("earth", "shallow-water", {4374, 1172})
SetMapTemplateTileTerrain("earth", "shallow-water", {4375, 1172})
SetMapTemplateTileTerrain("earth", "shallow-water", {4376, 1172})
SetMapTemplateTileTerrain("earth", "shallow-water", {4376, 1173})
SetMapTemplateTileTerrain("earth", "shallow-water", {4377, 1172})
SetMapTemplateTileTerrain("earth", "shallow-water", {4377, 1173})
SetMapTemplateTileTerrain("earth", "shallow-water", {4377, 1174})
SetMapTemplateTileTerrain("earth", "shallow-water", {4378, 1173})
SetMapTemplateTileTerrain("earth", "shallow-water", {4378, 1174})
SetMapTemplateTileTerrain("earth", "shallow-water", {4378, 1175})
SetMapTemplateTileTerrain("earth", "shallow-water", {4380, 1174})
SetMapTemplateTileTerrain("earth", "shallow-water", {4381, 1174})
SetMapTemplateTileTerrain("earth", "shallow-water", {4383, 1174})
SetMapTemplateTileTerrain("earth", "shallow-water", {4383, 1176})

-- Diolkos railed way was built in the 6th century BC, during or after the time of Corinth's tyrant Periander (which is c. 600 BC), linking the two parts of the Isthmus of Corinth; Source: M. J. T. Lewis, "Railways in the Greek and Roman World", 2001, pp. 10-12.
SetMapTemplateTileTerrain("earth", "railroad", {4362, 1184}, -600)
SetMapTemplateTileTerrain("earth", "railroad", {4362, 1185}, -600)
SetMapTemplateTileTerrain("earth", "railroad", {4363, 1185}, -600)

-- the Diolkos railed way was partially destroyed and likely entirely put out of use in 67 AD; Source: M. J. T. Lewis, "Railways in the Greek and Roman World", 2001, pp. 10-12.
SetMapTemplateTileTerrain("earth", "", {4362, 1184}, 67)
SetMapTemplateTileTerrain("earth", "", {4362, 1185}, 67)
SetMapTemplateTileTerrain("earth", "", {4363, 1185}, 67)

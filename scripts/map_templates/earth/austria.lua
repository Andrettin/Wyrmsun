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

SetMapTemplateTileTerrain("earth", "shallow-water", 4220, 960, "Lake Neusiedl")
SetMapTemplateTileTerrain("earth", "shallow-water", 4220, 961, "Lake Neusiedl")
SetMapTemplateTileTerrain("earth", "shallow-water", 4221, 958, "Lake Neusiedl")
SetMapTemplateTileTerrain("earth", "shallow-water", 4221, 959, "Lake Neusiedl")
SetMapTemplateTileTerrain("earth", "shallow-water", 4221, 960, "Lake Neusiedl")
SetMapTemplateTileTerrain("earth", "shallow-water", 4221, 961, "Lake Neusiedl")
SetMapTemplateTileTerrain("earth", "shallow-water", 4222, 958, "Lake Neusiedl")
SetMapTemplateTileTerrain("earth", "shallow-water", 4222, 959, "Lake Neusiedl")
SetMapTemplateTileTerrain("earth", "shallow-water", 4222, 960, "Lake Neusiedl")
SetMapTemplateTileTerrain("earth", "shallow-water", 4223, 958, "Lake Neusiedl")
SetMapTemplateTileTerrain("earth", "shallow-water", 4223, 959, "Lake Neusiedl")

-- Carnuntum
SetMapTemplateUnit("earth", "unit-latin-town-hall", "rome", {4224, 955}, 10, 526) -- Upper Pannonia (where Carnuntum was located) acquired by Rome in 10 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
SetMapTemplateUnit("earth", "unit-latin-barracks", "rome", {4224, 955}, 161, 526) -- Legionary base present in Carnuntum in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
-- Carnuntum no longer under Roman control by 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.

-- Vienna / Vindobona
--SetMapTemplateUnit("earth", "unit-latin-town-hall", "rome", {4212, 952}, 10) -- Upper Pannonia (where Vindobona was located) acquired by Rome in 10 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
SetMapTemplateUnit("earth", "unit-latin-barracks", "rome", {4212, 952}, 10, 526) -- Legionary base present in Vindobona in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
-- Vindobona no longer under Roman control by 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.

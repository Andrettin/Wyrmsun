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

DefineSpecies("akh", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, pp. 37-38.
	Name = "Akh",
	HomePlane = "duat",
	Sapient = true,
	Description = "The akhs are powerful luminescent spirits who dwell in Duat."
})

DefineSpecies("akh-iqer", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 38.
	Name = "Akh-Iqer",
	HomePlane = "duat",
	Sapient = true,
	Description = "An akh-iqer is a particularly mighty akh, who claims to have achieved perfection."
})

DefineSpecies("einherjar", {
	Name = "Einherjar",
	HomePlane = "asgard",
	Sapient = true,
	Description = "The Einherjar were originally souls of mortals who believed in the Aesir and ascended to Asgard. Being deemed worthy warriors, they were accepted into Valhalla and became mighty Einherjar."
})

DefineSpecies("sylph", {
	Name = "Sylph",
	HomePlane = "vanaheim",
	Sapient = true,
	Description = "Sylphs are elf-like creatures who possess a pair of butterfly wings. They serve the Vanir."
})

DefineSpecies("valkyrie", {
	Name = "Valkyrie",
	HomePlane = "asgard",
	Sapient = true,
	Description = "The Valkyries are warrior maidens who dwell in Asgard, greeting the souls of powerful mortals into Valhalla."
})

-- Valkyrie Names:
-- "Sigrdrifa", -- "Sigrdrífa"; Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, p. 80.

Load("scripts/species/ethereal/angel.lua")
Load("scripts/species/ethereal/demon.lua")
Load("scripts/species/ethereal/elemental.lua")

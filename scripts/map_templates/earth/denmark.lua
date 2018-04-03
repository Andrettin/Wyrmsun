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
--      (c) Copyright 2016-2018 by Andrettin
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

-- some coastline fixes in the Danish Islands, to make them not be connected to the mainland or between themselves by land
SetMapTemplateTileTerrain("earth", "shallow-water", {4060, 784})
SetMapTemplateTileTerrain("earth", "shallow-water", {4061, 782})
SetMapTemplateTileTerrain("earth", "shallow-water", {4061, 783})
SetMapTemplateTileTerrain("earth", "shallow-water", {4062, 782})
SetMapTemplateTileTerrain("earth", "shallow-water", {4062, 785})
SetMapTemplateTileTerrain("earth", "shallow-water", {4081, 797})
SetMapTemplateTileTerrain("earth", "shallow-water", {4110, 796})
SetMapTemplateTileTerrain("earth", "shallow-water", {4111, 796})
SetMapTemplateTileTerrain("earth", "shallow-water", {4111, 798})
SetMapTemplateTileTerrain("earth", "shallow-water", {4113, 797})
SetMapTemplateTileTerrain("earth", "shallow-water", {4114, 797})
SetMapTemplateTileTerrain("earth", "shallow-water", {4115, 796})
SetMapTemplateTileTerrain("earth", "shallow-water", {4125, 772})
SetMapTemplateTileTerrain("earth", "shallow-water", {4126, 773})

SetMapTemplateResource("earth", "unit-gold-deposit", {4078, 744}) -- Amber; Source: "Atlas de História Mundial", 2001, p. 89.

-- Buddinge (near Copenhagen)
-- a burial mound was created at Buddinge (near Copenhagen) in c. 1600 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 75.

-- Egtved
-- SetMapTemplateUnit("earth", "unit-burial-mound", "", {4055, 781}, -1370) -- a girl was buried in an oak coffin in a mound (called Storehøj) at Egtved in 1370 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 81.

-- Eshøj
-- three people were buried in oak coffins in the Eshøj mound, one of them in c. 1351 BC and another in c. 1345 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 81.

-- Hlesey Island
SetMapTemplateUnit("earth", "unit-norse-watch-tower", "hlesing-tribe", {4089, 745}, -1101, -1100) -- put a watch tower there to make the berserker women more capable of attacking passing ships
SetMapTemplateUnit("earth", "unit-germanic-warrior", "hlesing-tribe", {4089, 745}, -1101, -1100) -- in Norse mythology, Thor (accompanied by Thialfi) slew a group of "brides of the berserkers" at Hlesey; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 119.
SetMapTemplateUnit("earth", "unit-germanic-warrior", "hlesing-tribe", {4089, 745}, -1101, -1100)
SetMapTemplateUnit("earth", "unit-germanic-warrior", "hlesing-tribe", {4089, 745}, -1101, -1100)
SetMapTemplateUnit("earth", "unit-germanic-warrior", "hlesing-tribe", {4089, 745}, -1101, -1100)

-- Legård (northwestern Jutland)
SetMapTemplateHero("earth", "karla", "karling-tribe", {4033, 751}, -1600, -1599)
SetMapTemplateUnit("earth", "unit-germanic-worker", "karling-tribe", {4033, 751}, -1600, -1500)
SetMapTemplateUnit("earth", "unit-germanic-worker", "karling-tribe", {4033, 751}, -1600, -1500)
SetMapTemplateUnit("earth", "unit-germanic-worker", "karling-tribe", {4033, 751}, -1600, -1500)
SetMapTemplateUnit("earth", "unit-germanic-worker", "karling-tribe", {4033, 751}, -1600, -1500)
SetMapTemplateUnit("earth", "unit-germanic-archer", "karling-tribe", {4033, 751}, -1600, -1500)
SetMapTemplateUnit("earth", "unit-germanic-archer", "karling-tribe", {4033, 751}, -1600, -1500)
SetMapTemplateUnit("earth", "unit-germanic-archer", "karling-tribe", {4033, 751}, -1600, -1500)

-- Lusehøj
-- a burial mound was created at Lusehøj in the period V of the Nordic Bronze Age (900-700 BC); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, pp. 73, 77.

-- Store Tyrrestrup (Vendsyssel)
SetMapTemplateHero("earth", "thrahila", "thralling-tribe", {4070, 743}, -1600, -1599)
SetMapTemplateUnit("earth", "unit-germanic-worker", "thralling-tribe", {4070, 743}, -1600, -1500)
SetMapTemplateUnit("earth", "unit-germanic-worker", "thralling-tribe", {4070, 743}, -1600, -1500)
SetMapTemplateUnit("earth", "unit-germanic-worker", "thralling-tribe", {4070, 743}, -1600, -1500)
SetMapTemplateUnit("earth", "unit-germanic-worker", "thralling-tribe", {4070, 743}, -1600, -1500)

-- Strandtved (near Svendborg)
-- a burial mound was created at Strandtved (near Svendborg) in c. 1600 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 76.

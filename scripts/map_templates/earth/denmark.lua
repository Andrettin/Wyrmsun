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

-- some coastline fixes in the Danish Islands, to make them not be connected to the mainland or between themselves by land
SetMapTemplateTileTerrain("earth", "shallow-water", 4060, 784)
SetMapTemplateTileTerrain("earth", "shallow-water", 4061, 782)
SetMapTemplateTileTerrain("earth", "shallow-water", 4061, 783)
SetMapTemplateTileTerrain("earth", "shallow-water", 4061, 785)
SetMapTemplateTileTerrain("earth", "shallow-water", 4062, 782)
SetMapTemplateTileTerrain("earth", "shallow-water", 4062, 783)
SetMapTemplateTileTerrain("earth", "shallow-water", 4062, 784)
SetMapTemplateTileTerrain("earth", "shallow-water", 4062, 785)
SetMapTemplateTileTerrain("earth", "shallow-water", 4081, 797)
SetMapTemplateTileTerrain("earth", "shallow-water", 4110, 796)
SetMapTemplateTileTerrain("earth", "shallow-water", 4111, 796)
SetMapTemplateTileTerrain("earth", "shallow-water", 4111, 798)
SetMapTemplateTileTerrain("earth", "shallow-water", 4112, 798)
SetMapTemplateTileTerrain("earth", "shallow-water", 4113, 797)
SetMapTemplateTileTerrain("earth", "shallow-water", 4114, 797)
SetMapTemplateTileTerrain("earth", "shallow-water", 4115, 796)
SetMapTemplateTileTerrain("earth", "shallow-water", 4116, 797)
SetMapTemplateTileTerrain("earth", "shallow-water", 4125, 772)
SetMapTemplateTileTerrain("earth", "shallow-water", 4126, 773)

SetMapTemplateResource("earth", "unit-gold-deposit", {4078, 745}) -- Amber; Source: "Atlas de História Mundial", 2001, p. 89.

-- Brødrene Gram (southern Jutland)
SetMapTemplateUnit("earth", "unit-germanic-town-hall", "jarling-tribe", {4051, 790}, -1500, -1300) -- a longhouse existed in Brødrene Gram (in southern Jutland) in the period II of the Nordic Bronze Age (1500-1300 BC), interpreted as a chiefly residence; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, pp. 73, 77-78.

-- Buddinge (near Copenhagen)
-- a burial mound was created at Buddinge (near Copenhagen) in c. 1600 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 75.

-- Egtved
-- SetMapTemplateUnit("earth", "unit-burial-mound", "", {4055, 781}, -1370) -- a girl was buried in an oak coffin in a mound (called Storehøj) at Egtved in 1370 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 81.

-- Eshøj
-- three people were buried in oak coffins in the Eshøj mound, one of them in c. 1351 BC and another in c. 1345 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 81.

-- Hlesey Island
SetMapTemplateUnit("earth", "unit-teuton-guard-tower", "hlesing-tribe", {4089, 745}, -1101, -1100) -- put a guard tower there to make the berserker women more capable of attacking passing ships
SetMapTemplateUnit("earth", "unit-germanic-warrior", "hlesing-tribe", {4089, 745}, -1101, -1100) -- in Norse mythology, Thor (accompanied by Thialfi) slew a group of "brides of the berserkers" at Hlesey; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 119.
SetMapTemplateUnit("earth", "unit-germanic-warrior", "hlesing-tribe", {4089, 745}, -1101, -1100)
SetMapTemplateUnit("earth", "unit-germanic-warrior", "hlesing-tribe", {4089, 745}, -1101, -1100)
SetMapTemplateUnit("earth", "unit-germanic-warrior", "hlesing-tribe", {4089, 745}, -1101, -1100)

-- Legård (northwestern Jutland)
SetMapTemplateUnit("earth", "unit-germanic-carpenters-shop", "karling-tribe", {4033, 751}, -1600, -1500)
SetMapTemplateUnit("earth", "unit-germanic-farm", "karling-tribe", {4033, 751}, -1600, -1500)
SetMapTemplateUnit("earth", "unit-germanic-farm", "karling-tribe", {4033, 751}, -1600, -1500)
SetMapTemplateUnit("earth", "unit-germanic-worker", "karling-tribe", {4033, 751}, -1600, -1500)
SetMapTemplateUnit("earth", "unit-germanic-worker", "karling-tribe", {4033, 751}, -1600, -1500)
SetMapTemplateUnit("earth", "unit-germanic-worker", "karling-tribe", {4033, 751}, -1600, -1500)
SetMapTemplateUnit("earth", "unit-germanic-worker", "karling-tribe", {4033, 751}, -1600, -1500)
SetMapTemplateUnit("earth", "unit-germanic-worker", "karling-tribe", {4033, 751}, -1600, -1500)
SetMapTemplateUnit("earth", "unit-germanic-archer", "karling-tribe", {4033, 751}, -1600, -1500)
SetMapTemplateUnit("earth", "unit-germanic-archer", "karling-tribe", {4033, 751}, -1600, -1500)
SetMapTemplateUnit("earth", "unit-germanic-archer", "karling-tribe", {4033, 751}, -1600, -1500)
SetMapTemplateUnit("earth", "unit-germanic-farm", "jarling-tribe", {4033, 751}, -1500, -1300) -- a longhouse existed in Legård (in northwestern Jutland) in the period II of the Nordic Bronze Age (1500-1300 BC); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, pp. 73, 78.

-- Leidre / Lejre
SetMapTemplateUnit("earth", "unit-germanic-town-hall", "skeldung-tribe", {4112, 784}, -2800, -27) -- Leidre / Lejre; Funnel Beaker culture ended in Zealand in 2800 BC and the Corded Ware culture (neolithic) began; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 38. In the Ynglinga Saga, Odin set his son Skjöldr to rule in Leidre after their people (who here we equate with the cultural ancestors of the Germanics who migrated to Scandinavia) conquered the land
SetMapTemplateUnit("earth", "unit-teuton-town-hall", "herulian-tribe", {4112, 784}, -27, 526) -- political situation in Europe (presumably) at the time of Augustus; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
SetMapTemplateUnit("earth", "unit-teuton-town-hall", "dane-tribe", {4112, 784}, 526, 919) -- Danes were in Zealand in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
SetMapTemplateUnit("earth", "unit-teuton-town-hall", "denmark", {4112, 784}, 919) -- political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.

-- Lusehøj
-- a burial mound was created at Lusehøj in the period V of the Nordic Bronze Age (900-700 BC); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, pp. 73, 77.

-- Store Tyrrestrup (Vendsyssel)
SetMapTemplateUnit("earth", "unit-germanic-farm", "thralling-tribe", {4070, 743}, -1600, -1500)
SetMapTemplateUnit("earth", "unit-germanic-worker", "thralling-tribe", {4070, 743}, -1600, -1500)
SetMapTemplateUnit("earth", "unit-germanic-worker", "thralling-tribe", {4070, 743}, -1600, -1500)
SetMapTemplateUnit("earth", "unit-germanic-worker", "thralling-tribe", {4070, 743}, -1600, -1500)
SetMapTemplateUnit("earth", "unit-germanic-worker", "thralling-tribe", {4070, 743}, -1600, -1500)
SetMapTemplateUnit("earth", "unit-germanic-worker", "thralling-tribe", {4070, 743}, -1600, -1500)
SetMapTemplateUnit("earth", "unit-germanic-farm", "jarling-tribe", {4070, 743}, -1500, -1300) -- a longhouse existed in Store Tyrrestrup (Vendsyssel) in the period II of the Nordic Bronze Age (1500-1300 BC); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, pp. 73-74.

-- Strandtved (near Svendborg)
-- a burial mound was created at Strandtved (near Svendborg) in c. 1600 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 76.

-- Vejle
SetMapTemplateUnit("earth", "unit-germanic-barracks", "jarling-tribe", {4058, 779}, -1600, -1599) -- regarding the place of Jarl's dwelling, it should be in a mountainous area, but also near a sound (since in the myth Jarl swam across sounds in his infancy); the lands between Jarl's hall and that of Hersir should contain boggy ground somewhere
SetMapTemplateHero("earth", "Erala", "jarling-tribe", {4058, 779}, -1600, -1599)

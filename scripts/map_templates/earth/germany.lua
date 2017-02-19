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

SetMapTemplateResource("earth", "unit-gold-deposit", {4110, 819}) -- Amber; Source: "Atlas de História Mundial", 2001, p. 89.

-- Bernstorf (Bavaria)
SetMapTemplateCulturalSettlementName("earth", "Bernstorf", {4104, 946}, "teuton")
SetMapTemplateUnit("earth", "unit-germanic-town-hall", "celtic-cimmerian-tribe", {4104, 946}, -1600, -1400)
SetMapTemplateUnit("earth", "unit-teuton-watch-tower", "celtic-cimmerian-tribe", {4104, 946}, -1600, -1400) -- a fortified settlement existed c. 1600-1400 BC in Bernstorf (Bavaria); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 29.

-- Eining
SetMapTemplateCulturalSettlementName("earth", "Eining", {4104, 936}, "teuton")
SetMapTemplateUnit("earth", "unit-teuton-swordsman", "rome", {4104, 936}, 173, 179) -- the "Legio III Italica" was stationed at the location of Eining from c. 173 to 179; Source: "Ancient Warfare VII.6", 2013, p. 25.

-- Helmsdorf
-- in c. 1800 BC a barrow was built near Helmsdorf (in Saxo-Thuringia in central Germany); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 23.

-- Kiel
SetMapTemplateUnit("earth", "unit-germanic-warrior", "hersing-tribe", {4069, 811}, -1600, -1599)
SetMapTemplateUnit("earth", "unit-germanic-warrior", "hersing-tribe", {4069, 811}, -1600, -1599)
SetMapTemplateUnit("earth", "unit-germanic-warrior", "hersing-tribe", {4069, 811}, -1600, -1599)
SetMapTemplateUnit("earth", "unit-germanic-warrior", "hersing-tribe", {4069, 811}, -1600, -1599)
SetMapTemplateUnit("earth", "unit-germanic-warrior", "hersing-tribe", {4069, 811}, -1600, -1599)
SetMapTemplateUnit("earth", "unit-germanic-warrior", "hersing-tribe", {4069, 811}, -1600, -1599)
SetMapTemplateUnit("earth", "unit-germanic-archer", "hersing-tribe", {4069, 811}, -1600, -1599)
SetMapTemplateUnit("earth", "unit-germanic-archer", "hersing-tribe", {4069, 811}, -1600, -1599)
SetMapTemplateUnit("earth", "unit-germanic-archer", "hersing-tribe", {4069, 811}, -1600, -1599)

-- Konnenberg
SetMapTemplateCulturalSettlementName("earth", "Konnenberg", {4045, 857}, "teuton")
SetMapTemplateUnit("earth", "unit-teuton-town-hall", "saxon-tribe", {4045, 857}, 526) -- Konnenberg was in Saxon possession in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.

-- Leubingen
-- in c. 1900 BC a barrow was built at Leubingen (in Saxo-Thuringia in central Germany); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 23.

-- Mittelberg
SetMapTemplateUnit("earth", "unit-germanic-town-hall", "celtic-cimmerian-tribe", {4101, 882}, -1600, -1599)
SetMapTemplateUnit("earth", "unit-teuton-watch-tower", "celtic-cimmerian-tribe", {4101, 882}, -1600, -1599) -- the fortified settlement of Mittelberg (near Nebra) existed in 1600 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 27.

-- Paderborn
SetMapTemplateCulturalSettlementName("earth", "Paderborn", {4033, 873}, "teuton")
--SetMapTemplateLayerConnector("earth", "unit-portal", {4033, 873}, "Nidavellir") -- Gnitaheith (where Fafnir dwelled) has been identified with a real location south of Paderborn, so place a portal to Nidavellir there; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 343.

-- Scheidungen
SetMapTemplateCulturalSettlementName("earth", "Scheidungen", {4107, 873}, "teuton")
SetMapTemplateUnit("earth", "unit-teuton-town-hall", "thuringian-tribe", {4107, 873}, 526) -- Scheidungen was in Thuringian possession in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.

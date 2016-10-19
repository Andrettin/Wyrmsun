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

SetMapTemplateUnit("earth", "unit-germanic-town-hall", "ingaevone-tribe", {4054, 801}, -2800, -264) -- Flensburg; according to Tacitus the Ingaevones were one of the earliest Germanic tribes; the place of their dwelling was inhabited by the cultural ancestors of the Germanics in 2800 BC already
SetMapTemplateUnit("earth", "unit-teuton-town-hall", "angle-tribe", {4054, 801}, -264) -- Tribes in Europe between 264 BC and 180 AD (Schleswig was inhabited by the Angles); Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.

-- Cologne / Colonia Agrippina
SetMapTemplateUnit("earth", "unit-latin-farm", "rome", {3998, 887}, -50, 161) -- Gaul (where Colonia Agrippina was located) was acquired by Rome in 50 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
SetMapTemplateUnit("earth", "unit-latin-barracks", "rome", {3998, 887}, 161, 526) -- Legionary base present in a location near Colonia Agrippina in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
SetMapTemplateUnit("earth", "unit-teuton-farm", "francia", {3998, 887}, 526, 561) -- Cologne was a part of the Kingdom of the Franks in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
SetMapTemplateUnit("earth", "unit-teuton-farm", "austrasia", {3998, 887}, 561) -- Colonia Agrippina went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Konnenberg
SetMapTemplateUnit("earth", "unit-teuton-town-hall", "saxon-tribe", {4045, 857}, 526) -- Konnenberg was in Saxon possession in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.

-- Konstanz / Constantia
SetMapTemplateUnit("earth", "unit-teuton-farm", "austrasia", {4051, 965}, 561) -- Constantia went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Mainz / Mayence / Mogontiacum
SetMapTemplateUnit("earth", "unit-latin-farm", "rome", {4029, 911}, -50, 161) -- Gaul (where Mogontiacum was located) was acquired by Rome in 50 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
SetMapTemplateUnit("earth", "unit-latin-barracks", "rome", {4029, 911}, 161, 526) -- Legionary base present in a location near Colonia Agrippina in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
SetMapTemplateUnit("earth", "unit-teuton-farm", "francia", {4029, 911}, 526, 561) -- Mayence was a part of the Kingdom of the Franks in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
SetMapTemplateUnit("earth", "unit-teuton-farm", "austrasia", {4029, 911}, 561) -- Mogontiacum went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Paderborn
SetMapTemplateLayerConnector("earth", "unit-portal", {4033, 873}, "Nidavellir") -- Gnitaheith (where Fafnir dwelled) has been identified with a real location south of Paderborn, so place a portal to Nidavellir there; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 343.

-- Scheidungen
SetMapTemplateUnit("earth", "unit-teuton-town-hall", "thuringian-tribe", {4107, 873}, 526) -- Scheidungen was in Thuringian possession in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.

-- Regensburg / Ratisbon / Regina Castra
SetMapTemplateUnit("earth", "unit-teuton-town-hall", "bavarian-tribe", {4116, 932}, 526) -- Ratisbon was in Bavarian possession in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.

-- Trier / Treveri
SetMapTemplateUnit("earth", "unit-teuton-farm", "austrasia", {3993, 917}, 561) -- Treveri went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Worms / Borbetomagus
SetMapTemplateUnit("earth", "unit-latin-farm", "rome", {4033, 920}, -50, 413) -- Gaul (where Mogontiacum was located) was acquired by Rome in 50 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
SetMapTemplateUnit("earth", "unit-teuton-town-hall", "burgundy", {4033, 920}, 413, 436) -- Borbetomagus/Worms conquered by the Burgundians in 413 AD, after which they founded a kingdom that lasted until 436; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 329.

SetMapTemplateUnit("earth", "unit-teuton-guard-tower", "francia", {4043, 879}, 775) -- a Frankish garrison was established by Charlemagne in Eresburg in 775; Source: James Westfall Thompson, "The Early History of the Saxons as a Field for the Study of German Social Origins", 1926, p. 604.
SetMapTemplateUnit("earth", "unit-teuton-guard-tower", "francia", {4019, 876}, 775) -- a Frankish garrison was established by Charlemagne in Syburg in 775; Source: James Westfall Thompson, "The Early History of the Saxons as a Field for the Study of German Social Origins", 1926, p. 604.

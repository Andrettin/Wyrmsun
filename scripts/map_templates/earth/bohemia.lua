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

SetMapTemplateResource("earth", "unit-copper-deposit", {4142, 907}) -- Tin deposits; Source: "Atlas de História Mundial", 2001, p. 41.

SetMapTemplateResource("earth", "unit-gold-deposit", {4169, 913}, 0, "the-wedding-veil") -- gold mine located in Jilova; Source: Alena Ježková, "77 Prague Legends", 2006, p. 31.
SetMapTemplateResource("earth", "unit-silver-deposit", {4194, 927}, 0, "esel") -- silver mine located in Kutná Hora; Source: Alena Ježková, "22 Böhmische Legenden", 2007, pp. 82-83.
SetMapTemplateResource("earth", "unit-silver-deposit", {4194, 928}, 0, "smitna") -- silver mine located in Kutná Hora; moved slightly to the south so that both it and Esel can coexist; Source: Alena Ježková, "22 Böhmische Legenden", 2007, p. 81.

SetMapTemplateUnit("earth", "unit-teuton-stables", "quadi-tribe", {4234, 931}, 180) -- horse breeding in 180 AD; Source: "Atlas de História Mundial", 2001, p. 89.

-- Prague
SetMapTemplateHero("earth", "marbod", "marcomanni-tribe", {4169, 908}, -9, 19) -- Marbod, king of the Suebic tribe of the Marcomanni, conquered Bohemia in 9 BC; Marbod deposed in 19 AD
SetMapTemplateHero("earth", "catualda", "marcomanni-tribe", {4169, 908}, 19, 20) -- Catualda deposed Marbod in 19 AD
SetMapTemplateHero("earth", "ballomar", "marcomanni-tribe", {4169, 908}, 167, 172) -- Ballomar was Marcomannic chieftain in 167, when he tried unsuccessfully to negotiate lands for his people to settle with the Romans, in exchange for military service; after the war which began in 170, Ballomar surrendered to the Romans in 172; Source: "Ancient Warfare VII.6", 2013, pp. 32-33.

SetMapTemplatePathway("earth", "railroad", {4232, 921}, {4169, 908}, 1845) -- Olomouc-Prague State Railroad Company opened for business in 1845; Source: Chad Bryant, "Into an Uncertain Future: Railroads and Vormärz Liberalism in Brno, Vienna, and Prague", 2009, p. 187.

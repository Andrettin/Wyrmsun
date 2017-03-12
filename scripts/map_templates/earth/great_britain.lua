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

SetMapTemplateTileLabel("earth", "The Weald", {3843, 886})

--SetMapTemplateResource("earth", "unit-salt-deposit", {3848, 875}) -- salt production at Mucking North Ring (Essex) during the Late Bronze Age of the British Isles (c. 1200-700 BC); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 55.

SetMapTemplateResource("earth", "unit-copper-deposit", {3727, 902}) -- Tin deposits; Source: "Atlas de História Mundial", 2001, p. 41.

-- In Welsh legends, Gorsedd Arberth (a hill/burial mound near Arberth) was a gateway to Annwn; thus it could be a portal that leads to Annwn in Alfheim; ; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 124.

-- Fengate (in Flag Fen, England)
SetMapTemplateUnit("earth", "unit-celt-farm", "celtic-cimmerian-tribe", {3835, 851}, -2500, -900) -- a ditched field system was used during 2500-900 BC at Fengate; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, pp. 67.

-- Runnymede (Surrey)
SetMapTemplateUnit("earth", "unit-germanic-smithy", "celtic-cimmerian-tribe", {3826, 878}, -2200, -700) -- concentrated metalworking activity existed in the high status settlement at Runnymede (in Surrey) during the Bronze Age of the British Isles (c. 2200-700 BC); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, pp. 54-55.

-- Stonehenge (Wiltshire)
-- the Stonehenge (in Wiltshire, England) experienced its first construction phase in c. 2950-2900 BC, during which the site was used for rituals; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, pp. 61-62.
-- the Stonehenge experienced its second construction phase in c. 2900-2400 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 62.
-- the Stonehenge experienced its third construction phase between c. 2550-2450 and 1600 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 64.

-- York / Eboracum
SetMapTemplateFactionCulturalSettlementName("earth", "York", {3815, 819}, "england")
SetMapTemplateUnit("earth", "unit-teuton-town-hall", "dere-tribe", {3815, 819}, 500, 588) -- the Dere (a collection of Anglian peoples) were in possession of York in 500 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 74.
SetMapTemplateUnit("earth", "unit-teuton-town-hall", "bernicia", {3815, 819}, 588, 654) -- according to tradition, Æthelric of Bernicia acquired the kingdom of Deira upon its king Ælle's death in 588 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 75.
SetMapTemplateUnit("earth", "unit-teuton-town-hall", "northumbria", {3815, 819}, 654, 1560) -- Northumbria unified by Oswiu of Bernicia in 654
SetMapTemplateUnit("earth", "unit-teuton-town-hall", "england", {3815, 819}, 1560) -- political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.

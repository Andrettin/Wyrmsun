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

-- Augsburg
SetMapTemplateCulturalSettlementName("earth", "Augusta Vindelicorum", {4090, 942}, "latin") -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
SetMapTemplateCulturalSettlementName("earth", "Augsburg", {4090, 942}, "teuton") -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
SetMapTemplateUnit("earth", "unit-latin-farm", "rome", {4090, 942}, 170, 172) -- the Raetian provincial capital at Augsburg was destroyed during the First Marcomannic War in c. 172; it likely existed at the beginning of that war as well; Source: "Ancient Warfare VII.6", 2013, p. 25.

-- Bernstorf (Bavaria)
SetMapTemplateCulturalSettlementName("earth", "Bernstorf", {4104, 946}, "teuton")
SetMapTemplateUnit("earth", "unit-germanic-town-hall", "celtic-cimmerian-tribe", {4104, 946}, -1600, -1400)
SetMapTemplateUnit("earth", "unit-teuton-watch-tower", "celtic-cimmerian-tribe", {4104, 946}, -1600, -1400) -- a fortified settlement existed c. 1600-1400 BC in Bernstorf (Bavaria); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 29.

-- Cologne / Colonia Agrippina
SetMapTemplateCulturalSettlementName("earth", "Colonia Agrippina", {3998, 887}, "latin")
SetMapTemplateCulturalSettlementName("earth", "Cologne", {3998, 887}, "teuton")
SetMapTemplateUnit("earth", "unit-latin-farm", "rome", {3998, 887}, -50, 161) -- Gaul (where Colonia Agrippina was located) was acquired by Rome in 50 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
SetMapTemplateUnit("earth", "unit-teuton-guard-tower", "rome", {3998, 887}, 161, 486) -- Legionary base present in a location near Colonia Agrippina in 161-180 AD; Colonia Agrippina was a Roman provincial capital in the 161-180 AD period; Source: "Ancient Warfare VII.6", 2013, p. 7.
-- Cologne was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
SetMapTemplateUnit("earth", "unit-teuton-guard-tower", "francia", {3998, 887}, 486, 561) -- Cologne was a part of the Kingdom of the Franks in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
SetMapTemplateUnit("earth", "unit-teuton-guard-tower", "austrasia", {3998, 887}, 561) -- Colonia Agrippina went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Eining
SetMapTemplateCulturalSettlementName("earth", "Eining", {4104, 936}, "teuton")
SetMapTemplateUnit("earth", "unit-teuton-swordsman", "rome", {4104, 936}, 173, 179) -- the "Legio III Italica" was stationed at the location of Eining from c. 173 to 179; Source: "Ancient Warfare VII.6", 2013, p. 25.

-- Eresburg
SetMapTemplateCulturalSettlementName("earth", "Eresburg", {4043, 879}, "teuton")
SetMapTemplateUnit("earth", "unit-teuton-guard-tower", "francia", {4043, 879}, 775) -- a Frankish garrison was established by Charlemagne in Eresburg in 775; Source: James Westfall Thompson, "The Early History of the Saxons as a Field for the Study of German Social Origins", 1926, p. 604.

-- Flensburg
SetMapTemplateCulturalSettlementName("earth", "Flensburg", {4054, 801}, "teuton")
SetMapTemplateUnit("earth", "unit-teuton-town-hall", "angle-tribe", {4054, 801}, -264) -- tribes in Europe between 264 BC and 180 AD (Schleswig was inhabited by the Angles); Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.

-- Helmsdorf
-- in c. 1800 BC a barrow was built near Helmsdorf (in Saxo-Thuringia in central Germany); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 23.

-- Kiel
SetMapTemplateCulturalSettlementName("earth", "Kiel", {4069, 811}, "teuton")
SetMapTemplateUnit("earth", "unit-germanic-town-hall", "hersing-tribe", {4069, 811}, -1600, -1599) -- Hersir's tribe, from the Norse myth of Rig; in the myths, there was a boggy ground between Jarl's hall and that of Hersir
SetMapTemplateUnit("earth", "unit-germanic-farm", "hersing-tribe", {4069, 811}, -1600, -1599)
SetMapTemplateUnit("earth", "unit-germanic-farm", "hersing-tribe", {4069, 811}, -1600, -1599)
SetMapTemplateUnit("earth", "unit-germanic-farm", "hersing-tribe", {4069, 811}, -1600, -1599)
SetMapTemplateUnit("earth", "unit-germanic-barracks", "hersing-tribe", {4069, 811}, -1600, -1599)
SetMapTemplateUnit("earth", "unit-germanic-smithy", "hersing-tribe", {4069, 811}, -1600, -1599)
SetMapTemplateUnit("earth", "unit-germanic-carpenters-shop", "hersing-tribe", {4069, 811}, -1600, -1599)
SetMapTemplateUnit("earth", "unit-teuton-watch-tower", "hersing-tribe", {4069, 811}, -1600, -1599)
SetMapTemplateUnit("earth", "unit-teuton-watch-tower", "hersing-tribe", {4069, 811}, -1600, -1599)
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

-- Konstanz / Constantia
SetMapTemplateCulturalSettlementName("earth", "Konstanz", {4051, 965}, "teuton")
SetMapTemplateUnit("earth", "unit-teuton-farm", "austrasia", {4051, 965}, 561) -- Constantia went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Leubingen
-- in c. 1900 BC a barrow was built at Leubingen (in Saxo-Thuringia in central Germany); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 23.

-- Mainz / Mayence / Mogontiacum
SetMapTemplateCulturalSettlementName("earth", "Mogontiacum", {4029, 911}, "latin")
SetMapTemplateCulturalSettlementName("earth", "Mainz", {4029, 911}, "teuton")
SetMapTemplateUnit("earth", "unit-latin-farm", "rome", {4029, 911}, -50, 161) -- Mogontiacum was acquired by Rome in 50 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
SetMapTemplateUnit("earth", "unit-teuton-guard-tower", "rome", {4029, 911}, 161, 486) -- Legionary base present in Mogontiacum in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
-- Mayence was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
SetMapTemplateUnit("earth", "unit-teuton-guard-tower", "alamanni-tribe", {4033, 920}, 486, 526) -- Mayence was in possession of the Alamanni in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
SetMapTemplateUnit("earth", "unit-teuton-guard-tower", "francia", {4029, 911}, 526, 561) -- Mayence was a part of the Kingdom of the Franks in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
SetMapTemplateUnit("earth", "unit-teuton-guard-tower", "austrasia", {4029, 911}, 561) -- Mogontiacum went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Mittelberg
SetMapTemplateUnit("earth", "unit-germanic-town-hall", "celtic-cimmerian-tribe", {4101, 882}, -1600, -1599)
SetMapTemplateUnit("earth", "unit-teuton-watch-tower", "celtic-cimmerian-tribe", {4101, 882}, -1600, -1599) -- the fortified settlement of Mittelberg (near Nebra) existed in 1600 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 27.

-- Nuremberg
SetMapTemplateCulturalSettlementName("earth", "Nuremberg", {4087, 930}, "teuton") -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
SetMapTemplateUnit("earth", "unit-teuton-town-hall", "hermunduri-tribe", {4087, 930}, 161) -- the Hermunduri inhabited the area immediately north of the Danube in Bavaria, in the 161-180 AD period; Source: "Ancient Warfare VII.6", 2013, p. 7.

-- Paderborn
SetMapTemplateCulturalSettlementName("earth", "Paderborn", {4033, 873}, "teuton")
--SetMapTemplateLayerConnector("earth", "unit-portal", {4033, 873}, "Nidavellir") -- Gnitaheith (where Fafnir dwelled) has been identified with a real location south of Paderborn, so place a portal to Nidavellir there; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 343.

-- Regensburg / Ratisbon / Regina Castra
SetMapTemplateUnit("earth", "unit-teuton-swordsman", "rome", {4116, 932}, 170, 172) -- the "Cohors II Aquitanorum equitata civium Romanorum" (a mixed unit, which contained circa 375 auxiliary infantry and 125 cavalry) was stationed at Regensburg-Kumpfmühl when it was attacked and destroyed in 172, during the First Marcomannic War; it likely was stationed there at the beginning of that war as well; Source: "Ancient Warfare VII.6", 2013, p. 25.

-- Scheidungen
SetMapTemplateCulturalSettlementName("earth", "Scheidungen", {4107, 873}, "teuton")
SetMapTemplateUnit("earth", "unit-teuton-town-hall", "thuringian-tribe", {4107, 873}, 526) -- Scheidungen was in Thuringian possession in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.

-- Straubing
SetMapTemplateCulturalSettlementName("earth", "Straubing", {4124, 934}, "teuton") -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
SetMapTemplateUnit("earth", "unit-teuton-guard-tower", "rome", {4124, 934}, 170, 172) -- a Roman double camp at Straubing was destroyed during the First Marcomannic War in 172; it likely existed at the beginning of that war as well; Source: "Ancient Warfare VII.6", 2013, p. 25.
SetMapTemplateUnit("earth", "unit-teuton-swordsman", "rome", {4124, 934}, 170, 172) -- the "Cohors II Raetorum" (a unit containing 500 infantry) was stationed at Straubing when it was attacked and destroyed in 172, during the First Marcomannic War; it likely was stationed there at the beginning of that war as well; Source: "Ancient Warfare VII.6", 2013, p. 25.
SetMapTemplateUnit("earth", "unit-teuton-archer", "rome", {4124, 934}, 170, 172) -- the "Cohors I Flavia Canathenorum milliaria sagittariorum" (a unit containing 1,000 Syrian archers) was stationed at Straubing when it was attacked and destroyed in 172, during the First Marcomannic War; it likely was stationed there at the beginning of that war as well; Source: "Ancient Warfare VII.6", 2013, p. 25.

-- Syburg
SetMapTemplateCulturalSettlementName("earth", "Syburg", {4019, 876}, "teuton")
SetMapTemplateUnit("earth", "unit-teuton-guard-tower", "francia", {4019, 876}, 775) -- a Frankish garrison was established by Charlemagne in Syburg in 775; Source: James Westfall Thompson, "The Early History of the Saxons as a Field for the Study of German Social Origins", 1926, p. 604.

-- Trier / Trèves / Treveri
SetMapTemplateCulturalSettlementName("earth", "Trier", {3993, 917}, "teuton")
SetMapTemplateFactionCulturalSettlementName("earth", "Treves", {3993, 917}, "france") -- "Trèves"
SetMapTemplateUnit("earth", "unit-teuton-temple", "rome", {3993, 917}, 395, 486) -- Trèves was a part of the Roman Empire and was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
SetMapTemplateUnit("earth", "unit-teuton-temple", "francia", {3993, 917}, 486, 561) -- Trèves was a part of the Kingdom of the Franks in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
SetMapTemplateUnit("earth", "unit-teuton-temple", "austrasia", {3993, 917}, 561) -- Treveri went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Worms / Borbetomagus
SetMapTemplateCulturalSettlementName("earth", "Borbetomagus", {4033, 920}, "latin")
SetMapTemplateCulturalSettlementName("earth", "Worms", {4033, 920}, "teuton")
SetMapTemplateUnit("earth", "unit-teuton-temple", "rome", {4033, 920}, 395, 413) -- Worms was a part of the Roman Empire and was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
SetMapTemplateUnit("earth", "unit-teuton-town-hall", "burgundy", {4033, 920}, 413, 436) -- Borbetomagus/Worms conquered by the Burgundians in 413 AD, after which they founded a kingdom that lasted until 436; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 329.
SetMapTemplateUnit("earth", "unit-teuton-temple", "burgundy", {4033, 920}, 413, 436)
SetMapTemplateUnit("earth", "unit-teuton-temple", "alamanni-tribe", {4033, 920}, 486, 526) -- Worms was in possession of the Alamanni in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
SetMapTemplateUnit("earth", "unit-teuton-temple", "francia", {4033, 920}, 526, 561) -- Worms' area was a part of the Kingdom of the Franks in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
SetMapTemplateUnit("earth", "unit-teuton-temple", "austrasia", {4033, 920}, 561) -- Worms' area went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

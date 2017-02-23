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

SetMapTemplateTileTerrain("earth", "shallow-water", {3815, 1011}) -- to make the river appear properly, as single water tiles aren't supported
SetMapTemplateTileTerrain("earth", "shallow-water", {3812, 1030}) -- to make the river appear properly, as single water tiles aren't supported

SetMapTemplateResource("earth", "unit-copper-deposit", {3749, 956}) -- Tin deposits; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 7.

-- Amiens / Ambiani
SetMapTemplateFactionCulturalSettlementName("earth", "Amiens", {3888, 913}, "france")
SetMapTemplateUnit("earth", "unit-teuton-farm", "salia", {3888, 913}, 561) -- Ambiani went to Chilperich when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Antibes / Antipolis
SetMapTemplateFactionCulturalSettlementName("earth", "Antibes", {3995, 1056}, "france")
SetMapTemplateUnit("earth", "unit-teuton-farm", "burgundia", {3995, 1056}, 561) -- Antipolis went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Arles / Arelatum
SetMapTemplateFactionCulturalSettlementName("earth", "Arles", {3948, 1053}, "france")
SetMapTemplateUnit("earth", "unit-teuton-temple", "rome", {3948, 1053}, 395, 480) -- Arles was a part of the Roman Empire and was the seat of a metropolitanate (archbishopric) in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
SetMapTemplateUnit("earth", "unit-teuton-temple", "visigothia", {3948, 1053}, 480, 526) -- Arles became a part of the Kingdom of the Visigoths in 480; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
SetMapTemplateUnit("earth", "unit-teuton-temple", "ostrogothia", {3948, 1053}, 526, 561) -- Arles was a part of the Kingdom of the Ostrogoths in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
SetMapTemplateUnit("earth", "unit-teuton-temple", "burgundia", {3948, 1053}, 561) -- Arelatum went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Autin / Augustodunum
SetMapTemplateFactionCulturalSettlementName("earth", "Autin", {3933, 981}, "france")
SetMapTemplateUnit("earth", "unit-teuton-farm", "burgundia", {3933, 981}, 561) -- Augustodunum went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Avignon / Avinio
SetMapTemplateFactionCulturalSettlementName("earth", "Avignon", {3952, 1045}, "france")
SetMapTemplateUnit("earth", "unit-teuton-farm", "austrasia", {3952, 1045}, 561) -- Avinio went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Besançon / Vesontio
SetMapTemplateFactionCulturalSettlementName("earth", "Besancon", {3973, 978}, "france") -- "Besançon"
SetMapTemplateUnit("earth", "unit-teuton-temple", "rome", {3973, 978}, 395, 486) -- Besançon was a part of the Roman Empire and was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
SetMapTemplateUnit("earth", "unit-teuton-temple", "burgundy", {3973, 978}, 486, 561) -- Besançon was a part of the Kingdom of the Burgundians in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
SetMapTemplateUnit("earth", "unit-teuton-temple", "burgundia", {3973, 978}, 561) -- Vesontio went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Bordeaux / Burdigala / Burdegala
SetMapTemplateCulturalSettlementName("earth", "Burdigala", {3826, 1029}, "latin") -- Source: "Ancient Warfare VII.6", 2013, p. 7.
SetMapTemplateFactionCulturalSettlementName("earth", "Bordeaux", {3826, 1029}, "france")
SetMapTemplateUnit("earth", "unit-latin-farm", "rome", {3826, 1029}, 161, 395) -- Burdigala was in existence and under Roman ownership in the 161-180 AD period; Source: "Ancient Warfare VII.6", 2013, p. 7.
SetMapTemplateUnit("earth", "unit-teuton-temple", "rome", {3826, 1029}, 395, 486) -- Bordeaux was a part of the Roman Empire and was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
SetMapTemplateUnit("earth", "unit-teuton-temple", "visigothia", {3826, 1029}, 486, 526) -- Bordeaux was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
SetMapTemplateUnit("earth", "unit-teuton-temple", "francia", {3826, 1029}, 526, 561) -- Bordeaux's area was a part of the Kingdom of the Franks in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
SetMapTemplateUnit("earth", "unit-teuton-temple", "neustria", {3826, 1029}, 561) -- Burdegala went to Charibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Bourges / Bituricae
SetMapTemplateFactionCulturalSettlementName("earth", "Bourges", {3894, 975}, "france")
SetMapTemplateUnit("earth", "unit-teuton-temple", "rome", {3894, 975}, 395, 486) -- Bourges was a part of the Roman Empire and was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
SetMapTemplateUnit("earth", "unit-teuton-temple", "visigothia", {3894, 975}, 486, 526) -- Bourges was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
SetMapTemplateUnit("earth", "unit-teuton-temple", "francia", {3894, 975}, 526, 561) -- Bourges' area was a part of the Kingdom of the Franks in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
SetMapTemplateUnit("earth", "unit-teuton-temple", "burgundia", {3894, 975}, 561) -- Bituricae went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Brest / Gesocribate
SetMapTemplateCulturalSettlementName("earth", "Gesocribate", {3736, 946}, "latin") -- Source: "Ancient Warfare VII.6", 2013, p. 7.
SetMapTemplateFactionCulturalSettlementName("earth", "Brest", {3736, 946}, "france")
SetMapTemplateUnit("earth", "unit-latin-farm", "rome", {3736, 946}, 161) -- Gesocribate was in existence and under Roman ownership in the 161-180 AD period; Source: "Ancient Warfare VII.6", 2013, p. 7.

-- Châlons
SetMapTemplateFactionCulturalSettlementName("earth", "Chalons", {3947, 941}, "france") -- "Châlons"
SetMapTemplateUnit("earth", "unit-teuton-farm", "rome", {3947, 941}, 395, 486) -- Châlons was a part of the Roman Empire in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
SetMapTemplateUnit("earth", "unit-teuton-farm", "francia", {3947, 941}, 486, 561) -- Châlons' area became a part of the Kingdom of the Franks in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
SetMapTemplateUnit("earth", "unit-teuton-farm", "austrasia", {3947, 941}, 561) -- Châlons' area went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Clermont-Ferrand / Arverni
SetMapTemplateFactionCulturalSettlementName("earth", "Clermont-Ferrand", {3909, 1006}, "france")
SetMapTemplateUnit("earth", "unit-teuton-farm", "austrasia", {3909, 1006}, 561) -- Arverni went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Colmar
-- Parlement or conseil souverain existent in Colmar in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.

-- Dijon / Divio
SetMapTemplateFactionCulturalSettlementName("earth", "Dijon", {3955, 994}, "france")
SetMapTemplateUnit("earth", "unit-teuton-farm", "burgundia", {3955, 994}, 561) -- Divio went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Langres / Lingones
SetMapTemplateFactionCulturalSettlementName("earth", "Langres", {3958, 963}, "france")
SetMapTemplateUnit("earth", "unit-teuton-farm", "burgundia", {3958, 963}, 561) -- Lingones went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Metz / Mettis
SetMapTemplateFactionCulturalSettlementName("earth", "Metz", {3981, 931}, "france")
SetMapTemplateUnit("earth", "unit-teuton-temple", "rome", {3981, 931}, 395, 486) -- Metz was a part of the Roman Empire and was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
SetMapTemplateUnit("earth", "unit-teuton-temple", "francia", {3981, 931}, 486, 561) -- Metz was a part of the Kingdom of the Franks in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
SetMapTemplateUnit("earth", "unit-teuton-town-hall", "austrasia", {3981, 931}, 561) -- Mettis went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
SetMapTemplateUnit("earth", "unit-teuton-temple", "austrasia", {3981, 931}, 561)

-- Molsheim
-- University founded in Molsheim in 1618. Source: The Cambridge Modern History Atlas, 1912, p. 9.

-- Nantes / Namnetes
SetMapTemplateFactionCulturalSettlementName("earth", "Nantes", {3804, 972}, "france")
SetMapTemplateUnit("earth", "unit-teuton-temple", "rome", {3804, 972}, 395, 486) -- Nantes was a part of the Roman Empire and was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
SetMapTemplateUnit("earth", "unit-teuton-temple", "francia", {3804, 972}, 486, 561) -- Nantes was a part of the Kingdom of the Franks in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
SetMapTemplateUnit("earth", "unit-teuton-temple", "neustria", {3804, 972}, 561) -- Namnetes went to Charibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Narbonne
SetMapTemplateFactionCulturalSettlementName("earth", "Narbonne", {3914, 1063}, "france")
SetMapTemplateUnit("earth", "unit-teuton-temple", "rome", {3914, 1063}, 395, 486) -- Narbonne was a part of the Roman Empire and was the seat of a metropolitanate (archbishopric) in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
SetMapTemplateUnit("earth", "unit-teuton-temple", "visigothia", {3914, 1063}, 486) -- Narbonne was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.

-- Orléans / Aurehani
SetMapTemplateFactionCulturalSettlementName("earth", "Orleans", {3884, 961}, "france") -- "Orléans"
SetMapTemplateUnit("earth", "unit-teuton-town-hall", "burgundia", {3884, 961}, 561) -- Chlothar (Frankish king) died in 561, and Orléans went to his son Gunthram; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 328; Gregory of Tours, "History of the Franks", IV.22.
SetMapTemplateHero("earth", "gunthram", "burgundia", {3884, 961}, 561, 592)

-- Paris / Lutetia
SetMapTemplateCulturalSettlementName("earth", "Lutetia", {3891, 937}, "latin") -- Source: "Ancient Warfare VII.6", 2013, p. 7.
SetMapTemplateFactionCulturalSettlementName("earth", "Paris", {3891, 937}, "france")
SetMapTemplateUnit("earth", "unit-latin-farm", "rome", {3891, 937}, 161, 395) -- Lutetia was in existence and under Roman ownership in the 161-180 AD period; Source: "Ancient Warfare VII.6", 2013, p. 7.
SetMapTemplateUnit("earth", "unit-teuton-temple", "rome", {3891, 937}, 395, 561) -- Paris was a part of the Roman Empire and was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
SetMapTemplateUnit("earth", "unit-teuton-town-hall", "neustria", {3891, 937}, 561) -- Paris went to Charibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
SetMapTemplateUnit("earth", "unit-teuton-temple", "neustria", {3891, 937}, 561)

-- Poitiers / Pictavis
SetMapTemplateFactionCulturalSettlementName("earth", "Poitiers", {3845, 990}, "france")
SetMapTemplateUnit("earth", "unit-teuton-temple", "rome", {3845, 990}, 395, 486) -- Poitiers was a part of the Roman Empire and was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
SetMapTemplateUnit("earth", "unit-teuton-temple", "visigothia", {3845, 990}, 486, 526) -- Poitiers was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
SetMapTemplateUnit("earth", "unit-teuton-temple", "francia", {3845, 990}, 526, 561) -- Poitiers' area was a part of the Kingdom of the Franks in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
SetMapTemplateUnit("earth", "unit-teuton-temple", "neustria", {3845, 990}, 561) -- Pictavis went to Charibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Reims / Durocortorum
SetMapTemplateFactionCulturalSettlementName("earth", "Reims", {3930, 926}, "france")
SetMapTemplateUnit("earth", "unit-latin-farm", "rome", {3930, 926}, -50, 395) -- Durocortorum was acquired by Rome in 50 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
SetMapTemplateUnit("earth", "unit-teuton-temple", "rome", {3930, 926}, 395, 526) -- Reims was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
SetMapTemplateUnit("earth", "unit-teuton-temple", "francia", {3930, 926}, 526, 561) -- Reims was a part of the Kingdom of the Franks in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
SetMapTemplateUnit("earth", "unit-teuton-town-hall", "austrasia", {3930, 926}, 561) -- Chlothar (Frankish king) died in 561, and Reims went to his son Sigibert, becoming his capital; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 328; Gregory of Tours, "History of the Franks", IV.22.
SetMapTemplateUnit("earth", "unit-teuton-temple", "austrasia", {3930, 926}, 561)
SetMapTemplateHero("earth", "sigibert", "austrasia", {3930, 926}, 561, 575)

-- Rodez / Ruthenis
SetMapTemplateFactionCulturalSettlementName("earth", "Rodez", {3895, 1030}, "france")
SetMapTemplateUnit("earth", "unit-teuton-farm", "austrasia", {3895, 1030}, 561) -- Ruthenis went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Rouen / Rotomagus
SetMapTemplateFactionCulturalSettlementName("earth", "Rouen", {3871, 926}, "france")
SetMapTemplateUnit("earth", "unit-teuton-farm", "rome", {3871, 926}, 395, 486) -- Rouen was a part of the Roman Empire in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
SetMapTemplateUnit("earth", "unit-teuton-farm", "francia", {3871, 926}, 486, 561) -- Rouen's area became a part of the Kingdom of the Franks in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
SetMapTemplateUnit("earth", "unit-teuton-farm", "neustria", {3871, 926}, 561) -- Rotomagus went to Charibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Sens / Senonae
SetMapTemplateFactionCulturalSettlementName("earth", "Sens", {3911, 958}, "france")
SetMapTemplateUnit("earth", "unit-teuton-farm", "rome", {3911, 958}, 395, 486) -- Sens was a part of the Roman Empire in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
SetMapTemplateUnit("earth", "unit-teuton-farm", "francia", {3911, 958}, 486, 561) -- Sens' area became a part of the Kingdom of the Franks in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
SetMapTemplateUnit("earth", "unit-teuton-farm", "burgundia", {3911, 958}, 561) -- Senonae went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Soissons
SetMapTemplateFactionCulturalSettlementName("earth", "Soissons", {3915, 923}, "france")
SetMapTemplateUnit("earth", "unit-teuton-temple", "rome", {3915, 923}, 395, 526) -- Soissons was a part of the Roman Empire and was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
SetMapTemplateUnit("earth", "unit-teuton-temple", "francia", {3915, 923}, 526, 561) -- Soissons was a part of the Kingdom of the Franks in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
SetMapTemplateUnit("earth", "unit-teuton-town-hall", "salia", {3915, 923}, 561) -- Chlothar (Frankish king) died in 561, and Reims went to his son Chilperich; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 328; Gregory of Tours, "History of the Franks", IV.22.
SetMapTemplateUnit("earth", "unit-teuton-temple", "salia", {3915, 923}, 561)

-- Toul
SetMapTemplateFactionCulturalSettlementName("earth", "Toul", {3969, 948}, "france")
SetMapTemplateUnit("earth", "unit-teuton-temple", "rome", {3969, 948}, 395, 486) -- Toul was a part of the Roman Empire and was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
SetMapTemplateUnit("earth", "unit-teuton-temple", "francia", {3969, 948}, 486, 561) -- Toul's area was a part of the Kingdom of the Franks in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
SetMapTemplateUnit("earth", "unit-teuton-temple", "austrasia", {3969, 948}, 561) -- Toul's area went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Toulouse / Tolosa
SetMapTemplateCulturalSettlementName("earth", "Tolosa", {3867, 1048}, "latin") -- Source: "Ancient Warfare VII.6", 2013, p. 7.
SetMapTemplateFactionCulturalSettlementName("earth", "Toulouse", {3867, 1048}, "france")
SetMapTemplateUnit("earth", "unit-latin-farm", "rome", {3867, 1048}, 161, 395) -- Tolosa was in existence and under Roman ownership in the 161-180 AD period; Source: "Ancient Warfare VII.6", 2013, p. 7.
SetMapTemplateUnit("earth", "unit-teuton-temple", "rome", {3867, 1048}, 395, 486) -- Toulouse was a part of the Roman Empire and was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
SetMapTemplateUnit("earth", "unit-teuton-temple", "visigothia", {3867, 1048}, 486, 526) -- Toulouse was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
SetMapTemplateUnit("earth", "unit-teuton-temple", "francia", {3867, 1048}, 526, 561) -- Toulouse was a part of the Kingdom of the Franks in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
SetMapTemplateUnit("earth", "unit-teuton-temple", "neustria", {3867, 1048}, 561) -- Tolosa went to Charibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Tournai / Tornacum
SetMapTemplateFactionCulturalSettlementName("earth", "Tournai", {3917, 896}, "france")
SetMapTemplateUnit("earth", "unit-teuton-farm", "salia", {3917, 896}, 561) -- Tornacum went to Chilperich when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
SetMapTemplateHero("earth", "chilperich", "salia", {3917, 896}, 561, 584)

-- Tours / Turones
SetMapTemplateFactionCulturalSettlementName("earth", "Tours", {3857, 971}, "france")
SetMapTemplateUnit("earth", "unit-teuton-temple", "rome", {3857, 971}, 395, 486) -- Tours was a part of the Roman Empire and was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
SetMapTemplateUnit("earth", "unit-teuton-temple", "visigothia", {3857, 971}, 486, 526) -- Tours was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
SetMapTemplateUnit("earth", "unit-teuton-temple", "francia", {3857, 971}, 526, 561) -- Tours' area was a part of the Kingdom of the Franks in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
SetMapTemplateUnit("earth", "unit-teuton-temple", "neustria", {3857, 971}, 561) -- Turones went to Charibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Troyes / Trecae
SetMapTemplateFactionCulturalSettlementName("earth", "Troyes", {3923, 952}, "france")
SetMapTemplateUnit("earth", "unit-teuton-farm", "burgundia", {3923, 952}, 561) -- Trecae went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Uzès / Ucetia
SetMapTemplateFactionCulturalSettlementName("earth", "Uzes", {3941, 1044}, "france") -- "Uzès"
SetMapTemplateUnit("earth", "unit-teuton-farm", "austrasia", {3941, 1044}, 561) -- Ucetia went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Valence / Valentia
SetMapTemplateFactionCulturalSettlementName("earth", "Valence", {3952, 1026}, "france")
SetMapTemplateUnit("earth", "unit-teuton-farm", "burgundia", {3952, 1026}, 561) -- Valentia went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Verdun
SetMapTemplateFactionCulturalSettlementName("earth", "Verdun", {3957, 927}, "france")
SetMapTemplateUnit("earth", "unit-teuton-temple", "rome", {3957, 927}, 395, 486) -- Verdun was a part of the Roman Empire and was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
SetMapTemplateUnit("earth", "unit-teuton-temple", "francia", {3957, 927}, 486, 561) -- Verdun's area was a part of the Kingdom of the Franks in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
SetMapTemplateUnit("earth", "unit-teuton-temple", "austrasia", {3957, 927}, 561) -- Verdun's area went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

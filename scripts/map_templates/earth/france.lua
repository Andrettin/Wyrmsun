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

SetMapTemplateTileTerrain("earth", "shallow-water", 3815, 1011) -- to make the river appear properly, as single water tiles aren't supported
SetMapTemplateTileTerrain("earth", "shallow-water", 3812, 1030) -- to make the river appear properly, as single water tiles aren't supported

SetMapTemplateResource("earth", "unit-copper-deposit", {3749, 956}) -- Tin deposits; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 7.

-- Amiens / Ambiani
SetMapTemplateUnit("earth", "unit-teuton-farm", "salia", {3888, 913}, 561) -- Ambiani went to Chilperich when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Antibes / Antipolis
SetMapTemplateUnit("earth", "unit-teuton-farm", "burgundia", {3995, 1056}, 561) -- Antipolis went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Arles / Arelatum
SetMapTemplateUnit("earth", "unit-teuton-temple", "rome", {3948, 1053}, 395, 480) -- Arles was a part of the Roman Empire and was the seat of a metropolitanate (archbishopric) in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
SetMapTemplateUnit("earth", "unit-teuton-temple", "visigothia", {3948, 1053}, 480, 526) -- Arles became a part of the Kingdom of the Visigoths in 480; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
SetMapTemplateUnit("earth", "unit-teuton-temple", "ostrogothia", {3948, 1053}, 526, 561) -- Arles was a part of the Kingdom of the Ostrogoths in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
SetMapTemplateUnit("earth", "unit-teuton-temple", "burgundia", {3948, 1053}, 561) -- Arelatum went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Autin / Augustodunum
SetMapTemplateUnit("earth", "unit-teuton-farm", "burgundia", {3933, 981}, 561) -- Augustodunum went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Auvergne / Arverni
SetMapTemplateUnit("earth", "unit-teuton-farm", "austrasia", {3909, 1006}, 561) -- Arverni went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Avignon / Avinio
SetMapTemplateUnit("earth", "unit-teuton-farm", "austrasia", {3952, 1045}, 561) -- Avinio went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Besançon / Vesontio
SetMapTemplateUnit("earth", "unit-teuton-farm", "burgundia", {3973, 978}, 561) -- Vesontio went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Bordeaux / Burdegala
SetMapTemplateUnit("earth", "unit-teuton-temple", "rome", {3826, 1029}, 395, 486) -- Bordeaux was a part of the Roman Empire and was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
SetMapTemplateUnit("earth", "unit-teuton-temple", "visigothia", {3826, 1029}, 486, 526) -- Bordeaux was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
SetMapTemplateUnit("earth", "unit-teuton-temple", "francia", {3826, 1029}, 526, 561) -- Bordeaux's area was a part of the Kingdom of the Franks in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
SetMapTemplateUnit("earth", "unit-teuton-temple", "neustria", {3826, 1029}, 561) -- Burdegala went to Charibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Bourges / Bituricae
SetMapTemplateUnit("earth", "unit-teuton-temple", "rome", {3894, 975}, 395, 486) -- Bourges was a part of the Roman Empire and was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
SetMapTemplateUnit("earth", "unit-teuton-temple", "visigothia", {3894, 975}, 486, 526) -- Bourges was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
SetMapTemplateUnit("earth", "unit-teuton-temple", "francia", {3894, 975}, 526, 561) -- Bourges' area was a part of the Kingdom of the Franks in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
SetMapTemplateUnit("earth", "unit-teuton-temple", "burgundia", {3894, 975}, 561) -- Bituricae went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Châlons
SetMapTemplateUnit("earth", "unit-teuton-farm", "rome", {3947, 941}, 395, 486) -- Châlons was a part of the Roman Empire in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
SetMapTemplateUnit("earth", "unit-teuton-farm", "francia", {3947, 941}, 486, 561) -- Châlons' area became a part of the Kingdom of the Franks in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
SetMapTemplateUnit("earth", "unit-teuton-farm", "austrasia", {3947, 941}, 561) -- Châlons' area went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Dijon / Divio
SetMapTemplateUnit("earth", "unit-teuton-farm", "burgundia", {3955, 994}, 561) -- Divio went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Langres / Lingones
SetMapTemplateUnit("earth", "unit-teuton-farm", "burgundia", {3958, 963}, 561) -- Lingones went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Lyon / Lugdunum
SetMapTemplateUnit("earth", "unit-teuton-farm", "burgundia", {3947, 1006}, 561) -- Lugdunum went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Marseilles / Massilia
SetMapTemplateUnit("earth", "unit-teuton-farm", "austrasia", {3962, 1062}, 561) -- Massilia went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Metz / Mettis
SetMapTemplateUnit("earth", "unit-teuton-town-hall", "austrasia", {3981, 931}, 561) -- Mettis went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Molsheim
-- University founded in Molsheim in 1618. Source: The Cambridge Modern History Atlas, 1912, p. 9.

-- Nantes / Namnetes
SetMapTemplateUnit("earth", "unit-teuton-temple", "rome", {3804, 972}, 395, 486) -- Nantes was a part of the Roman Empire and was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
SetMapTemplateUnit("earth", "unit-teuton-temple", "francia", {3804, 972}, 486, 561) -- Nantes was a part of the Kingdom of the Franks in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
SetMapTemplateUnit("earth", "unit-teuton-temple", "neustria", {3804, 972}, 561) -- Namnetes went to Charibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Narbonne
SetMapTemplateUnit("earth", "unit-teuton-temple", "rome", {3914, 1063}, 395, 486) -- Narbonne was a part of the Roman Empire and was the seat of a metropolitanate (archbishopric) in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
SetMapTemplateUnit("earth", "unit-teuton-temple", "visigothia", {3914, 1063}, 486) -- Narbonne was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.

-- Nice / Nicea
SetMapTemplateUnit("earth", "unit-teuton-farm", "burgundia", {4006, 1052}, 561) -- Nicea went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Orléans / Aurehani
SetMapTemplateUnit("earth", "unit-teuton-town-hall", "burgundia", {3884, 961}, 561) -- Chlothar (Frankish king) died in 561, and Orléans went to his son Gunthram; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 328; Gregory of Tours, "History of the Franks", IV.22.

-- Paris
SetMapTemplateUnit("earth", "unit-teuton-temple", "rome", {3891, 937}, 395, 561) -- Paris was a part of the Roman Empire and was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
SetMapTemplateUnit("earth", "unit-teuton-town-hall", "neustria", {3891, 937}, 561) -- Paris went to Charibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
SetMapTemplateUnit("earth", "unit-teuton-temple", "neustria", {3891, 937}, 561)

-- Poitiers / Pictavis
SetMapTemplateUnit("earth", "unit-teuton-temple", "rome", {3845, 990}, 395, 486) -- Poitiers was a part of the Roman Empire and was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
SetMapTemplateUnit("earth", "unit-teuton-temple", "visigothia", {3845, 990}, 486, 526) -- Poitiers was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
SetMapTemplateUnit("earth", "unit-teuton-temple", "francia", {3845, 990}, 526, 561) -- Poitiers' area was a part of the Kingdom of the Franks in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
SetMapTemplateUnit("earth", "unit-teuton-temple", "neustria", {3845, 990}, 561) -- Pictavis went to Charibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Reims / Durocortorum
SetMapTemplateUnit("earth", "unit-latin-farm", "rome", {3930, 926}, -50, 395) -- Durocortorum was acquired by Rome in 50 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
SetMapTemplateUnit("earth", "unit-teuton-temple", "rome", {3930, 926}, 395, 526) -- Reims was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
SetMapTemplateUnit("earth", "unit-teuton-temple", "francia", {3930, 926}, 526, 561) -- Reims was a part of the Kingdom of the Franks in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
SetMapTemplateUnit("earth", "unit-teuton-town-hall", "austrasia", {3930, 926}, 561) -- Chlothar (Frankish king) died in 561, and Reims went to his son Sigibert, becoming his capital; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 328; Gregory of Tours, "History of the Franks", IV.22.
SetMapTemplateUnit("earth", "unit-teuton-temple", "austrasia", {3930, 926}, 561)
SetMapTemplateHero("earth", "Sigibert", "austrasia", {3930, 926}, 561, 575)

-- Rodez / Ruthenis
SetMapTemplateUnit("earth", "unit-teuton-farm", "austrasia", {3895, 1030}, 561) -- Ruthenis went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Rouen / Rotomagus
SetMapTemplateUnit("earth", "unit-teuton-farm", "rome", {3871, 926}, 395, 486) -- Rouen was a part of the Roman Empire in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
SetMapTemplateUnit("earth", "unit-teuton-farm", "francia", {3871, 926}, 486, 561) -- Rouen's area became a part of the Kingdom of the Franks in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
SetMapTemplateUnit("earth", "unit-teuton-farm", "neustria", {3871, 926}, 561) -- Rotomagus went to Charibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Sens / Senonae
SetMapTemplateUnit("earth", "unit-teuton-farm", "rome", {3911, 958}, 395, 486) -- Sens was a part of the Roman Empire in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
SetMapTemplateUnit("earth", "unit-teuton-farm", "francia", {3911, 958}, 486, 561) -- Sens' area became a part of the Kingdom of the Franks in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
SetMapTemplateUnit("earth", "unit-teuton-farm", "burgundia", {3911, 958}, 561) -- Senonae went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Soissons
SetMapTemplateUnit("earth", "unit-teuton-temple", "rome", {3915, 923}, 395, 526) -- Soissons was a part of the Roman Empire and was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
SetMapTemplateUnit("earth", "unit-teuton-temple", "francia", {3915, 923}, 526, 561) -- Soissons was a part of the Kingdom of the Franks in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
SetMapTemplateUnit("earth", "unit-teuton-town-hall", "salia", {3915, 923}, 561) -- Chlothar (Frankish king) died in 561, and Reims went to his son Chilperich; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 328; Gregory of Tours, "History of the Franks", IV.22.
SetMapTemplateUnit("earth", "unit-teuton-temple", "salia", {3915, 923}, 561)

-- Strassburg / Argentoratum
SetMapTemplateUnit("earth", "unit-latin-farm", "rome", {4013, 948}, -50, 161) -- Gaul (where Argentoratum was located) was acquired by Rome in 50 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
SetMapTemplateUnit("earth", "unit-latin-barracks", "rome", {4013, 948}, 161, 413) -- Legionary base present in Argentorate in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
SetMapTemplateUnit("earth", "unit-teuton-barracks", "burgundy", {4013, 948}, 413, 436) -- Argentoratum/Strassburg conquered by the Burgundians in 413 AD, after which they founded a kingdom that lasted until 436; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 329.
SetMapTemplateUnit("earth", "unit-teuton-barracks", "alamanni-tribe", {4013, 948}, 481, 506) -- political situation of the territories surrounding the Frankish realm in 481-814 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
SetMapTemplateUnit("earth", "unit-teuton-barracks", "francia", {4013, 948}, 506, 561) -- Alemanni lands (Alsace, Baden, Wurtemberg, Augsburg and etc.) conquered by the Franks in 506; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
SetMapTemplateUnit("earth", "unit-teuton-barracks", "austrasia", {4013, 948}, 561, 919) -- Argentoratum went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
SetMapTemplateUnit("earth", "unit-teuton-barracks", "holy-rome", {4013, 948}, 919) -- Duchy of Swabia; Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
-- Prévôt des maréchaux existent in Strasbourg in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
-- Parlement or conseil souverain existent in Colmar in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.

-- Toulon / Tolo
SetMapTemplateUnit("earth", "unit-teuton-farm", "burgundia", {3974, 1065}, 561) -- Tolo went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Toulouse / Tolosa
SetMapTemplateUnit("earth", "unit-teuton-temple", "rome", {3867, 1048}, 395, 486) -- Toulouse was a part of the Roman Empire and was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
SetMapTemplateUnit("earth", "unit-teuton-temple", "visigothia", {3867, 1048}, 486, 526) -- Toulouse was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
SetMapTemplateUnit("earth", "unit-teuton-temple", "francia", {3867, 1048}, 526, 561) -- Toulouse was a part of the Kingdom of the Franks in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
SetMapTemplateUnit("earth", "unit-teuton-temple", "neustria", {3867, 1048}, 561) -- Tolosa went to Charibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Tournai / Tornacum
SetMapTemplateUnit("earth", "unit-teuton-farm", "salia", {3917, 896}, 561) -- Tornacum went to Chilperich when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Tours / Turones
SetMapTemplateUnit("earth", "unit-teuton-temple", "rome", {3857, 971}, 395, 486) -- Tours was a part of the Roman Empire and was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
SetMapTemplateUnit("earth", "unit-teuton-temple", "visigothia", {3857, 971}, 486, 526) -- Tours was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
SetMapTemplateUnit("earth", "unit-teuton-temple", "francia", {3857, 971}, 526, 561) -- Tours' area was a part of the Kingdom of the Franks in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
SetMapTemplateUnit("earth", "unit-teuton-temple", "neustria", {3857, 971}, 561) -- Turones went to Charibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Troyes / Trecae
SetMapTemplateUnit("earth", "unit-teuton-farm", "burgundia", {3923, 952}, 561) -- Trecae went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Uzès / Ucetia
SetMapTemplateUnit("earth", "unit-teuton-farm", "austrasia", {3941, 1044}, 561) -- Ucetia went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Valence / Valentia
SetMapTemplateUnit("earth", "unit-teuton-farm", "burgundia", {3952, 1026}, 561) -- Valentia went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Verdun
SetMapTemplateUnit("earth", "unit-teuton-temple", "rome", {3957, 927}, 395, 486) -- Verdun was a part of the Roman Empire and was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
SetMapTemplateUnit("earth", "unit-teuton-temple", "francia", {3957, 927}, 486, 561) -- Verdun's area was a part of the Kingdom of the Franks in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
SetMapTemplateUnit("earth", "unit-teuton-temple", "austrasia", {3957, 927}, 561) -- Verdun's area went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

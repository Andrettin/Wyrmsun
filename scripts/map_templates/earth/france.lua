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

SetMapTemplateTileTerrain("earth", "shallow-water", {3815, 1011}) -- to make the river appear properly, as single water tiles aren't supported
SetMapTemplateTileTerrain("earth", "shallow-water", {3812, 1030}) -- to make the river appear properly, as single water tiles aren't supported

SetMapTemplateResource("earth", "unit-copper-deposit", {3749, 956}) -- Tin deposits; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 7.

-- Colmar
-- Parlement or conseil souverain existent in Colmar in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.

-- Molsheim
-- University founded in Molsheim in 1618. Source: "The Cambridge Modern History Atlas", 1912, p. 9.

-- Orléans / Aurehani
SetMapTemplateHero("earth", "gunthram", "burgundia", {3884, 961}, 561, 592)

-- Reims / Durocortorum
SetMapTemplateHero("earth", "sigibert", "austrasia", {3930, 926}, 561, 575)

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

-- Tournai / Tornacum
SetMapTemplateHero("earth", "chilperich", "salia", {3917, 896}, 561, 584)

-- Tours / Turones
SetMapTemplateFactionCulturalSettlementName("earth", "Tours", {3857, 971}, "france")
SetMapTemplateUnit("earth", "unit-teuton-temple", "rome", {3857, 971}, 395, 486) -- Tours was a part of the Roman Empire and was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
SetMapTemplateUnit("earth", "unit-teuton-temple", "visigothia", {3857, 971}, 486, 526) -- Tours was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
SetMapTemplateUnit("earth", "unit-teuton-temple", "francia", {3857, 971}, 526, 561) -- Tours' area was a part of the Kingdom of the Franks in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
SetMapTemplateUnit("earth", "unit-teuton-temple", "neustria", {3857, 971}, 561) -- Turones went to Charibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

-- Verdun
SetMapTemplateFactionCulturalSettlementName("earth", "Verdun", {3957, 927}, "france")
SetMapTemplateUnit("earth", "unit-teuton-temple", "rome", {3957, 927}, 395, 486) -- Verdun was a part of the Roman Empire and was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
SetMapTemplateUnit("earth", "unit-teuton-temple", "francia", {3957, 927}, 486, 561) -- Verdun's area was a part of the Kingdom of the Franks in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
SetMapTemplateUnit("earth", "unit-teuton-temple", "austrasia", {3957, 927}, 561) -- Verdun's area went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.

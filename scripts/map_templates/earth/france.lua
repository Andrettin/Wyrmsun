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

-- Tournai / Tornacum
SetMapTemplateHero("earth", "chilperich", "salia", {3917, 896}, 561, 584)

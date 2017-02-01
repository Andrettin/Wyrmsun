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
--      (c) Copyright 2017 by Andrettin
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

-- Notes on Settlements: Use farms to denote minor settlements (villages or small towns), using town halls only for more important ones (to avoid the map being filled with town halls close to one another). If the minor settlement has a known major activity, then use the appropriate building instead: if it was a metalworking center, use a smithy; if it was a military outpost, use a tower; and so forth. As such, minor settlements are represented by only one building, while major ones are represented by a multi-building settlement. For major settlements, don't place two of the same building if that is redundant (a settlement having multiple temples is nearly redundant for the game, and the same applies for most other buildings; it is alright to have multiple farms or towers, however), unless there is a strong reason to do so (for example, if there should be two unique buildings of the same type in the settlement). A faction's capital settlement is treated as a major settlement, no matter its actual historical size. For major settlements, by default they keep all buildings they had when historically changing ownership, unless we have specific information that the building in question was destroyed or ceased function.

-- Notes on Universities: Given a lack of a university building in the game, they are represented as temples.

Load("scripts/settlements_austria.lua")
Load("scripts/settlements_bohemia.lua")
Load("scripts/settlements_croatia.lua")
Load("scripts/settlements_greece.lua")
Load("scripts/settlements_italy.lua")
Load("scripts/settlements_slovakia.lua")

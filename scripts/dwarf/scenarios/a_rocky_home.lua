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
--      events.lua - Defines events for the Germanic civilization.
--
--      (c) Copyright 2015 by Andrettin
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

if (LoadedGame == false) then
	SetPlayerData(0, "Resources", "gold", 0)
	SetPlayerData(0, "Resources", "lumber", 0)
	SetPlayerData(0, "Resources", "stone", 0)
	SetPlayerData(0, "Resources", "oil", 0)
	SetPlayerData(0, "RaceName", "dwarf")
	SetPlayerData(0, "Faction", "Modsogning Clan")
	unit = CreateUnit("unit-hero-durin", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
	unit = CreateUnit("unit-dwarven-axefighter", 0, {Players[0].StartPos.x, Players[0].StartPos.y})

	SetPlayerData(0, "Allow", "unit-dwarven-town-hall", "F")
	SetPlayerData(0, "Allow", "unit-dwarven-barracks", "F")
	SetPlayerData(0, "Allow", "unit-dwarven-mushroom-farm", "F")
	SetPlayerData(0, "Allow", "unit-dwarven-smithy", "F")
	SetPlayerData(0, "Allow", "unit-dwarven-lumber-mill", "F")
	SetPlayerData(0, "Allow", "unit-dwarven-sentry-tower", "F")
	SetPlayerData(0, "Allow", "unit-dwarven-gold-mine", "F")
	SetPlayerData(0, "Allow", "unit-dwarven-miner", "F")
end

-- Kill 8 Yales
-- Gather 400 lumber and 200 stone
-- Modsognir must survive
-- Durin must survive




-- Modsognir: My clansfolk, if we are to survive, we will need food and materials to build shelters for our people.
-- Durin: Aye. There are plenty of yales here, we should hunt some.
-- Thjodrorir: By nightfall the bats - or worse - will come out into the open, we need to be ready before then.
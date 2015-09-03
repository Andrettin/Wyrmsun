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
--      resources.lua - Defines the resources.
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

--  Define default resources

-- FIXME: Must be removed: Use and write (define-resource)
--
--  (define-resource 'gold 'name "Gold"
--    'start-resource-default 2000
--    'start-resource-low 2000
--    'start-resource-medium 5000
--    'start-resource-high 10000
--    'income 100)
--  FIXME: Must describe how getting resources work.
--

DefineDefaultIncomes(
	0, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100
)

DefineDefaultActions(
	"stop", "mine", "gather", "drill", "mine", "mine", "mine", "produce", "gain", "gather", "mine", "mine", "grow", "grow", "produce"
)

DefineDefaultResourceNames(
	"time", "gold", "lumber", "oil", "ore", "stone", "coal", "research", "prestige", "timber", "silver", "copper", "grain", "mushrooms", "labor"
)

DefineDefaultResourceAmounts(
	"gold", 50000,
	"lumber", 100,
	"oil", 50000,
	"stone", 100,
	"coal", 50000,
	"silver", 50000,
	"copper", 50000
)

DefineDefaultResourceMaxAmounts(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1)

SetResourceBaseLaborInput("gold", 100)
SetResourceBaseOutput("gold", 200)

SetResourceBasePrice("lumber", 100)
SetResourceBaseLaborInput("lumber", 100)
SetResourceBaseOutput("lumber", 100)

SetResourceBasePrice("stone", 100)
SetResourceBaseLaborInput("stone", 100)
SetResourceBaseOutput("stone", 100)

SetResourceBaseLaborInput("grain", 100)
SetResourceBaseOutput("grain", 100)

SetResourceBaseLaborInput("mushrooms", 100)
SetResourceBaseOutput("mushrooms", 100)

function GetResourceID(resource)
	local resource_types = {"time", "gold", "lumber", "oil", "ore", "stone", "coal", "research", "prestige", "timber", "silver", "copper", "grain", "mushrooms", "labor"}
	for i=1,table.getn(resource_types) do
		if (resource_types[i] == resource) then
			return i - 1
		end
	end
	return nil
end

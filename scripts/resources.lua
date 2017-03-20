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
--      (c) Copyright 2015-2017 by Andrettin
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
--  (define-resource 'copper 'name "Copper"
--    'start-resource-default 2000
--    'start-resource-low 2000
--    'start-resource-medium 5000
--    'start-resource-high 10000
--    'income 100)
--  FIXME: Must describe how getting resources work.
--

DefineDefaultIncomes(
	0, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100
)

DefineDefaultActions(
	"stop", "mine", "gather", "drill", "mine", "quarry", "mine", "produce", "gain", "mine", "mine", "gather", "grow", "grow", "produce", "catch", "gain"
)

DefineDefaultResourceNames(
	"time", "copper", "lumber", "oil", "ore", "stone", "coal", "research", "prestige", "gold", "silver", "furniture", "grain", "mushrooms", "labor", "fish", "leadership"
)

DefineDefaultResourceAmounts(
	"lumber", 400,
	"oil", 50000,
	"stone", 10000,
	"coal", 50000,
	"gold", 50000,
	"silver", 50000,
	"copper", 50000
)

DefineDefaultResourceMaxAmounts(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1)

DefineLuxuryResources("furniture")

SetResourceFinalResource("gold", "copper")
SetResourceFinalResourceConversionRate("gold", 400)
SetResourceBaseLaborInput("gold", 100)
SetResourceBaseOutput("gold", 200)

SetResourceFinalResource("silver", "copper")
SetResourceFinalResourceConversionRate("silver", 200)
SetResourceBaseLaborInput("silver", 100)
SetResourceBaseOutput("silver", 200)

SetResourceBaseLaborInput("copper", 100)
SetResourceBaseOutput("copper", 200)

SetResourceBasePrice("lumber", 100)
SetResourceBaseLaborInput("lumber", 100)
SetResourceBaseOutput("lumber", 100)

SetResourceBasePrice("stone", 100)
SetResourceBaseLaborInput("stone", 100)
SetResourceBaseOutput("stone", 100)

SetResourceBaseLaborInput("grain", 100)
SetResourceBaseOutput("grain", 100)
SetResourceGrandStrategyBuildingVariations("grain", 4)

SetResourceBaseLaborInput("mushrooms", 100)
SetResourceBaseOutput("mushrooms", 100)
SetResourceGrandStrategyBuildingVariations("mushrooms", 4)

SetResourceBaseLaborInput("fish", 100)
SetResourceBaseOutput("fish", 100)

SetResourceBasePrice("coal", 100)
SetResourceBaseLaborInput("coal", 100)
SetResourceBaseOutput("coal", 100)

SetResourceBasePrice("furniture", 200)
SetResourceInputResource("furniture", "lumber")

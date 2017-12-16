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
	0, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100
)

DefineDefaultActions(
	"stop", "mine", "gather", "drill", "mine", "quarry", "mine", "produce", "gain", "mine", "mine", "mine", "quarry", "produce", "produce", "gather", "mine", "mine", "gain", "perform"
)

DefineDefaultResourceNames(
	"time", "copper", "lumber", "oil", "iron", "stone", "coal", "research", "prestige", "gold", "silver", "mithril", "limestone", "jewelry", "furniture", "leather", "diamonds", "emeralds", "leadership", "trade"
)

DefineDefaultResourceAmounts(
	"lumber", 400,
	"oil", 50000,
	"stone", 10000,
	"limestone", 10000,
	"coal", 50000,
	"gold", 50000,
	"silver", 50000,
	"copper", 50000,
	"iron", 50000,
	"mithril", 50000,
	"diamonds", 50000
)

DefineDefaultResourceMaxAmounts(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1)

DefineResource("copper", {
	Name = "Copper"
})

DefineResource("silver", {
	Name = "Silver",
	FinalResource = "copper",
	FinalResourceConversionRate = 200
})

DefineResource("gold", {
	Name = "Gold",
	FinalResource = "copper",
	FinalResourceConversionRate = 400
})

DefineResource("iron", {
	Name = "Iron",
	FinalResource = "copper",
	FinalResourceConversionRate = 100
})

DefineResource("mithril", {
	Name = "Mithril",
	FinalResource = "copper",
	FinalResourceConversionRate = 800
})

DefineResource("emeralds", {
	Name = "Emeralds",
	FinalResource = "copper",
	FinalResourceConversionRate = 600,
	Hidden = true
})

DefineResource("diamonds", {
	Name = "Diamonds",
	FinalResource = "copper",
	FinalResourceConversionRate = 800
})

DefineResource("trade", {
	Name = "Trade",
	FinalResource = "copper",
	FinalResourceConversionRate = 100
})

DefineResource("lumber", {
	Name = "Lumber"
})

DefineResource("stone", {
	Name = "Stone"
})

DefineResource("limestone", {
	Name = "Limestone",
	FinalResource = "stone",
	FinalResourceConversionRate = 200,
	Hidden = true
})

DefineResource("coal", {
	Name = "Coal"
})

DefineResource("jewelry", {
	Name = "Jewelry",
	LuxuryResource = true
})

DefineResource("furniture", {
	Name = "Furniture",
	LuxuryResource = true
})

DefineResource("leather", {
	Name = "Leather",
	LuxuryResource = true
})

SetResourceBasePrice("lumber", 100)

SetResourceBasePrice("stone", 100)

SetResourceBasePrice("coal", 100)

SetResourceBasePrice("jewelry", 200)
SetResourceInputResource("jewelry", "copper")
SetResourceDemandElasticity("jewelry", 200)

SetResourceBasePrice("furniture", 200)
SetResourceInputResource("furniture", "lumber")
SetResourceDemandElasticity("furniture", 125)

SetResourceBasePrice("leather", 100)

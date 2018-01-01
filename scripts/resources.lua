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
--      (c) Copyright 2015-2018 by Andrettin
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

DefineDefaultResourceNames(
	"time", "copper", "lumber", "oil", "iron", "stone", "coal", "research", "prestige", "gold", "silver", "mithril", "limestone", "jewelry", "furniture", "leather", "diamonds", "emeralds", "leadership", "trade"
)

DefineResource("time", {
	Name = "Time",
	DefaultIncome = 0,
	ActionName = "stop"
})

DefineResource("copper", {
	Name = "Copper",
	DefaultIncome = 100,
	ActionName = "mine",
	DefaultAmount = 50000
})

DefineResource("silver", {
	Name = "Silver",
	DefaultIncome = 100,
	FinalResource = "copper",
	FinalResourceConversionRate = 200,
	ActionName = "mine",
	DefaultAmount = 50000
})

DefineResource("gold", {
	Name = "Gold",
	DefaultIncome = 100,
	FinalResource = "copper",
	FinalResourceConversionRate = 400,
	ActionName = "mine",
	DefaultAmount = 50000
})

DefineResource("iron", {
	Name = "Iron",
	DefaultIncome = 100,
	FinalResource = "copper",
	FinalResourceConversionRate = 100,
	ActionName = "mine",
	DefaultAmount = 50000
})

DefineResource("mithril", {
	Name = "Mithril",
	DefaultIncome = 100,
	FinalResource = "copper",
	FinalResourceConversionRate = 800,
	ActionName = "mine",
	DefaultAmount = 50000
})

DefineResource("emeralds", {
	Name = "Emeralds",
	DefaultIncome = 100,
	FinalResource = "copper",
	FinalResourceConversionRate = 600,
	ActionName = "mine",
	Hidden = true,
	DefaultAmount = 50000
})

DefineResource("diamonds", {
	Name = "Diamonds",
	DefaultIncome = 100,
	FinalResource = "copper",
	FinalResourceConversionRate = 800,
	ActionName = "mine",
	DefaultAmount = 50000
})

DefineResource("trade", {
	Name = "Trade",
	DefaultIncome = 100,
	FinalResource = "copper",
	FinalResourceConversionRate = 100,
	ActionName = "perform"
})

DefineResource("lumber", {
	Name = "Lumber",
	DefaultIncome = 100,
	BasePrice = 100,
	ActionName = "gather",
	DefaultAmount = 400
})

DefineResource("stone", {
	Name = "Stone",
	DefaultIncome = 100,
	BasePrice = 100,
	ActionName = "quarry",
	DefaultAmount = 10000
})

DefineResource("limestone", {
	Name = "Limestone",
	DefaultIncome = 100,
	FinalResource = "stone",
	FinalResourceConversionRate = 200,
	ActionName = "quarry",
	Hidden = true,
	DefaultAmount = 10000
})

DefineResource("coal", {
	Name = "Coal",
	DefaultIncome = 100,
	BasePrice = 100,
	ActionName = "mine",
	DefaultAmount = 50000
})

DefineResource("oil", {
	Name = "Oil",
	DefaultIncome = 100,
	ActionName = "drill",
	DefaultAmount = 50000
})

DefineResource("jewelry", {
	Name = "Jewelry",
	LuxuryResource = true,
	DefaultIncome = 100,
	BasePrice = 200,
	InputResource = "copper",
	DemandElasticity = 200,
	ActionName = "produce"
})

DefineResource("furniture", {
	Name = "Furniture",
	LuxuryResource = true,
	DefaultIncome = 100,
	BasePrice = 200,
	InputResource = "lumber",
	DemandElasticity = 125,
	ActionName = "produce"
})

DefineResource("leather", {
	Name = "Leather",
	LuxuryResource = true,
	DefaultIncome = 100,
	BasePrice = 100,
	ActionName = "gather"
})

DefineResource("research", {
	Name = "Research",
	DefaultIncome = 100,
	ActionName = "produce"
})

DefineResource("prestige", {
	Name = "Prestige",
	DefaultIncome = 100,
	ActionName = "gain"
})

DefineResource("leadership", {
	Name = "Leadership",
	DefaultIncome = 100,
	ActionName = "gain"
})

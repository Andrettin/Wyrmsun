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
--      (c) Copyright 2017-2020 by Andrettin
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

DefineUpgrade("upgrade-free-workers", {
	Name = "Free Workers",
	Icon = "icon-labor",
--	Description = ".\n\nEffect: +25% worker cost, +25% worker gathering rates.",
	Costs = {"time", 200, "copper", 1200},
	ScaledCosts = {"copper", 100},
	ScaledCostUnits = {
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister",
		"unit_elven_worker",
		"unit-germanic-worker", "unit-teuton-worker",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker",
		"unit-goblin-worker"
	},
	CivilizationPriorities = {
		"dwarven", 200,
		"elven", 200,
		"germanic", 200,
		"goblin", 200
	}
})

DefineModifier("upgrade-free-workers",
	{"remove-upgrade", "upgrade-serfdom"}
)

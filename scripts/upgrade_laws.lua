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
		"unit-germanic-worker", "unit-teuton-worker",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker",
		"unit-goblin-worker"
	},
	CivilizationPriorities = {
		"dwarf", 200,
		"germanic", 200,
		"goblin", 200
	}
})

DefineUpgrade("upgrade-serfdom", {
	Name = "Serfdom",
	Icon = "icon-serfdom",
--	Description = ".\n\nEffect: -25% worker cost, -1 worker gathering rate.",
	Costs = {"time", 200, "copper", 1200},
	RequirementsString = "Stronghold/Bastion",
	CivilizationPriorities = {
		"anglo-saxon", 200,
		"english", 200,
		"frankish", 200,
		"goth", 200,
		"norse", 200,
		"suebi", 200,
		"teuton", 200
	}
})

DefineModifier("upgrade-serfdom",
	{"cost", "copper", -100},
	{"apply-to", "unit-dwarven-miner"}, {"apply-to", "unit-brising-miner"},
	{"apply-to", "unit-germanic-worker"}, {"apply-to", "unit-teuton-worker"},
	{"apply-to", "unit-gnomish-worker"}, {"apply-to", "unit-deep-gnomish-worker"}, {"apply-to", "unit-derro-worker"},
	{"apply-to", "unit-goblin-worker"}
)

DefineModifier("upgrade-serfdom",
	{"GatheringBonus", -1},
	{"apply-to", "unit-dwarven-miner"}, {"apply-to", "unit-dwarven-skilled-miner"}, {"apply-to", "unit-dwarven-expert-miner"},
	{"apply-to", "unit-brising-miner"}, {"apply-to", "unit-brising-skilled-miner"}, {"apply-to", "unit-brising-expert-miner"},
	{"apply-to", "unit-dwarven-runesmith"}, {"apply-to", "unit-dwarven-runemaster"}, {"apply-to", "unit-dwarven-arcanister"},
	{"apply-to", "unit-germanic-worker"}, {"apply-to", "unit-teuton-worker"},
	{"apply-to", "unit-gnomish-worker"}, {"apply-to", "unit-deep-gnomish-worker"}, {"apply-to", "unit-derro-worker"},
	{"apply-to", "unit-goblin-worker"}
)

DefineModifier("upgrade-free-workers",
	{"remove-upgrade", "upgrade-serfdom"}
)

DefineModifier("upgrade-serfdom",
	{"remove-upgrade", "upgrade-free-workers"}
)

DefineDependency("upgrade-serfdom",
	{"unit-dwarven-stronghold"},
	"or", {"unit-goblin-stronghold"},
	"or", {"unit-teuton-stronghold"}
)

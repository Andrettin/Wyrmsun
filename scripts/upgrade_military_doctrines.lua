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
--      (c) Copyright 2017-2018 by Andrettin
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

DefineUpgrade("upgrade-shield-wall", {
	Name = "Shield Wall",
	Icon = "icon-shield-wall",
	Costs = {"time", 250, "copper", 2400},
	Description = "The shield wall is a rectangular infantry formation in which soldiers hold their shields up for mutual protection.\n\nEffects: +2 Armor for infantry.",
	CivilizationPriorities = {
		"anglo-saxon", 200,
		"dwarf", 200,
		"english", 200,
		"frankish", 200,
		"germanic", 200,
		"goblin", 200,
		"goth", 200,
		"suebi", 200,
		"teuton", 200
	}
})

DefineUpgrade("upgrade-svinfylking", {
	Name = "Svinfylking",
	Icon = "icon-svinfylking",
	Costs = {"time", 250, "copper", 2400},
	Description = "The svinfylking is a wedge-shaped infantry formation in which soldiers hold their shields up for mutual protection. Due to its wedge-shaped nature, the formation can be quite effective in breaking enemy lines.\n\nEffects: +2 Damage for infantry."
})

DefineModifier("upgrade-shield-wall",
	{"Armor", 2},
	{"Points", 10},
	{"apply-to", "unit-dwarven-militia"},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"},
	{"apply-to", "unit-dwarven-guard"},
	{"apply-to", "unit-brising-militia"},
	{"apply-to", "unit-surghan-mercenary-axefighter"}, {"apply-to", "unit-surghan-mercenary-steelclad"}, {"apply-to", "unit-surghan-mercenary-thane"},
	{"apply-to", "unit-germanic-warrior"}, {"apply-to", "unit-germanic-veteran-warrior"}, {"apply-to", "unit-germanic-chieftain"},
	{"apply-to", "unit-germanic-spearman"},
	{"apply-to", "unit-norse-swordsman"}, {"apply-to", "unit-norse-veteran-swordsman"}, {"apply-to", "unit-norse-heroic-swordsman"},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"},
	{"apply-to", "unit-suebi-swordsman"},
	{"apply-to", "unit-frank-swordsman"}, {"apply-to", "unit-frank-veteran-swordsman"}, {"apply-to", "unit-frank-heroic-swordsman"},
	{"apply-to", "unit-teuton-spearman"}, {"apply-to", "unit-frank-spearman"},
	{"apply-to", "unit-latin-legionary"}, {"apply-to", "unit-latin-veteran-legionary"}, {"apply-to", "unit-latin-centurion"},
	{"apply-to", "unit-goblin-militia"},
	{"apply-to", "unit-goblin-swordsman"}, {"apply-to", "unit-goblin-barbarian"}, {"apply-to", "unit-goblin-warlord"},
	{"apply-to", "unit-goblin-spearman"}
)

DefineModifier("upgrade-shield-wall",
	{"remove-upgrade", "upgrade-svinfylking"}
)

DefineModifier("upgrade-svinfylking",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-dwarven-militia"},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"},
	{"apply-to", "unit-dwarven-guard"},
	{"apply-to", "unit-brising-militia"},
	{"apply-to", "unit-surghan-mercenary-axefighter"}, {"apply-to", "unit-surghan-mercenary-steelclad"}, {"apply-to", "unit-surghan-mercenary-thane"},
	{"apply-to", "unit-germanic-warrior"}, {"apply-to", "unit-germanic-veteran-warrior"}, {"apply-to", "unit-germanic-chieftain"},
	{"apply-to", "unit-germanic-spearman"},
	{"apply-to", "unit-norse-swordsman"}, {"apply-to", "unit-norse-veteran-swordsman"}, {"apply-to", "unit-norse-heroic-swordsman"},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"},
	{"apply-to", "unit-suebi-swordsman"},
	{"apply-to", "unit-frank-swordsman"}, {"apply-to", "unit-frank-veteran-swordsman"}, {"apply-to", "unit-frank-heroic-swordsman"},
	{"apply-to", "unit-teuton-spearman"}, {"apply-to", "unit-frank-spearman"},
	{"apply-to", "unit-latin-legionary"}, {"apply-to", "unit-latin-veteran-legionary"}, {"apply-to", "unit-latin-centurion"},
	{"apply-to", "unit-goblin-militia"},
	{"apply-to", "unit-goblin-swordsman"}, {"apply-to", "unit-goblin-barbarian"}, {"apply-to", "unit-goblin-warlord"},
	{"apply-to", "unit-goblin-spearman"}
)

DefineModifier("upgrade-svinfylking",
	{"remove-upgrade", "upgrade-shield-wall"}
)

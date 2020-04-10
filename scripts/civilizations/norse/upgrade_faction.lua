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
--      (c) Copyright 2018-2020 by Andrettin
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

DefineUpgrade("upgrade-faction-dane-tribe", {
	Name = "Dane Tribe",
	EffectsString = "+1 Damage and +1 Armor for Swordsmen",
	RequirementsString = "Ironworking"
})

DefineUpgrade("upgrade-faction-geat-tribe", {
	Name = "Geat Tribe",
	EffectsString = "+2 Damage for Swordsmen",
	RequirementsString = "Ironworking"
})

DefineUpgrade("upgrade-faction-gute-tribe", {
	Name = "Gute Tribe",
	EffectsString = "+1 Damage and +1 Accuracy for Swordsmen",
	RequirementsString = "Ironworking"
})

DefineUpgrade("upgrade-faction-sitone-tribe", {
	Name = "Sitone Tribe",
	EffectsString = "+2 Accuracy for Archers",
	RequirementsString = "Ironworking"
})

DefineUpgrade("upgrade-faction-swede-tribe", {
	Name = "Swede Tribe",
	EffectsString = "+2 Damage for Archers",
	RequirementsString = "Ironworking"
})

DefineUpgrade("upgrade-faction-denmark", {
	Name = "Denmark",
	EffectsString = "+1 Damage and +1 Armor for Swordsmen",
	RequirementsString = "Writing and Masonry"
})

DefineUpgrade("upgrade-faction-gautland", {
	Name = "Gautland",
	EffectsString = "+2 Damage for Swordsmen",
	RequirementsString = "Writing and Masonry"
})

DefineUpgrade("upgrade-faction-gotland", {
	Name = "Gotland",
	EffectsString = "+1 Damage and +1 Accuracy for Swordsmen",
	RequirementsString = "Writing and Masonry"
})

DefineUpgrade("upgrade-faction-norway", {
	Name = "Norway",
	EffectsString = "+2 Accuracy for Swordsmen",
	RequirementsString = "Writing and Masonry"
})

DefineUpgrade("upgrade-faction-sweden", {
	Name = "Sweden",
	EffectsString = "+2 Damage for Archers",
	RequirementsString = "Writing and Masonry"
})

DefineModifier("upgrade-faction-dane-tribe",
	{"BasicDamage", 1},
	{"Armor", 1},
	{"Points", 10},
	{"apply-to", "unit-norse-swordsman"},
	{"apply-to", "unit-norse-veteran-swordsman"},
	{"apply-to", "unit-norse-heroic-swordsman"}
)

DefineModifier("upgrade-faction-geat-tribe",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-norse-swordsman"},
	{"apply-to", "unit-norse-veteran-swordsman"},
	{"apply-to", "unit-norse-heroic-swordsman"}
)

DefineModifier("upgrade-faction-gute-tribe",
	{"BasicDamage", 1},
	{"Accuracy", 1},
	{"Points", 10},
	{"apply-to", "unit-norse-swordsman"},
	{"apply-to", "unit-norse-veteran-swordsman"},
	{"apply-to", "unit-norse-heroic-swordsman"}
)

DefineModifier("upgrade-faction-sitone-tribe",
	{"Accuracy", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-archer"}
)

DefineModifier("upgrade-faction-swede-tribe",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-archer"}
)

DefineModifier("upgrade-faction-denmark",
	{"BasicDamage", 1},
	{"Armor", 1},
	{"Points", 10},
	{"apply-to", "unit-norse-swordsman"},
	{"apply-to", "unit-norse-veteran-swordsman"},
	{"apply-to", "unit-norse-heroic-swordsman"}
)

DefineModifier("upgrade-faction-gautland",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-norse-swordsman"},
	{"apply-to", "unit-norse-veteran-swordsman"},
	{"apply-to", "unit-norse-heroic-swordsman"}
)

DefineModifier("upgrade-faction-gotland",
	{"BasicDamage", 1},
	{"Accuracy", 1},
	{"Points", 10},
	{"apply-to", "unit-norse-swordsman"},
	{"apply-to", "unit-norse-veteran-swordsman"},
	{"apply-to", "unit-norse-heroic-swordsman"}
)

DefineModifier("upgrade-faction-norway",
	{"Accuracy", 2},
	{"Points", 10},
	{"apply-to", "unit-norse-swordsman"},
	{"apply-to", "unit-norse-veteran-swordsman"},
	{"apply-to", "unit-norse-heroic-swordsman"}
)

DefineModifier("upgrade-faction-sweden",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-archer"}
)

DefineDependency("upgrade-faction-dane-tribe",
	{"upgrade_ironworking"}
)

DefineDependency("upgrade-faction-geat-tribe",
	{"upgrade_ironworking"}
)

DefineDependency("upgrade-faction-gute-tribe",
	{"upgrade_ironworking"}
)

DefineDependency("upgrade-faction-sitone-tribe",
	{"upgrade_ironworking"}
)

DefineDependency("upgrade-faction-swede-tribe",
	{"upgrade_ironworking"}
)

DefineDependency("upgrade-faction-denmark",
	{"upgrade-teuton-writing", "upgrade-masonry"}
)

DefineDependency("upgrade-faction-gautland",
	{"upgrade-teuton-writing", "upgrade-masonry"}
)

DefineDependency("upgrade-faction-gotland",
	{"upgrade-teuton-writing", "upgrade-masonry"}
)

DefineDependency("upgrade-faction-norway",
	{"upgrade-teuton-writing", "upgrade-masonry"}
)

DefineDependency("upgrade-faction-sweden",
	{"upgrade-teuton-writing", "upgrade-masonry"}
)

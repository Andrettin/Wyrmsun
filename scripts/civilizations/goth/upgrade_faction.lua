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
--      (c) Copyright 2014-2021 by Andrettin
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

DefineModifier("upgrade-faction-bastarnae-tribe",
	{"BasicDamage", 3},
	{"Evasion", -1},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-faction-burgundian-tribe",
	{"HitPoints", 10},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade_faction_gepid_tribe",
	{"Speed", 1},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade_faction_gothic_tribe",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-faction-herulian-tribe",
	{"DisembarkmentBonus", 1},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"},
	{"apply-to", "unit-teuton-spearman"}
)

DefineModifier("upgrade-faction-lugii-tribe",
	{"Evasion", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-spearman"}
)

DefineModifier("upgrade_faction_ostrogothic_tribe",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-gothic-horse-rider"}, {"apply-to", "unit-gothic-horse-lord"}
)

DefineModifier("upgrade-faction-rugian-tribe",
	{"Accuracy", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-faction-silingae-tribe",
	{"Accuracy", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-archer"}
)

DefineModifier("upgrade-faction-turcilingian-tribe",
	{"Evasion", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-archer"}
)

DefineModifier("upgrade-faction-vandal-tribe",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-archer"}
)

DefineModifier("upgrade_faction_visigothic_tribe",
	{"Speed", 1},
	{"Points", 10},
	{"apply-to", "unit-gothic-horse-rider"}, {"apply-to", "unit-gothic-horse-lord"}
)

DefineModifier("upgrade-faction-burgundy",
	{"HitPoints", 10},
	{"Points", 10},
	{"apply-to", "unit-gothic-horse-rider"}, {"apply-to", "unit-gothic-horse-lord"}
)

DefineModifier("upgrade-faction-gothia",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-gothic-horse-rider"}, {"apply-to", "unit-gothic-horse-lord"}
)

DefineModifier("upgrade-faction-ostrogothia",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-gothic-horse-rider"}, {"apply-to", "unit-gothic-horse-lord"}
)

DefineModifier("upgrade-faction-vandalia",
	{"Speed", 1},
	{"Points", 10},
	{"apply-to", "unit-teuton-kogge"}
)

DefineModifier("upgrade-faction-visigothia",
	{"Speed", 1},
	{"Points", 10},
	{"apply-to", "unit-gothic-horse-rider"}, {"apply-to", "unit-gothic-horse-lord"}
)

DefineDependency("upgrade-faction-burgundian-tribe",
	{"upgrade_ironworking"}
)

DefineDependency("upgrade_faction_gothic_tribe",
	{"upgrade_ironworking"}
)

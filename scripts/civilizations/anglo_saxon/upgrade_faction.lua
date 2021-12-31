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

DefineModifier("upgrade_faction_angle_tribe",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-faction-avione-tribe",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-archer"}
)

DefineModifier("upgrade-faction-bernice-tribe",
	{"DisembarkmentBonus", 1},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"},
	{"apply-to", "unit-teuton-spearman"}
)

DefineModifier("upgrade_faction_charude_tribe",
	{"Armor", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-archer"}
)

DefineModifier("upgrade-faction-dere-tribe",
	{"DisembarkmentBonus", 1},
	{"Points", 10},
	{"apply-to", "unit-teuton-archer"}
)

DefineModifier("upgrade-faction-gumeninga-tribe",
	{"Mana", 30},
	{"Points", 10},
	{"apply-to", "unit-teuton-priest"}
)

DefineModifier("upgrade-faction-lindisfaran-tribe",
	{"Accuracy", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade_faction_teuton_tribe",
	{"BasicDamage", 3},
	{"Armor", -1},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-faction-bernicia",
	{"BasicDamage", 1},
	{"Accuracy", 1},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-faction-deira",
	{"BasicDamage", 1},
	{"Accuracy", 1},
	{"Points", 10},
	{"apply-to", "unit-teuton-archer"}
)

DefineModifier("upgrade-faction-east-anglia",
	{"Accuracy", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-faction-englaland",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-archer"}
)

DefineModifier("upgrade-faction-essex",
	{"Accuracy", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-archer"}
)

DefineModifier("upgrade-faction-jutland",
	{"Supply", 2},
	{"apply-to", "unit_teuton_dock"}
)

DefineModifier("upgrade-faction-kent",
	{"ResearchSpeedBonus", 10},
	{"apply-to", "unit-teuton-town-hall"}, {"apply-to", "unit-teuton-stronghold"},
	{"apply-to", "unit-teuton-barracks"},
	{"apply-to", "unit-teuton-lumber-mill"}, {"apply-to", "unit_teutonic_smithy"},
--	{"apply-to", "unit-teuton-stables"},
--	{"apply-to", "unit-teuton-market"},
	{"apply-to", "unit-teuton-temple"}, {"apply-to", "unit-teuton-university"}
--	{"apply-to", "unit_teuton_dock"}
)

DefineModifier("upgrade-faction-mercia",
	{"Armor", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-faction-middle-anglia",
	{"Armor", 3},
	{"BasicDamage", -1},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-faction-middlesex",
	{"TradeCost", -5},
	{"apply-to", "unit-teuton-market"}
)

DefineModifier("upgrade-faction-northumbria",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-faction-sussex",
	{"HitPoints", 10},
	{"Points", 10},
	{"apply-to", "unit-teuton-archer"}
)

DefineModifier("upgrade-faction-wessex",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-archer"}
)

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
--      (c) Copyright 2013-2022 by Andrettin
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

DefineModifier("upgrade-faction-brising-clan",
	{"BasicDamage", 1},
	{"Points", 5},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"}
)

DefineModifier("upgrade-faction-brising-clan",
	{"apply-to", "unit-dwarven-smithy"}, {"convert-to", "unit-brising-smithy"}
)

DefineModifier("upgrade-faction-brising-clan",
	{"apply-to", "unit_dwarven_miner"}, {"convert-to", "unit_brising_miner"}
)

DefineModifier("upgrade-faction-brising-clan",
	{"apply-to", "unit-dwarven-skilled-miner"}, {"convert-to", "unit-brising-skilled-miner"}
)

DefineModifier("upgrade-faction-brising-clan",
	{"apply-to", "unit-dwarven-expert-miner"}, {"convert-to", "unit-brising-expert-miner"}
)

DefineModifier("upgrade-faction-brising-clan",
	{"apply-to", "unit-dwarven-militia"}, {"convert-to", "unit-brising-militia"}
)

DefineModifier("upgrade-faction-brising-clan", -- dummy upgrade modifier to trigger the variation change
	{"apply-to", "unit-dwarven-town-hall"}, {"apply-to", "unit-dwarven-stronghold"}, {"apply-to", "unit-dwarven-transport-ship"}
)

DefineModifier("upgrade_faction_eikinskjaldi_clan",
	{"Armor", 1},
	{"Points", 5},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"}
)

DefineModifier("upgrade_faction_eikinskjaldi_clan",
	{"apply-to", "unit-dwarven-scout"}, {"convert-to", "unit-joruvellir-scout"}
)

DefineModifier("upgrade_faction_eikinskjaldi_clan",
	{"apply-to", "unit-dwarven-pathfinder"}, {"convert-to", "unit-joruvellir-pathfinder"}
)

DefineModifier("upgrade_faction_eikinskjaldi_clan",
	{"apply-to", "unit-dwarven-explorer"}, {"convert-to", "unit-joruvellir-explorer"}
)

DefineModifier("upgrade_faction_eikinskjaldi_clan",
	{"apply-to", "unit-dwarven-yale-rider"}, {"convert-to", "unit-joruvellir-yale-rider"}
)

DefineModifier("upgrade_faction_eikinskjaldi_clan",
	{"apply-to", "unit-dwarven-yale-lord"}, {"convert-to", "unit-joruvellir-yale-lord"}
)

DefineModifier("upgrade_faction_eikinskjaldi_clan",
	{"apply-to", "unit-dwarven-yale-pen"}, {"convert-to", "unit-joruvellir-yale-pen"}
)

DefineModifier("upgrade-faction-goldhoof-clan",
	{"BasicDamage", 1},
	{"Points", 5},
	{"apply-to", "unit-joruvellir-yale-rider"}, {"apply-to", "unit-joruvellir-yale-lord"}
)

DefineModifier("upgrade-faction-goldhoof-clan",
	{"apply-to", "unit-dwarven-scout"}, {"convert-to", "unit-joruvellir-scout"}
)

DefineModifier("upgrade-faction-goldhoof-clan",
	{"apply-to", "unit-dwarven-pathfinder"}, {"convert-to", "unit-joruvellir-pathfinder"}
)

DefineModifier("upgrade-faction-goldhoof-clan",
	{"apply-to", "unit-dwarven-explorer"}, {"convert-to", "unit-joruvellir-explorer"}
)

DefineModifier("upgrade-faction-goldhoof-clan",
	{"apply-to", "unit-dwarven-yale-rider"}, {"convert-to", "unit-joruvellir-yale-rider"}
)

DefineModifier("upgrade-faction-goldhoof-clan",
	{"apply-to", "unit-dwarven-yale-lord"}, {"convert-to", "unit-joruvellir-yale-lord"}
)

DefineModifier("upgrade-faction-goldhoof-clan",
	{"apply-to", "unit-dwarven-yale-pen"}, {"convert-to", "unit-joruvellir-yale-pen"}
)

DefineModifier("upgrade_faction_norlund_clan",
	{"BasicDamage", 1},
	{"Armor", 1},
	{"Points", 10},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"}
)

DefineModifier("upgrade_faction_oinling_clan",
	{"improve-production", "copper", 5},
	{"improve-production", "silver", 5},
	{"improve-production", "gold", 5},
	{"apply-to", "unit-dwarven-smithy"}
)

DefineModifier("upgrade_faction_shinsplitter_clan",
	{"Armor", -1},
	{"BasicDamage", 3},
	{"Points", 10},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"}
)

DefineModifier("upgrade_faction_shorbear_clan",
	{"BasicDamage", 12},
	{"Points", 10},
	{"apply-to", "unit-dwarven-ballista"}
)

DefineModifier("upgrade_faction_whitesteel_clan",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-dwarven-guard"}, {"apply-to", "unit-dwarven-stalwart"}, {"apply-to", "unit-dwarven-sentinel"}
)

DefineModifier("upgrade_faction_joruvellir",
	{"BasicDamage", 1},
	{"Points", 10},
	{"apply-to", "unit-joruvellir-scout"}, {"apply-to", "unit-joruvellir-pathfinder"}, {"apply-to", "unit-joruvellir-explorer"}
)

DefineModifier("upgrade_faction_joruvellir",
	{"apply-to", "unit-dwarven-scout"}, {"convert-to", "unit-joruvellir-scout"}
)

DefineModifier("upgrade_faction_joruvellir",
	{"apply-to", "unit-dwarven-pathfinder"}, {"convert-to", "unit-joruvellir-pathfinder"}
)

DefineModifier("upgrade_faction_joruvellir",
	{"apply-to", "unit-dwarven-explorer"}, {"convert-to", "unit-joruvellir-explorer"}
)

DefineModifier("upgrade_faction_joruvellir",
	{"apply-to", "unit-dwarven-yale-rider"}, {"convert-to", "unit-joruvellir-yale-rider"}
)

DefineModifier("upgrade_faction_joruvellir",
	{"apply-to", "unit-dwarven-yale-lord"}, {"convert-to", "unit-joruvellir-yale-lord"}
)

DefineModifier("upgrade_faction_joruvellir",
	{"apply-to", "unit-dwarven-yale-pen"}, {"convert-to", "unit-joruvellir-yale-pen"}
)

DefineModifier("upgrade_faction_kal_kartha",
	{"BasicDamage", 3},
	{"HitPoints", -5},
	{"Points", 10},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"}
)

DefineModifier("upgrade-faction-knalga",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"}
)

DefineModifier("upgrade_faction_lyr",
	{"Armor", 5}, -- Thrymgjol bonus
	{"Points", 10},
	{"apply-to", "unit-dwarven-sentry-tower"}, {"apply-to", "unit-dwarven-guard-tower"}, {"apply-to", "unit-dwarven-ballista-tower"}, {"apply-to", "unit-dwarven-cannon-tower"}
)

DefineModifier("upgrade_faction_lyr",
	{"apply-to", "unit-dwarven-smithy"}, {"convert-to", "unit-brising-smithy"}
)

DefineModifier("upgrade_faction_lyr",
	{"apply-to", "unit_dwarven_miner"}, {"convert-to", "unit_brising_miner"}
)

DefineModifier("upgrade_faction_lyr",
	{"apply-to", "unit-dwarven-skilled-miner"}, {"convert-to", "unit-brising-skilled-miner"}
)

DefineModifier("upgrade_faction_lyr",
	{"apply-to", "unit-dwarven-expert-miner"}, {"convert-to", "unit-brising-expert-miner"}
)

DefineModifier("upgrade_faction_lyr",
	{"apply-to", "unit-dwarven-militia"}, {"convert-to", "unit-brising-militia"}
)

DefineModifier("upgrade_faction_lyr", -- dummy upgrade modifier to trigger the variation change
	{"apply-to", "unit-dwarven-town-hall"}, {"apply-to", "unit-dwarven-stronghold"}, {"apply-to", "unit-dwarven-transport-ship"}
)

DefineModifier("upgrade_faction_surghan_mercenaries",
	{"apply-to", "unit-dwarven-axefighter"}, {"convert-to", "unit-surghan-mercenary-axefighter"}
)

DefineModifier("upgrade_faction_surghan_mercenaries",
	{"apply-to", "unit-dwarven-steelclad"}, {"convert-to", "unit-surghan-mercenary-steelclad"}
)

DefineModifier("upgrade_faction_surghan_mercenaries",
	{"apply-to", "unit-dwarven-thane"}, {"convert-to", "unit-surghan-mercenary-thane"}
)

DefineModifier("upgrade-faction-yawning-yales",
	{"BasicDamage", 1},
	{"Points", 5},
	{"apply-to", "unit-joruvellir-yale-rider"}, {"apply-to", "unit-joruvellir-yale-lord"}
)

DefineModifier("upgrade-faction-yawning-yales",
	{"apply-to", "unit-dwarven-scout"}, {"convert-to", "unit-joruvellir-scout"}
)

DefineModifier("upgrade-faction-yawning-yales",
	{"apply-to", "unit-dwarven-pathfinder"}, {"convert-to", "unit-joruvellir-pathfinder"}
)

DefineModifier("upgrade-faction-yawning-yales",
	{"apply-to", "unit-dwarven-explorer"}, {"convert-to", "unit-joruvellir-explorer"}
)

DefineModifier("upgrade-faction-yawning-yales",
	{"apply-to", "unit-dwarven-yale-rider"}, {"convert-to", "unit-joruvellir-yale-rider"}
)

DefineModifier("upgrade-faction-yawning-yales",
	{"apply-to", "unit-dwarven-yale-lord"}, {"convert-to", "unit-joruvellir-yale-lord"}
)

DefineModifier("upgrade-faction-yawning-yales",
	{"apply-to", "unit-dwarven-yale-pen"}, {"convert-to", "unit-joruvellir-yale-pen"}
)

DefineDependency("upgrade-faction-goldhoof-clan",
	{"unit-dwarven-yale-pen"}, "or", {"unit-joruvellir-yale-pen"}
)

DefineDependency("upgrade_faction_norlund_clan",
	{"unit-dwarven-smithy", "upgrade_ironworking"}, "or", {"unit-brising-smithy", "upgrade_ironworking"}
)

DefineDependency("upgrade_faction_oinling_clan",
	{"unit-dwarven-smithy"}, "or", {"unit-brising-smithy"}
)

DefineDependency("upgrade_faction_shinsplitter_clan",
	{"unit-dwarven-barracks", "upgrade_ironworking"}
)

DefineDependency("upgrade_faction_shorbear_clan",
	{"unit-dwarven-smithy", "upgrade_ironworking"}, "or", {"unit-brising-smithy", "upgrade_ironworking"}
)

DefineDependency("upgrade_faction_whitesteel_clan",
	{"unit-dwarven-smithy", "upgrade_ironworking"}, "or", {"unit-brising-smithy", "upgrade_ironworking"}
)

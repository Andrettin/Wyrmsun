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
--      (c) Copyright 2013-2019 by Andrettin
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

DefineUpgrade("upgrade-faction-brising-clan", {
	Name = "Brising Clan",
	EffectsString = "+10 HP for Miners, +1 Damage for Axefighters, +50% Research Speed for Smithies"
})

DefineUpgrade("upgrade-faction-eikinskjaldi-clan", {
	Name = "Eikinskjaldi Clan",
	EffectsString = "+1 Damage for Yale Riders, +1 Armor for Axefighters"
})

DefineUpgrade("upgrade-faction-goldhoof-clan", {
	Name = "Goldhoof Clan",
	EffectsString = "+2 Damage for Yale Riders",
	RequirementsString = "Yale Pen"
})

DefineUpgrade("upgrade-faction-norlund-clan", {
	Name = "Norlund Clan",
	EffectsString = "+1 Damage and +1 Armor for Axefighters",
	RequirementsString = "Smithy and Ironworking"
})

DefineUpgrade("upgrade-faction-oinling-clan", {
	Name = "Oinling Clan",
	EffectsString = "+5% Copper, Silver and Gold Processing for Smithies",
	RequirementsString = "Smithy"
})

DefineUpgrade("upgrade-faction-shadowcharm-clan", {
	Name = "Shadowcharm Clan",
	EffectsString = "+2 Evasion for Axefighters",
	RequirementsString = "War Hall"
})

DefineUpgrade("upgrade-faction-shinsplitter-clan", {
	Name = "Shinsplitter Clan",
	EffectsString = "+3 Damage and -1 Armor for Axefighters",
	RequirementsString = "War Hall and Ironworking"
})

DefineUpgrade("upgrade-faction-shorbear-clan", {
	Name = "Shorbear Clan",
	EffectsString = "+12 Damage for Ballistas",
	RequirementsString = "Smithy and Ironworking"
})

DefineUpgrade("upgrade-faction-whitesteel-clan", {
	Name = "Whitesteel Clan",
	EffectsString = "+2 Damage for Guards",
	RequirementsString = "Smithy and Ironworking"
})

DefineUpgrade("upgrade-faction-joruvellir", {
	Name = "Joruvellir",
	EffectsString = "+1 Damage for Yale Riders and Scouts",
	RequirementsString = "Writing and Masonry"
})

DefineUpgrade("upgrade-faction-kal-kartha", {
	Name = "Kal Kartha",
	EffectsString = "-5 HP and +3 Damage for Axefighters",
	RequirementsString = "Writing and Masonry"
})

DefineUpgrade("upgrade-faction-knalga", {
	Name = "Knalga",
	EffectsString = "+2 Damage for Axefighters",
	RequirementsString = "Writing and Masonry"
})

DefineUpgrade("upgrade-faction-lyr", {
	Name = "Lyr",
	EffectsString = "+10 HP for Miners, +5 Armor for Towers, +50% Research Speed for Smithies",
	RequirementsString = "Writing and Masonry"
})

DefineUpgrade("upgrade-faction-surghan-mercenaries", {
	Name = "Surghan Mercenaries",
	EffectsString = "+2 Damage for Axefighters"
})

DefineUpgrade("upgrade-faction-yawning-yales", {
	Name = "Yawning Yales",
	EffectsString = "+2 Damage for Yale Riders"
})

DefineModifier("upgrade-faction-brising-clan",
	{"BasicDamage", 1},
	{"Points", 5},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"}
)

DefineModifier("upgrade-faction-brising-clan",
	{"apply-to", "unit-dwarven-smithy"}, {"convert-to", "unit-brising-smithy"}
)

DefineModifier("upgrade-faction-brising-clan",
	{"apply-to", "unit-dwarven-miner"}, {"convert-to", "unit-brising-miner"}
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

DefineModifier("upgrade-faction-eikinskjaldi-clan",
	{"Armor", 1},
	{"Points", 5},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"}
)

DefineModifier("upgrade-faction-eikinskjaldi-clan",
	{"apply-to", "unit-dwarven-scout"}, {"convert-to", "unit-joruvellir-scout"}
)

DefineModifier("upgrade-faction-eikinskjaldi-clan",
	{"apply-to", "unit-dwarven-pathfinder"}, {"convert-to", "unit-joruvellir-pathfinder"}
)

DefineModifier("upgrade-faction-eikinskjaldi-clan",
	{"apply-to", "unit-dwarven-explorer"}, {"convert-to", "unit-joruvellir-explorer"}
)

DefineModifier("upgrade-faction-eikinskjaldi-clan",
	{"apply-to", "unit-dwarven-yale-rider"}, {"convert-to", "unit-joruvellir-yale-rider"}
)

DefineModifier("upgrade-faction-eikinskjaldi-clan",
	{"apply-to", "unit-dwarven-yale-lord"}, {"convert-to", "unit-joruvellir-yale-lord"}
)

DefineModifier("upgrade-faction-eikinskjaldi-clan",
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

DefineModifier("upgrade-faction-norlund-clan",
	{"BasicDamage", 1},
	{"Armor", 1},
	{"Points", 10},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"}
)

DefineModifier("upgrade-faction-oinling-clan",
	{"improve-production", "copper", 5},
	{"improve-production", "silver", 5},
	{"improve-production", "gold", 5},
	{"apply-to", "unit-dwarven-smithy"}
)

DefineModifier("upgrade-faction-shadowcharm-clan",
	{"Evasion", 2},
	{"Points", 10},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"}
)

DefineModifier("upgrade-faction-shinsplitter-clan",
	{"Armor", -1},
	{"BasicDamage", 3},
	{"Points", 10},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"}
)

DefineModifier("upgrade-faction-shorbear-clan",
	{"BasicDamage", 12},
	{"Points", 10},
	{"apply-to", "unit-dwarven-ballista"}
)

DefineModifier("upgrade-faction-whitesteel-clan",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-dwarven-guard"}, {"apply-to", "unit-dwarven-stalwart"}, {"apply-to", "unit-dwarven-sentinel"}
)

DefineModifier("upgrade-faction-joruvellir",
	{"BasicDamage", 1},
	{"Points", 10},
	{"apply-to", "unit-joruvellir-scout"}, {"apply-to", "unit-joruvellir-pathfinder"}, {"apply-to", "unit-joruvellir-explorer"}
)

DefineModifier("upgrade-faction-joruvellir",
	{"apply-to", "unit-dwarven-scout"}, {"convert-to", "unit-joruvellir-scout"}
)

DefineModifier("upgrade-faction-joruvellir",
	{"apply-to", "unit-dwarven-pathfinder"}, {"convert-to", "unit-joruvellir-pathfinder"}
)

DefineModifier("upgrade-faction-joruvellir",
	{"apply-to", "unit-dwarven-explorer"}, {"convert-to", "unit-joruvellir-explorer"}
)

DefineModifier("upgrade-faction-joruvellir",
	{"apply-to", "unit-dwarven-yale-rider"}, {"convert-to", "unit-joruvellir-yale-rider"}
)

DefineModifier("upgrade-faction-joruvellir",
	{"apply-to", "unit-dwarven-yale-lord"}, {"convert-to", "unit-joruvellir-yale-lord"}
)

DefineModifier("upgrade-faction-joruvellir",
	{"apply-to", "unit-dwarven-yale-pen"}, {"convert-to", "unit-joruvellir-yale-pen"}
)

DefineModifier("upgrade-faction-kal-kartha",
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

DefineModifier("upgrade-faction-lyr",
	{"Armor", 5}, -- Thrymgjol bonus
	{"Points", 10},
	{"apply-to", "unit-dwarven-sentry-tower"}, {"apply-to", "unit-dwarven-guard-tower"}, {"apply-to", "unit-dwarven-ballista-tower"}, {"apply-to", "unit-dwarven-cannon-tower"}
)

DefineModifier("upgrade-faction-lyr",
	{"apply-to", "unit-dwarven-smithy"}, {"convert-to", "unit-brising-smithy"}
)

DefineModifier("upgrade-faction-lyr",
	{"apply-to", "unit-dwarven-miner"}, {"convert-to", "unit-brising-miner"}
)

DefineModifier("upgrade-faction-lyr",
	{"apply-to", "unit-dwarven-skilled-miner"}, {"convert-to", "unit-brising-skilled-miner"}
)

DefineModifier("upgrade-faction-lyr",
	{"apply-to", "unit-dwarven-expert-miner"}, {"convert-to", "unit-brising-expert-miner"}
)

DefineModifier("upgrade-faction-lyr",
	{"apply-to", "unit-dwarven-militia"}, {"convert-to", "unit-brising-militia"}
)

DefineModifier("upgrade-faction-lyr", -- dummy upgrade modifier to trigger the variation change
	{"apply-to", "unit-dwarven-town-hall"}, {"apply-to", "unit-dwarven-stronghold"}, {"apply-to", "unit-dwarven-transport-ship"}
)

DefineModifier("upgrade-faction-surghan-mercenaries",
	{"apply-to", "unit-dwarven-axefighter"}, {"convert-to", "unit-surghan-mercenary-axefighter"}
)

DefineModifier("upgrade-faction-surghan-mercenaries",
	{"apply-to", "unit-dwarven-steelclad"}, {"convert-to", "unit-surghan-mercenary-steelclad"}
)

DefineModifier("upgrade-faction-surghan-mercenaries",
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

DefineDependency("upgrade-faction-norlund-clan",
	{"unit-dwarven-smithy", "upgrade-ironworking"}, "or", {"unit-brising-smithy", "upgrade-ironworking"}
)

DefineDependency("upgrade-faction-oinling-clan",
	{"unit-dwarven-smithy"}, "or", {"unit-brising-smithy"}
)

DefineDependency("upgrade-faction-shadowcharm-clan",
	{"unit-dwarven-temple", "upgrade-deity-loki"}
)

DefineDependency("upgrade-faction-shinsplitter-clan",
	{"unit-dwarven-barracks", "upgrade-ironworking"}
)

DefineDependency("upgrade-faction-shorbear-clan",
	{"unit-dwarven-smithy", "upgrade-ironworking"}, "or", {"unit-brising-smithy", "upgrade-ironworking"}
)

DefineDependency("upgrade-faction-whitesteel-clan",
	{"unit-dwarven-smithy", "upgrade-ironworking"}, "or", {"unit-brising-smithy", "upgrade-ironworking"}
)

DefineDependency("upgrade-faction-joruvellir",
	{"upgrade-dwarven-runewriting", "upgrade-masonry"}
)

DefineDependency("upgrade-faction-kal-kartha",
	{"upgrade-dwarven-runewriting", "upgrade-masonry"}
)

DefineDependency("upgrade-faction-knalga",
	{"upgrade-dwarven-runewriting", "upgrade-masonry"}
)

DefineDependency("upgrade-faction-lyr",
	{"upgrade-dwarven-runewriting", "upgrade-masonry"}
)

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
--      (c) Copyright 2013-2017 by Andrettin
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
	EffectsString = "+10 HP for Miners, +1 Damage for Axefighters, +50% Time Efficiency for Smithies"
})

DefineUpgrade("upgrade-faction-eikinskjaldi-clan", {
	Name = "Eikinskjaldi Clan",
	EffectsString = "+2 Armor for Axefighters"
})

DefineUpgrade("upgrade-faction-norlund-clan", {
	Name = "Norlund Clan",
	EffectsString = "+1 Damage and +1 Armor for Axefighters"
})

DefineUpgrade("upgrade-faction-shadowcharm-clan", {
	Name = "Shadowcharm Clan",
	EffectsString = "+2 Evasion for Axefighters"
})

DefineUpgrade("upgrade-faction-shinsplitter-clan", {
	Name = "Shinsplitter Clan",
	EffectsString = "+3 Damage and -1 Armor for Axefighters"
})

DefineUpgrade("upgrade-faction-shorbear-clan", {
	Name = "Shorbear Clan",
	EffectsString = "+15 Damage for Ballistas"
})

DefineUpgrade("upgrade-faction-joruvellir", {
	Name = "Joruvellir",
	EffectsString = "+2 Damage for Scouts, -10% cost for Yale Pens",
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
	EffectsString = "+5 Armor for Towers",
	RequirementsString = "Writing and Masonry"
})

DefineUpgrade("upgrade-faction-surghan-mercenaries", {
	Name = "Surghan Mercenaries",
	EffectsString = "+2 Damage for Axefighters"
})

DefineUpgrade("upgrade-faction-yawning-yales", {
	Name = "Yawning Yales",
--	EffectsString = "+1 Speed for Yale Riders"
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

DefineModifier("upgrade-faction-brising-clan",
	{"change-faction-to", "brising-clan"}
)

DefineModifier("upgrade-faction-eikinskjaldi-clan",
	{"Armor", 2},
	{"Points", 10},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"}
)

DefineModifier("upgrade-faction-eikinskjaldi-clan",
	{"apply-to", "unit-dwarven-yale-pen"}, {"convert-to", "unit-joruvellir-yale-pen"}
)

DefineModifier("upgrade-faction-eikinskjaldi-clan",
	{"change-faction-to", "eikinskjaldi-clan"}
)

DefineModifier("upgrade-faction-norlund-clan",
	{"BasicDamage", 1},
	{"Armor", 1},
	{"Points", 10},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"}
)

DefineModifier("upgrade-faction-norlund-clan",
	{"change-faction-to", "norlund-clan"}
)

DefineModifier("upgrade-faction-shadowcharm-clan",
	{"Evasion", 2},
	{"Points", 10},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"}
)

DefineModifier("upgrade-faction-shadowcharm-clan",
	{"change-faction-to", "shadowcharm-clan"}
)

DefineModifier("upgrade-faction-shinsplitter-clan",
	{"Armor", -1},
	{"BasicDamage", 3},
	{"Points", 10},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"}
)

DefineModifier("upgrade-faction-shinsplitter-clan",
	{"change-faction-to", "shinsplitter-clan"}
)

DefineModifier("upgrade-faction-shorbear-clan",
	{"BasicDamage", 15},
	{"Points", 10},
	{"apply-to", "unit-dwarven-ballista"}
)

DefineModifier("upgrade-faction-shorbear-clan",
	{"change-faction-to", "shorbear-clan"}
)

DefineModifier("upgrade-faction-joruvellir",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-dwarven-scout"}, {"apply-to", "unit-dwarven-pathfinder"}, {"apply-to", "unit-dwarven-explorer"}
)

DefineModifier("upgrade-faction-joruvellir",
	{"change-faction-to", "joruvellir"}
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

DefineModifier("upgrade-faction-kal-kartha",
	{"change-faction-to", "kal-kartha"}
)

DefineModifier("upgrade-faction-knalga",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"}
)

DefineModifier("upgrade-faction-knalga",
	{"change-faction-to", "knalga"}
)

DefineModifier("upgrade-faction-lyr",
	{"Armor", 5}, -- Thrymgjol bonus
	{"Points", 10},
	{"apply-to", "unit-dwarven-sentry-tower"}, {"apply-to", "unit-dwarven-guard-tower"}
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

DefineModifier("upgrade-faction-lyr",
	{"change-faction-to", "lyr"}
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

DefinePredependency("upgrade-faction-eikinskjaldi-clan",
	{"upgrade-faction-brising-clan"}
)

DefinePredependency("upgrade-faction-norlund-clan",
	{"upgrade-faction-brising-clan"}
)

DefinePredependency("upgrade-faction-shadowcharm-clan",
	{"upgrade-faction-brising-clan"}
)

DefinePredependency("upgrade-faction-shinsplitter-clan",
	{"upgrade-faction-brising-clan"}
)

DefinePredependency("upgrade-faction-shorbear-clan",
	{"upgrade-faction-brising-clan"}
)

DefinePredependency("upgrade-faction-joruvellir",
	{"upgrade-faction-eikinskjaldi-clan"}
)

DefineDependency("upgrade-faction-joruvellir",
	{"upgrade-dwarven-runewriting", "upgrade-dwarven-masonry"}
)

DefinePredependency("upgrade-faction-kal-kartha",
	{"upgrade-faction-shadowcharm-clan"}, "or", {"upgrade-faction-shinsplitter-clan"}, "or", {"upgrade-faction-shorbear-clan"}
)

DefineDependency("upgrade-faction-kal-kartha",
	{"upgrade-dwarven-runewriting", "upgrade-dwarven-masonry"}
)

DefinePredependency("upgrade-faction-knalga",
	{"upgrade-faction-norlund-clan"}, "or", {"upgrade-faction-shinsplitter-clan"}, "or", {"upgrade-faction-shorbear-clan"}
)

DefineDependency("upgrade-faction-knalga",
	{"upgrade-dwarven-runewriting", "upgrade-dwarven-masonry"}
)

DefinePredependency("upgrade-faction-lyr",
	{"upgrade-faction-brising-clan"}
)

DefineDependency("upgrade-faction-lyr",
	{"upgrade-dwarven-runewriting", "upgrade-dwarven-masonry"}
)

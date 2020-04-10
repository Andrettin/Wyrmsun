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
--      (c) Copyright 2014-2020 by Andrettin
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

DefineUpgrade("upgrade-faction-angle-tribe", {
	Name = "Angle Tribe",
	EffectsString = "+2 Damage for Swordsmen",
	RequirementsString = "Ironworking"
})

DefineUpgrade("upgrade-faction-avione-tribe", {
	Name = "Avione Tribe",
	EffectsString = "+2 Damage for Archers"
})

DefineUpgrade("upgrade-faction-bernice-tribe", {
	Name = "Bernice Tribe",
	EffectsString = "Disembarkment Bonus for Swordsmen and Spearmen",
	RequirementsString = "Spatha and Iron Shield"
})

DefineUpgrade("upgrade-faction-cantware-tribe", {
	Name = "Cantware Tribe",
	EffectsString = "+10% Research Speed for buildings",
	RequirementsString = "Spatha and Iron Shield"
})

DefineUpgrade("upgrade-faction-charude-tribe", {
	Name = "Charude Tribe",
	EffectsString = "+2 Armor for Archers"
})

DefineUpgrade("upgrade-faction-dere-tribe", {
	Name = "Dere Tribe",
	EffectsString = "Disembarkment Bonus for Archers",
	RequirementsString = "Spatha and Iron Shield"
})

DefineUpgrade("upgrade-faction-gumeninga-tribe", {
	Name = "Gumeninga Tribe",
	EffectsString = "+30 Mana for Clerics",
	RequirementsString = "Spatha and Iron Shield"
})

DefineUpgrade("upgrade-faction-jute-tribe", {
	Name = "Jute Tribe",
	EffectsString = "+2 Food Supply for Docks",
	RequirementsString = "Ironworking"
})

DefineUpgrade("upgrade-faction-lindisfaran-tribe", {
	Name = "Lindisfaran Tribe",
	EffectsString = "+2 Accuracy for Swordsmen",
	RequirementsString = "Spatha and Iron Shield"
})

DefineUpgrade("upgrade-faction-mierce-tribe", {
	Name = "Mierce Tribe",
	EffectsString = "+2 Armor for Swordsmen",
	RequirementsString = "Spatha and Iron Shield"
})

DefineUpgrade("upgrade-faction-teuton-tribe", {
	Name = "Teuton Tribe",
	EffectsString = "+3 Damage, -1 Armor for Swordsmen",
	RequirementsString = "Ironworking"
})

DefineUpgrade("upgrade-faction-bernicia", {
	Name = "Bernicia",
	EffectsString = "+1 Damage, +1 Accuracy for Swordsmen",
	RequirementsString = "Writing and Masonry"
})

DefineUpgrade("upgrade-faction-deira", {
	Name = "Deira",
	EffectsString = "+1 Damage, +1 Accuracy for Archers",
	RequirementsString = "Writing and Masonry"
})

DefineUpgrade("upgrade-faction-east-anglia", {
	Name = "East Anglia",
	EffectsString = "+2 Accuracy for Swordsmen",
	RequirementsString = "Writing and Masonry"
})

DefineUpgrade("upgrade-faction-englaland", {
	Name = "Englaland",
	EffectsString = "+2 Damage for Archers",
	RequirementsString = "No other Anglo-Saxon or English faction exists"
})

DefineUpgrade("upgrade-faction-essex", {
	Name = "Essex",
	EffectsString = "+2 Accuracy for Archers",
	RequirementsString = "Writing and Masonry"
})

DefineUpgrade("upgrade-faction-jutland", {
	Name = "Jutland",
	EffectsString = "+2 Food Supply for Docks",
	RequirementsString = "Writing and Masonry"
})

DefineUpgrade("upgrade-faction-kent", {
	Name = "Kent",
	EffectsString = "+10% Research Speed for buildings",
	RequirementsString = "Writing and Masonry"
})

DefineUpgrade("upgrade-faction-mercia", {
	Name = "Mercia",
	EffectsString = "+2 Armor for Swordsmen",
	RequirementsString = "Writing and Masonry"
})

DefineUpgrade("upgrade-faction-middle-anglia", {
	Name = "Middle Anglia",
	EffectsString = "-1 Damage, +3 Armor for Swordsmen",
	RequirementsString = "Writing and Masonry"
})

DefineUpgrade("upgrade-faction-middlesex", {
	Name = "Middlesex",
	EffectsString = "-5% Trade Cost for Markets",
	RequirementsString = "Writing and Masonry"
})

DefineUpgrade("upgrade-faction-northumbria", {
	Name = "Northumbria",
	EffectsString = "+2 Damage for Swordsmen",
	RequirementsString = "Temple/Church, no other player is Bernicia or Deira"
})

DefineUpgrade("upgrade-faction-sussex", {
	Name = "Sussex",
	EffectsString = "+10 HP for Archers",
	RequirementsString = "Writing and Masonry"
})

DefineUpgrade("upgrade-faction-wessex", {
	Name = "Wessex",
	EffectsString = "+2 Damage for Archers",
	RequirementsString = "Writing and Masonry"
})

DefineModifier("upgrade-faction-angle-tribe",
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

DefineModifier("upgrade-faction-cantware-tribe",
	{"ResearchSpeedBonus", 10},
	{"apply-to", "unit-teuton-town-hall"}, {"apply-to", "unit-teuton-stronghold"},
	{"apply-to", "unit-teuton-barracks"},
	{"apply-to", "unit-teuton-lumber-mill"}, {"apply-to", "unit-teuton-smithy"},
--	{"apply-to", "unit-teuton-stables"},
--	{"apply-to", "unit-teuton-market"},
	{"apply-to", "unit-teuton-temple"}, {"apply-to", "unit-teuton-university"}
--	{"apply-to", "unit-teuton-dock"}
)

DefineModifier("upgrade-faction-charude-tribe",
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

DefineModifier("upgrade-faction-jute-tribe",
	{"Supply", 2},
	{"apply-to", "unit-teuton-dock"}
)

DefineModifier("upgrade-faction-lindisfaran-tribe",
	{"Accuracy", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-faction-mierce-tribe",
	{"Armor", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-faction-teuton-tribe",
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
	{"apply-to", "unit-teuton-dock"}
)

DefineModifier("upgrade-faction-kent",
	{"ResearchSpeedBonus", 10},
	{"apply-to", "unit-teuton-town-hall"}, {"apply-to", "unit-teuton-stronghold"},
	{"apply-to", "unit-teuton-barracks"},
	{"apply-to", "unit-teuton-lumber-mill"}, {"apply-to", "unit-teuton-smithy"},
--	{"apply-to", "unit-teuton-stables"},
--	{"apply-to", "unit-teuton-market"},
	{"apply-to", "unit-teuton-temple"}, {"apply-to", "unit-teuton-university"}
--	{"apply-to", "unit-teuton-dock"}
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

DefineDependency("upgrade-faction-angle-tribe",
	{"upgrade_ironworking"}
)

DefineDependency("upgrade-faction-bernice-tribe",
	{"upgrade-teuton-spatha", "upgrade-teuton-iron-shield"}
)

DefineDependency("upgrade-faction-cantware-tribe",
	{"upgrade-teuton-spatha", "upgrade-teuton-iron-shield"}
)

DefineDependency("upgrade-faction-dere-tribe",
	{"upgrade-teuton-spatha", "upgrade-teuton-iron-shield"}
)

DefineDependency("upgrade-faction-gumeninga-tribe",
	{"upgrade-teuton-spatha", "upgrade-teuton-iron-shield"}
)

DefineDependency("upgrade-faction-jute-tribe",
	{"upgrade_ironworking"}
)

DefineDependency("upgrade-faction-lindisfaran-tribe",
	{"upgrade-teuton-spatha", "upgrade-teuton-iron-shield"}
)

DefineDependency("upgrade-faction-mierce-tribe",
	{"upgrade-teuton-spatha", "upgrade-teuton-iron-shield"}
)

DefineDependency("upgrade-faction-teuton-tribe",
	{"upgrade_ironworking"}
)

DefineDependency("upgrade-faction-bernicia",
	{"upgrade-teuton-writing", "upgrade-masonry"}
)

DefineDependency("upgrade-faction-deira",
	{"upgrade-teuton-writing", "upgrade-masonry"}
)

DefineDependency("upgrade-faction-east-anglia",
	{"upgrade-teuton-writing", "upgrade-masonry"}
)

DefineDependency("upgrade-faction-essex",
	{"upgrade-teuton-writing", "upgrade-masonry"}
)

DefineDependency("upgrade-faction-jutland",
	{"upgrade-teuton-writing", "upgrade-masonry"}
)

DefineDependency("upgrade-faction-kent",
	{"upgrade-teuton-writing", "upgrade-masonry"}
)

DefineDependency("upgrade-faction-mercia",
	{"upgrade-teuton-writing", "upgrade-masonry"}
)

DefineDependency("upgrade-faction-middle-anglia",
	{"upgrade-teuton-writing", "upgrade-masonry"}
)

DefineDependency("upgrade-faction-middlesex",
	{"upgrade-teuton-writing", "upgrade-masonry"}
)

DefineDependency("upgrade-faction-northumbria",
	{"unit-teuton-temple"}
)

DefineDependency("upgrade-faction-sussex",
	{"upgrade-teuton-writing", "upgrade-masonry"}
)

DefineDependency("upgrade-faction-wessex",
	{"upgrade-teuton-writing", "upgrade-masonry"}
)

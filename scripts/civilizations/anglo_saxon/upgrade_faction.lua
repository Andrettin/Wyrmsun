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
--      (c) Copyright 2014-2017 by Andrettin
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
	EffectsString = "+2 Damage for Kriegers",
	RequirementsString = "Broad Sword, Bronze Shield, Barbed Arrow and Wood Plow"
})

DefineUpgrade("upgrade-faction-avione-tribe", {
	Name = "Avione Tribe",
	EffectsString = "+2 Damage for Schutzes"
})

DefineUpgrade("upgrade-faction-bernice-tribe", {
	Name = "Bernice Tribe",
	EffectsString = "Disembarkment Bonus for Kriegers and Spearmen",
	RequirementsString = "Spatha and Iron Shield"
})

DefineUpgrade("upgrade-faction-charude-tribe", {
	Name = "Charude Tribe",
	EffectsString = "+2 Armor for Schutzes"
})

DefineUpgrade("upgrade-faction-dere-tribe", {
	Name = "Dere Tribe",
	EffectsString = "Disembarkment Bonus for Schutzes",
	RequirementsString = "Spatha and Iron Shield"
})

DefineUpgrade("upgrade-faction-gumeninga-tribe", {
	Name = "Gumeninga Tribe",
	EffectsString = "+30 Mana for Clerics",
	RequirementsString = "Spatha and Iron Shield"
})

DefineUpgrade("upgrade-faction-jute-tribe", {
	Name = "Jute Tribe",
	EffectsString = "+2 Food Supply for Docks"
})

DefineUpgrade("upgrade-faction-bernicia", {
	Name = "Bernicia",
	EffectsString = "+1 Damage, +1 Accuracy for Kriegers",
	RequirementsString = "Writing and Masonry"
})

DefineUpgrade("upgrade-faction-deira", {
	Name = "Deira",
	EffectsString = "+1 Damage, +1 Accuracy for Schutzes",
	RequirementsString = "Writing and Masonry"
})

DefineUpgrade("upgrade-faction-east-anglia", {
	Name = "East Anglia",
	EffectsString = "+2 Accuracy for Kriegers",
	RequirementsString = "Writing and Masonry"
})

DefineUpgrade("upgrade-faction-englaland", {
	Name = "Englaland",
	EffectsString = "+2 Damage for Schutzes",
	RequirementsString = "No other Anglo-Saxon or English faction exists"
})

DefineUpgrade("upgrade-faction-essex", {
	Name = "Essex",
	EffectsString = "+2 Accuracy for Schutzes",
	RequirementsString = "Writing and Masonry"
})

DefineUpgrade("upgrade-faction-jutland", {
	Name = "Jutland",
	EffectsString = "+2 Food Supply for Docks",
	RequirementsString = "Writing and Masonry"
})

DefineUpgrade("upgrade-faction-kent", {
	Name = "Kent",
	EffectsString = "+10% Time Efficiency for all buildings",
	RequirementsString = "Writing and Masonry"
})

DefineUpgrade("upgrade-faction-mercia", {
	Name = "Mercia",
	EffectsString = "+2 Armor for Kriegers",
	RequirementsString = "Writing and Masonry"
})

DefineUpgrade("upgrade-faction-middle-anglia", {
	Name = "Middle Anglia",
	EffectsString = "-1 Damage, +3 Armor for Kriegers",
	RequirementsString = "Writing and Masonry"
})

DefineUpgrade("upgrade-faction-middlesex", {
	Name = "Middlesex",
	EffectsString = "-5% Trade Cost for Markets",
	RequirementsString = "Writing and Masonry"
})

DefineUpgrade("upgrade-faction-northumbria", {
	Name = "Northumbria",
	EffectsString = "+2 Damage for Kriegers",
	RequirementsString = "Temple/Church, no other player is Bernicia or Deira"
})

DefineUpgrade("upgrade-faction-sussex", {
	Name = "Sussex",
	EffectsString = "+10 HP for Schutzes",
	RequirementsString = "Writing and Masonry"
})

DefineUpgrade("upgrade-faction-wessex", {
	Name = "Wessex",
	EffectsString = "+2 Damage for Schutzes",
	RequirementsString = "Writing and Masonry"
})

DefineModifier("upgrade-faction-angle-tribe",
	{"change-faction-to", "angle-tribe"}
)

DefineModifier("upgrade-faction-angle-tribe",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-faction-avione-tribe",
	{"change-faction-to", "avione-tribe"}
)

DefineModifier("upgrade-faction-avione-tribe",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-archer"}
)

DefineModifier("upgrade-faction-bernice-tribe",
	{"change-faction-to", "bernice-tribe"}
)

DefineModifier("upgrade-faction-bernice-tribe",
	{"DisembarkmentBonus", 1},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"},
	{"apply-to", "unit-teuton-spearman"}
)

DefineModifier("upgrade-faction-charude-tribe",
	{"change-faction-to", "charude-tribe"}
)

DefineModifier("upgrade-faction-charude-tribe",
	{"Armor", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-archer"}
)

DefineModifier("upgrade-faction-dere-tribe",
	{"change-faction-to", "dere-tribe"}
)

DefineModifier("upgrade-faction-dere-tribe",
	{"DisembarkmentBonus", 1},
	{"Points", 10},
	{"apply-to", "unit-teuton-archer"}
)

DefineModifier("upgrade-faction-gumeninga-tribe",
	{"change-faction-to", "gumeninga-tribe"}
)

DefineModifier("upgrade-faction-gumeninga-tribe",
	{"Mana", 30},
	{"Points", 10},
	{"apply-to", "unit-teuton-priest"}
)

DefineModifier("upgrade-faction-jute-tribe",
	{"change-faction-to", "jute-tribe"}
)

DefineModifier("upgrade-faction-jute-tribe",
	{"Supply", 2},
	{"apply-to", "unit-teuton-dock"}
)

DefineModifier("upgrade-faction-bernicia",
	{"change-faction-to", "bernicia"}
)

DefineModifier("upgrade-faction-bernicia",
	{"BasicDamage", 1},
	{"Accuracy", 1},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-faction-deira",
	{"change-faction-to", "deira"}
)

DefineModifier("upgrade-faction-deira",
	{"BasicDamage", 1},
	{"Accuracy", 1},
	{"Points", 10},
	{"apply-to", "unit-teuton-archer"}
)

DefineModifier("upgrade-faction-east-anglia",
	{"change-faction-to", "east-anglia"}
)

DefineModifier("upgrade-faction-east-anglia",
	{"Accuracy", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-faction-englaland",
	{"change-faction-to", "englaland"}
)

DefineModifier("upgrade-faction-englaland",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-archer"}
)

DefineModifier("upgrade-faction-essex",
	{"change-faction-to", "essex"}
)

DefineModifier("upgrade-faction-essex",
	{"Accuracy", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-archer"}
)

DefineModifier("upgrade-faction-jutland",
	{"change-faction-to", "jutland"}
)

DefineModifier("upgrade-faction-jutland",
	{"Supply", 2},
	{"apply-to", "unit-teuton-dock"}
)

DefineModifier("upgrade-faction-kent",
	{"change-faction-to", "kent"}
)

DefineModifier("upgrade-faction-kent",
	{"TimeEfficiencyBonus", 10},
	{"apply-to", "unit-teuton-town-hall"}, {"apply-to", "unit-teuton-stronghold"},
	{"apply-to", "unit-teuton-farm"}, {"apply-to", "unit-teuton-barracks"},
	{"apply-to", "unit-teuton-lumber-mill"}, {"apply-to", "unit-teuton-smithy"},
--	{"apply-to", "unit-teuton-stables"},
	{"apply-to", "unit-teuton-temple"}, {"apply-to", "unit-teuton-university"},
	{"apply-to", "unit-teuton-watch-tower"}, {"apply-to", "unit-teuton-guard-tower"},
	{"apply-to", "unit-teuton-dock"}
)

DefineModifier("upgrade-faction-mercia",
	{"change-faction-to", "mercia"}
)

DefineModifier("upgrade-faction-mercia",
	{"Armor", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-faction-middle-anglia",
	{"change-faction-to", "middle-anglia"}
)

DefineModifier("upgrade-faction-middle-anglia",
	{"Armor", 3},
	{"BasicDamage", -1},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-faction-middlesex",
	{"change-faction-to", "middlesex"}
)

DefineModifier("upgrade-faction-middlesex",
	{"TradeCost", -5},
	{"apply-to", "unit-teuton-market"}
)

DefineModifier("upgrade-faction-northumbria",
	{"change-faction-to", "northumbria"}
)

DefineModifier("upgrade-faction-northumbria",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-faction-sussex",
	{"change-faction-to", "sussex"}
)

DefineModifier("upgrade-faction-sussex",
	{"HitPoints", 10},
	{"Points", 10},
	{"apply-to", "unit-teuton-archer"}
)

DefineModifier("upgrade-faction-wessex",
	{"change-faction-to", "wessex"}
)

DefineModifier("upgrade-faction-wessex",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-archer"}
)

DefineDependency("upgrade-faction-angle-tribe",
	{"upgrade-germanic-broad-sword", "upgrade-germanic-bronze-shield", "upgrade-germanic-barbed-arrow", "upgrade-germanic-wood-plow"}
)

DefinePredependency("upgrade-faction-avione-tribe",
	{"upgrade-faction-angle-tribe"}
)

DefinePredependency("upgrade-faction-charude-tribe",
	{"upgrade-faction-angle-tribe"}
)

DefinePredependency("upgrade-faction-jute-tribe",
	{"upgrade-faction-angle-tribe"}
)

DefinePredependency("upgrade-faction-northumbria",
	{"upgrade-faction-bernicia"},
	"or", {"upgrade-faction-deira"}
)

DefineDependency("upgrade-faction-northumbria",
	{"unit-teuton-temple"}
)

DefinePredependency("upgrade-faction-englaland",
	{"upgrade-faction-bernicia"},
	"or", {"upgrade-faction-deira"},
	"or", {"upgrade-faction-east-anglia"},
	"or", {"upgrade-faction-essex"},
	"or", {"upgrade-faction-kent"},
	"or", {"upgrade-faction-mercia"},
	"or", {"upgrade-faction-middle-anglia"},
	"or", {"upgrade-faction-middlesex"},
	"or", {"upgrade-faction-northumbria"},
	"or", {"upgrade-faction-sussex"},
	"or", {"upgrade-faction-wessex"}
)

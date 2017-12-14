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

DefineUpgrade("upgrade-faction-bastarnae-tribe", {
	Name = "Bastarnae Tribe",
	EffectsString = "+3 Damage and -1 Evasion for Swordsmen"
})

DefineUpgrade("upgrade-faction-burgundian-tribe", {
	Name = "Burgundian Tribe",
	EffectsString = "+10 HP for Swordsmen",
	RequirementsString = "Ironworking"
})

DefineUpgrade("upgrade-faction-gepidae-tribe", {
	Name = "Gepidae Tribe",
	EffectsString = "+1 Speed for Swordsmen"
})

DefineUpgrade("upgrade-faction-goth-tribe", {
	Name = "Goth Tribe",
	EffectsString = "+2 Damage for Swordsmen",
	RequirementsString = "Ironworking"
})

DefineUpgrade("upgrade-faction-herulian-tribe", {
	Name = "Herulian Tribe",
	EffectsString = "Disembarkment Bonus for Swordsmen and Spearmen"
})

DefineUpgrade("upgrade-faction-lugii-tribe", {
	Name = "Lugii Tribe",
	EffectsString = "+2 Evasion for Spearmen"
})

DefineUpgrade("upgrade-faction-ostrogoth-tribe", {
	Name = "Ostrogoth Tribe",
	EffectsString = "+2 Damage for Horse Riders"
})

DefineUpgrade("upgrade-faction-rugian-tribe", {
	Name = "Rugian Tribe",
	EffectsString = "+2 Accuracy for Swordsmen"
})

DefineUpgrade("upgrade-faction-silingae-tribe", {
	Name = "Silingae Tribe",
	EffectsString = "+2 Accuracy for Archers"
})

DefineUpgrade("upgrade-faction-turcilingian-tribe", {
	Name = "Turcilingian Tribe",
	EffectsString = "+2 Evasion for Archers"
})

DefineUpgrade("upgrade-faction-vandal-tribe", {
	Name = "Vandal Tribe",
	EffectsString = "+2 Damage for Archers"
})

DefineUpgrade("upgrade-faction-visigoth-tribe", {
	Name = "Visigoth Tribe",
	EffectsString = "+1 Speed for Horse Riders"
})

DefineUpgrade("upgrade-faction-burgundy", {
	Name = "Burgundy",
	EffectsString = "+10 HP for Horse Riders",
	RequirementsString = "Writing and Masonry"
})

DefineUpgrade("upgrade-faction-gothia", {
	Name = "Gothia",
	EffectsString = "+2 Damage for Horse Riders",
	RequirementsString = "Writing and Masonry"
})

DefineUpgrade("upgrade-faction-ostrogothia", {
	Name = "Ostrogothia",
	EffectsString = "+2 Damage for Horse Riders",
	RequirementsString = "Writing and Masonry"
})

DefineUpgrade("upgrade-faction-vandalia", {
	Name = "Vandalia",
	EffectsString = "+1 Speed for Cogs",
	RequirementsString = "Writing and Masonry"
})

DefineUpgrade("upgrade-faction-visigothia", {
	Name = "Visigothia",
	EffectsString = "+1 Speed for Horse Riders",
	RequirementsString = "Writing and Masonry"
})

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

DefineModifier("upgrade-faction-gepidae-tribe",
	{"Speed", 1},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-faction-goth-tribe",
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

DefineModifier("upgrade-faction-ostrogoth-tribe",
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

DefineModifier("upgrade-faction-visigoth-tribe",
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
	{"upgrade-ironworking"}
)

DefineDependency("upgrade-faction-goth-tribe",
	{"upgrade-ironworking"}
)

DefineDependency("upgrade-faction-burgundy",
	{"upgrade-teuton-writing", "upgrade-teuton-masonry"}
)

DefineDependency("upgrade-faction-gothia",
	{"upgrade-teuton-writing", "upgrade-teuton-masonry"}
)

DefineDependency("upgrade-faction-ostrogothia",
	{"upgrade-teuton-writing", "upgrade-teuton-masonry"}
)

DefineDependency("upgrade-faction-vandalia",
	{"upgrade-teuton-writing", "upgrade-teuton-masonry"}
)

DefineDependency("upgrade-faction-visigothia",
	{"upgrade-teuton-writing", "upgrade-teuton-masonry"}
)

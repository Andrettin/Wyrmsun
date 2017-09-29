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
--      (c) Copyright 2017 by Andrettin
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

DefineUpgrade("upgrade-faction-ampsivarii-tribe", {
	Name = "Ampsivarii Tribe",
	EffectsString = "+2 Damage for Kregars",
	RequirementsString = "Broad Sword, Bronze Shield, Barbed Arrow and Wood Plow"
})

DefineUpgrade("upgrade-faction-batavian-tribe", {
	Name = "Batavian Tribe",
	EffectsString = "+3 Damage, -1 Armor for Kregars",
	RequirementsString = "Broad Sword, Bronze Shield, Barbed Arrow and Wood Plow"
})

DefineUpgrade("upgrade-faction-chamavi-tribe", {
	Name = "Chamavi Tribe",
	EffectsString = "+2 Accuracy for Kregars",
	RequirementsString = "Broad Sword, Bronze Shield, Barbed Arrow and Wood Plow"
})

DefineUpgrade("upgrade-faction-chatti-tribe", {
	Name = "Chatti Tribe",
	EffectsString = "+2 Damage for Spearmen",
	RequirementsString = "Broad Sword, Bronze Shield, Barbed Arrow and Wood Plow"
})

DefineUpgrade("upgrade-faction-frank-tribe", {
	Name = "Frank Tribe",
	EffectsString = "+1 Damage and +1 Armor for Ritars",
	RequirementsString = "Broad Sword, Bronze Shield, Barbed Arrow and Wood Plow"
})

DefineUpgrade("upgrade-faction-sugambri-tribe", {
	Name = "Sugambri Tribe",
	EffectsString = "+2 Accuracy for Archers",
	RequirementsString = "Broad Sword, Bronze Shield, Barbed Arrow and Wood Plow"
})

DefineUpgrade("upgrade-faction-ubii-tribe", {
	Name = "Ubii Tribe",
	EffectsString = "+5% Copper Processing for Town Halls and Strongholds",
	RequirementsString = "Broad Sword, Bronze Shield, Barbed Arrow and Wood Plow"
})

DefineUpgrade("upgrade-faction-austrasia", {
	Name = "Austrasia",
	EffectsString = "+1 Damage and +1 Armor for Ritars",
	RequirementsString = "Writing and Masonry"
})

DefineUpgrade("upgrade-faction-burgundia", {
	Name = "Burgundia",
	EffectsString = "+10 HP for Ritars",
	RequirementsString = "Writing and Masonry"
})

DefineUpgrade("upgrade-faction-east-francia", {
	Name = "East Francia",
	EffectsString = "+2 Armor for Ritars",
	RequirementsString = "Writing and Masonry"
})

DefineUpgrade("upgrade-faction-francia", {
	Name = "Francia",
	EffectsString = "+2 Damage for Ritars",
	RequirementsString = "Writing, Masonry and no other Frankish faction exists"
})

DefineUpgrade("upgrade-faction-neustria", {
	Name = "Neustria",
	EffectsString = "+1 Accuracy and +1 Armor for Ritars",
	RequirementsString = "Writing and Masonry"
})

DefineUpgrade("upgrade-faction-salia", {
	Name = "Salia",
	EffectsString = "+2 Accuracy for Ritars",
	RequirementsString = "Writing and Masonry"
})

DefineModifier("upgrade-faction-ampsivarii-tribe",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-frank-swordsman"}, {"apply-to", "unit-frank-veteran-swordsman"}, {"apply-to", "unit-frank-heroic-swordsman"}
)

DefineModifier("upgrade-faction-batavian-tribe",
	{"BasicDamage", 3},
	{"Armor", -1},
	{"Points", 10},
	{"apply-to", "unit-frank-swordsman"}, {"apply-to", "unit-frank-veteran-swordsman"}, {"apply-to", "unit-frank-heroic-swordsman"}
)

DefineModifier("upgrade-faction-chamavi-tribe",
	{"Accuracy", 2},
	{"Points", 10},
	{"apply-to", "unit-frank-swordsman"}, {"apply-to", "unit-frank-veteran-swordsman"}, {"apply-to", "unit-frank-heroic-swordsman"}
)

DefineModifier("upgrade-faction-chatti-tribe",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-frank-spearman"}
)

DefineModifier("upgrade-faction-frank-tribe",
	{"BasicDamage", 1},
	{"Armor", 1},
	{"Points", 10},
	{"apply-to", "unit-frank-horseman"}, {"apply-to", "unit-frank-knight-lord"}
)

DefineModifier("upgrade-faction-sugambri-tribe",
	{"Accuracy", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-archer"}
)

DefineModifier("upgrade-faction-ubii-tribe",
	{"improve-production", "copper", 5}, -- the Ubii were in a central trading position, making them more advanced than other Germanic tribes
	{"apply-to", "unit-teuton-town-hall"}, {"apply-to", "unit-teuton-stronghold"}
)

DefineModifier("upgrade-faction-austrasia",
	{"BasicDamage", 1},
	{"Armor", 1},
	{"Points", 10},
	{"apply-to", "unit-frank-horseman"}, {"apply-to", "unit-frank-knight-lord"}
)

DefineModifier("upgrade-faction-burgundia",
	{"HitPoints", 10},
	{"Points", 10},
	{"apply-to", "unit-frank-horseman"}, {"apply-to", "unit-frank-knight-lord"}
)

DefineModifier("upgrade-faction-east-francia",
	{"Armor", 2},
	{"Points", 10},
	{"apply-to", "unit-frank-horseman"}, {"apply-to", "unit-frank-knight-lord"}
)

DefineModifier("upgrade-faction-francia",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-frank-horseman"}, {"apply-to", "unit-frank-knight-lord"}
)

DefineModifier("upgrade-faction-neustria",
	{"Accuracy", 1},
	{"Armor", 1},
	{"Points", 10},
	{"apply-to", "unit-frank-horseman"}, {"apply-to", "unit-frank-knight-lord"}
)

DefineModifier("upgrade-faction-salia",
	{"Accuracy", 2},
	{"Points", 10},
	{"apply-to", "unit-frank-horseman"}, {"apply-to", "unit-frank-knight-lord"}
)

DefineDependency("upgrade-faction-ampsivarii-tribe",
	{"upgrade-germanic-broad-sword", "upgrade-germanic-bronze-shield", "upgrade-germanic-barbed-arrow", "upgrade-germanic-wood-plow"}
)

DefineDependency("upgrade-faction-batavian-tribe",
	{"upgrade-germanic-broad-sword", "upgrade-germanic-bronze-shield", "upgrade-germanic-barbed-arrow", "upgrade-germanic-wood-plow"}
)

DefineDependency("upgrade-faction-chamavi-tribe",
	{"upgrade-germanic-broad-sword", "upgrade-germanic-bronze-shield", "upgrade-germanic-barbed-arrow", "upgrade-germanic-wood-plow"}
)

DefineDependency("upgrade-faction-chatti-tribe",
	{"upgrade-germanic-broad-sword", "upgrade-germanic-bronze-shield", "upgrade-germanic-barbed-arrow", "upgrade-germanic-wood-plow"}
)

DefineDependency("upgrade-faction-frank-tribe",
	{"upgrade-germanic-broad-sword", "upgrade-germanic-bronze-shield", "upgrade-germanic-barbed-arrow", "upgrade-germanic-wood-plow"}
)

DefineDependency("upgrade-faction-sugambri-tribe",
	{"upgrade-germanic-broad-sword", "upgrade-germanic-bronze-shield", "upgrade-germanic-barbed-arrow", "upgrade-germanic-wood-plow"}
)

DefineDependency("upgrade-faction-ubii-tribe",
	{"upgrade-germanic-broad-sword", "upgrade-germanic-bronze-shield", "upgrade-germanic-barbed-arrow", "upgrade-germanic-wood-plow"}
)

DefineDependency("upgrade-faction-francia",
	{"upgrade-teuton-writing", "upgrade-teuton-masonry"}
)

DefineDependency("upgrade-faction-austrasia",
	{"upgrade-teuton-writing", "upgrade-teuton-masonry"}
)

DefineDependency("upgrade-faction-burgundia",
	{"upgrade-teuton-writing", "upgrade-teuton-masonry"}
)

DefineDependency("upgrade-faction-east-francia",
	{"upgrade-teuton-writing", "upgrade-teuton-masonry"}
)

DefineDependency("upgrade-faction-neustria",
	{"upgrade-teuton-writing", "upgrade-teuton-masonry"}
)

DefineDependency("upgrade-faction-salia",
	{"upgrade-teuton-writing", "upgrade-teuton-masonry"}
)

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

DefineUpgrade("upgrade-angle-tribe-faction", {
	Name = "Angle Tribe Faction",
	EffectsString = "+2 Damage for Kregars"
})

DefineUpgrade("upgrade-bavarian-tribe-faction", {
	Name = "Bavarian Tribe Faction",
	EffectsString = "+1 Damage and +1 Armor for Kregars"
})

DefineUpgrade("upgrade-bernice-tribe-faction", {
	Name = "Bernice Tribe Faction",
	EffectsString = "Disembarkment Bonus for Kregars and Spearmen"
})

DefineUpgrade("upgrade-frank-tribe-faction", {
	Name = "Frank Tribe Faction",
	EffectsString = "+1 Damage and +1 Armor for Ritars"
})

DefineUpgrade("upgrade-frisian-tribe-faction", {
	Name = "Frisian Tribe Faction",
	EffectsString = "+5 HP and +1 Armor for Kregars"
})

DefineUpgrade("upgrade-gumeninga-tribe-faction", {
	Name = "Gumeninga Tribe Faction",
	EffectsString = "+30 Mana for Clerics"
})

DefineUpgrade("upgrade-lombard-tribe-faction", {
	Name = "Lombard Tribe Faction",
	EffectsString = "+2 Damage for Kregars"
})

DefineUpgrade("upgrade-saxon-tribe-faction", {
	Name = "Saxon Tribe Faction",
	EffectsString = "+1 HP and +1 Damage for Kregars"
})

DefineUpgrade("upgrade-ubii-tribe-faction", {
	Name = "Ubii Tribe Faction",
	GrandStrategyProductionEfficiencyModifier = {"gold", 5, "silver", 5, "copper", 5},
	EffectsString = "+5% Copper Processing for Rathauses and Burgs"
})

DefineUpgrade("upgrade-mecklenburg-faction", {
	Name = "Mecklenburg Faction",
	EffectsString = "+2 Armor for Kregars"
})

DefineModifier("upgrade-angle-tribe-faction",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-bavarian-tribe-faction",
	{"Armor", 1},
	{"BasicDamage", 1},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-bernice-tribe-faction",
	{"DisembarkmentBonus", 1},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"},
	{"apply-to", "unit-teuton-spearman"}
)

DefineModifier("upgrade-frank-tribe-faction",
	{"apply-to", "unit-teuton-swordsman"}, {"convert-to", "unit-frank-swordsman"}
)

DefineModifier("upgrade-frank-tribe-faction",
	{"apply-to", "unit-teuton-veteran-swordsman"}, {"convert-to", "unit-frank-veteran-swordsman"}
)

DefineModifier("upgrade-frank-tribe-faction",
	{"apply-to", "unit-teuton-heroic-swordsman"}, {"convert-to", "unit-frank-heroic-swordsman"}
)

DefineModifier("upgrade-frank-tribe-faction",
	{"apply-to", "unit-teuton-spearman"}, {"convert-to", "unit-frank-spearman"}
)

DefineModifier("upgrade-frank-tribe-faction",
	{"apply-to", "unit-teuton-ritter"}, {"convert-to", "unit-frank-horseman"}
)

DefineModifier("upgrade-frank-tribe-faction",
	{"apply-to", "unit-teuton-knight-lord"}, {"convert-to", "unit-frank-knight-lord"}
)

DefineModifier("upgrade-frisian-tribe-faction",
	{"Armor", 1},
	{"HitPoints", 5},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-gumeninga-tribe-faction",
	{"Mana", 30},
	{"Points", 10},
	{"apply-to", "unit-teuton-priest"}
)

DefineModifier("upgrade-lombard-tribe-faction",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-saxon-tribe-faction",
	{"BasicDamage", 1},
	{"HitPoints", 5},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-ubii-tribe-faction",
	{"improve-production", "copper", 5}, -- the Ubii were in a central trading position, making them more advanced than other Germanic tribes
	{"apply-to", "unit-teuton-town-hall"}, {"apply-to", "unit-teuton-stronghold"}
)

DefineModifier("upgrade-mecklenburg-faction",
	{"Armor", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"}
)

DefineDependency("upgrade-faction-galicia", -- although Galicia is a Suebi faction, this is here because it requires a Teuton upgrade
	{"upgrade-faction-suebi-tribe", "upgrade-teuton-writing"}, "or", {"upgrade-faction-semnone-tribe", "upgrade-teuton-writing"}, "or", {"upgrade-faction-marcomanni-tribe", "upgrade-teuton-writing"}, "or", {"upgrade-faction-quadi-tribe", "upgrade-teuton-writing"}, "or", {"upgrade-faction-buri-tribe", "upgrade-teuton-writing"}
)

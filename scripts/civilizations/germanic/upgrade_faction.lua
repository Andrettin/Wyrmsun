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
--      upgrade.ccl - Define the germanic dependencies and upgrades.
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

DefineUpgrade("upgrade-faction-asa-tribe", {
	Name = "Asa Tribe",
	EffectsString = "+5 HP and +1 Damage for Eralas"
})

DefineUpgrade("upgrade-faction-jarling-tribe", {
	Name = "Eraling Tribe",
	EffectsString = "+2 Damage for Eralas"
})

DefineUpgrade("upgrade-faction-karling-tribe", {
	Name = "Karling Tribe",
	EffectsString = "+1 Food Supply for Farms"
})

DefineUpgrade("upgrade-faction-skeldung-tribe", {
	Name = "Skeldung Tribe",
	EffectsString = "+1 Damage and +1 Armor for Eralas"
})

DefineUpgrade("upgrade-faction-thielung-tribe", {
	Name = "Thielung Tribe",
	EffectsString = "+1 Damage and +1 Accuracy for Eralas"
})

DefineUpgrade("upgrade-faction-thralling-tribe", {
	Name = "Thrahiling Tribe",
	EffectsString = "+5% Lumber Processing for Carpenter's Shops"
})

DefineUpgrade("upgrade-faction-yngling-tribe", {
	Name = "Yngling Tribe",
	EffectsString = "+2 Damage for Skutans"
})

DefineModifier("upgrade-faction-asa-tribe",
	{"BasicDamage", 1},
	{"HitPoints", 5},
	{"Points", 10},
	{"apply-to", "unit-germanic-warrior"},
	{"apply-to", "unit-germanic-veteran-warrior"},
	{"apply-to", "unit-germanic-chieftain"}
)

DefineModifier("upgrade-faction-jarling-tribe",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-germanic-warrior"},
	{"apply-to", "unit-germanic-veteran-warrior"},
	{"apply-to", "unit-germanic-chieftain"}
)

DefineModifier("upgrade-faction-karling-tribe",
	{"Supply", 1},
	{"apply-to", "unit-germanic-farm"}
)

DefineModifier("upgrade-faction-skeldung-tribe",
	{"BasicDamage", 1},
	{"Armor", 1},
	{"Points", 10},
	{"apply-to", "unit-germanic-warrior"},
	{"apply-to", "unit-germanic-veteran-warrior"},
	{"apply-to", "unit-germanic-chieftain"}
)

DefineModifier("upgrade-faction-thielung-tribe",
	{"BasicDamage", 1},
	{"Accuracy", 1},
	{"Points", 10},
	{"apply-to", "unit-germanic-warrior"},
	{"apply-to", "unit-germanic-veteran-warrior"},
	{"apply-to", "unit-germanic-chieftain"}
)

DefineModifier("upgrade-faction-thralling-tribe",
	{"improve-production", "lumber", 5},
	{"apply-to", "unit-germanic-carpenters-shop"}
)

DefineModifier("upgrade-faction-yngling-tribe",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-germanic-archer"}
)

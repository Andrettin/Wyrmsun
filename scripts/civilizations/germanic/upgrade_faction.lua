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

DefineUpgrade("upgrade-asa-tribe-faction", {
	Name = _("Asa Tribe Faction"),
	EffectsString = "+5 HP and +1 Damage for Eralas"
})

DefineUpgrade("upgrade-jarling-tribe-faction", {
	Name = _("Eraling Tribe Faction"),
	EffectsString = "+2 Damage for Eralas"
})

DefineUpgrade("upgrade-karling-tribe-faction", {
	Name = _("Karling Tribe Faction"),
	EffectsString = "+1 Food Supply for Farms"
})

DefineUpgrade("upgrade-skeldung-tribe-faction", {
	Name = _("Skeldung Tribe Faction"),
	EffectsString = "+1 Damage and +1 Armor for Eralas"
})

DefineUpgrade("upgrade-thielung-tribe-faction", {
	Name = _("Thielung Tribe Faction"),
	EffectsString = "+1 Damage and +1 Accuracy for Eralas"
})

DefineUpgrade("upgrade-thralling-tribe-faction", {
	Name = _("Thrahiling Tribe Faction"),
	GrandStrategyProductionEfficiencyModifier = {"lumber", 5},
	EffectsString = "+5% Lumber Processing for Carpenter's Shops"
})

DefineUpgrade("upgrade-yngling-tribe-faction", {
	Name = _("Yngling Tribe Faction"),
	EffectsString = "+2 Damage for Skutans"
})

DefineModifier("upgrade-asa-tribe-faction",
	{"BasicDamage", 1},
	{"HitPoints", 5},
	{"Points", 10},
	{"apply-to", "unit-germanic-warrior"},
	{"apply-to", "unit-germanic-veteran-warrior"},
	{"apply-to", "unit-germanic-chieftain"}
)

DefineModifier("upgrade-jarling-tribe-faction",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-germanic-warrior"},
	{"apply-to", "unit-germanic-veteran-warrior"},
	{"apply-to", "unit-germanic-chieftain"}
)

DefineModifier("upgrade-karling-tribe-faction",
	{"Supply", 1},
	{"apply-to", "unit-germanic-farm"}
)

DefineModifier("upgrade-skeldung-tribe-faction",
	{"BasicDamage", 1},
	{"Armor", 1},
	{"Points", 10},
	{"apply-to", "unit-germanic-warrior"},
	{"apply-to", "unit-germanic-veteran-warrior"},
	{"apply-to", "unit-germanic-chieftain"}
)

DefineModifier("upgrade-thielung-tribe-faction",
	{"BasicDamage", 1},
	{"Accuracy", 1},
	{"Points", 10},
	{"apply-to", "unit-germanic-warrior"},
	{"apply-to", "unit-germanic-veteran-warrior"},
	{"apply-to", "unit-germanic-chieftain"}
)

DefineModifier("upgrade-thralling-tribe-faction",
	{"improve-production", "lumber", 5},
	{"apply-to", "unit-germanic-carpenters-shop"}
)

DefineModifier("upgrade-yngling-tribe-faction",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-germanic-archer"}
)

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
--      (c) Copyright 2014-2016 by Andrettin
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

DefineUpgrade("upgrade-alamanni-tribe-faction", {
	Name = _("Alamanni Tribe Faction")
})

DefineUpgrade("upgrade-angle-tribe-faction", {
	Name = _("Angle Tribe Faction")
})

DefineUpgrade("upgrade-bavarian-tribe-faction", {
	Name = _("Bavarian Tribe Faction")
})

DefineUpgrade("upgrade-bernice-tribe-faction", {
	Name = _("Bernice Tribe Faction")
})

DefineUpgrade("upgrade-frank-tribe-faction", {
	Name = _("Frank Tribe Faction")
})

DefineUpgrade("upgrade-frisian-tribe-faction", {
	Name = _("Frisian Tribe Faction")
})

DefineUpgrade("upgrade-gumeninga-tribe-faction", {
	Name = _("Gumeninga Tribe Faction")
})

DefineUpgrade("upgrade-lombard-tribe-faction", {
	Name = _("Lombard Tribe Faction")
})

DefineUpgrade("upgrade-saxon-tribe-faction", {
	Name = _("Saxon Tribe Faction")
})

DefineUpgrade("upgrade-suebi-tribe-faction", {
	Name = _("Suebi Tribe Faction")
})

DefineUpgrade("upgrade-thuringian-tribe-faction", {
	Name = _("Thuringian Tribe Faction")
})

DefineUpgrade("upgrade-ubii-tribe-faction", {
	Name = _("Ubii Tribe Faction"),
	GrandStrategyProductionEfficiencyModifier = {"gold", 5, "silver", 5, "copper", 5}
})

DefineUpgrade("upgrade-mecklenburg-faction", {
	Name = _("Mecklenburg Faction")
})

DefineModifier("upgrade-alamanni-tribe-faction",
	{"HitPoints", 10},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"},
	{"apply-to", "unit-teuton-veteran-swordsman"}
)

DefineModifier("upgrade-angle-tribe-faction",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"},
	{"apply-to", "unit-teuton-veteran-swordsman"}
)

DefineModifier("upgrade-bavarian-tribe-faction",
	{"Armor", 1},
	{"BasicDamage", 1},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"},
	{"apply-to", "unit-teuton-veteran-swordsman"}
)

DefineModifier("upgrade-bernice-tribe-faction",
	{"DisembarkmentBonus", 1},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-spearman"},
	{"apply-to", "unit-teuton-veteran-swordsman"}
)

DefineModifier("upgrade-frank-tribe-faction",
	{"apply-to", "unit-teuton-swordsman"}, {"convert-to", "unit-frank-swordsman"}
)

DefineModifier("upgrade-frank-tribe-faction",
	{"apply-to", "unit-teuton-spearman"}, {"convert-to", "unit-frank-spearman"}
)

DefineModifier("upgrade-frank-tribe-faction",
	{"apply-to", "unit-teuton-ritter"}, {"convert-to", "unit-frank-horseman"}
)

DefineModifier("upgrade-frisian-tribe-faction",
	{"Armor", 1},
	{"HitPoints", 5},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"},
	{"apply-to", "unit-teuton-veteran-swordsman"}
)

DefineModifier("upgrade-gumeninga-tribe-faction",
	{"Mana", 30},
	{"Points", 10},
	{"apply-to", "unit-teuton-priest"}
)

DefineModifier("upgrade-lombard-tribe-faction",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"},
	{"apply-to", "unit-teuton-veteran-swordsman"}
)

DefineModifier("upgrade-saxon-tribe-faction",
	{"BasicDamage", 1},
	{"HitPoints", 5},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"},
	{"apply-to", "unit-teuton-veteran-swordsman"}
)

DefineModifier("upgrade-suebi-tribe-faction",
	{"apply-to", "unit-teuton-swordsman"}, {"convert-to", "unit-suebi-swordsman"}
)

DefineModifier("upgrade-thuringian-tribe-faction",
	{"BasicDamage", 1},
	{"Points", 10},
	{"apply-to", "unit-teuton-archer"}
)

DefineModifier("upgrade-ubii-tribe-faction",
	{"improve-production", "gold", 5}, -- the Ubii were in a central trading position, making them more advanced than other Germanic tribes
	{"apply-to", "unit-teuton-town-hall"}, {"apply-to", "unit-teuton-stronghold"}
)

DefineModifier("upgrade-mecklenburg-faction",
	{"Armor", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"},
	{"apply-to", "unit-teuton-veteran-swordsman"}
)

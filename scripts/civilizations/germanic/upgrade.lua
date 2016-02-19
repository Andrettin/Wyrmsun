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
--      (c) Copyright 2014-2015 by Andrettin
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

local upgrades = {
	{"upgrade-teuton-civilization", _("Teuton Civilization"), "icon-teuton-civilization", "",
		"",
		"",
		"",
		{   200,     0,     0,     0,     0,     0,     0,     0},
		{   200,     0,     0,     0,     0,     0,     0,     0},
		0},
}

for i = 1,table.getn(upgrades) do
	u = CUpgrade:New(upgrades[i][1])
	u.Name = upgrades[i][2]
	u.Icon = Icons[upgrades[i][3]]
	u.Class = upgrades[i][4]
	u.Civilization = "germanic"
	u.Description = upgrades[i][5]
	u.Quote = upgrades[i][6]
	u.Background = upgrades[i][7]
	for j = 1,table.getn(upgrades[i][8]) do
		u.Costs[j - 1] = upgrades[i][8][j]
	end
	for j = 1,table.getn(upgrades[i][9]) do
		u.GrandStrategyCosts[j - 1] = upgrades[i][9][j]
	end
	u.TechnologyPointCost = upgrades[i][10]
end

DefineUpgrade("upgrade-germanic-broad-sword", {
	Parent = "upgrade-broad-sword",
	Icon = "icon-germanic-broad-sword",
	Civilization = "germanic",
	Description = _("While the earlier short swords relied mostly on stabbing attacks, the enlarged width of the broad swords allowed germanic swordsmen to deal devastating slashing attacks.\n\nEffect: +2 Damage for Eralas."),
	Background = _("A number of bronze age swords have been found in Denmark. They were used by men not only in combat, but also as a symbol of social status."),
	TechnologyPointCost = 1
})

DefineUpgrade("upgrade-germanic-bronze-shield", {
	Parent = "upgrade-bronze-shield",
	Icon = "icon-germanic-bronze-shield",
	Civilization = "germanic",
	Description = _("Although earlier shields were made of simpler materials, the arrival of bronzeworking technologies allows Germanic craftsmen to produce bronze shields for the warriors, improving their personal protection.\n\nEffect: +2 Armor for Eralas."),
	Background = _("A number of bronze shields have been found preserved in Danish bogs, belonging to the archaeological period known as the Nordic Bronze Age (during which many scholars posit that the linguistic change from the Proto-Indo-European to Proto-Germanic happened). Those shields were actually probably not used in battle, but in rituals related to the sun and the seasons."),
	TechnologyPointCost = 1
})

DefineUpgrade("upgrade-germanic-barbed-arrow", {
	Name = _("Barbed Arrow"),
	Parent = "upgrade-ranged-projectile-1",
	Icon = "icon-germanic-barbed-arrow",
	Civilization = "germanic",
	Description = _("An improvement over the basic triangular-shaped arrow, the barbed arrow is much harder to be removed from the wound after puncturing an enemy.\n\nEffect: +2 Damage for Skutans."),
	TechnologyPointCost = 1,
	Arrows = true
})

DefineUpgrade("upgrade-germanic-wood-plow", {
	Parent = "upgrade-wood-plow",
	Civilization = "germanic",
	TechnologyPointCost = 1
})

DefineUpgrade("upgrade-asa-tribe-faction", {
	Name = _("Asa Tribe Faction")
})

DefineUpgrade("upgrade-skjoldung-tribe-faction", {
	Name = _("Skjoldung Tribe Faction")
})

DefineUpgrade("upgrade-volsung-tribe-faction", {
	Name = _("Volsung Tribe Faction")
})

DefineUpgrade("upgrade-yngling-tribe-faction", {
	Name = _("Yngling Tribe Faction")
})

DefineModifier("upgrade-germanic-broad-sword",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-germanic-warrior"}, {"apply-to", "unit-germanic-spearman"},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-suebi-swordsman"}, {"apply-to", "unit-frank-swordsman"},
--	{"apply-to", "unit-teuton-spearman"}, {"apply-to", "unit-frank-spearman"},
	{"apply-to", "unit-teuton-ritter"}, {"apply-to", "unit-frank-horseman"}
)

DefineModifier("upgrade-germanic-bronze-shield",
	{"Armor", 2},
	{"Points", 10},
	{"apply-to", "unit-germanic-warrior"}, {"apply-to", "unit-germanic-spearman"},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-suebi-swordsman"}, {"apply-to", "unit-frank-swordsman"},
	{"apply-to", "unit-teuton-spearman"}, {"apply-to", "unit-frank-spearman"},
	{"apply-to", "unit-teuton-ritter"}, {"apply-to", "unit-frank-horseman"}
)

DefineModifier("upgrade-germanic-barbed-arrow",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-germanic-archer"}, {"apply-to", "unit-teuton-archer"}
)

DefineModifier("upgrade-germanic-wood-plow",
	{"Supply", 1},
	{"apply-to", "unit-germanic-farm"}, {"apply-to", "unit-teuton-farm"}
)

DefineModifier("upgrade-teuton-civilization",
	{"change-civilization-to", "teuton"}
)

DefineModifier("upgrade-asa-tribe-faction",
	{"BasicDamage", 1},
	{"HitPoints", 5},
	{"Points", 10},
	{"apply-to", "unit-germanic-warrior"}
)

DefineModifier("upgrade-skjoldung-tribe-faction",
	{"BasicDamage", 1},
	{"Armor", 1},
	{"Points", 10},
	{"apply-to", "unit-germanic-warrior"}
)

DefineModifier("upgrade-volsung-tribe-faction",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-germanic-warrior"}
)

DefineModifier("upgrade-yngling-tribe-faction",
	{"BasicDamage", 1},
	{"Points", 10},
	{"apply-to", "unit-germanic-archer"}
)

DefineDependency("unit-germanic-archer",
	{"unit-germanic-carpenters-shop"}
)

DefineDependency("upgrade-teuton-civilization",
	{"upgrade-germanic-broad-sword", "upgrade-germanic-bronze-shield", "upgrade-germanic-barbed-arrow", "upgrade-germanic-wood-plow"}
)

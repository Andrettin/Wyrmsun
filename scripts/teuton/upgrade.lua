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
--      upgrade.ccl - Define the teuton dependencies and upgrades.
--
--      (c) Copyright 2014 by Andre Novellino Gouvêa
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
	{"upgrade-teuton-masonry", _("Masonry"), "icon-masonry", "masonry",
		_("Masonry is the craft of building structures from blocks, which are bound together with mortar.\n\nEffect: +20% Hit Points and +5 Armor for buildings, and allows Watch Towers upgrade to a Guard Tower."),
		"",
		"",
		{   250,  1500,  1750,     0,     0,     0,     0,     0},
		{   250,  1500,  1750,     0,     0,     0,     0,  1500},
		1},
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
	u.Ability = false
end

DefineModifier("upgrade-teuton-masonry",
	{"HitPoints", 20, "Percent"},
	{"Armor", 5},
	{"apply-to", "unit-germanic-town-hall"}, {"apply-to", "unit-germanic-farm"}, {"apply-to", "unit-germanic-barracks"},
	{"apply-to", "unit-germanic-carpenters-shop"}, {"apply-to", "unit-germanic-smithy"},
	{"apply-to", "unit-teuton-lumber-mill"},
	{"apply-to", "unit-teuton-watch-tower"}, {"apply-to", "unit-teuton-guard-tower"}
)

DefineModifier("upgrade-teuton-masonry",
	{"apply-to", "unit-germanic-carpenters-shop"}, {"convert-to", "unit-teuton-lumber-mill"}
)
  
DefineModifier("upgrade-teuton-masonry",
	{"allow-unit", "unit-germanic-carpenters-shop", 0}
)
  
DefineDependency("unit-teuton-lumber-mill",
	{"upgrade-teuton-masonry"}
)

DefineDependency("unit-teuton-guard-tower",
	{"unit-germanic-carpenters-shop", "upgrade-teuton-masonry"},
	"or",
	{"unit-teuton-lumber-mill", "upgrade-teuton-masonry"}
)

DefineDependency("unit-teuton-catapult",
	{"unit-germanic-smithy", "unit-germanic-carpenters-shop"},
	"or",
	{"unit-germanic-smithy", "unit-teuton-lumber-mill"}
)

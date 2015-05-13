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
--      upgrade.ccl - Define the goblin dependencies and upgrades.
--
--      (c) Copyright 2014 by Andrettin
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
	{"upgrade-goblin-catapult-projectile-1", _("Catapult Granite Projectile"), "icon-catapult-projectile-2", "siege-projectile-1",
		_("As siegecrafting techniques develop, catapult rocks made out of sandstone are replaced by ones made of granite, increasing the damage war machines can cause.\n\nEffect: +15 Damage for War Machines."),
		"",
		"",
		{   250,   900,     0,     0,     0,   300,     0,     0},
		{   250,   900,     0,     0,     0,   300,     0,  1500},
		1},
	{"upgrade-goblin-catapult-projectile-2", _("Catapult Metal Projectile"), "icon-catapult-projectile-3", "siege-projectile-2",
		_("Advances in metalworking make it possible to use metal balls as catapult projectiles, greatly magnifying the destructive power of war machines.\n\nEffect: +15 Damage for War Machines."),
		"",
		"",
		{   250,  4000,     0,     0,     0,     0,     0,     0},
		{   250,  4000,     0,     0,     0,     0,     0,  4000},
		1},
	{"upgrade-goblin-masonry", _("Masonry"), "icon-masonry", "masonry",
		_("Masonry is the craft of building structures from blocks, which are bound together with mortar.\n\nEffect: +20% Hit Points and +5 Armor for buildings."),
		"",
		"",
		{   250,   900,   500,     0,     0,   250,     0,     0},
		{   250,   900,   500,     0,     0,   250,     0,  2400},
		1},
}

for i = 1,table.getn(upgrades) do
	u = CUpgrade:New(upgrades[i][1])
	u.Name = upgrades[i][2]
	u.Icon = Icons[upgrades[i][3]]
	u.Class = upgrades[i][4]
	u.Civilization = "goblin"
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

DefineModifier("upgrade-goblin-catapult-projectile-1",
	{"BasicDamage", 15},
	{"apply-to", "unit-goblin-war-machine"}
)

DefineModifier("upgrade-goblin-catapult-projectile-2",
	{"BasicDamage", 15},
	{"apply-to", "unit-goblin-war-machine"}
)

DefineModifier("upgrade-goblin-masonry",
	{"HitPoints", 20, "Percent"},
	{"Armor", 5},
	{"apply-to", "unit-goblin-town-hall"}, {"apply-to", "unit-goblin-farm"}, {"apply-to", "unit-goblin-mess-hall"},
	{"apply-to", "unit-goblin-lumber-mill"}, {"apply-to", "unit-goblin-smithy"})
	
DefineDependency("unit-goblin-archer",
	{"unit-goblin-lumber-mill"})

DefineDependency("unit-goblin-war-machine",
	{"unit-goblin-smithy", "unit-goblin-lumber-mill"})

DefineDependency("unit-goblin-glider",
	{"unit-goblin-lumber-mill"})

DefineDependency("upgrade-goblin-catapult-projectile-1",
	{"unit-goblin-lumber-mill"}
)

DefineDependency("upgrade-goblin-catapult-projectile-2",
	{"upgrade-goblin-catapult-projectile-1", "unit-goblin-lumber-mill"}
)

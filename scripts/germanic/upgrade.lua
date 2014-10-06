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
	{"upgrade-germanic-broad-sword", "Broad Sword", "icon-germanic-broad-sword", "melee-weapon-1",
		"While the earlier short swords relied mostly on stabbing attacks, the enlarged width of the broad swords allowed germanic swordsmen to deal devastating slashing attacks.\n\nEffect: +2 Damage for Eralas.",
		"A number of bronze age swords have been found in Denmark. They were used by men not only in combat, but also as a symbol of social status.",
		{   200,   800,     0,     0,     0,     0,     0}},
	{"upgrade-germanic-bronze-shield", "Bronze Shield", "icon-germanic-bronze-shield", "bronze-shield",
		"Although earlier shields were made of simpler materials, the arrival of bronzeworking technologies allows Germanic craftsmen to produce bronze shields for the warriors, improving their personal protection.\n\nEffect: +2 Armor for Eralas.",
		"A number of bronze shields have been found preserved in Danish bogs, belonging to the archaeological period known as the Nordic Bronze Age (during which many scholars posit that the linguistic change from the Proto-Indo-European to Proto-Germanic happened). Those shields were actually probably not used in battle, but in rituals related to the sun and the seasons.",
		{   200,   300,   300,     0,     0,     0,     0}},
}

for i = 1,table.getn(upgrades) do
	u = CUpgrade:New(upgrades[i][1])
	u.Name = upgrades[i][2]
	u.Icon = Icons[upgrades[i][3]]
	u.Class = upgrades[i][4]
	u.Civilization = "germanic"
	u.Description = upgrades[i][5]
	u.Background = upgrades[i][6]
	for j = 1,table.getn(upgrades[i][7]) do
		u.Costs[j - 1] = upgrades[i][7][j]
	end
end

--DefineModifier("upgrade-germanic-broad-sword",
--	{"PiercingDamage", 2},
--	{"apply-to", "unit-germanic-erala"}
--)

--DefineModifier("upgrade-germanic-bronze-shield",
--	{"Armor", 2},
--	{"apply-to", "unit-germanic-erala"}
--)

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
--      (c) Copyright 2013-2016 by Andrettin
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

DefineUpgrade("upgrade-eikinskjaldi-clan-faction", {
	Name = _("Eikinskjaldi Clan Faction")
})

DefineUpgrade("upgrade-brising-clan-faction", {
	Name = _("Brising Clan Faction")
})

DefineUpgrade("upgrade-norlund-clan-faction", {
	Name = _("Norlund Clan Faction")
})

DefineUpgrade("upgrade-shinsplitter-clan-faction", {
	Name = _("Shinsplitter Clan Faction")
})

DefineUpgrade("upgrade-shorbear-clan-faction", {
	Name = _("Shorbear Clan Faction")
})

DefineUpgrade("upgrade-joruvellir-faction", {
	Name = _("Joruvellir Faction")
})

DefineUpgrade("upgrade-kal-kartha-faction", {
	Name = _("Kal Kartha Faction")
})

DefineUpgrade("upgrade-knalga-faction", {
	Name = _("Knalga Faction")
})

--[[
DefineUpgrade("upgrade-lyr-faction", {
	Name = _("Lyr Faction")
})
--]]

DefineModifier("upgrade-brising-clan-faction",
	{"BasicDamage", 1},
	{"Points", 5},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"}
)

DefineModifier("upgrade-brising-clan-faction",
	{"apply-to", "unit-dwarven-smithy"}, {"convert-to", "unit-brising-smithy"}
)

DefineModifier("upgrade-brising-clan-faction",
	{"apply-to", "unit-dwarven-miner"}, {"convert-to", "unit-brising-miner"}
)

DefineModifier("upgrade-brising-clan-faction",
	{"apply-to", "unit-dwarven-militia"}, {"convert-to", "unit-brising-militia"}
)

DefineModifier("upgrade-brising-clan-faction", -- dummy upgrade modifier to trigger the variation change
	{"apply-to", "unit-dwarven-town-hall"}, {"apply-to", "unit-dwarven-stronghold"}, {"apply-to", "unit-dwarven-transport-ship"}
)

DefineModifier("upgrade-eikinskjaldi-clan-faction",
	{"Armor", 2},
	{"Points", 10},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"}
)

DefineModifier("upgrade-norlund-clan-faction",
	{"BasicDamage", 1},
	{"Armor", 1},
	{"Points", 10},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"}
)

DefineModifier("upgrade-shinsplitter-clan-faction",
	{"Armor", -1},
	{"BasicDamage", 3},
	{"Points", 10},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"}
)

DefineModifier("upgrade-shorbear-clan-faction",
	{"BasicDamage", 15},
	{"Points", 10},
	{"apply-to", "unit-dwarven-ballista"}
)

DefineModifier("upgrade-joruvellir-faction",
	{"BasicDamage", 1},
	{"Points", 10},
	{"apply-to", "unit-dwarven-scout"}, {"apply-to", "unit-dwarven-pathfinder"}, {"apply-to", "unit-dwarven-explorer"}
)

DefineModifier("upgrade-kal-kartha-faction",
	{"BasicDamage", 3},
	{"HitPoints", -5},
	{"Points", 10},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"}
)

DefineModifier("upgrade-knalga-faction",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"}
)

--[[
DefineModifier("upgrade-lyr-faction",
	{"Armor", 5}, -- Thrymgjol bonus
	{"Points", 10},
	{"apply-to", "unit-dwarven-sentry-tower"}, {"apply-to", "unit-dwarven-guard-tower"}
)
--]]

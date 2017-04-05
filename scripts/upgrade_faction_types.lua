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

DefineUpgrade("upgrade-holy-order", {
	Name = "Holy Order"
})

DefineUpgrade("upgrade-mercenary-company", {
	Name = "Mercenary Company"
})

DefineUpgrade("upgrade-trading-company", {
	Name = "Trading Company"
})

DefineModifier("upgrade-holy-order", -- holy orders' temples produce food, to allow them to train units despite not having farms
	{"Supply", 4},
	{"apply-to", "unit-germanic-temple"}, {"apply-to", "unit-teuton-temple"},
	{"apply-to", "unit-dwarven-temple"},
	{"apply-to", "unit-goblin-temple"}
)

DefineModifier("upgrade-holy-order", -- holy orders' temples "regenerate", since they aren't supposed to have workers to repair them
	{"HitPoints", 1, "Increase"},
	{"apply-to", "unit-germanic-temple"}, {"apply-to", "unit-teuton-temple"},
	{"apply-to", "unit-dwarven-temple"},
	{"apply-to", "unit-goblin-temple"}
)

DefineModifier("upgrade-holy-order", -- holy orders' temples have a unit stock for priests
	{"unit-stock", "unit-germanic-priest", 2},
	{"apply-to", "unit-germanic-temple"}
)

DefineModifier("upgrade-holy-order", -- holy orders' temples have a unit stock for priests
	{"unit-stock", "unit-teuton-priest", 2},
	{"apply-to", "unit-teuton-temple"}
)

DefineModifier("upgrade-holy-order", -- holy orders' temples have a unit stock for priests
	{"unit-stock", "unit-dwarven-witness", 2},
	{"apply-to", "unit-dwarven-temple"}
)

DefineModifier("upgrade-holy-order", -- holy orders' temples have a unit stock for priests
	{"unit-stock", "unit-goblin-shaman", 2},
	{"apply-to", "unit-goblin-temple"}
)

DefineModifier("upgrade-mercenary-company", -- mercenary companies' mercenary camps produce food, to allow them to train units despite not having farms
	{"Supply", 8},
	{"apply-to", "unit-mercenary-camp"}
)

DefineModifier("upgrade-mercenary-company", -- mercenary companies' mercenary camps "regenerate", since they aren't supposed to have workers to repair them
	{"HitPoints", 1, "Increase"},
	{"apply-to", "unit-mercenary-camp"}
)

DefineModifier("upgrade-trading-company", -- trading companies' docks produce food, to allow them to build ships despite not having farms
	{"Supply", 8},
	{"apply-to", "unit-germanic-market"}, {"apply-to", "unit-teuton-market"},
	{"apply-to", "unit-dwarven-market"},
	{"apply-to", "unit-goblin-market"},
	{"apply-to", "unit-germanic-dock"}, {"apply-to", "unit-teuton-dock"},
	{"apply-to", "unit-dwarven-dock"},
	{"apply-to", "unit-goblin-dock"}
)

DefineModifier("upgrade-trading-company", -- trading companies' caravans, ships and docks "regenerate", since they aren't supposed to have workers to repair them
	{"HitPoints", 1, "Increase"},
	{"apply-to", "unit-caravan"},
	{"apply-to", "unit-gnomish-caravan"},
	{"apply-to", "unit-germanic-transport-ship"}, {"apply-to", "unit-teuton-kogge"},
	{"apply-to", "unit-dwarven-transport-ship"},
	{"apply-to", "unit-goblin-transport-ship"},
	{"apply-to", "unit-germanic-market"}, {"apply-to", "unit-teuton-market"},
	{"apply-to", "unit-dwarven-market"},
	{"apply-to", "unit-goblin-market"},
	{"apply-to", "unit-germanic-dock"}, {"apply-to", "unit-teuton-dock"},
	{"apply-to", "unit-dwarven-dock"},
	{"apply-to", "unit-goblin-dock"}
)

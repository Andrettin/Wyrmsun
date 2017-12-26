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

DefineUnitType("unit-norse-town-hall", {
	Name = "Chieftain's Hall",
	Parent = "unit-template-town-hall",
	Civilization = "norse",
	Description = "Built by mighty jarls, these halls serve as the center of Norse settlements.",
	Image = {"file", "norse/buildings/town_hall.png", "size", {128, 128}},
	Shadow = {"file", "norse/buildings/town_hall_shadow.png", "size", {128, 128}},
	Icon = "icon-norse-town-hall",
	AiDrops = {"unit-boots"},
	DropSpells = {"spell-norse-allegiance"},
	Variations = {
		{
			"variation-id", "town-hall",
			"upgrade-forbidden", "upgrade-teuton-masonry"
		},
		{
			"variation-id", "town-hall",
			"file", "teuton/buildings/town_hall.png",
			"shadow-file", "teuton/buildings/town_hall_shadow.png",
			"icon", "icon-teuton-town-hall",
			"type-name", "Town Hall",
			"upgrade-required", "upgrade-teuton-masonry"
		}
	},
	Sounds = {
--		"help", "basic-teuton-voices-help-town"
	}
} )

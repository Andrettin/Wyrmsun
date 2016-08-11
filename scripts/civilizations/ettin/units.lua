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
--      (c) Copyright 2016 by Andrettin
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

--=============================================================================
--	Define unit-types.
--
--	NOTE: Save can generate this table.
--

DefineUnitType("unit-ettin", {
	Name = _("Ettin"),
	Parent = "unit-template-heroic-infantry",
	Civilization = "ettin",
	Description = _("The massive ettins lord over Jotunheim, striking terror into the hearts of smaller creatures such as orcs and ogres."),
	Image = {"file", "ettin/units/ettin.png", "size", {144, 144}},
	Animations = "animations-dwarven-axefighter", Icon = "icon-ettin",
	TileSize = {2, 2}, BoxSize = {63, 63},
	Costs = {"time", 120, "gold", 1200},
	DefaultEquipment = {
		{"boots", "unit-boots"}
	},
	Demand = 3,
--	Corpse = "unit-dwarven-dead-body",
	BluntDamage = true,
	ButtonKey = "e",
	ButtonHint = _("Hire ~!Ettin"),
	AiDrops = {"unit-boots", "unit-cheese", "unit-potion-of-healing"},
	Sounds = {
--		"selected", "basic-dwarf-voices-selected-group",
--		"acknowledge", "basic-dwarf-voices-acknowledge",
--		"attack", "basic-dwarf-voices-attack",
--		"ready", "dwarven-axefighter-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "basic-orc-voices-dead",
		"hit", "fist-attack",
		"miss", "attack-miss"
	}
} )

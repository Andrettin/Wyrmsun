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
--      (c) Copyright 2016-2017 by Andrettin
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

DefineUpgrade("upgrade-elixir-fafnirs-heart", {
	Name = "Fafnir's Heart",
	MagicLevel = 5,
	UniqueOnly = true
})

DefineUpgrade("upgrade-elixir-of-dexterity", {
	Name = "Elixir of Dexterity",
	MagicLevel = 5
})

DefineUpgrade("upgrade-elixir-of-intelligence", {
	Name = "Elixir of Intelligence",
	MagicLevel = 5
})

DefineUpgrade("upgrade-elixir-of-strength", {
	Name = "Elixir of Strength",
	MagicLevel = 5
})

DefineUpgrade("upgrade-elixir-of-vitality", {
	Name = "Elixir of Vitality",
	MagicLevel = 5
})

DefineModifier("upgrade-elixir-fafnirs-heart",
	{"BasicDamage", 1}
)

DefineModifier("upgrade-elixir-of-dexterity",
	{"Accuracy", 1}
)

DefineModifier("upgrade-elixir-of-intelligence",
	{"Mana", 10}
)

DefineModifier("upgrade-elixir-of-strength",
	{"BasicDamage", 1}
)

DefineModifier("upgrade-elixir-of-vitality",
	{"HitPoints", 5}
)

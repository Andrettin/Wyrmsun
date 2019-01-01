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
--      (c) Copyright 2016-2019 by Andrettin
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

DefineUpgrade("upgrade-work-the-scepter-of-fire", {
	Name = "The Scepter of Fire", -- from Wesnoth
	Work = "scroll",
	Quote = "\"The land of Untersberg's banner bold\nComes not from its own land;\nIt comes from Dwarfdom, grim and old\nMade by a runesmith's hand.\""
})

DefineUpgrade("upgrade-work-thursagans-book", { -- From Battle for Wesnoth: The Hammer of Thursagan
	Name = "Thursagan's Book",
	Work = "book",
	UniqueOnly = true
})

DefineModifier("upgrade-work-the-scepter-of-fire",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-thursagans-book",
	{"KnowledgeMagic", 5},
	{"FireResistance", 5}
)

DefineDependency("upgrade-work-the-scepter-of-fire",
	{"upgrade-dwarven-civilization", "unit-dwarven-smithy"}, "or", {"upgrade-dwarven-civilization", "unit-brising-smithy"}
)

DefineDependency("upgrade-work-thursagans-book",
	{"upgrade-dwarven-civilization", "unit-dwarven-smithy"}, "or", {"upgrade-dwarven-civilization", "unit-brising-smithy"}
)

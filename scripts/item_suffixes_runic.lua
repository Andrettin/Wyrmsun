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
--      (c) Copyright 2015 by Andrettin
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

DefineUpgrade("upgrade-item-suffix-of-aedi", {
	Name = _("of Aedi"), -- "Aedi" (untransliterated: "æði") is a Norse rune meaning "frenzy"; Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 146.
	ItemSuffix = {"arrows", true, "axe", true, "dagger", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true}
})

DefineUpgrade("upgrade-item-suffix-of-ergi", {
	Name = _("of Ergi"), -- "Ergi" is a Norse rune meaning "lust"; Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 146.
	ItemSuffix = {"amulet", true, "ring", true}
})

DefineUpgrade("upgrade-item-suffix-of-os", {
	Name = _("of Os"), -- "Os" is an Anglo-Saxon rune meaning "mouth"; Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 63.
	ItemSuffix = {"armor", true, "shield", true, "helmet", true, "amulet", true, "ring", true}
})

DefineUpgrade("upgrade-item-suffix-of-othola", {
	Name = _("of Othola"), -- "Othola" (untransliterated: "óþola") is a Norse rune meaning "restlessness"; Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 146.
	ItemSuffix = {"arrows", true, "axe", true, "dagger", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true}
})

DefineUpgrade("upgrade-item-suffix-of-thurs", {
	Name = _("of Thurs"), -- "Thurs" is a Norse rune meaning "giant"; Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 146.
	ItemSuffix = {"armor", true, "shield", true, "helmet", true, "amulet", true, "ring", true}
})

DefineModifier("upgrade-item-suffix-of-aedi",
	{"BasicDamage", 2},
	{"Evasion", -1}
)

DefineModifier("upgrade-item-suffix-of-ergi",
	{"Backstab", 50}
)

DefineModifier("upgrade-item-suffix-of-os",
	{"ThornsDamage", 1}
)

DefineModifier("upgrade-item-suffix-of-othola",
	{"BasicDamage", 2},
	{"Accuracy", -1}
)

DefineModifier("upgrade-item-suffix-of-thurs",
	{"BasicDamage", 1},
	{"HitPointBonus", 5}
)

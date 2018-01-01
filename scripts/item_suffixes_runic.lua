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
--      (c) Copyright 2015-2018 by Andrettin
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
	Name = "of Aedi", -- "Aedi" (untransliterated: "æði") is a Norse rune meaning "frenzy"; Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 146.
	MagicSuffix = true,
	RunicAffix = true,
	ItemSuffix = {"arrows", "axe", "dagger", "gun", "javelin", "mace", "spear", "sword", "throwing-axe", "thrusting-sword", "horn"},
	MagicLevel = 1
})

DefineUpgrade("upgrade-item-suffix-of-ergi", {
	Name = "of Ergi", -- "Ergi" is a Norse rune meaning "lust"; Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 146.
	MagicSuffix = true,
	RunicAffix = true,
	ItemSuffix = {"horn", "amulet", "ring"},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-suffix-of-os", {
	Name = "of Os", -- "Os" is an Anglo-Saxon rune meaning "mouth"; Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 63.
	MagicSuffix = true,
	RunicAffix = true,
	ItemSuffix = {"armor", "cloak", "shield", "horn", "helmet", "amulet", "ring"},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-suffix-of-othola", {
	Name = "of Othola", -- "Othola" (untransliterated: "óþola") is a Norse rune meaning "restlessness"; Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 146.
	MagicSuffix = true,
	RunicAffix = true,
	ItemSuffix = {"arrows", "axe", "dagger", "gun", "javelin", "mace", "spear", "sword", "throwing-axe", "thrusting-sword", "horn"},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-suffix-of-sigel", {
	Name = "of Sigel", -- Anglo-Saxon rune meaning "sun", but is also in a riddle indicated to mean "shield"; Source: Paul Beekman Taylor, "Searoniðas: Old Norse Magic and Old English Verse", 1983, p. 119.
	MagicSuffix = true,
	RunicAffix = true,
	ItemSuffix = {"armor", "cloak", "shield", "horn", "helmet", "amulet", "ring"},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-suffix-of-thurs", {
	Name = "of Thurs", -- "Thurs" is a Norse rune meaning "giant"; Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 146.
	MagicSuffix = true,
	RunicAffix = true,
	ItemSuffix = {"armor", "cloak", "shield", "horn", "helmet", "amulet", "ring"},
	MagicLevel = 2
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

DefineModifier("upgrade-item-suffix-of-sigel",
	{"FireResistance", 30}
)

DefineModifier("upgrade-item-suffix-of-thurs",
	{"BasicDamage", 1},
	{"HitPointBonus", 5}
)

DefineDependency("upgrade-item-suffix-of-aedi",
	{"upgrade-deity-odin"}, "or", {"upgrade-deity-thor"}
)

DefineDependency("upgrade-item-suffix-of-ergi",
	{"upgrade-deity-odin"}, "or", {"upgrade-deity-thor"}
)

DefineDependency("upgrade-item-suffix-of-os",
	{"upgrade-deity-odin"}, "or", {"upgrade-deity-thor"}
)

DefineDependency("upgrade-item-suffix-of-othola",
	{"upgrade-deity-odin"}, "or", {"upgrade-deity-thor"}
)

DefineDependency("upgrade-item-suffix-of-sigel",
	{"upgrade-deity-odin"}, "or", {"upgrade-deity-thor"}
)

DefineDependency("upgrade-item-suffix-of-thurs",
	{"upgrade-deity-odin"}, "or", {"upgrade-deity-thor"}
)

local runic_suffixes = GetRunicSuffixes()
for i = 1, table.getn(runic_suffixes) do
	table.insert(Units, runic_suffixes[i])
end

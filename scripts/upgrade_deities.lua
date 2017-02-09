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
--      (c) Copyright 2001-2017 by Lutz Sammer, Jimmy Salmon and Andrettin
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

-- Deity Domain Upgrades

-- The Five Classical Elements

DefineUpgrade("upgrade-deity-domain-air", {
	Name = "Air"
})

DefineUpgrade("upgrade-deity-domain-earth", {
	Name = "Earth"
})

DefineUpgrade("upgrade-deity-domain-fire", {
	Name = "Fire"
})

DefineUpgrade("upgrade-deity-domain-water", {
	Name = "Water"
})

DefineUpgrade("upgrade-deity-domain-aether", {
	Name = "Aether"
})

-- Chinese Elements (which aren't present in the classical ones)

DefineUpgrade("upgrade-deity-domain-metal", {
	Name = "Metal"
})

DefineUpgrade("upgrade-deity-domain-wood", {
	Name = "Wood"
})

-- Other Elements

DefineUpgrade("upgrade-deity-domain-cold", {
	Name = "Cold"
})

DefineUpgrade("upgrade-deity-domain-lightning", {
	Name = "Lightning"
})

-- Chaos and Order

DefineUpgrade("upgrade-deity-domain-chaos", {
	Name = "Chaos"
})

DefineUpgrade("upgrade-deity-domain-order", {
	Name = "Order"
})

-- Life and Death

DefineUpgrade("upgrade-deity-domain-death", {
	Name = "Death"
})

DefineUpgrade("upgrade-deity-domain-life", {
	Name = "Life"
})

-- Darkness and Light (Yin and Yang)

DefineUpgrade("upgrade-deity-domain-darkness", {
	Name = "Darkness"
})

DefineUpgrade("upgrade-deity-domain-light", {
	Name = "Light"
})

-- Sun and Moon

DefineUpgrade("upgrade-deity-domain-sun", {
	Name = "Sun"
})

DefineUpgrade("upgrade-deity-domain-moon", {
	Name = "Moon"
})

-- Four Cardinal Virtues

DefineUpgrade("upgrade-deity-domain-courage", {
	Name = "Courage"
})

DefineUpgrade("upgrade-deity-domain-justice", {
	Name = "Justice"
})

DefineUpgrade("upgrade-deity-domain-temperance", {
	Name = "Temperance"
})

DefineUpgrade("upgrade-deity-domain-wisdom", {
	Name = "Wisdom"
})

-- Three Theological Virtues

DefineUpgrade("upgrade-deity-domain-charity", {
	Name = "Charity"
})

DefineUpgrade("upgrade-deity-domain-faith", {
	Name = "Faith"
})

DefineUpgrade("upgrade-deity-domain-hope", {
	Name = "Hope"
})

-- Other Virtues

DefineUpgrade("upgrade-deity-domain-love", {
	Name = "Love"
})

-- Seven Sins

DefineUpgrade("upgrade-deity-domain-envy", {
	Name = "Envy"
})

DefineUpgrade("upgrade-deity-domain-gluttony", {
	Name = "Gluttony"
})

DefineUpgrade("upgrade-deity-domain-greed", {
	Name = "Greed"
})

DefineUpgrade("upgrade-deity-domain-lust", {
	Name = "Lust"
})

DefineUpgrade("upgrade-deity-domain-pride", {
	Name = "Pride"
})

DefineUpgrade("upgrade-deity-domain-sloth", {
	Name = "Sloth"
})

DefineUpgrade("upgrade-deity-domain-wrath", {
	Name = "Wrath"
})

-- Skills

DefineUpgrade("upgrade-deity-domain-archery", {
	Name = "Archery"
})

DefineUpgrade("upgrade-deity-domain-metalworking", {
	Name = "Metalworking"
})

DefineUpgrade("upgrade-deity-domain-poetry", {
	Name = "Poetry"
})

DefineUpgrade("upgrade-deity-domain-warfare", {
	Name = "Warfare"
})

-- Deity Upgrades

-- Aesir

DefineUpgrade("upgrade-deity-odin", {
	Name = "Odin",
	Icon = "icon-odin",
	Costs = {"time", 200, "copper", 1000}
})

DefineUpgrade("upgrade-deity-thor", {
	Name = "Thor",
	Icon = "icon-thor",
	Costs = {"time", 200, "copper", 1000}
})

-- Goblin Deities

DefineUpgrade("upgrade-deity-gathaarl", {
	Name = "Gathaarl",
	Costs = {"time", 200, "copper", 1000}
})

DefineDependency("upgrade-deity-odin",
	{"upgrade-deity-thor", 0}
)

DefineDependency("upgrade-deity-thor",
	{"upgrade-deity-odin", 0}
)

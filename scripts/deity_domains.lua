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
--      (c) Copyright 2016-2018 by Andrettin
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

-- The Five Classical Elements

DefineDeityDomain("air", {
	Name = "Air",
	Upgrade = "upgrade-deity-domain-air"
})

DefineDeityDomain("earth", {
	Name = "Earth",
	Upgrade = "upgrade-deity-domain-earth"
})

DefineDeityDomain("fire", {
	Name = "Fire",
	Upgrade = "upgrade-deity-domain-fire"
})

DefineDeityDomain("water", {
	Name = "Water",
	Upgrade = "upgrade-deity-domain-water"
})

DefineDeityDomain("aether", {
	Name = "Aether",
	Upgrade = "upgrade-deity-domain-aether"
})

-- Chinese Elements (which aren't present in the classical ones)

DefineDeityDomain("metal", {
	Name = "Metal",
	Upgrade = "upgrade-deity-domain-metal"
})

DefineDeityDomain("wood", {
	Name = "Wood",
	Upgrade = "upgrade-deity-domain-wood"
})

-- Other Elements

DefineDeityDomain("ice", {
	Name = "Ice",
	Upgrade = "upgrade-deity-domain-ice"
})

DefineDeityDomain("lightning", {
	Name = "Lightning",
	Abilities = {"upgrade-shocking-grasp"},
	Upgrade = "upgrade-deity-domain-lightning"
})

-- Chaos and Order

DefineDeityDomain("chaos", {
	Name = "Chaos",
	Abilities = {"upgrade-terror"},
	Upgrade = "upgrade-deity-domain-chaos"
})

DefineDeityDomain("order", {
	Name = "Order",
	Upgrade = "upgrade-deity-domain-order"
})

-- Life and Death

DefineDeityDomain("death", {
	Name = "Death",
	Abilities = {"upgrade-wither"},
	Upgrade = "upgrade-deity-domain-death"
})

DefineDeityDomain("life", {
	Name = "Life",
	Abilities = {"upgrade-healing"},
	Upgrade = "upgrade-deity-domain-life"
})

-- Darkness and Light (Yin and Yang)

DefineDeityDomain("darkness", {
	Name = "Darkness",
	Abilities = {"upgrade-terror"},
	Upgrade = "upgrade-deity-domain-darkness"
})

DefineDeityDomain("light", {
	Name = "Light",
	Upgrade = "upgrade-deity-domain-light"
})

-- Sun and Moon

DefineDeityDomain("sun", {
	Name = "Sun",
	Upgrade = "upgrade-deity-domain-sun"
})

DefineDeityDomain("moon", {
	Name = "Moon",
	Upgrade = "upgrade-deity-domain-moon"
})

-- Four Cardinal Virtues

DefineDeityDomain("courage", {
	Name = "Courage",
	Abilities = {"upgrade-inspire"},
	Upgrade = "upgrade-deity-domain-courage"
})

DefineDeityDomain("justice", {
	Name = "Justice",
	Abilities = {"upgrade-inspire"},
	Upgrade = "upgrade-deity-domain-justice"
})

DefineDeityDomain("temperance", {
	Name = "Temperance",
	Upgrade = "upgrade-deity-domain-temperance"
})

DefineDeityDomain("wisdom", {
	Name = "Wisdom",
	Abilities = {"upgrade-far-sight"},
	Upgrade = "upgrade-deity-domain-wisdom"
})

-- Three Theological Virtues

DefineDeityDomain("charity", {
	Name = "Charity",
	Abilities = {"upgrade-healing"},
	Upgrade = "upgrade-deity-domain-charity"
})

DefineDeityDomain("faith", {
	Name = "Faith",
	Abilities = {"upgrade-blessing"},
	Upgrade = "upgrade-deity-domain-faith"
})

DefineDeityDomain("hope", {
	Name = "Hope",
	Upgrade = "upgrade-deity-domain-hope"
})

-- Other Virtues

DefineDeityDomain("love", {
	Name = "Love",
	Upgrade = "upgrade-deity-domain-love"
})

-- Seven Sins

DefineDeityDomain("envy", {
	Name = "Envy",
	Upgrade = "upgrade-deity-domain-envy"
})

DefineDeityDomain("gluttony", {
	Name = "Gluttony",
	Upgrade = "upgrade-deity-domain-gluttony"
})

DefineDeityDomain("greed", {
	Name = "Greed",
	Upgrade = "upgrade-deity-domain-greed"
})

DefineDeityDomain("lust", {
	Name = "Lust",
	Upgrade = "upgrade-deity-domain-lust"
})

DefineDeityDomain("pride", {
	Name = "Pride",
	Upgrade = "upgrade-deity-domain-pride"
})

DefineDeityDomain("sloth", {
	Name = "Sloth",
	Upgrade = "upgrade-deity-domain-sloth"
})

DefineDeityDomain("wrath", {
	Name = "Wrath",
	Abilities = {"upgrade-terror"},
	Upgrade = "upgrade-deity-domain-wrath"
})

-- Other Sins

DefineDeityDomain("fear", {
	Name = "Fear",
	Abilities = {"upgrade-terror"},
	Upgrade = "upgrade-deity-domain-fear"
})

-- Skills

DefineDeityDomain("archery", {
	Name = "Archery",
	Abilities = {"upgrade-precision"},
	Upgrade = "upgrade-deity-domain-archery"
})

DefineDeityDomain("magic", {
	Name = "Magic",
	Upgrade = "upgrade-deity-domain-magic"
})

DefineDeityDomain("metalworking", {
	Name = "Metalworking",
	Upgrade = "upgrade-deity-domain-metalworking"
})

DefineDeityDomain("poetry", {
	Name = "Poetry",
	Upgrade = "upgrade-deity-domain-poetry"
})

DefineDeityDomain("warfare", {
	Name = "Warfare",
	Abilities = {"upgrade-inspire"},
	Upgrade = "upgrade-deity-domain-warfare"
})

DefineDeityDomain("watch", {
	Name = "Watch",
	Abilities = {"upgrade-precision"},
	Upgrade = "upgrade-deity-domain-watch"
})

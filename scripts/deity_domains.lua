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

-- The Five Classical Elements

DefineDeityDomain("air", {
	Name = "Air"
})

DefineDeityDomain("earth", {
	Name = "Earth"
})

DefineDeityDomain("fire", {
	Name = "Fire"
})

DefineDeityDomain("water", {
	Name = "Water"
})

DefineDeityDomain("aether", {
	Name = "Aether"
})

-- Chinese Elements (which aren't present in the classical ones)

DefineDeityDomain("metal", {
	Name = "Metal"
})

DefineDeityDomain("wood", {
	Name = "Wood"
})

-- Chaos and Order

DefineDeityDomain("chaos", {
	Name = "Chaos",
	Abilities = {"upgrade-terror"}
})

DefineDeityDomain("order", {
	Name = "Order"
})

-- Life and Death

DefineDeityDomain("death", {
	Name = "Death",
	Abilities = {"upgrade-terror"}
})

DefineDeityDomain("life", {
	Name = "Life",
	Abilities = {"upgrade-healing"}
})

-- Darkness and Light (Yin and Yang)

DefineDeityDomain("darkness", {
	Name = "Darkness",
	Abilities = {"upgrade-terror"}
})

DefineDeityDomain("light", {
	Name = "Light"
})

-- Four Cardinal Virtues

DefineDeityDomain("courage", {
	Name = "Courage",
	Abilities = {"upgrade-inspire"}
})

DefineDeityDomain("justice", {
	Name = "Justice",
	Abilities = {"upgrade-inspire"}
})

DefineDeityDomain("temperance", {
	Name = "Temperance"
})

DefineDeityDomain("wisdom", {
	Name = "Wisdom",
	Abilities = {"upgrade-inspire"}
})

-- Three Theological Virtues

DefineDeityDomain("charity", {
	Name = "Charity"
})

DefineDeityDomain("faith", {
	Name = "Faith"
})

DefineDeityDomain("hope", {
	Name = "Hope"
})

-- Seven Sins

DefineDeityDomain("envy", {
	Name = "Envy"
})

DefineDeityDomain("gluttony", {
	Name = "Gluttony"
})

DefineDeityDomain("greed", {
	Name = "Greed"
})

DefineDeityDomain("lust", {
	Name = "Lust"
})

DefineDeityDomain("pride", {
	Name = "Pride"
})

DefineDeityDomain("sloth", {
	Name = "Sloth"
})

DefineDeityDomain("wrath", {
	Name = "Wrath",
	Abilities = {"upgrade-terror"}
})

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
--      (c) Copyright 2015-2017 by Andrettin
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

Load("scripts/deities_aesir.lua")
Load("scripts/deities_baltic.lua")
Load("scripts/deities_celtic.lua")
Load("scripts/deities_christianity.lua")
Load("scripts/deities_egyptian.lua")
Load("scripts/deities_olympian.lua")
Load("scripts/deities_slavic.lua")
Load("scripts/deities_titan.lua")
Load("scripts/deities_vanir.lua")

--[[
DefineDeity("Indo-European Sky God", { -- real name? Source: Encyclopedia of the Barbarian World, vol. 1, p. 108
	Civilization = "indo-european",
	Gender = "male",
	Major = true
})
--]]

DefineDeity("gaia", { -- Source: Jenny March, "Dictionary of Classical Mythology", 2014, pp. 200-201.
	Name = "Gaia",
	Civilizations = {"ettin", "greek"},
	Religions = {"paganism"},
	Gender = "female",
	Major = true,
	Domains = {"earth", "chaos"},
--	Description = "A primordial goddess, Gaia is one of the first deities to have been born. She is the mother of the Titans by Uranus. Her greatest worshipers are the ettins of Jotunheim, to whom she appeared in ages past."
})

DefineDeity("gathaarl", { -- from Tyrant, Goblin God of Battle
	Name = "Gathaarl",
	Pantheon = "Goblin",
	HomePlane = "niflheim",
	Civilizations = {"goblin"},
	Religions = {"paganism"},
	Domains = {"chaos", "earth", "wrath"},
	Gender = "male",
	Major = true,
	Icon = "icon-gathaarl",
	Description = "The chief goblin deity, Gathaarl rejoices in the bloodiness of battle. The god's priests preach that goblins procreate and multiply, so that they may have an edge against their enemies. Many goblins raise totems to Gathaarl's glory, hoping that the deity will intercede for them."
	-- neutral alignment (actually "neutral -")
	-- prefers offerings of food and weapons
	-- offering description from Tyrant: "dissolved in a cloud of green smoke"
	-- related upbringing text from Tyrant: "You learn to rejoice in the thrill of battle, that you should multiply to cover the earth, and that you should raise great totems to the glory of Gathaarl and the Goblin Spirits."
})

DefineDeity("griknagh", { -- From Under the Burning Suns (Battle for Wesnoth)
	Name = "Griknagh",
	HomePlane = "niflheim",
	Civilizations = {"troll"},
	Religions = {"paganism"},
	Gender = "male",
	Major = true
})

DefineDeity("mzivult", { -- by Jesse Crider
	Name = "Mzivult",
	HomePlane = "niflheim",
	Civilizations = {"gnome"}, -- Derro deity
	Religions = {"paganism"},
	Domains = {"wrath", "earth", "darkness"},
	Gender = "male",
	Major = true,
--	Description = "Known as the Obsidian Tyrant, Mzivult is the chief Derro deity. One of Mzivult's epithets is that of Herfiligreikrodd (\"wretched tree voice\" in the Derro language), as Mzivult embodies the corrupted root of the interplanar tree Yggdrasil which lies on Helheim. His influence is sometimes strong enough to make branches of Yggdrasil bear his eye-shaped fruits, known as Mzivult's Eyes. It is said those who eat them obtain tremendous eloquence, being able to sway masses by speaking to their innermost fears and desires. In archaic ages, Mzivult revealed himself to the Derro magisters, imparting them with his knowledge of dark magic."
})


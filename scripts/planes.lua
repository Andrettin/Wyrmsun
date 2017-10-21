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

DefinePlane("aethermaw", { -- from Battle for Wesnoth
	Name = "Aethermaw",
--	Description = "The Aethermaw is a nexus of mystical energy of a rather chaotic nature. The cosmic forces of the plane make it a formidable prison for any immortal being bound to its center."
})

DefinePlane("asgard", { -- Source: Anders Andrén, "Behind Heathendom: Archaeological Studies of Old Norse Religion", 2005, p. 116.
	Name = "Asgard",
	Description = "The plane of Asgard is the home of the deities known as the Aesir. Their worshipers who died in battle go to Asgard in the afterlife, becoming einherjar at Valhalla and Folkvang.",
	TimeOfDaySeconds = 0, -- always day
	EmpoweredDeityDomains = {"order"}
})

DefinePlane("duat", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 15.
	Name = "Duat",
	Description = "Duat is the plane where those who believe in the Pharaonic pantheon experience their afterlife.",
	EmpoweredDeityDomains = {"life"}
})

DefinePlane("elysium", { -- Source: Jenny March, "Dictionary of Classical Mythology", 2014, pp. 174-175.
	Name = "Elysium",
	Description = "The verdant plane of Elysium is where those favored by the deities of the Olympian pantheon go after their death. Afterlife in Elysium is pleasurable, featuring neither toil nor tears.",
	EmpoweredDeityDomains = {"earth", "wood", "life"}
})

DefinePlane("hades", { -- Source: Jenny March, "Dictionary of Classical Mythology", 2014, pp. 211-213.
	Name = "Hades",
	Description = "The underworld plane of Hades looks much like the underground depths of many mortal worlds. The realm houses the souls of those who believed in the Olympian pantheon during their lives, and who were neither favored enough by the gods to be sent to Elysium, nor cruel enough to be sent to Tartarus. Afterlife in Hades is one of lamentation and sorrow. The plane is ruled by the deity of the same name.",
	EmpoweredDeityDomains = {"earth", "fire"}
})

DefinePlane("heaven", {
	Name = "Heaven",
	Description = "Within Heaven the monotheistic God dwells, served by a large host of angels. The forces of Heaven deplore those they deem to be false deities, such as the Aesir, a sentiment which sometimes erupts into open hostility. Their greatest enemies, however, are the demons of Hell.",
	EmpoweredDeityDomains = {"light", "order", "life"}
})

DefinePlane("hell", {
	Name = "Hell",
	Description = "Hell is the home to the sadistic creatures known as demons. Though its vicious inhabitants are powerful creatures, they are kept at bay by the forces of Heaven.",
	EmpoweredDeityDomains = {"darkness", "chaos", "death"}
})

DefinePlane("material-plane", {
	Name = "Material Plane",
	Description = "The material plane is the normal plane of existence, where worlds such as Earth and Nidavellir are located. As the other planes are made of pure magic, it is almost impossible for their inhabitants to travel to the material plane, as the difference in the composition of the realms would risk the traveller's very existence. The major exception being that particularly powerful mortal sorcerers are sometimes able to summon extraplanar beings for very short periods of time, maintaining their presence in a great effort of magical prowess. As more powerful extraplanar creatures are generally more rich in magic, they are also more difficult to summon."
})

DefinePlane("muspelheim", {
	Name = "Muspelheim",
	Description = "A primordial realm of flame, Muspelheim is inhabited by fiery creatures.",
	Background = "Muspelheim was the fire world of Norse mythology, the encounter of its heat with Niflheim's cold resulting in the creation of the cosmos.",
	EmpoweredDeityDomains = {"fire"}
})

DefinePlane("niflheim", {
	Name = "Niflheim",
	Description = "A dark, cold plane, Niflheim is inhabited by icy beings who can thrive in its freezing conditions. The abode of the goddess Hel is located in Niflheim. The plane harbors the souls of the dead who worshiped the Aesir, and yet were deemed unworthy of entry into Asgard by virtue of not having died in battle. In Helheim lies one of the roots of the mighty interplanar tree, Yggdrasill, the root having been corrupted by the dark forces of the plane.",
	Background = "Niflheim was the ice world of Norse mythology, the encounter of its cold with Muspelheim's heat resulting in the creation of the cosmos. Hel was a part of Niflheim.",
	EmpoweredDeityDomains = {"ice", "death"}
})

DefinePlane("nun", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 50.
	Name = "Nun",
	Description = "Nun is a primordial water plane, which is sometimes used as refuge by the deities of the Pharaonic pantheon.",
	EmpoweredDeityDomains = {"water"}
})

DefinePlane("olympus", { -- Source: Jenny March, "Dictionary of Classical Mythology", 2014, p. 354.
	Name = "Olympus",
	Description = "The realm of Olympus is the dwelling place of the pantheon of deities ruled by Zeus. Endless feasts succeed one another in the plane, nourishing the Olympian gods with ambrosia and nectar. The plane's weather is eternally sunny, so that it never winds, rains or snows, and clouds are entirely absent.",
	EmpoweredDeityDomains = {"air"}
})

DefinePlane("tartarus", { -- Source: Jenny March, "Dictionary of Classical Mythology", 2014, p. 456.
	Name = "Tartarus",
	Description = "Tartarus is a dark, sinister realm. After defeat in their war with the Olympian deities, the Titans were imprisoned in Tartarus by Zeus. Particularly evil mortals who believe in the Olympian pantheon are sent to Tartarus after their death, suffering horrible punishments.",
	EmpoweredDeityDomains = {"earth", "darkness"}
})

DefinePlane("vanaheim", {
	Name = "Vanaheim",
	Description = "Vanaheim is home to the deities known as the Vanir. In archaic times, the Vanir fought a war with the Aesir of Asgard. With the conflict ending inconclusively, the two pantheons agreed to a peace, it being decided that a few deities from each group should live in the other's realm, to ensure good behavior from both parties. Most of the worshippers of the Vanir are elves, though Germanic peoples also revere the Vanir who went to live in Asgard.",
	EmpoweredDeityDomains = {"light"}
})

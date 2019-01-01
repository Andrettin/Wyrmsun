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
--      (c) Copyright 2015-2019 by Andrettin
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

DefineDeity("perun", { -- Slavic thunder-god; Source: "Germans, Avars and Slavs", p. 125; Source: H. Munro Chadwick, "The Oak and the Thunder-God", 1900, p. 27.
	Name = "Perun",
	Civilizations = {"slav"},
	Religions = {"paganism"},
	Gender = "male",
	Major = true,
	Domains = {"lightning"}
})

DefineDeity("svarog", { -- Slavic light-god; Source: "Germans, Avars and Slavs", p. 125
	Name = "Svarog",
	Civilizations = {"slav"},
	Religions = {"paganism"},
	Gender = "male",
	Major = true,
	Domains = {"light"}
})

DefineDeity("deva", { -- Slavic season goddess; Source: "Germans, Avars and Slavs", p. 125
	Name = "Deva",
	Civilizations = {"slav"},
	Religions = {"paganism"},
	Gender = "female"
})

DefineDeity("lada", { -- Slavic season goddess; Source: "Germans, Avars and Slavs", p. 125
	Name = "Lada",
	Civilizations = {"slav"},
	Religions = {"paganism"},
	Gender = "female"
})

DefineDeity("ogen", { -- Source: "Germans, Avars and Slavs", p. 125
	Name = "Ogen",
	Civilizations = {"slav"},
	Religions = {"paganism"},
	Domains = {"fire"}
	-- child of Svarog
})

DefineDeity("slnce", { -- the Sun; Source: "Germans, Avars and Slavs", p. 125
	Name = "Slnce",
	Civilizations = {"slav"},
	Religions = {"paganism"},
	Domains = {"sun"} -- deity of the sun
	-- child of Svarog
})

DefineDeity("vesna", { -- Slavic season goddess; Source: "Germans, Avars and Slavs", p. 125
	Name = "Vesna",
	Civilizations = {"slav"},
	Religions = {"paganism"},
	Gender = "female"
})

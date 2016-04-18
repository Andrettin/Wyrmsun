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

DefineUpgrade("upgrade-work-austria-and-her-future", { -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 46; Source: A.J.P. Taylor, The Habsburg Monarchy, 1809-1918, 1964, pp. 55-56.
	Name = _("Austria and Her Future"),
	Work = "scroll", -- Schrift
	Civilization = "teuton",
	Description = "In \"Austria and her Future\" (\"Österreich und dessen Zukunft\"), Victor Andrian-Werburg argues that the Empire is nothing and the provinces are all, arousing the opinion of the educated administrative class.",
	Year = 1850
})

DefineUpgrade("upgrade-work-hildebrandslied", {
	Name = _("Hildebrandslied"),
	NameElements = {
		"compound", "suffix", "high-german", "noun", "Lied"
	},
	Work = "scroll",
	Civilization = "teuton",
	Quote = "\"That Hildebrand was my father, / and I am Hadubrand. / Long ago to the east he went, / fleeing Otacher's hatred\" - Hildebrandslied (Hadubrand)"
})

DefineUpgrade("upgrade-work-historia-ecclesiastica-venerabilis-bedae", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 34.
	Name = _("Historia Ecclesiastica Venerabilis Bedae"),
	Work = "scroll",
	Civilization = "teuton",
	Year = 731
})

DefineModifier("upgrade-work-hildebrandslied",
	{"CriticalStrikeChance", 1}
)

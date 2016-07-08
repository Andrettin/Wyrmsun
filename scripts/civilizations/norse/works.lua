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

DefineUpgrade("upgrade-work-heimskringla", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 154-155.
	Name = _("Heimskringla"),
	NameElements = {
		"compound", "prefix", "old-norse", "noun", "genitive", "Heimr", -- presumably
		"compound", "suffix", "old-norse", "noun", "Kringla" -- presumably
	},
	Work = "book",
	Civilization = "norse",
	Description = "The Heimskringla, or Chronicle of the Kings of Norway, detailed the legendary origins of the Norwegian monarchy, going on to write the stories of a long series of kings of Norway.",
--	Year = ? -- in which year was it first published?
})

DefineUpgrade("upgrade-work-historiae-vinlandiae-antiquae", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 154-155.
	Name = _("Historiae Vinlandiae Antiquae"),
	Work = "book",
	Civilization = "norse",
	Description = "This work tells the history of the Norse settlement in Vinland, in the New World.",
	Year = 1707
	-- should probably have some other requirements, like a Norse civilization having been in possession of Greenland at some point
})

DefineUpgrade("upgrade-work-ynglingatal", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 245, 261.
	Name = _("Ynglingatal"),
	NameElements = {
		"compound", "suffix", "old-norse", "noun", "Tal" -- presumably
	},
	Work = "scroll",
	Civilization = "norse",
	Description = "The Ynglingatal tells the lineage of the Yngling dynasty, legendary kings of Sweden.",
--	Year = ?, -- in which year was it first published?
	Quote = "\"The son of kings of Frey's great race,\nFirst in the fray, the fight, the chase,\nFell from his steed - his clotted brains\nLie mixed with mire on Upsal's plains.\""
})

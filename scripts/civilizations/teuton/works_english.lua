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

DefineUpgrade("upgrade-work-historia-ecclesiastica-venerabilis-bedae", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 34.
	Name = _("Historia Ecclesiastica Venerabilis Bedae"),
	Work = "scroll",
	Civilization = "teuton",
	Year = 731
})

DefineUpgrade("upgrade-work-wid-faerstice", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 164-167.
	Name = _("Wid Faerstice"),
	Work = "scroll",
	Civilization = "teuton",
	Quote = "\"If herein be aught of iron,\nWork of witches, it shall melt!\"\n- Wid Faerstice"
})

DefineUpgrade("upgrade-work-wid-wennum", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 166-167.
	Name = _("Wid Wennum"),
	Work = "scroll",
	Civilization = "teuton",
	Quote = "\"Wen, wen, little wen,\nHere you shall not build, nor any dwelling have\"\n- Wid Wennum"
})

DefineModifier("upgrade-work-historia-ecclesiastica-venerabilis-bedae",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-faerstice",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-wid-wennum",
	{"KnowledgeMagic", 1}
)

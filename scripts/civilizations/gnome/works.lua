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

DefineUpgrade("upgrade-work-o-foolish-mortal", { -- a piece of gnomish poetry; Source: Franz Hartmann, "Among the Gnomes", 1895, p. 59.
	Name = _("O Foolish Outsider"), -- part of the text, here used as the title (in the original "O foolish mortal", but here we change it to "O foolish outsider" since in the Wyrmsun universe gnomes are not supernatural creatures)
	Work = "scroll",
	Civilization = "gnome",
	Quote = "\"O foolish outsider, by dull senses bound;\nWithin thyself the gnome must be found.\nKnow thou thyself, and by self-knowledge know\nThe lives above and in the world below.\"\n- O Foolish Outsider"
	-- Full text: "\"O foolish outsider, by dull senses bound;\nWithin thyself the gnome must be found.\nKnow thou thyself, and by self-knowledge know\nThe lives above and in the world below.\nIn every sphere each being knows its own;\nTo gnomes only gnomes can be shown.\"\n- O Foolish Outsider"
	-- Full original text: "\"O foolish mortal, by dull senses bound;\nWithin thyself the spirit must be found.\nKnow thou thyself, and by self-knowledge know\nThe lives above and in the world below.\nIn every sphere each being knows its own;\nTo spirits only spirits can be shown.\""
})

DefineUpgrade("upgrade-work-adalgas-longing", { -- a gnomish song, sang by Adalga; Source: Franz Hartmann, "Among the Gnomes", 1895, p. 76.
	Name = _("Adalga's Longing"), -- seems like a fitting title
	Work = "scroll",
	Civilization = "gnome",
	Quote = "\"O what is this secret longing,\nWelling up within my heart?\nUnknown powers, surging, thronging,\nRending solid rocks apart.\"\n- Adalga's Longing"
})

DefineModifier("upgrade-work-o-foolish-mortal",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-adalgas-longing",
	{"KnowledgeMagic", 1}
)

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

--[[
DefineUpgrade("upgrade-work-austria-and-her-future", { -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 46; Source: A.J.P. Taylor, "The Habsburg Monarchy, 1809-1918", 1964, pp. 55-56.
	Name = "Austria and Her Future",
	Work = "scroll", -- Schrift
	Description = "In \"Austria and her Future\" (\"Österreich und dessen Zukunft\"), Victor Andrian-Werburg argues that the Empire is nothing and the provinces are all, arousing the opinion of the educated administrative class.",
	Year = 1850
})
--]]

DefineUpgrade("upgrade-work-hildebrandslied", {
	Name = "Hildebrandslied",
	Work = "scroll",
	Quote = "\"That Hildebrand was my father,\nand I am Hadubrand.\nLong ago to the east he went,\nfleeing Otacher's hatred\"\n- Hadubrand"
})

DefineUpgrade("upgrade-work-merseburg-charm-1", { -- Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 110-111; Source: Susan D. Fuller, "Pagan Charms in Tenth-Century Saxony? The Function of the Merseburg Charms", 1909, p. 162.
	Name = _("Invar Vigandum"), -- part of the original text meaning "escape from the foe", chosen here as its title
	Work = "scroll",
	-- written in Old High German
	Quote = "The Idisi once alighted, alighted yonder.\nSome riveted fetters, others stemmed the war tide,\nOthers hammered upon the chains:\nSlip from shackles, escape from the foe!" -- translation by Felix Grendon (and thus in the public domain); the Idisi are divine women, possibly valkyries
})

DefineUpgrade("upgrade-work-merseburg-charm-2", { -- Source: Susan D. Fuller, "Pagan Charms in Tenth-Century Saxony? The Function of the Merseburg Charms", 1909, p. 162; Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 111, 149.
	Name = _("Sose Gelimida Sin"), -- part of the original text, chosen here as its title
	Work = "scroll",
	-- written in Old High German
	Quote = "Limb to limb as they were glued together." -- translation in Felix Grendon's article (and thus in the public domain)
})

DefineModifier("upgrade-work-hildebrandslied",
	{"KnowledgeWarfare", 1}
)

DefineModifier("upgrade-work-merseburg-charm-1",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-merseburg-charm-2",
	{"KnowledgeMagic", 1}
)

--[[
DefineDependency("upgrade-work-austria-and-her-future",
	{"upgrade-faction-austria", "unit-teuton-town-hall"}
)
--]]

DefineDependency("upgrade-work-hildebrandslied",
	{"upgrade-teuton-civilization"},
	"or", {"upgrade-suebi-civilization"},
	"or", {"upgrade-frankish-civilization"}
)

DefineDependency("upgrade-work-merseburg-charm-1",
	{"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"}
)

DefineDependency("upgrade-work-merseburg-charm-2",
	{"upgrade-teuton-civilization", "unit-teuton-temple"},
	"or", {"upgrade-suebi-civilization", "unit-teuton-temple"},
	"or", {"upgrade-frankish-civilization", "unit-teuton-temple"}
)

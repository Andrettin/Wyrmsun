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

DefineCampaign("the-mead-of-poetry", {
	Name = "The Mead of Poetry",
	Description = "The dwarven brothers Fjalar and Galar conspire to kill the wise god Kvasir and brew his blood into a powerful mead.",
	Civilization = "dwarf",
	Faction = "Shadowcharm Clan",
	Year = -2800
})

DefineCampaign("frey-messenger", {
	Name = "Frey's Messenger",
	Description = "Skirnir, the human servant of the god Frey, must perform important deeds for his master.",
	Civilization = "germanic",
	Faction = "Yngling Tribe", -- Yngve is identified with Frey
	Year = -2800 -- when Scandinavia was historically settled by Indo-Europeans; Yngve ruled over the Swedes in the Ynglinga saga soon after Odin's people settled Scandinavia in that saga; since Skirnir was a servant of Frey in mythology, let's make him a contemporary of Yngve
})

DefineCampaign("the-marcomannic-wars", {
	Name = "The Marcomannic Wars",
	Description = "Under the leadership of Ballomar, the Marcomanni wage war with the mighty Roman Empire.",
	Civilization = "teuton",
	Faction = "Marcomanni Tribe",
	Year = 162 -- beginning of the Marcomannic Wars
})

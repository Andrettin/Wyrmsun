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

DefineQuest("the-two-kings-of-annwn", {
	Name = "The Two Kings of Annwn",
	Icon = "icon-elven-swordsman",
	Description = "The realm of Annwn has fallen into civil war, as Hafgan claimed king Arawn's throne. Arawn has gathered his forces, and is marching to meet the troops of the usurper in battle...\n\nMap: Annwn",
	World = "Alfheim",
	Civilization = "elf",
	TechnologyPoints = 3,
	Map = "maps/alfheim/annwn.smp",
	Scenario = "scripts/civilizations/elf/scenarios/the_two_kings_of_annwn.lua",
	PlayerColor = "white",
	IntroductionDialogue = "the-two-kings-of-annwn-introduction",
	Hidden = true
})

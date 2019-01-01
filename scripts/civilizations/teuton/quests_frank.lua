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
--      (c) Copyright 2013-2019 by Andrettin
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

DefineQuest("prevent-chilperichs-supremacy", {
	Name = "Prevent Chilperich's Supremacy",
	Icon = "icon-frank-horseman", -- should be a portrait of Chilperich
	PlayerColor = "pink",
	Unobtainable = true,
	Uncompleteable = true,
	ObjectiveStrings = {"- Prevent Chilperich from establishing supremacy over all of Francia", "- Sigibert must survive"}
})

DefineQuest("repel-the-avar-invasion", {
	Name = "Repel the Avar Invasion",
	Icon = "icon-frank-horseman", -- should be an Avar horseman
	PlayerColor = "green",
	Unobtainable = true,
	Uncompleteable = true,
	ObjectiveStrings = {"- Destroy the invading Avar forces"}
})

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
--      (c) Copyright 2015-2018 by Andrettin
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

DefineFaction("celtic-cimmerian-tribe", {
	Name = "Kommrogian Tribe",
	Civilization = "celt",
	Type = "tribe",
	Colors = {"black"},
	Adjective = "Kommrogian"
	-- fictional Proto-Celtic people; Brythonic "Kombrogos" means "compatriot" and is the etymological origin of "Cymry" ("Welsh" in the Welsh language); "kom-mrogi" is a tentative rendering of that in Proto-Celtic
})

DefineFaction("vana-tribe", {
	Name = "Vana Tribe",
	Civilization = "celt", -- the Vana appear, of course, only in Norse myths, but they are depicted as a people different from Scandinavians and their ancestors; since the Vanir (the Vana are an euhemerized version of the Vanir) are strongly associated with elves, it makes sense to make the Vana Celtic here, as the Celtic faeries are amalgamated with elves in Wyrmsun
	Type = "tribe",
	Colors = {"blue", "cyan"},
	DefaultAI = "passive",
	Adjective = "Vana",
	HistoricalResources = {
		-3000, "copper", 0,
		-3000, "lumber", 0,
		-3000, "stone", 0,
	}
})

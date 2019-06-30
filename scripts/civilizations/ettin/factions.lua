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
--      (c) Copyright 2017-2019 by Andrettin
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

DefineFaction("geirrodung-clan", {
	Name = "Geirrodung Clan",
	Civilization = "ettin",
	Type = "tribe",
	PrimaryColor = "red",
	SecondaryColor = "orange",
	DefaultAI = "passive",
	Icon = "icon-flag-brown-skull-on-red",
	Description = "The brutal ettin Geirrod possesses a magnificent hall in Jotunheim, where he, his kin and his followers dwell.",
	HistoricalResources = {
		-3000, "copper", 0,
		-3000, "lumber", 0,
		-3000, "stone", 0,
	}
})

-- Mercenary Companies

DefineFaction("greedstone-company", {
	Name = "Greedstone Company",
	Civilization = "ettin",
	Type = "mercenary-company",
	PrimaryColor = "yellow",
	SecondaryColor = "red",
	DefaultTier = "duchy",
	Icon = "icon-flag-red-skull-on-white",
	Description = "The Greedstone warriors lend their fists for gold, doing a good deal of dirty work for the ettin kingdoms. Merchant guilds are also keen to employ them, specially to destroy settlements of escaped orc slaves and recapture their inhabitants."
})

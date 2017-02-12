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
--      (c) Copyright 2017 by Andrettin
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

DefineSettlement("regensburg", {
	Name = "Regensburg",
	MapTemplate = "earth",
	Position = {4116, 932},
	CulturalNames = {
		"latin", "Regina Castra",
		"teuton", "Regensburg"
	},
	HistoricalOwners = {
		170, "rome", -- a Roman camp at Regensburg-Kumpfmühl was destroyed during the First Marcomannic War in 172; it likely existed at the beginning of that war as well; Source: "Ancient Warfare VII.6", 2013, p. 25.
		172, "",
		175, "rome",
		526, "bavarian-tribe", -- Ratisbon was in Bavarian possession in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		1815, "bavaria" -- Regensburg was a possession of the Kingdom of Bavaria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		170, 172, "unit-teuton-guard-tower",
		175, 526, "unit-teuton-guard-tower", -- The Legio III Italica began building in 175 the fortress of Castra Regina near where the Regensburg-Kumpfmühl camp had been; Source: "Ancient Warfare VII.6", 2013, p. 25.
		526, 0, "unit-teuton-town-hall"
	},
	Regions = {"europe", "west-and-central-europe", "roman-danube", "germany-netherlands"}
})

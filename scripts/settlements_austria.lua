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

DefineSettlement("carnuntum", {
	Name = "Carnuntum",
	MapTemplate = "earth",
	Position = {4224, 955},
	CulturalNames = {
		"latin", "Carnuntum"
	},
	HistoricalOwners = {
		10, "rome", -- Upper Pannonia (where Carnuntum was located) acquired by Rome in 10 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		526, "" -- Carnuntum no longer under Roman control by 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
	},
	HistoricalBuildings = {
		10, 161, "unit-latin-farm", -- Upper Pannonia (where Carnuntum was located) acquired by Rome in 10 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		161, 526, "unit-teuton-guard-tower" -- Legionary base present in Carnuntum in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	Regions = {"europe", "west-and-central-europe", "roman-danube", "germany-netherlands", "cisleithania"}
})

DefineSettlement("salzburg", {
	Name = "Salzburg",
	MapTemplate = "earth",
	Position = {4135, 960},
	CulturalNames = {
		"latin", "Iuvavum",
		"teuton", "Salzburg"
	},
	HistoricalOwners = {
		45, "rome", -- Noricum was conquered by the Romans in 15 BC, and a few Celtic settlements were subsequently amalgamated into Iuvavum six decades later; Source: Heinz Dopsch, "Kleine Geschichte Salzburgs: Stadt und Land", 2009, pp. 16-17.
		526, "bavarian-tribe", -- Salzburg was in Bavarian possession in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		1815, "austria" -- Salzburg was a possession of the Empire of Austria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		45, 526, "unit-latin-town-hall",
		526, 1815, "unit-teuton-farm",
		1815, 0, "unit-teuton-town-hall"
	},
	Regions = {"europe", "west-and-central-europe", "roman-danube", "germany-netherlands", "cisleithania"}
})

DefineSettlement("vienna", {
	Name = "Vienna",
	MapTemplate = "earth",
	Position = {4212, 952},
	CulturalNames = {
		"celt", "Vindobona",
		"latin", "Vindobona",
		"teuton", "Vienna"
	},
	HistoricalOwners = {
		10, "rome", -- Upper Pannonia (where Vindobona was located) acquired by Rome in 10 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		526, "", -- Vindobona no longer under Roman control by 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		955, "bavaria", -- Vienna became a part of the Bavarian East March in 955; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1156, "austria" -- Austria became a duchy with Vienna in its possession in 1156; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalBuildings = {
		10, 161, "unit-latin-farm",
		161, 526, "unit-teuton-guard-tower", -- Legionary base present in Vindobona in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		955, 0, "unit-teuton-town-hall"
	},
	Regions = {"europe", "west-and-central-europe", "roman-danube", "germany-netherlands", "cisleithania"}
})

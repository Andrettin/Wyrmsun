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

DefineSettlement("bamburgh", {
	Name = "Bamburgh",
	MapTemplate = "earth",
	Position = {3801, 783},
	CulturalNames = {
		"anglo-saxon", "Bamburgh" -- as given by Stenton; Shepherd gives it as "Bamborough" instead; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 74.
	},
	HistoricalOwners = {
		802, "northumbria" -- Bamborough was a part of Northumbria c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
	},
	HistoricalBuildings = {
		802, 0, "town-hall"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("carlisle", {
	Name = "Carlisle",
	MapTemplate = "earth",
	Position = {3773, 800},
	CulturalNames = {
		"anglo-saxon", "Carlisle",
		"latin", "Luguvallium" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
	},
	HistoricalOwners = {
		410, "rome", -- Luguvallium was a part of the Roman empire c. 410 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		802, "strathclyde" -- Carlisle was a part of Strathclyde c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
	},
	HistoricalBuildings = {
		410, 0, "town-hall"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("london", {
	Name = "London",
	MapTemplate = "earth",
	Position = {3839, 875},
	CulturalNames = {
		"anglo-saxon", "London",
		"celt", "Londinium",
		"latin", "Londinium" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		802, "middlesex" -- London was a part of Middlesex c. 802 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
	},
	HistoricalBuildings = {
		802, 0, "town-hall"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("york", {
	Name = "York",
	MapTemplate = "earth",
	Position = {3815, 819},
	CulturalNames = {
		"anglo-saxon", "York",
		"celt", "Eboracum",
		"latin", "Eboracum"
	},
	HistoricalOwners = {
		500, "dere-tribe", -- the Dere (a collection of Anglian peoples) were in possession of York in 500 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 74.
		588, "bernicia", -- according to tradition, Æthelric of Bernicia acquired the kingdom of Deira upon its king Ælle's death in 588 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 75.
		654, "northumbria", -- Northumbria unified by Oswiu of Bernicia in 654
		1560, "england" -- political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		500, 0, "town-hall"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

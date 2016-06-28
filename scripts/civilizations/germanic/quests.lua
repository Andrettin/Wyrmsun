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
--      (c) Copyright 2013-2016 by Andrettin
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

DefineQuest("on-the-vanaquisl", {
	Name = "On the Vanaquisl",
	Icon = "icon-germanic-warrior",
	Description = "Having assembled a great army, we are to attack the people of Vanaland and take their lands into our possession.\n\nMap: Tanais",
	World = "Earth",
	Civilization = "germanic",
	TechnologyPoints = 2,
	Map = "maps/earth/tanais.smp",
	Scenario = "scripts/civilizations/germanic/scenarios/on_the_vanaquisl.lua",
	PlayerColor = "orange",
	LoadingMusic = "GermanicLoading",
	MapMusic = "GermanicTheme"
})

DefineQuest("westward-migration", {
	Name = "Westward Migration",
	Icon = "icon-germanic-worker",
	Description = "With expansion through Vanaland denied to us, we seek an alternative migration route to the west.\n\nMap: Holmgard",
	RequiredQuest = "on-the-vanaquisl",
	World = "Earth",
	Civilization = "germanic",
	TechnologyPoints = 1,
	Map = "maps/earth/novgorod.smp",
	Scenario = "scripts/civilizations/germanic/scenarios/westward_migration.lua",
	PlayerColor = "orange",
	LoadingMusic = "GermanicLoading",
	MapMusic = "GermanicTheme2"
})

DefineQuest("northwards-to-the-sea", {
	Name = "Northwards to the Sea",
	Icon = "icon-germanic-town-hall",
	Description = "After moving southwest, we now find ourselves near a peninsula which seems promising for settlement.\n\nMap: Jutland",
	RequiredQuest = "westward-migration",
	World = "Earth",
	Civilization = "germanic",
	TechnologyPoints = 2,
	Map = "maps/earth/jutland.smp",
	Scenario = "scripts/civilizations/germanic/scenarios/northwards_to_the_sea.lua",
	PlayerColor = "orange",
	LoadingMusic = "GermanicLoading",
	MapMusic = "GermanicTheme3"
})

DefineQuest("gylves-realm", {
	Name = "Gylve's Realm",
	Icon = "icon-germanic-barbed-arrow",
	Description = "After establishing ourselves in Jutland and the islands of Fyen and Zealand we journeyed north, but we do not seem welcome in these new shores...\n\nMap: Malmo",
	RequiredQuest = "northwards-to-the-sea",
	World = "Earth",
	Civilization = "germanic",
	TechnologyPoints = 2,
	Map = "maps/earth/malmo.smp",
	Scenario = "scripts/civilizations/germanic/scenarios/gylves_realm.lua",
	PlayerColor = "orange",
	LoadingMusic = "GermanicLoading",
--	MapMusic = "GermanicTheme4"
})

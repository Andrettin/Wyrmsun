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

DefineQuest("the-battle-of-magetobria", {
	Name = "The Battle of Magetobria",
	Icon = "icon-suebi-swordsman",
	Description = "Under the leadership of Ariovistus, we have crossed the Rhine to aid the Sequani and the Arverni in defeating the Aedui, and now an Aedui army approaches the Sequani settlement of Magetobria...\n\nMap: Belfort",
	RequiredQuest = "gylves-realm",
	World = "Earth",
	Civilization = "teuton",
	Map = "maps/earth/belfort.smp",
	Scenario = "scripts/civilizations/teuton/scenarios/the_battle_of_magetobria.lua",
	PlayerColor = "black"
})

DefineQuest("the-home-of-the-boii", {
	Name = "The Home of the Boii",
	Icon = "icon-marbod",
	Description = "After a devastating conflict with the Romans, Marbod seeks to lead the tribe of the Marcomanni to safer lands.\n\nMap: Prague",
	RequiredQuest = "the-battle-of-magetobria",
	World = "Earth",
	Civilization = "teuton",
	Map = "maps/earth/prague.smp",
	Scenario = "scripts/civilizations/teuton/scenarios/the_home_of_the_boii.lua",
	PlayerColor = "orange"
})

DefineQuest("the-marcomannic-wars", {
	Name = "The Marcomannic Wars",
	Icon = "icon-suebi-swordsman",
	Civilization = "teuton",
	PlayerColor = "orange",
	FailEffects = function(s)
		if (trigger_player == GetThisPlayer() and GetCurrentCampaign() == "the-marcomannic-wars") then
			CallDialogue("campaign-defeat", trigger_player)
		end
	end,
	Objectives = {"- Destroy Opitergium"},
	Uncompleteable = true,
	Unobtainable = true
})

DefineQuest("the-sack-of-iuvavum", {
	Name = "The Sack of Iuvavum",
	Icon = "icon-teuton-spatha",
	Description = "Almost two centuries after the time of Marbod, the Marcomanni chieftain Ballomar has gathered more than a dozen Germanic tribes in an alliance to invade the Roman Empire.\n\nMap: Salzburg",
	RequiredQuest = "the-home-of-the-boii",
	World = "Earth",
	Civilization = "teuton",
	Map = "maps/earth/salzburg.smp",
	Scenario = "scripts/civilizations/teuton/scenarios/the_sack_of_iuvavum.lua",
	PlayerColor = "orange"
})

DefineQuest("the-razing-of-opitergium", {
	Name = "The Razing of Opitergium",
	Icon = "icon-latin-forum",
	Description = "Leaving a trail of destruction behind them, the Marcomanni have now reached Italy and lay siege to the Roman city of Opitergium.\n\nMap: Oderzo",
	RequiredQuest = "the-sack-of-iuvavum",
	World = "Earth",
	Civilization = "teuton",
	Map = "maps/earth/oderzo.smp",
	Scenario = "scripts/civilizations/teuton/scenarios/the_razing_of_opitergium.lua",
	PlayerColor = "orange"
})

DefineQuest("moving-into-galicia", { -- happened in 411 AD
	Name = "Moving into Galicia",
	Icon = "icon-teuton-town-hall",
	Description = "Times are changing. The Roman Empire, once invincible, is now falling prey to a conjunction of domestic troubles and external pressures. A group of Suebi has decided to take on this opportunity, moving into the Roman province of Galicia...\n\nMap: Braga",
	RequiredQuest = "the-razing-of-opitergium",
	World = "Earth",
	Civilization = "teuton",
	Map = "maps/earth/braga.smp",
	Scenario = "scripts/civilizations/teuton/scenarios/moving_into_galicia.lua",
	PlayerColor = "black"
})

DefineQuest("the-blue-danube", {
	Name = "The Blue Danube",
	Icon = "icon-saxon-swordsman",
	Description = "As time passed, the Marcomanni abandoned their old name and adopted a new one - that of the Bavarians. Expelled from Bohemia by the Lombards, they must now seek a home on the margins of the Danube, facing the forces of the crumbling Roman Empire, if need be.\n\nMap: Regensburg",
	RequiredQuest = "the-razing-of-opitergium",
	World = "Earth",
	Civilization = "teuton",
	Map = "maps/earth/regensburg.smp",
	Scenario = "scripts/civilizations/teuton/scenarios/the_blue_danube.lua",
	PlayerColor = "cyan"
})

Load("scripts/civilizations/teuton/quests_frank.lua")
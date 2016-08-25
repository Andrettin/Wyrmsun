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

DefineQuest("the-great-temple-at-upsal", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 225.
	Name = "The Great Temple", -- the great temple built by Freyr (Yngve) in the Ynglinga saga in Upsal
	Icon = "icon-germanic-farm",
	Description = "My chieftain, we should buy a new, great temple for our people. Not only will it give them a new place of worship, but the wise priests it will host shall help us with tax collection.",
	World = "Earth",
	Civilization = "germanic",
	PlayerColor = "blue",
	Conditions = function(s)
		if ((GetPlayerData(trigger_player, "Faction") == "Yngling Tribe" or GetPlayerData(trigger_player, "Faction") == "Asa Tribe") and GetPlayerData(trigger_player, "UnitTypesCount", "unit-germanic-worker") > 0 and CheckDependency(trigger_player, "unit-teuton-temple")) then
			return true
		end
		return false
	end,
	CompletionEffects = function(s)
		SetPlayerData(trigger_player, "Resources", "gold", GetPlayerData(trigger_player, "Resources", "gold") + 2000)
	end,
	Objectives = {"- Build a Temple"},
	Rewards = "+2000 Gold",
	Hint = "Select a Bura, press the Build Structure button and then click on the Temple button to build the building required for this quest.",
	BuildUnits = {"unit-teuton-temple", 1}, -- should be a Germanic Temple, of course
	Hidden = true
})

DefineQuest("the-good-seasons", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 225.
	Name = "The Good Seasons", -- the Swedes believed their chieftain Yngve (identified with Freyr) provided them good seasons
	Icon = "icon-germanic-farm",
	Description = "My chieftain, our lands have been blessed with good seasons, which our people ascribe to you. We should build more farms to take advantage of these fortunate times.",
	World = "Earth",
	Civilization = "germanic",
	PlayerColor = "blue",
	Conditions = function(s)
--		if (GetPlayerData(trigger_player, "Faction") == "Yngling Tribe" or GetPlayerData(trigger_player, "Faction") == "Asa Tribe") then
		if (GetPlayerData(trigger_player, "RaceName") == "germanic" and GetPlayerData(trigger_player, "UnitTypesCount", "unit-germanic-worker") > 0 and CheckDependency(trigger_player, "unit-germanic-farm")) then -- allow for all Germanic tribes for now, since they don't have quests
			return true
		end
		return false
	end,
	CompletionEffects = function(s)
		SetPlayerData(trigger_player, "Resources", "gold", GetPlayerData(trigger_player, "Resources", "gold") + 1000)
	end,
	Objectives = {"- Build 2 Farms"},
	Rewards = "+1000 Gold",
	Hint = "Select a Bura, press the Build Structure button and then click on the Build Farm button to build the building required for this quest.",
	BuildUnits = {"unit-germanic-farm", 2}
})

DefineQuest("thralls-logging", { -- based on the Song of Rig; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 19.
	Name = "Thrahila's Logging", -- in the Song of Rig, Rig (the God Heimdall) fathers Thrall, Karl and Jarl, each of which originates a class of the Norse world; namely serfs, peasants and warriors; "thrall" is a reflex of Proto-Germanic "þrahila"
	Icon = "icon-germanic-carpenters-shop",
	Description = "The robust serf Thrahila meekly suggests that we gather some wood for our people to warm themselves and build new homes.",
	World = "Earth",
	Civilization = "germanic",
	PlayerColor = "orange",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "RaceName") == "germanic" and GetPlayerData(trigger_player, "UnitTypesCount", "unit-germanic-worker") > 0) then
			return true
		end
		return false
	end,
	CompletionEffects = function(s)
		SetPlayerData(trigger_player, "Resources", "gold", GetPlayerData(trigger_player, "Resources", "gold") + 1000)
	end,
	Objectives = {"- Gather 2000 Lumber"},
	Rewards = "+1000 Gold",
	Hint = "Select a Bura and right-click on a tree or wood pile to begin gathering lumber.",
	GatherResources = {"lumber", 2000}
})

DefineQuest("karls-dutifulness", { -- based on the Song of Rig; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 22-24.
	Name = "Karla's Dutifulness", -- in the Song of Rig, Rig (the God Heimdall) fathers Thrall, Karl and Jarl, each of which originates a class of the Norse world; namely serfs, peasants and warriors; "karl" is a reflex of Proto-Germanic "karla"
	Icon = "icon-germanic-worker",
	Description = "Our legends say that in ages past Karla, the son of Afi and Ammon, founded our peasant class. As a homage to the ancestral tiller of the land, and to enhance our labor yield, we should train a few industrious buras.", -- they were "Afi" and "Amma" in the Old Norse original, which are (respectively) reflexes of Proto-Germanic "Avan" and "Ammôn"
	World = "Earth",
	Civilization = "germanic",
	PlayerColor = "orange",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "RaceName") == "germanic" and GetPlayerData(trigger_player, "UnitTypesCount", "unit-germanic-town-hall") > 0 and CheckDependency(trigger_player, "unit-germanic-worker")) then
			return true
		end
		return false
	end,
	CompletionEffects = function(s)
		SetPlayerData(trigger_player, "Resources", "gold", GetPlayerData(trigger_player, "Resources", "gold") + 1000)
		SetPlayerData(trigger_player, "Resources", "lumber", GetPlayerData(trigger_player, "Resources", "lumber") + 1000)
		SetPlayerData(trigger_player, "Resources", "stone", GetPlayerData(trigger_player, "Resources", "stone") + 500)
	end,
	Objectives = {"- Train 5 Buras"},
	Rewards = "+1000 Gold, +1000 Lumber, +500 Stone",
	Hint = "Select a Chieftain's Hall and then click on the Train Bura button to train the unit required for this quest.",
	BuildUnits = {"unit-germanic-worker", 5}
})

DefineQuest("jarls-bravery", { -- based on the Song of Rig; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 22-24.
	Name = "Erala's Bravery", -- in the Song of Rig, Rig (the God Heimdall) fathers Thrall, Karl and Jarl, each of which originates a class of the Norse world; namely serfs, peasants and warriors; "jarl" is a reflex of Proto-Germanic "erala"
	Icon = "icon-germanic-warrior",
	Description = "Our traditions tell us that the legendary hero Erala, the son of Fader, founded our warrior class, which receives his name. To honor the great conqueror and protect our homeland, we should train a few brave eralas.", -- "Fadēr" is the word which gave origin to "Fathir", the name of the character in Old Norse; what is the original word for "Mothir"?
	World = "Earth",
	Civilization = "germanic",
	PlayerColor = "orange",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "RaceName") == "germanic" and GetPlayerData(trigger_player, "UnitTypesCount", "unit-germanic-barracks") > 0 and CheckDependency(trigger_player, "unit-germanic-warrior")) then
			return true
		end
		return false
	end,
	CompletionEffects = function(s)
		SetPlayerData(trigger_player, "Resources", "gold", GetPlayerData(trigger_player, "Resources", "gold") + 1500)
	end,
	Objectives = {"- Train 3 Eralas"},
	Rewards = "+1500 Gold",
	Hint = "Select a War Lodge and then click on the Train Erala button to train the unit required for this quest.",
	BuildUnits = {"unit-germanic-warrior", 3}
})

DefineQuest("the-sun-shields", { -- Source: http://en.natmus.dk/historical-knowledge/denmark/prehistoric-period-until-1050-ad/the-bronze-age/the-bronze-age-shields/
	Name = "The Sun Shields", -- the Swedes believed their chieftain Yngve (identified with Freyr) provided them good seasons
	Icon = "icon-germanic-bronze-shield",
	Description = "A group of artisans has come to you with plans to produce circular bronze shields, embellished with details symbolizing the sun and the cycle of the seasons. However, they require investments in order to bring those plans to fruition.",
	World = "Earth",
	Civilization = "germanic",
	PlayerColor = "orange",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "RaceName") == "germanic" and GetPlayerData(trigger_player, "UnitTypesCount", "unit-germanic-smithy") > 0 and GetPlayerData(trigger_player, "Allow", "upgrade-germanic-bronze-shield") == "A" and CheckDependency(trigger_player, "upgrade-germanic-bronze-shield")) then -- the historical shields were produced in Jutland
			return true
		end
		return false
	end,
	CompletionEffects = function(s)
		SetPlayerData(trigger_player, "Resources", "gold", GetPlayerData(trigger_player, "Resources", "gold") + 1000)
		SetPlayerData(trigger_player, "Resources", "lumber", GetPlayerData(trigger_player, "Resources", "lumber") + 500)
	end,
	Objectives = {"- Research Bronze Shield"},
	Rewards = "+1000 Gold, +500 Lumber",
	Hint = "Select a Smithy and then click on the Research Bronze Shield button to research the technology required for this quest.",
	ResearchUpgrades = {"upgrade-germanic-bronze-shield"}
})

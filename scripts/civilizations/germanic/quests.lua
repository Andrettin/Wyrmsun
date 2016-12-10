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
		if ((GetPlayerData(trigger_player, "Faction") == "yngling-tribe" or GetPlayerData(trigger_player, "Faction") == "asa-tribe") and GetPlayerData(trigger_player, "UnitTypesCount", "unit-germanic-worker") > 0 and CheckDependency(trigger_player, "unit-teuton-temple")) then
			return true
		end
		return false
	end,
	CompletionEffects = function(s)
		SetPlayerData(trigger_player, "Resources", "copper", GetPlayerData(trigger_player, "Resources", "copper") + 2000)
	end,
	Objectives = {"- Build a Temple"},
	Rewards = "+2000 Copper",
	Hint = "Select a Bura, press the Build Structure button and then click on the Temple button to build the structure required for this quest.",
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
--		if (GetPlayerData(trigger_player, "Faction") == "yngling-tribe" or GetPlayerData(trigger_player, "Faction") == "asa-tribe") then
		if (GetPlayerData(trigger_player, "RaceName") == "germanic" and GetPlayerData(trigger_player, "UnitTypesCount", "unit-germanic-worker") > 0 and CheckDependency(trigger_player, "unit-germanic-farm")) then -- allow for all Germanic tribes for now, since they don't have quests
			return true
		end
		return false
	end,
	CompletionEffects = function(s)
		SetPlayerData(trigger_player, "Resources", "copper", GetPlayerData(trigger_player, "Resources", "copper") + 1000)
	end,
	Objectives = {"- Build 2 Farms"},
	Rewards = "+1000 Copper",
	Hint = "Select a Bura, press the Build Structure button and then click on the Build Farm button to build the structure required for this quest.",
	BuildUnits = {"unit-germanic-farm", 2}
})

DefineQuest("thralls-logging", { -- based on the Song of Rig; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 19.
	Name = "Thrahila's Logging", -- in the Song of Rig, Rig (the god Heimdall) fathers Thrall, Karl and Jarl, each of which originates a class of the Norse world; namely serfs, peasants and warriors; "thrall" is a reflex of Proto-Germanic "þrahila"
	Icon = "icon-germanic-carpenters-shop",
	Description = "The robust serf Thrahila meekly suggests that we gather some wood for our people to warm themselves and build new homes.",
	World = "Earth",
	Civilization = "germanic",
	PlayerColor = "orange",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "RaceName") == "germanic" and GetPlayerData(trigger_player, "Faction") == "thralling-tribe" and GetPlayerData(trigger_player, "UnitTypesCount", "unit-germanic-worker") > 0) then
			return true
		end
		return false
	end,
	CompletionEffects = function(s)
		SetPlayerData(trigger_player, "Resources", "copper", GetPlayerData(trigger_player, "Resources", "copper") + 1000)
	end,
	Objectives = {"- Gather 2000 Lumber"},
	Rewards = "+1000 Copper",
	Hint = "Select a Bura and right-click on a tree or wood pile to begin gathering lumber.",
	GatherResources = {"lumber", 2000}
})

DefineQuest("thralls-hut", { -- based on the Song of Rig; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 19-20; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 206-207.
	Name = "Thrahila's Hut", -- in the Song of Rig, Rig (the god Heimdall), Thrall's ten sons shore up the hut of their parents and grandparents, afterwards tending to goats and pigs near it
	Icon = "icon-germanic-farm",
	Description = "The hard-working serf Thrahila timidly proposes that a new hut for him and his family be built. It would house him, his wife and their twelve sons and nine daughters, who would tend to goats and pigs in its environs.", -- his wife was Thir; their sons were: Fjosnir, Klur, Hreim, Klajja (Crossley-Holland gives "kreggi", while Bellows gives "kleggi", both with the meaning of horse-fly; "kleggi" is listed by Fick also as meaning horse-fly, and as a reflex of Proto-Germanic "klajja(n)"), Kefsir, Fulnir, Drumb, Digraldi, Drott, Leggjaldi, Lut and Hosvir; their daughters were: Drumba, Kumba, Okkvinkalfa, Arinnefja, Ysja, Ambott, Eikintjasna, Totrughypja and Tronubeina; it would be nice if the description of the quest also listed their names, as we manage to convert them to Proto-Germanic
	World = "Earth",
	Civilization = "germanic",
	PlayerColor = "orange",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "RaceName") == "germanic" and GetPlayerData(trigger_player, "Faction") == "thralling-tribe" and GetPlayerData(trigger_player, "UnitTypesCount", "unit-germanic-worker") > 0 and CheckDependency(trigger_player, "unit-germanic-farm")) then
			return true
		end
		return false
	end,
	CompletionEffects = function(s)
		SetPlayerData(trigger_player, "Resources", "copper", GetPlayerData(trigger_player, "Resources", "copper") + 750)
	end,
	Objectives = {"- Build a Farm"},
	Rewards = "+750 Copper",
	Hint = "Select a Bura, press the Build Structure button and then click on the Build Farm button to build the structure required for this quest.",
	BuildUnits = {"unit-germanic-farm", 1}
})

DefineQuest("karls-farm", { -- based on the Song of Rig; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 21.
	Name = "Karla's Farm", -- in the Song of Rig, Rig (the god Heimdall) fathers Thrall, Karl and Jarl, each of which originates a class of the Norse world; namely serfs, peasants and warriors; "karl" is a reflex of Proto-Germanic "karla"
	Icon = "icon-germanic-farm",
	Description = "The young peasant Karla, son of Aban and Ammon, is a rapid learner. He is mastering the construction of huts and farms, and proposes the erection of a new farm to complete his learning process.", -- his parents were "Afi" and "Amma" in the Old Norse original, which are (respectively) reflexes of Proto-Germanic "Aban" and "Ammôn"
	World = "Earth",
	Civilization = "germanic",
	PlayerColor = "orange",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "RaceName") == "germanic" and GetPlayerData(trigger_player, "Faction") == "karling-tribe" and GetPlayerData(trigger_player, "UnitTypesCount", "unit-germanic-worker") > 0 and CheckDependency(trigger_player, "unit-germanic-farm")) then
			return true
		end
		return false
	end,
	CompletionEffects = function(s)
		SetPlayerData(trigger_player, "Resources", "copper", GetPlayerData(trigger_player, "Resources", "copper") + 750)
	end,
	Objectives = {"- Build a Farm"},
	Rewards = "+750 Copper",
	Hint = "Select a Bura, press the Build Structure button and then click on the Build Farm button to build the structure required for this quest.",
	BuildUnits = {"unit-germanic-farm", 1}
})

DefineQuest("heimdalls-progeny", {
	Name = "Haimadala's Progeny",
	Icon = "icon-jarl",
	World = "Earth",
	Civilization = "germanic",
	PlayerColor = "yellow",
	FailEffects = function(s)
		if (trigger_player == GetThisPlayer() and GetCurrentCampaign() == "heimdalls-progeny") then
			CallDialogue("campaign-defeat", trigger_player)
		end
	end,
	Objectives = {"- Conquer all of your home peninsula", "- Erala must survive"},
	HeroesMustSurvive = {"Erala"},
	Uncompleteable = true,
	Unobtainable = true
})

DefineQuest("jarls-hall", { -- based on the Song of Rig; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 22-24.
	Name = "Erala's Hall", -- in the Song of Rig, Rig (the god Heimdall) fathers Thrall, Karl and Jarl, each of which originates a class of the Norse world; namely serfs, peasants and warriors; "jarl" is a reflex of Proto-Germanic "erala"
	Icon = "icon-germanic-town-hall",
	Description = "The fierce warrior Erala seeks to establish a hall for himself.",
	World = "Earth",
	Civilization = "germanic",
	PlayerColor = "yellow",
	CompletionEffects = function(s)
		CallDialogue("jarls-hall-is-complete", trigger_player)
	end,
	Objectives = {"- Acquire some Buras", "- Build a Chieftain's Hall"},
	Hint = "Select a Bura, press the Build Structure button and then click on the Build Chieftain's Hall button to build the structure required for this quest.",
	BuildUnits = {"unit-germanic-town-hall", 1},
	HeroesMustSurvive = {"Erala"},
	Unobtainable = true,
	Unfailable = true
})

DefineQuest("jarls-retainers", { -- based on the Song of Rig; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 24.
	Name = "Erala's Retainers",
	Icon = "icon-germanic-warrior",
	Description = "The young warrior Erala was fast to master the art of the sword. He proposes to train a few brave warriors to protect our homeland.",
	World = "Earth",
	Civilization = "germanic",
	PlayerColor = "yellow",
	CompletionEffects = function(s)
	end,
	Objectives = {"- Train 5 Eralas"},
	Unobtainable = true,
	Unfailable = true,
	Hint = "Select a War Lodge and then click on the Train Erala button to train the unit required for this quest.",
	BuildUnits = {"unit-germanic-warrior", 5},
	HeroesMustSurvive = {"Erala"}
})

DefineQuest("master-of-metal", {
	Name = "Master of Metal",
	Icon = "icon-germanic-smithy",
	Description = "Control over metalworking is essential for a chieftain's status to be maintained. Building a smithy will foster your mastery over metal and attract followers.",
	World = "Earth",
	Civilization = "germanic",
	PlayerColor = "yellow",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "RaceName") == "germanic" and GetPlayerData(trigger_player, "UnitTypesCount", "unit-germanic-smithy") == 0 and CheckDependency(trigger_player, "unit-germanic-smithy")) then
			return true
		end
		return false
	end,
	CompletionEffects = function(s)
		SetPlayerData(trigger_player, "Resources", "copper", GetPlayerData(trigger_player, "Resources", "copper") + 1000)
		unit = CreateUnit("unit-germanic-worker", trigger_player, {Players[trigger_player].StartPos.x, Players[trigger_player].StartPos.y})
		unit = CreateUnit("unit-germanic-worker", trigger_player, {Players[trigger_player].StartPos.x, Players[trigger_player].StartPos.y})
	end,
	Objectives = {"- Build a Smithy"},
	Rewards = "+1000 Copper, +2 Buras",
	Hint = "Select a Bura, press the Build Structure button and then click on the Build Smithy button to build the structure required for this quest.",
	BuildUnits = {"unit-germanic-smithy", 1}
})

DefineQuest("subjugate-the-karlings", {
	Name = "Subjugate the Karlings",
	Icon = "icon-germanic-worker",
	World = "Earth",
	Civilization = "germanic",
	PlayerColor = "yellow",
	Objectives = {"- Subjugate the Karlings"},
	HeroesMustSurvive = {"Erala"},
	Unobtainable = true,
	Uncompleteable = true,
	Unfailable = true
})

DefineQuest("neutralize-the-hersings", {
	Name = "Neutralize the Hersings",
	Icon = "icon-germanic-chieftain",
	World = "Earth",
	Civilization = "germanic",
	PlayerColor = "yellow",
	Objectives = {"- Ally with or defeat the Hersings"},
	HeroesMustSurvive = {"Erala"},
	Unobtainable = true,
	Uncompleteable = true,
	Unfailable = true
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
		SetPlayerData(trigger_player, "Resources", "copper", GetPlayerData(trigger_player, "Resources", "copper") + 1000)
		SetPlayerData(trigger_player, "Resources", "lumber", GetPlayerData(trigger_player, "Resources", "lumber") + 500)
	end,
	Objectives = {"- Research Bronze Shield"},
	Rewards = "+1000 Copper, +500 Lumber",
	Hint = "Select a Smithy and then click on the Research Bronze Shield button to research the technology required for this quest.",
	ResearchUpgrades = {"upgrade-germanic-bronze-shield"}
})

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
--      (c) Copyright 2013-2017 by Andrettin
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
	Civilization = "germanic",
	PlayerColor = "orange",
	CompletionEffects = function(s)
		CallDialogue("on-the-vanaquisl-victory", trigger_player)
	end,
	FailEffects = function(s)
		if (trigger_player == GetThisPlayer() and GetCurrentCampaign() == "on-the-vanaquisl") then
			CallDialogue("campaign-defeat", trigger_player)
		end
	end,
	Objectives = {"- Destroy Vanaland's Chieftain's Hall", "- Wodanaz must survive"},
	DestroyUnits = {"unit-germanic-town-hall", "vana-tribe", 1},
	HeroesMustSurvive = {"voden"},
	Rewards = "Unlock the Westward Migration scenario",
	Unobtainable = true
})

DefineQuest("westward-migration", { -- based on the Ynglinga saga and on the Indo-European migration according to the Kurgan hypothesis
	Name = "Westward Migration",
	Icon = "icon-germanic-worker",
	Civilization = "germanic",
	PlayerColor = "orange",
	FailEffects = function(s)
		if (trigger_player == GetThisPlayer() and GetCurrentCampaign() == "westward-migration") then
			CallDialogue("campaign-defeat", trigger_player)
		end
	end,
	Objectives = {"- Bring a Bura to the southwestern edge of the map", "- Wodanaz must survive"},
	HeroesMustSurvive = {"voden"},
	Uncompleteable = true,
	Unobtainable = true
})

DefineQuest("the-settlement-of-scandinavia", { -- based on the Ynglinga saga and on the Indo-European migration according to the Kurgan hypothesis
	Name = "The Settlement of Scandinavia",
	Icon = "icon-germanic-town-hall",
	Civilization = "germanic",
	PlayerColor = "orange",
	CompletionEffects = function(s)
		CallDialogue("the-settlement-of-scandinavia-victory", trigger_player)
	end,
	FailEffects = function(s)
		if (trigger_player == GetThisPlayer() and GetCurrentCampaign() == "the-settlement-of-scandinavia") then
			CallDialogue("campaign-defeat", trigger_player)
		end
	end,
	Objectives = {"- Defeat the Ertebolle Tribe and the Gylfing Tribe", "- Wodanaz must survive"},
	DestroyFactions = {"ertebolle-tribe", "gylfing-tribe"},
	HeroesMustSurvive = {"voden"},
	Unobtainable = true
})

DefineQuest("the-great-temple-at-upsal", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 225.
	Name = "The Great Temple", -- the great temple built by Freyr (Yngve) in the Ynglinga saga in Upsal
	Icon = "icon-germanic-temple",
	Description = "My chieftain, we should buy a new, great temple for our people near Stukkahulma. Not only will it give them a new place of worship, but the wise priests it will host shall help us with tax collection.",
	World = "earth",
	Civilization = "germanic",
	PlayerColor = "blue",
	CompletionEffects = function(s)
		SetPlayerData(trigger_player, "Resources", "copper", GetPlayerData(trigger_player, "Resources", "copper") + 2000)
	end,
	Objectives = {"- Build a Temple in Stukkahulma"},
	Rewards = "+2000 Copper",
	Hint = "Select a Bura, press the Build Structure button and then click on the Temple button to build the structure required for this quest. Make sure it is closer to Stukkahulma's Chieftain's Hall than to that of another settlement.",
	BuildSettlementUnits = {"stockholm", "unit-germanic-temple", 1},
	Competitive = true
})

DefineQuest("the-good-seasons", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 225.
	Name = "The Good Seasons", -- the Swedes believed their chieftain Yngve (identified with Freyr) provided them good seasons
	Icon = "icon-germanic-farm",
	Description = "My chieftain, our lands have been blessed with good seasons, which our people ascribe to you. We should build more farms to take advantage of these fortunate times.",
	World = "earth",
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
	World = "earth",
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
	World = "earth",
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
	World = "earth",
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
	Civilization = "germanic",
	PlayerColor = "yellow",
	FailEffects = function(s)
		if (trigger_player == GetThisPlayer() and GetCurrentCampaign() == "heimdalls-progeny") then
			CallDialogue("campaign-defeat", trigger_player)
		end
	end,
	Objectives = {"- Conquer all of your home peninsula", "- Erala must survive"},
	HeroesMustSurvive = {"erala"},
	Uncompleteable = true,
	Unobtainable = true
})

DefineQuest("jarls-hall", { -- based on the Song of Rig; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 22-24.
	Name = "Erala's Hall", -- in the Song of Rig, Rig (the god Heimdall) fathers Thrall, Karl and Jarl, each of which originates a class of the Norse world; namely serfs, peasants and warriors; "jarl" is a reflex of Proto-Germanic "erala"
	Icon = "icon-germanic-town-hall",
	Description = "The fierce warrior Erala seeks to establish a hall for himself.",
	World = "earth",
	Civilization = "germanic",
	PlayerColor = "yellow",
	CompletionEffects = function(s)
		CallDialogue("jarls-hall-is-complete", trigger_player)
	end,
	Objectives = {"- Acquire some Buras", "- Build a Chieftain's Hall"},
	Hint = "Select a Bura, press the Build Structure button and then click on the Build Chieftain's Hall button to build the structure required for this quest.",
	BuildUnits = {"unit-germanic-town-hall", 1},
	HeroesMustSurvive = {"erala"},
	Unobtainable = true,
	Unfailable = true
})

DefineQuest("jarls-retainers", { -- based on the Song of Rig; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 24.
	Name = "Erala's Retainers",
	Icon = "icon-germanic-warrior",
	Description = "The young warrior Erala was fast to master the art of the sword. He proposes to train a few brave warriors to protect our homeland.",
	World = "earth",
	Civilization = "germanic",
	PlayerColor = "yellow",
	CompletionEffects = function(s)
	end,
	Objectives = {"- Train 5 Eralas"},
	Unobtainable = true,
	Unfailable = true,
	Hint = "Select a War Lodge and then click on the Train Erala button to train the unit required for this quest.",
	BuildUnits = {"unit-germanic-warrior", 5},
	HeroesMustSurvive = {"erala"}
})

DefineQuest("temple-to-heimdall", {
	Name = "Temple to Haimadala",
	Icon = "icon-germanic-temple",
	Description = "Our tribe's chieftain traces descent from the god Haimadala. We would do well to build a temple honoring the mighty deity.",
	PlayerColor = "yellow",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "jarling-tribe" or GetPlayerData(trigger_player, "Faction") == "karling-tribe" or GetPlayerData(trigger_player, "Faction") == "thralling-tribe") then -- must belong to one of the three factions whose progenitor is a son of Heimdall in the Rigsthula: the Jarlings/Eralings, Karlings and Thrallings/Thrahilings
			return true
		end
		return false
	end,
	CompletionEffects = function(s)
		SetPlayerData(trigger_player, "Resources", "copper", GetPlayerData(trigger_player, "Resources", "copper") + 2000)
	end,
	Objectives = {"- Build a Temple", "- Worship Haimadala"},
	BuildUnits = {"unit-germanic-temple", 1},
	ResearchUpgrades = {"upgrade-deity-heimdall"},
	Rewards = "+2000 Copper",
	Hint = "Select a Bura, press the Build Structure button and then click on the Build Temple button to build the structure required for this quest. Once the Temple has been built, click on it, and the Worship Haimadala button will be visible. In order for Haimadala to be available, a major deity (such as Wodanaz or Thunraz) will have to be chosen for worship first."
})

DefineQuest("heimdalls-stones", {
	Name = "Haimadala's Stones",
	Icon = "icon-germanic-temple",
	Description = "Our priests declare that the environs of Malmo would be a particularly auspicious location for building a temple dedicated to the god Haimadala, and urge you to begin its construction.",
	PlayerColor = "yellow",
	Conditions = function(s)
		if (
			GetUniqueItemData("heimdalls-stones", "CanDrop")
			and GetPlayerData(trigger_player, "Allow", "upgrade-deity-heimdall") == "R"
		) then
			return true
		end
		return false
	end,
	CompletionEffects = function(s)
		SetUnitVariable(FindUnit("unit-germanic-temple", trigger_player, false, true, "malmo"), "Unique", "heimdalls-stones")
	end,
	Objectives = {"- Build a Temple in Malmo"},
	Rewards = "The Temple will become the Haimadala's Stones unique building",
	Hint = "Select a Bura, press the Build Structure button and then click on the Build Temple button to build the structure required for this quest.",
	BuildSettlementUnits = {"malmo", "unit-germanic-temple", 1},
	Competitive = true
})

DefineQuest("journey-to-heimdalls-stones", {
	Name = "Journey to Haimadala's Stones",
	Icon = "icon-germanic-temple",
	Description = "Rumors have reached Erala's ears of a holy site called Haimadala's Stones. A visit to that location could grant him new insights into the god he holds to be his father.",
	PlayerColor = "yellow",
	Conditions = function(s)
		if (
			GetUniqueItemData("heimdalls-stones", "CanDrop") == false -- Heimdall's Stones must exist
		) then
			return true
		end
		return false
	end,
	AcceptEffects = function(s)
		local heimdalls_stones_unit = FindUnique("heimdalls-stones")
		unit = CreateUnit("unit-revealer", trigger_player, {GetUnitVariable(heimdalls_stones_unit, "PosX"), GetUnitVariable(heimdalls_stones_unit, "PosY")}, GetUnitVariable(heimdalls_stones_unit, "MapLayer"))
		SetUnitVariable(unit, "TTL", 600)
	end,
	CompletionEffects = function(s)
		SetUnitVariable(trigger_unit, "Xp", GetUnitVariable(trigger_unit, "Xp", "Max") + 500, "Max")
		SetUnitVariable(trigger_unit, "Xp", GetUnitVariable(trigger_unit, "Xp", "Max"))
	end,
	Objectives = {"- Visit Haimadala's Stones with Erala"},
	Rewards = "+500 XP for Erala",
	Hint = "A transport ship will likely be needed for Erala to reach Haimadala's Stones.",
	HeroesMustSurvive = {"erala"},
	Uncompleteable = true, -- completed by trigger
	Competitive = true
})

DefineQuest("master-of-metal", {
	Name = "Master of Metal",
	Icon = "icon-germanic-smithy",
	Description = "Control over metalworking is essential for a chieftain's status to be maintained. Building a smithy will foster your mastery over metal and attract followers.",
	World = "earth",
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
	World = "earth",
	Civilization = "germanic",
	PlayerColor = "yellow",
	Objectives = {"- Subjugate the Karlings"},
	HeroesMustSurvive = {"erala"},
	Unobtainable = true,
	Uncompleteable = true,
	Unfailable = true
})

DefineQuest("neutralize-the-hersings", {
	Name = "Neutralize the Hersings",
	Icon = "icon-germanic-chieftain",
	World = "earth",
	Civilization = "germanic",
	PlayerColor = "yellow",
	Objectives = {"- Ally with or defeat the Hersings"},
	HeroesMustSurvive = {"erala"},
	Unobtainable = true,
	Uncompleteable = true,
	Unfailable = true
})

DefineQuest("the-sun-shields", { -- Source: http://en.natmus.dk/historical-knowledge/denmark/prehistoric-period-until-1050-ad/the-bronze-age/the-bronze-age-shields/
	Name = "The Sun Shields", -- the Swedes believed their chieftain Yngve (identified with Freyr) provided them good seasons
	Icon = "icon-germanic-bronze-shield",
	Description = "A group of artisans has come to you with plans to produce circular bronze shields, embellished with details symbolizing the sun and the cycle of the seasons. However, they require investments in order to bring those plans to fruition.",
	World = "earth",
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

DefineQuest("thors-servant", {
	Name = "Thunraz's Servant",
	Icon = "icon-thor",
	World = "earth",
	Civilization = "germanic",
	PlayerColor = "white",
	CompletionEffects = function(s)
		if (trigger_player == GetThisPlayer() and GetCurrentCampaign() == "thors-servant") then
			CallDialogue("campaign-victory", trigger_player)
		end
	end,
	FailEffects = function(s)
		if (trigger_player == GetThisPlayer() and GetCurrentCampaign() == "thors-servant") then
			CallDialogue("campaign-defeat", trigger_player)
		end
	end,
	Objectives = {"- Fulfill Thunraz's wishes", "- Thialfi must survive"},
	HeroesMustSurvive = {"thialfi"},
	Uncompleteable = true,
	Unobtainable = true
})

DefineQuest("the-discovery-of-gotland", {
	Name = "The Discovery of Gotland",
	Icon = "icon-germanic-transport-ship",
	PlayerColor = "white",
	FailEffects = function(s)
		if (trigger_player == GetThisPlayer() and GetCurrentCampaign() == "thors-servant") then
			CallDialogue("campaign-defeat", trigger_player)
		end
	end,
	CompletionEffects = function(s)
		if (GetCurrentCampaign() == "thors-servant") then
			local thialfi_unit = FindHero("thialfi", trigger_player)
			if (thialfi_unit) then
				while (GetUnitVariable(thialfi_unit, "Level") < 2) do
					local xp_required = GetUnitVariable(thialfi_unit, "XPRequired")
					SetUnitVariable(thialfi_unit, "Xp", xp_required, "Max")
					SetUnitVariable(thialfi_unit, "Xp", xp_required)
				end
			end
		end
		CallDialogue("thialfi-settles-gotland", trigger_player)
	end,
	Objectives = {"- Build a Chieftain's Hall in Gotland"},
	BuildSettlementUnits = {"visby", "unit-germanic-town-hall", 1},
	Unobtainable = true,
	Competitive = true
})

DefineQuest("thors-servant-thors-temple", {
	Name = "Thunraz's Temple",
	Icon = "icon-germanic-temple",
	PlayerColor = "white",
	FailEffects = function(s)
		if (trigger_player == GetThisPlayer() and GetCurrentCampaign() == "thors-servant") then
			CallDialogue("campaign-defeat", trigger_player)
		end
	end,
	CompletionEffects = function(s)
		if (GetCurrentCampaign() == "thors-servant") then
			local thialfi_unit = FindHero("thialfi", trigger_player)
			if (thialfi_unit) then
				while (GetUnitVariable(thialfi_unit, "Level") < 3) do
					local xp_required = GetUnitVariable(thialfi_unit, "XPRequired")
					SetUnitVariable(thialfi_unit, "Xp", xp_required, "Max")
					SetUnitVariable(thialfi_unit, "Xp", xp_required)
				end
			end
		end
		CallDialogue("thors-servant-temple-complete", trigger_player)
	end,
	Objectives = {"- Build a Temple in Gotland", "- Worship Thunraz"},
	BuildSettlementUnitsOfClass = {"visby", "temple", 1},
	ResearchUpgrades = {"upgrade-deity-thor"},
	Unobtainable = true,
	Unfailable = true, -- to prevent the mission failing due to a lack of a Carpenter's Shop
	Competitive = true
})

DefineQuest("slay-the-berserker-brides-at-hlesey", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 119.
	Name = "Slay the Wild Folk at Hlesey",
	Icon = "icon-germanic-warrior",
	Description = "The wild folk at Hlesey have been attacking passing ships. The priests of Thunraz urge us to eliminate this threat, and restore safe passage in those waters.",
	PlayerColor = "black",
	Conditions = function(s)
		if (
			GetPlayerData(trigger_player, "UnitTypesCount", "unit-germanic-dock") > 0 -- the player must have a dock
			and GetPlayerData(trigger_player, "Allow", "upgrade-deity-thor") == "R" -- must be a worshipper of Thor/Thunraz
			and GetNumUnitsAt(trigger_player, "buildings", {4089 - 128 - EarthStartX, 745 - 128 - EarthStartY}, {4089 + 128 - EarthStartX, 745 + 128 - EarthStartY}, GetMapLayer("material-plane", "earth", 0)) > 0 -- the player must have a building relatively close to Hlesey
		) then
			return true
		end
		return false
	end,
	FailEffects = function(s)
		if (trigger_player == GetThisPlayer() and GetCurrentCampaign() == "thors-servant") then
			CallDialogue("campaign-defeat", trigger_player)
		end
	end,
	CompletionEffects = function(s)
		SetPlayerData(trigger_player, "Resources", "copper", GetPlayerData(trigger_player, "Resources", "copper") + 1500)
		if (GetCurrentCampaign() == "thors-servant") then
			local thialfi_unit = FindHero("thialfi", trigger_player)
			if (thialfi_unit) then
				while (GetUnitVariable(thialfi_unit, "Level") < 4) do
					local xp_required = GetUnitVariable(thialfi_unit, "XPRequired")
					SetUnitVariable(thialfi_unit, "Xp", xp_required, "Max")
					SetUnitVariable(thialfi_unit, "Xp", xp_required)
				end
			end
			CallDialogue("thors-servant-berserker-brides-killed", trigger_player)
		end
	end,
	Objectives = {"- Destroy the Hlesings"},
	Rewards = "+1500 Copper",
	DestroyFactions = {"hlesing-tribe"},
	Competitive = true
})

DefineQuest("slay-geirrod", {
	Name = "Slay Geirrod",
	Icon = "icon-ettin",
	PlayerColor = "red",
	CompletionEffects = function(s)
		CallDialogue("thors-servant-geirrod-killed", trigger_player)
	end,
	FailEffects = function(s)
		if (trigger_player == GetThisPlayer() and GetCurrentCampaign() == "thors-servant") then
			CallDialogue("campaign-defeat", trigger_player)
		end
	end,
	Objectives = {"- Kill Geirrod"},
	DestroyCharacters = {"geirrod-ettin"},
	Unobtainable = true,
	Competitive = true
})

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
--      (c) Copyright 1998-2016 by Lutz Sammer, Pali Rohár and Andrettin
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

-- For documentation see stratagus/doc/scripts/scripts.html
DebugPrint("Stratagus default config file loading ...\n")

-------------------------------------------------------------------------------
--  Version
-------------------------------------------------------------------------------

wyrmsun = {}

wyrmsun.Name = "Wyrmsun"
wyrmsun.Version = "2.2.7"
wyrmsun.Homepage = ""
wyrmsun.Licence = "GPL 2.0"
wyrmsun.Copyright = "Copyright (c) 2013-2016 by Andrettin"

-------------------------------------------------------------------------------
--  Config-Part
-------------------------------------------------------------------------------

MapDirectories = {"maps/"}
ModDirectories = {"mods/"}

if (table.getn(ListDirsInDirectory("../../workshop/content/370070/")) > 0) then
	table.insert(ModDirectories, "../../workshop/content/370070/")
end


LoadedGame = false

InitFuncs = {}
function InitFuncs:add(f)
	table.insert(self, f)
end

function InitGameVariables()
	for i=1,table.getn(InitFuncs) do
		InitFuncs[i]()
	end
end

DefineBoolFlags("Center", "LumberImprove", "OilImprove", "StoneImprove")

--  Edit the next sections to get your look and feel.
--  Note, some of those values are overridden by user preferences,
--  see preferences.lua

--  Enter your default title screen.
SetTitleScreens(
-- FIXME: No good title image yet
--  {Image = "ui/title.png", Music = "music/battle_theme_a.ogg", Timeout = 20}
)

-------------------------------------------------------------------------------
--	Music play list -	Insert your titles here
-------------------------------------------------------------------------------

--  Set the game name. It's used so we can mantain different savegames
--  and setting. Might also be used for multiplayer.
SetGameName("wyr")
SetFullGameName(wyrmsun.Name)

SetMenuRace("dwarf")

SetSelectionStyle("corners")
Preference.ShowSightRange = false
Preference.ShowAttackRange = false
Preference.ShowReactionRange = false
Preference.AiExplores = true
Preference.IconsShift = true
Preference.IconFrameG = CGraphic:New("ui/icon_frame.png", 54, 46)
Preference.PressedIconFrameG = CGraphic:New("ui/icon_frame_pressed.png", 54, 46)
Preference.CommandButtonFrameG = CGraphic:New("ui/command_button_frame.png", 56, 46)
Preference.BarFrameG = CGraphic:New("ui/bar_frame.png", 58, 12)
Preference.InfoPanelFrameG = CGraphic:New("ui/infopanel_frame.png", 214, 88)
Preference.ProgressBarG = CGraphic:New("ui/progress_bar.png", 160, 24)
Preference.MineNotifications = true
Preference.NoStatusLineTooltips = true
Preference.PauseOnLeave = false
Preference.GrayscaleIcons = true
Preference.SepiaForGrayscale = true

Preference.ShowOrders = 2

--  Enable/disable the short display of the orders after command.
--  FIXME: planned
--(set-order-feedback! #t)
--(set-order-feedback! #f)

-------------------------------------------------------------------------------
--  Game modification

--  Edit this to enable/disable extended features.
--    Currently enables some additional buttons.
wyrmsun.extensions = true
--wyrmsun.extensions = false

--  Edit this to enable/disable the training queues.
SetTrainingQueue(true)
--SetTrainingQueue(false)

--  Edit this to enable/disable building capture.
--SetBuildingCapture(true)
SetBuildingCapture(false)

--  Set forest regeneration speed. (n* seconds, 0 = disabled)
SetForestRegeneration(600)

--  Edit this to enable/disable the reveal of the attacker.
--SetRevealAttacker(true)
SetRevealAttacker(false)

-------------------------------------------------------------------------------

--  If you prefer fighters are attacking by right clicking empty space
--  uncomment this (you must comment the next).
--  FIXME: this option will be renamed
--RightButtonAttacks()

--  If you prefer fighters are moving by right clicking empty space
--  uncomment this.
--  FIXME: this option will be renamed
RightButtonMoves()

--  Set the name of the missile to use when clicking
SetClickMissile("missile-green-cross")

--  Set the name of the missile to use when displaying damage
SetDamageMissile("missile-hit")

--  Uncomment next, to reveal the complete map.
--RevealMap()

SetFogOfWarGraphics("tilesets/fogofwar.png")

-------------------------------------------------------------------------------

Load("scripts/resources.lua")

-------------------------------------------------------------------------------

DefinePlayerColorIndex(208, 4)

DefinePlayerColors({
	"red", {{164, 0, 0}, {124, 0, 0}, {92, 4, 0}, {68, 4, 0}},
	"blue", {{12, 72, 204}, {4, 40, 160}, {0, 20, 116}, {0, 4, 76}},
	"green", {{24, 119, 23}, {2, 96, 1}, {2, 61, 1}, {9, 32, 9}},
	"violet", {{152, 72, 176}, {116, 44, 132}, {80, 24, 88}, {44, 8, 44}},
	"orange", {{248, 140, 20}, {200, 96, 16}, {152, 60, 16}, {108, 32, 12}},
	"black", {{40, 40, 60}, {28, 28, 44}, {20, 20, 32}, {12, 12, 20}},
	"white", {{162, 152, 182}, {118, 103, 141}, {78, 65, 105}, {38, 22, 65}},
	"yellow", {{147, 164, 21}, {113, 126, 16}, {73, 83, 8}, {48, 53, 11}},
	"pink", {{164, 21, 97}, {126, 16, 75}, {90, 12, 53}, {55, 0, 28}},
	"cyan", {{75, 130, 155}, {35, 90, 115}, {11, 50, 69}, {0, 27, 41}},
	"teal", {{44, 180, 148}, {20, 132, 92}, {4, 84, 44}, {0, 40, 12}},
	"purple", {{148, 28, 150}, {121, 12, 122}, {87, 1, 88}, {54, 0, 54}},
	"fire", {{241, 172, 0}, {222, 80, 22}, {185, 0, 0}, {111, 0, 0}},
	"brown", {{170, 119, 0}, {134, 82, 0}, {98, 47, 0}, {70, 23, 15}},
	"radioactive", {{248, 254, 1}, {154, 204, 5}, {103, 146, 4}, {51, 74, 2}},
	"gray", {{116, 104, 99}, {97, 85, 80}, {74, 62, 57}, {48, 36, 31}},
	"acid", {{229, 11, 217}, {144, 18, 206}, {82, 0, 185}, {42, 0, 111}}
})

DefineConversiblePlayerColors("violet")

DefineSkinColors({
	"white", {{255, 223, 169}, {246, 212, 155}, {228, 189, 123}, {237, 201, 141}, {215, 179, 119}, {203, 164, 98}, {195, 157, 94}, {186, 150, 90}, {181, 145, 85}, {169, 130, 64}, {166, 130, 70}, {157, 121, 61}, {147, 111, 51}, {142, 103, 37}, {140, 104, 44}, {132, 96, 36}, {134, 98, 38}, {129, 93, 33}, {125, 89, 29}, {121, 85, 25}, {120, 84, 24}, {115, 79, 19}, {110, 74, 13}, {108, 72, 11}, {101, 65, 4}, {100, 64, 3}, {99, 61, 0}, {92, 58, 0}, {78, 50, 0}, {65, 41, 0}, {33, 22, 0}},
	"gray", {{219, 205, 191}, {196, 176, 176}, {191, 166, 166}, {182, 157, 157}, {163, 139, 139}, {166, 141, 141}, {151, 126, 126}, {141, 116, 116}, {136, 111, 111}, {133, 108, 108}, {124, 99, 99}, {117, 92, 92}, {109, 84, 84}, {104, 84, 80}, {103, 78, 78}, {97, 72, 72}, {98, 73, 73}, {94, 69, 69}, {91, 66, 66}, {88, 63, 63}, {87, 62, 62}, {83, 58, 58}, {79, 54, 54}, {77, 52, 52}, {72, 47, 47}, {71, 46, 46}, {69, 44, 44}, {65, 40, 40}, {58, 33, 33}, {51, 26, 26}, {35, 10, 10}},
	"light-green", {{193, 197, 167}, {187, 191, 157}, {187, 194, 159}, {184, 193, 150}, {172, 183, 125}, {173, 184, 129}, {165, 176, 111}, {154, 166, 101}, {149, 162, 96}, {128, 139, 82}, {137, 150, 87}, {129, 141, 83}, {116, 129, 78}, {114, 125, 73}, {109, 122, 75}, {101, 113, 71}, {103, 115, 73}, {96, 109, 70}, {93, 106, 69}, {88, 101, 67}, {87, 100, 66}, {81, 94, 64}, {76, 89, 62}, {72, 85, 60}, {67, 79, 60}, {65, 78, 59}, {62, 75, 58}, {52, 69, 52}, {43, 57, 48}, {33, 47, 44}, {13, 28, 36}},
	"blue", {{188, 212, 206}, {158, 188, 206}, {149, 180, 205}, {137, 174, 206}, {108, 161, 201}, {112, 162, 201}, {91, 152, 196}, {81, 141, 186}, {76, 137, 183}, {75, 134, 180}, {68, 124, 170}, {65, 116, 159}, {63, 105, 145}, {58, 104, 141}, {61, 97, 136}, {59, 90, 126}, {60, 91, 128}, {59, 86, 121}, {58, 81, 117}, {57, 77, 112}, {56, 76, 110}, {55, 71, 103}, {54, 66, 97}, {53, 63, 93}, {54, 57, 85}, {54, 56, 84}, {54, 53, 80}, {54, 47, 74}, {53, 39, 61}, {51, 29, 49}, {43, 7, 21}},
	"pale-blue", {{135, 168, 188}, {135, 168, 188}, {143, 167, 185}, {143, 167, 185}, {118, 146, 166}, {118, 146, 166}, {105, 142, 165}, {105, 142, 165}, {89, 127, 151}, {89, 127, 151}, {89, 125, 148}, {89, 125, 148}, {83, 113, 134}, {83, 113, 134}, {80, 111, 132}, {80, 111, 132}, {77, 108, 128}, {77, 108, 128}, {76, 105, 124}, {76, 105, 124}, {66, 92, 111}, {66, 92, 111}, {66, 91, 108}, {66, 91, 108}, {58, 79, 83}, {58, 79, 83}, {54, 74, 88}, {49, 66, 79}, {49, 66, 79}, {42, 54, 63}, {38, 51, 60}}
})

DefineHairColors({
	"black", {{71, 71, 88}, {63, 63, 78}, {52, 52, 64}, {45, 45, 56}, {42, 42, 52}, {37, 37, 46}, {38, 38, 47}, {32, 32, 39}, {29, 29, 36}, {23, 23, 28}, {19, 19, 23}, {13, 13, 17}, {11, 11, 13}},
	"blond", {{208, 192, 28}, {188, 164, 20}, {168, 140, 16}, {152, 120, 12}, {152, 120, 11}, {136, 100, 7}, {128, 96, 36}, {120, 88, 28}, {108, 76, 24}, {88, 56, 11}, {72, 44, 3}, {44, 24, 0}, {36, 20, 0}},
	"brown", {{126, 73, 27}, {114, 66, 28}, {99, 58, 30}, {90, 52, 30}, {87, 54, 30}, {78, 48, 30}, {79, 46, 30}, {71, 41, 30}, {66, 40, 30}, {55, 32, 30}, {48, 30, 30}, {38, 24, 29}, {36, 24, 28}},
	"red", {{146, 52, 36}, {134, 39, 31}, {115, 36, 28}, {100, 32, 25}, {96, 36, 24}, {86, 30, 21}, {87, 26, 22}, {75, 28, 20}, {70, 26, 19}, {56, 20, 16}, {48, 18, 15}, {37, 18, 12}, {32, 15, 11}},
	"gray", {{172, 174, 187}, {156, 159, 175}, {132, 136, 155}, {117, 120, 138}, {112, 115, 134}, {102, 105, 121}, {103, 106, 122}, {91, 94, 109}, {86, 88, 101}, {69, 71, 82}, {59, 61, 70}, {46, 47, 55}, {40, 41, 48}},
	"dark-blond", {{164, 164, 46}, {149, 149, 43}, {126, 126, 39}, {109, 109, 36}, {104, 104, 34}, {90, 91, 31}, {87, 88, 37}, {79, 80, 29}, {69, 70, 30}, {58, 59, 19}, {50, 51, 16}, {39, 39, 10}, {32, 32, 10}},
	"green", {{110, 150, 31}, {108, 138, 27}, {92, 118, 24}, {81, 103, 22}, {71, 99, 21}, {65, 88, 18}, {71, 89, 19}, {57, 77, 17}, {54, 72, 17}, {45, 57, 14}, {39, 49, 13}, {26, 38, 11}, {24, 33, 10}},
})

--  If color-cycle-all is off (#f) only the tileset palette is color cycled.
-- Otherwise (#t) all palettes are color cycled.
SetColorCycleAll(false)
ClearAllColorCyclingRange()
AddColorCyclingRange(38, 47) -- water

-------------------------------------------------------------------------------

--  Edit next to increase the speed, for debugging.

--  Decrease the mining time by this factor.
--SetSpeedResourcesHarvest("gold", 10)
--  Decrease the time in a gold deposit by this factor.
--SetSpeedResourcesReturn("gold", 10)
--  Decrease the time for chopping a tree by this factor.
--SetSpeedResourcesHarvest("lumber", 10)
--  Decrease the time in a lumber deposit by this factor.
--SetSpeedResourcesReturn("lumber", 10)
--  Decrease the time for haul oil by this factor.
--SetSpeedResourcesHarvest("oil", 10)
--  Decrease the time in an oil deposit by this factor.
--SetSpeedResourcesReturn("oil", 10)
--  Decrease the time to build a unit by this factor.
--SetSpeedBuild(10)
--  Decrease the time to train a unit by this factor.
--SetSpeedTrain(10)
--  Decrease the time to upgrade a unit by this factor.
--SetSpeedUpgrade(10)
--  Decrease the time to research by this factor.
--SetSpeedResearch(10)

--  You can do all the above with this
InitFuncs:add(function()
	SetSpeeds(1)
end)

-------------------------------------------------------------------------------

AStar("fixed-unit-cost", 1000, "moving-unit-cost", 20, "know-unseen-terrain", "unseen-terrain-cost", 2)

-------------------------------------------------------------------------------

--  Maximum number of selectable units
SetMaxSelectable(36)

--  All player food unit limit
SetAllPlayersUnitLimit(200)
--  All player building limit
SetAllPlayersBuildingLimit(200)
--  All player total unit limit
SetAllPlayersTotalUnitLimit(400)

-------------------------------------------------------------------------------

DefineVariables(
	"LevelUp", {Enable = true},
	"Variation", {Enable = true},
	"Slow", {Max = 1000, Value = 0, Enable = true},
	"GraphicsVariation", {Max = 255, Value = 0, Increase = 0, Enable = true},
	"LifeStage", {Max = 99999, Value = 0, Increase = 0, Enable = true},
	"LastCycle", {Max = 99999, Value = 0, Increase = 0, Enable = true},
	"CustomAIState", {Max = 99999, Value = 0, Increase = 0, Enable = true}
)

-------------------------------------------------------------------------------
-- Custom Player Data (i.e. Objectives)

	CustomPlayerData = { Player1 = { Number = 0, Objectives = {} }, Player2 = { Number = 1, Objectives = {} }, Player3 = { Number = 2, Objectives = {} }, Player4 = { Number = 3, Objectives = {} }, Player5 = { Number = 4, Objectives = {} }, Player6 = { Number = 5, Objectives = {} }, Player7 = { Number = 6, Objectives = {} }, Player8 = { Number = 7, Objectives = {} }, Player9 = { Number = 8, Objectives = {} }, Player10 = { Number = 9, Objectives = {} }, Player11 = { Number = 10, Objectives = {} }, Player12 = { Number = 11, Objectives = {} }, Player13 = { Number = 12, Objectives = {} }, Player14 = { Number = 13, Objectives = {} }, Player15 = { Number = 14, Objectives = {} }, Player16 = { Number = 15, Objectives = {} } }

-------------------------------------------------------------------------------
--  Default triggers for single player
--    (FIXME: must be combined with game types)

function SinglePlayerTriggers()
	AddTrigger(
		function()
			local total_units = GetPlayerData(GetThisPlayer(), "TotalNumUnits") - GetPlayerData(GetThisPlayer(), "UnitTypesCount", "unit-goblin-glider")
			total_units = total_units - GetPlayerData(GetThisPlayer(), "UnitTypesCount", "unit-gold-mine") - GetPlayerData(GetThisPlayer(), "UnitTypesCount", "unit-silver-mine") - GetPlayerData(GetThisPlayer(), "UnitTypesCount", "unit-copper-mine")
			if (GetCivilizationClassUnitType("farm", GetPlayerData(GetThisPlayer(), "RaceName")) ~= nil) then
				total_units = total_units - GetPlayerData(GetThisPlayer(), "UnitTypesCount", GetCivilizationClassUnitType("farm", GetPlayerData(GetThisPlayer(), "RaceName")))
			end
			if (total_units <= 0 and PlayerHasObjective(GetThisPlayer(), "- Defeat the Norlunds") == false and (GameCycle > 1000 or mapinfo.description ~= "Caverns of Flame" or GetPlayerData(GetThisPlayer(), "Name") ~= "Shinsplitter Clan")) then
				return true
			end
		end,
		function()
			return ActionDefeat()
		end
	)

	AddTrigger(
--		function() return GetNumOpponents(GetThisPlayer()) == 0 end,
		function()
			if (GetNumRivals(GetThisPlayer()) == 0 and PlayerHasObjective(GetThisPlayer(), "- Defeat your enemies")) then
				return true
			end
		end,
		function()
			return ActionVictory()
		end
	)

	if (GrandStrategy and GrandStrategyEventMap == false) then
		AddTrigger(
			function()
				return true
			end,
			function()
				local revolt = false
				if (GetFactionProvinceCount(GetFactionFromName(Attacker)) == 0 and GetProvinceOwner(AttackedProvince.Name) ~= "" and GetFactionDiplomacyState(GetFactionFromName(Attacker).Civilization, Attacker, GetFactionFromName(Defender).Civilization, Defender) == "peace") then -- if the attacker doesn't own any provinces, then this must be a revolt
					revolt = true
				end
				
				if not (revolt) then
					AddMessage("Battle in " .. GetProvinceName(AttackedProvince))
				else
					AddMessage("Revolt in " .. GetProvinceName(AttackedProvince))
				end
				return false
			end
		)
	end
	
	if (LoadedGame == false) then
		for key, value in pairs(CustomPlayerData) do
			for i=1,table.getn(CustomPlayerData[key].Objectives) do
				table.remove(CustomPlayerData[key].Objectives, i)
			end
		end

		for key, value in pairs(CustomPlayerData) do
			CustomPlayerData[key].Objectives = {_("- Defeat your enemies")}
		end
	end
	
	if (LoadedGame) then -- if loading a game, add objectives to the display
		ClearObjectives()
		for key, value in pairs(CustomPlayerData) do
			if (CustomPlayerData[key].Number == GetThisPlayer() and table.getn(CustomPlayerData[key].Objectives) > 0) then
				for i=1,table.getn(CustomPlayerData[key].Objectives) do
					AddObjective(_(CustomPlayerData[key].Objectives[i]))
				end
			end
		end
	end
	
	CreateDecorations()

	StandardTriggers()

	-- make players have the correct names in grand strategy mode
	for i=0,14 do
		if (GrandStrategy and GrandStrategyEventMap == false and GrandStrategyBattle and GrandStrategyFaction ~= nil) then
			if (Players[i].Type == PlayerPerson or Players[i].Type == PlayerComputer) then
				if (Players[i].Type == PlayerPerson) then
					SetPlayerData(i, "Name", GrandStrategyFaction.Name)
				elseif (Players[i].Type == PlayerComputer) then
					if (GrandStrategyFaction.Name == Attacker) then
						SetPlayerData(i, "Name", Defender)
					elseif (GrandStrategyFaction.Name == Defender) then
						SetPlayerData(i, "Name", Attacker)
					end
				end
			end
		end
	end
	
	if (LoadedGame == false) then
		DefineAllowNormalUnits("AAAAAAAAAAAAAAAA")
		if (GrandStrategy == false) then
			ApplyTechLevels()
		end
		if (GrandStrategy) then
			for i=0,14 do
				if (GetPlayerData(i, "Name") == Attacker or (GetPlayerData(i, "Name") == Defender and GetProvinceOwner(AttackedProvince.Name) ~= "")) then
					if (GetPlayerData(i, "TotalNumUnits") > 0 and GetFactionFromName(GetPlayerData(i, "Name")) ~= nil) then
						for j, unitName in ipairs(Units) do -- if in grand strategy mode, apply upgrades researched
							if (string.find(unitName, "upgrade-") ~= nil) then
								if (GetFactionTechnology(GetPlayerData(i, "RaceName"), GetPlayerData(i, "Name"), unitName)) then
									SetPlayerData(i, "Allow", unitName, "R")
								else
									SetPlayerData(i, "Allow", unitName, "F")
								end
							end
						end
					end
				end
			end
		end
	end

	if (GetCurrentQuest() ~= "" and GetQuestData(GetCurrentQuest(), "Scenario") ~= "") then
		if (table.getn(GetQuestData(GetCurrentQuest(), "Objectives")) > 0) then -- if quest has pre-set objectives, add them now
			RemovePlayerObjective(GetThisPlayer(), "- Defeat your enemies")
			for i=1, table.getn(GetQuestData(GetCurrentQuest(), "Objectives")) do
				AddPlayerObjective(GetThisPlayer(), GetQuestData(GetCurrentQuest(), "Objectives")[i])
			end
		end
		Load(GetQuestData(GetCurrentQuest(), "Scenario"))
	end

	-- for now events are limited to single player
	if (not IsNetworkGame()) then
		EventTriggers()
	end

	FlavorDialogueTriggers()
		
	LoadedGame = false
end

function StandardTriggers()
	local RandomNumber = 0

	AddTrigger(
		function()
			if (GameCycle == 0) then
				return false
			end
			return true
		end,
		function()
			local uncount = 0
			uncount = GetUnits("any")
			for unit1 = 1,table.getn(uncount) do 

				-- set the graphics variation for individual units of certain unit types
				if (GetUnitVariable(uncount[unit1],"GraphicsVariation") == 0) then
					if ((GetUnitVariable(uncount[unit1], "Ident") == "unit-large-flower" and wyrmsun.tileset == "swamp")) then
						SetUnitVariable(uncount[unit1], "GraphicsVariation", (SyncRand(12) + 1))
					elseif ((GetUnitVariable(uncount[unit1], "Ident") == "unit-fern" and wyrmsun.tileset == "swamp")) then
						SetUnitVariable(uncount[unit1], "GraphicsVariation", (SyncRand(4) + 1))
					elseif ((GetUnitVariable(uncount[unit1], "Ident") == "unit-flowers" and wyrmsun.tileset == "swamp") or (GetUnitVariable(uncount[unit1], "Ident") == "unit-large-flower" and (wyrmsun.tileset == "conifer_forest_summer" or wyrmsun.tileset == "conifer_forest_autumn" or wyrmsun.tileset == "fairlimbed_forest"))) then
						SetUnitVariable(uncount[unit1], "GraphicsVariation", (SyncRand(3) + 1))
					end
				end

				-- grow mushrooms
				if (GetUnitVariable(uncount[unit1], "Ident") == "unit-mushroom" or GetUnitVariable(uncount[unit1], "Ident") == "unit-mushroom-patch") then
					if (GameCycle >= GetUnitVariable(uncount[unit1], "LastCycle") + 750) then
						if (GetUnitVariable(uncount[unit1], "LifeStage") < 13) then
							SetUnitVariable(uncount[unit1], "LifeStage", GetUnitVariable(uncount[unit1], "LifeStage") + 1)
						else
							SetUnitVariable(uncount[unit1], "LifeStage", 1)
						end
						SetUnitVariable(uncount[unit1], "LastCycle", GameCycle)
					end
					
					local critter_quantity = GetNumUnitsAt(15, "unit-critter", {GetUnitVariable(uncount[unit1],"PosX") - 1, GetUnitVariable(uncount[unit1],"PosY") - 1}, {GetUnitVariable(uncount[unit1],"PosX") + 1, GetUnitVariable(uncount[unit1],"PosY") + 1})
					if (critter_quantity > 0 and GetUnitVariable(uncount[unit1], "LifeStage") < 8) then
						SetUnitVariable(uncount[unit1], "LifeStage", 13)
						SetUnitVariable(uncount[unit1], "LastCycle", GameCycle)
					end
				end

				-- change 96x96 neutral building ownership depending on nearby player units
				if (GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Capturable")) then
					local mercenary_camp_player = 15
					for i=0,14 do
						if (GetNumUnitsAt(i, "units", {GetUnitVariable(uncount[unit1],"PosX") - 1, GetUnitVariable(uncount[unit1],"PosY") - 1}, {GetUnitVariable(uncount[unit1],"PosX") + 4, GetUnitVariable(uncount[unit1],"PosY") + 4}) > 0) then
							if (mercenary_camp_player ~= 15) then
								mercenary_camp_player = 16
							else
								mercenary_camp_player = i
							end
						end
					end
					if (mercenary_camp_player < 15 and mercenary_camp_player ~= GetUnitVariable(uncount[unit1], "Player")) then
						for i=-1,3 do
							for j=-1,3 do
								OrderUnit(mercenary_camp_player, "units", {GetUnitVariable(uncount[unit1],"PosX") + i, GetUnitVariable(uncount[unit1],"PosY") + j}, {GetUnitVariable(uncount[unit1],"PosX") + i, GetUnitVariable(uncount[unit1],"PosY") + j}, "move")
							end
						end
						ChangeUnitOwner(uncount[unit1], mercenary_camp_player)
					end
				end
				
				-- make AI guard towers be filled with defenders
				if (GetPlayerData(GetUnitVariable(uncount[unit1], "Player"), "AiEnabled") and GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Class") == "guard-tower"  and GetUnitVariable(uncount[unit1], "Transport") < 2) then
					unit = CreateUnitInTransporter(GetCivilizationClassUnitType("shooter", GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Civilization")), GetUnitVariable(uncount[unit1], "Player"), uncount[unit1])
					SetUnitVariable(unit, "Active", false) -- set garrisoned unit to passive AI (so that they are not counted for attack participation)
				end
				
				-- make AI strongholds be filled with defenders
				if (GetPlayerData(GetUnitVariable(uncount[unit1], "Player"), "AiEnabled") and GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Class") == "stronghold"  and GetUnitVariable(uncount[unit1], "Transport") < 3) then
					unit = CreateUnitInTransporter(GetCivilizationClassUnitType("shooter", GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Civilization")), GetUnitVariable(uncount[unit1], "Player"), uncount[unit1])
					SetUnitVariable(unit, "Active", false) -- set garrisoned unit to passive AI (so that they are not counted for attack participation)
				end
				
				-- AI units inside tree stumps get out to attack if an enemy is near
				if ((GetUnitVariable(uncount[unit1], "Ident") == "unit-tree-stump" or GetUnitVariable(uncount[unit1], "Ident") == "unit-hole") and GetUnitVariable(uncount[unit1], "Transport") > 0) then
					local inside_uncount = 0
					inside_uncount = GetUnitsInsideUnit(uncount[unit1])
					for unit2 = 1,table.getn(inside_uncount) do
						if (GetPlayerData(GetUnitVariable(inside_uncount[unit2], "Player"), "AiEnabled")) then
							local nearby_uncount = 0
							nearby_uncount = GetUnitsAroundUnit(uncount[unit1], GetUnitVariable(inside_uncount[unit2], "SightRange") / 2, true)
							for unit3 = 1,table.getn(nearby_uncount) do 
								if (Players[GetUnitVariable(inside_uncount[unit2], "Player")]:IsEnemy(Players[GetUnitVariable(nearby_uncount[unit3],"Player")])) then
									OrderUnit(15, GetUnitVariable(uncount[unit1], "Ident"), {GetUnitVariable(uncount[unit1],"PosX"), GetUnitVariable(uncount[unit1],"PosY")}, {GetUnitVariable(nearby_uncount[unit3],"PosX"), GetUnitVariable(nearby_uncount[unit3],"PosY")}, "unload")
								end
							end
						elseif (GetUnitVariable(inside_uncount[unit2], "Player") == 15 and GetUnitTypeData(GetUnitVariable(inside_uncount[unit2], "Ident"), "Fauna")) then -- animals hiding within holes or stumps exit if a faction's unit is nearby
							local unit_quantity = 0
							for i=0,14 do
								unit_quantity = unit_quantity + GetNumUnitsAt(i, "any", {GetUnitVariable(uncount[unit1],"PosX") - (GetUnitVariable(inside_uncount[unit2], "SightRange") / 2), GetUnitVariable(uncount[unit1],"PosY") - (GetUnitVariable(inside_uncount[unit2], "SightRange") / 2)}, {GetUnitVariable(uncount[unit1],"PosX") + (GetUnitVariable(inside_uncount[unit2], "SightRange") / 2) + 1, GetUnitVariable(uncount[unit1],"PosY") + (GetUnitVariable(inside_uncount[unit2], "SightRange") / 2) + 1})
							end
							if (unit_quantity > 0) then
								OrderUnit(15, GetUnitVariable(uncount[unit1], "Ident"), {GetUnitVariable(uncount[unit1],"PosX"), GetUnitVariable(uncount[unit1],"PosY")}, {GetUnitVariable(uncount[unit1],"PosX"), GetUnitVariable(uncount[unit1],"PosY")}, "unload")
							end
						end
					end
				end

				-- make certain critters retaliate if people get too near
				-- is not working (neutral player critters don't attack no matter what)
--				if (GetUnitVariable(uncount[unit1], "Ident") == "unit-critter") then
--					local people_quantity = GetNumUnitsAt(-1, "units", {GetUnitVariable(uncount[unit1],"PosX") - 1, GetUnitVariable(uncount[unit1],"PosY") - 1}, {GetUnitVariable(uncount[unit1],"PosX") + 1, GetUnitVariable(uncount[unit1],"PosY") + 1})
--					if (people_quantity > 0) then
--						local nearby_uncount = 0
--						nearby_uncount = GetUnitsAroundUnit(uncount[unit1], 1, false)
--						for unit2 = 1,table.getn(nearby_uncount) do 
--							if (GetUnitVariable(nearby_uncount[unit2], "Player") ~= 15) then
--								OrderUnit("any", "unit-critter", {GetUnitVariable(uncount[unit1],"PosX"), GetUnitVariable(uncount[unit1],"PosY")}, {GetUnitVariable(nearby_uncount[unit2],"PosX"), GetUnitVariable(nearby_uncount[unit2],"PosY")}, "attack")
--							end
--						end
--					end
--				end

				if (GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Trap") and GetUnitVariable(uncount[unit1], "HitPoints") > 0) then
					local people_quantity = GetNumUnitsAt(-1, "units", {GetUnitVariable(uncount[unit1],"PosX"), GetUnitVariable(uncount[unit1],"PosY")}, {GetUnitVariable(uncount[unit1],"PosX"), GetUnitVariable(uncount[unit1],"PosY")})
					if (people_quantity > 0) then
						local nearby_uncount = 0
						nearby_uncount = GetUnitsAroundUnit(uncount[unit1], 0, true)
						for unit2 = 1,table.getn(nearby_uncount) do 
							if ((GetUnitVariable(uncount[unit1], "BasicDamage") > 0 or GetUnitVariable(uncount[unit1], "PiercingDamage") > 0) and GetUnitTypeData(GetUnitVariable(nearby_uncount[unit2], "Ident"), "Type") ~= "fly" and GetUnitTypeData(GetUnitVariable(nearby_uncount[unit2], "Ident"), "Type") ~= "fly-low" and GetUnitTypeData(GetUnitVariable(nearby_uncount[unit2], "Ident"), "organic")) then
								local hp_lost = GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "BasicDamage") + GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "PiercingDamage")
								-- apply resistances
								if (GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "HackDamage")) then
									hp_lost = math.floor(hp_lost * (100 - GetUnitVariable(nearby_uncount[unit2], "HackResistance")) / 100)
								elseif (GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "PierceDamage")) then
									hp_lost = math.floor(hp_lost * (100 - GetUnitVariable(nearby_uncount[unit2], "PierceResistance")) / 100)
								elseif (GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "BluntDamage")) then
									hp_lost = math.floor(hp_lost * (100 - GetUnitVariable(nearby_uncount[unit2], "BluntResistance")) / 100)
								end
								if (GetUnitVariable(nearby_uncount[unit2], "Player") == GetThisPlayer()) then
									AddMessage(GetUnitVariable(uncount[unit1], "Name") .. _(" suffered ") .. hp_lost .. _(" HP loss"))
								end
--								SetUnitVariable(nearby_uncount[unit2], "HitPoints", GetUnitVariable(nearby_uncount[unit2], "HitPoints") + hp_lost)
								DamageUnit(uncount[unit1], nearby_uncount[unit2], hp_lost)
								DamageUnit(nearby_uncount[unit2], uncount[unit1], GetUnitVariable(uncount[unit1], "HitPoints"))
								return true
							end
						end
					end
				end

				-- gives gold if a unit is near a gold chest
				if (GetUnitVariable(uncount[unit1], "Ident") == "unit-gold-chest" or GetUnitVariable(uncount[unit1], "Ident") == "unit-gold-and-gems-chest") then
					if (GetUnitVariable(uncount[unit1], "GraphicsVariation") == 2) then
						local people_quantity = GetNumUnitsAt(-1, "units", {GetUnitVariable(uncount[unit1],"PosX") - 1, GetUnitVariable(uncount[unit1],"PosY") - 1}, {GetUnitVariable(uncount[unit1],"PosX") + 1, GetUnitVariable(uncount[unit1],"PosY") + 1})
						if (people_quantity > 0) then
							for i=0,14 do
								if (GetNumUnitsAt(i, "units", {GetUnitVariable(uncount[unit1],"PosX") - 1, GetUnitVariable(uncount[unit1],"PosY") - 1}, {GetUnitVariable(uncount[unit1],"PosX") + 1, GetUnitVariable(uncount[unit1],"PosY") + 1}) > 0) then
									ChangeUnitOwner(uncount[unit1], i)
								end
							end
							local nearby_uncount = 0
							nearby_uncount = GetUnitsAroundUnit(uncount[unit1], 1, false)
							for unit2 = 1,table.getn(nearby_uncount) do 
								if (GetUnitVariable(nearby_uncount[unit2], "Player") ~= 15) then
									if (GetUnitVariable(uncount[unit1], "Ident") == "unit-gold-chest") then
										AddMessage("You found 500 gold in the chest.")
										SetUnitVariable(uncount[unit1], "GraphicsVariation", 1)
										PlaySound("gold-coins")
										SetPlayerData(GetUnitVariable(nearby_uncount[unit2], "Player"), "Resources", "gold", GetPlayerData(GetUnitVariable(nearby_uncount[unit2], "Player"), "Resources", "gold") + 500)
									elseif (GetUnitVariable(uncount[unit1], "Ident") == "unit-gold-and-gems-chest") then
										AddMessage("You found 500 gold in the chest, plus gems worth 250 gold.")
										SetUnitVariable(uncount[unit1], "GraphicsVariation", 1)
										PlaySound("gold-coins")
										SetPlayerData(GetUnitVariable(nearby_uncount[unit2], "Player"), "Resources", "gold", GetPlayerData(GetUnitVariable(nearby_uncount[unit2], "Player"), "Resources", "gold") + 750)
									end
       								break
								end
							end
						end
					elseif (GetUnitVariable(uncount[unit1], "GraphicsVariation") == 1) then
						ChangeUnitOwner(uncount[unit1], 15)
					end
				end
			end
			return true
		end
	)

	AddTrigger(
		function()
			if (GameCycle == 0) then
				return false
			end
			return true
		end,
		function()
			if (mapinfo.description == "Svafnir's Lair") then -- somewhat ugly way of making this not happen during The Wyrm quest
				return false
			end
			
			local uncount = 0
			uncount = GetUnits("any")
			for unit1 = 1,table.getn(uncount) do 
				if (GetPlayerData(GetUnitVariable(uncount[unit1], "Player"), "AiEnabled") and (GetUnitVariable(uncount[unit1], "Ident") == "unit-surghan-mercenary-steelclad" or GetUnitVariable(uncount[unit1], "Ident") == "unit-surghan-mercenary-thane") and GetUnitVariable(uncount[unit1], "Idle")) then

					local enemy_unit = nil

					local surghan_uncount = 0
					surghan_uncount = GetUnits("any")
					for surghan_unit1 = 1,table.getn(surghan_uncount) do 
						if (Players[GetUnitVariable(uncount[unit1], "Player")]:IsEnemy(Players[GetUnitVariable(surghan_uncount[surghan_unit1],"Player")])) then
							enemy_unit = surghan_uncount[surghan_unit1]
							break
						end
					end

					if (enemy_unit ~= nil) then
						OrderUnit(GetUnitVariable(uncount[unit1], "Player"), GetUnitVariable(uncount[unit1],"Ident"), {GetUnitVariable(uncount[unit1],"PosX"), GetUnitVariable(uncount[unit1],"PosY")}, {GetUnitVariable(enemy_unit,"PosX"), GetUnitVariable(enemy_unit,"PosY")}, "attack")
					end
				end
			end
			return true
		end
	)

	-- Tips
	if (wyr.preferences.ShowTips and not IsReplayGame() and not IsNetworkGame()) then
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Level Up") == false) then
			AddTrigger(
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "LevelUp") >= 1 and GetUnitVariable(GetSelectedUnits()[1], "Player") == GetThisPlayer()) then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Level Up", "Your unit has leveled up! Click on the \"Choose Level-Up Upgrade\" button in its command button panel to select a level-up upgrade for it.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Experience") == false) then
			AddTrigger(
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitBoolFlag(GetSelectedUnits()[1], "organic") and GetUnitVariable(GetSelectedUnits()[1], "Player") == GetThisPlayer()) then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Experience", "Organic units you control can earn experience through combat. When an enemy is killed, experience is divided between your nearby organic units. Once enough experience has been attained, your unit will level up, allowing it to upgrade to a better unit type or to learn a new ability. After units have exhausted the available level up upgrades, they earn +15 Hit Points upon leveling up.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Persistent Heroes") == false) then
			AddTrigger(
				function()
					if (
						table.getn(GetSelectedUnits()) > 0
						and GetUnitVariable(GetSelectedUnits()[1], "Character") ~= ""
						and (
							GetUnitVariable(GetSelectedUnits()[1], "CustomCharacter") == false and (GetCharacterData(GetUnitVariable(GetSelectedUnits()[1], "Character"), "Persistent"))
							or GetUnitVariable(GetSelectedUnits()[1], "CustomCharacter") == true
						)
						and GetUnitVariable(GetSelectedUnits()[1], "Player") == GetThisPlayer()
					) then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Persistent Heroes", "Each persistent hero (with the exception of custom ones) has a unique icon. They carry over their experience level, inventory and abilities across scenarios and even game modes.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Bura") == false) then
			AddTrigger(
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-germanic-worker") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Bura", "The Bura is the worker unit of the Germanic civilization. It is used to build structures, harvest resources and repair buildings. Buras can be trained at the Chieftain's Hall.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Erala") == false) then
			AddTrigger(
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-germanic-warrior") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Erala", "The Erala is the melee infantry unit of the Germanic civilization. It is the most basic military unit available for it. Eralas can be trained at the War Lodge.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Skutan") == false) then
			AddTrigger(
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-germanic-archer") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Skutan", "The Skutan is the shooter unit of the Germanic civilization, and can attack from a distance. It is available for training at the War Lodge, if a Carpenter's Shop is built.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Chieftain's Hall") == false) then
			AddTrigger(
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-germanic-town-hall") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Chieftain's Hall", "The Chieftain's Hall can be used to train worker units. It also serves as a place where workers can return resources to, after harvesting.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "War Lodge") == false) then
			AddTrigger(
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-germanic-barracks") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("War Lodge", "The War Lodge can be used to train military units.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Carpenter's Shop") == false) then
			AddTrigger(
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-germanic-carpenters-shop") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Carpenter's Shop", "The Carpenter's Shop can be used to research some technologies, and its presence gives a lumber processing bonus of 25%.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Smithy") == false) then
			AddTrigger(
				function()
					if (table.getn(GetSelectedUnits()) > 0 and (GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-germanic-smithy" or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-teuton-smithy" or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-dwarven-smithy" or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-brising-smithy")) then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Smithy", "The Smithy can be used to research technologies improving your melee units and siege weapons.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Temple") == false) then
			AddTrigger(
				function()
					if (table.getn(GetSelectedUnits()) > 0 and (GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-teuton-temple" or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-dwarven-smithy")) then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Temple", "Temples regenerate the health of nearby organic units.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Krieger") == false) then
			AddTrigger(
				function()
					if (
						table.getn(GetSelectedUnits()) > 0
						and (
							GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-teuton-swordsman"
							or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-suebi-swordsman"
							or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-frank-swordsman"
						)
					) then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Krieger", "The Krieger is the melee infantry unit of the Teuton civilization, replacing the Erala.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Catapult") == false) then
			AddTrigger(
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-teuton-catapult") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Catapult", "The Catapult is the siege weapon of the Teuton civilization. It can attack from a long distance, and deals splash damage. It is available for training at the Barracks, if a Lumber Mill and a Smithy are built.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Watch Tower") == false) then
			AddTrigger(
				function()
					if (table.getn(GetSelectedUnits()) > 0 and (GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-teuton-watch-tower" or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-goblin-watch-tower")) then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Watch Tower", "The Watch Tower provides you with extended vision, and you can use it to garrison a unit inside. A ranged unit garrisoned in a Watch Tower can perform attacks from within.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Guard Tower") == false) then
			AddTrigger(
				function()
					if (table.getn(GetSelectedUnits()) > 0 and (GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-teuton-guard-tower" or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-dwarven-guard-tower" or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-goblin-guard-tower")) then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Guard Tower", "The Guard Tower provides you with extended vision, as well as space for two units to garrison inside. Ranged units garrisoned in a Guard Tower can perform attacks from within.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Miner") == false) then
			AddTrigger(
				function()
					if (
						table.getn(GetSelectedUnits()) > 0
						and (
							GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-dwarven-miner"
							or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-brising-miner"
						)
					) then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Miner", "The Miner is the worker unit of the Dwarven civilization. It is used to build structures, harvest resources and repair buildings. Miners can be trained at the Mead Hall. Miners have a gathering rate bonus when harvesting gold, and a malus when gathering lumber.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Axefighter") == false) then
			AddTrigger(
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-dwarven-axefighter") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Axefighter", "The Axefighter is the melee infantry unit of the Dwarven civilization. It is the most basic military unit available for it. Axefighters can be trained at the War Hall.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Scout") == false) then
			AddTrigger(
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-dwarven-scout") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Scout", "The Scout is the shooter unit of the Dwarven civilization, and can attack from a distance. It is available for training at the War Hall, if a Lumber Mill is built.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Ballista") == false) then
			AddTrigger(
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-dwarven-ballista") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Ballista", "The Ballista is the siege weapon of the Dwarven civilization. It can attack from a long distance, and deals splash damage. It is available for training at the War Hall, if a Lumber Mill and a Smithy are built.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Mead Hall") == false) then
			AddTrigger(
				function()
					if (table.getn(GetSelectedUnits()) > 0 and (GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-dwarven-town-hall")) then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Mead Hall", "The Mead Hall can be used to train worker units. It also serves as a place where workers can return resources to, after harvesting.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "War Hall") == false) then
			AddTrigger(
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-dwarven-barracks") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("War Hall", "The War Hall can be used to train military units.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Lumber Mill") == false) then
			AddTrigger(
				function()
					if (table.getn(GetSelectedUnits()) > 0 and (GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-dwarven-lumber-mill" or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-teuton-lumber-mill" or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-goblin-lumber-mill")) then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Lumber Mill", "The Lumber Mill can be used to research some technologies, and its presence gives a lumber processing bonus of 25%.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Sentry Tower") == false) then
			AddTrigger(
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-dwarven-sentry-tower") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Sentry Tower", "The Sentry Tower provides you with extended vision, and you can use it to garrison a unit inside. A ranged unit garrisoned in a Sentry Tower can perform attacks from within.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Scavenger") == false) then
			AddTrigger(
				function()
					if (table.getn(GetSelectedUnits()) > 0 and (GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-gnomish-worker" or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-deep-gnomish-worker" or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-forest-gnomish-worker" or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-derro-worker")) then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Scavenger", "The Scavenger is the worker unit of the Gnomish civilization. It is used to build structures, harvest resources and repair buildings. Scavengers can be trained at the Town Hall.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Recruit") == false) then
			AddTrigger(
				function()
					if (table.getn(GetSelectedUnits()) > 0 and (GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-gnomish-recruit" or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-deep-gnomish-recruit" or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-forest-gnomish-recruit")) then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Recruit", "The Recruit is the melee infantry unit of the Gnomish civilization. It is the most basic military unit available for it. Recruits can be trained at the Barracks.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Herbalist") == false) then
			AddTrigger(
				function()
					if (table.getn(GetSelectedUnits()) > 0 and (GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-gnomish-herbalist" or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-deep-gnomish-herbalist" or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-forest-gnomish-herbalist")) then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Herbalist", "The Herbalist is the priest unit of the Gnomish civilization. It can heal and see far away locations.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "War Machine") == false) then
			AddTrigger(
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-goblin-war-machine") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("War Machine", "The War Machine is the siege weapon of the Goblin civilization. It can attack from a long distance, and deals splash damage. Although it has less HP than the siege weapons of other civilizations, the Goblin War Machine has a melee attack. It is available for training at the Barracks, if a Lumber Mill and a Fugla Forge are built.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Wyrm") == false) then
			AddTrigger(
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-wyrm") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Wyrm", "Wyrms are extremely dangerous creatures which can fell even a group of experienced warriors. Avoid if possible.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Mercenary Camp") == false) then
			AddTrigger(
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-mercenary-camp") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Mercenary Camp", "The Mercenary Camp can be used to hire thieves, as well as mercenary companies.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Gold Rock") == false) then
			AddTrigger(
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-gold-rock") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Gold Rock", "Gold rocks can be mined for gold.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Gold Deposit") == false) then
			AddTrigger(
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-gold-deposit") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Gold Deposit", "Gold deposits are the most durable source of gold. Build a gold mine on top of it to harvest the gold within.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Silver Rock") == false) then
			AddTrigger(
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-silver-rock") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Silver Rock", "Silver rocks can be mined for silver, which when processed is converted to gold at a 50% rate.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Silver Deposit") == false) then
			AddTrigger(
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-silver-deposit") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Silver Deposit", "Silver deposits are the most durable source of silver. Build a silver mine on top of it to harvest the silver within, which when processed is converted to gold at a 50% rate.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Copper Rock") == false) then
			AddTrigger(
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-copper-rock") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Copper Rock", "Copper rocks can be mined for copper, which when processed is converted to gold at a 25% rate.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Copper Deposit") == false) then
			AddTrigger(
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-copper-deposit") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Copper Deposit", "Copper deposits are the most durable source of copper. Build a copper mine on top of it to harvest the copper within, which when processed is converted to gold at a 25% rate.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Wood Pile") == false) then
			AddTrigger(
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-wood-pile") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Wood Pile", "Wood piles can be harvested for lumber. When a building is destroyed, it has a chance to spawn a wood pile.")
					return false
				end
			)
		end		
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Log") == false) then
			AddTrigger(
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-log") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Log", "Logs can be harvested for lumber.")
					return false
				end
			)
		end		
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Tree Stump") == false) then
			AddTrigger(
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-tree-stump") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Tree Stump", "A unit can hide from its enemies within a tree stump. Tree stumps can also be chopped for lumber.")
					return false
				end
			)
		end		
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Hole") == false) then
			AddTrigger(
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-hole") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Hole", "A unit can hide from its enemies within a hole.")
					return false
				end
			)
		end		
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Raft") == false) then
			AddTrigger(
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-raft") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Raft", "Rafts can be used by units to traverse water bodies. To use a raft, place a unit on top of it, and then it will use the raft to move when ordered to pass through water.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Food") == false) then
			AddTrigger(
				function()
					if (table.getn(GetSelectedUnits()) > 0 and (GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-cheese" or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-carrots")) then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Food", "Food items provide healing to units. They can be carried by units who have an inventory, or used directly by units who don't. Healing items are automatically used if the unit is low enough on health.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Potion of Healing") == false) then
			AddTrigger(
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-potion-of-healing") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Potion of Healing", "Potions of healing can greatly increase the survivability of your units. They can be carried by units who have an inventory, or used directly by units who don't. Healing items are automatically used if the unit is low enough on health.")
					return false
				end
			)
		end
	end
end

function GetCivilizationAvailableFactions(civilization)
	local civilization_factions = GetCivilizationFactionNames(civilization)

	-- remove faction names already in use
	for i=0,14 do
		if (table.getn(civilization_factions) > 0 and GetPlayerData(i, "RaceName") == civilization) then
			RemoveElementFromArray(civilization_factions, GetPlayerData(i, "Name"))
		end
	end
	return civilization_factions
end

function GetCivilizationExists(civilization)
	for i=0,14 do
		if (GetPlayerData(i, "RaceName") == civilization) then
			return true
		end
	end
	return false
end

function GetFactionExists(faction)
	for i=0,14 do
		if (GetPlayerData(i, "Name") == faction) then
			return true
		end
	end
	return false
end

function GetCivilizationPlayer(civilization)
	local loop = true
	local loop_count = 0
	local civilization_player = nil
	while (loop) do
		civilization_player = SyncRand(GetNumPlayers())
		if (GetPlayerData(civilization_player, "RaceName") == civilization) then
			loop = false
		end
		loop_count = loop_count + 1

		if (loop_count > 100) then
			return false
		end
	end
	return civilization_player
end

function GetNumCivilizationPlayers(civilization)
	local player_count = 0
	for i=0,14 do
		if (GetPlayerData(i, "TotalNumUnits") > 0 and GetPlayerData(i, "RaceName") == civilization) then
			player_count = player_count + 1
		end
	end
	return player_count
end

function GetFactionPlayer(faction)
	for i=0,14 do
		if (Players[i].Type ~= PlayerNobody and GetPlayerData(i, "Name") == faction) then
			return i
		end
	end
	return nil
end

function GetNumRivals(player)
	local rival_count = 0
	for i=0,14 do
		if (player ~= i and (Players[i].Type == PlayerPerson or Players[i].Type == PlayerComputer) and (Players[player]:IsAllied(Players[i]) == false or Players[i]:IsAllied(Players[player]) == false)) then
			local total_units = GetPlayerData(i, "TotalNumUnits") - GetPlayerData(i, "UnitTypesCount", "unit-goblin-glider")
			total_units = total_units - GetPlayerData(i, "UnitTypesCount", "unit-gold-mine") - GetPlayerData(i, "UnitTypesCount", "unit-silver-mine") - GetPlayerData(i, "UnitTypesCount", "unit-copper-mine")
			if (GetCivilizationClassUnitType("farm", GetPlayerData(i, "RaceName")) ~= nil) then
				total_units = total_units - GetPlayerData(i, "UnitTypesCount", GetCivilizationClassUnitType("farm", GetPlayerData(i, "RaceName")))
			end
			if (total_units > 0) then
				rival_count = rival_count + 1
			end
		end
	end
	return rival_count
end

function GetNumAllies(player)
	local ally_count = 0
	for i=0,14 do
		if (player ~= i and (Players[i].Type == PlayerPerson or Players[i].Type == PlayerComputer) and Players[player]:IsAllied(Players[i]) and Players[i]:IsAllied(Players[player])) then
			if (GetPlayerData(i, "TotalNumUnits") > 0) then
				ally_count = ally_count + 1
			end
		end
	end
	return ally_count
end

function GetNumPlayers()
	local player_count = 0
	for i=0,14 do
		if (GetPlayerData(i, "TotalNumUnits") > 0) then
			player_count = player_count + 1
		end
	end
	return player_count
end

function InitializeUnit(unit)
	if (GetUnitVariable(unit,"GraphicsVariation") == 0) then
		if ((GetUnitVariable(unit, "Ident") == "unit-large-flower" and wyrmsun.tileset == "swamp")) then
			SetUnitVariable(unit, "GraphicsVariation", (SyncRand(12) + 1))
		elseif ((GetUnitVariable(unit, "Ident") == "unit-fern" and wyrmsun.tileset == "swamp")) then
			SetUnitVariable(unit, "GraphicsVariation", (SyncRand(4) + 1))
		elseif ((GetUnitVariable(unit, "Ident") == "unit-flowers" and wyrmsun.tileset == "swamp") or (GetUnitVariable(unit, "Ident") == "unit-large-flower" and (wyrmsun.tileset == "conifer_forest_summer" or wyrmsun.tileset == "conifer_forest_autumn" or wyrmsun.tileset == "fairlimbed_forest"))) then
			SetUnitVariable(unit, "GraphicsVariation", (SyncRand(3) + 1))
		elseif (GetUnitVariable(unit, "Ident") == "unit-mushroom" or GetUnitVariable(unit, "Ident") == "unit-mushroom-patch") then
			SetUnitVariable(unit, "LifeStage", (SyncRand(13) + 1))
		end
	end
end

function DeathExplosion(unit, pixel_x, pixel_y)
	local nearby_uncount = GetUnitsAroundUnit(unit, 1, true)
	for unit1 = 1,table.getn(nearby_uncount) do 
		if (GetUnitVariable(nearby_uncount[unit1], "HitPoints") > 0) then
			local damage = 6
			damage = math.floor(damage * (100 - GetUnitVariable(nearby_uncount[unit1], "FireResistance")) / 100)
			if (GameSettings.NoRandomness) then
				damage = damage - math.floor(((damage + 2) / 2) / 2) -- if no randomness setting is used, then the damage will always return what would have been the average damage with randomness
			else
				damage = damage - SyncRand(math.floor((damage + 2) / 2))
			end
			DamageUnit(unit, nearby_uncount[unit1], damage)
		end
	end
end

function AddPlayerObjective(player, objective)
	for key, value in pairs(CustomPlayerData) do
		if (CustomPlayerData[key].Number == player) then
			if (player == GetThisPlayer()) then
				AddObjective(_(objective))
			end
			table.insert(CustomPlayerData[key].Objectives, objective)
		end
	end
end

function RemovePlayerObjective(player, objective)
	for key, value in pairs(CustomPlayerData) do
		if (CustomPlayerData[key].Number == player) then
			RemoveElementFromArray(CustomPlayerData[key].Objectives, objective)
		end
	end
	if (player == GetThisPlayer()) then
		ClearObjectives()
		for key, value in pairs(CustomPlayerData) do
			if (CustomPlayerData[key].Number == player and table.getn(CustomPlayerData[key].Objectives) > 0) then
				for i=1,table.getn(CustomPlayerData[key].Objectives) do
					AddObjective(_(CustomPlayerData[key].Objectives[i]))
				end
			end
		end
	end
end

function PlayerHasObjective(player, objective)
	for key, value in pairs(CustomPlayerData) do
		if (CustomPlayerData[key].Number == player) then
			return GetArrayIncludes(CustomPlayerData[key].Objectives, objective)
		end
	end
	return false
end

function GetPlayerObjectives(player)
	for key, value in pairs(CustomPlayerData) do
		if (CustomPlayerData[key].Number == player) then
			return CustomPlayerData[key].Objectives
		end
	end
	return nil
end

function OrderUnitBlock(player, unit, fromx, fromy, width, height, tox, toy, order)
    if (order == nil) then order = "attack" end
    if (height == nil) then height = 1 end
    if (width == nil) then width = 1 end
    for loopx = 0, width-1 do
        for loopy = 0, height-1 do
            if (GetNumUnitsAt(player, unit, {fromx+loopx,fromy+loopy}, {fromx+loopx,fromy+loopy}) > 0) then
                OrderUnit(player, unit, {fromx+loopx,fromy+loopy,fromx+loopx,fromy+loopy}, {tox+width,toy+loopy,tox+width,toy+loopy}, order)
            end
        end
    end
end

function FindUnit(unit_type, player)
	local uncount = 0
	
	if (player) then
		uncount = GetUnits(player)
	else
		uncount = GetUnits("any")
	end
	
	for unit1 = 1,table.getn(uncount) do 
		if (GetUnitVariable(uncount[unit1], "Ident") == unit_type or (unit_type == "any_organic" and GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "organic")) or unit_type == "any") then
			if (GetUnitVariable(uncount[unit1], "HitPoints") > 0) then
				return uncount[unit1]
			end
		end
	end
	
	return nil
end

function GetPlayerClassType(unit_class, player, use_province_civilization)
	if (use_province_civilization and GetPlayerData(player, "Faction") ~= "" and GetPlayerData(player, "RaceName") == GetProvinceCivilization(AttackedProvince.Name)) then
		return GetFactionClassUnitType(unit_class, GetPlayerData(player, "RaceName"), GetPlayerData(player, "Faction"))
	elseif (use_province_civilization and GetProvinceCivilization(AttackedProvince.Name) ~= "") then
		return GetCivilizationClassUnitType(unit_class, GetProvinceCivilization(AttackedProvince.Name))
	elseif (use_province_civilization) then
		if (GrandStrategyWorld == "Earth") then
			return GetCivilizationClassUnitType(unit_class, "germanic")
		elseif (GrandStrategyWorld == "Nidavellir") then
			return GetCivilizationClassUnitType(unit_class, "goblin")
		else
			return GetCivilizationClassUnitType(unit_class, "goblin")
		end
	elseif (GetPlayerData(player, "Faction") ~= "") then
		return GetFactionClassUnitType(unit_class, GetPlayerData(player, "RaceName"), GetPlayerData(player, "Faction"))
	else
		return GetCivilizationClassUnitType(unit_class, GetPlayerData(player, "RaceName"))
	end
end

function FindUnitOfClass(unit_class, player, use_province_civilization)
	local class_type = GetPlayerClassType(unit_class, player, use_province_civilization)
	
	if (class_type == nil) then
		return nil
	else
		return FindUnit(class_type, player)
	end
end

function FindHero(hero, player)
	local uncount = 0
	
	if (player) then
		uncount = GetUnits(player)
	else
		uncount = GetUnits("any")
	end
	
	for unit1 = 1,table.getn(uncount) do 
		if (GetUnitVariable(uncount[unit1], "Character") == hero and GetUnitVariable(uncount[unit1], "CustomCharacter") == false) then
			return uncount[unit1]
		end
	end
	
	return nil
end

function PersistencyUpdates()
	if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "The Mead of Poetry")) then
		RemoveElementFromArray(wyr.preferences.QuestsCompleted, "The Mead of Poetry")
		table.insert(wyr.preferences.QuestsCompleted, "The Mead of Wisdom")
		SavePreferences()
	end
	
	if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, "upgrade-dwarven-throwing-axe-1")) then
		RemoveElementFromArray(wyr.preferences.TechnologyAcquired, "upgrade-dwarven-throwing-axe-1")
		table.insert(wyr.preferences.TechnologyAcquired, "upgrade-dwarven-sharp-throwing-axe")
		SavePreferences()
	end
	
	if (GetArrayIncludes(wyr.preferences.TechnologyAcquired, "upgrade-dwarven-throwing-axe-2")) then
		RemoveElementFromArray(wyr.preferences.TechnologyAcquired, "upgrade-dwarven-throwing-axe-2")
		table.insert(wyr.preferences.TechnologyAcquired, "upgrade-dwarven-bearded-throwing-axe")
		SavePreferences()
	end
	
	for i=1,table.getn(wyr.preferences.EnabledMods) do
		if not (CanAccessFile(wyr.preferences.EnabledMods[i])) then
			wyr.preferences.EnabledMods[i] = nil
		end
		SavePreferences()
	end
	
	--[[
	if (GetCharacterData("Modsognir", "Type") == "unit-dwarven-steelclad") then
		DefineCharacter("Modsognir", {
			Type = "unit-brising-steelclad"
		})
	end
	
	if (GetCharacterData("Durin", "Type") == "unit-dwarven-steelclad") then
		DefineCharacter("Durin", {
			Type = "unit-brising-steelclad"
		})
	end
	
	if (GetCharacterData("Modsognir", "Type") == "unit-dwarven-thane") then
		DefineCharacter("Modsognir", {
			Type = "unit-brising-thane"
		})
	end
	
	if (GetCharacterData("Durin", "Type") == "unit-dwarven-thane") then
		DefineCharacter("Durin", {
			Type = "unit-brising-thane"
		})
	end
	--]]
	
	if (wyr.preferences.Heroes ~= nil) then
		for key, value in pairs(wyr.preferences.Heroes) do
			local hero_type = GetCharacterData(wyr.preferences.Heroes[key].name, "Type")
			local hero_abilities = {}
			if (wyr.preferences.Heroes[key].upgrades ~= nil) then
				for i=1,table.getn(wyr.preferences.Heroes[key].upgrades) do
					if (string.find(wyr.preferences.Heroes[key].upgrades[i], "upgrade") ~= nil) then
						table.insert(hero_abilities, wyr.preferences.Heroes[key].upgrades[i])
					else
						hero_type = wyr.preferences.Heroes[key].upgrades[i]
					end
				end
			end
			DefineCharacter(wyr.preferences.Heroes[key].name, {
				Level = wyr.preferences.Heroes[key].level,
				Abilities = hero_abilities,
				Type = hero_type
			})
		end
		wyr.preferences.Heroes = nil
		SavePreferences()
		SaveHeroes()
	end
	
	if (wyr.preferences.SavedGrandStrategyGames ~= nil) then -- grand strategy games are now saved in separate files
		wyr.preferences.SavedGrandStrategyGames = nil
	elseif (wyr.preferences.GrandStrategySaveGames ~= nil) then -- grand strategy games are now saved in separate files
		wyr.preferences.GrandStrategySaveGames = nil
		SavePreferences()
	end
		
	if (wyr.preferences.ShowOrders ~= nil) then
		if (wyr.preferences.ShowOrders == 2) then
			wyr.preferences.ShowPathlines = true
			Preference.ShowPathlines = wyr.preferences.ShowPathlines
		end
		wyr.preferences.ShowOrders = nil
		SavePreferences()
	end
	
	if (wyr.preferences.ButtonHotKeysByPosition ~= nil) then
		if (wyr.preferences.ButtonHotKeysByPosition == true) then
			wyr.preferences.HotkeySetup = 1
		else
			wyr.preferences.HotkeySetup = 0
		end
		wyr.preferences.ButtonHotKeysByPosition = nil
		Preference.HotkeySetup = wyr.preferences.HotkeySetup
		SavePreferences()
	end
end

function LoadHeroes()
	local i
	local f
	local u = 1

	local fileslist = ListFilesInDirectory("heroes/", true)
	for i,f in ipairs(fileslist) do
		Load("heroes/" .. f)
		u = u + 1
	end
		
	u = 1
	-- list the subdirectories in the heroes folder
	local dirlist = {}
	local dirs = ListDirsInDirectory("heroes/", true)
	for i,f in ipairs(dirs) do
		dirlist[u] = f .. "/"
		u = u + 1
	end

	u = 1
	-- get the heroes in the subdirectories of the heroes folder
	for j=1,table.getn(dirlist) do
		fileslist = ListFilesInDirectory("heroes/" .. dirlist[j], true)
		for i,f in ipairs(fileslist) do
			Load("heroes/" .. dirlist[j] .. f)
			u = u + 1
		end
	end
end

-------------------------------------------------------------------------------
--  Tables-Part
-------------------------------------------------------------------------------

-- Andrettin: new function for checking whether array include a certain value or not
function GetArrayIncludes(array, item, ignore_case)
    for key, value in pairs(array) do
		if (type(item) == "string" and type(value) == "string" and ignore_case) then
			if (string.lower(value) == string.lower(item)) then
				return true
			end
		else
			if (value == item) then
				return true
			end
        end
    end
    return false
end

function GetElementIndexFromArray(array, item)
	for i=1,table.getn(array) do
		if (array[i] == item) then
			return i
		end
	end
	return nil
end

function GetTableKeyIndex(table, desired_key, f)
	local count = 1
	for key, value in pairsByKeys(table, f) do
		if (key == desired_key) then
			return count
		end
		count = count + 1
	end

	return nil
end

function GetTableIndexKey(table, index, f)
	local count = 1
	for key, value in pairsByKeys(table, f) do
		if (count == index) then
			return key
		end
		count = count + 1
	end

	return nil
end

function GetTableSize(table)
	local count = 0
	for key in pairs(table) do
		count = count + 1
	end
	return count
end

function RemoveElementFromArray(array, element)
	if (GetArrayIncludes(array, element)) then
		local element_number = -1
		table.foreachi(array, function(k,v)
			if (v == element) then
				element_number = k
			end
		end)
		if (element_number ~= -1) then
			table.remove(array, element_number)
		end
	end
end

function pairsByKeys(t, f)
	local a = {}
	for n in pairs(t) do table.insert(a, n) end
	table.sort(a, f)
	local i = 0 -- iterator variable
	local iter = function ()   -- iterator function
		i = i + 1
		if a[i] == nil then return nil
		else return a[i], t[a[i]]
		end
	end
	return iter
end

function copy(obj, seen)
	if type(obj) ~= 'table' then return obj end
	if seen and seen[obj] then return seen[obj] end
	local s = seen or {}
	local res = setmetatable({}, getmetatable(obj))
	s[obj] = res
	for k, v in pairs(obj) do res[copy(k, s)] = copy(v, s) end
	return res
end

-------------------------------------------------------------------------------
--  Math Functions
-------------------------------------------------------------------------------

function round(num)
	return math.floor(num + 0.5)
end

function rspread(a, b)
	if (a > b) then
		local t = a
		a = b
		b = t
	end
	return SyncRand(b - a + 1) + a
end

function dice(number, sides)
	local total = 0
	for i=1,number do
		total = total + SyncRand(sides) + 1
	end
	return total
end

function sign(number)
	if (number < 0) then
		return -1
	elseif (number > 0) then
		return 1
	else
		return 0
	end
end

-- return the middle value of 3 numbers
function middle(n1, n2, n3)
	if (n1 < n2) then
		if (n2 < n3) then
			return n2
		elseif (n1 < n3) then
			return n3
		else
			return n1
		end
	elseif (n1 < n3) then
		return n1
	elseif (n2 < n3) then
		return n3
	else
		return n2
	end
end

-------------------------------------------------------------------------------
--  String Functions
-------------------------------------------------------------------------------

function FullyCapitalizeString(str)
	str = (str:gsub("^%l", string.upper))
	str = (str:gsub(" %l", string.upper))
    return str
end

function CapitalizeString(str)
    return (str:gsub("^%l", string.upper))
end

local function CompleteMissingValues(table, defaultTable)
	for key, defaultValue in pairs(defaultTable) do
		if table[key] == nil then table[key] = defaultValue end
	end
end

wyr = {preferences = {}}
Load("preferences.lua")
local defaultPreferences = {
	DoubleClickDelayInMs = 300,     --  For the wanted double-click delay (in ms).
	EffectsEnabled = true,
	EffectsVolume = 128,
	EnableKeyboardScrolling = true, --  Enable/disable keyboard scrolling.
	EnableMouseScrolling = true,    --  Enable/disable mouse scrolling.
	FogOfWar = true,
	FogOfWarOpacity = 128,
	GameSpeed = 30,
	GameTranslation = "",
	GrabMouse = false,              --  Enable/disable grabbing the mouse.
	GroupKeys = "0123456789`",
	HoldClickDelayInMs = 1000,      --  For the wanted hold-click delay (in ms).
	LeaveStopScrolling = true,      --  Enable/disable stopping scrolling when mouse leave.
	MaxOpenGLTexture = 256,
	MinimapWithTerrain = true,      --  Choose your default for minimap with/without terrain.
	MouseScrollSpeed = 1,
	MouseScrollSpeedControl = 15,   --  Same as above if Control is pressed
	MouseScrollSpeedDefault = 4,    --  While middle-mouse is pressed: Pixels to move per scrolled mouse pixel, negative = reversed
	MusicEnabled = true,
	MusicVolume = 128,
	PlayerName = "Player",
	ShowCommandKey = true,
	ShowTips = true,
	StratagusTranslation = "",
	TipNumber = 0,
	UseOpenGL = true,
	VideoFullScreen = false,
	VideoHeight = 600,
	VideoWidth = 800,
	ShowMessages = true,
	ShowPathlines = false,
	Language = "English",
	ShowResourceBar = false,
	PopupDescriptionFont = "small",
	Autosave = true,
	PlayerColorCircle = false,
	HotkeySetup = 0,
	NoRandomness = false,
	NoTimeOfDay = false,
	AutomaticBattles = false,
	Difficulty = 2,
	GrandStrategyBattalionMultiplier = 1,
	GrandStrategyBattleBaseBuilding = false,
	QuestsCompleted = {},
	TechnologyAcquired = {},
	AchievementsCompleted = {},
	TipsShown = {},
	LastVersionPlayed = "0.0.0",
	EnabledMods = {},
	SortSaveGamesByTime = false
}

CompleteMissingValues(wyr.preferences, defaultPreferences)

SetDoubleClickDelay(wyr.preferences.DoubleClickDelayInMs)
SetEffectsEnabled(wyr.preferences.EffectsEnabled)
SetEffectsVolume(wyr.preferences.EffectsVolume)
SetFancyBuildings(false)
SetFogOfWar(wyr.preferences.FogOfWar)
SetFogOfWarOpacity(wyr.preferences.FogOfWarOpacity)
SetGameSpeed(wyr.preferences.GameSpeed)
SetGrabMouse(wyr.preferences.GrabMouse)
SetGroupKeys(wyr.preferences.GroupKeys)
SetHoldClickDelay(wyr.preferences.HoldClickDelayInMs)
SetKeyScroll(wyr.preferences.EnableKeyboardScrolling)
SetLeaveStops(wyr.preferences.LeaveStopScrolling)
SetLocalPlayerName("") -- Andrettin: in single-player games the local player shouldn't use his nick
SetMaxOpenGLTexture(wyr.preferences.MaxOpenGLTexture)
SetMinimapTerrain(wyr.preferences.MinimapWithTerrain)
SetMouseScroll(wyr.preferences.EnableMouseScrolling)
SetMouseScrollSpeed(wyr.preferences.MouseScrollSpeed)
SetMouseScrollSpeedControl(wyr.preferences.MouseScrollSpeedControl)
SetMouseScrollSpeedDefault(wyr.preferences.MouseScrollSpeedDefault)
SetMusicEnabled(wyr.preferences.MusicEnabled)
SetMusicVolume(wyr.preferences.MusicVolume)
SetTranslationsFiles(wyr.preferences.StratagusTranslation, wyr.preferences.GameTranslation)
SetUseOpenGL(wyr.preferences.UseOpenGL)
SetVideoFullScreen(wyr.preferences.VideoFullScreen)
SetVideoResolution(wyr.preferences.VideoWidth, wyr.preferences.VideoHeight)
UI.ButtonPanel.ShowCommandKey = wyr.preferences.ShowCommandKey

Preference.ShowPathlines = wyr.preferences.ShowPathlines
Preference.ShowMessages = wyr.preferences.ShowMessages
if (wyr.preferences.Autosave) then
	Preference.Autosave = 5
else
	Preference.Autosave = 0
end
Preference.PlayerColorCircle = wyr.preferences.PlayerColorCircle
Preference.HotkeySetup = wyr.preferences.HotkeySetup

--- Uses Stratagus Library path!
Load("scripts/dlc_file_equivalencies.lua")
Load("scripts/icons.lua")
Load("scripts/languages.lua")
Load("scripts/civilizations.lua")
Load("scripts/music.lua")
Load("scripts/sound.lua")
Load("scripts/dialogues.lua")
Load("scripts/missiles.lua")
Load("scripts/constructions.lua")
Load("scripts/spells.lua")
Load("scripts/units.lua")
Load("scripts/upgrade.lua")
Load("scripts/wyr.lua")
Load("scripts/fonts.lua")
Load("scripts/buttons.lua")
Load("scripts/ui.lua")
Load("scripts/ai.lua")
Load("scripts/commands.lua")
Load("scripts/cheats.lua")
Load("scripts/map_generation.lua")
Load("scripts/world_map_terrain_types.lua")
Load("scripts/worlds.lua")
Load("scripts/world_earth_tiles.lua")
Load("scripts/world_nidavellir_tiles.lua")
Load("scripts/provinces.lua")
Load("scripts/unique_items.lua")
Load("scripts/characters.lua")
Load("scripts/quests.lua")
Load("scripts/events.lua")
Load("scripts/achievements.lua")
Load("scripts/texts.lua")
Load("scripts/grand_strategy/grand_strategy_map_generation.lua")
Load("scripts/grand_strategy/grand_strategy_factions.lua")
Load("scripts/grand_strategy/grand_strategy_provinces.lua")
Load("scripts/grand_strategy/grand_strategy_events.lua")

Load("scripts/0_ad_equivalencies.lua")

if (CanAccessFile("wyr/heroes.lua")) then -- keep compatibility with how heroes were saved before
	Load("heroes.lua")
	SaveHeroes()
else
	LoadHeroes() -- load persistent heroes
end

DebugPrint("... ready!\n")

--Convert0ADMap("maps/The Massacre of Delphi.xml")
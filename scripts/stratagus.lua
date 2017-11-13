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
--      (c) Copyright 1998-2017 by Lutz Sammer, Pali Rohár and Andrettin
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
wyrmsun.Version = "3.0.0"
wyrmsun.Homepage = ""
wyrmsun.Licence = "GPL 2.0"
wyrmsun.Copyright = "Copyright (c) 2013-2017 by Andrettin"

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

DefineBoolFlags("MetalImprove", "LumberImprove", "OilImprove", "StoneImprove")

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
SetForestRegeneration(1200)

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
	"acid", {{229, 11, 217}, {144, 18, 206}, {82, 0, 185}, {42, 0, 111}},
	"red-2", {{164, 0, 0}, {124, 0, 0}, {92, 4, 0}, {68, 4, 0}},
	"blue-2", {{12, 72, 204}, {4, 40, 160}, {0, 20, 116}, {0, 4, 76}},
	"green-2", {{24, 119, 23}, {2, 96, 1}, {2, 61, 1}, {9, 32, 9}},
	"violet-2", {{152, 72, 176}, {116, 44, 132}, {80, 24, 88}, {44, 8, 44}},
	"orange-2", {{248, 140, 20}, {200, 96, 16}, {152, 60, 16}, {108, 32, 12}},
	"black-2", {{40, 40, 60}, {28, 28, 44}, {20, 20, 32}, {12, 12, 20}},
	"white-2", {{162, 152, 182}, {118, 103, 141}, {78, 65, 105}, {38, 22, 65}},
	"yellow-2", {{147, 164, 21}, {113, 126, 16}, {73, 83, 8}, {48, 53, 11}},
	"pink-2", {{164, 21, 97}, {126, 16, 75}, {90, 12, 53}, {55, 0, 28}},
	"cyan-2", {{75, 130, 155}, {35, 90, 115}, {11, 50, 69}, {0, 27, 41}},
	"teal-2", {{44, 180, 148}, {20, 132, 92}, {4, 84, 44}, {0, 40, 12}},
	"purple-2", {{148, 28, 150}, {121, 12, 122}, {87, 1, 88}, {54, 0, 54}},
	"fire-2", {{241, 172, 0}, {222, 80, 22}, {185, 0, 0}, {111, 0, 0}},
	"brown-2", {{170, 119, 0}, {134, 82, 0}, {98, 47, 0}, {70, 23, 15}},
	"radioactive-2", {{248, 254, 1}, {154, 204, 5}, {103, 146, 4}, {51, 74, 2}},
	"gray", {{116, 104, 99}, {97, 85, 80}, {74, 62, 57}, {48, 36, 31}}
})

DefineConversiblePlayerColors("violet")

DefineHairColors({
	"black", {{71, 71, 88}, {63, 63, 78}, {52, 52, 64}, {45, 45, 56}, {42, 42, 52}, {37, 37, 46}, {38, 38, 47}, {32, 32, 39}, {29, 29, 36}, {23, 23, 28}, {19, 19, 23}, {13, 13, 17}, {11, 11, 13}},
	"blond", {{208, 192, 28}, {188, 164, 20}, {168, 140, 16}, {152, 120, 12}, {152, 120, 11}, {136, 100, 7}, {128, 96, 36}, {120, 88, 28}, {108, 76, 24}, {88, 56, 11}, {72, 44, 3}, {44, 24, 0}, {36, 20, 0}},
	"blue-gray", {{172, 174, 187}, {156, 159, 175}, {132, 136, 155}, {117, 120, 138}, {112, 115, 134}, {102, 105, 121}, {103, 106, 122}, {91, 94, 109}, {86, 88, 101}, {69, 71, 82}, {59, 61, 70}, {46, 47, 55}, {40, 41, 48}},
	"brown", {{126, 73, 27}, {114, 66, 28}, {99, 58, 30}, {90, 52, 30}, {87, 54, 30}, {78, 48, 30}, {79, 46, 30}, {71, 41, 30}, {66, 40, 30}, {55, 32, 30}, {48, 30, 30}, {38, 24, 29}, {36, 24, 28}},
	"red", {{146, 52, 36}, {134, 39, 31}, {115, 36, 28}, {100, 32, 25}, {96, 36, 24}, {86, 30, 21}, {87, 26, 22}, {75, 28, 20}, {70, 26, 19}, {56, 20, 16}, {48, 18, 15}, {37, 18, 12}, {32, 15, 11}},
	"gray", {{175, 160, 143}, {151, 138, 124}, {132, 121, 110}, {117, 106, 96}, {121, 110, 100}, {106, 98, 89}, {115, 104, 95}, {98, 89, 79}, {84, 76, 68}, {69, 63, 57}, {53, 48, 45}, {31, 29, 27}, {25, 24, 22}},
	"gray-black", {{120, 108, 95}, {100, 91, 80}, {87, 78, 69}, {77, 71, 63}, {77, 71, 62}, {70, 63, 57}, {71, 65, 59}, {66, 59, 52}, {57, 52, 47}, {42, 38, 34}, {31, 29, 26}, {20, 19, 18}, {18, 17, 16}},
	"green", {{110, 150, 31}, {108, 138, 27}, {92, 118, 24}, {81, 103, 22}, {71, 99, 21}, {65, 88, 18}, {71, 89, 19}, {57, 77, 17}, {54, 72, 17}, {45, 57, 14}, {39, 49, 13}, {26, 38, 11}, {24, 33, 10}},
	"green-blond", {{164, 164, 46}, {149, 149, 43}, {126, 126, 39}, {109, 109, 36}, {104, 104, 34}, {90, 91, 31}, {87, 88, 37}, {79, 80, 29}, {69, 70, 30}, {58, 59, 19}, {50, 51, 16}, {39, 39, 10}, {32, 32, 10}},
	"light-brown", {{166, 134, 74}, {145, 113, 53}, {130, 98, 38}, {121, 91, 33}, {116, 84, 24}, {104, 72, 12}, {108, 76, 16}, {100, 68, 8}, {91, 60, 1}, {64, 43, 1}, {50, 33, 1}, {26, 18, 1}, {22, 15, 1}},
	"orange", {{223, 136, 12}, {202, 111, 5}, {181, 91, 3}, {164, 74, 0}, {163, 74, 0}, {143, 58, 0}, {136, 64, 28}, {128, 56, 20}, {115, 46, 17}, {94, 28, 4}, {75, 21, 0}, {44, 10, 0}, {36, 9, 0}},
})

DefineConversibleHairColors("green")

--  If color-cycle-all is off (#f) only the tileset palette is color cycled.
-- Otherwise (#t) all palettes are color cycled.
SetColorCycleAll(false)
ClearAllColorCyclingRange()
AddColorCyclingRange(38, 47) -- water

-------------------------------------------------------------------------------

--  Edit next to increase the speed, for debugging.

--  Decrease the mining time by this factor.
--SetSpeedResourcesHarvest("copper", 10)
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
SetMaxSelectable(200)

--  All player food unit limit
SetAllPlayersUnitLimit(200)
--  All player building limit
SetAllPlayersBuildingLimit(200)
--  All player total unit limit
SetAllPlayersTotalUnitLimit(400)

-------------------------------------------------------------------------------

DefineVariables(
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
	AddTrigger("default-defeat",
		function()
			local total_units = GetPlayerData(GetThisPlayer(), "TotalNumUnitsConstructed") - GetPlayerData(GetThisPlayer(), "UnitTypesCount", "unit-goblin-glider")
			total_units = total_units - GetPlayerData(GetThisPlayer(), "UnitTypesCount", "unit-gold-mine") - GetPlayerData(GetThisPlayer(), "UnitTypesCount", "unit-silver-mine") - GetPlayerData(GetThisPlayer(), "UnitTypesCount", "unit-copper-mine") - GetPlayerData(GetThisPlayer(), "UnitTypesCount", "unit-diamond-mine") - GetPlayerData(GetThisPlayer(), "UnitTypesCount", "unit-emerald-mine") - GetPlayerData(GetThisPlayer(), "UnitTypesCount", "unit-yale-hunting-lodge")
			if (GetCivilizationClassUnitType("farm", GetPlayerData(GetThisPlayer(), "RaceName")) ~= nil) then
				total_units = total_units - GetPlayerData(GetThisPlayer(), "UnitTypesCount", GetCivilizationClassUnitType("farm", GetPlayerData(GetThisPlayer(), "RaceName")))
			end
			if (total_units <= 0 and PlayerHasObjective(GetThisPlayer(), "- Defeat the Norlunds") == false and (GameCycle > 1000 or mapinfo.description ~= "Caverns of Flame" or GetPlayerData(GetThisPlayer(), "Name") ~= "shinsplitter-clan")) then
				return true
			else
				return false
			end
		end,
		function()
			ActionDefeat()
			return true
		end
	)

	AddTrigger("default-victory",
--		function() return GetNumOpponents(GetThisPlayer()) == 0 end,
		function()
			if (GetNumRivals(GetThisPlayer()) == 0 and PlayerHasObjective(GetThisPlayer(), "- Defeat your rivals")) then
				return true
			else
				return false
			end
		end,
		function()
			ActionVictory()
			return true
		end
	)

	if (LoadedGame == false) then
		for key, value in pairs(CustomPlayerData) do
			for i=1,table.getn(CustomPlayerData[key].Objectives) do
				table.remove(CustomPlayerData[key].Objectives, i)
			end
		end

		for key, value in pairs(CustomPlayerData) do
			CustomPlayerData[key].Objectives = {}
			AddPlayerObjective(CustomPlayerData[key].Number, "- Defeat your rivals")
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

	if (LoadedGame == false) then
		DefineAllowNormalUnits("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA")
		ApplyTechLevels()
	end

	if (GetCurrentQuest() ~= "" and GetQuestData(GetCurrentQuest(), "Scenario") ~= "") then
		if (table.getn(GetQuestData(GetCurrentQuest(), "Objectives")) > 0) then -- if quest has pre-set objectives, add them now
			RemovePlayerObjective(GetThisPlayer(), "- Defeat your rivals")
			for i=1, table.getn(GetQuestData(GetCurrentQuest(), "Objectives")) do
				AddPlayerObjective(GetThisPlayer(), GetQuestData(GetCurrentQuest(), "Objectives")[i])
			end
		end
		Load(GetQuestData(GetCurrentQuest(), "Scenario"))
	end

	if (LoadedGame == false and GetCurrentCampaign() ~= "" and GetCampaignData(GetCurrentCampaign(), "Sandbox") == false) then
		RemovePlayerObjective(GetThisPlayer(), "- Defeat your rivals")
	end
	
	-- events are limited to the campaign mode
	if (GetCurrentCampaign() ~= "") then
		EventTriggers()
	end
		
	LoadedGame = false

	LoadCivilizationUI(GetPlayerData(GetThisPlayer(), "RaceName")) -- reload the UI at start, so that all map layer buttons appear correctly
end

function StandardTriggers()
	local RandomNumber = 0

	AddTrigger("modify-units",
		function()
			if (GameCycle == 0) then
				return false
			end
			return true
		end,
		function()
			for i=0,(PlayerMax - 2) do
				if (GetPlayerData(i, "AiEnabled")) then
					local uncount = 0
					uncount = GetUnits(i)
					for unit1 = 1,table.getn(uncount) do 

						-- make AI guard towers be filled with defenders
						if ((GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Class") == "guard-tower" and GetUnitVariable(uncount[unit1], "Transport") < 2) or (GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Class") == "watch-tower" and GetUnitVariable(uncount[unit1], "Transport") < 1)) then
							unit = CreateUnitInTransporter(GetCivilizationClassUnitType("shooter", GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Civilization")), i, uncount[unit1])
							SetUnitVariable(unit, "Active", false) -- set garrisoned unit to passive AI (so that they are not counted for attack participation)
						end
						
						-- make AI strongholds be filled with defenders
						if (GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Class") == "stronghold" and GetUnitVariable(uncount[unit1], "Transport") < 3) then
							unit = CreateUnitInTransporter(GetCivilizationClassUnitType("shooter", GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Civilization")), i, uncount[unit1])
							SetUnitVariable(unit, "Active", false) -- set garrisoned unit to passive AI (so that they are not counted for attack participation)
						end
					end
				end
			end
			return true
		end
	)

	-- Tips
	if (wyr.preferences.ShowTips and not IsReplayGame() and not IsNetworkGame()) then
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Level Up") == false) then
			AddTrigger("tip-level-up",
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
			AddTrigger("tip-experience",
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
			AddTrigger("tip-persistent-heroes",
				function()
					if (
						table.getn(GetSelectedUnits()) > 0
						and GetUnitVariable(GetSelectedUnits()[1], "Character") ~= ""
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
			AddTrigger("tip-bura",
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
			AddTrigger("tip-erala",
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
			AddTrigger("tip-skutan",
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
			AddTrigger("tip-chieftains-hall",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-germanic-town-hall") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Chieftain's Hall", "The Chieftain's Hall can be used to train worker units. It also serves as a place where workers can return resources to, after harvesting. This structure can only be built on top of a Settlement Site.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "War Lodge") == false) then
			AddTrigger("tip-war-lodge",
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
			AddTrigger("tip-carpenters-shop",
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
			AddTrigger("tip-smithy",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and (GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-germanic-smithy" or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-teuton-smithy" or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-latin-smithy" or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-dwarven-smithy" or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-brising-smithy")) then
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
			AddTrigger("tip-temple",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and (GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-teuton-temple" or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-dwarven-temple" or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-goblin-temple")) then
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
		
		--[[
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Krieger") == false) then
			AddTrigger("tip-krieger",
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
					Tip("Krieger", "The Krieger (or Kregar) is the melee infantry unit of the Anglo-Saxon, Frankish, Suebi and Teuton civilizations, replacing the Erala.")
					return false
				end
			)
		end
		--]]
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Swordsman") == false) then
			AddTrigger("tip-swordsman",
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
					Tip("Swordsman", "The Swordsman is the melee infantry unit of the Anglo-Saxon, Frankish, Suebi and Teuton civilizations, replacing the Erala.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Catapult") == false) then
			AddTrigger("tip-catapult",
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
			AddTrigger("tip-watch-tower",
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
			AddTrigger("tip-guard-tower",
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
			AddTrigger("tip-miner",
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
					Tip("Miner", "The Miner is the worker unit of the Dwarven civilization. It is used to build structures, harvest resources and repair buildings. Miners can be trained at the Mead Hall. Miners have a gathering rate bonus when harvesting metals, and a malus when gathering lumber.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Axefighter") == false) then
			AddTrigger("tip-axefighter",
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
			AddTrigger("tip-scout",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and (GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-dwarven-scout" or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-joruvellir-scout")) then
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
			AddTrigger("tip-ballista",
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
			AddTrigger("tip-mead-hall",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and (GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-dwarven-town-hall")) then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Mead Hall", "The Mead Hall can be used to train worker units. It also serves as a place where workers can return resources to, after harvesting. This structure can only be built on top of a Settlement Site.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "War Hall") == false) then
			AddTrigger("tip-war-hall",
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
			AddTrigger("tip-lumber-mill",
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
			AddTrigger("tip-sentry-tower",
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
			AddTrigger("tip-scavenger",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and (GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-gnomish-worker" or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-deep-gnomish-worker" or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-derro-worker")) then
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
			AddTrigger("tip-recruit",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and (GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-gnomish-recruit" or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-deep-gnomish-recruit")) then
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
			AddTrigger("tip-herbalist",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and (GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-gnomish-herbalist" or GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-deep-gnomish-herbalist")) then
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
			AddTrigger("tip-war-machine",
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
			AddTrigger("tip-wyrm",
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
			AddTrigger("tip-mercenary-camp",
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
			AddTrigger("tip-gold-rock",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-gold-rock") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Gold Rock", "Gold rocks can be mined for gold, which when processed is converted to copper at a 400% rate.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Gold Deposit") == false) then
			AddTrigger("tip-gold-deposit",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-gold-deposit") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Gold Deposit", "Gold deposits are the most durable source of gold. Build a gold mine on top of it to harvest the gold within, which when processed is converted to copper at a 400% rate.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Silver Rock") == false) then
			AddTrigger("tip-silver-rock",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-silver-rock") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Silver Rock", "Silver rocks can be mined for silver, which when processed is converted to copper at a 200% rate.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Silver Deposit") == false) then
			AddTrigger("tip-silver-deposit",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-silver-deposit") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Silver Deposit", "Silver deposits are the most durable source of silver. Build a silver mine on top of it to harvest the silver within, which when processed is converted to copper at a 200% rate.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Copper Rock") == false) then
			AddTrigger("tip-copper-rock",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-copper-rock") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Copper Rock", "Copper rocks can be mined for copper.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Copper Deposit") == false) then
			AddTrigger("tip-copper-deposit",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-copper-deposit") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Copper Deposit", "Copper deposits are the most durable source of copper. Build a copper mine on top of it to harvest the copper within.")
					return false
				end
			)
		end
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Wood Pile") == false) then
			AddTrigger("tip-wood-pile",
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
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Stone Pile") == false) then
			AddTrigger("tip-stone-pile",
				function()
					if (table.getn(GetSelectedUnits()) > 0 and GetUnitVariable(GetSelectedUnits()[1], "Ident") == "unit-stone-pile") then
						return true
					else
						return false
					end
				end,
				function()
					Tip("Stone Pile", "Stone piles can be harvested for stone. When a building that costs stone is destroyed, it has a chance to spawn a stone pile.")
					return false
				end
			)
		end		
		
		if (GetArrayIncludes(wyr.preferences.TipsShown, "Log") == false) then
			AddTrigger("tip-log",
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
			AddTrigger("tip-tree-stump",
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
			AddTrigger("tip-hole",
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
			AddTrigger("tip-raft",
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
			AddTrigger("tip-food",
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
			AddTrigger("tip-potion-of-healing",
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
	local civilization_factions = GetFactions(civilization)

	-- remove faction names already in use
	for i=0,(PlayerMax - 2) do
		if (table.getn(civilization_factions) > 0 and GetPlayerData(i, "RaceName") == civilization) then
			RemoveElementFromArray(civilization_factions, GetPlayerData(i, "Name"))
		end
	end
	return civilization_factions
end

function GetCivilizationExists(civilization)
	for i=0,(PlayerMax - 2) do
		if (GetPlayerData(i, "RaceName") == civilization) then
			return true
		end
	end
	return false
end

function GetFactionExists(faction)
	for i=0,(PlayerMax - 2) do
		if (Players[i].Type ~= PlayerNobody and (GetPlayerData(i, "Name") == faction or GetPlayerData(i, "Faction") == faction) and GetPlayerData(i, "TotalNumUnitsConstructed") > 0) then
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
	for i=0,(PlayerMax - 2) do
		if (GetPlayerData(i, "TotalNumUnits") > 0 and GetPlayerData(i, "RaceName") == civilization) then
			player_count = player_count + 1
		end
	end
	return player_count
end

function GetFactionPlayer(faction)
	for i=0,(PlayerMax - 2) do
		if (Players[i].Type ~= PlayerNobody and (GetPlayerData(i, "Name") == faction or GetPlayerData(i, "Faction") == faction)) then
			return i
		end
	end
	return nil
end

function GetNumRivals(player)
	local rival_count = 0
	for i=0,(PlayerMax - 2) do
		if (player ~= i and (Players[i].Type == PlayerPerson or Players[i].Type == PlayerComputer) and (Players[player]:IsAllied(Players[i]) == false or Players[i]:IsAllied(Players[player]) == false) and (GetPlayerData(i, "Faction") == "" or GetFactionData(GetPlayerData(i, "Faction"), "Type") == "tribe" or GetFactionData(GetPlayerData(i, "Faction"), "Type") == "polity") and GetPlayerData(player, "HasContactWith", i)) then
			local total_units = GetPlayerData(i, "TotalNumUnitsConstructed") - GetPlayerData(i, "UnitTypesCount", "unit-goblin-glider")
			total_units = total_units - GetPlayerData(i, "UnitTypesCount", "unit-gold-mine") - GetPlayerData(i, "UnitTypesCount", "unit-silver-mine") - GetPlayerData(i, "UnitTypesCount", "unit-copper-mine") - GetPlayerData(i, "UnitTypesCount", "unit-diamond-mine") - GetPlayerData(i, "UnitTypesCount", "unit-emerald-mine") - GetPlayerData(i, "UnitTypesCount", "unit-yale-hunting-lodge")
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
	for i=0,(PlayerMax - 2) do
		if (player ~= i and (Players[i].Type == PlayerPerson or Players[i].Type == PlayerComputer) and Players[player]:IsAllied(Players[i]) and Players[i]:IsAllied(Players[player])) then
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0) then
				ally_count = ally_count + 1
			end
		end
	end
	return ally_count
end

function GetNumPlayers()
	local player_count = 0
	for i=0,(PlayerMax - 2) do
		if (GetPlayerData(i, "TotalNumUnits") > 0) then
			player_count = player_count + 1
		end
	end
	return player_count
end

function InitializeUnit(unit)
	if (GetUnitVariable(unit, "Ident") == "unit-mushroom" or GetUnitVariable(unit, "Ident") == "unit-mushroom-patch") then
		SetUnitVariable(unit, "LifeStage", (SyncRand(13) + 1))
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

function FindUnit(unit_type, player, random_unit, last_unit, settlement)
	local uncount = 0
	
	if (player ~= nil) then
		uncount = GetUnits(player)
	else
		uncount = GetUnits("any")
	end
	
	local units_found = {}
	
	if (last_unit) then
		for unit1 = table.getn(uncount), 1, -1 do
			if (GetUnitVariable(uncount[unit1], "Ident") == unit_type or (unit_type == "town_hall" and GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "TownHall")) or (unit_type == "any_organic" and GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "organic")) or unit_type == "any") then
				if (GetUnitVariable(uncount[unit1], "HitPoints") > 0 and GetUnitVariable(uncount[unit1], "Built") and (settlement == nil or GetUnitVariable(uncount[unit1], "Settlement") == settlement)) then
					return uncount[unit1]
				end
			end
		end
	else
		for unit1 = 1,table.getn(uncount) do 
			if (GetUnitVariable(uncount[unit1], "Ident") == unit_type or (unit_type == "town_hall" and GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "TownHall")) or (unit_type == "any_organic" and GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "organic")) or unit_type == "any") then
				if (GetUnitVariable(uncount[unit1], "HitPoints") > 0 and GetUnitVariable(uncount[unit1], "Built") and (settlement == nil or GetUnitVariable(uncount[unit1], "Settlement") == settlement)) then
					if (random_unit) then
						table.insert(units_found, uncount[unit1])
					else
						return uncount[unit1]
					end
				end
			end
		end
	end
	
	if (table.getn(units_found) > 0) then
		return units_found[SyncRand(table.getn(units_found)) + 1]
	end
	
	return nil
end

function FindUnitOfClass(unit_class, player, random_unit, last_unit)
	local uncount = 0
	
	if (player ~= nil) then
		uncount = GetUnits(player)
	else
		uncount = GetUnits("any")
	end
	
	local units_of_class = {}
	
	if (last_unit) then
		for unit1 = table.getn(uncount), 1, -1 do
			if (GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Class") == unit_class) then
				if (GetUnitVariable(uncount[unit1], "HitPoints") > 0 and GetUnitVariable(uncount[unit1], "Built")) then
					return uncount[unit1]
				end
			end
		end
	else
		for unit1 = 1,table.getn(uncount) do 
			if (GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Class") == unit_class) then
				if (GetUnitVariable(uncount[unit1], "HitPoints") > 0 and GetUnitVariable(uncount[unit1], "Built")) then
					if (random_unit) then
						table.insert(units_of_class, uncount[unit1])
					else
						return uncount[unit1]
					end
				end
			end
		end
	end
	
	if (table.getn(units_of_class) > 0) then
		return units_of_class[SyncRand(table.getn(units_of_class)) + 1]
	end
	
	return nil
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

function FindUnique(unique, player)
	local uncount = 0
	
	if (player) then
		uncount = GetUnits(player)
	else
		uncount = GetUnits("any")
	end
	
	for unit1 = 1,table.getn(uncount) do 
		if (GetUnitVariable(uncount[unit1], "Unique") == unique) then
			return uncount[unit1]
		end
	end
	
	return nil
end

function PersistencyUpdates()
	if (wyr.preferences.QuestsCompleted ~= nil) then
		for i=1, table.getn(wyr.preferences.QuestsCompleted) do
			SetQuestCompleted(wyr.preferences.QuestsCompleted[i])
		end
		wyr.preferences.QuestsCompleted = nil
		SavePreferences()
	end
	
	if (wyr.preferences.TechnologyAcquired ~= nil) then
		wyr.preferences.TechnologyAcquired = nil
		SavePreferences()
	end
	
	for i=1,table.getn(wyr.preferences.EnabledMods) do
		if not (CanAccessFile(wyr.preferences.EnabledMods[i])) then
			wyr.preferences.EnabledMods[i] = nil
		end
		SavePreferences()
	end
	
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
	
	if (wyr.preferences.SavedGrandStrategyGames ~= nil) then
		wyr.preferences.SavedGrandStrategyGames = nil
	elseif (wyr.preferences.GrandStrategySaveGames ~= nil) then
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

function FullyCapitalizeStringAndCreateSpaces(str)
	str = string.gsub(str, "_", " ")
	str = string.gsub(str, "-", " ")
	str = (str:gsub("^%l", string.upper))
	str = (str:gsub(" %l", string.upper))
    return str
end

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
if (CanAccessFile("preferences.lua")) then
	Load("preferences.lua")
end
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
	KeyScrollSpeed = 1,
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
	VideoWidth = 1066,
	ShowMessages = true,
	ShowPathlines = false,
	Language = "English",
	ShowResourceBar = false,
	ShowHeroSymbol = false,
	PopupDescriptionFont = "small",
	Autosave = true,
	PlayerColorCircle = false,
	HotkeySetup = 0,
	NoRandomness = false,
	NoTimeOfDay = false,
	AutomaticBattles = false,
	Difficulty = 2,
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
SetKeyScrollSpeed(wyr.preferences.KeyScrollSpeed)
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
	Preference.AutosaveMinutes = 5
else
	Preference.AutosaveMinutes = 0
end
Preference.PlayerColorCircle = wyr.preferences.PlayerColorCircle
Preference.HotkeySetup = wyr.preferences.HotkeySetup

if not (CanAccessFile("preferences.lua")) then
	SavePreferences()
end

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
Load("scripts/upgrade_functions.lua")
Load("scripts/abilities.lua")
Load("scripts/spells.lua")
Load("scripts/terrain_types.lua")
Load("scripts/world_map_terrain_types.lua")
Load("scripts/deity_domains.lua")
Load("scripts/planes.lua")
Load("scripts/worlds.lua")
Load("scripts/species.lua")
Load("scripts/units.lua")
Load("scripts/upgrade.lua")
Load("scripts/ability_dependencies.lua")
Load("scripts/religions.lua")
Load("scripts/deities.lua")
Load("scripts/wyr.lua")
Load("scripts/fonts.lua")
Load("scripts/buttons.lua")
Load("scripts/ai.lua")
Load("scripts/commands.lua")
Load("scripts/cheats.lua")
Load("scripts/map_generation.lua")
Load("scripts/provinces.lua")
Load("scripts/terrain_features.lua")
Load("scripts/unique_items.lua")
Load("scripts/map_templates.lua")
Load("scripts/settlements.lua")
Load("scripts/characters.lua")
Load("scripts/quests.lua")
Load("scripts/map_template_data.lua")
Load("scripts/pathways.lua")
Load("scripts/campaigns.lua")
Load("scripts/events.lua")
Load("scripts/achievements.lua")
Load("scripts/texts.lua")
Load("scripts/ui.lua")

DebugPrint("... ready!\n")
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
--      stratagus.lua - The craft configuration language.
--
--      (c) Copyright 1998-2011 by Lutz Sammer and Pali Rohár
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
wyrmsun.Version = "1.0.0"
wyrmsun.Homepage = ""
wyrmsun.Licence = "GPL v2"
wyrmsun.Copyright = "Copyright (c) 2013-2014 by Andre Novellino Gouvea"

-------------------------------------------------------------------------------
--  Config-Part
-------------------------------------------------------------------------------

MapDirectories = {"maps/"}

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

DefineBoolFlags("Center", "LumberImprove", "OilImprove")

--  Edit the next sections to get your look and feel.
--  Note, some of those values are overridden by user preferences,
--  see preferences.lua

--  Enter your default title screen.
SetTitleScreens(
-- FIXME: No good title image yet
--  {Image = "ui/title.png", Music = "music/legends_of_the_north.ogg", Timeout = 20}
)

-------------------------------------------------------------------------------
--	Music play list -	Insert your titles here
-------------------------------------------------------------------------------
wyrmsun.playlist = { "music/legends_of_the_north.ogg" }

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

Preference.ShowOrders = 2

SetMetaServer("stratagus.game-host.org", 7775)

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
--  (Auf allgemeinen Wunsch eines einzelnen Herrn :)
SetForestRegeneration(0)
--SetForestRegeneration(5)

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

--  Define default resources

-- FIXME: Must be removed: Use and write (define-resource)
--
--  (define-resource 'gold 'name "Gold"
--    'start-resource-default 2000
--    'start-resource-low 2000
--    'start-resource-medium 5000
--    'start-resource-high 10000
--    'income 100)
--  FIXME: Must describe how geting resources work.
--

DefineDefaultIncomes(
  0, 100, 100, 100, 100, 100, 100)

DefineDefaultActions(
  "stop", "mine", "gather", "drill", "mine", "mine", "mine")

DefineDefaultResourceNames(
  "time", "gold", "lumber", "oil", "ore", "stone", "coal")

DefineDefaultResourceAmounts(
  "gold", 100000,
  "oil", 50000,
  "coal", 50000)

DefineDefaultResourceMaxAmounts(-1, -1, -1, -1, -1, -1, -1)

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
  "acid", {{229, 11, 217}, {144, 18, 206}, {82, 0, 185}, {42, 0, 111}},
})

--  If color-cycle-all is off (#f) only the tileset palette is color cycled.
-- Otherwise (#t) all palettes are color cycled.
SetColorCycleAll(true)
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
SetMaxSelectable(18)

--  All player food unit limit
SetAllPlayersUnitLimit(200)
--  All player building limit
SetAllPlayersBuildingLimit(200)
--  All player total unit limit
SetAllPlayersTotalUnitLimit(400)

-------------------------------------------------------------------------------

DefineVariables(
--	"CharacterName", {Max = 255, Value = 0, Increase = 0, Enable = true},
	"Traits", {Max = 255, Value = 0, Increase = 0, Enable = true},
	"TraitResilient", {Max = 1, Value = 0, Increase = 0, Enable = true},
	"TraitStrong", {Max = 1, Value = 0, Increase = 0, Enable = true},
	"Level", {Max = 255, Value = 1, Increase = 0, Enable = true},
	"BasePoints", {Max = 99999, Value = 0, Increase = 0, Enable = true},
	"Points", {Max = 99999, Value = 0, Increase = 0, Enable = true},
--	"Points",
	"XpRequired", {Max = 43500, Value = 200, Increase = 0, Enable = true},
	"LevelUp", {Max = 255, Value = 0, Increase = 0, Enable = true},
	"Variation", {Enable = true},
	"GraphicsVariation", {Max = 255, Value = 0, Increase = 0, Enable = true},
	"BasicDamageBonus", {Max = 255, Value = 0, Increase = 0, Enable = true},
	"PiercingDamageBonus", {Max = 255, Value = 0, Increase = 0, Enable = true},
	"ArmorBonus", {Max = 255, Value = 0, Increase = 0, Enable = true},
	"StartingLevel", {Max = 255, Value = 1, Increase = 0, Enable = true},
	"LifeStage", {Max = 99999, Value = 0, Increase = 0, Enable = true},
	"LastCycle", {Max = 99999, Value = 0, Increase = 0, Enable = true},
	"CustomAIState", {Max = 99999, Value = 0, Increase = 0, Enable = true},
	"ForTheMotherland", {Max = 1, Value = 0, Increase = 0, Enable = true}, -- 0 = not a FtM unit creator, 1 = is a FtM unit creator
	"AxeMastery", {Max = 1, Value = 0, Increase = 0, Enable = true},
	"CriticalStrike", {Max = 1, Value = 0, Increase = 0, Enable = true},
	"AxeOfPerun", {Max = 2, Value = 0, Increase = 0, Enable = true} -- 0 = not owned, 1 = owned, 2 = equipped
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
			return total_units <= 0
		end,
		function()
			if (GrandStrategy and GrandStrategyEventMap == false) then
				local victorious_player = ""
				if (Attacker == GrandStrategyFaction.Name) then
					victorious_player = Defender
				elseif (Defender == GrandStrategyFaction.Name) then
					victorious_player = Attacker
				end

				-- set the new unit quantity to the surviving units of the victorious side
				for gsunit_key, gsunit_value in pairs(GrandStrategyUnits) do
					AttackingUnits[gsunit_key] = GetPlayerData(GetFactionPlayer(victorious_player), "UnitTypesCount", GrandStrategyUnits[gsunit_key].UnitType)
				end
					
				-- upgrade units which leveled up during the battle, if a veteran unit for them is available
				local uncount = 0
				uncount = GetUnits(GetFactionPlayer(victorious_player))
				for unit1 = 1,table.getn(uncount) do 
					if (GetUnitVariable(uncount[unit1], "Level") > GetUnitVariable(uncount[unit1], "StartingLevel")) then
						for gsunit_key, gsunit_value in pairs(GrandStrategyUnits) do
							if (GrandStrategyUnits[gsunit_key].AdvancesFrom ~= "" and GrandStrategyUnits[GrandStrategyUnits[gsunit_key].AdvancesFrom].UnitType == GetUnitVariable(uncount[unit1], "Ident")) then
								AttackingUnits[gsunit_key] = AttackingUnits[gsunit_key] + 1
								AttackingUnits[GrandStrategyUnits[gsunit_key].AdvancesFrom] = AttackingUnits[GrandStrategyUnits[gsunit_key].AdvancesFrom] - 1
							end
						end
					end
				end
			end
			return ActionDefeat()
		end
	)

	AddTrigger(
--		function() return GetNumOpponents(GetThisPlayer()) == 0 end,
		function()
			if (GetNumRivals(GetThisPlayer()) == 0 and PlayerHasObjective(GetThisPlayer(), "- Destroy the enemy")) then
				return true
			end
		end,
		function()
			if (GrandStrategy and GrandStrategyEventMap == false) then
				-- set the new unit quantity to the surviving units of the victorious side
				for gsunit_key, gsunit_value in pairs(GrandStrategyUnits) do
					AttackingUnits[gsunit_key] = GetPlayerData(GetThisPlayer(), "UnitTypesCount", GrandStrategyUnits[gsunit_key].UnitType)
				end
					
				-- upgrade units which leveled up during the battle, if a veteran unit for them is available
				local uncount = 0
				uncount = GetUnits(GetThisPlayer())
				for unit1 = 1,table.getn(uncount) do 
					if (GetUnitVariable(uncount[unit1], "Level") > GetUnitVariable(uncount[unit1], "StartingLevel")) then
						for gsunit_key, gsunit_value in pairs(GrandStrategyUnits) do
							if (GrandStrategyUnits[gsunit_key].AdvancesFrom ~= "" and GrandStrategyUnits[GrandStrategyUnits[gsunit_key].AdvancesFrom].UnitType == GetUnitVariable(uncount[unit1], "Ident")) then
								AttackingUnits[gsunit_key] = AttackingUnits[gsunit_key] + 1
								AttackingUnits[GrandStrategyUnits[gsunit_key].AdvancesFrom] = AttackingUnits[GrandStrategyUnits[gsunit_key].AdvancesFrom] - 1
							end
						end
					end
				end
			end
			return ActionVictory()
		end
	)

	if (LoadedGame == false) then
		for key, value in pairs(CustomPlayerData) do
			for i=1,table.getn(CustomPlayerData[key].Objectives) do
				table.remove(CustomPlayerData[key].Objectives, i)
			end
		end

		for key, value in pairs(CustomPlayerData) do
			CustomPlayerData[key].Objectives = {"- Destroy the enemy"}
		end
	end

--	if (GetPlayerData(GetThisPlayer(), "RaceName") == "dwarf") then
--		Load("scripts/dwarf/ui.lua")
--	elseif (GetPlayerData(GetThisPlayer(), "RaceName") == "gnome") then
--		Load("scripts/gnome/ui.lua")
--	elseif (GetPlayerData(GetThisPlayer(), "RaceName") == "goblin") then
--		Load("scripts/goblin/ui.lua")
--	end

	CreateDecorations()

	StandardTriggers()

	if (not IsNetworkGame()) then
		if (PlayerFaction ~= "") then
			SetPlayerData(GetThisPlayer(), "Faction", PlayerFaction)
		end
	end

	if (LoadedGame == false) then
		DefineAllowNormalUnits("AAAAAAAAAAAAAAAA")
		DefineAllowExtraUnits("FFFFFFFFFFFFFFFF")
		DefineAllowMercenaryUnits("AAAAAAAAAAAAAAAA")
		ApplyTechLevels()
		if (GrandStrategy) then
			for i=0,14 do
				if (GetPlayerData(i, "TotalNumUnits") > 0 and GetFactionFromName(GetPlayerData(i, "Name")) ~= nil) then
					for gsunit_key, gsunit_value in pairs(GrandStrategyTechnologies) do -- if in grand strategy mode, apply upgrades researched
						if (GetFactionFromName(GetPlayerData(i, "Name")).Technologies[gsunit_key] == 2) then
							AcquireUpgrade(i, GrandStrategyTechnologies[gsunit_key].UpgradeType)
						end
					end
				end
			end
		end
	end

	-- for now events are limited to single player
	if (not IsNetworkGame()) then
		EventTriggers()
	end

	-- setup graphics variations
	local uncount = 0
	uncount = GetUnits("any")
	for unit1 = 1,table.getn(uncount) do 
		if (GetUnitVariable(uncount[unit1],"GraphicsVariation") == 0) then
			if ((GetUnitVariable(uncount[unit1], "Ident") == "unit-large-flower" and wyrmsun.tileset == "swamp")) then
				SetUnitVariable(uncount[unit1], "GraphicsVariation", (SyncRand(12) + 1))
			elseif ((GetUnitVariable(uncount[unit1], "Ident") == "unit-fern" and wyrmsun.tileset == "swamp")) then
				SetUnitVariable(uncount[unit1], "GraphicsVariation", (SyncRand(4) + 1))
			elseif ((GetUnitVariable(uncount[unit1], "Ident") == "unit-flowers" and wyrmsun.tileset == "swamp") or (GetUnitVariable(uncount[unit1], "Ident") == "unit-large-flower" and (wyrmsun.tileset == "forest" or wyrmsun.tileset == "fairlimbed_forest"))) then
				SetUnitVariable(uncount[unit1], "GraphicsVariation", (SyncRand(3) + 1))
			elseif (GetUnitVariable(uncount[unit1], "Ident") == "unit-mushroom" or GetUnitVariable(uncount[unit1], "Ident") == "unit-mushroom-patch") then
				SetUnitVariable(uncount[unit1], "LifeStage", (SyncRand(13) + 1))
			end
		end
		if (GetUnitVariable(uncount[unit1], "Points") == 0 and GetUnitVariable(uncount[unit1], "BasePoints") > 0) then
			SetUnitVariable(uncount[unit1], "Points", GetUnitVariable(uncount[unit1], "BasePoints"))
		end
		if (GetUnitVariable(uncount[unit1], "Level") < GetUnitVariable(uncount[unit1], "StartingLevel")) then
			IncreaseUnitLevel(uncount[unit1], (GetUnitVariable(uncount[unit1], "StartingLevel") - GetUnitVariable(uncount[unit1], "Level")), false)
		end
	end
	
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
					elseif ((GetUnitVariable(uncount[unit1], "Ident") == "unit-flowers" and wyrmsun.tileset == "swamp") or (GetUnitVariable(uncount[unit1], "Ident") == "unit-large-flower" and (wyrmsun.tileset == "forest" or wyrmsun.tileset == "fairlimbed_forest"))) then
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
				
				-- upgrade AI units that have leveled up and are capable of doing so
				if (GetPlayerData(GetUnitVariable(uncount[unit1], "Player"), "AiEnabled") and GetUnitVariable(uncount[unit1], "LevelUp") >= 1) then
					if (GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-axefighter") then
						SetUnitVariable(uncount[unit1], "LevelUp", GetUnitVariable(uncount[unit1], "LevelUp") - 1)
						ConvertUnit(uncount[unit1], "unit-dwarven-steelclad")
					elseif (GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-steelclad") then
						SetUnitVariable(uncount[unit1], "LevelUp", GetUnitVariable(uncount[unit1], "LevelUp") - 1)
						ConvertUnit(uncount[unit1], "unit-dwarven-thane")
					elseif (GetUnitVariable(uncount[unit1], "Ident") == "unit-surghan-mercenary-steelclad") then
						SetUnitVariable(uncount[unit1], "LevelUp", GetUnitVariable(uncount[unit1], "LevelUp") - 1)
						ConvertUnit(uncount[unit1], "unit-surghan-mercenary-thane")
					end
				end

				if (GetUnitVariable(uncount[unit1], "Points") == 0 and GetUnitVariable(uncount[unit1], "BasePoints") > 0) then
					SetUnitVariable(uncount[unit1], "Points", GetUnitVariable(uncount[unit1], "BasePoints"))
				end
				
				if (GetUnitVariable(uncount[unit1], "Level") < GetUnitVariable(uncount[unit1], "StartingLevel")) then
					IncreaseUnitLevel(uncount[unit1], (GetUnitVariable(uncount[unit1], "StartingLevel") - GetUnitVariable(uncount[unit1], "Level")), false)
				end

				-- fix starting level for upgraded units
				if (GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-steelclad" or GetUnitVariable(uncount[unit1], "Ident") == "unit-hero-rugnur-steelclad") then
					if (GetUnitVariable(uncount[unit1], "StartingLevel") <= 1) then
						SetUnitVariable(uncount[unit1], "StartingLevel", 2)
					end
				end
				if (GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-thane" or GetUnitVariable(uncount[unit1], "Ident") == "unit-surghan-mercenary-thane" or GetUnitVariable(uncount[unit1], "Ident") == "unit-hero-rugnur-thane" or GetUnitVariable(uncount[unit1], "Ident") == "unit-hero-baglur-thane") then
					if (GetUnitVariable(uncount[unit1], "StartingLevel") <= 2) then
						SetUnitVariable(uncount[unit1], "StartingLevel", 3)
					end
				end

				if (not IsNetworkGame()) then
					if (string.find(GetUnitVariable(uncount[unit1], "Ident"), "-hero-") ~= nil) then
						for key, value in pairs(wyr.preferences.Heroes) do
							if (wyr.preferences.Heroes[key].name == GetUnitVariable(uncount[unit1], "Name")) then
								-- apply persistent hero levels
								if (GetUnitVariable(uncount[unit1], "Level") < wyr.preferences.Heroes[key].level) then
									IncreaseUnitLevel(uncount[unit1], (wyr.preferences.Heroes[key].level - GetUnitVariable(uncount[unit1], "Level")), true)
								end

								-- load upgrades
								if (GetUnitVariable(uncount[unit1], "AxeMastery") < 1 and GetArrayIncludes(wyr.preferences.Heroes[key].upgrades, "upgrade-axe-mastery")) then
									SetUnitVariable(uncount[unit1], "AxeMastery", 1)
									UpdateUnitBonuses(uncount[unit1])
									SetUnitVariable(uncount[unit1], "LevelUp", GetUnitVariable(uncount[unit1], "LevelUp") - 1)
								end

								if (GetUnitVariable(uncount[unit1], "CriticalStrike") < 1 and GetArrayIncludes(wyr.preferences.Heroes[key].upgrades, "upgrade-critical-strike")) then
									SetUnitVariable(uncount[unit1], "CriticalStrike", 1)
									UpdateUnitBonuses(uncount[unit1])
									SetUnitVariable(uncount[unit1], "LevelUp", GetUnitVariable(uncount[unit1], "LevelUp") - 1)
								end

								if (GetUnitVariable(uncount[unit1], "LevelUp") > 0 and GetUnitVariable(uncount[unit1], "Level") > table.getn(GetUnitTypeLevelUpUpgrades(GetUnitVariable(uncount[unit1], "Ident"))) + GetUnitVariable(uncount[unit1], "StartingLevel")) then
									SetUnitVariable(uncount[unit1], "HitPoints", GetUnitVariable(uncount[unit1], "HitPoints", "Max") + (15 * GetUnitVariable(uncount[unit1], "LevelUp")), "Max")
									SetUnitVariable(uncount[unit1], "LevelUp", 0)
								end

								-- save upgrades
								if (GetPlayerData(GetUnitVariable(uncount[unit1], "Player"), "AiEnabled") == false) then
									if (GetUnitVariable(uncount[unit1], "AxeMastery") == 1 and GetArrayIncludes(wyr.preferences.Heroes[key].upgrades, "upgrade-axe-mastery") == false) then
										table.insert(wyr.preferences.Heroes[key].upgrades, "upgrade-axe-mastery")
										SavePreferences()
									end
									if (GetUnitVariable(uncount[unit1], "CriticalStrike") == 1 and GetArrayIncludes(wyr.preferences.Heroes[key].upgrades, "upgrade-critical-strike") == false) then
										table.insert(wyr.preferences.Heroes[key].upgrades, "upgrade-critical-strike")
										SavePreferences()
									end
									if (string.find(GetUnitVariable(uncount[unit1], "Ident"), "steelclad") ~= nil and GetArrayIncludes(wyr.preferences.Heroes[key].upgrades, "unit-dwarven-steelclad") == false) then
										table.insert(wyr.preferences.Heroes[key].upgrades, "unit-dwarven-steelclad")
										SavePreferences()
									end
									if (string.find(GetUnitVariable(uncount[unit1], "Ident"), "thane") ~= nil and GetArrayIncludes(wyr.preferences.Heroes[key].upgrades, "unit-dwarven-thane") == false) then
										table.insert(wyr.preferences.Heroes[key].upgrades, "unit-dwarven-thane")
										SavePreferences()
									end
								end
							end
						end
					end
				end

--				if (GetUnitVariable(uncount[unit1],"Traits") < 1 and GetUnitBoolFlag(uncount[unit1], "organic")) then
--					RandomNumber = SyncRand(2)
--					if (RandomNumber == 0) then
--						if (GetUnitVariable(uncount[unit1],"TraitResilient") < 1) then
--							SetUnitVariable(uncount[unit1], "Traits", GetUnitVariable(uncount[unit1],"Traits") + 1)
--							SetUnitVariable(uncount[unit1], "TraitResilient", 1)
--							SetUnitVariable(uncount[unit1], "HitPoints", GetUnitVariable(uncount[unit1], "HitPoints", "Max") + 4, "Max")
--							SetUnitVariable(uncount[unit1], "HitPoints", GetUnitVariable(uncount[unit1], "HitPoints", "Max"))
--						end
--					elseif (RandomNumber == 1) then
--						if (GetUnitVariable(uncount[unit1],"TraitStrong") < 1) then
--							SetUnitVariable(uncount[unit1], "Traits", GetUnitVariable(uncount[unit1],"Traits") + 1)
--							SetUnitVariable(uncount[unit1], "TraitStrong", 1)
--							SetUnitVariable(uncount[unit1], "HitPoints", GetUnitVariable(uncount[unit1], "HitPoints", "Max") + 1, "Max")
--							SetUnitVariable(uncount[unit1], "HitPoints", GetUnitVariable(uncount[unit1], "HitPoints", "Max"))
--						end
--					end
--					UpdateUnitBonuses(uncount[unit1])
--				end

				-- make certain critters retaliate if people get too near
				-- is not working (neutral player critters don't attack no matter what)
--				if (GetUnitVariable(uncount[unit1], "Ident") == "unit-critter") then
--					local people_quantity = GetNumUnitsAt(-1, "units", {GetUnitVariable(uncount[unit1],"PosX") - 1, GetUnitVariable(uncount[unit1],"PosY") - 1}, {GetUnitVariable(uncount[unit1],"PosX") + 1, GetUnitVariable(uncount[unit1],"PosY") + 1})
--					if (people_quantity > 0) then
--						local nearby_uncount = 0
--						nearby_uncount = GetUnitsAroundUnit(uncount[unit1], 1, true)
--						for unit2 = 1,table.getn(nearby_uncount) do 
--							if (GetUnitVariable(nearby_uncount[unit2], "Player") ~= 15) then
--								OrderUnit("any", "unit-critter", {GetUnitVariable(uncount[unit1],"PosX"), GetUnitVariable(uncount[unit1],"PosY")}, {GetUnitVariable(nearby_uncount[unit2],"PosX"), GetUnitVariable(nearby_uncount[unit2],"PosY")}, "attack")
--							end
--						end
--					end
--				end

				-- process items if stepped upon
				if (GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Item")) then
					local people_quantity = GetNumUnitsAt(-1, "units", {GetUnitVariable(uncount[unit1],"PosX"), GetUnitVariable(uncount[unit1],"PosY")}, {GetUnitVariable(uncount[unit1],"PosX"), GetUnitVariable(uncount[unit1],"PosY")})
					if (people_quantity > 0) then
						local nearby_uncount = 0
						nearby_uncount = GetUnitsAroundUnit(uncount[unit1], 0, false)
						for unit2 = 1,table.getn(nearby_uncount) do 
							if (GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "GivesResource") ~= "" and GetUnitVariable(uncount[unit1], "ResourcesHeld") > 0) then
								if (GetUnitVariable(nearby_uncount[unit2], "Player") == GetThisPlayer()) then
									AddMessage("Gained " .. GetUnitVariable(uncount[unit1], "ResourcesHeld") .. " " .. GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "GivesResource"))
								end
								
								SetPlayerData(GetUnitVariable(nearby_uncount[unit2], "Player"), "Resources", GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "GivesResource"), GetPlayerData(GetUnitVariable(nearby_uncount[unit2], "Player"), "Resources", GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "GivesResource")) + GetUnitVariable(uncount[unit1], "ResourcesHeld"))
								
								DamageUnit(nearby_uncount[unit2], uncount[unit1], 1)
							elseif (GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "HitPointHealing") > 0 and GetUnitVariable(nearby_uncount[unit2], "HitPoints") < GetUnitVariable(nearby_uncount[unit2], "HitPoints", "Max")) then
								local hp_healed = 0
								if ((GetUnitVariable(nearby_uncount[unit2], "HitPoints", "Max") - GetUnitVariable(nearby_uncount[unit2], "HitPoints")) < GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "HitPointHealing")) then
									hp_healed = GetUnitVariable(nearby_uncount[unit2], "HitPoints", "Max") - GetUnitVariable(nearby_uncount[unit2], "HitPoints")
								else
									hp_healed = GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "HitPointHealing")
								end
								if (GetUnitVariable(nearby_uncount[unit2], "Player") == GetThisPlayer()) then
									AddMessage("Healed " .. hp_healed .. " HP")
								end
								SetUnitVariable(nearby_uncount[unit2], "HitPoints", GetUnitVariable(nearby_uncount[unit2], "HitPoints") + hp_healed)
								DamageUnit(nearby_uncount[unit2], uncount[unit1], 1)
							elseif (GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "HitPointHealing") < 0) then
								if (GetUnitVariable(nearby_uncount[unit2], "Player") == GetThisPlayer()) then
									AddMessage("Suffered " .. (-1 * GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "HitPointHealing")) .. " HP loss")
								end
								SetUnitVariable(nearby_uncount[unit2], "HitPoints", GetUnitVariable(nearby_uncount[unit2], "HitPoints") + GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "HitPointHealing"))
								DamageUnit(nearby_uncount[unit2], uncount[unit1], 1)
							elseif (GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Food") and GetUnitTypeData(GetUnitVariable(nearby_uncount[unit2], "Ident"), "Fauna")) then -- make animals eat food items
								DamageUnit(nearby_uncount[unit2], uncount[unit1], 1)
							end
							break
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
							nearby_uncount = GetUnitsAroundUnit(uncount[unit1], 1, true)
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
				
				-- move gliders
				if (GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Class") == "glider" and IsUnitIdle(uncount[unit1])) then
					if (SyncRand(101) <= 33) then
						local target_x = GetUnitVariable(uncount[unit1],"PosX") + SyncRand(33) - 16
						local target_y = GetUnitVariable(uncount[unit1],"PosY") + SyncRand(33) - 16
						if (target_x >= 0 and target_x < Map.Info.MapWidth and target_y >= 0 and target_y < Map.Info.MapHeight) then
							OrderUnit(GetUnitVariable(uncount[unit1], "Player"), GetUnitVariable(uncount[unit1], "Ident"), {GetUnitVariable(uncount[unit1],"PosX"), GetUnitVariable(uncount[unit1],"PosY")}, {GetUnitVariable(uncount[unit1],"PosX") + SyncRand(33) - 16, GetUnitVariable(uncount[unit1],"PosY") + SyncRand(33) - 16}, "move")
						end
					end
				end
			end
			return true
		end
	)

	-- create extra Surghan Mercenaries if they have been hired
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
				if (GetPlayerData(GetUnitVariable(uncount[unit1], "Player"), "UnitTypesCount", "unit-mercenary-camp") >= 1 and GetUnitVariable(uncount[unit1], "Ident") == "unit-surghan-mercenary-steelclad") then
					unit = CreateUnit("unit-surghan-mercenary-steelclad", GetUnitVariable(uncount[unit1], "Player"), {GetUnitVariable(uncount[unit1], "PosX"), GetUnitVariable(uncount[unit1], "PosY")})
					unit = CreateUnit("unit-surghan-mercenary-steelclad", GetUnitVariable(uncount[unit1], "Player"), {GetUnitVariable(uncount[unit1], "PosX"), GetUnitVariable(uncount[unit1], "PosY")})
					unit = CreateUnit("unit-surghan-mercenary-steelclad", GetUnitVariable(uncount[unit1], "Player"), {GetUnitVariable(uncount[unit1], "PosX"), GetUnitVariable(uncount[unit1], "PosY")})
					DefineAllow("unit-surghan-mercenary-steelclad", "FFFFFFFFFFFFFFFF")
					return false
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
				if (GetPlayerData(GetUnitVariable(uncount[unit1], "Player"), "AiEnabled") and (GetUnitVariable(uncount[unit1], "Ident") == "unit-surghan-mercenary-steelclad" or GetUnitVariable(uncount[unit1], "Ident") == "unit-surghan-mercenary-thane") and IsUnitIdle(uncount[unit1])) then

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

	-- increase unit level if it has enough experience
	AddTrigger(
		function()
			return true
		end,
		function()
			local uncount = 0
			uncount = GetUnits("any")
			for unit1 = 1,table.getn(uncount) do 
				if (GetUnitVariable(uncount[unit1], "Xp") >= GetUnitVariable(uncount[unit1], "XpRequired") and GetUnitBoolFlag(uncount[unit1], "Building") == false and GetUnitBoolFlag(uncount[unit1], "organic")) then
					IncreaseUnitLevel(uncount[unit1], 1, true)
					if (GetUnitVariable(uncount[unit1], "Player") == GetThisPlayer()) then
						AddMessage("Your " .. GetUnitTypeName(GetUnitVariable(uncount[unit1], "Ident")) .. " has leveled up!")
					end
				end
			end
			return true
		end
	)

	-- randomly pick a character name for the unit
--	AddTrigger(
--		function()
--			local uncount = 0
--			uncount = GetUnits("any")
--			for unit1 = 1,table.getn(uncount) do 
--				if (GetUnitVariable(uncount[unit1],"CharacterName") < 1) then
--					RandomNumber = SyncRand(77) + 1
--					SetUnitVariable(uncount[unit1], "CharacterName", RandomNumber)
--				end
--			end
--			return false
--		end,
--		function()
--			return true
--		end
--	)
end

--[[
function GetCivilizationFactions(civilization)
	if (civilization == "dwarf") then
		return {"Norlund Clan", "Shinsplitter Clan", "Shorbear Clan"}
	elseif (civilization == "elf") then
		return {"Lintanir", "Ulfdalir", "Wesmere"}
	elseif (civilization == "germanic") then
		return {"Asa Tribe", "Vana Tribe"}
	elseif (civilization == "gnome") then
		return {"Untersberg"}
	elseif (civilization == "goblin") then
		return {"Goblins"}
	elseif (civilization == "kobold") then
		return {"Kobolds"}
	elseif (civilization == "orc") then
		return {"Blackeye Clan", "Bloody Sword Clan"}
	elseif (civilization == "troll") then
		return {"Trolls"}
	else
		return { }
	end
end
--]]

function GetCivilizationAvailableFactions(civilization)
	local civilization_factions = GetCivilizationFactionNames(civilization)

	-- remove faction names already in use
	for i=0,14 do
		if (table.getn(civilization_factions) > 0) then
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

function GetFactionForbiddenUnits(faction)
	if (faction == "Norlund Clan") then
		return { }
	elseif (faction == "Shinsplitter Clan") then
		return { }
	elseif (faction == "Shorbear Clan") then
		return { }
	elseif (faction == "Kal Kartha") then
		return { }
	elseif (faction == "Knalga") then
		return { }
	elseif (faction == "Lyr") then
		return { }
	elseif (faction == "Goblins") then
		return { }
	else
		return { }
	end
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
		if (GetPlayerData(i, "Name") == faction) then
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

function GetUnitTypeLevelUpUpgrades(unit_type)
	if (unit_type == "unit-dwarven-axefighter" or unit_type == "unit-hero-rugnur") then
		return { "upgrade-dwarven-steelclad" }
	elseif (unit_type == "unit-dwarven-steelclad" or unit_type == "unit-surghan-mercenary-steelclad" or unit_type == "unit-hero-rugnur-steelclad" or unit_type == "unit-hero-baglur") then
		return { "upgrade-dwarven-thane" }
	elseif (unit_type == "unit-dwarven-thane" or unit_type == "unit-surghan-mercenary-thane" or unit_type == "unit-hero-rugnur-thane" or unit_type == "unit-hero-baglur-thane" or unit_type == "unit-hero-thursagan" or unit_type == "unit-hero-durstorn") then
		return { "upgrade-axe-mastery", "upgrade-critical-strike" }
	elseif (unit_type == "unit-dwarven-scout") then
		return { "upgrade-critical-strike" }
	elseif (unit_type == "unit-dwarven-gryphon-rider") then
		return { "upgrade-critical-strike" }
	elseif (unit_type == "unit-germanic-warrior") then
		return { "upgrade-critical-strike" }
	elseif (unit_type == "unit-gnomish-recruit") then
		return { "upgrade-critical-strike" }
	elseif (unit_type == "unit-goblin-spearman") then
		return { "upgrade-critical-strike" }
	elseif (unit_type == "unit-goblin-archer") then
		return { "upgrade-critical-strike" }
	elseif (unit_type == "unit-hero-greebo") then
		return { "upgrade-critical-strike" }
	else
		return {}
	end
end

function GetRandomCharacterName(civilization, gender, is_monarch)
	local random_character_name = ""
	local character_names = {}
	if (gender == "random") then
		local genders = { "male", "female" }
		gender = genders[SyncRand(table.getn(genders)) + 1]
	end
	if (civilization == "dwarf") then
		-- dwarven character names were taken from Norse mythology and Battle for Wesnoth
		if (gender == "male") then
			character_names = { "Ai", "Aigaithas", "Aigaithil", "Aigaithing", "Aigaithol", "Aigalas", "Aigaling", "Aigalis", "Aigalol", "Aigalsil", "Aigatas", "Aigatis", "Aigatlos", "Aigatsil", "Aigatsol", "Aigatus", "Aigcatas", "Aigcatil", "Aigcating", "Aigcatis", "Aigcatsil", "Aigcatsol", "Aigcatus", "Aigdring", "Aigdris", "Aigdrlos", "Aigdrsil", "Aigdrsol", "Aigduras", "Aigdurlos", "Aigdursol", "Aigthaing", "Aigthais", "Aigthasil", "Aigthaus", "Alaithas", "Alaithis", "Alaithlos", "Alaithol", "Alaithsol", "Alaithus", "Alalas", "Alalil", "Alalol", "Alalsol", "Alalus", "Alatas", "Alatil", "Alating", "Alatlos", "Alatsil", "Alberich", "Alcatil", "Alcatis", "Alcatlos", "Alcatsil", "Aldras", "Aldril", "Aldring", "Aldris", "Aldrlos", "Aldrol", "Aldrsol", "Alduras", "Aldurlos", "Aldurol", "Alf", "Alfrigg", "Althaas", "Althail", "Althalos", "Althaol", "Althasil", "Althasol", "Althaus", "Althjof", "Alvis", "Anaithas", "Anaithil", "Anaithing", "Anaithis", "Anaithsil", "Anaithus", "Analil", "Anallos", "Analol", "Analsil", "Analus", "Anatas", "Anating", "Anatis", "Anatol", "Anatsol", "Ancatas", "Ancatil", "Ancatol", "Ancatus", "Andvari", "Andril", "Andris", "Andrlos", "Andrus", "Anduril", "Andurol", "Andursol", "Andurus", "Angarthing", "Anthaas", "Anthaing", "Anthais", "Anthaol", "Anthasil", "Anthasol", "Anthaus", "Augaithas", "Augaithing", "Augaithsil", "Augaithus", "Augalas", "Augaling", "Augalol", "Augating", "Augatlos", "Augatol", "Augatsil", "Augatsol", "Augcatas", "Augcatil", "Augcatis", "Augcatol", "Augcatsil", "Augcatus", "Augdras", "Augdris", "Augdrsil", "Augdrus", "Augduras", "Augduril", "Augduring", "Augdurol", "Augdursol", "Augdurus", "Augthail", "Augthais", "Augthalos", "Augthaol", "Aurvang", "Austri", "Bafur", "Baglur", "Bari", "Berling", "Bibung", "Bifur", "Bombor", "Brokk", "Dain", "Delling", "Dolgthvari", "Dori", "Draupnir", "Duf", "Dulaithil", "Dulaithing", "Dulaithlos", "Dulaithsil", "Dulaithsol", "Dulalas", "Dulaling", "Dulalis", "Dulalsil", "Dulatil", "Dulating", "Dulatol", "Dulatsol", "Dulatus", "Dulcatil", "Dulcating", "Dulcatlos", "Dulcatol", "Dulcatsil", "Dulcatsol", "Duldril", "Duldris", "Duldrlos", "Duldrol", "Duldrsil", "Duldrus", "Dulduras", "Dulduring", "Duldursil", "Duldurus", "Dulthalos", "Dulthasil", "Dulthasol", "Dulthaus", "Durin", "Durstorn", "Dvalin", "Eggerich", "Eikinskjaldi", "Eitri", "Fal", "Fid", "Fili", "Fjalar", "Frag", "Frar", "Frosti", "Fundin", "Galar", "Gandalf", "Ginnar", "Glamaithil", "Glamaithis", "Glamaithol", "Glamaithsol", "Glamalil", "Glamaling", "Glamalis", "Glamallos", "Glamalsil", "Glamalus", "Glamatil", "Glamatus", "Glamcatas", "Glamcatil", "Glamcating", "Glamcatsil", "Glamcatus", "Glamdras", "Glamdril", "Glamdrlos", "Glamdrsol", "Glamduras", "Glamduril", "Glamduring", "Glamduris", "Glamdursol", "Glamthaas", "Glamthaol", "Glamthasil", "Glamthasol", "Glamthaus", "Glinar", "Gloin", "Glomin", "Glonoin", "Gomaithas", "Gomaithil", "Gomaithol", "Gomaithsol", "Gomalil", "Gomalis", "Gomalus", "Gomatas", "Gomatil", "Gomating", "Gomatis", "Gomatlos", "Gomatol", "Gomcatil", "Gomcatis", "Gomcatlos", "Gomdras", "Gomdril", "Gomdring", "Gomdris", "Gomdrol", "Gomdrsil", "Gomduris", "Gomdurlos", "Gomdursil", "Gomdursol", "Gomdurus", "Gomthaas", "Gomthalos", "Gomthasol", "Grerr", "Grimnir", "Hamel", "Har", "Haur", "Heptifili", "Hledjolf", "Hornbori", "Hugstari", "Ingi", "Iri", "Ivaldi", "Jari", "Karrag", "Kili", "Kinan", "Kuhnar", "Laurin", "Lit", "Loni", "Mjodvitnir", "Modsognir", "Nabbi", "Nain", "Nar", "Naraithil", "Naraithing", "Naraithol", "Naraithsil", "Naraithsol", "Naraithus", "Naralas", "Naralil", "Naralsil", "Naralus", "Naratlos", "Naratol", "Naratsil", "Narcating", "Narcatis", "Narcatol", "Narcatsil", "Narcatsol", "Nardras", "Nardril", "Nardring", "Nardris", "Nardrol", "Nardrsil", "Nardrsol", "Nardrus", "Narduras", "Narduril", "Nardurol", "Narthalos", "Narthaol", "Neglur", "Nidi", "Niping", "Noiraran", "Nordri", "Nori", "Nyi", "Nyr", "Nyrad", "Oin", "Ori", "Pelaithas", "Pelaithil", "Pelaithing", "Pelaithis", "Pelaithlos", "Pelaithol", "Pelaithsil", "Pelaithsol", "Pelalil", "Pelaling", "Pelalis", "Pelalsil", "Pelalsol", "Pelalus", "Pelatil", "Pelating", "Pelatis", "Pelatol", "Pelatsil", "Pelatus", "Pelcating", "Pelcatlos", "Pelcatol", "Pelcatsil", "Peldras", "Peldril", "Peldrsol", "Peldrus", "Pelduril", "Pelduring", "Pelduris", "Peldurol", "Peldursol", "Peldurus", "Pelthaas", "Pelthail", "Pelthasil", "Radsvid", "Regin", "Rekk", "Relgorn", "Rugnur", "Rynan", "Skavid", "Skirfir", "Solblindi", "Sudri", "Sviar", "Sviur", "Theganli", "Thekk", "Thjodrorir", "Thorin", "Thrain", "Thror", "Thursagan", "Trithaithas", "Trithaithil", "Trithaithis", "Trithaithlos", "Trithaithol", "Trithaithsil", "Trithaithsol", "Trithaithus", "Trithalis", "Trithalol", "Trithatas", "Trithatil", "Trithatlos", "Trithatsol", "Trithcatlos", "Trithcatsol", "Trithcatus", "Trithdril", "Trithdring", "Trithdris", "Trithdrlos", "Trithdrol", "Trithdrsol", "Trithdrus", "Trithduril", "Trithduring", "Trithdurlos", "Trithdurol", "Trithdursil", "Trithdurus", "Triththaas", "Triththail", "Triththaing", "Triththasol", "Triththaus", "Ulrek", "Uni", "Vali", "Var", "Vegdrasil", "Vestri", "Vig", "Vindalf", "Vit" }
		end
	elseif (civilization == "gnome") then
		if (gender == "male") then
			character_names = { "Bimbam", "Clavo", "Cravatu", "Kalutho", "Pypo", "Rubezahl" }
		elseif (gender == "female") then
			character_names = { "Adalga" }
		end
	elseif (civilization == "goblin") then
		if (gender == "male") then
			character_names = { "Dran", "Erdog", "Fal Khag", "Gashnok", "Gatrakh", "Gorokh", "Greebo", "Grogor-Tuk", "Hrugt", "Kardur", "Kartrog", "Krung", "Odrun", "Orhtib", "Ozdul", "Panok", "Pruol", "Sbrak", "Sdrul", "Thurg", "T'shar Lggi", "Uhmit", "Urdum", "Utrub", "Vrag", "Vrunt", "Zhuk", "Zuzerd" }
		end
	end
	random_character_name = character_names[SyncRand(table.getn(character_names)) + 1]
	if (is_monarch) then
		local monarch_numerals = { "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX", "X", "XI", "XII", "XIII", "XIV", "XV", "XVI" }
		random_character_name = random_character_name .. " " .. monarch_numerals[SyncRand(table.getn(monarch_numerals)) + 1]
	end
	return random_character_name
end

function GetCharacterNamePersonalPronoun(character_name, type, is_capitalized)
	local monarch_numerals = { " XVI", " XV", " XIV", " XIII", " XII", " XI", " X", " IX", " VIII", " VII", " VI", " V", " IV", " III", " II", " I" }
	table.foreachi(monarch_numerals, function(k,v) character_name = string.gsub(character_name, v, "") end)
	local male_names = { "Bimbam", "Clavo", "Cravatu", "Kalutho", "Pypo", "Rubezahl" }
	local female_names = { "Adalga" }
	if (GetArrayIncludes(male_names, character_name)) then
		if (type == "subject") then
			if (is_capitalized) then
				return "He"
			else
				return "he"
			end
		elseif (type == "object") then
			if (is_capitalized) then
				return "Him"
			else
				return "him"
			end
		end
	elseif (GetArrayIncludes(female_names, character_name)) then
		if (type == "subject") then
			if (is_capitalized) then
				return "She"
			else
				return "she"
			end
		elseif (type == "object") then
			if (is_capitalized) then
				return "Her"
			else
				return "her"
			end
		end
	else
		if (type == "subject") then
			if (is_capitalized) then
				return "It"
			else
				return "it"
			end
		elseif (type == "object") then
			if (is_capitalized) then
				return "It"
			else
				return "it"
			end
		end
	end
end

function IncreaseUnitLevel(unit, level_number, advancement)
	if (unit ~= nil) then
		while (level_number > 0) do
			SetUnitVariable(unit, "Level", GetUnitVariable(unit, "Level") + 1)
			if (GetUnitVariable(unit, "Xp", "Max") < GetUnitVariable(unit, "XpRequired")) then
				SetUnitVariable(unit, "Xp", GetUnitVariable(unit, "XpRequired"), "Max")
				SetUnitVariable(unit, "Xp", GetUnitVariable(unit, "Xp", "Max"))
			end
			SetUnitVariable(unit, "XpRequired", GetUnitVariable(unit, "XpRequired") + (100 * (GetUnitVariable(unit, "Level") + 1)))
			SetUnitVariable(unit, "Points", GetUnitVariable(unit, "Points") + 25 + (5 * (GetUnitVariable(unit, "Level") + 1)))
			if (advancement) then
				SetUnitVariable(unit, "LevelUp", GetUnitVariable(unit, "LevelUp") + 1)
				-- if the unit's level is greater than the availability of level-up upgrades for it, increase its HP instead
				if (GetUnitVariable(unit, "Level") > table.getn(GetUnitTypeLevelUpUpgrades(GetUnitVariable(unit, "Ident"))) + GetUnitVariable(unit, "StartingLevel")) then
					SetUnitVariable(unit, "HitPoints", GetUnitVariable(unit, "HitPoints", "Max") + 15, "Max")
					SetUnitVariable(unit, "LevelUp", GetUnitVariable(unit, "LevelUp") - 1)
				end
			end
			if (GetUnitVariable(unit, "TraitResilient") > 0) then
				SetUnitVariable(unit, "HitPoints", GetUnitVariable(unit, "HitPoints", "Max") + 1, "Max")
			end
			SetUnitVariable(unit, "HitPoints", GetUnitVariable(unit, "HitPoints", "Max"))
			level_number = level_number - 1
			UpdateUnitBonuses(unit)
		end

		-- save the levels of heroes in a persistent manner
		if (not IsNetworkGame()) then
			for key, value in pairs(wyr.preferences.Heroes) do
				if (wyr.preferences.Heroes[key].name == GetUnitVariable(unit, "Name") and string.find(GetUnitVariable(unit, "Ident"), "-hero-") ~= nil) then
					if (GetUnitVariable(unit, "Level") > wyr.preferences.Heroes[key].level) then
						wyr.preferences.Heroes[key].level = GetUnitVariable(unit, "Level")
						SavePreferences()
					end
				end
			end
		end
	end
end

function UpdateUnitBonuses(unit)
	local basic_damage_bonus = 0
	local piercing_damage_bonus = 0
	local armor_bonus = 0
	if (GetUnitVariable(unit, "TraitStrong") > 0) then
--		basic_damage_bonus = basic_damage_bonus + (1 * (GetUnitVariable(unit, "Level") - 1))
--		armor_bonus = armor_bonus + (1 * (GetUnitVariable(unit, "Level") - 1))
		if (GetUnitVariable(unit, "AttackRange") == 1) then
			piercing_damage_bonus = piercing_damage_bonus + 1
		end
	end
	-- bonuses from abilities
	if (GetUnitVariable(unit, "AxeMastery") >= 1) then -- if has Axe Mastery, grant +2 piercing damage
		piercing_damage_bonus = piercing_damage_bonus + 2
	end
	if (GetUnitVariable(unit, "CriticalStrike") >= 1) then
		SetUnitVariable(unit, "CriticalStrikeChance", 15)
	end
	-- bonuses from equipment
	if (GetUnitVariable(unit, "AxeOfPerun") >= 2) then
		piercing_damage_bonus = piercing_damage_bonus + 2
	end
	SetUnitVariable(unit, "BasicDamageBonus", basic_damage_bonus)
	SetUnitVariable(unit, "PiercingDamageBonus", piercing_damage_bonus)
	SetUnitVariable(unit, "ArmorBonus", armor_bonus)
end

function AddPlayerObjective(player, objective)
	for key, value in pairs(CustomPlayerData) do
		if (CustomPlayerData[key].Number == player) then
			if (player == GetThisPlayer()) then
				AddMessage(_("New Objective: ") .. _(objective))
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

-------------------------------------------------------------------------------
--  Tables-Part
-------------------------------------------------------------------------------

-- Andrettin: new function for checking whether array include a certain value or not
function GetArrayIncludes(array, item)
    for key, value in pairs(array) do
        if (value == item) then
        	return true
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
	MaxOpenGLTexture = 0,
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
	UseFancyBuildings = true,       --  Enable/disable fancy building (random mirroring buildings)
	UseOpenGL = false,
	VideoFullScreen = false,
	VideoHeight = 600,
	VideoWidth = 800,
	ShowMessages = true,
	ShowOrders = 2,
	Language = "English",
	QuestsCompleted = {}, -- Quests Completed
	TechnologyAcquired = {},
	AchievementsCompleted = {},
	LastVersionPlayed = "0.0.0",
	TheScepterOfFireRaiderFaction = "",
	Heroes = {
		Rugnur = {
			name = "Rugnur",
			level = 1,
			upgrades = {},
			items = {}
		},
		Baglur = {
			name = "Baglur",
			level = 2,
			upgrades = { "unit-dwarven-steelclad" },
			items = {}
		},
		Thursagan = {
			name = "Thursagan",
			level = 3,
			upgrades = { "unit-dwarven-steelclad", "unit-dwarven-thane" },
			items = {}
		},
		Durstorn = {
			name = "Durstorn",
			level = 3,
			upgrades = { "unit-dwarven-steelclad", "unit-dwarven-thane" },
			items = {}
		},
		Greebo = {
			name = "Greebo",
			level = 2,
			upgrades = {},
			items = {}
		}
	},
	GrandStrategySaveGames = {}
}

CompleteMissingValues(wyr.preferences, defaultPreferences)

SetDoubleClickDelay(wyr.preferences.DoubleClickDelayInMs)
SetEffectsEnabled(wyr.preferences.EffectsEnabled)
SetEffectsVolume(wyr.preferences.EffectsVolume)
SetFancyBuildings(wyr.preferences.UseFancyBuildings)
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

Preference.ShowOrders = wyr.preferences.ShowOrders
Preference.ShowMessages = wyr.preferences.ShowMessages

-- New Damage Formula (takes level into account)
SetDamageFormula(
	Div(
		Mul(
			Div(
				Mul(
					Add(
						51,
						Rand(50)
					),
					Add(
						Max(
							0,
							Sub(
								Div(
									Mul(
										Add(
											AttackerVar("BasicDamage"),
											AttackerVar("BasicDamageBonus")
										),
										Add(
											100,
											Mul(
												100,
												GreaterThan(
													AttackerVar("Bloodlust"),
													0
												)
											)
										)
									),
									100
								),
								Add(
									DefenderVar("Armor"),
									DefenderVar("ArmorBonus")
								)
							)
						),
						Div(
							Mul(
								Add(
									AttackerVar("PiercingDamage"),
									AttackerVar("PiercingDamageBonus")
								),
								Add(
									100,
									Mul(
										100,
										GreaterThan(
											AttackerVar("Bloodlust"),
											0
										)
									)
								)
							),
							100
						)
					)
				),
				100
			),
			Add(
				100,
				Mul(
					100,
					LessThan(
						Rand(100),
						AttackerVar("CriticalStrikeChance")
					)
				)
			)
		),
		100
	)
)

--- Uses Stratagus Library path!
Load("scripts/wyr.lua")
Load("scripts/icons.lua")
Load("scripts/sound.lua")
Load("scripts/missiles.lua")
Load("scripts/constructions.lua")
Load("scripts/spells.lua")
Load("scripts/units.lua")
Load("scripts/upgrade.lua")
Load("scripts/fonts.lua")
Load("scripts/buttons.lua")
Load("scripts/ui.lua")
Load("scripts/ai.lua")
Load("scripts/commands.lua")
Load("scripts/cheats.lua")
Load("scripts/map_generation.lua")
Load("scripts/quests.lua")
Load("scripts/events.lua")
Load("scripts/achievements.lua")

DebugPrint("... ready!\n")

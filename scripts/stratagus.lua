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
wyrmsun.Version = "0.1.4"
wyrmsun.Homepage = ""
wyrmsun.Licence = "GPL v2"
wyrmsun.Copyright = "Copyright (c) 2013-2014 by Andre Novellino Gouvea"

-------------------------------------------------------------------------------
--  Config-Part
-------------------------------------------------------------------------------

InitFuncs = {}
function InitFuncs:add(f)
  table.insert(self, f)
end

function InitGameVariables()
  for i=1,table.getn(InitFuncs) do
    InitFuncs[i]()
  end
end

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

SetFogOfWarGraphics("tilesets/swamp/terrain/fogofwar.png")

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
  "stop", "mine", "chop", "drill", "mine", "mine", "mine")

DefineDefaultResourceNames(
  "time", "gold", "wood", "oil", "ore", "stone", "coal")

DefineDefaultResourceAmounts(
  "gold", 100000,
  "oil", 50000)

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
  "grey", {{116, 104, 99}, {97, 85, 80}, {74, 62, 57}, {48, 36, 31}},
})

--  If color-cycle-all is off (#f) only the tileset palette is color cycled.
-- Otherwise (#t) all palettes are color cycled.
SetColorCycleAll(true)
ClearAllColorCyclingRange()
AddColorCyclingRange(38, 47) -- water
AddColorCyclingRange(205, 207) -- building
AddColorCyclingRange(240, 244) -- icon

-------------------------------------------------------------------------------

--  Edit next to increase the speed, for debugging.

--  Decrease the mining time by this factor.
--SetSpeedResourcesHarvest("gold", 10)
--  Decrease the time in a gold deposit by this factor.
--SetSpeedResourcesReturn("gold", 10)
--  Decrease the time for chopping a tree by this factor.
--SetSpeedResourcesHarvest("wood", 10)
--  Decrease the time in a wood deposit by this factor.
--SetSpeedResourcesReturn("wood", 10)
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
-- Character Names

-- There are at present 337 Dwarven names
--DwarvenNames = {"Aigaithas", "Aigaithil", "Aigaithing", "Aigaithol", "Aigalas", "Aigaling", "Aigalis", "Aigalol", "Aigalsil", "Aigatas", "Aigatis", "Aigatlos", "Aigatsil", "Aigatsol", "Aigatus", "Aigcatas", "Aigcatil", "Aigcating", "Aigcatis", "Aigcatsil", "Aigcatsol", "Aigcatus", "Aigdring", "Aigdris", "Aigdrlos", "Aigdrsil", "Aigdrsol", "Aigduras", "Aigdurlos", "Aigdursol", "Aigthaing", "Aigthais", "Aigthasil", "Aigthaus", "Alaithas", "Alaithis", "Alaithlos", "Alaithol", "Alaithsol", "Alaithus", "Alalas", "Alalil", "Alalol", "Alalsol", "Alalus", "Alatas", "Alatil", "Alating", "Alatlos", "Alatsil", "Alcatil", "Alcatis", "Alcatlos", "Alcatsil", "Aldras", "Aldril", "Aldring", "Aldris", "Aldrlos", "Aldrol", "Aldrsol", "Alduras", "Aldurlos", "Aldurol", "Althaas", "Althail", "Althalos", "Althaol", "Althasil", "Althasol", "Althaus", "Anaithas", "Anaithil", "Anaithing", "Anaithis", "Anaithsil", "Anaithus", "Analil", "Anallos", "Analol", "Analsil", "Analus", "Anatas", "Anating", "Anatis", "Anatol", "Anatsol", "Ancatas", "Ancatil", "Ancatol", "Ancatus", "Andril", "Andris", "Andrlos", "Andrus", "Anduril", "Andurol", "Andursol", "Andurus", "Anthaas", "Anthaing", "Anthais", "Anthaol", "Anthasil", "Anthasol", "Anthaus", "Augaithas", "Augaithing", "Augaithsil", "Augaithus", "Augalas", "Augaling", "Augalol", "Augating", "Augatlos", "Augatol", "Augatsil", "Augatsol", "Augcatas", "Augcatil", "Augcatis", "Augcatol", "Augcatsil", "Augcatus", "Augdras", "Augdris", "Augdrsil", "Augdrus", "Augduras", "Augduril", "Augduring", "Augdurol", "Augdursol", "Augdurus", "Augthail", "Augthais", "Augthalos", "Augthaol", "Dulaithil", "Dulaithing", "Dulaithlos", "Dulaithsil", "Dulaithsol", "Dulalas", "Dulaling", "Dulalis", "Dulalsil", "Dulatil", "Dulating", "Dulatol", "Dulatsol", "Dulatus", "Dulcatil", "Dulcating", "Dulcatlos", "Dulcatol", "Dulcatsil", "Dulcatsol", "Duldril", "Duldris", "Duldrlos", "Duldrol", "Duldrsil", "Duldrus", "Dulduras", "Dulduring", "Duldursil", "Duldurus", "Dulthalos", "Dulthasil", "Dulthasol", "Dulthaus", "Glamaithil", "Glamaithis", "Glamaithol", "Glamaithsol", "Glamalil", "Glamaling", "Glamalis", "Glamallos", "Glamalsil", "Glamalus", "Glamatil", "Glamatus", "Glamcatas", "Glamcatil", "Glamcating", "Glamcatsil", "Glamcatus", "Glamdras", "Glamdril", "Glamdrlos", "Glamdrsol", "Glamduras", "Glamduril", "Glamduring", "Glamduris", "Glamdursol", "Glamthaas", "Glamthaol", "Glamthasil", "Glamthasol", "Glamthaus", "Glomin", "Gomaithas", "Gomaithil", "Gomaithol", "Gomaithsol", "Gomalil", "Gomalis", "Gomalus", "Gomatas", "Gomatil", "Gomating", "Gomatis", "Gomatlos", "Gomatol", "Gomcatil", "Gomcatis", "Gomcatlos", "Gomdras", "Gomdril", "Gomdring", "Gomdris", "Gomdrol", "Gomdrsil", "Gomduris", "Gomdurlos", "Gomdursil", "Gomdursol", "Gomdurus", "Gomthaas", "Gomthalos", "Gomthasol", "Naraithil", "Naraithing", "Naraithol", "Naraithsil", "Naraithsol", "Naraithus", "Naralas", "Naralil", "Naralsil", "Naralus", "Naratlos", "Naratol", "Naratsil", "Narcating", "Narcatis", "Narcatol", "Narcatsil", "Narcatsol", "Nardras", "Nardril", "Nardring", "Nardris", "Nardrol", "Nardrsil", "Nardrsol", "Nardrus", "Narduras", "Narduril", "Nardurol", "Narthalos", "Narthaol", "Pelaithas", "Pelaithil", "Pelaithing", "Pelaithis", "Pelaithlos", "Pelaithol", "Pelaithsil", "Pelaithsol", "Pelalil", "Pelaling", "Pelalis", "Pelalsil", "Pelalsol", "Pelalus", "Pelatil", "Pelating", "Pelatis", "Pelatol", "Pelatsil", "Pelatus", "Pelcating", "Pelcatlos", "Pelcatol", "Pelcatsil", "Peldras", "Peldril", "Peldrsol", "Peldrus", "Pelduril", "Pelduring", "Pelduris", "Peldurol", "Peldursol", "Peldurus", "Pelthaas", "Pelthail", "Pelthasil", "Trithaithas", "Trithaithil", "Trithaithis", "Trithaithlos", "Trithaithol", "Trithaithsil", "Trithaithsol", "Trithaithus", "Trithalis", "Trithalol", "Trithatas", "Trithatil", "Trithatlos", "Trithatsol", "Trithcatlos", "Trithcatsol", "Trithcatus", "Trithdril", "Trithdring", "Trithdris", "Trithdrlos", "Trithdrol", "Trithdrsol", "Trithdrus", "Trithduril", "Trithduring", "Trithdurlos", "Trithdurol", "Trithdursil", "Trithdurus", "Triththaas", "Triththail", "Triththaing", "Triththasol", "Triththaus"}

-------------------------------------------------------------------------------
-- Trait variables

DefineVariables(
--	"CharacterName", {Max = 255, Value = 0, Increase = 0, Enable = true},
--	"Traits", {Max = 2, Value = 0, Increase = 0, Enable = true},
--	"MaxTraits", {Max = 2, Value = 0, Increase = 0, Enable = true},
--	"TraitResilient", {Max = 1, Value = 0, Increase = 0, Enable = true},
--	"TraitStrong", {Max = 1, Value = 0, Increase = 0, Enable = true},
	"Name",
	"Ident",
	"Player",
	"PosX",
	"PosY",
	"Level", {Max = 30, Value = 1, Increase = 0, Enable = true},
	"BasePoints", {Max = 99999, Value = 0, Increase = 0, Enable = true},
	"Points", {Max = 99999, Value = 0, Increase = 0, Enable = true},
--	"Points",
	"Xp",
	"XpRequired", {Max = 43500, Value = 200, Increase = 0, Enable = true},
	"LevelUp", {Max = 255, Value = 0, Increase = 0, Enable = true},
	"RegenerationRate",
	"ResourcesHeld",
	"GraphicsVariation", {Max = 255, Value = 0, Increase = 0, Enable = true},
	"BasicDamageBonus", {Max = 255, Value = 0, Increase = 0, Enable = true},
	"PiercingDamageBonus", {Max = 255, Value = 0, Increase = 0, Enable = true},
	"ArmorBonus", {Max = 255, Value = 0, Increase = 0, Enable = true},
	"StartingLevel", {Max = 30, Value = 1, Increase = 0, Enable = true},
	"LifeCycle", {Max = 99999, Value = 0, Increase = 0, Enable = true}
)

-------------------------------------------------------------------------------
-- Player Objectives

	Objectives = { {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {} }

-------------------------------------------------------------------------------
--  Default triggers for single player
--    (FIXME: must be combined with game types)

function SinglePlayerTriggers()
	AddTrigger(
		function() return GetPlayerData(GetThisPlayer(), "TotalNumUnits") == 0 end,
		function() return ActionDefeat() end
	)

	AddTrigger(
--		function() return GetNumOpponents(GetThisPlayer()) == 0 end,
		function()
			if (GetNumRivals(GetThisPlayer()) == 0 and GetArrayIncludes(Objectives[GetThisPlayer()], a_bargain_is_struck_objective_1) == false) then
				return true
			end
		end,
		function() return ActionVictory() end
	)

	for i=0,14 do
		Objectives[i] = {"- Destroy the enemy"}
  	end
	
	CreateDecorations()

	StandardTriggers()

	if (not IsNetworkGame()) then
		AssignPlayerFactions()
	end

	DefineAllowNormalUnits("AAAAAAAAAAAAAAAA")
	DefineAllowExtraUnits("FFFFFFFFFFFFFFFF")
	DefineAllowMercenaryUnits("AAAAAAAAAAAAAAAA")

	-- for now events are limited to single player (as they seem to be causing issues with desyncs for multiplayer games
	if (EventsActivated == 0) then
		EventTriggers()
	end

	-- setup graphics variations
	local uncount = 0
	uncount = GetUnits("any")
	for unit1 = 1,table.getn(uncount) do 
		if (GetUnitVariable(uncount[unit1],"GraphicsVariation") == 0) then
			if (GetUnitVariable(uncount[unit1], "Ident") == "unit-twigs") then
				SetUnitVariable(uncount[unit1], "GraphicsVariation", (SyncRand(25) + 1))
			elseif (GetUnitVariable(uncount[unit1], "Ident") == "unit-glyph") then
				SetUnitVariable(uncount[unit1], "GraphicsVariation", (SyncRand(24) + 1))
			elseif (GetUnitVariable(uncount[unit1], "Ident") == "unit-mushroom") then
				SetUnitVariable(uncount[unit1], "GraphicsVariation", (SyncRand(13) + 1))
			elseif ((GetUnitVariable(uncount[unit1], "Ident") == "unit-large-flower" and wyrmsun.tileset == "swamp")) then
				SetUnitVariable(uncount[unit1], "GraphicsVariation", (SyncRand(12) + 1))
			elseif (GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-axefighter" or GetUnitVariable(uncount[unit1], "Ident") == "unit-small-rocks") then
				SetUnitVariable(uncount[unit1], "GraphicsVariation", (SyncRand(6) + 1))
			elseif ((GetUnitVariable(uncount[unit1], "Ident") == "unit-fern" and wyrmsun.tileset == "swamp") or GetUnitVariable(uncount[unit1], "Ident") == "unit-bones") then
				SetUnitVariable(uncount[unit1], "GraphicsVariation", (SyncRand(4) + 1))
			elseif (GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-scout" or (GetUnitVariable(uncount[unit1], "Ident") == "unit-flowers" and wyrmsun.tileset == "swamp") or (GetUnitVariable(uncount[unit1], "Ident") == "unit-large-flower" and wyrmsun.tileset == "forest")) then
				SetUnitVariable(uncount[unit1], "GraphicsVariation", (SyncRand(3) + 1))
			elseif (GetUnitVariable(uncount[unit1], "Ident") == "unit-gnomish-worker" or GetUnitVariable(uncount[unit1], "Ident") == "unit-goblin-banner") then
				SetUnitVariable(uncount[unit1], "GraphicsVariation", (SyncRand(2) + 1))
			elseif (GetUnitVariable(uncount[unit1], "Ident") == "unit-hero-baglur") then
				SetUnitVariable(uncount[unit1], "GraphicsVariation", 2)
			elseif (GetUnitVariable(uncount[unit1], "Ident") == "unit-hero-rugnur" or GetUnitVariable(uncount[unit1], "Ident") == "unit-hero-rugnur-older") then
				SetUnitVariable(uncount[unit1], "GraphicsVariation", 6)
			else
				SetUnitVariable(uncount[unit1], "GraphicsVariation", 1)
			end
		end
		if (GetUnitVariable(uncount[unit1], "Points") == 0 and GetUnitVariable(uncount[unit1], "BasePoints") > 0) then
			SetUnitVariable(uncount[unit1], "Points", GetUnitVariable(uncount[unit1], "BasePoints"))
		end
		if (GetUnitVariable(uncount[unit1], "Level") < GetUnitVariable(uncount[unit1], "StartingLevel")) then
			IncreaseUnitLevel(uncount[unit1], (GetUnitVariable(uncount[unit1], "StartingLevel") - GetUnitVariable(uncount[unit1], "Level")), false)
		end
	end

end

function StandardTriggers()
--	local RandomNumber = 0

	-- set the graphics variation for individual units of certain unit types
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
				if (GetUnitVariable(uncount[unit1],"GraphicsVariation") == 0) then
					if (GetUnitVariable(uncount[unit1], "Ident") == "unit-twigs") then
						SetUnitVariable(uncount[unit1], "GraphicsVariation", (SyncRand(25) + 1))
					elseif (GetUnitVariable(uncount[unit1], "Ident") == "unit-glyph") then
						SetUnitVariable(uncount[unit1], "GraphicsVariation", (SyncRand(24) + 1))
					elseif (GetUnitVariable(uncount[unit1], "Ident") == "unit-mushroom") then
						SetUnitVariable(uncount[unit1], "GraphicsVariation", (SyncRand(13) + 1))
					elseif ((GetUnitVariable(uncount[unit1], "Ident") == "unit-large-flower" and wyrmsun.tileset == "swamp")) then
						SetUnitVariable(uncount[unit1], "GraphicsVariation", (SyncRand(12) + 1))
					elseif (GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-axefighter" or GetUnitVariable(uncount[unit1], "Ident") == "unit-small-rocks") then
						SetUnitVariable(uncount[unit1], "GraphicsVariation", (SyncRand(6) + 1))
					elseif ((GetUnitVariable(uncount[unit1], "Ident") == "unit-fern" and wyrmsun.tileset == "swamp") or GetUnitVariable(uncount[unit1], "Ident") == "unit-bones") then
						SetUnitVariable(uncount[unit1], "GraphicsVariation", (SyncRand(4) + 1))
					elseif (GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-scout" or (GetUnitVariable(uncount[unit1], "Ident") == "unit-flowers" and wyrmsun.tileset == "swamp") or (GetUnitVariable(uncount[unit1], "Ident") == "unit-large-flower" and wyrmsun.tileset == "forest")) then
						SetUnitVariable(uncount[unit1], "GraphicsVariation", (SyncRand(3) + 1))
					elseif (GetUnitVariable(uncount[unit1], "Ident") == "unit-gnomish-worker" or GetUnitVariable(uncount[unit1], "Ident") == "unit-goblin-banner") then
						SetUnitVariable(uncount[unit1], "GraphicsVariation", (SyncRand(2) + 1))
					elseif (GetUnitVariable(uncount[unit1], "Ident") == "unit-hero-baglur") then
						SetUnitVariable(uncount[unit1], "GraphicsVariation", 2)
					elseif (GetUnitVariable(uncount[unit1], "Ident") == "unit-hero-rugnur" or GetUnitVariable(uncount[unit1], "Ident") == "unit-hero-rugnur-older") then
						SetUnitVariable(uncount[unit1], "GraphicsVariation", 6)
					else
						SetUnitVariable(uncount[unit1], "GraphicsVariation", 1)
					end
				end

				-- grow mushrooms
				if (GetUnitVariable(uncount[unit1], "Ident") == "unit-mushroom") then
					if (GameCycle >= GetUnitVariable(uncount[unit1], "LifeCycle") + 750) then
						if (GetUnitVariable(uncount[unit1], "GraphicsVariation") < 13) then
							SetUnitVariable(uncount[unit1], "GraphicsVariation", GetUnitVariable(uncount[unit1], "GraphicsVariation") + 1)
						else
							SetUnitVariable(uncount[unit1], "GraphicsVariation", 1)
						end
						SetUnitVariable(uncount[unit1], "LifeCycle", GameCycle)
					end
					
					local critter_quantity = GetNumUnitsAt(15, "unit-critter", {GetUnitVariable(uncount[unit1],"PosX") - 1, GetUnitVariable(uncount[unit1],"PosY") - 1}, {GetUnitVariable(uncount[unit1],"PosX") + 1, GetUnitVariable(uncount[unit1],"PosY") + 1})
					if (critter_quantity > 0 and GetUnitVariable(uncount[unit1], "GraphicsVariation") < 8) then
						SetUnitVariable(uncount[unit1], "GraphicsVariation", 13)
						SetUnitVariable(uncount[unit1], "LifeCycle", GameCycle)
					end
				end

				-- change 96x96 neutral building ownership depending on nearby player units
				if (GetUnitVariable(uncount[unit1], "Ident") == "unit-mercenary-camp" or GetUnitVariable(uncount[unit1], "Ident") == "unit-human-lumber-mill") then
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
					if (mercenary_camp_player < 15) then
						ChangeUnitsOwner({GetUnitVariable(uncount[unit1], "PosX"), GetUnitVariable(uncount[unit1], "PosY")}, {GetUnitVariable(uncount[unit1], "PosX"), GetUnitVariable(uncount[unit1], "PosY")}, GetUnitVariable(uncount[unit1], "Player"), mercenary_camp_player)
					end
				end
				
				if (GetUnitVariable(uncount[unit1], "Points") == 0 and GetUnitVariable(uncount[unit1], "BasePoints") > 0) then
					SetUnitVariable(uncount[unit1], "Points", GetUnitVariable(uncount[unit1], "BasePoints"))
				end
				if (GetUnitVariable(uncount[unit1], "Level") < GetUnitVariable(uncount[unit1], "StartingLevel")) then
					IncreaseUnitLevel(uncount[unit1], (GetUnitVariable(uncount[unit1], "StartingLevel") - GetUnitVariable(uncount[unit1], "Level")), false)
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
				if (GetUnitVariable(uncount[unit1], "Ident") == "unit-surghan-mercenary") then
					unit = CreateUnit("unit-surghan-mercenary", GetUnitVariable(uncount[unit1], "Player"), {GetUnitVariable(uncount[unit1], "PosX"), GetUnitVariable(uncount[unit1], "PosY")})
					unit = CreateUnit("unit-surghan-mercenary", GetUnitVariable(uncount[unit1], "Player"), {GetUnitVariable(uncount[unit1], "PosX"), GetUnitVariable(uncount[unit1], "PosY")})
					unit = CreateUnit("unit-surghan-mercenary", GetUnitVariable(uncount[unit1], "Player"), {GetUnitVariable(uncount[unit1], "PosX"), GetUnitVariable(uncount[unit1], "PosY")})
					DefineAllow("unit-surghan-mercenary", "FFFFFFFFFFFFFFFF")
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
			if (GetNumUnitsAt(-1, "unit-hero-rugnur", {0, 0}, {256, 256}) >= 1 or GetNumUnitsAt(-1, "unit-hero-rugnur-older", {0, 0}, {256, 256}) >= 1) then
				-- make it impossible to hire a hero after he has already been hired by someone
				DefineAllow("unit-hero-rugnur", "FFFFFFFFFFFFFFFF")
				return false
			else
				-- create Rugnur for an AI player if they fulfill the conditions
				for i=0,14 do
					if (GetPlayerData(i, "RaceName") == "dwarf" and GetPlayerData(i, "AiEnabled") and (GetPlayerData(i, "Name") == "Norlund Clan" or GetPlayerData(i, "Name") == "Shinsplitter Clan" or GetPlayerData(i, "Name") == "Knalga") and GetPlayerData(i, "UnitTypesCount", "unit-dwarven-town-hall") >= 3 and GetPlayerData(i, "UnitTypesCount", "unit-dwarven-barracks") >= 1 and GetPlayerData(i, "UnitTypesCount", "unit-dwarven-axefighter") >= 4 and GetPlayerData(i, "Resources", "gold") >= 1000) then
						unit = CreateUnit("unit-hero-rugnur", i, {Players[i].StartPos.x, Players[i].StartPos.y})
						SetPlayerData(i, "Resources", "gold", GetPlayerData(i, "Resources", "gold") - 1000)
						DefineAllow("unit-hero-rugnur", "FFFFFFFFFFFFFFFF")
						return false
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
			if (GetNumUnitsAt(-1, "unit-hero-baglur", {0, 0}, {256, 256}) >= 1) then
				DefineAllow("unit-hero-baglur", "FFFFFFFFFFFFFFFF")
				return false
			else
				-- create Baglur for an AI player if they fulfill the conditions
				for i=0,14 do
					if (GetPlayerData(i, "RaceName") == "dwarf" and GetPlayerData(i, "AiEnabled") and (GetPlayerData(i, "Name") == "Norlund Clan" or GetPlayerData(i, "Name") == "Shinsplitter Clan" or GetPlayerData(i, "Name") == "Knalga") and GetPlayerData(i, "UnitTypesCount", "unit-dwarven-town-hall") >= 1 and GetPlayerData(i, "UnitTypesCount", "unit-dwarven-barracks") >= 2 and GetPlayerData(i, "UnitTypesCount", "unit-dwarven-axefighter") >= 12 and GetPlayerData(i, "Resources", "gold") >= 1200) then
						unit = CreateUnit("unit-hero-baglur", i, {Players[i].StartPos.x, Players[i].StartPos.y})
						SetPlayerData(i, "Resources", "gold", GetPlayerData(i, "Resources", "gold") - 1200)
						DefineAllow("unit-hero-baglur", "FFFFFFFFFFFFFFFF")
						return false
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
				if (GetUnitVariable(uncount[unit1], "Xp") >= GetUnitVariable(uncount[unit1], "XpRequired")) then
					IncreaseUnitLevel(uncount[unit1], 1, true)
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

	-- add traits to units
--	AddTrigger(
--		function()
--			local uncount = 0
--			uncount = GetUnits("any")
--			for unit1 = 1,table.getn(uncount) do 
--				if (GetUnitVariable(uncount[unit1],"Traits") < GetUnitVariable(uncount[unit1],"MaxTraits")) then
--					RandomNumber = SyncRand(2)
--					if (RandomNumber == 0) then
--						if (GetUnitVariable(uncount[unit1],"TraitResilient") < 1) then
--							SetUnitVariable(uncount[unit1], "Traits", 1)
--							SetUnitVariable(uncount[unit1], "TraitResilient", 1)
--						end
--					elseif (RandomNumber == 1) then
--						if (GetUnitVariable(uncount[unit1],"TraitStrong") < 1) then
--							SetUnitVariable(uncount[unit1], "Traits", 1)
--							SetUnitVariable(uncount[unit1], "TraitStrong", 1)
--						end
--					end
--				end
--			end
--			return false
--		end,
--		function()
--			return true
--		end
--	)

	-- give the player gold if a miner of his is next to a gold sack
--	AddTrigger(
--		function()
--			return true
--		end,
--		function()
--			local uncount = 0
--			uncount = GetUnits(15)
--			for unit1 = 1,table.getn(uncount) do 
--				if (GetUnitVariable(uncount[unit1], "Ident") == "unit-gold-sack") then
--					local worker_quantity = GetNumUnitsAt(0, "unit-dwarven-miner", {GetUnitVariable(uncount[unit1],"PosX") - 1, GetUnitVariable(uncount[unit1],"PosY") - 1}, {GetUnitVariable(uncount[unit1],"PosX") + 1, GetUnitVariable(uncount[unit1],"PosY") + 1})
--					if (worker_quantity > 0) then
--						SetPlayerData(0, "Resources", "gold", GetPlayerData(0, "Resources", "gold") + GetUnitVariable(uncount[unit1],"ResourcesHeld"))
--						SetUnitVariable(uncount[unit1], "HitPoints", 0)
--					end
--				end
--			end
--			return true
--		end
--	)
end

function AssignPlayerFactions()

	if (PlayerFaction ~= "") then
		SetPlayerData(GetThisPlayer(), "Name", PlayerFaction)
	end

	local RandomNumber = 0

	for i=0,14 do
		if (GetPlayerData(i, "Name") == "" or GetPlayerData(i, "Name") == nil or GetPlayerData(i, "Name") == "Computer" or GetPlayerData(i, "Name") == "Person") then
			if (table.getn(GetCivilizationAvailableFactions(GetPlayerData(i, "RaceName"))) > 0) then
				RandomNumber = SyncRand(table.getn(GetCivilizationAvailableFactions(GetPlayerData(i, "RaceName")))) + 1
				SetPlayerData(i, "Name", GetCivilizationAvailableFactions(GetPlayerData(i, "RaceName"))[RandomNumber])
			end
		end
	end
end

function GetCivilizationFactions(civilization)
	if (civilization == "dwarf") then
		return {"Norlund Clan", "Shinsplitter Clan", "Shorbear Clan"}
	elseif (civilization == "gnome") then
		return {"Gnomes"}
	elseif (civilization == "goblin") then
		return {"Goblins"}
	else
		return { }
	end
end

function GetCivilizationAvailableFactions(civilization)
	local civilization_factions = GetCivilizationFactions(civilization)

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
	if (faction == "Shorbear Clan") then
		return { "unit-hero-rugnur", "unit-hero-rugnur-older", "unit-hero-baglur" }
	elseif (faction == "Kal Kartha") then
		return { "unit-hero-rugnur", "unit-hero-rugnur-older", "unit-hero-baglur" }
	else
		return {}
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
		if (player ~= i and (Players[i].Type == PlayerPerson or Players[i].Type == PlayerComputer) and (Players[player]:IsAllied(Players[i]) == false or Players[i]:IsAllied(Players[player]) == false) and GetPlayerData(i, "TotalNumUnits") > 0) then
			rival_count = rival_count + 1
		end
	end
	return rival_count
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

function GetRandomCharacterName(civilization, gender, is_monarch)
	local random_character_name = ""
	local character_names = {}
	if (gender == "random") then
		local genders = { "male", "female" }
		gender = genders[SyncRand(table.getn(genders)) + 1]
	end
	if (civilization == "dwarf") then
		if (gender == "male") then
			if (is_monarch) then
				character_names = { "Angarthing", "Hamel", "Karrag", "Laurin", "Modsognir" }
			else
				character_names = { "Aigaithas", "Aigaithil", "Aigaithing", "Aigaithol", "Aigalas", "Aigaling", "Aigalis", "Aigalol", "Aigalsil", "Aigatas", "Aigatis", "Aigatlos", "Aigatsil", "Aigatsol", "Aigatus", "Aigcatas", "Aigcatil", "Aigcating", "Aigcatis", "Aigcatsil", "Aigcatsol", "Aigcatus", "Aigdring", "Aigdris", "Aigdrlos", "Aigdrsil", "Aigdrsol", "Aigduras", "Aigdurlos", "Aigdursol", "Aigthaing", "Aigthais", "Aigthasil", "Aigthaus", "Alaithas", "Alaithis", "Alaithlos", "Alaithol", "Alaithsol", "Alaithus", "Alalas", "Alalil", "Alalol", "Alalsol", "Alalus", "Alatas", "Alatil", "Alating", "Alatlos", "Alatsil", "Alcatil", "Alcatis", "Alcatlos", "Alcatsil", "Aldras", "Aldril", "Aldring", "Aldris", "Aldrlos", "Aldrol", "Aldrsol", "Alduras", "Aldurlos", "Aldurol", "Althaas", "Althail", "Althalos", "Althaol", "Althasil", "Althasol", "Althaus", "Anaithas", "Anaithil", "Anaithing", "Anaithis", "Anaithsil", "Anaithus", "Analil", "Anallos", "Analol", "Analsil", "Analus", "Anatas", "Anating", "Anatis", "Anatol", "Anatsol", "Ancatas", "Ancatil", "Ancatol", "Ancatus", "Andvari", "Andril", "Andris", "Andrlos", "Andrus", "Anduril", "Andurol", "Andursol", "Andurus", "Angarthing", "Anthaas", "Anthaing", "Anthais", "Anthaol", "Anthasil", "Anthasol", "Anthaus", "Augaithas", "Augaithing", "Augaithsil", "Augaithus", "Augalas", "Augaling", "Augalol", "Augating", "Augatlos", "Augatol", "Augatsil", "Augatsol", "Augcatas", "Augcatil", "Augcatis", "Augcatol", "Augcatsil", "Augcatus", "Augdras", "Augdris", "Augdrsil", "Augdrus", "Augduras", "Augduril", "Augduring", "Augdurol", "Augdursol", "Augdurus", "Augthail", "Augthais", "Augthalos", "Augthaol", "Baglur", "Dulaithil", "Dulaithing", "Dulaithlos", "Dulaithsil", "Dulaithsol", "Dulalas", "Dulaling", "Dulalis", "Dulalsil", "Dulatil", "Dulating", "Dulatol", "Dulatsol", "Dulatus", "Dulcatil", "Dulcating", "Dulcatlos", "Dulcatol", "Dulcatsil", "Dulcatsol", "Duldril", "Duldris", "Duldrlos", "Duldrol", "Duldrsil", "Duldrus", "Dulduras", "Dulduring", "Duldursil", "Duldurus", "Dulthalos", "Dulthasil", "Dulthasol", "Dulthaus", "Durstorn", "Glamaithil", "Glamaithis", "Glamaithol", "Glamaithsol", "Glamalil", "Glamaling", "Glamalis", "Glamallos", "Glamalsil", "Glamalus", "Glamatil", "Glamatus", "Glamcatas", "Glamcatil", "Glamcating", "Glamcatsil", "Glamcatus", "Glamdras", "Glamdril", "Glamdrlos", "Glamdrsol", "Glamduras", "Glamduril", "Glamduring", "Glamduris", "Glamdursol", "Glamthaas", "Glamthaol", "Glamthasil", "Glamthasol", "Glamthaus", "Glomin", "Gomaithas", "Gomaithil", "Gomaithol", "Gomaithsol", "Gomalil", "Gomalis", "Gomalus", "Gomatas", "Gomatil", "Gomating", "Gomatis", "Gomatlos", "Gomatol", "Gomcatil", "Gomcatis", "Gomcatlos", "Gomdras", "Gomdril", "Gomdring", "Gomdris", "Gomdrol", "Gomdrsil", "Gomduris", "Gomdurlos", "Gomdursil", "Gomdursol", "Gomdurus", "Gomthaas", "Gomthalos", "Gomthasol", "Hamel", "Karrag", "Laurin", "Modsognir", "Naraithil", "Naraithing", "Naraithol", "Naraithsil", "Naraithsol", "Naraithus", "Naralas", "Naralil", "Naralsil", "Naralus", "Naratlos", "Naratol", "Naratsil", "Narcating", "Narcatis", "Narcatol", "Narcatsil", "Narcatsol", "Nardras", "Nardril", "Nardring", "Nardris", "Nardrol", "Nardrsil", "Nardrsol", "Nardrus", "Narduras", "Narduril", "Nardurol", "Narthalos", "Narthaol", "Pelaithas", "Pelaithil", "Pelaithing", "Pelaithis", "Pelaithlos", "Pelaithol", "Pelaithsil", "Pelaithsol", "Pelalil", "Pelaling", "Pelalis", "Pelalsil", "Pelalsol", "Pelalus", "Pelatil", "Pelating", "Pelatis", "Pelatol", "Pelatsil", "Pelatus", "Pelcating", "Pelcatlos", "Pelcatol", "Pelcatsil", "Peldras", "Peldril", "Peldrsol", "Peldrus", "Pelduril", "Pelduring", "Pelduris", "Peldurol", "Peldursol", "Peldurus", "Pelthaas", "Pelthail", "Pelthasil", "Rugnur", "Thursagan", "Trithaithas", "Trithaithil", "Trithaithis", "Trithaithlos", "Trithaithol", "Trithaithsil", "Trithaithsol", "Trithaithus", "Trithalis", "Trithalol", "Trithatas", "Trithatil", "Trithatlos", "Trithatsol", "Trithcatlos", "Trithcatsol", "Trithcatus", "Trithdril", "Trithdring", "Trithdris", "Trithdrlos", "Trithdrol", "Trithdrsol", "Trithdrus", "Trithduril", "Trithduring", "Trithdurlos", "Trithdurol", "Trithdursil", "Trithdurus", "Triththaas", "Triththail", "Triththaing", "Triththasol", "Triththaus" }
			end
		end
	elseif (civilization == "gnome") then
		if (gender == "male") then
			if (is_monarch) then
				character_names = { "Bimbam", "Pypo", "Rubezahl" }
			else
				character_names = { "Bimbam", "Clavo", "Cravatu", "Kalutho", "Pypo", "Rubezahl" }
			end
		elseif (gender == "female") then
			if (is_monarch) then
				character_names = { "Adalga" }
			else
				character_names = { "Adalga" }
			end
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
	while (level_number > 0) do
		SetUnitVariable(unit, "Level", GetUnitVariable(unit, "Level") + 1)
		SetUnitVariable(unit, "XpRequired", GetUnitVariable(unit, "XpRequired") + (100 * (GetUnitVariable(unit, "Level") + 1)))
		SetUnitVariable(unit, "Points", GetUnitVariable(unit, "Points") + 25 + (5 * (GetUnitVariable(unit, "Level") + 1)))
		if (advancement) then
			if ((GetUnitVariable(unit, "Ident") == "unit-dwarven-axefighter" or GetUnitVariable(unit, "Ident") == "unit-hero-rugnur") and GetUnitVariable(unit, "LevelUp") < 1) then
				SetUnitVariable(unit, "LevelUp", GetUnitVariable(unit, "LevelUp") + 1)
			else
				SetUnitVariable(unit, "HitPoints", GetUnitVariable(unit, "HitPoints", "Max") * 120 / 100, "Max")
				SetUnitVariable(unit, "HitPoints", GetUnitVariable(unit, "HitPoints", "Max"))
			end
		end
		level_number = level_number - 1
--		UpdateUnitBonuses(unit)
	end
end

function UpdateUnitBonuses(unit)
	local basic_damage_bonus = 0
	local piercing_damage_bonus = 0
	local armor_bonus = 0
	if (GetUnitVariable(unit, "Level") > 1) then
		basic_damage_bonus = basic_damage_bonus + (1 * (GetUnitVariable(unit, "Level") - 1))
		piercing_damage_bonus = piercing_damage_bonus + (1 * (GetUnitVariable(unit, "Level") - 1))
		armor_bonus = armor_bonus + (1 * (GetUnitVariable(unit, "Level") - 1))
	end
	SetUnitVariable(unit, "BasicDamageBonus", basic_damage_bonus)
	SetUnitVariable(unit, "PiercingDamageBonus", piercing_damage_bonus)
	SetUnitVariable(unit, "ArmorBonus", armor_bonus)
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

function RemoveElementFromArray(array, element)
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
	VideoFullScreen = true,
	VideoHeight = 600,
	VideoWidth = 800,
	ShowMessages = true,
	ShowOrders = 2,
	Language = "English",
	QuestsCompleted = {}, -- Quests Completed
	TechnologyAcquired = {
		"unit-dwarven-miner", "unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-town-hall", "unit-dwarven-mushroom-farm", "unit-dwarven-barracks", "unit-hero-rugnur", "unit-hero-rugnur-older",
		"unit-gnomish-worker", "unit-gnomish-recruit", "unit-gnomish-town-hall", "unit-gnomish-farm", "unit-gnomish-barracks",
		"unit-goblin-worker", "unit-goblin-spearman", "unit-goblin-town-hall", "unit-goblin-farm", "unit-goblin-mess-hall", "unit-hero-greebo"
	},
	LastVersionPlayed = "0.0.0",
	TheScepterOfFireMonarch = "",
	TheScepterOfFireRaiderFaction = "",
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
	)
)

--- Uses Stratagus Library path!
Load("scripts/localization.lua")

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
Load("scripts/events.lua")

DebugPrint("... ready!\n")

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
--      ui.lua - Define the user interface
--
--      (c) Copyright 2000-2015 by Lutz Sammer, Jimmy Salmon and Andrettin
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

local ui_loaded_first_time

if not (ui_loaded_first_time) then
	ui_loaded_first_time = false
end

if not (ui_loaded_first_time) then
	Load("scripts/widgets.lua")

	--
	--  Define Decorations.
	--
	if (CanAccessFile("ui/health2.png")) then
		DefineSprites({Name = "sprite-health", File = "ui/health2.png", Offset = {0, -4}, Size = {31, 4}})

		DefineDecorations({Index = "HitPoints", HideNeutral = true, CenterX = true, ShowOpponent=true,
			OffsetPercent = {50, 100}, Method = {"sprite", {"sprite-health"}}})
	end

	if (CanAccessFile("ui/mana2.png")) then
		DefineSprites({Name = "sprite-mana", File = "ui/mana2.png", Offset = {0, -1}, Size = {31, 4}})

		DefineDecorations({Index = "Mana", HideNeutral = true, CenterX = true,OffsetPercent = {50, 100},Method = {"sprite", {"sprite-mana"}}})
		DefineDecorations({Index = "Transport", HideNeutral = true, CenterX = true,OffsetPercent = {50, 100},Method = {"sprite", {"sprite-mana"}}})
		DefineDecorations({Index = "Research", HideNeutral = true, CenterX = true,OffsetPercent = {50, 100},Method = {"sprite", {"sprite-mana"}}})
		DefineDecorations({Index = "Training", HideNeutral = true, CenterX = true,OffsetPercent = {50, 100},Method = {"sprite", {"sprite-mana"}}})
		DefineDecorations({Index = "UpgradeTo", HideNeutral = true, CenterX = true,OffsetPercent = {50, 100},Method = {"sprite", {"sprite-mana"}}})
		if (wyr.preferences.ShowResourceBar) then -- sort of ugly way to set the preferences for this, fix later please
			DefineDecorations({Index = "GiveResource", MinValue = 1000, ShowWhenMax = true, HideNeutral = false, HideSelf = false, CenterX = true, OffsetPercent = {50, 100}, Method = {"sprite", {"sprite-mana"}}})
		else
			DefineDecorations({Index = "GiveResource", MinValue = 1000, ShowWhenMax = true, HideNeutral = true, HideSelf = true, CenterX = true, OffsetPercent = {50, 100}, Method = {"sprite", {"sprite-mana"}}})
		end
		DefineDecorations({Index = "CarryResource", HideNeutral = false, CenterX = true,OffsetPercent = {50, 100},Method = {"sprite", {"sprite-mana"}}})
	end
	--DefineSprites({Name = "sprite-shadow", File = "missiles/unit_shadow.png", Offset = {3, 42}, Size = {32, 32}})
	--DefineSprites({Name = "sprite-spell", File = "ui/bloodlust,haste,slow,invisible,shield.png", Offset = {1, 1}, Size = {16, 16}})
	DefineSprites({Name = "sprite-slow", File = "ui/slow.png", Offset = {1, 1}, Size = {16, 16}})
	DefineSprites({Name = "sprite-level-up", File = "ui/level_up.png", Offset = {1, 1}, Size = {16, 16}})

	--[[
	DefineDecorations({Index = "Bloodlust", ShowOpponent = true,
	  Offset = {0, 0}, Method = {"static-sprite", {"sprite-spell", 0}}})
	DefineDecorations({Index = "Haste", ShowOpponent = true,
	  Offset = {0, 16}, Method = {"static-sprite", {"sprite-spell", 1}}})
	DefineDecorations({Index = "Invisible", ShowOpponent = true,
	  Offset = {16, 16}, Method = {"static-sprite", {"sprite-spell", 3}}})
	DefineDecorations({Index = "UnholyArmor", ShowOpponent = true,
	  Offset = {16, 0}, Method = {"static-sprite", {"sprite-spell", 4}}})
	--]]
	--DefineDecorations({Index = "ShadowFly", ShowOpponent = true, ShowWhenMax = true, ShowWhenNull = true,
	--  Offset = {0, 0}, Method = {"sprite", {"sprite-shadow"}}})
	DefineDecorations({Index = "Slow", ShowOpponent = true,
	  Offset = {0, 16}, Method = {"static-sprite", {"sprite-slow", 0}}})
	DefineDecorations({Index = "LevelUp", ShowOpponent = false, HideAllied = true,
	  Offset = {16, 16}, Method = {"static-sprite", {"sprite-level-up", 0}}})
end

--
--  Define Panels
--

local min_damage = Div(
	Add(
		ActiveUnitVar("BasicDamage"),
		ActiveUnitVar("PiercingDamage")
	),
	2
)
local max_damage = Add(
	ActiveUnitVar("BasicDamage"),
	ActiveUnitVar("PiercingDamage")
)

Load("scripts/celt/ui.lua")
Load("scripts/dwarf/ui.lua")
Load("scripts/germanic/ui.lua")
Load("scripts/gnome/ui.lua")
Load("scripts/goblin/ui.lua")
Load("scripts/goth/ui.lua")
Load("scripts/kobold/ui.lua")
Load("scripts/latin/ui.lua")
Load("scripts/norse/ui.lua")
Load("scripts/teuton/ui.lua")

local info_panel_x = UI.InfoPanel.X
local info_panel_y = UI.InfoPanel.Y

DefinePanelContents(
-- Default presentation. ------------------------
  {
  Ident = "panel-general-contents",
  Pos = {info_panel_x, info_panel_y}, DefaultFont = "game",
  Contents = {
	{ Pos = {70, 21}, Condition = {ShowOpponent = false, HideNeutral = true},
		More = {"LifeBar", {Variable = "HitPoints", Height = 4, Width = 50}}
	},
	{ Pos = {67, 26}, Condition = {ShowOpponent = false, HideNeutral = true},
		More = {"FormattedText2", {
			Font = "small", Variable = "HitPoints", Format = "HP: %d/%d",
			Component1 = "Value", Component2 = "Max"}
		}
	},
	{ Pos = {70, 45}, Condition = {ShowOpponent = false, HideNeutral = true, Mana = "only"},
		More = {"LifeBar", {Variable = "Mana", Height = 4, Width = 50}}
	},
	{ Pos = {67, 50}, Condition = {ShowOpponent = false, HideNeutral = true, Mana = "only"},
		More = {"FormattedText2", {
			Font = "small", Variable = "Mana", Format = "Mana: %d/%d",
			Component1 = "Value", Component2 = "Max"}
		}
	},
	{ Pos = {70, 45}, Condition = {ShowOpponent = false, HideNeutral = true, organic = "only", Mana = "false"},
		More = {"LifeBar", {Variable = "Xp", Height = 4, Width = 50}}
	},
	{ Pos = {67, 50}, Condition = {ShowOpponent = false, HideNeutral = true, organic = "only", Mana = "false"},
		More = { "Text", {Text = Concat("XP: ", String(ActiveUnitVar("Xp")), "/", String(ActiveUnitVar("XpRequired"))), Font = "small"}}
    },
	{ Pos = {70, 67}, Condition = {ShowOpponent = false, HideNeutral = true, organic = "only", Mana = "only"},
		More = {"LifeBar", {Variable = "Xp", Height = 4, Width = 50}}
	},
	{ Pos = {67, 72}, Condition = {ShowOpponent = false, HideNeutral = true, organic = "only", Mana = "only"},
		More = { "Text", {Text = Concat("XP: ", String(ActiveUnitVar("Xp")), "/", String(ActiveUnitVar("XpRequired"))), Font = "small"}}
    },
	--[[
	{ Pos = {35, 61}, Condition = {ShowOpponent = false, HideNeutral = true},
		More = {"FormattedText2", {
			Font = "small", Variable = "HitPoints", Format = "%d/%d",
			Component1 = "Value", Component2 = "Max", Centered = true}}
	},
	--]]

	{ Pos = {170, 26}, More = {"Text", {Text = Line(1, UnitName("Active"), 96, "game"), Centered = true}} },
	{ Pos = {170, 37}, More = {"Text", {Text = Line(2, UnitName("Active"), 96, "game"), Centered = true}} },

	-- unit type name, if the unit has a personal name
	{ Pos = {170, 61}, Condition = {ShowOpponent = true}, More = {"Text", {Text = Line(1, UnitTypeName("Active"), 96, "game"), Centered = true}} },
	{ Pos = {170, 72}, Condition = {ShowOpponent = true}, More = {"Text", {Text = Line(2, UnitTypeName("Active"), 96, "game"), Centered = true}} },
	
	-- Resource Left
	{ Pos = {9, 103}, Condition = {ShowOpponent = false, GiveResource = "only", Build = "false"},
		More = {"Text", {Text = Concat(function() return CapitalizeString(GetUnitVariable(-1, "GiveResourceTypeName")) end, " Left:")}}
	},
	{ Pos = {115, 103}, Condition = {ShowOpponent = false, GiveResource = "only", Build = "false"},
		More = {"Text", {Text = String(ActiveUnitVar("GiveResource", "Value"))}}
	},

	-- Construction
	{ Pos = {25, 152}, Condition = {ShowOpponent = false, HideNeutral = true, Build = "only"},
		More = {"CompleteBar", {Variable = "Build", Width = 152, Height = 14, Border = false}}
	},
	{ Pos = {50, 153}, Condition = {ShowOpponent = false, HideNeutral = true, Build = "only"},
		More = {"Text", "% Complete"}},
	{ Pos = {107, 78}, Condition = {ShowOpponent = false, HideNeutral = true, Build = "only"},
		More = {"Icon", {Unit = "Worker"}}}


  } },
-- Supply Building constructed.----------------
  {
  Ident = "panel-building-contents",
  Pos = {info_panel_x, info_panel_y}, DefaultFont = "game",
  Condition = {ShowOpponent = false, HideNeutral = true, Center = "false", Build = "false", Supply = "only", Training = "false", UpgradeTo = "false"},
  Contents = {
-- Food building
	{ Pos = {9, 103}, More = {"Text", "Usage"} },
	{ Pos = {9, 116}, More = {"Text", {Text = "Supply:"}} },
	{ Pos = {76, 116}, Condition = {},
		More = {"Text", {Text = String(PlayerData(ActiveUnitVar("Player", "Value"), "Supply"))}}
	},
	{ Pos = {9, 130}, More = { "Text", {Text = "Demand:"}} },
	{ Pos = {76, 130}, More = { "Text", {Text = If(GreaterThan(PlayerData(ActiveUnitVar("Player", "Value"), "Demand"),
										PlayerData(ActiveUnitVar("Player", "Value"), "Supply")),
										InverseVideo(String(PlayerData(ActiveUnitVar("Player", "Value"), "Demand"))),
										String(PlayerData(ActiveUnitVar("Player", "Value"), "Demand")) )}}
    }

  } },
  -- Center
  {
  Ident = "panel-center-contents",
  Pos = {info_panel_x, info_panel_y}, DefaultFont = "game",
  Condition = {ShowOpponent = false, HideNeutral = true, Center = "only", Build = "false", Supply = "only", Training = "false", UpgradeTo = "false", Research = "false"},
  Contents = {
	{ Pos = {9, 103}, More = {"Text", "Processing"} },
	{ Pos = {9, 116}, More = { "Text", {Text = "Gold:"}}},
	{ Pos = {76, 116}, More = { "Text", {Text = Concat("100", 
										If(GreaterThan(PlayerData(ActiveUnitVar("Player", "Value"), "Incomes", "gold"), 100),
										InverseVideo(Concat("+", String(Sub(PlayerData(ActiveUnitVar("Player", "Value"), "Incomes", "gold"), 100)))),
										""))}}
    },
	{ Pos = {9, 130}, Condition = {LumberImprove = "only"}, More = {"Text", {Text = "Lumber:"}}},
	{ Pos = {76, 130}, Condition = {LumberImprove = "only"}, More = { "Text", {Text = Concat("100",
										If(GreaterThan(PlayerData(ActiveUnitVar("Player", "Value"), "Incomes", "lumber"), 100),
										InverseVideo(Concat("+", String(Sub(PlayerData(ActiveUnitVar("Player", "Value"), "Incomes", "lumber"), 100)))),
										"" ))}}
    },
	{ Pos = {9, 144}, Condition = {StoneImprove = "only"}, More = { "Text", {Text = "Stone:"}}},
	{ Pos = {76, 144}, Condition = {StoneImprove = "only"}, More = { "Text", {Text = Concat("100", 
										If(GreaterThan(PlayerData(ActiveUnitVar("Player", "Value"), "Incomes", "stone"), 100),
										InverseVideo(Concat("+", String(Sub(PlayerData(ActiveUnitVar("Player", "Value"), "Incomes", "stone"), 100)))),
										"" ))}}
    },
--	{ Pos = {84, 134}, Condition = {OilImprove = "only"}, More = { "Text", {Text = Concat("Oil: 100", 
--									If(GreaterThan(PlayerData(ActiveUnitVar("Player", "Value"), "Incomes", "oil"), 100),
--										InverseVideo(Concat("+", String(Sub(PlayerData(ActiveUnitVar("Player", "Value"), "Incomes", "oil"), 100)))),
--										"" ))}}
--    },

  } },
  --res inmprovement
   {
  Ident = "panel-resimrove-contents",
  Pos = {info_panel_x, info_panel_y}, DefaultFont = "game",
  Condition = {ShowOpponent = false, HideNeutral = true, Center = "false", Build = "false", Training = "false", UpgradeTo = "false", Research = "false"},
  Contents = {
	{ Pos = {9, 103}, Condition = {LumberImprove = "only"}, More = {"Text", "Processing"} },
	{ Pos = {9, 103}, Condition = {StoneImprove = "only"}, More = {"Text", "Processing"} },
--	{ Pos = {9, 103}, Condition = {OilImprove = "only"}, More = {"Text", "Processing"} },
	{ Pos = {9, 116}, Condition = {LumberImprove = "only"}, More = {"Text", {Text = "Lumber:"}}},
	{ Pos = {76, 116}, Condition = {LumberImprove = "only"}, More = { "Text", {Text = Concat("100",
										If(GreaterThan(PlayerData(ActiveUnitVar("Player", "Value"), "Incomes", "lumber"), 100),
										InverseVideo(Concat("+", String(Sub(PlayerData(ActiveUnitVar("Player", "Value"), "Incomes", "lumber"), 100)))),
										"" ))}}
    },
	{ Pos = {9, 116}, Condition = {StoneImprove = "only"}, More = { "Text", {Text = "Stone:"}}},
	{ Pos = {76, 116}, Condition = {StoneImprove = "only"}, More = { "Text", {Text = Concat("100", 
										If(GreaterThan(PlayerData(ActiveUnitVar("Player", "Value"), "Incomes", "stone"), 100),
										InverseVideo(Concat("+", String(Sub(PlayerData(ActiveUnitVar("Player", "Value"), "Incomes", "stone"), 100)))),
										"" ))}}
    },

  } },
-- All own unit -----------------
  {
  Ident = "panel-all-unit-contents",
  Pos = {info_panel_x, info_panel_y},
  DefaultFont = "game",
  Condition = {ShowOpponent = false, HideNeutral = true, Build = "false"},
  Contents = {
	--[[
	{ Pos = {16, 102}, Condition = {PiercingDamage = "only"},
		More = {"Text", {Text = Concat(
			"Damage: ",
			String(min_damage),
			"-",
			String(max_damage)
		)}}
	},
	--]]
	{ Pos = {9, 116}, Condition = {BasicDamage = "only"},
		More = {"Text", {Text = "Damage:"}}
	},
	{ Pos = {76, 116}, Condition = {BasicDamage = "only"},
		More = {"Text", {Text = Concat(
			String(min_damage),
			"-",
			String(max_damage)
		)}}
	},
	{ Pos = {115, 116}, Condition = {Accuracy = "only", Building = "false"},
		More = {"Text", {Text = "Accuracy:"}}
	},
	{ Pos = {184, 116}, Condition = {Accuracy = "only", Building = "false"},
		More = {"Text", {Text = String(ActiveUnitVar("Accuracy"))}}
	},
	{ Pos = {9, 144}, Condition = {AttackRange = "only"},
		More = {"Text", {Text = "Range:"}}
	},
	{ Pos = {76, 144}, Condition = {AttackRange = "only"},
		More = {"Text", {Text = String(ActiveUnitVar("AttackRange"))}}
	},
	{ Pos = {115, 144}, Condition = {SightRange = "only", Building = "false"},
		More = {"Text", {Text = "Sight:"}}
	},
	{ Pos = {184, 144}, Condition = {SightRange = "only", Building = "false"},
		More = {"Text", {Text = String(ActiveUnitVar("SightRange"))}}
	},
-- Research
	{ Pos = {25, 152}, Condition = {Research = "only"},
		More = {"CompleteBar", {Variable = "Research", Width = 152, Height = 14, Border = false}}
	},
	{ Pos = {100, 86}, Condition = {Research = "only"}, More = {"Text", "Researching~|:"}},
	{ Pos = {50, 153}, Condition = {Research = "only"}, More = {"Text", "% Complete"}},
-- Training
	{ Pos = {25, 152}, Condition = {Training = "only"},
		More = {"CompleteBar", {Variable = "Training", Width = 152, Height = 14, Border = false}}
	},
	{ Pos = {50, 153}, Condition = {Training = "only"}, More = {"Text", "% Complete"}},
-- Upgrading To
	{ Pos = {25, 152}, Condition = {UpgradeTo = "only"},
		More = {"CompleteBar", {Variable = "UpgradeTo", Width = 152, Height = 14, Border = false}}
	},
	{ Pos = {23,  86}, More = {"Text", "Upgrading:"}, Condition = {UpgradeTo = "only"} },
	{ Pos = {50, 153}, More = {"Text", "% Complete"}, Condition = {UpgradeTo = "only"} },
-- Resource Carry
	{ Pos = {115, 157}, Condition = {CarryResource = "only"},
		More = {"Text", {Text = Concat(function() return CapitalizeString(GetUnitVariable(-1, "CurrentResourceName")) end, ":")}}
	},
	{ Pos = {184, 157}, Condition = {CarryResource = "only"},
		More = {"Text", {Text = String(ActiveUnitVar("CarryResource", "Value"))}}
	}

  } },
-- Attack Unit -----------------------------
  {
  Ident = "panel-attack-unit-contents",
  Pos = {info_panel_x, info_panel_y},
  DefaultFont = "game",
  Condition = {ShowOpponent = true, HideNeutral = true, Building = "false", Build = "false"},
  Contents = {
-- Unit caracteristics

	{ Pos = {3, 72}, Condition = {organic = "only"},
		More = {"Text", {Text = "Level:"}}
	},
	{ Pos = {51, 72}, Condition = {organic = "only"},
		More = {"Text", {Text = String(ActiveUnitVar("Level"))}}
	},
	{ Pos = {9, 103}, Condition = {organic = "only"},
		More = {"Text", {Text = "Trait:"}}
	},
	{ Pos = {76, 103}, Condition = {organic = "only"},
		More = {"Text", {Text = UnitTrait("Active")}}
	},
	{ Pos = {9, 130}, Condition = {},
		More = {"Text", {Text = "Armor:"}}
	},
	{ Pos = {76, 130}, Condition = {},
		More = {"Text", {Text = String(ActiveUnitVar("Armor"))}}
	},
	{ Pos = {115, 130}, Condition = {},
		More = {"Text", {Text = "Evasion:"}}
	},
	{ Pos = {184, 130}, Condition = {},
		More = {"Text", {Text = String(ActiveUnitVar("Evasion"))}}
	},
	{ Pos = {9, 157}, Condition = {Speed = "only"},
		More = {"Text", {Text = "Speed:"}}
	},
	{ Pos = {76, 157}, Condition = {Speed = "only"},
		More = {"Text", {Text = String(ActiveUnitVar("Speed"))}}
	}
  } })

if not (ui_loaded_first_time) then
	wyrmsun.playlist = { "music/battle_theme_a.ogg" }

	UI.MessageFont = Fonts["game"]
	UI.MessageScrollSpeed = 5

	DefineCursor({
	  Name = "cursor-glass",
	  Race = "any",
	  File = "ui/cursors/magnifying_glass.png",
	  HotSpot = {11, 11},
	  Size = {34, 35}})
	DefineCursor({
	  Name = "cursor-cross",
	  Race = "any",
	  File = "ui/cursors/small_green_cross.png",
	  HotSpot = { 8,  8},
	  Size = {18, 18}})
	if (CanAccessFile("ui/cursors/cross.png")) then
	  DefineCursor({
		Name = "cursor-scroll",
		Race = "any",
		File = "ui/cursors/cross.png",
		HotSpot = {15, 15},
		Size = {32, 32}})
	end
	DefineCursor({
	  Name = "cursor-arrow-e",
	  Race = "any",
	  File = "ui/cursors/arrow_E.png",
	  HotSpot = {22, 10},
	  Size = {32, 24}})
	DefineCursor({
	  Name = "cursor-arrow-ne",
	  Race = "any",
	  File = "ui/cursors/arrow_NE.png",
	  HotSpot = {20,  2},
	  Size = {32, 24}})
	DefineCursor({
	  Name = "cursor-arrow-n",
	  Race = "any",
	  File = "ui/cursors/arrow_N.png",
	  HotSpot = {12,  2},
	  Size = {24, 32}})
	DefineCursor({
	  Name = "cursor-arrow-nw",
	  Race = "any",
	  File = "ui/cursors/arrow_NW.png",
	  HotSpot = { 2,  2},
	  Size = {24, 32}})
	DefineCursor({
	  Name = "cursor-arrow-w",
	  Race = "any",
	  File = "ui/cursors/arrow_W.png",
	  HotSpot = { 4, 10},
	  Size = {32, 24}})
	DefineCursor({
	  Name = "cursor-arrow-s",
	  Race = "any",
	  File = "ui/cursors/arrow_S.png",
	  HotSpot = {12, 22},
	  Size = {24, 32}})
	DefineCursor({
	  Name = "cursor-arrow-sw",
	  Race = "any",
	  File = "ui/cursors/arrow_SW.png",
	  HotSpot = { 2, 18},
	  Size = {32, 24}})
	DefineCursor({
	  Name = "cursor-arrow-se",
	  Race = "any",
	  File = "ui/cursors/arrow_SE.png",
	  HotSpot = {20, 18},
	  Size = {24, 32}})

	function GetRGBA(r, g, b, a)
		if (wyr.preferences.UseOpenGL == false) then
			return b + g*0x100 + r*0x10000 + a*0x1000000
		else
			return r + g*0x100 + b*0x10000 + a*0x1000000
		end
	end

	local PopupBackgroundColor = GetRGBA(28, 28, 28, 208)
	local PopupBorderColor = GetRGBA(93, 93, 93, 160)

	local PopupFont = "game"

	DefinePopup({
		Ident = "popup-commands",
		BackgroundColor = PopupBackgroundColor,
		BorderColor = PopupBorderColor,
		DefaultFont = wyr.preferences.PopupDescriptionFont,
		Contents = {
				{ 	Margin = {1, 1}, HighlightColor = "yellow",
					More = {"ButtonInfo", {InfoType = "Hint", Font = PopupFont}}
				}, 
				-- Description
				{ 	Margin = {1, 1}, Condition = {HasDescription = true},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				}, 
				{ 	Condition = {HasDescription = true}, Margin = {1, 1}, HighlightColor = "yellow",
					More = {"ButtonInfo", {InfoType = "Description", MaxWidth = Video.Width / 5, Font = wyr.preferences.PopupDescriptionFont}}
				}, 
				-- Move  hint
				{ 	Margin = {1, 1}, Condition = {ButtonAction = "move", Speed = "only"}, -- speed as a proxy for not being a building
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {ButtonAction = "move", Speed = "only"}, Margin = {1, 1}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = _("~<ALT~>-click to defend a unit."), MaxWidth = Video.Width / 5, Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {ButtonAction = "move", Speed = "only"}, Margin = {1, 1}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = _("~<SHIFT~>-click to make waypoints."), MaxWidth = Video.Width / 5, Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {ButtonAction = "move", Speed = "only"}, Margin = {1, 1}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = _("~<CTRL~>-click to stand ground after moving."), MaxWidth = Video.Width / 5, Font = wyr.preferences.PopupDescriptionFont}}
				},
				-- Attack hint
				{ 	Margin = {1, 1}, Condition = {ButtonAction = "attack"},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {ButtonAction = "attack"}, Margin = {1, 1}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = _("Click on an empty space to attack-move."), MaxWidth = Video.Width / 5, Font = wyr.preferences.PopupDescriptionFont}}
				},
				-- Repair hint
				{ 	Margin = {1, 1}, Condition = {ButtonAction = "repair"},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {ButtonAction = "repair"}, Margin = {1, 1}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = _("~<CTRL~>-click on button enables/disables auto-repair of damaged buildings."), MaxWidth = Video.Width / 5, Font = wyr.preferences.PopupDescriptionFont}}
				},
				-- Heal hint
				{ 	Margin = {1, 1}, Condition = {ButtonValue = "spell-herbal-cure"},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {ButtonValue = "spell-herbal-cure"}, Margin = {1, 1}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = _("~<CTRL~>-click on button enables/disables autoheal ability."), MaxWidth = Video.Width / 5, Font = wyr.preferences.PopupDescriptionFont}}
				}
		}	
	})

	DefinePopup({
		Ident = "popup-building",
		BackgroundColor = PopupBackgroundColor,
		BorderColor = PopupBorderColor,
		MinWidth = 128,
		DefaultFont = wyr.preferences.PopupDescriptionFont,
		Contents = {
				{	Margin = {1, 1}, HighlightColor = "yellow",
					More = {"ButtonInfo", {InfoType = "Hint", Font = PopupFont}}
				}, 
				{ 	Margin = {1, 1},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				}, 
				{ 	More = {"Costs", {Font = PopupFont}}, HighlightColor = "yellow",
				},
				{ 	HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Class: "), TypeClass("Type")), Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {HitPoints = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Hit Points: "), Variable = "HitPoints", Font = wyr.preferences.PopupDescriptionFont}}
				}, 
				{ 	Condition = {AttackFromTransporter = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Garrison: "), String(TypeVar("Transport", "Max"))), Font = wyr.preferences.PopupDescriptionFont}}
				},
				-- Description
				{ 	Margin = {1, 1}, Condition = {HasDescription = true}, 
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				}, 
				{ 	Condition = {HasDescription = true}, Margin = {1, 1}, HighlightColor = "yellow",
					More = {"ButtonInfo", {InfoType = "Description", MaxWidth = Video.Width / 5, Font = wyr.preferences.PopupDescriptionFont}}
				},
		}	
	})

	DefinePopup({
		Ident = "popup-unit",
		BackgroundColor = PopupBackgroundColor,
		BorderColor = PopupBorderColor,
		MinWidth = 128,
		DefaultFont = wyr.preferences.PopupDescriptionFont,
		Contents = {
				{	Margin = {1, 1}, HighlightColor = "yellow",
					More = {"ButtonInfo", {InfoType = "Hint", Font = PopupFont}}
				}, 
				{ 	Margin = {1, 1},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				}, 
				{ 	More = {"Costs", {Font = PopupFont}}, HighlightColor = "yellow",
				}, 
				{ 	Margin = {1, 1},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Class: "), TypeClass("Type")), Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {HitPoints = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Hit Points: "), Variable = "HitPoints", Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	HighlightColor = "yellow",
					More = {"Variable", {Text = _("Armor: "), Variable = "Armor", Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {SightRange = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Sight: "), Variable = "SightRange", Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	HighlightColor = "yellow",
					More = {"Variable", {Text = _("Range: "), Variable = "AttackRange", Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {BasicDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Damage: "),
						String(Div(Add(TypeVar("PiercingDamage","Value"), TypeVar("BasicDamage","Value")), 2)), "-",
						String(Add(TypeVar("PiercingDamage","Value"), TypeVar("BasicDamage","Value")))
					), Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {Accuracy = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Accuracy: "), Variable = "Accuracy", Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {Evasion = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Evasion: "), Variable = "Evasion", Font = wyr.preferences.PopupDescriptionFont}}
				},
				
				-- Description
				{ 	Margin = {1, 1}, Condition = {HasDescription = true}, 
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				}, 
				{ 	Condition = {HasDescription = true}, Margin = {1, 1}, HighlightColor = "yellow",
					More = {"ButtonInfo", {InfoType = "Description", MaxWidth = Video.Width / 5, Font = wyr.preferences.PopupDescriptionFont}}
				},
		}	
	})

	DefinePopup({
		Ident = "popup-research",
		BackgroundColor = PopupBackgroundColor,
		BorderColor = PopupBorderColor,
		MinWidth = 128,
		DefaultFont = wyr.preferences.PopupDescriptionFont,
		Contents = {
				{	Margin = {1, 1}, HighlightColor = "yellow",
					More = {"ButtonInfo", {InfoType = "Hint", Font = PopupFont}}
				}, 
				{ 	Margin = {1, 1},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				}, 
				{ 	More = {"Costs", {Font = PopupFont}}, HighlightColor = "yellow",
				},
				-- Description
				{ 	Margin = {1, 1}, Condition = {HasDescription = true}, 
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				}, 
				{ 	Condition = {HasDescription = true}, Margin = {1, 1}, HighlightColor = "yellow",
					More = {"ButtonInfo", {InfoType = "Description", MaxWidth = Video.Width / 5, Font = wyr.preferences.PopupDescriptionFont}}
				},
		}	
	})
end

ui_loaded_first_time = true
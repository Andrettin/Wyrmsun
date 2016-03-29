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
--      (c) Copyright 2000-2016 by Lutz Sammer, Jimmy Salmon and Andrettin
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

if not (ui_loaded_first_time) then
	local ui_loaded_first_time = false
end

if not (ui_loaded_first_time) then
	function GetBackground(background_image)
		if (math.floor(Video.Width * 100 / Video.Height) == 133) then
			local new_background_image = string.gsub(background_image, ".png", "_4_3.png")
			if (CanAccessFile(new_background_image)) then
				return new_background_image
			end
		end
		if (CanAccessFile(background_image)) then -- check if can access the background image
			return background_image
		else -- substitute the image for another, if it isn't present
			return "graphics/dwarf/ui/the_first_dwarves.png"
		end
		
		return 
	end

	Load("scripts/widgets.lua")

	--
	--  Define Decorations.
	--
	if (CanAccessFile("ui/health2.png")) then
		DefineSprites({Name = "sprite-health", File = "ui/health2.png", Offset = {0, -4}, Size = {31, 4}})

		DefineDecorations({Index = "HitPoints", HideNeutral = false, CenterX = true, ShowOpponent = true,
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
	DefineSprites({Name = "sprite-slow", File = "ui/slow.png", Offset = {1, 1}, Size = {16, 16}})
	DefineSprites({Name = "sprite-stun", File = "ui/stun.png", Offset = {1, 1}, Size = {16, 16}})
	DefineSprites({Name = "sprite-bleeding", File = "ui/bleeding.png", Offset = {1, 1}, Size = {16, 16}})
	DefineSprites({Name = "sprite-level-up", File = "ui/level_up.png", Offset = {1, 1}, Size = {16, 16}})

	DefineDecorations({Index = "Slow", ShowOpponent = true,
	  Offset = {0, 16}, Method = {"static-sprite", {"sprite-slow", 0}}})
	DefineDecorations({Index = "Stun", ShowOpponent = true,
	  Offset = {16, 16}, Method = {"static-sprite", {"sprite-stun", 0}}})
	DefineDecorations({Index = "Bleeding", ShowOpponent = true,
	  Offset = {16, 16}, Method = {"static-sprite", {"sprite-bleeding", 0}}})
	DefineDecorations({Index = "LevelUp", ShowOpponent = false, HideAllied = true,
	  Offset = {16, 16}, Method = {"static-sprite", {"sprite-level-up", 0}}})
end

LoadingBarSetBackgrounds({
	GetBackground("ui/backgrounds/gnashorn.png"), GetBackground("ui/backgrounds/gryphon.png"), GetBackground("ui/backgrounds/gullinburst.png"), GetBackground("ui/backgrounds/wyrm.png"), GetBackground("ui/backgrounds/yale.png")
})

--
--  Define Panels
--

local min_damage = Div(
	Add(
		Add(
			Add(
				ActiveUnitVar("PiercingDamage"), ActiveUnitVar("BasicDamage")
			),
			Add(
				ActiveUnitVar("FireDamage"), ActiveUnitVar("ColdDamage")
			)
		),
		Add(
			Add(
				ActiveUnitVar("ArcaneDamage"), ActiveUnitVar("LightningDamage")
			),
			Add(
				Add(
					ActiveUnitVar("AirDamage"), ActiveUnitVar("EarthDamage")
				),
				ActiveUnitVar("WaterDamage")
			)
		)
	),
	2
)
local max_damage = 	Add(
	Add(
		Add(
			ActiveUnitVar("PiercingDamage"), ActiveUnitVar("BasicDamage")
		),
		Add(
			ActiveUnitVar("FireDamage"), ActiveUnitVar("ColdDamage")
		)
	),
	Add(
		Add(
			ActiveUnitVar("ArcaneDamage"), ActiveUnitVar("LightningDamage")
		),
		Add(
			Add(
				ActiveUnitVar("AirDamage"), ActiveUnitVar("EarthDamage")
			),
			ActiveUnitVar("WaterDamage")
		)
	)
)

UI.InfoPanel.X = 162
UI.InfoPanel.Y = Video.Height - 186

b = CUIButton:new()
b.X = 169
b.Y = Video.Height - 166
b.Style = FindButtonStyle("icon")
UI.SingleSelectedButton = b

UI.SelectedButtons:clear()

function AddSelectedButton(x, y)
	b = CUIButton:new_local()
	b.X = 162 + x
	b.Y = Video.Height - 186 + y
	b.Style = FindButtonStyle("icon")
	UI.SelectedButtons:push_back(b)
end

AddSelectedButton(30, 15)
AddSelectedButton(86, 15)
AddSelectedButton(142, 15)
AddSelectedButton(30, 69)
AddSelectedButton(86, 69)
AddSelectedButton(142, 69)
AddSelectedButton(30, 123)
AddSelectedButton(86, 123)
AddSelectedButton(142, 123)

UI.MaxSelectedFont = Fonts["game"]
UI.MaxSelectedTextX = 162 + 0
UI.MaxSelectedTextY = Video.Height - 186 + 15

b = CUIButton:new()
b.X = 162 + 160
b.Y = Video.Height - 186 + 80
b.Style = FindButtonStyle("icon")
UI.SingleTrainingButton = b

UI.TrainingButtons:clear()

function AddTrainingButton(x, y)
	b = CUIButton:new_local()
	b.X = 162 + x
	b.Y = Video.Height - 186 + y
	b.Style = FindButtonStyle("icon")
	UI.TrainingButtons:push_back(b)
end

AddTrainingButton(160, 80)
AddTrainingButton(108, 80)
AddTrainingButton(56, 80)
AddTrainingButton(4, 80)

b = CUIButton:new()
b.X = 162 + 110
b.Y = Video.Height - 186 + 11 + 70
b.Style = FindButtonStyle("icon")
UI.UpgradingButton = b

b = CUIButton:new()
b.X = 162 + 110
b.Y = Video.Height - 186 + 11 + 70
b.Style = FindButtonStyle("icon")
UI.ResearchingButton = b

UI.TransportingButtons:clear()

function AddTransportingButton(x, y)
	b = CUIButton:new_local()
	b.X = Video.Width - 243 + x
	b.Y = Video.Height - 186 + y
	b.Style = FindButtonStyle("icon")
	UI.TransportingButtons:push_back(b)
end

AddTransportingButton(17, 65)
AddTransportingButton(73, 65)
AddTransportingButton(129, 65)
AddTransportingButton(17, 119)
AddTransportingButton(73, 119)
AddTransportingButton(129, 119)

UI.InventoryButtons:clear()

function AddInventoryButton(x, y)
	b = CUIButton:new_local()
	b.X = Video.Width - 243 + x
	b.Y = Video.Height - 186 + y
	b.Style = FindButtonStyle("icon")
	UI.InventoryButtons:push_back(b)
end

AddInventoryButton(17, 11)
AddInventoryButton(73, 11)
AddInventoryButton(129, 11)
AddInventoryButton(185, 11)
AddInventoryButton(17, 54)
AddInventoryButton(73, 54)
AddInventoryButton(129, 54)
AddInventoryButton(185, 54)
AddInventoryButton(17, 97)
AddInventoryButton(73, 97)
AddInventoryButton(129, 97)
AddInventoryButton(185, 97)
AddInventoryButton(17, 140)
AddInventoryButton(73, 140)
AddInventoryButton(129, 140)

b = CUIButton:new()
--b.X = 12
b.X = Video.Width - 12 - 46
b.Y = 16 + 12
b.Style = FindButtonStyle("icon")
UI.IdleWorkerButton = b

b = CUIButton:new()
b.X = Video.Width - 12 - 46
b.Y = 16 + 12 + 38 + 24
b.Style = FindButtonStyle("icon")
UI.LevelUpUnitButton = b

UI.CompletedBarColorRGB = CColor(48, 100, 4)
UI.CompletedBarShadow = false

UI.ButtonPanel.Buttons:clear()

function AddButtonPanelButton(x, y)
	b = CUIButton:new_local()
	b.X = Video.Width - 243 + x
	b.Y = Video.Height - 186 + y
	b.Style = FindButtonStyle("icon")
	UI.ButtonPanel.Buttons:push_back(b)
end

AddButtonPanelButton(17, 11)
AddButtonPanelButton(73, 11)
AddButtonPanelButton(129, 11)
AddButtonPanelButton(185, 11)
AddButtonPanelButton(17, 54)
AddButtonPanelButton(73, 54)
AddButtonPanelButton(129, 54)
AddButtonPanelButton(185, 54)
AddButtonPanelButton(17, 97)
AddButtonPanelButton(73, 97)
AddButtonPanelButton(129, 97)
AddButtonPanelButton(185, 97)
AddButtonPanelButton(17, 140)
AddButtonPanelButton(73, 140)
AddButtonPanelButton(129, 140)
AddButtonPanelButton(185, 140)

UI.ButtonPanel.X = Video.Width - 243
UI.ButtonPanel.Y = Video.Height - 186
UI.ButtonPanel.AutoCastBorderColorRGB = CColor(0, 0, 252)

UI.MapArea.X = 0
UI.MapArea.Y = 16
UI.MapArea.EndX = Video.Width - 1
UI.MapArea.EndY = Video.Height - 176 - 1

UI.Minimap.X = 17
UI.Minimap.Y = Video.Height - 156
UI.Minimap.W = 128
UI.Minimap.H = 128

UI.StatusLine.TextX = 2
UI.StatusLine.TextY = Video.Height + 2 - 16
UI.StatusLine.Width = Video.Width - 16 - 2 - 176
UI.StatusLine.Font = Fonts["game"]

UI.Resources[GetResourceIdByName("grain")].G = CGraphic:New("ui/grain.png", 14, 14)
UI.Resources[GetResourceIdByName("grain")].IconFrame = 0
UI.Resources[GetResourceIdByName("grain")].IconX = Video.Width
UI.Resources[GetResourceIdByName("grain")].IconY = Video.Height

UI.Resources[GetResourceIdByName("mushrooms")].G = CGraphic:New("ui/mushrooms.png", 14, 14)
UI.Resources[GetResourceIdByName("mushrooms")].IconFrame = 0
UI.Resources[GetResourceIdByName("mushrooms")].IconX = Video.Width
UI.Resources[GetResourceIdByName("mushrooms")].IconY = Video.Height

UI.Resources[GetResourceIdByName("fish")].G = CGraphic:New("ui/fish.png", 14, 14)
UI.Resources[GetResourceIdByName("fish")].IconFrame = 0
UI.Resources[GetResourceIdByName("fish")].IconX = Video.Width
UI.Resources[GetResourceIdByName("fish")].IconY = Video.Height

UI.Resources[GetResourceIdByName("silver")].G = CGraphic:New("ui/silver.png", 14, 14)
UI.Resources[GetResourceIdByName("silver")].IconFrame = 0
UI.Resources[GetResourceIdByName("silver")].IconX = Video.Width
UI.Resources[GetResourceIdByName("silver")].IconY = Video.Height

UI.Resources[GetResourceIdByName("copper")].G = CGraphic:New("ui/copper.png", 14, 14)
UI.Resources[GetResourceIdByName("copper")].IconFrame = 0
UI.Resources[GetResourceIdByName("copper")].IconX = Video.Width
UI.Resources[GetResourceIdByName("copper")].IconY = Video.Height

UI.Resources[GetResourceIdByName("labor")].G = CGraphic:New("ui/labor.png", 14, 14)
UI.Resources[GetResourceIdByName("labor")].IconFrame = 0
UI.Resources[GetResourceIdByName("labor")].IconX = Video.Width
UI.Resources[GetResourceIdByName("labor")].IconY = Video.Height

UI.Resources[GetResourceIdByName("research")].G = CGraphic:New("ui/research.png", 14, 14)
UI.Resources[GetResourceIdByName("research")].IconFrame = 0
UI.Resources[GetResourceIdByName("research")].IconX = Video.Width
UI.Resources[GetResourceIdByName("research")].IconY = Video.Height

UI.Resources[GetResourceIdByName("prestige")].G = CGraphic:New("ui/prestige.png", 14, 14)
UI.Resources[GetResourceIdByName("prestige")].IconFrame = 0
UI.Resources[GetResourceIdByName("prestige")].IconX = Video.Width
UI.Resources[GetResourceIdByName("prestige")].IconY = Video.Height

UI.TimePanel.X = Video.Width * 50 / 100
UI.TimePanel.Y = 1

UI.MenuButton.X = 26
UI.MenuButton.Y = 1
UI.MenuButton.Text = "Menu (~<F10~>)"
UI.MenuButton:SetCallback(
	function()
		if (GrandStrategy and not GrandStrategyGamePaused and not GameRunning and GameResult == GameNoResult) then
			GrandStrategyGamePaused = true
			RunGrandStrategyGameMenu()
		elseif (Editor.Running == EditorNotRunning) then
			RunGameMenu()
		else
			RunInEditorMenu()
		end
	end
)

UI.NetworkDiplomacyButton.X = Video.Width - 99 - 26
UI.NetworkDiplomacyButton.Y = 1
UI.NetworkDiplomacyButton.Text = "Diplomacy"
UI.NetworkDiplomacyButton:SetCallback(function() RunDiplomacyMenu() end)

UI.GrandStrategyOKButton.X = Video.Width - 243 + 72
UI.GrandStrategyOKButton.Y = Video.Height - (15 * 2) - 8
UI.GrandStrategyOKButton.Text = "~!OK"
UI.GrandStrategyOKButton:SetCallback(
	function()
		if (GrandStrategyInterfaceState == "Ruler") then
			if (ProvinceHasBuildingClass(SelectedProvince.Name, "stronghold")) then
				GrandStrategyInterfaceState = "stronghold"
			else
				GrandStrategyInterfaceState = "town-hall"
			end
		else
			GrandStrategyInterfaceState = "Province"
		end
		DrawGrandStrategyInterface()
	end
)

UI.GrandStrategyEndTurnButton.X = Video.Width - 243 + 72
UI.GrandStrategyEndTurnButton.Y = Video.Height - (15 * 1) - 8
UI.GrandStrategyEndTurnButton.Text = "~!End Turn"
UI.GrandStrategyEndTurnButton:SetCallback(
	function()
		EndTurn()
	end
)

UI.GrandStrategyShowHeroesButton.X = Video.Width - 243 + 72
UI.GrandStrategyShowHeroesButton.Y = Video.Height - (15 * 2) - 8
UI.GrandStrategyShowHeroesButton.Text = "Show ~!Heroes"
UI.GrandStrategyShowHeroesButton:SetCallback(
	function()
		GrandStrategyInterfaceState = "Heroes"
		DrawGrandStrategyInterface()
	end
)

UI.GrandStrategyShowRulerButton.X = Video.Width - 243 + 72
UI.GrandStrategyShowRulerButton.Y = Video.Height - (15 * 3) - 8
UI.GrandStrategyShowRulerButton.Text = "Show ~!Ruler"
UI.GrandStrategyShowRulerButton:SetCallback(
	function()
		GrandStrategyInterfaceState = "Ruler"
		DrawGrandStrategyInterface()
	end
)

Load("scripts/civilizations/basque/ui.lua")
Load("scripts/civilizations/celt/ui.lua")
Load("scripts/civilizations/dwarf/ui.lua")
Load("scripts/civilizations/elf/ui.lua")
Load("scripts/civilizations/etruscan/ui.lua")
Load("scripts/civilizations/germanic/ui.lua")
Load("scripts/civilizations/gnome/ui.lua")
Load("scripts/civilizations/goblin/ui.lua")
Load("scripts/civilizations/goth/ui.lua")
Load("scripts/civilizations/greek/ui.lua")
Load("scripts/civilizations/illyrian/ui.lua")
Load("scripts/civilizations/kobold/ui.lua")
Load("scripts/civilizations/latin/ui.lua")
Load("scripts/civilizations/minoan/ui.lua")
Load("scripts/civilizations/norse/ui.lua")
Load("scripts/civilizations/persian/ui.lua")
Load("scripts/civilizations/phoenician/ui.lua")
Load("scripts/civilizations/phrygian/ui.lua")
Load("scripts/civilizations/slav/ui.lua")
Load("scripts/civilizations/teuton/ui.lua")
Load("scripts/civilizations/thracian/ui.lua")
Load("scripts/civilizations/troll/ui.lua")

UI.GrandStrategyOKButton.Style = UI.MenuButton.Style
UI.GrandStrategyEndTurnButton.Style = UI.MenuButton.Style
UI.GrandStrategyShowHeroesButton.Style = UI.MenuButton.Style
UI.GrandStrategyShowRulerButton.Style = UI.MenuButton.Style



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
		More = { "Text", {Text = Concat("XP: ", String(ActiveUnitVar("Xp")), "/", String(ActiveUnitVar("XPRequired"))), Font = "small"}}
    },
	{ Pos = {70, 67}, Condition = {ShowOpponent = false, HideNeutral = true, organic = "only", Mana = "only"},
		More = {"LifeBar", {Variable = "Xp", Height = 4, Width = 50}}
	},
	{ Pos = {67, 72}, Condition = {ShowOpponent = false, HideNeutral = true, organic = "only", Mana = "only"},
		More = { "Text", {Text = Concat("XP: ", String(ActiveUnitVar("Xp")), "/", String(ActiveUnitVar("XPRequired"))), Font = "small"}}
    },
	--[[
	{ Pos = {35, 61}, Condition = {ShowOpponent = false, HideNeutral = true},
		More = {"FormattedText2", {
			Font = "small", Variable = "HitPoints", Format = "%d/%d",
			Component1 = "Value", Component2 = "Max", Centered = true}}
	},
	--]]

	{ Pos = {170, 26}, Condition = {ShowOpponent = true, Affixed = "false"}, More = {"Text", {Text = Line(1, UnitName("Active"), 96, "game"), Centered = true}} },
	{ Pos = {170, 37}, Condition = {ShowOpponent = true, Affixed = "false"}, More = {"Text", {Text = Line(2, UnitName("Active"), 96, "game"), Centered = true}} },
	{ Pos = {170, 48}, Condition = {ShowOpponent = true, Affixed = "false"}, More = {"Text", {Text = Line(3, UnitName("Active"), 96, "game"), Centered = true}} },

	{ Pos = {170, 26}, Condition = {ShowOpponent = true, Affixed = "only", Unique = "false"}, TextColor = "light-blue", More = {"Text", {Text = Line(1, UnitName("Active"), 96, "game"), Centered = true}} },
	{ Pos = {170, 37}, Condition = {ShowOpponent = true, Affixed = "only", Unique = "false"}, TextColor = "light-blue", More = {"Text", {Text = Line(2, UnitName("Active"), 96, "game"), Centered = true}} },
	{ Pos = {170, 48}, Condition = {ShowOpponent = true, Affixed = "only", Unique = "false"}, TextColor = "light-blue", More = {"Text", {Text = Line(3, UnitName("Active"), 96, "game"), Centered = true}} },
	{ Pos = {170, 59}, Condition = {ShowOpponent = true, Affixed = "only", Unique = "false"}, TextColor = "light-blue", More = {"Text", {Text = Line(4, UnitName("Active"), 96, "game"), Centered = true}} },

	{ Pos = {170, 26}, Condition = {ShowOpponent = true, Unique = "only"}, TextColor = "fire", More = {"Text", {Text = Line(1, UnitName("Active"), 96, "game"), Centered = true}} },
	{ Pos = {170, 37}, Condition = {ShowOpponent = true, Unique = "only"}, TextColor = "fire", More = {"Text", {Text = Line(2, UnitName("Active"), 96, "game"), Centered = true}} },
	{ Pos = {170, 48}, Condition = {ShowOpponent = true, Unique = "only"}, TextColor = "fire", More = {"Text", {Text = Line(3, UnitName("Active"), 96, "game"), Centered = true}} },

	-- unit type name, if the unit has a personal name
	{ Pos = {170, 61}, Condition = {ShowOpponent = true}, More = {"Text", {Text = Line(1, UnitTypeName("Active"), 96, "game"), Centered = true}} },
	{ Pos = {170, 72}, Condition = {ShowOpponent = true}, More = {"Text", {Text = Line(2, UnitTypeName("Active"), 96, "game"), Centered = true}} },
	{ Pos = {170, 83}, Condition = {ShowOpponent = true}, More = {"Text", {Text = Line(3, UnitTypeName("Active"), 96, "game"), Centered = true}} },
	
	-- Resource Left
	{ Pos = {9, 103}, Condition = {ShowOpponent = false, GiveResource = "only", Build = "false"},
		More = {"Text", {Text = Concat(function() return CapitalizeString(GetUnitVariable(-1, "GiveResourceTypeName")) end, " Left:")}}
	},
	{ Pos = {115, 103}, Condition = {ShowOpponent = false, GiveResource = "only", Build = "false"},
		More = {"Text", {Text = String(ActiveUnitVar("GiveResource", "Value"))}}
	},

	-- Resource Replenishment
	{ Pos = {9, 116}, Condition = {ShowOpponent = false, GiveResource = "only", Replenishment = "only", Build = "false"},
		More = {"Text", {Text = "Replenishment:"}}
	},
	{ Pos = {115, 116}, Condition = {ShowOpponent = false, GiveResource = "only", Replenishment = "only", Build = "false"},
		More = {"Text", {Text = String(ActiveUnitVar("GiveResource", "Increase"))}}
	},

	-- Time Efficiency Bonus
	{ Pos = {9, 130}, Condition = {ShowOpponent = false, TimeEfficiencyBonus = "only", GiveResource = "only", Build = "false"},
		More = {"Text", {Text = "Time Eff.:"}}
	},
	{ Pos = {115, 130}, Condition = {ShowOpponent = false, TimeEfficiencyBonus = "only", GiveResource = "only", Build = "false"},
		More = {"Text", {Text = Concat(
			If(GreaterThan(ActiveUnitVar("TimeEfficiencyBonus", "Value"), 0), "+", ""),
			Concat(String(ActiveUnitVar("TimeEfficiencyBonus", "Value")), "%")
		)}}
	},

	-- Time Efficiency Bonus
	{ Pos = {9, 103}, Condition = {ShowOpponent = false, TimeEfficiencyBonus = "only", GiveResource = "false", Supply = "false", LumberImprove = "false", AttackRange = "false", Build = "false", Training = "false", UpgradeTo = "false", Research = "false"},
		More = {"Text", {Text = "Time Eff.:"}}
	},
	{ Pos = {115, 103}, Condition = {ShowOpponent = false, TimeEfficiencyBonus = "only", GiveResource = "false", Supply = "false", LumberImprove = "false", AttackRange = "false", Build = "false", Training = "false", UpgradeTo = "false", Research = "false"},
		More = {"Text", {Text = Concat(
			If(GreaterThan(ActiveUnitVar("TimeEfficiencyBonus", "Value"), 0), "+", ""),
			Concat(String(ActiveUnitVar("TimeEfficiencyBonus", "Value")), "%")
		)}}
	},
	
	-- Time Efficiency Bonus
	{ Pos = {9, 158}, Condition = {ShowOpponent = false, TimeEfficiencyBonus = "only", GiveResource = "false", LumberImprove = "only", Build = "false", Training = "false", UpgradeTo = "false", Research = "false"},
		More = {"Text", {Text = "Time Eff.:"}}
	},
	{ Pos = {115, 158}, Condition = {ShowOpponent = false, TimeEfficiencyBonus = "only", GiveResource = "false", LumberImprove = "only", Build = "false", Training = "false", UpgradeTo = "false", Research = "false"},
		More = {"Text", {Text = Concat(
			If(GreaterThan(ActiveUnitVar("TimeEfficiencyBonus", "Value"), 0), "+", ""),
			Concat(String(ActiveUnitVar("TimeEfficiencyBonus", "Value")), "%")
		)}}
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
	{ Pos = {115, 116}, HighlightColor = "yellow", More = { "Text", {Text = Concat("100", 
										If(GreaterThan(PlayerData(ActiveUnitVar("Player", "Value"), "Incomes", "gold"), 100),
										InverseVideo(Concat("+", String(Sub(PlayerData(ActiveUnitVar("Player", "Value"), "Incomes", "gold"), 100)))),
										""))}}
    },
	{ Pos = {9, 130}, Condition = {LumberImprove = "only"}, More = {"Text", {Text = "Lumber:"}}},
	{ Pos = {115, 130}, Condition = {LumberImprove = "only"}, HighlightColor = "yellow", More = { "Text", {Text = Concat("100",
										If(GreaterThan(PlayerData(ActiveUnitVar("Player", "Value"), "Incomes", "lumber"), 100),
										InverseVideo(Concat("+", String(Sub(PlayerData(ActiveUnitVar("Player", "Value"), "Incomes", "lumber"), 100)))),
										"" ))}}
    },
	{ Pos = {9, 144}, Condition = {StoneImprove = "only"}, More = { "Text", {Text = "Stone:"}}},
	{ Pos = {115, 144}, Condition = {StoneImprove = "only"}, HighlightColor = "yellow", More = { "Text", {Text = Concat("100", 
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
	{ Pos = {115, 116}, Condition = {LumberImprove = "only"}, HighlightColor = "yellow", More = { "Text", {Text = Concat("100",
										If(GreaterThan(PlayerData(ActiveUnitVar("Player", "Value"), "Incomes", "lumber"), 100),
										InverseVideo(Concat("+", String(Sub(PlayerData(ActiveUnitVar("Player", "Value"), "Incomes", "lumber"), 100)))),
										"" ))}}
    },
	{ Pos = {9, 116}, Condition = {StoneImprove = "only"}, More = { "Text", {Text = "Stone:"}}},
	{ Pos = {115, 116}, Condition = {StoneImprove = "only"}, HighlightColor = "yellow", More = { "Text", {Text = Concat("100", 
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
	{ Pos = {9, 144}, Condition = {AttackRange = "only", SaveCargo = "false", BasicDamage = "only"}, -- SaveCargo is used here as a proxy for knowing whether the unit is a transporter or not (transporters don't have their own range, with their range being used as a range bonus for the units in them instead)
		More = {"Text", {Text = "Range:"}}
	},
	{ Pos = {76, 144}, Condition = {AttackRange = "only", SaveCargo = "false", BasicDamage = "only"},
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
		HotSpot = { 8,	8},
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
		HotSpot = {20, 2},
		Size = {32, 24}})
	DefineCursor({
		Name = "cursor-arrow-n",
		Race = "any",
		File = "ui/cursors/arrow_N.png",
		HotSpot = {12, 2},
		Size = {24, 32}})
	DefineCursor({
		Name = "cursor-arrow-nw",
		Race = "any",
		File = "ui/cursors/arrow_NW.png",
		HotSpot = { 2, 2},
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
		
	DefineCursor({
		Name = "cursor-point",
		Race = "any",
		File = "dwarf/ui/cursors/dwarven_gauntlet.png",
		HotSpot = { 3, 2},
		Size = {28, 32}})
	DefineCursor({
		Name = "cursor-green-hair",
		Race = "any",
		File = "ui/cursors/green.png",
		HotSpot = {15, 15},
		Size = {32, 32}})
	DefineCursor({
		Name = "cursor-yellow-hair",
		Race = "any",
		File = "ui/cursors/yellow.png",
		HotSpot = {15, 15},
		Size = {32, 32}})
	DefineCursor({
		Name = "cursor-red-hair",
		Race = "any",
		File = "ui/cursors/red.png",
		HotSpot = {15, 15},
		Size = {32, 32}})

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
				{ 	HighlightColor = "yellow",
					More = {"ButtonInfo", {InfoType = "Hint", Font = PopupFont}}
				}, 
				-- Description
				{ 	Margin = {1, 1}, Condition = {HasDescription = true},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				}, 
				{ 	Condition = {HasDescription = true}, HighlightColor = "yellow",
					More = {"ButtonInfo", {InfoType = "Description", MaxWidth = Video.Width / 5, Font = wyr.preferences.PopupDescriptionFont}}
				}, 
				-- Move  hint
				{ 	Margin = {1, 1}, Condition = {ButtonAction = "move", Speed = "only"}, -- speed as a proxy for not being a building
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {ButtonAction = "move", Speed = "only"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = _("~<ALT~>-click to defend a unit"), MaxWidth = Video.Width / 5, Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {ButtonAction = "move", Speed = "only"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = _("~<SHIFT~>-click to make waypoints"), MaxWidth = Video.Width / 5, Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {ButtonAction = "move", Speed = "only"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = _("~<CTRL~>-click to stand ground after moving"), MaxWidth = Video.Width / 5, Font = wyr.preferences.PopupDescriptionFont}}
				},
				-- Attack hint
				{ 	Margin = {1, 1}, Condition = {ButtonAction = "attack"},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {ButtonAction = "attack"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = _("Click on an empty space to attack-move"), MaxWidth = Video.Width / 5, Font = wyr.preferences.PopupDescriptionFont}}
				},
				-- Repair hint
				{ 	Margin = {1, 1}, Condition = {ButtonAction = "repair"},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {ButtonAction = "repair"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = _("~<CTRL~>-click on the button toggles auto-repair of damaged buildings"), MaxWidth = Video.Width / 5, Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Margin = {1, 1}, Condition = {ButtonAction = "cast-spell", AutoCast = "only"},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {ButtonAction = "cast-spell", AutoCast = "only"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = _("~<CTRL~>-click on the button toggles autocast"), MaxWidth = Video.Width / 5, Font = wyr.preferences.PopupDescriptionFont}}
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
				{	HighlightColor = "yellow",
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
				{ 	Condition = {AttackRange = "only", AttackFromTransporter = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Range: "), Variable = "AttackRange", Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {TimeEfficiencyBonus = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = Concat(
							Concat(
								Concat(
									_("Time Efficiency: "),
									If(GreaterThan(TypeVar("TimeEfficiencyBonus", "Value"), 0), "+", "")
								),
								String(TypeVar("TimeEfficiencyBonus", "Value"))
							),
							"%"
						),
						Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {FireResistance = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Fire Resistance: "), String(TypeVar("FireResistance","Value")), "%"), Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {AttackFromTransporter = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Garrison: "), String(TypeVar("Transport", "Max"))), Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {AttackRange = "only", AttackFromTransporter = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Range Bonus: +"), Variable = "AttackRange", Font = wyr.preferences.PopupDescriptionFont}}
				},
				-- Description
				{ 	Margin = {1, 1}, Condition = {HasDescription = true}, 
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				}, 
				{ 	Condition = {HasDescription = true}, HighlightColor = "yellow",
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
				{	HighlightColor = "yellow",
					More = {"ButtonInfo", {InfoType = "Hint", Font = PopupFont}}
				}, 
				{ 	Margin = {1, 1},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				}, 
				{	Condition = {ButtonAction = "train-unit"},
					More = {"Costs", {Font = PopupFont}}, HighlightColor = "yellow",
				}, 
				{ 	Condition = {ButtonAction = "train-unit"}, Margin = {1, 1},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {Mercenary = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Class: "), TypeClass("Type")), Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {Mercenary = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Troop Quantity: "), String(TypeTrainQuantity("Type"))), Font = wyr.preferences.PopupDescriptionFont}}
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
				{ 	Condition = {AttackRange = "only", BasicDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Range: "), Variable = "AttackRange", Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {BasicDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(
						_("Damage: "),
						String(
							Div(
								Add(
									Add(
										Add(
											TypeVar("PiercingDamage","Value"), TypeVar("BasicDamage","Value")
										),
										Add(
											TypeVar("FireDamage","Value"), TypeVar("ColdDamage","Value")
										)
									),
									Add(
										Add(
											TypeVar("ArcaneDamage","Value"), TypeVar("LightningDamage","Value")
										),
										Add(
											Add(
												TypeVar("AirDamage","Value"), TypeVar("EarthDamage","Value")
											),
											TypeVar("WaterDamage","Value")
										)
									)
								),
								2
							)
						),
						"-",
						String(
							Add(
								Add(
									Add(
										TypeVar("PiercingDamage","Value"), TypeVar("BasicDamage","Value")
									),
									Add(
										TypeVar("FireDamage","Value"), TypeVar("ColdDamage","Value")
									)
								),
								Add(
									Add(
										TypeVar("ArcaneDamage","Value"), TypeVar("LightningDamage","Value")
									),
									Add(
										Add(
											TypeVar("AirDamage","Value"), TypeVar("EarthDamage","Value")
										),
										TypeVar("WaterDamage","Value")
									)
								)
							)
						)
					), Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {Accuracy = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Accuracy: "), Variable = "Accuracy", Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {Evasion = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Evasion: "), Variable = "Evasion", Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {Backstab = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Backstab Bonus: "), String(TypeVar("Backstab","Value")), "%"), Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {BonusAgainstMounted = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Bonus vs. Mounted: "), String(TypeVar("BonusAgainstMounted","Value")), "%"), Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {BonusAgainstAir = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Bonus vs. Air: "), String(TypeVar("BonusAgainstAir","Value")), "%"), Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {BonusAgainstGiants = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Bonus vs. Giants: "), String(TypeVar("BonusAgainstGiants","Value")), "%"), Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {BonusAgainstDragons = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Bonus vs. Dragons: "), String(TypeVar("BonusAgainstDragons","Value")), "%"), Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {BonusAgainstBuildings = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Bonus vs. Buildings: "), String(TypeVar("BonusAgainstBuildings","Value")), "%"), Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {FireResistance = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Fire Resistance: "), String(TypeVar("FireResistance","Value")), "%"), Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {AttackFromTransporter = "only", BasicDamage = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Transport: "), String(TypeVar("Transport", "Max"))), Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {AttackRange = "only", AttackFromTransporter = "only", BasicDamage = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Range Bonus: +"), Variable = "AttackRange", Font = wyr.preferences.PopupDescriptionFont}}
				},
				-- Description
				{ 	Margin = {1, 1}, Condition = {HasDescription = true}, 
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				}, 
				{ 	Condition = {HasDescription = true}, HighlightColor = "yellow",
					More = {"ButtonInfo", {InfoType = "Description", MaxWidth = Video.Width / 5, Font = wyr.preferences.PopupDescriptionFont}}
				},
		}	
	})

	DefinePopup({
		Ident = "popup-item",
		BackgroundColor = PopupBackgroundColor,
		BorderColor = PopupBorderColor,
		MinWidth = 128,
		DefaultFont = wyr.preferences.PopupDescriptionFont,
		Contents = {
				{	HighlightColor = "yellow",
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
				{ 	Condition = {HitPointBonus = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Hit Points: "), Variable = "HitPointBonus", Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {BasicDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Damage: "), Variable = "BasicDamage", Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {FireDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Fire Damage: "), Variable = "FireDamage", Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {ColdDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Cold Damage: "), Variable = "ColdDamage", Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {ArcaneDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Arcane Damage: "), Variable = "ArcaneDamage", Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {LightningDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Lightning Damage: "), Variable = "LightningDamage", Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {AirDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Air Damage: "), Variable = "AirDamage", Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {EarthDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Earth Damage: "), Variable = "EarthDamage", Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {WaterDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Water Damage: "), Variable = "WaterDamage", Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {ThornsDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Thorns Damage: "), Variable = "ThornsDamage", Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {Backstab = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Backstab Bonus: +"), String(TypeVar("Backstab","Value")), "%"), Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {Accuracy = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Accuracy: "), Variable = "Accuracy", Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {Armor = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Armor: "), Variable = "Armor", Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {Evasion = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Evasion: "), Variable = "Evasion", Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {FireResistance = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Fire Resistance: +"), String(TypeVar("FireResistance","Value")), "%"), Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {ColdResistance = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Cold Resistance: +"), String(TypeVar("ColdResistance","Value")), "%"), Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {ArcaneResistance = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Arcane Resistance: +"), String(TypeVar("ArcaneResistance","Value")), "%"), Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {LightningResistance = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Lightning Resistance: +"), String(TypeVar("LightningResistance","Value")), "%"), Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {AirResistance = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Air Resistance: +"), String(TypeVar("AirResistance","Value")), "%"), Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {EarthResistance = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Earth Resistance: +"), String(TypeVar("EarthResistance","Value")), "%"), Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {WaterResistance = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Water Resistance: +"), String(TypeVar("WaterResistance","Value")), "%"), Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {HackResistance = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Hack Resistance: +"), String(TypeVar("HackResistance","Value")), "%"), Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {PierceResistance = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Pierce Resistance: +"), String(TypeVar("PierceResistance","Value")), "%"), Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {BluntResistance = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Blunt Resistance: +"), String(TypeVar("BluntResistance","Value")), "%"), Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {Speed = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Speed: "), Variable = "Speed", Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {SightRange = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Sight: "), Variable = "SightRange", Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {HitPointHealing = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Healing: "), Variable = "HitPointHealing", Font = wyr.preferences.PopupDescriptionFont}}
				},
				-- Description
				{ 	Margin = {1, 1}, Condition = {HasDescription = true}, 
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				}, 
				{ 	Condition = {HasDescription = true}, HighlightColor = "yellow",
					More = {"ButtonInfo", {InfoType = "Description", MaxWidth = Video.Width / 5, Font = wyr.preferences.PopupDescriptionFont}}
				},
		}	
	})

	DefinePopup({
		Ident = "popup-item-inventory",
		BackgroundColor = PopupBackgroundColor,
		BorderColor = PopupBorderColor,
		MinWidth = 128,
		DefaultFont = wyr.preferences.PopupDescriptionFont,
		Contents = {
				{	Condition = {Affixed = "false", Unique = "false"}, HighlightColor = "yellow",
					More = {"ButtonInfo", {InfoType = "Hint", Font = PopupFont}}
				}, 
				{	Condition = {Affixed = "only", Unique = "false"}, TextColor = "light-blue", HighlightColor = "yellow",
					More = {"ButtonInfo", {InfoType = "Hint", Font = PopupFont}}
				}, 
				{	Condition = {Unique = "only"}, TextColor = "fire", HighlightColor = "yellow",
					More = {"ButtonInfo", {InfoType = "Hint", Font = PopupFont}}
				}, 
				{ 	Margin = {1, 1},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				}, 
				{ 	Condition = {Equipped = "false", Equippable = "only"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = _("Right-click to equip"), MaxWidth = Video.Width / 5, Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {Equipped = "only"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = _("Right-click to de-equip"), MaxWidth = Video.Width / 5, Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {Consumable = "only", CanUse = "only", Work = "false"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = _("Right-click to use"), MaxWidth = Video.Width / 5, Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {Work = "only", CanUse = "only", ReadWork = "false"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = _("Right-click to read"), MaxWidth = Video.Width / 5, Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {Work = "only", ReadWork = "only"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = _("Already read"), MaxWidth = Video.Width / 5, Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {Bound = "false"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = _("Left-click to drop"), MaxWidth = Video.Width / 5, Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {Bound = "only"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = _("Cannot be dropped"), MaxWidth = Video.Width / 5, Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {Weapon = "only", Equippable = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = _("Replaces weapon technology bonuses when equipped"), MaxWidth = Video.Width / 5, Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {Shield = "only", Equippable = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = _("Replaces shield technology bonuses when equipped"), MaxWidth = Video.Width / 5, Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {Arrows = "only", Equippable = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = _("Replaces arrow technology bonuses when equipped"), MaxWidth = Video.Width / 5, Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Margin = {1, 1},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {Unique = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Type: "), TypeName("Type")), Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Class: "), TypeClass("Type")), Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {Unique = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = _("Unique Item"), MaxWidth = Video.Width / 5, Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {Work = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = _("Literary Work"), MaxWidth = Video.Width / 5, Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {Spell = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = Concat(_("Casts "), UnitSpell("Unit")), MaxWidth = Video.Width / 5, Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {HitPointBonus = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Hit Points: "), Variable = "HitPointBonus", Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {Regeneration = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = Concat(
							Concat(
								_("Regeneration: "),
								If(GreaterThan(UnitVar("HitPointBonus", "IncreaseChange"), 0), "+", "")
							),
							String(UnitVar("HitPointBonus", "IncreaseChange"))
						),
						Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {Mana = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Mana: "), Variable = "Mana", Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {BasicDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(
						Concat(
							_("Damage: "),
							If(GreaterThan(Add(UnitVar("BasicDamage", "Change"), UnitVar("PiercingDamage", "Change")), 0), "+", "")
						),
						String(Add(UnitVar("BasicDamage", "Change"), UnitVar("PiercingDamage", "Change")))
					),
					Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {FireDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Fire Damage: "), Variable = "FireDamage", Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {ColdDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Cold Damage: "), Variable = "ColdDamage", Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {ArcaneDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Arcane Damage: "), Variable = "ArcaneDamage", Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {LightningDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Lightning Damage: "), Variable = "LightningDamage", Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {AirDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Air Damage: "), Variable = "AirDamage", Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {EarthDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Earth Damage: "), Variable = "EarthDamage", Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {WaterDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Water Damage: "), Variable = "WaterDamage", Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {ThornsDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Thorns Damage: "), Variable = "ThornsDamage", Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {Backstab = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = Concat(
							Concat(
								Concat(
									_("Backstab Bonus: "),
									If(GreaterThan(UnitVar("Backstab", "Change"), 0), "+", "")
								),
								String(UnitVar("Backstab", "Change"))
							),
							"%"
						),
						Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {BonusAgainstMounted = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = Concat(
							Concat(
								Concat(
									_("Bonus vs. Mounted: "),
									If(GreaterThan(UnitVar("BonusAgainstMounted", "Change"), 0), "+", "")
								),
								String(UnitVar("BonusAgainstMounted", "Change"))
							),
							"%"
						),
						Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {BonusAgainstAir = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = Concat(
							Concat(
								Concat(
									_("Bonus vs. Air: "),
									If(GreaterThan(UnitVar("BonusAgainstAir", "Change"), 0), "+", "")
								),
								String(UnitVar("BonusAgainstAir", "Change"))
							),
							"%"
						),
						Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {BonusAgainstGiants = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = Concat(
							Concat(
								Concat(
									_("Bonus vs. Giants: "),
									If(GreaterThan(UnitVar("BonusAgainstGiants", "Change"), 0), "+", "")
								),
								String(UnitVar("BonusAgainstGiants", "Change"))
							),
							"%"
						),
						Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {BonusAgainstDragons = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = Concat(
							Concat(
								Concat(
									_("Bonus vs. Dragons: "),
									If(GreaterThan(UnitVar("BonusAgainstDragons", "Change"), 0), "+", "")
								),
								String(UnitVar("BonusAgainstDragons", "Change"))
							),
							"%"
						),
						Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {BonusAgainstBuildings = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = Concat(
							Concat(
								Concat(
									_("Bonus vs. Buildings: "),
									If(GreaterThan(UnitVar("BonusAgainstBuildings", "Change"), 0), "+", "")
								),
								String(UnitVar("BonusAgainstBuildings", "Change"))
							),
							"%"
						),
						Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {Accuracy = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Accuracy: "), Variable = "Accuracy", Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {Armor = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Armor: "), Variable = "Armor", Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {Evasion = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Evasion: "), Variable = "Evasion", Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {FireResistance = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = Concat(
							Concat(
								Concat(
									_("Fire Resistance: "),
									If(GreaterThan(UnitVar("FireResistance", "Change"), 0), "+", "")
								),
								String(UnitVar("FireResistance", "Change"))
							),
							"%"
						),
						Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {ColdResistance = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = Concat(
							Concat(
								Concat(
									_("Cold Resistance: "),
									If(GreaterThan(UnitVar("ColdResistance", "Change"), 0), "+", "")
								),
								String(UnitVar("ColdResistance", "Change"))
							),
							"%"
						),
						Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {ArcaneResistance = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = Concat(
							Concat(
								Concat(
									_("Arcane Resistance: "),
									If(GreaterThan(UnitVar("ArcaneResistance", "Change"), 0), "+", "")
								),
								String(UnitVar("ArcaneResistance", "Change"))
							),
							"%"
						),
						Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {LightningResistance = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = Concat(
							Concat(
								Concat(
									_("Lightning Resistance: "),
									If(GreaterThan(UnitVar("LightningResistance", "Change"), 0), "+", "")
								),
								String(UnitVar("LightningResistance", "Change"))
							),
							"%"
						),
						Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {AirResistance = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = Concat(
							Concat(
								Concat(
									_("Air Resistance: "),
									If(GreaterThan(UnitVar("AirResistance", "Change"), 0), "+", "")
								),
								String(UnitVar("AirResistance", "Change"))
							),
							"%"
						),
						Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {EarthResistance = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = Concat(
							Concat(
								Concat(
									_("Earth Resistance: "),
									If(GreaterThan(UnitVar("EarthResistance", "Change"), 0), "+", "")
								),
								String(UnitVar("EarthResistance", "Change"))
							),
							"%"
						),
						Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {WaterResistance = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = Concat(
							Concat(
								Concat(
									_("Water Resistance: "),
									If(GreaterThan(UnitVar("WaterResistance", "Change"), 0), "+", "")
								),
								String(UnitVar("WaterResistance", "Change"))
							),
							"%"
						),
						Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {HackResistance = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = Concat(
							Concat(
								Concat(
									_("Hack Resistance: "),
									If(GreaterThan(UnitVar("HackResistance", "Change"), 0), "+", "")
								),
								String(UnitVar("HackResistance", "Change"))
							),
							"%"
						),
						Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {PierceResistance = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = Concat(
							Concat(
								Concat(
									_("Pierce Resistance: "),
									If(GreaterThan(UnitVar("PierceResistance", "Change"), 0), "+", "")
								),
								String(UnitVar("PierceResistance", "Change"))
							),
							"%"
						),
						Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {BluntResistance = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = Concat(
							Concat(
								Concat(
									_("Blunt Resistance: "),
									If(GreaterThan(UnitVar("BluntResistance", "Change"), 0), "+", "")
								),
								String(UnitVar("BluntResistance", "Change"))
							),
							"%"
						),
						Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {Speed = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Speed: "), Variable = "Speed", Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {SightRange = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Sight: "), Variable = "SightRange", Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {HitPointHealing = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Healing: "), Variable = "HitPointHealing", Font = wyr.preferences.PopupDescriptionFont}}
				},
				-- Description
				{ 	Margin = {1, 1}, Condition = {HasDescription = true}, 
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				}, 
				{ 	Condition = {HasDescription = true}, HighlightColor = "yellow",
					More = {"ButtonInfo", {InfoType = "Description", MaxWidth = Video.Width / 5, Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Margin = {1, 1}, Condition = {Unique = "only", Quote = true},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				}, 
				{ 	Margin = {1, 1}, Condition = {Work = "only", Quote = true},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				}, 
				{ 	Condition = {Unique = "only", Quote = true}, HighlightColor = "yellow",
					More = {"Text", {Text = UnitQuote("Unit"), MaxWidth = Video.Width / 5, Font = wyr.preferences.PopupDescriptionFont}}
				},
				{ 	Condition = {Work = "only", Quote = true}, HighlightColor = "yellow",
					More = {"Text", {Text = UnitQuote("Unit"), MaxWidth = Video.Width / 5, Font = wyr.preferences.PopupDescriptionFont}}
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
				{	HighlightColor = "yellow",
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
				{ 	Condition = {HasDescription = true}, HighlightColor = "yellow",
					More = {"ButtonInfo", {InfoType = "Description", MaxWidth = Video.Width / 5, Font = wyr.preferences.PopupDescriptionFont}}
				},
				-- AutoCast Tooltip
				{ 	Margin = {1, 1}, Condition = {ButtonAction = "cast-spell", AutoCast = "only"},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {ButtonAction = "cast-spell", AutoCast = "only"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = _("~<CTRL~>-click on the button toggles autocast"), MaxWidth = Video.Width / 5, Font = wyr.preferences.PopupDescriptionFont}}
				}
		}	
	})
end

ui_loaded_first_time = true
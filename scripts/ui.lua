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
--      (c) Copyright 2000-2021 by Lutz Sammer, Jimmy Salmon and Andrettin
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
		return background_image
	end

	Load("scripts/widgets.lua")

	--
	--  Define Decorations.
	--
	if (CanAccessFile("ui/health2.png")) then
		DefineSprites({Name = "sprite-health", File = "ui/health2.png", Offset = {0, -4}, Size = {31, 4}})

		DefineDecorations({Index = "HitPoints", ShowWhenNull = true, HideNeutral = false, CenterX = true, ShowOpponent = true,
			OffsetPercent = {50, 100}, Method = {"sprite", {"sprite-health"}}})
--		DefineDecorations({Index = "Build", ShowWhenNull = true, HideNeutral = true, CenterX = true, OffsetPercent = {50, 100}, Method = {"sprite", {"sprite-health"}}})
	end

	if (CanAccessFile("ui/mana2.png")) then
		DefineSprites({Name = "sprite-mana", File = "ui/mana2.png", Offset = {0, -1}, Size = {31, 4}})

		DefineDecorations({Index = "Mana", ShowWhenNull = true, HideNeutral = true, CenterX = true, ShowIfCanCastAnySpell = true, OffsetPercent = {50, 100}, Method = {"sprite", {"sprite-mana"}}})
		DefineDecorations({Index = "Transport", HideNeutral = true, CenterX = true, OffsetPercent = {50, 100}, Method = {"sprite", {"sprite-mana"}}})
		DefineDecorations({Index = "Research", ShowWhenNull = true, HideNeutral = true, CenterX = true, OffsetPercent = {50, 100}, Method = {"sprite", {"sprite-mana"}}})
		DefineDecorations({Index = "Training", ShowWhenNull = true, HideNeutral = true, CenterX = true, OffsetPercent = {50, 100}, Method = {"sprite", {"sprite-mana"}}})
		DefineDecorations({Index = "UpgradeTo", ShowWhenNull = true, HideNeutral = true, CenterX = true, OffsetPercent = {50, 100}, Method = {"sprite", {"sprite-mana"}}})
		DefineDecorations({Index = "GiveResource", MinValue = 1000, ResourceBar = true, ShowWhenMax = true, HideAllied = false, HideNeutral = false, HideSelf = false, CenterX = true, OffsetPercent = {50, 100}, Method = {"sprite", {"sprite-mana"}}})
		DefineDecorations({Index = "CarryResource", HideNeutral = true, CenterX = true, OffsetPercent = {50, 100}, Method = {"sprite", {"sprite-mana"}}})
	end
	DefineSprites({Name = "sprite-leadership", File = "ui/status_effects/leadership.png", Offset = {1, 1}, Size = {16, 16}})
	DefineSprites({Name = "sprite-blessing", File = "ui/status_effects/blessing.png", Offset = {1, 1}, Size = {16, 16}})
	DefineSprites({Name = "sprite-inspire", File = "ui/status_effects/inspire.png", Offset = {1, 1}, Size = {16, 16}})
	DefineSprites({Name = "sprite-precision", File = "ui/status_effects/precision.png", Offset = {1, 1}, Size = {16, 16}})
	DefineSprites({Name = "sprite-slow", File = "ui/status_effects/slow.png", Offset = {1, 1}, Size = {16, 16}})
	DefineSprites({Name = "sprite-stun", File = "ui/status_effects/stun.png", Offset = {1, 1}, Size = {16, 16}})
	DefineSprites({Name = "sprite-bleeding", File = "ui/status_effects/bleeding.png", Offset = {1, 1}, Size = {16, 16}})
	DefineSprites({Name = "sprite-regeneration", File = "ui/status_effects/regeneration.png", Offset = {1, 1}, Size = {16, 16}})
	DefineSprites({Name = "sprite-barkskin", File = "ui/status_effects/barkskin.png", Offset = {1, 1}, Size = {16, 16}})
	DefineSprites({Name = "sprite-infusion", File = "ui/status_effects/infusion.png", Offset = {1, 1}, Size = {16, 16}})
	DefineSprites({Name = "sprite-terror", File = "ui/status_effects/terror.png", Offset = {1, 1}, Size = {16, 16}})
	DefineSprites({Name = "sprite-wither", File = "ui/status_effects/wither.png", Offset = {1, 1}, Size = {16, 16}})
	DefineSprites({Name = "sprite-dehydration", File = "ui/status_effects/dehydration.png", Offset = {1, 1}, Size = {16, 16}})
	DefineSprites({Name = "sprite-level-up", File = "ui/status_effects/level_up.png", Offset = {1, 1}, Size = {16, 16}})
	DefineSprites({Name = "sprite-hero", File = "ui/status_effects/star.png", Offset = {1, 1}, Size = {16, 16}})
	
	DefineDecorations({Index = "Hero", HeroSymbol = true, ShowAsStatusEffect = true, ShowOpponent = false, HideAllied = true, HideNeutral = true, ShowWhenMax = true, Method = {"static-sprite", {"sprite-hero", 0}}})
	DefineDecorations({Index = "LevelUp", ShowAsStatusEffect = true, ShowOpponent = false, HideAllied = true, HideNeutral = true, ShowWhenMax = true,
	  Method = {"static-sprite", {"sprite-level-up", 0}}})
	
	DefineDecorations({StatusEffect = "leadership", ShowOpponent = true, ShowWhenMax = true,
	  Method = {"static-sprite", {"sprite-leadership", 0}}})
	DefineDecorations({StatusEffect = "infusion", ShowOpponent = true, ShowWhenMax = true,
	  Method = {"static-sprite", {"sprite-infusion", 0}}})
	DefineDecorations({StatusEffect = "blessing", ShowOpponent = true, ShowWhenMax = true,
	  Method = {"static-sprite", {"sprite-blessing", 0}}})
	DefineDecorations({StatusEffect = "inspire", ShowOpponent = true, ShowWhenMax = true,
	  Method = {"static-sprite", {"sprite-inspire", 0}}})
	DefineDecorations({StatusEffect = "precision", ShowOpponent = true, ShowWhenMax = true,
	  Method = {"static-sprite", {"sprite-precision", 0}}})
	DefineDecorations({StatusEffect = "slow", ShowOpponent = true, ShowWhenMax = true,
	  Method = {"static-sprite", {"sprite-slow", 0}}})
	DefineDecorations({StatusEffect = "barkskin", ShowOpponent = true, ShowWhenMax = true,
	  Method = {"static-sprite", {"sprite-barkskin", 0}}})
	DefineDecorations({StatusEffect = "stun", ShowOpponent = true, ShowWhenMax = true,
	  Method = {"static-sprite", {"sprite-stun", 0}}})
	DefineDecorations({StatusEffect = "bleeding", ShowOpponent = true, ShowWhenMax = true,
	  Method = {"static-sprite", {"sprite-bleeding", 0}}})
	DefineDecorations({StatusEffect = "regeneration", ShowOpponent = true, ShowWhenMax = true,
	  Method = {"static-sprite", {"sprite-regeneration", 0}}})
	DefineDecorations({StatusEffect = "terror", ShowOpponent = true, ShowWhenMax = true,
	  Method = {"static-sprite", {"sprite-terror", 0}}})
	DefineDecorations({StatusEffect = "wither", ShowOpponent = true, ShowWhenMax = true,
	  Method = {"static-sprite", {"sprite-wither", 0}}})
	DefineDecorations({StatusEffect = "dehydration", ShowOpponent = true, ShowWhenMax = true,
	  Method = {"static-sprite", {"sprite-dehydration", 0}}})
end

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
				Add(
					ActiveUnitVar("ArcaneDamage"), ActiveUnitVar("LightningDamage")
				),
				ActiveUnitVar("ShadowDamage")
			),
			Add(
				Add(
					ActiveUnitVar("AirDamage"), ActiveUnitVar("EarthDamage")
				),
				Add(
					ActiveUnitVar("WaterDamage"), ActiveUnitVar("AcidDamage")
				)
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
			Add(
				ActiveUnitVar("ArcaneDamage"), ActiveUnitVar("LightningDamage")
			),
			ActiveUnitVar("ShadowDamage")
		),
		Add(
			Add(
				ActiveUnitVar("AirDamage"), ActiveUnitVar("EarthDamage")
			),
			Add(
				ActiveUnitVar("WaterDamage"), ActiveUnitVar("AcidDamage")
			)
		)
	)
)

CUserInterface:get().InfoPanel.X = 162 * get_scale_factor()
CUserInterface:get().InfoPanel.Y = Video.Height - 186 * get_scale_factor()

b = CUIButton:new()
b.X = 169 * get_scale_factor()
b.Y = Video.Height - 166 * get_scale_factor()
b.Style = FindButtonStyle("icon")
CUserInterface:get().SingleSelectedButton = b

CUserInterface:get().SelectedButtons:clear()

function AddSelectedButton(x, y)
	b = CUIButton:new_local()
	b.X = (162 + x) * get_scale_factor()
	b.Y = Video.Height + (-186 + y) * get_scale_factor()
	b.Style = FindButtonStyle("icon")
	CUserInterface:get().SelectedButtons:push_back(b)
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

CUserInterface:get().MaxSelectedFont = Fonts["game"]
CUserInterface:get().MaxSelectedTextX = 162 * get_scale_factor()
CUserInterface:get().MaxSelectedTextY = Video.Height + (-186 + 15) * get_scale_factor()

b = CUIButton:new()
b.X = (162 + 160) * get_scale_factor()
b.Y = Video.Height + (-186 + 80) * get_scale_factor()
b.Style = FindButtonStyle("icon")
CUserInterface:get().SingleTrainingButton = b

CUserInterface:get().TrainingButtons:clear()

function AddTrainingButton(x, y)
	b = CUIButton:new_local()
	b.X = (162 + x) * get_scale_factor()
	b.Y = Video.Height + (-186 + y) * get_scale_factor()
	b.Style = FindButtonStyle("icon")
	CUserInterface:get().TrainingButtons:push_back(b)
end

AddTrainingButton(160, 80)
AddTrainingButton(108, 80)
AddTrainingButton(56, 80)
AddTrainingButton(4, 80)

b = CUIButton:new()
b.X = (162 + 110) * get_scale_factor()
b.Y = Video.Height + (-186 + 11 + 70) * get_scale_factor()
b.Style = FindButtonStyle("icon")
CUserInterface:get().UpgradingButton = b

b = CUIButton:new()
b.X = (162 + 110) * get_scale_factor()
b.Y = Video.Height + (-186 + 11 + 70) * get_scale_factor()
b.Style = FindButtonStyle("icon")
CUserInterface:get().ResearchingButton = b

CUserInterface:get().TransportingButtons:clear()

function AddTransportingButton(x, y)
	b = CUIButton:new_local()
	b.X = Video.Width + (-243 + x) * get_scale_factor()
	b.Y = Video.Height + (-186 + y) * get_scale_factor()
	b.Style = FindButtonStyle("icon")
	CUserInterface:get().TransportingButtons:push_back(b)
end

AddTransportingButton(17, 97)
AddTransportingButton(73, 97)
AddTransportingButton(129, 97)
AddTransportingButton(185, 97)
AddTransportingButton(17, 140)
AddTransportingButton(73, 140)
AddTransportingButton(129, 140)

CUserInterface:get().InventoryButtons:clear()

function AddInventoryButton(x, y)
	b = CUIButton:new_local()
	b.X = Video.Width + (-243 + x) * get_scale_factor()
	b.Y = Video.Height + (-186 + y) * get_scale_factor()
	b.Style = FindButtonStyle("icon")
	CUserInterface:get().InventoryButtons:push_back(b)
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
b.X = Video.Width + (-12 - 46) * get_scale_factor()
b.Y = (16 + 12) * get_scale_factor()
b.Style = FindButtonStyle("icon")
CUserInterface:get().IdleWorkerButton = b

b = CUIButton:new()
b.X = Video.Width + (-12 - 46) * get_scale_factor()
b.Y = (16 + 12 + 38 + 24) * get_scale_factor()
b.Style = FindButtonStyle("icon")
CUserInterface:get().LevelUpUnitButton = b

CUserInterface:get().HeroUnitButtons:clear()

local hero_button_x = 0
local hero_button_y = 0
for i = 1, 12 do
	b = CUIButton:new()
	b.X = Video.Width + (-12 - (46 * (1 + hero_button_x)) - (24 * hero_button_x)) * get_scale_factor()
	b.Y = (16 + 12 + (38 * (2 + hero_button_y)) + (24 * (2 + hero_button_y))) * get_scale_factor()
	b.Style = FindButtonStyle("icon")
	CUserInterface:get().HeroUnitButtons:push_back(b)
	hero_button_y = hero_button_y + 1
	
	if (((16 + 12 + (38 * (2 + hero_button_y)) + (24 * (2 + hero_button_y)) + 38) * get_scale_factor()) >= CUserInterface:get().MapArea:get_bottom()) then
		hero_button_x = hero_button_x + 1
		hero_button_y = 0
	end
end

CUserInterface:get().CompletedBarColorRGB = CColor(48, 100, 4)
CUserInterface:get().CompletedBarShadow = false

CUserInterface:get().ButtonPanel.Buttons:clear()

function AddButtonPanelButton(x, y)
	b = CUIButton:new_local()
	b.X = Video.Width + (-243 + x) * get_scale_factor()
	b.Y = Video.Height + (-186 + y) * get_scale_factor()
	b.Style = FindButtonStyle("icon")
	CUserInterface:get().ButtonPanel.Buttons:push_back(b)
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

CUserInterface:get().ButtonPanel.X = Video.Width - 243 * get_scale_factor()
CUserInterface:get().ButtonPanel.Y = Video.Height - 186 * get_scale_factor()
CUserInterface:get().ButtonPanel.AutoCastBorderColorRGB = CColor(0, 0, 252)

CUserInterface:get():get_minimap().X = 17 * get_scale_factor()
CUserInterface:get():get_minimap().Y = Video.Height - 156 * get_scale_factor()
CUserInterface:get():get_minimap().W = 128 * get_scale_factor()
CUserInterface:get():get_minimap().H = 128 * get_scale_factor()

CUserInterface:get().StatusLine.TextX = 2 * get_scale_factor()
CUserInterface:get().StatusLine.TextY = Video.Height + (2 - 16) * get_scale_factor()
CUserInterface:get().StatusLine.Width = Video.Width + (-16 - 2 - 176) * get_scale_factor()
CUserInterface:get().StatusLine.Font = Fonts["game"]

-- copper
CUserInterface:get().Resources[1].IconX = (154 + (75 * 0)) * get_scale_factor()
CUserInterface:get().Resources[1].IconY = 0
CUserInterface:get().Resources[1].TextX = (154 + (75 * 0) + 18) * get_scale_factor()
CUserInterface:get().Resources[1].TextY = 1 * get_scale_factor()

-- lumber
CUserInterface:get().Resources[2].IconX = (154 + (75 * 1)) * get_scale_factor()
CUserInterface:get().Resources[2].IconY = 0
CUserInterface:get().Resources[2].TextX = (154 + (75 * 1) + 18) * get_scale_factor()
CUserInterface:get().Resources[2].TextY = 1 * get_scale_factor()

-- stone
CUserInterface:get().Resources[5].IconX = (154 + (75 * 2)) * get_scale_factor()
CUserInterface:get().Resources[5].IconY = 0
CUserInterface:get().Resources[5].TextX = (154 + (75 * 2) + 18) * get_scale_factor()
CUserInterface:get().Resources[5].TextY = 1 * get_scale_factor()

-- oil
--CUserInterface:get().Resources[3].IconX = (154 + 150) * get_scale_factor()
--CUserInterface:get().Resources[3].IconY = 0
--CUserInterface:get().Resources[3].TextX = (154 + 150 + 18) * get_scale_factor()
--CUserInterface:get().Resources[3].TextY = 1 * get_scale_factor()

if (GetCurrentQuest() == "gathering-materials") then
	-- coal
	CUserInterface:get().Resources[6].IconX = (154 + (75 * 3)) * get_scale_factor()
	CUserInterface:get().Resources[6].IconY = 0
	CUserInterface:get().Resources[6].TextX = (154 + (75 * 3) + 18) * get_scale_factor()
	CUserInterface:get().Resources[6].TextY = 1 * get_scale_factor()
else
	-- Hide Coal (should not show up in normal scenarios)
	CUserInterface:get().Resources[6].IconX = -1
	CUserInterface:get().Resources[6].IconY = -1
	CUserInterface:get().Resources[6].TextX = -1
	CUserInterface:get().Resources[6].TextY = -1
end

-- food
CUserInterface:get().Resources[FoodCost].IconX = Video.Width + (-138) * get_scale_factor()
CUserInterface:get().Resources[FoodCost].IconY = 0
CUserInterface:get().Resources[FoodCost].TextX = Video.Width + (-138 + 18) * get_scale_factor()
CUserInterface:get().Resources[FoodCost].TextY = 1

-- score
CUserInterface:get().Resources[ScoreCost].IconX = Video.Width + (-68) * get_scale_factor()
CUserInterface:get().Resources[ScoreCost].IconY = 0
CUserInterface:get().Resources[ScoreCost].TextX = Video.Width + (-68 + 18) * get_scale_factor()
CUserInterface:get().Resources[ScoreCost].TextY = 1

-- mana
CUserInterface:get().Resources[ManaResCost].IconX = -1
CUserInterface:get().Resources[ManaResCost].IconY = -1
CUserInterface:get().Resources[ManaResCost].TextX = -1
CUserInterface:get().Resources[ManaResCost].TextY = -1

CUserInterface:get().TimeOfDayPanel.IconX = (154 + (75 * 4) + (18 * 0)) * get_scale_factor()
CUserInterface:get().TimeOfDayPanel.IconY = 0

CUserInterface:get().SeasonPanel.IconX = (154 + (75 * 4) + (18 * 1)) * get_scale_factor()
CUserInterface:get().SeasonPanel.IconY = 0

CUserInterface:get().AgePanel.IconX = (154 + (75 * 5)) * get_scale_factor()
CUserInterface:get().AgePanel.IconY = 0
CUserInterface:get().AgePanel.TextX = (154 + (75 * 5) + 18) * get_scale_factor()
CUserInterface:get().AgePanel.TextY = 1 * get_scale_factor()

CUserInterface:get().DatePanel.TextX = (154 + (75 * 7)) * get_scale_factor()
CUserInterface:get().DatePanel.TextY = 1 * get_scale_factor()

-- World Map Layer Buttons

local earth_id = GetWorldData("earth", "ID")
if (GetMapLayer("earth") ~= -1) then
	CUserInterface:get().WorldButtons:at(earth_id).X = (16 + (19  * 0)) * get_scale_factor()
	CUserInterface:get().WorldButtons:at(earth_id).Y = Video.Height - 23 * get_scale_factor()
	CUserInterface:get().WorldButtons:at(earth_id).Style = FindButtonStyle("world-earth")
else
	CUserInterface:get().WorldButtons:at(earth_id).X = -1
	CUserInterface:get().WorldButtons:at(earth_id).Y = -1
end

local nidavellir_id = GetWorldData("nidavellir", "ID")
if (GetMapLayer("nidavellir") ~= -1) then
	CUserInterface:get().WorldButtons:at(nidavellir_id).X = (16 + (19  * 1)) * get_scale_factor()
	CUserInterface:get().WorldButtons:at(nidavellir_id).Y = Video.Height - 23 * get_scale_factor()
	CUserInterface:get().WorldButtons:at(nidavellir_id).Style = FindButtonStyle("world-nidavellir")
else
	CUserInterface:get().WorldButtons:at(nidavellir_id).X = -1
	CUserInterface:get().WorldButtons:at(nidavellir_id).Y = -1
end

local jotunheim_id = GetWorldData("jotunheim", "ID")
if (GetMapLayer("jotunheim") ~= -1) then
	CUserInterface:get().WorldButtons:at(jotunheim_id).X = (16 + (19  * 2)) * get_scale_factor()
	CUserInterface:get().WorldButtons:at(jotunheim_id).Y = Video.Height - 23 * get_scale_factor()
	CUserInterface:get().WorldButtons:at(jotunheim_id).Style = FindButtonStyle("world-jotunheim")
else
	CUserInterface:get().WorldButtons:at(jotunheim_id).X = -1
	CUserInterface:get().WorldButtons:at(jotunheim_id).Y = -1
end

local info_panel_x = CUserInterface:get().InfoPanel.X
local info_panel_y = CUserInterface:get().InfoPanel.Y

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
	{ Pos = {70, 45}, Condition = {ShowOpponent = false, HideNeutral = true, Organic = "only", Mana = "false"},
		More = {"LifeBar", {Variable = "Xp", Height = 4, Width = 50}}
	},
	{ Pos = {67, 50}, Condition = {ShowOpponent = false, HideNeutral = true, Organic = "only", Mana = "false"},
		More = { "Text", {Text = Concat("XP: ", String(ActiveUnitVar("Xp")), "/", String(ActiveUnitVar("XPRequired"))), Font = "small"}}
    },
	{ Pos = {70, 67}, Condition = {ShowOpponent = false, HideNeutral = true, Organic = "only", Mana = "only"},
		More = {"LifeBar", {Variable = "Xp", Height = 4, Width = 50}}
	},
	{ Pos = {67, 72}, Condition = {ShowOpponent = false, HideNeutral = true, Organic = "only", Mana = "only"},
		More = { "Text", {Text = Concat("XP: ", String(ActiveUnitVar("Xp")), "/", String(ActiveUnitVar("XPRequired"))), Font = "small"}}
    },
	--[[
	{ Pos = {35, 61}, Condition = {ShowOpponent = false, HideNeutral = true},
		More = {"FormattedText2", {
			Font = "small", Variable = "HitPoints", Format = "%d/%d",
			Component1 = "Value", Component2 = "Max", Centered = true}}
	},
	--]]

	{ Pos = {168, 26}, Condition = {ShowOpponent = true, Affixed = "false"}, More = {"Text", {Text = Line(1, UnitName("Active"), 90 * get_scale_factor(), "game"), Centered = true}} },
	{ Pos = {168, 37}, Condition = {ShowOpponent = true, Affixed = "false"}, More = {"Text", {Text = Line(2, UnitName("Active"), 90 * get_scale_factor(), "game"), Centered = true}} },
	{ Pos = {168, 48}, Condition = {ShowOpponent = true, Affixed = "false"}, More = {"Text", {Text = Line(3, UnitName("Active"), 90 * get_scale_factor(), "game"), Centered = true}} },

	{ Pos = {168, 26}, Condition = {ShowOpponent = true, Affixed = "only", Unique = "false"}, TextColor = "light-blue", More = {"Text", {Text = Line(1, UnitName("Active"), 90 * get_scale_factor(), "game"), Centered = true}} },
	{ Pos = {168, 37}, Condition = {ShowOpponent = true, Affixed = "only", Unique = "false"}, TextColor = "light-blue", More = {"Text", {Text = Line(2, UnitName("Active"), 90 * get_scale_factor(), "game"), Centered = true}} },
	{ Pos = {168, 48}, Condition = {ShowOpponent = true, Affixed = "only", Unique = "false"}, TextColor = "light-blue", More = {"Text", {Text = Line(3, UnitName("Active"), 90 * get_scale_factor(), "game"), Centered = true}} },
	{ Pos = {168, 59}, Condition = {ShowOpponent = true, Affixed = "only", Unique = "false"}, TextColor = "light-blue", More = {"Text", {Text = Line(4, UnitName("Active"), 90 * get_scale_factor(), "game"), Centered = true}} },

	{ Pos = {168, 26}, Condition = {ShowOpponent = true, Unique = "only"}, TextColor = "fire", More = {"Text", {Text = Line(1, UnitName("Active"), 90 * get_scale_factor(), "game"), Centered = true}} },
	{ Pos = {168, 37}, Condition = {ShowOpponent = true, Unique = "only"}, TextColor = "fire", More = {"Text", {Text = Line(2, UnitName("Active"), 90 * get_scale_factor(), "game"), Centered = true}} },
	{ Pos = {168, 48}, Condition = {ShowOpponent = true, Unique = "only"}, TextColor = "fire", More = {"Text", {Text = Line(3, UnitName("Active"), 90 * get_scale_factor(), "game"), Centered = true}} },

	-- unit type name, if the unit has a personal name
	{ Pos = {168, 61}, Condition = {ShowOpponent = true}, More = {"Text", {Text = Line(1, UnitTypeName("Active"), 90 * get_scale_factor(), "game"), Centered = true}} },
	{ Pos = {168, 72}, Condition = {ShowOpponent = true}, More = {"Text", {Text = Line(2, UnitTypeName("Active"), 90 * get_scale_factor(), "game"), Centered = true}} },
	{ Pos = {168, 83}, Condition = {ShowOpponent = true}, More = {"Text", {Text = Line(3, UnitTypeName("Active"), 90 * get_scale_factor(), "game"), Centered = true}} },
	
	-- Resource Left
	{ Pos = {9, 103}, Condition = {ShowOpponent = false, GiveResource = "only", Inexhaustible = "false", Build = "false"},
		More = {"Text", {Text = Concat(function() return CapitalizeString(GetUnitVariable(-1, "GiveResourceTypeName")) end, " Left:")}}
	},
	{ Pos = {115, 103}, Condition = {ShowOpponent = false, GiveResource = "only", Inexhaustible = "false", Build = "false"},
		More = {"Text", {Text = String(ActiveUnitVar("GiveResource", "Value"))}}
	},

	-- Resource Replenishment
	{ Pos = {9, 116}, Condition = {ShowOpponent = false, GiveResource = "only", Replenishment = "only", Build = "false"},
		More = {"Text", {Text = "Replenishment:"}}
	},
	{ Pos = {115, 116}, Condition = {ShowOpponent = false, GiveResource = "only", Replenishment = "only", Build = "false"},
		More = {"Text", {Text = String(ActiveUnitVar("GiveResource", "Increase"))}}
	},
	
	-- Food Supply
	{ Pos = {9, 116}, Condition = {ShowOpponent = false, HideNeutral = true, TownHall = "false", Build = "false", Supply = "only", Training = "false", UpgradeTo = "false"},
		More = {"Text", {Text = "Supply:"}}
	},
	{ Pos = {76, 116}, Condition = {ShowOpponent = false, HideNeutral = true, TownHall = "false", Build = "false", Supply = "only", Training = "false", UpgradeTo = "false"},
		More = {"Text", {Text = String(ActiveUnitVar("Supply", "Value"))}}
	},

	-- Time Efficiency Bonus
	{ Pos = {9, 130}, Condition = {ShowOpponent = false, TimeEfficiencyBonus = "only", GiveResource = "only", Build = "false", Training = "false", UpgradeTo = "false", Research = "false"},
		More = {"Text", {Text = "Time Eff.:"}}
	},
	{ Pos = {115, 130}, Condition = {ShowOpponent = false, TimeEfficiencyBonus = "only", GiveResource = "only", Build = "false", Training = "false", UpgradeTo = "false", Research = "false"},
		More = {"Text", {Text = Concat(
			If(GreaterThan(ActiveUnitVar("TimeEfficiencyBonus", "Value"), 0), "+", ""),
			Concat(String(ActiveUnitVar("TimeEfficiencyBonus", "Value")), "%")
		)}}
	},

	-- Time Efficiency Bonus
	{ Pos = {9, 103}, Condition = {ShowOpponent = false, TimeEfficiencyBonus = "only", GiveResource = "false", Supply = "false", MetalImprove = "false", LumberImprove = "false", StoneImprove = "false", AttackRange = "false", Build = "false", Training = "false", UpgradeTo = "false", Research = "false"},
		More = {"Text", {Text = "Time Eff.:"}}
	},
	{ Pos = {115, 103}, Condition = {ShowOpponent = false, TimeEfficiencyBonus = "only", GiveResource = "false", Supply = "false", MetalImprove = "false", LumberImprove = "false", StoneImprove = "false", AttackRange = "false", Build = "false", Training = "false", UpgradeTo = "false", Research = "false"},
		More = {"Text", {Text = Concat(
			If(GreaterThan(ActiveUnitVar("TimeEfficiencyBonus", "Value"), 0), "+", ""),
			Concat(String(ActiveUnitVar("TimeEfficiencyBonus", "Value")), "%")
		)}}
	},
	
	-- Time Efficiency Bonus
	{ Pos = {9, 158}, Condition = {ShowOpponent = false, TimeEfficiencyBonus = "only", GiveResource = "false", MetalImprove = "only", Build = "false", Training = "false", UpgradeTo = "false", Research = "false"},
		More = {"Text", {Text = "Time Eff.:"}}
	},
	{ Pos = {115, 158}, Condition = {ShowOpponent = false, TimeEfficiencyBonus = "only", GiveResource = "false", MetalImprove = "only", Build = "false", Training = "false", UpgradeTo = "false", Research = "false"},
		More = {"Text", {Text = Concat(
			If(GreaterThan(ActiveUnitVar("TimeEfficiencyBonus", "Value"), 0), "+", ""),
			Concat(String(ActiveUnitVar("TimeEfficiencyBonus", "Value")), "%")
		)}}
	},

	{ Pos = {9, 158}, Condition = {ShowOpponent = false, TimeEfficiencyBonus = "only", GiveResource = "false", LumberImprove = "only", Build = "false", Training = "false", UpgradeTo = "false", Research = "false"},
		More = {"Text", {Text = "Time Eff.:"}}
	},
	{ Pos = {115, 158}, Condition = {ShowOpponent = false, TimeEfficiencyBonus = "only", GiveResource = "false", LumberImprove = "only", Build = "false", Training = "false", UpgradeTo = "false", Research = "false"},
		More = {"Text", {Text = Concat(
			If(GreaterThan(ActiveUnitVar("TimeEfficiencyBonus", "Value"), 0), "+", ""),
			Concat(String(ActiveUnitVar("TimeEfficiencyBonus", "Value")), "%")
		)}}
	},

	{ Pos = {9, 158}, Condition = {ShowOpponent = false, TimeEfficiencyBonus = "only", GiveResource = "false", StoneImprove = "only", Build = "false", Training = "false", UpgradeTo = "false", Research = "false"},
		More = {"Text", {Text = "Time Eff.:"}}
	},
	{ Pos = {115, 158}, Condition = {ShowOpponent = false, TimeEfficiencyBonus = "only", GiveResource = "false", StoneImprove = "only", Build = "false", Training = "false", UpgradeTo = "false", Research = "false"},
		More = {"Text", {Text = Concat(
			If(GreaterThan(ActiveUnitVar("TimeEfficiencyBonus", "Value"), 0), "+", ""),
			Concat(String(ActiveUnitVar("TimeEfficiencyBonus", "Value")), "%")
		)}}
	},

	-- Trade Cost
	{ Pos = {9, 103}, Condition = {ShowOpponent = false, TradeCost = "only", Build = "false", Training = "false", UpgradeTo = "false", Research = "false"},
		More = {"Text", {Text = "Trade Cost:"}}
	},
	{ Pos = {161, 103}, Condition = {ShowOpponent = false, TradeCost = "only", Build = "false", Training = "false", UpgradeTo = "false", Research = "false"},
		More = {"Text", {Text = Concat(String(PlayerData(ActiveUnitVar("Player", "Value"), "TradeCost")), "%")}}
	},
	
	-- Inventory Refresh Seconds
	{ Pos = {9, 116}, Condition = {ShowOpponent = false, HideNeutral = true, Market = "only", Build = "false", Training = "false", UpgradeTo = "false", Research = "false"},
		More = {"Text", {Text = "Inventory Refresh In:"}}
	},
	{ Pos = {161, 116}, Condition = {ShowOpponent = false, HideNeutral = true, Market = "only", Build = "false", Training = "false", UpgradeTo = "false", Research = "false"},
		More = {"Text", {Text = Concat(String(function() return (1800 - (GameCycle % 1800)) / 30 end), "s")}}
	},
	
	-- Construction
	{ Pos = {25, 152}, Condition = {ShowOpponent = false, HideNeutral = true, Build = "only"},
		More = {"CompleteBar", {Variable = "Build", Width = 152, Height = 14, Border = false}}
	},
	{ Pos = {50, 153}, Condition = {ShowOpponent = false, HideNeutral = true, Build = "only"},
		More = {"Text", "% Complete"}},
	{ Pos = {107, 78}, Condition = {ShowOpponent = false, HideNeutral = true, Build = "only", BuilderOutside = "false"},
		More = {"Icon", {Unit = "Worker"}}}


  } },
  -- Center
  {
  Ident = "panel-center-contents",
  Pos = {info_panel_x, info_panel_y}, DefaultFont = "game",
  Condition = {ShowOpponent = false, HideNeutral = true, TownHall = "only", Build = "false", Supply = "only", Training = "false", UpgradeTo = "false", Research = "false"},
  Contents = {
	{ Pos = {9, 103}, More = {"Text", _("Processing")} },
	{ Pos = {9, 116}, More = { "Text", {Text = _("Copper:")}}},
	{ Pos = {115, 116}, HighlightColor = "yellow", More = { "Text", {Text = Concat("100", 
										If(GreaterThan(PlayerData(ActiveUnitVar("Player", "Value"), "Incomes", "copper"), 100),
										InverseVideo(Concat("+", String(Sub(PlayerData(ActiveUnitVar("Player", "Value"), "Incomes", "copper"), 100)))),
										""))}}
    },
	{ Pos = {9, 130}, Condition = {LumberImprove = "only"}, More = {"Text", {Text = _("Lumber:")}}},
	{ Pos = {115, 130}, Condition = {LumberImprove = "only"}, HighlightColor = "yellow", More = { "Text", {Text = Concat("100",
										If(GreaterThan(PlayerData(ActiveUnitVar("Player", "Value"), "Incomes", "lumber"), 100),
										InverseVideo(Concat("+", String(Sub(PlayerData(ActiveUnitVar("Player", "Value"), "Incomes", "lumber"), 100)))),
										"" ))}}
    },
	{ Pos = {9, 144}, Condition = {StoneImprove = "only"}, More = { "Text", {Text = _("Stone:")}}},
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
  Condition = {ShowOpponent = false, HideNeutral = true, TownHall = "false", Build = "false", Training = "false", UpgradeTo = "false", Research = "false"},
  Contents = {
	{ Pos = {9, 103}, Condition = {MetalImprove = "only"}, More = {"Text", _("Processing")} },
	{ Pos = {9, 103}, Condition = {LumberImprove = "only"}, More = {"Text", _("Processing")} },
	{ Pos = {9, 103}, Condition = {StoneImprove = "only"}, More = {"Text", _("Processing")} },
--	{ Pos = {9, 103}, Condition = {OilImprove = "only"}, More = {"Text", "Processing"} },
	{ Pos = {9, 116}, Condition = {MetalImprove = "only"}, More = {"Text", {Text = _("Copper:")}}},
	{ Pos = {115, 116}, Condition = {MetalImprove = "only"}, HighlightColor = "yellow", More = { "Text", {Text = Concat("100",
										If(GreaterThan(PlayerData(ActiveUnitVar("Player", "Value"), "Incomes", "copper"), 100),
										InverseVideo(Concat("+", String(Sub(PlayerData(ActiveUnitVar("Player", "Value"), "Incomes", "copper"), 100)))),
										"" ))}}
    },
	{ Pos = {9, 130}, Condition = {MetalImprove = "only"}, More = {"Text", {Text = _("Iron:")}}},
	{ Pos = {115, 130}, Condition = {MetalImprove = "only"}, HighlightColor = "yellow", More = { "Text", {Text = Concat("100",
										If(GreaterThan(PlayerData(ActiveUnitVar("Player", "Value"), "Incomes", "iron"), 100),
										InverseVideo(Concat("+", String(Sub(PlayerData(ActiveUnitVar("Player", "Value"), "Incomes", "iron"), 100)))),
										"" ))}}
    },
	{ Pos = {9, 116}, Condition = {LumberImprove = "only"}, More = {"Text", {Text = _("Lumber:")}}},
	{ Pos = {115, 116}, Condition = {LumberImprove = "only"}, HighlightColor = "yellow", More = { "Text", {Text = Concat("100",
										If(GreaterThan(PlayerData(ActiveUnitVar("Player", "Value"), "Incomes", "lumber"), 100),
										InverseVideo(Concat("+", String(Sub(PlayerData(ActiveUnitVar("Player", "Value"), "Incomes", "lumber"), 100)))),
										"" ))}}
    },
	{ Pos = {9, 116}, Condition = {StoneImprove = "only"}, More = { "Text", {Text = _("Stone:")}}},
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
	{ Pos = {9, 116}, Condition = {BasicDamage = "only", TownHall = "false"},
		More = {"Text", {Text = _("Damage:")}}
	},
	{ Pos = {76, 116}, Condition = {BasicDamage = "only", TownHall = "false"},
		More = {"Text", {Text = Concat(
			String(min_damage),
			"-",
			String(max_damage)
		)}}
	},
	{ Pos = {115, 116}, Condition = {Accuracy = "only", Building = "false"},
		More = {"Text", {Text = _("Accuracy:")}}
	},
	{ Pos = {184, 116}, Condition = {Accuracy = "only", Building = "false"},
		More = {"Text", {Text = String(ActiveUnitVar("Accuracy"))}}
	},
	{ Pos = {9, 144}, Condition = {AttackRange = "only", BasicDamage = "only", TownHall = "false"},
		More = {"Text", {Text = _("Range:")}}
	},
	{ Pos = {76, 144}, Condition = {AttackRange = "only", BasicDamage = "only", TownHall = "false"},
		More = {"Text", {Text = String(ActiveUnitVar("AttackRange"))}}
	},
	{ Pos = {115, 144}, Condition = {SightRange = "only", Building = "false"},
		More = {"Text", {Text = _("Sight:")}}
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
		More = {"Text", {Text = Concat(function() return _(CapitalizeString(GetUnitVariable(-1, "CurrentResourceName"))) end, ":")}}
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

	{ Pos = {3, 72}, Condition = {Organic = "only"},
		More = {"Text", {Text = _("Level:")}}
	},
	{ Pos = {51, 72}, Condition = {Organic = "only"},
		More = {"Text", {Text = String(ActiveUnitVar("Level"))}}
	},
	{ Pos = {9, 103}, Condition = {Organic = "only"},
		More = {"Text", {Text = _("Trait:")}}
	},
	{ Pos = {76, 103}, Condition = {Organic = "only"},
		More = {"Text", {Text = UnitTrait("Active")}}
	},
	{ Pos = {9, 130}, Condition = {},
		More = {"Text", {Text = _("Armor:")}}
	},
	{ Pos = {76, 130}, Condition = {},
		More = {"Text", {Text = String(ActiveUnitVar("Armor"))}}
	},
	{ Pos = {115, 130}, Condition = {},
		More = {"Text", {Text = _("Evasion:")}}
	},
	{ Pos = {184, 130}, Condition = {},
		More = {"Text", {Text = String(ActiveUnitVar("Evasion"))}}
	},
	{ Pos = {9, 157}, Condition = {Speed = "only"},
		More = {"Text", {Text = _("Speed:")}}
	},
	{ Pos = {76, 157}, Condition = {Speed = "only"},
		More = {"Text", {Text = String(ActiveUnitVar("Speed"))}}
	}
  } })

if not (ui_loaded_first_time) then
	CUserInterface:get().MessageFont = Fonts["game"]
	CUserInterface:get().MessageScrollSpeed = 5

	function GetRGBA(r, g, b, a)
		return r + g*0x100 + b*0x10000 + a*0x1000000
	end

	local PopupBackgroundColor = GetRGBA(28, 28, 28, 208)
	local PopupBorderColor = GetRGBA(93, 93, 93, 160)
	local PopupDescriptionFont = "small"

	local PopupFont = "game"

	DefinePopup({
		Ident = "popup_commands",
		BackgroundColor = PopupBackgroundColor,
		BorderColor = PopupBorderColor,
		DefaultFont = PopupDescriptionFont,
		Contents = {
				{ 	HighlightColor = "yellow",
					More = {"ButtonInfo", {InfoType = "Hint", Font = PopupFont}}
				}, 
				{ 	Margin = {1, 1}, Condition = {ButtonAction = "cast-spell"},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {ButtonAction = "cast-spell"},
					More = {"Costs", {Font = PopupFont}}, HighlightColor = "yellow",
				},
				{ 	Margin = {1, 1}, Condition = {ButtonAction = "quest"},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {ButtonAction = "quest"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = _("Click to accept quest"), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				-- Description
				{ 	Margin = {1, 1}, Condition = {HasDescription = true},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				}, 
				{ 	Condition = {HasDescription = true}, HighlightColor = "yellow",
					More = {"ButtonInfo", {InfoType = "Description", MaxWidth = math.max(256, Video.Width / 5), Font = PopupDescriptionFont}}
				}, 
				-- Produce Resource
				{ 	Margin = {1, 1}, Condition = {ButtonAction = "produce_resource", LuxuryResource = "only"},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {ButtonAction = "produce_resource", LuxuryResource = "only"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = Concat(ResourceName("Resource"), " is sold automatically if a Market is present"), MaxWidth = math.max(256, Video.Width / 5), Font = PopupDescriptionFont}}
				},
				{ 	Margin = {1, 1}, Condition = {ButtonAction = "produce_resource"},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {ButtonAction = "produce_resource"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = Concat(ResourceName("Resource"), Concat(" Stored: ", String(PlayerData(ActiveUnitVar("Player", "Value"), "Resources", ResourceIdent("Resource"))))), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				{ 	Condition = {ButtonAction = "produce_resource"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = Concat(ResourceName("Resource"), Concat(" Price: ", String(PlayerData(ActiveUnitVar("Player", "Value"), "Prices", ResourceIdent("Resource"))))), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				{ 	Condition = {ButtonAction = "produce_resource"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = Concat(Concat("Trade Cost: ", String(PlayerData(ActiveUnitVar("Player", "Value"), "TradeCost"))), "%"), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				{ 	Condition = {ButtonAction = "produce_resource"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = Concat(ResourceName("Resource"), Concat(" Effective Sell Price: ", String(PlayerData(ActiveUnitVar("Player", "Value"), "EffectiveResourceSellPrice", ResourceIdent("Resource"))))), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				{ 	Condition = {ButtonAction = "produce_resource", LuxuryResource = "only"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = Concat(ResourceName("Resource"), Concat(" Demand: ", String(PlayerData(ActiveUnitVar("Player", "Value"), "EffectiveResourceDemand", ResourceIdent("Resource"))))), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				-- Resource Sell
				{ 	Margin = {1, 1}, Condition = {ButtonAction = "sell-resource"},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {ButtonAction = "sell-resource"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = Concat(
						Concat("Sell 100 ", ResourceName("Resource")),
						Concat(
							Concat(
								" for ",
								String(function() return GetUnitVariable(-1, "EffectiveResourceSellPrice", GetCurrentButtonValueStr()) end)
							),
							" Copper"
						)
					), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				{ 	Margin = {1, 1}, Condition = {ButtonAction = "sell-resource"},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {ButtonAction = "sell-resource"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = Concat(ResourceName("Resource"), Concat(" Price: ", String(PlayerData(ActiveUnitVar("Player", "Value"), "Prices", ResourceIdent("Resource"))))), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				{ 	Condition = {ButtonAction = "sell-resource"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = Concat("Trade Cost: ", Concat(String(PlayerData(ActiveUnitVar("Player", "Value"), "TradeCost")), "%")), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				{ 	Condition = {ButtonAction = "sell-resource"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = Concat(ResourceName("Resource"), Concat(" Effective Sell Price: ", String(PlayerData(ActiveUnitVar("Player", "Value"), "EffectiveResourceSellPrice", ResourceIdent("Resource"))))), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				-- Resource Buy
				{ 	Margin = {1, 1}, Condition = {ButtonAction = "buy-resource"},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {ButtonAction = "buy-resource"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = Concat(
						Concat("Buy 100 ", ResourceName("Resource")),
						Concat(
							Concat(
								" for ",
								String(function() return GetUnitVariable(-1, "EffectiveResourceBuyPrice", GetCurrentButtonValueStr()) end)
							),
							" Copper"
						)
					), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				{ 	Margin = {1, 1}, Condition = {ButtonAction = "buy-resource"},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {ButtonAction = "buy-resource"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = Concat(ResourceName("Resource"), Concat(" Price: ", String(PlayerData(ActiveUnitVar("Player", "Value"), "Prices", ResourceIdent("Resource"))))), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				{ 	Condition = {ButtonAction = "buy-resource"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = Concat("Trade Cost: ", Concat(String(PlayerData(ActiveUnitVar("Player", "Value"), "TradeCost")), "%")), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				{ 	Condition = {ButtonAction = "buy-resource"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = Concat(ResourceName("Resource"), Concat(" Effective Buy Price: ", String(PlayerData(ActiveUnitVar("Player", "Value"), "EffectiveResourceBuyPrice", ResourceIdent("Resource"))))), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				-- Salvage Building
				{ 	Margin = {1, 1}, Condition = {ButtonAction = "salvage"},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {ButtonAction = "salvage", Building = "only"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = Concat(
							Concat(
								_("Salvage this building for "),
								String(
									Div(
										Mul(
											ActiveUnitVar("SalvageFactor"),
											ActiveUnitVar("HitPoints")
										),
										ActiveUnitVar("HitPoints", "Max")
									)
								)
							),
							"% of the resources used to construct it"
						),
						MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				{ 	Condition = {ButtonAction = "salvage", Building = "false"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = Concat(
							Concat(
								_("Salvage this unit for "),
								String(
									Div(
										Mul(
											ActiveUnitVar("SalvageFactor"),
											ActiveUnitVar("HitPoints")
										),
										ActiveUnitVar("HitPoints", "Max")
									)
								)
							),
							"% of the resources used to construct it"
						),
						MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				-- Move hint
				{ 	Margin = {1, 1}, Condition = {ButtonAction = "move", Building = "false"},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {ButtonAction = "move", Building = "false"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = _("~<ALT~>-click to defend a unit"), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				{ 	Condition = {ButtonAction = "move", Building = "false"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = _("~<SHIFT~>-click to make waypoints"), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				{ 	Condition = {ButtonAction = "move", Building = "false"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = _("~<CTRL~>-click to stand ground after moving"), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				-- Attack hint
				{ 	Margin = {1, 1}, Condition = {ButtonAction = "attack"},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {ButtonAction = "attack"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = _("Click on an empty space to attack-move"), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				-- Repair hint
				{ 	Margin = {1, 1}, Condition = {ButtonAction = "repair"},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {ButtonAction = "repair"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = _("~<CTRL~>-click to toggle auto-repair of damaged buildings"), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				{ 	Margin = {1, 1}, Condition = {ButtonAction = "cast-spell", AutoCast = "only"},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {ButtonAction = "cast-spell", AutoCast = "only"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = _("~<CTRL~>-click to toggle autocast"), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				{ 	Margin = {1, 1}, Condition = {ButtonAction = "sell-resource"},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {ButtonAction = "sell-resource"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = _("~<CTRL~>-click to toggle the automatic sale of the resource"), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				{ 	Margin = {1, 1}, Condition = {ButtonAction = "enter_map_layer"},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {ButtonAction = "enter_map_layer"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = _("Click to change the current map layer to the one this building connects to"), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				{ 	Margin = {1, 1}, Condition = {ButtonAction = "enter_map_layer"},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {ButtonAction = "enter_map_layer"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = _("Hint: You can press ~<CTRL~>-~!L to return to the previous map layer"), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
		}	
	})

	DefinePopup({
		Ident = "popup_building",
		BackgroundColor = PopupBackgroundColor,
		BorderColor = PopupBorderColor,
		MinWidth = 128,
		DefaultFont = PopupDescriptionFont,
		Contents = {
				{	HighlightColor = "yellow",
					More = {"ButtonInfo", {InfoType = "Hint", Font = PopupFont}}
				}, 
				-- Unit Type Requirements (if the unit type is disallowed)
				{ 	Margin = {1, 1}, Condition = {RequirementsString = "only"},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {RequirementsString = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = Concat(_("Requirements: "), TypeRequirementsString("Type")), MaxWidth = math.max(256, Video.Width / 5), Font = PopupDescriptionFont}}
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
					More = {"Variable", {Text = Concat(Concat(_("Class:"), " "), TypeClass("Type")), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {HitPoints = "only", Indestructible = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Hit Points:"), " "), Variable = "HitPoints", Font = PopupDescriptionFont}}
				}, 
				{ 	Condition = {SightRange = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Sight:"), " "), Variable = "SightRange", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {AttackRange = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Range:"), " "), Variable = "AttackRange", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {BasicDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(
						Concat(_("Damage:"), " "),
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
											Add(
												TypeVar("ArcaneDamage","Value"), TypeVar("LightningDamage","Value")
											),
											TypeVar("ShadowDamage","Value")
										),
										Add(
											Add(
												TypeVar("AirDamage","Value"), TypeVar("EarthDamage","Value")
											),
											Add(
												TypeVar("WaterDamage","Value"), TypeVar("AcidDamage","Value")
											)
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
										Add(
											TypeVar("ArcaneDamage","Value"), TypeVar("LightningDamage","Value")
										),
										TypeVar("ShadowDamage","Value")
									),
									Add(
										Add(
											TypeVar("AirDamage","Value"), TypeVar("EarthDamage","Value")
										),
										Add(
											TypeVar("WaterDamage","Value"), TypeVar("AcidDamage","Value")
										)
									)
								)
							)
						)
					), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {MaxHarvesters = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Max Workers:"), " "), Variable = "MaxHarvesters", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Supply = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Food Supply:"), " "), Variable = "Supply", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {SpeedBonus = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Speed Bonus: "), Variable = "SpeedBonus", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {FireResistance = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Fire Resistance: "), String(TypeVar("FireResistance","Value")), "%"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Transport = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Garrison: "), String(TypeVar("Transport", "Max"))), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {GarrisonedRangeBonus = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Garrisoned Range Bonus: "), Variable = "GarrisonedRangeBonus", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {TimeEfficiencyBonus = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Time Efficiency Bonus: "), Variable = "TimeEfficiencyBonus", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {ResearchSpeedBonus = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Research Speed Bonus: "), Variable = "ResearchSpeedBonus", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {DehydrationImmunity = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = "Dehydration Immunity", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {RegenerationAura = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = "Regeneration Aura", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {LeadershipAura = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = "Leadership Aura", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {HydratingAura = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = "Hydrating Aura", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {EtherealVision = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = "Ethereal Vision", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {TownHall = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Stores Resources"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {TownHall = "false", CanStore = "copper"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Stores Copper"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {TownHall = "false", CanStore = "silver"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Stores Silver"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {TownHall = "false", CanStore = "gold"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Stores Gold"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {TownHall = "false", CanStore = "iron"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Stores Iron"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {TownHall = "false", CanStore = "mithril"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Stores Mithril"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {TownHall = "false", CanStore = "lumber"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Stores Lumber"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {TownHall = "false", CanStore = "stone"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Stores Stone"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {TownHall = "false", CanStore = "leather"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Stores Leather"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {AttackFromTransporter = "only", Transport = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Garrisoned Can Attack"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {GarrisonTraining = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Garrison Training"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {ImproveIncomes = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = TypeImproveIncomes("Type"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {IncreasesLuxuryDemand = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = TypeLuxuryDemand("Type"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {UnitTypeClass = "lumber_mill"}, HighlightColor = "yellow",
					More = {"Text", {Text = "Allows spears and arrows/throwing axes to be sold at the Market", MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				{ 	Condition = {UnitTypeClass = "smithy"}, HighlightColor = "yellow",
					More = {"Text", {Text = "Allows swords/axes, shields, tools, horns and jewelry to be sold at the Market", MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				{ 	Margin = {1, 1}, Condition = {BuildingRulesString = "only"},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {BuildingRulesString = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = TypeBuildingRulesString("Type"), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				-- Description
				{ 	Margin = {1, 1}, Condition = {HasDescription = true}, 
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				}, 
				{ 	Condition = {HasDescription = true}, HighlightColor = "yellow",
					More = {"ButtonInfo", {InfoType = "Description", MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
		}	
	})

	DefinePopup({
		Ident = "popup_unit",
		BackgroundColor = PopupBackgroundColor,
		BorderColor = PopupBorderColor,
		MinWidth = 128,
		DefaultFont = PopupDescriptionFont,
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
				-- Unit Type Requirements (if the unit type is disallowed)
				{ 	Margin = {1, 1}, Condition = {RequirementsString = "only"},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {RequirementsString = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = Concat(_("Requirements: "), TypeRequirementsString("Type")), MaxWidth = math.max(256, Video.Width / 5), Font = PopupDescriptionFont}}
				},
				{ 	Margin = {1, 1}, Condition = {ExperienceRequirementsString = "only"},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {ExperienceRequirementsString = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = Concat(_("Requirements: "), TypeExperienceRequirementsString("Type")), MaxWidth = math.max(256, Video.Width / 5), Font = PopupDescriptionFont}}
				},
				{ 	Margin = {1, 1}, Condition = {ButtonAction = "experience-upgrade-to"},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {ButtonAction = "experience-upgrade-to"}, HighlightColor = "yellow",
					More = {"Text", {Text = _("Requires 1 Level Up Point"), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Opponent = "false", Neutral = "false"}, Margin = {1, 1},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {Opponent = "only", SettlementName = "only"}, Margin = {1, 1},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {Neutral = "only", SettlementName = "only"}, Margin = {1, 1},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {Opponent = "only", SettlementName = "false", SiteName = "only"}, Margin = {1, 1},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {Neutral = "only", SettlementName = "false", SiteName = "only"}, Margin = {1, 1},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {ButtonAction = "buy", Item = "only"}, Margin = {1, 1},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {ButtonAction = "editor-unit"}, HighlightColor = "yellow",
					More = {"Variable", {Text = TypeIdent("Type"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {ButtonAction = "editor-unit"}, Margin = {1, 1},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{	Condition = {ButtonAction = "train-unit"},
					More = {"Costs", {Font = PopupFont}}, HighlightColor = "yellow",
				}, 
				{ 	Condition = {ButtonAction = "train-unit"}, Margin = {1, 1},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{	Condition = {ButtonAction = "train_unit_class"},
					More = {"Costs", {Font = PopupFont}}, HighlightColor = "yellow",
				}, 
				{ 	Condition = {ButtonAction = "train_unit_class"}, Margin = {1, 1},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{	Condition = {ButtonAction = "buy"},
					More = {"Costs", {Font = PopupFont}}, HighlightColor = "yellow",
				}, 
				{ 	Condition = {ButtonAction = "buy", Neutral = "false"}, Margin = {1, 1},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{	Condition = {ButtonAction = "train-unit"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = _("~<SHIFT~>-click to train 5"), Font = PopupDescriptionFont}}
				}, 
				{ 	Condition = {ButtonAction = "train-unit"}, Margin = {1, 1},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{	Condition = {ButtonAction = "train_unit_class"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = _("~<SHIFT~>-click to train 5"), Font = PopupDescriptionFont}}
				}, 
				{ 	Condition = {ButtonAction = "train_unit_class"}, Margin = {1, 1},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {Class = true, ButtonAction = "train-unit"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(Concat(_("Class:"), " "), TypeClass("Type")), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Class = true, ButtonAction = "train_unit_class"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(Concat(_("Class:"), " "), TypeClass("Type")), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Class = true, ButtonAction = "editor-unit"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(Concat(_("Class:"), " "), TypeClass("Type")), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {SiteName = "only", ButtonAction = "unit"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Site: "), UnitSiteName("Unit")), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {SettlementName = "only", ButtonAction = "unit"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Settlement: "), UnitSettlementName("Unit")), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {HitPoints = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Hit Points:"), " "), Variable = "HitPoints", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Armor:"), " "), Variable = "Armor", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {SightRange = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Sight:"), " "), Variable = "SightRange", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {DaySightRangeBonus = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Day Sight Bonus:"), " "), Variable = "DaySightRangeBonus", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {NightSightRangeBonus = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Night Sight Bonus:"), " "), Variable = "NightSightRangeBonus", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {AttackRange = "only", BasicDamage = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Range:"), " "), Variable = "AttackRange", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {BasicDamage = "only", ButtonAction = "train-unit"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(
						Concat(_("Damage:"), " "),
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
											Add(
												TypeVar("ArcaneDamage","Value"), TypeVar("LightningDamage","Value")
											),
											TypeVar("ShadowDamage","Value")
										),
										Add(
											Add(
												TypeVar("AirDamage","Value"), TypeVar("EarthDamage","Value")
											),
											Add(
												TypeVar("WaterDamage","Value"), TypeVar("AcidDamage","Value")
											)
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
										Add(
											TypeVar("ArcaneDamage","Value"), TypeVar("LightningDamage","Value")
										),
										TypeVar("ShadowDamage","Value")
									),
									Add(
										Add(
											TypeVar("AirDamage","Value"), TypeVar("EarthDamage","Value")
										),
										Add(
											TypeVar("WaterDamage","Value"), TypeVar("AcidDamage","Value")
										)
									)
								)
							)
						)
					), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {BasicDamage = "only", ButtonAction = "train_unit_class"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(
						Concat(_("Damage:"), " "),
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
											Add(
												TypeVar("ArcaneDamage","Value"), TypeVar("LightningDamage","Value")
											),
											TypeVar("ShadowDamage","Value")
										),
										Add(
											Add(
												TypeVar("AirDamage","Value"), TypeVar("EarthDamage","Value")
											),
											Add(
												TypeVar("WaterDamage","Value"), TypeVar("AcidDamage","Value")
											)
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
										Add(
											TypeVar("ArcaneDamage","Value"), TypeVar("LightningDamage","Value")
										),
										TypeVar("ShadowDamage","Value")
									),
									Add(
										Add(
											TypeVar("AirDamage","Value"), TypeVar("EarthDamage","Value")
										),
										Add(
											TypeVar("WaterDamage","Value"), TypeVar("AcidDamage","Value")
										)
									)
								)
							)
						)
					), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {BasicDamage = "only", ButtonAction = "editor-unit"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(
						Concat(_("Damage:"), " "),
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
											Add(
												TypeVar("ArcaneDamage","Value"), TypeVar("LightningDamage","Value")
											),
											TypeVar("ShadowDamage","Value")
										),
										Add(
											Add(
												TypeVar("AirDamage","Value"), TypeVar("EarthDamage","Value")
											),
											Add(
												TypeVar("WaterDamage","Value"), TypeVar("AcidDamage","Value")
											)
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
										Add(
											TypeVar("ArcaneDamage","Value"), TypeVar("LightningDamage","Value")
										),
										TypeVar("ShadowDamage","Value")
									),
									Add(
										Add(
											TypeVar("AirDamage","Value"), TypeVar("EarthDamage","Value")
										),
										Add(
											TypeVar("WaterDamage","Value"), TypeVar("AcidDamage","Value")
										)
									)
								)
							)
						)
					), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {BasicDamage = "only", ButtonAction = "unit", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(
						Concat(_("Damage:"), " "),
						String(
							Div(
								Add(
									Add(
										Add(
											UnitVar("PiercingDamage","Value"), UnitVar("BasicDamage","Value")
										),
										Add(
											UnitVar("FireDamage","Value"), UnitVar("ColdDamage","Value")
										)
									),
									Add(
										Add(
											Add(
												TypeVar("ArcaneDamage","Value"), TypeVar("LightningDamage","Value")
											),
											TypeVar("ShadowDamage","Value")
										),
										Add(
											Add(
												TypeVar("AirDamage","Value"), TypeVar("EarthDamage","Value")
											),
											Add(
												TypeVar("WaterDamage","Value"), TypeVar("AcidDamage","Value")
											)
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
										UnitVar("PiercingDamage","Value"), UnitVar("BasicDamage","Value")
									),
									Add(
										UnitVar("FireDamage","Value"), UnitVar("ColdDamage","Value")
									)
								),
								Add(
									Add(
										Add(
											TypeVar("ArcaneDamage","Value"), TypeVar("LightningDamage","Value")
										),
										TypeVar("ShadowDamage","Value")
									),
									Add(
										Add(
											TypeVar("AirDamage","Value"), TypeVar("EarthDamage","Value")
										),
										Add(
											TypeVar("WaterDamage","Value"), TypeVar("AcidDamage","Value")
										)
									)
								)
							)
						)
					), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {BasicDamage = "only", ButtonAction = "buy", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(
						Concat(_("Damage:"), " "),
						String(
							Div(
								Add(
									Add(
										Add(
											UnitVar("PiercingDamage","Value"), UnitVar("BasicDamage","Value")
										),
										Add(
											UnitVar("FireDamage","Value"), UnitVar("ColdDamage","Value")
										)
									),
									Add(
										Add(
											Add(
												TypeVar("ArcaneDamage","Value"), TypeVar("LightningDamage","Value")
											),
											TypeVar("ShadowDamage","Value")
										),
										Add(
											Add(
												TypeVar("AirDamage","Value"), TypeVar("EarthDamage","Value")
											),
											Add(
												TypeVar("WaterDamage","Value"), TypeVar("AcidDamage","Value")
											)
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
										UnitVar("PiercingDamage","Value"), UnitVar("BasicDamage","Value")
									),
									Add(
										UnitVar("FireDamage","Value"), UnitVar("ColdDamage","Value")
									)
								),
								Add(
									Add(
										Add(
											TypeVar("ArcaneDamage","Value"), TypeVar("LightningDamage","Value")
										),
										TypeVar("ShadowDamage","Value")
									),
									Add(
										Add(
											TypeVar("AirDamage","Value"), TypeVar("EarthDamage","Value")
										),
										Add(
											TypeVar("WaterDamage","Value"), TypeVar("AcidDamage","Value")
										)
									)
								)
							)
						)
					), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Accuracy = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Accuracy:"), " "), Variable = "Accuracy", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Evasion = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Evasion:"), " "), Variable = "Evasion", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {ChargeBonus = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Charge Bonus: "), Variable = "ChargeBonus", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Backstab = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Backstab Bonus: "), Variable = "Backstab", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {BonusAgainstMounted = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Bonus vs. Mounted: "), Variable = "BonusAgainstMounted", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {BonusAgainstAir = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Bonus vs. Air: "), Variable = "BonusAgainstAir", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {BonusAgainstGiants = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Bonus vs. Giants: "), Variable = "BonusAgainstGiants", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {BonusAgainstDragons = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Bonus vs. Dragons: "), Variable = "BonusAgainstDragons", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {BonusAgainstBuildings = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Bonus vs. Buildings: "), Variable = "BonusAgainstBuildings", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Mugging = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Mugging: "), Variable = "Mugging", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Raiding = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Raiding: "), Variable = "Raiding", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {FireResistance = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Fire Resistance: "), Variable = "FireResistance", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {ColdResistance = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Cold Resistance: "), Variable = "ColdResistance", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {ArcaneResistance = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Arcane Resistance: "), Variable = "ArcaneResistance", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {LightningResistance = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Lightning Resistance: "), Variable = "LightningResistance", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {AirResistance = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Air Resistance: "), Variable = "AirResistance", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {EarthResistance = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Earth Resistance: "), Variable = "EarthResistance", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {WaterResistance = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Water Resistance: "), Variable = "WaterResistance", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {AcidResistance = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Acid Resistance: "), Variable = "AcidResistance", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {ShadowResistance = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Shadow Resistance: "), Variable = "ShadowResistance", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {HackResistance = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Hack Resistance: "), Variable = "HackResistance", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {PierceResistance = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Pierce Resistance: "), Variable = "PierceResistance", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {BluntResistance = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Blunt Resistance: "), Variable = "BluntResistance", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Transport = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Transport: "), String(TypeVar("Transport", "Max"))), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {GarrisonedRangeBonus = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Garrisoned Range Bonus: +"), String(TypeVar("GarrisonedRangeBonus", "Value"))), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Speed = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Speed:"), " "), Variable = "Speed", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {RailSpeedBonus = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Rail Speed Bonus: "), Variable = "RailSpeedBonus", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {MaxHarvesters = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Max Workers:"), " "), Variable = "MaxHarvesters", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {GatheringBonus = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Gathering Bonus: "), Variable = "GatheringBonus", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {CopperGatheringBonus = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Copper Mining Bonus: "), Variable = "CopperGatheringBonus", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {SilverGatheringBonus = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Silver Mining Bonus: "), Variable = "SilverGatheringBonus", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {GoldGatheringBonus = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Gold Mining Bonus: "), Variable = "GoldGatheringBonus", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {IronGatheringBonus = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Iron Mining Bonus: "), Variable = "IronGatheringBonus", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {MithrilGatheringBonus = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Mithril Mining Bonus: "), Variable = "MithrilGatheringBonus", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {LumberGatheringBonus = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Lumber Gathering Bonus: "), Variable = "LumberGatheringBonus", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {StoneGatheringBonus = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Stone Gathering Bonus: "), Variable = "StoneGatheringBonus", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {CoalGatheringBonus = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Coal Mining Bonus: "), Variable = "CoalGatheringBonus", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {GemsGatheringBonus = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Gem Mining Bonus: "), Variable = "GemsGatheringBonus", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {JewelryGatheringBonus = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Jewelry Production Bonus: "), Variable = "JewelryGatheringBonus", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {FurnitureGatheringBonus = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Furniture Production Bonus: "), Variable = "FurnitureGatheringBonus", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {TimeEfficiencyBonus = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Time Efficiency Bonus: "), Variable = "TimeEfficiencyBonus", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {ResearchSpeedBonus = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Research Speed Bonus: "), Variable = "ResearchSpeedBonus", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {UnitTypeClass = "merchant", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Text", {Text = _("Trade Capacity: 100"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {UnitTypeClass = "heroic_merchant", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Text", {Text = _("Trade Capacity: 100"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {UnitTypeClass = "caravan", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Text", {Text = _("Trade Capacity: 400"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {UnitTypeClass = "transport_ship", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Text", {Text = _("Trade Capacity: 600"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {UnitTypeClass = "aether_transport_ship", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Text", {Text = _("Trade Capacity: 600"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Demand = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Food Cost:"), " "), Variable = "Demand", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Supply = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Food Supply:"), " "), Variable = "Supply", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {KnowledgeMagic = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Knowledge (Magic): "), Variable = "KnowledgeMagic", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {KnowledgeWarfare = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Knowledge (Warfare): "), Variable = "KnowledgeWarfare", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {KnowledgeMining = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Knowledge (Mining): "), Variable = "KnowledgeMining", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {DisembarkmentBonus = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Disembarkment Bonus"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {DehydrationImmunity = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = "Dehydration Immunity", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {RegenerationAura = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = "Regeneration Aura", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {LeadershipAura = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = "Leadership Aura", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {HydratingAura = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = "Hydrating Aura", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {EtherealVision = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = "Ethereal Vision", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Trader = "only", UnitDomain = "land", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Trades with foreign markets"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Trader = "only", UnitDomain = "water", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Trades with foreign docks"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {TownHall = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Stores Resources"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {TownHall = "false", CanStore = "copper", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Stores Copper"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {TownHall = "false", CanStore = "silver", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Stores Silver"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {TownHall = "false", CanStore = "gold", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Stores Gold"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {TownHall = "false", CanStore = "iron", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Stores Iron"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {TownHall = "false", CanStore = "mithril", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Stores Mithril"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {TownHall = "false", CanStore = "lumber", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Stores Lumber"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {TownHall = "false", CanStore = "stone", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Stores Stone"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {TownHall = "false", CanStore = "leather", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Stores Leather"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {AttackFromTransporter = "only", Transport = "only", Building = "false", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Transported Can Attack"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {AttackFromTransporter = "only", Transport = "only", Building = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Garrisoned Can Attack"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {GarrisonTraining = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Garrison Training"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {ImproveIncomes = "only", Opponent = "false", Neutral = "false"}, HighlightColor = "yellow",
					More = {"Text", {Text = TypeImproveIncomes("Type"), Font = PopupDescriptionFont}}
				},
				-- Description
				{ 	Margin = {1, 1}, Condition = {ButtonAction = "editor-unit"}, 
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				}, 
				{ 	Condition = {ButtonAction = "editor-unit"}, HighlightColor = "yellow",
					More = {"Text", {Text = _("Right-click to edit properties"), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				-- Description
				{ 	Margin = {1, 1}, Condition = {HasDescription = true}, 
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				}, 
				{ 	Condition = {HasDescription = true}, HighlightColor = "yellow",
					More = {"ButtonInfo", {InfoType = "Description", MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				{ 	Margin = {1, 1}, Condition = {ButtonAction = "unit"}, 
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				}, 
				{ 	Condition = {ButtonAction = "unit"}, HighlightColor = "yellow",
					More = {"Text", {Text = _("Left-click to center"), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				{ 	Condition = {ButtonAction = "unit"}, HighlightColor = "yellow",
					More = {"Text", {Text = _("Middle-click to track"), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Encyclopedia = true, ButtonAction = "unit"}, HighlightColor = "yellow",
					More = {"Text", {Text = _("Right-click to see encyclopedia"), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
		}	
	})

	DefinePopup({
		Ident = "popup_item",
		BackgroundColor = PopupBackgroundColor,
		BorderColor = PopupBorderColor,
		MinWidth = 128,
		DefaultFont = PopupDescriptionFont,
		Contents = {
				{	HighlightColor = "yellow",
					More = {"ButtonInfo", {InfoType = "Hint", Font = PopupFont}}
				},
				{ 	Margin = {1, 1}, Condition = {ButtonAction = "train-unit", RequirementsString = "only"},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {ButtonAction = "train-unit", RequirementsString = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = Concat(_("Requirements: "), TypeRequirementsString("Type")), MaxWidth = math.max(256, Video.Width / 5), Font = PopupDescriptionFont}}
				},
				{ 	Margin = {1, 1}, Condition = {ButtonAction = "train_unit_class", RequirementsString = "only"},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {ButtonAction = "train_unit_class", RequirementsString = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = Concat(_("Requirements: "), TypeRequirementsString("Type")), MaxWidth = math.max(256, Video.Width / 5), Font = PopupDescriptionFont}}
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
					More = {"Variable", {Text = Concat(Concat(_("Class:"), " "), TypeClass("Type")), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {HitPointBonus = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Hit Points:"), " "), Variable = "HitPointBonus", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {BasicDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Damage:"), " "), Variable = "BasicDamage", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {FireDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Fire Damage: "), Variable = "FireDamage", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {ColdDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Cold Damage: "), Variable = "ColdDamage", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {ArcaneDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Arcane Damage: "), Variable = "ArcaneDamage", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {LightningDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Lightning Damage: "), Variable = "LightningDamage", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {AirDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Air Damage: "), Variable = "AirDamage", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {EarthDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Earth Damage: "), Variable = "EarthDamage", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {WaterDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Water Damage: "), Variable = "WaterDamage", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {AcidDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Acid Damage: "), Variable = "AcidDamage", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {ShadowDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Shadow Damage: "), Variable = "ShadowDamage", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {ThornsDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Thorns Damage: "), Variable = "ThornsDamage", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {ChargeBonus = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Charge Bonus: "), String(TypeVar("ChargeBonus","Value")), "%"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Backstab = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Backstab Bonus: "), String(TypeVar("Backstab","Value")), "%"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Mugging = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Mugging: "), String(TypeVar("Mugging","Value")), "%"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Raiding = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Raiding: "), String(TypeVar("Raiding","Value")), "%"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {AttackRange = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Range:"), " "), Variable = "AttackRange", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Accuracy = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Accuracy:"), " "), Variable = "Accuracy", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Armor = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Armor:"), " "), Variable = "Armor", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Evasion = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Evasion:"), " "), Variable = "Evasion", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {FireResistance = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Fire Resistance: +"), String(TypeVar("FireResistance","Value")), "%"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {ColdResistance = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Cold Resistance: +"), String(TypeVar("ColdResistance","Value")), "%"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {ArcaneResistance = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Arcane Resistance: +"), String(TypeVar("ArcaneResistance","Value")), "%"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {LightningResistance = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Lightning Resistance: +"), String(TypeVar("LightningResistance","Value")), "%"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {AirResistance = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Air Resistance: +"), String(TypeVar("AirResistance","Value")), "%"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {EarthResistance = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Earth Resistance: +"), String(TypeVar("EarthResistance","Value")), "%"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {WaterResistance = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Water Resistance: +"), String(TypeVar("WaterResistance","Value")), "%"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {AcidResistance = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Acid Resistance: +"), String(TypeVar("AcidResistance","Value")), "%"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {ShadowResistance = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Shadow Resistance: +"), String(TypeVar("ShadowResistance","Value")), "%"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {HackResistance = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Hack Resistance: +"), String(TypeVar("HackResistance","Value")), "%"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {PierceResistance = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Pierce Resistance: +"), String(TypeVar("PierceResistance","Value")), "%"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {BluntResistance = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Blunt Resistance: +"), String(TypeVar("BluntResistance","Value")), "%"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Speed = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Speed:"), " "), Variable = "Speed", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {SightRange = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Sight:"), " "), Variable = "SightRange", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {HitPointHealing = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Healing: "), Variable = "HitPointHealing", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {ManaRestoration = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Mana Restoration: "), Variable = "ManaRestoration", Font = PopupDescriptionFont}}
				},
				-- Description
				{ 	Margin = {1, 1}, Condition = {HasDescription = true}, 
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				}, 
				{ 	Condition = {HasDescription = true}, HighlightColor = "yellow",
					More = {"ButtonInfo", {InfoType = "Description", MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
		}	
	})

	DefinePopup({
		Ident = "popup_item_inventory",
		BackgroundColor = PopupBackgroundColor,
		BorderColor = PopupBorderColor,
		MinWidth = 128,
		DefaultFont = PopupDescriptionFont,
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
				{ 	Condition = {ButtonAction = "buy"}, Margin = {1, 1},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{	Condition = {ButtonAction = "buy"},
					More = {"Costs", {Font = PopupFont}}, HighlightColor = "yellow",
				}, 
				{ 	Margin = {1, 1},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				}, 
				{ 	Condition = {Equipped = "false", Equippable = "only"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = _("Right-click to equip"), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Equipped = "only"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = _("Right-click to de-equip"), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Consumable = "only", CanUse = "only", Work = "false", Elixir = "false"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = _("Right-click to use"), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Work = "only", CanUse = "only", ReadWork = "false"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = _("Right-click to read"), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Work = "only", ReadWork = "only"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = _("Already read"), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Elixir = "only", CanUse = "only", ConsumedElixir = "false"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = _("Right-click to consume"), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Elixir = "only", ConsumedElixir = "only"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = _("Already consumed"), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Bound = "false"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = _("Left-click to drop"), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Bound = "only"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = _("Cannot be dropped"), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Identified = "false"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = Concat(
						Concat(
							_("Unidentified (requires Knowledge (Magic) "),
							String(UnitVar("MagicLevel", "Value"))
						),
						_(" to identify)")
					), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Weapon = "only", Equippable = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = _("Replaces weapon technology bonuses when equipped"), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Shield = "only", Equippable = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = _("Replaces shield technology bonuses when equipped"), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Arrows = "only", Equippable = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = _("Replaces arrow technology bonuses when equipped"), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				{ 	Margin = {1, 1},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {Unique = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Type: "), TypeName("Type")), Font = PopupDescriptionFont}}
				},
				{ 	HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(Concat(_("Class:"), " "), TypeClass("Type")), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Unique = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = _("Unique Item"), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Work = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = _("Literary Work"), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Elixir = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = _("Elixir"), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Spell = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = Concat(_("Casts "), UnitSpell("Unit")), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Elixir = "only", HitPoints = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Hit Points:"), " "), Variable = "HitPoints", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {HitPointBonus = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Hit Points:"), " "), Variable = "HitPointBonus", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Regeneration = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = Concat(
							Concat(
								_("Regeneration: "),
								If(GreaterThan(UnitVar("HitPointBonus", "IncreaseChange"), 0), "+", "")
							),
							String(UnitVar("HitPointBonus", "IncreaseChange"))
						),
						Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Mana = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Mana: "), Variable = "Mana", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {BasicDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(
						Concat(
							Concat(_("Damage:"), " "),
							If(GreaterThan(Add(UnitVar("BasicDamage", "Change"), UnitVar("PiercingDamage", "Change")), 0), "+", "")
						),
						String(Add(UnitVar("BasicDamage", "Change"), UnitVar("PiercingDamage", "Change")))
					),
					Font = PopupDescriptionFont}}
				},
				{ 	Condition = {FireDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Fire Damage: "), Variable = "FireDamage", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {ColdDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Cold Damage: "), Variable = "ColdDamage", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {ArcaneDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Arcane Damage: "), Variable = "ArcaneDamage", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {LightningDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Lightning Damage: "), Variable = "LightningDamage", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {AirDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Air Damage: "), Variable = "AirDamage", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {EarthDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Earth Damage: "), Variable = "EarthDamage", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {WaterDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Water Damage: "), Variable = "WaterDamage", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {AcidDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Acid Damage: "), Variable = "AcidDamage", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {ShadowDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Shadow Damage: "), Variable = "ShadowDamage", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {ThornsDamage = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Thorns Damage: "), Variable = "ThornsDamage", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {ChargeBonus = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = Concat(
							Concat(
								Concat(
									_("Charge Bonus: "),
									If(GreaterThan(UnitVar("ChargeBonus", "Change"), 0), "+", "")
								),
								String(UnitVar("ChargeBonus", "Change"))
							),
							"%"
						),
						Font = PopupDescriptionFont}}
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
						Font = PopupDescriptionFont}}
				},
				{ 	Condition = {CriticalStrikeChance = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = Concat(
							Concat(
								Concat(
									_("Critical Strike Chance: "),
									If(GreaterThan(UnitVar("CriticalStrikeChance", "Change"), 0), "+", "")
								),
								String(UnitVar("CriticalStrikeChance", "Change"))
							),
							"%"
						),
						Font = PopupDescriptionFont}}
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
						Font = PopupDescriptionFont}}
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
						Font = PopupDescriptionFont}}
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
						Font = PopupDescriptionFont}}
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
						Font = PopupDescriptionFont}}
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
						Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Mugging = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = Concat(
							Concat(
								Concat(
									_("Mugging: "),
									If(GreaterThan(UnitVar("Mugging", "Change"), 0), "+", "")
								),
								String(UnitVar("Mugging", "Change"))
							),
							"%"
						),
						Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Raiding = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = Concat(
							Concat(
								Concat(
									_("Raiding: "),
									If(GreaterThan(UnitVar("Raiding", "Change"), 0), "+", "")
								),
								String(UnitVar("Raiding", "Change"))
							),
							"%"
						),
						Font = PopupDescriptionFont}}
				},
				{ 	Condition = {AttackRange = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(
						Concat(
							Concat(_("Range:"), " "),
							If(GreaterThan(UnitVar("AttackRange", "Change"), 0), "+", "")
						),
						String(UnitVar("AttackRange", "Change"))
					),
					Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Accuracy = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Accuracy:"), " "), Variable = "Accuracy", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Armor = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Armor:"), " "), Variable = "Armor", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Evasion = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Evasion:"), " "), Variable = "Evasion", Font = PopupDescriptionFont}}
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
						Font = PopupDescriptionFont}}
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
						Font = PopupDescriptionFont}}
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
						Font = PopupDescriptionFont}}
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
						Font = PopupDescriptionFont}}
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
						Font = PopupDescriptionFont}}
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
						Font = PopupDescriptionFont}}
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
						Font = PopupDescriptionFont}}
				},
				{ 	Condition = {AcidResistance = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = Concat(
							Concat(
								Concat(
									_("Acid Resistance: "),
									If(GreaterThan(UnitVar("AcidResistance", "Change"), 0), "+", "")
								),
								String(UnitVar("AcidResistance", "Change"))
							),
							"%"
						),
						Font = PopupDescriptionFont}}
				},
				{ 	Condition = {ShadowResistance = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = Concat(
							Concat(
								Concat(
									_("Shadow Resistance: "),
									If(GreaterThan(UnitVar("ShadowResistance", "Change"), 0), "+", "")
								),
								String(UnitVar("ShadowResistance", "Change"))
							),
							"%"
						),
						Font = PopupDescriptionFont}}
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
						Font = PopupDescriptionFont}}
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
						Font = PopupDescriptionFont}}
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
						Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Speed = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Speed:"), " "), Variable = "Speed", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {SightRange = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Sight:"), " "), Variable = "SightRange", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {DaySightRangeBonus = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Day Sight Bonus:"), " "), Variable = "DaySightRangeBonus", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {NightSightRangeBonus = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Night Sight Bonus:"), " "), Variable = "NightSightRangeBonus", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {HitPointHealing = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Healing: "), Variable = "HitPointHealing", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {ManaRestoration = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Mana Restoration: "), Variable = "ManaRestoration", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {GatheringBonus = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Gathering Bonus: "), Variable = "GatheringBonus", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {CopperGatheringBonus = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Copper Mining Bonus: "), Variable = "CopperGatheringBonus", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {SilverGatheringBonus = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Silver Mining Bonus: "), Variable = "SilverGatheringBonus", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {GoldGatheringBonus = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Gold Mining Bonus: "), Variable = "GoldGatheringBonus", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {IronGatheringBonus = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Iron Mining Bonus: "), Variable = "IronGatheringBonus", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {MithrilGatheringBonus = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Mithril Mining Bonus: "), Variable = "MithrilGatheringBonus", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {LumberGatheringBonus = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Lumber Gathering Bonus: "), Variable = "LumberGatheringBonus", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {StoneGatheringBonus = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Stone Gathering Bonus: "), Variable = "StoneGatheringBonus", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {CoalGatheringBonus = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Coal Mining Bonus: "), Variable = "CoalGatheringBonus", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {GemsGatheringBonus = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Gem Mining Bonus: "), Variable = "GemsGatheringBonus", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {JewelryGatheringBonus = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Jewelry Production Bonus: "), Variable = "JewelryGatheringBonus", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {FurnitureGatheringBonus = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Furniture Production Bonus: "), Variable = "FurnitureGatheringBonus", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {KnowledgeMagic = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Knowledge (Magic): "), Variable = "KnowledgeMagic", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {KnowledgeWarfare = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Knowledge (Warfare): "), Variable = "KnowledgeWarfare", Font = PopupDescriptionFont}}
				},
				{ 	Condition = {KnowledgeMining = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Knowledge (Mining): "), Variable = "KnowledgeMining", Font = PopupDescriptionFont}}
				},
				-- Knowledge effects
				{ 	Condition = {KnowledgeMagic = "only"},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {KnowledgeMagic = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = _("Every 5 levels in Knowledge (Magic) grant +1 Mana"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {KnowledgeWarfare = "only"},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {KnowledgeWarfare = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Every 5 levels in Knowledge (Warfare) grant +1 HP"), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {KnowledgeMining = "only"},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {KnowledgeMining = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = _("Every 25 levels in Knowledge (Mining) grant +1 Mining Bonus"), Font = PopupDescriptionFont}}
				},
				{ 	Margin = {1, 1}, Condition = {Unique = "only", Identified = "only", UniqueSet = "only"}, 
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				}, 
				{ 	Condition = {Unique = "only", Identified = "only", UniqueSet = "only"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Set: "), UnitUniqueSet("Unit")), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Unique = "only", Identified = "only", UniqueSet = "only"}, HighlightColor = "dark_gray",
					More = {"Text", {Text = UnitUniqueSetItems("Unit"), Font = PopupDescriptionFont}}
				},
				-- Description
				{ 	Margin = {1, 1}, Condition = {HasDescription = true}, 
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				}, 
				{ 	Condition = {HasDescription = true}, HighlightColor = "yellow",
					More = {"ButtonInfo", {InfoType = "Description", MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				{ 	Margin = {1, 1}, Condition = {Unique = "only", Identified = "only", Quote = true},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				}, 
				{ 	Margin = {1, 1}, Condition = {Work = "only", Unique = "false", Quote = true},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				}, 
				{ 	Margin = {1, 1}, Condition = {Elixir = "only", Unique = "false", Quote = true},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				}, 
				{ 	Condition = {Unique = "only", Identified = "only", Quote = true}, HighlightColor = "yellow",
					More = {"Text", {Text = UnitQuote("Unit"), MaxWidth = math.max(256, Video.Width / 5), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Work = "only", Unique = "false", Quote = true}, HighlightColor = "yellow",
					More = {"Text", {Text = UnitQuote("Unit"), MaxWidth = math.max(256, Video.Width / 5), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Elixir = "only", Unique = "false", Quote = true}, HighlightColor = "yellow",
					More = {"Text", {Text = UnitQuote("Unit"), MaxWidth = math.max(256, Video.Width / 5), Font = PopupDescriptionFont}}
				},
		}	
	})

	DefinePopup({
		Ident = "popup_research",
		BackgroundColor = PopupBackgroundColor,
		BorderColor = PopupBorderColor,
		MinWidth = 128,
		DefaultFont = PopupDescriptionFont,
		Contents = {
				{	HighlightColor = "yellow",
					More = {"ButtonInfo", {InfoType = "Hint", Font = PopupFont}}
				}, 
				-- Upgrade Requirements (if the upgrade is disallowed)
				{ 	Margin = {1, 1}, Condition = {RequirementsString = "only", UpgradeResearched = "false"},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {RequirementsString = "only", UpgradeResearched = "false"}, HighlightColor = "yellow",
					More = {"Text", {Text = Concat(_("Requirements: "), UpgradeRequirementsString("Upgrade")), MaxWidth = math.max(256, Video.Width / 5), Font = PopupDescriptionFont}}
				},
				-- Already Acquired
				{ 	Margin = {1, 1}, Condition = {UpgradeResearched = "only"},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {UpgradeResearched = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = _("Already acquired"), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				},
				-- Costs
				{ 	Margin = {1, 1}, Condition = {FactionUpgrade = "false", UpgradeResearched = "false"},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				}, 
				{ 	Condition = {FactionUpgrade = "false", UpgradeResearched = "false"}, More = {"Costs", {Font = PopupFont}}, HighlightColor = "yellow",
				},
				-- Description
				{ 	Margin = {1, 1}, Condition = {HasDescription = true}, 
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				}, 
				{ 	Condition = {HasDescription = true}, HighlightColor = "yellow",
					More = {"ButtonInfo", {InfoType = "Description", MaxWidth = math.max(256, Video.Width / 5), Font = PopupDescriptionFont}}
				},
				-- Faction Button Information
				{ 	Margin = {1, 1}, Condition = {FactionUpgrade = "only"},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {FactionUpgrade = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = Concat(_("Civilization: "), FactionCivilization("Faction")), MaxWidth = math.max(256, Video.Width / 5), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {FactionUpgrade = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = Concat(_("Type: "), FactionType("Faction")), MaxWidth = math.max(256, Video.Width / 5), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {FactionUpgrade = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = Concat(_("Faction Bonus: "), UpgradeEffectsString("Upgrade")), MaxWidth = math.max(256, Video.Width / 5), Font = PopupDescriptionFont}}
				},
				{ 	Margin = {1, 1}, Condition = {FactionUpgrade = "only", FactionCoreSettlements = "only"}, 
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {FactionUpgrade = "only", FactionCoreSettlements = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = _("Required Settlements:"), MaxWidth = math.max(256, Video.Width / 5), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {FactionUpgrade = "only", FactionCoreSettlements = "only"}, HighlightColor = "dark_gray",
					More = {"Text", {Text = FactionCoreSettlements("Faction"), Font = PopupDescriptionFont}}
				},
				-- Dynasty Button Information
				{ 	Margin = {1, 1}, Condition = {DynastyUpgrade = "only"},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {DynastyUpgrade = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = Concat(_("Dynasty Bonus: "), UpgradeEffectsString("Upgrade")), MaxWidth = math.max(256, Video.Width / 5), Font = PopupDescriptionFont}}
				},
				-- AutoCast Tooltip
				{ 	Margin = {1, 1}, Condition = {ButtonAction = "cast-spell", AutoCast = "only"},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {ButtonAction = "cast-spell", AutoCast = "only"}, TextColor = "white", HighlightColor = "yellow",
					More = {"Text", {Text = _("~<CTRL~>-click on the button toggles autocast"), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
				}
		}	
	})
	
	DefinePopup({
		Ident = "popup_learn_ability",
		BackgroundColor = PopupBackgroundColor,
		BorderColor = PopupBorderColor,
		MinWidth = 128,
		DefaultFont = PopupDescriptionFont,
		Contents = {
			{	HighlightColor = "yellow",
				More = {"ButtonInfo", {InfoType = "Hint", Font = PopupFont}}
			}, 
			-- Upgrade Requirements (if the upgrade is disallowed)
			{ 	Margin = {1, 1}, Condition = {RequirementsString = "only", UpgradeResearched = "false"},
				More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
			},
			{ 	Condition = {RequirementsString = "only", UpgradeResearched = "false"}, HighlightColor = "yellow",
				More = {"Text", {Text = Concat(_("Requirements: "), UpgradeRequirementsString("Upgrade")), MaxWidth = math.max(256, Video.Width / 5), Font = PopupDescriptionFont}}
			},
			-- Already Acquired
			{ 	Margin = {1, 1}, Condition = {Ability = "false", UpgradeResearched = "only"},
				More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
			},
			{ 	Condition = {Ability = "false", UpgradeResearched = "only"}, HighlightColor = "yellow",
				More = {"Text", {Text = _("Already acquired"), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
			},
			-- Other Information
			{ 	Margin = {1, 1}, Condition = {Ability = "only", UpgradeResearched = "false"}, 
				More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
			},
			{ 	Condition = {Ability = "only", UpgradeResearched = "false"}, HighlightColor = "yellow",
				More = {"Text", {Text = _("Requires 1 Level Up Point"), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
			},
			{ 	Condition = {Ability = "only"}, Margin = {1, 1}, 
				More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
			},
			{ 	Condition = {Ability = "only"}, HighlightColor = "yellow",
				More = {"Text", {Text = Concat(
						_("Max Limit: "),
						Concat(
							String(function() return GetUnitVariable(-1, "IndividualUpgrade", GetCurrentButtonValueStr()) end),
							Concat("/", UpgradeMaxLimit("Upgrade"))
						)
					),
					MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
			},
			-- Description
			{ 	Margin = {1, 1}, Condition = {HasDescription = true}, 
				More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
			}, 
			{ 	Condition = {HasDescription = true}, HighlightColor = "yellow",
				More = {"ButtonInfo", {InfoType = "Description", MaxWidth = math.max(256, Video.Width / 5), Font = PopupDescriptionFont}}
			},
		}	
	})
	
	DefinePopup({
		Ident = "popup_unit_under_cursor",
		BackgroundColor = PopupBackgroundColor,
		BorderColor = PopupBorderColor,
		MinWidth = 32,
		DefaultFont = PopupDescriptionFont,
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
				{ 	Condition = {Building = "only", SettlementName = "only", ButtonAction = "unit"}, Margin = {1, 1},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {Building = "only", SettlementName = "false", SiteName = "only", ButtonAction = "unit"}, Margin = {1, 1},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {Building = "only", SiteName = "only", ButtonAction = "unit"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Site: "), UnitSiteName("Unit")), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Building = "only", SettlementName = "only", ButtonAction = "unit"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Settlement: "), UnitSettlementName("Unit")), Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Building = "only", UnitTypeClass = "dock", CanActiveHarvest = true, ButtonAction = "unit"}, Margin = {1, 1},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {Building = "only", UnitTypeClass = "dock", CanActiveHarvest = true, ButtonAction = "unit"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Trade Potential: "),
						function()
							local trade_potential = GetPlayerData(GetThisPlayer(), "TradePotentialWith", GetUnitVariable(-2, "Player"))
							local trade_potential_description = ""
							if (trade_potential < 100) then
								trade_potential_description = "Poor"
							elseif (trade_potential < 800) then
								trade_potential_description = "Average"
							elseif (trade_potential < 4000) then
								trade_potential_description = "Promising"
							else
								trade_potential_description = "Excellent"
							end
							trade_potential_description = trade_potential_description .. " (" .. trade_potential .. ")"
							return trade_potential_description
						end
					),
					Font = PopupDescriptionFont}}
				},
				{ 	Condition = {Building = "only", UnitTypeClass = "market", CanActiveHarvest = true, ButtonAction = "unit"}, Margin = {1, 1},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {Building = "only", UnitTypeClass = "market", CanActiveHarvest = true, ButtonAction = "unit"}, HighlightColor = "yellow",
					More = {"Variable", {Text = Concat(_("Trade Potential: "),
						function()
							local trade_potential = GetPlayerData(GetThisPlayer(), "TradePotentialWith", GetUnitVariable(-2, "Player"))
							local trade_potential_description = ""
							if (trade_potential < 100) then
								trade_potential_description = "Poor"
							elseif (trade_potential < 800) then
								trade_potential_description = "Average"
							elseif (trade_potential < 4000) then
								trade_potential_description = "Promising"
							else
								trade_potential_description = "Excellent"
							end
							trade_potential_description = trade_potential_description .. " (" .. trade_potential .. ")"
							return trade_potential_description
						end
					),
					Font = PopupDescriptionFont}}
				}
		}	
	})
	
	DefinePopup({
		Ident = "popup_tile_under_cursor",
		BackgroundColor = PopupBackgroundColor,
		BorderColor = PopupBorderColor,
		MinWidth = 32,
		DefaultFont = PopupDescriptionFont,
		Contents = {
				{	Condition = {terrain_feature = "only"}, HighlightColor = "yellow",
					More = {"ButtonInfo", {InfoType = "Hint", Font = PopupFont}}
				}, 
				{ 	Condition = {terrain_feature = "only", world = "only"}, Margin = {1, 1},
					More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
				},
				{ 	Condition = {world = "only"}, HighlightColor = "yellow",
					More = {"Text", {Text = Concat(_("World: "), TileWorldName("Tile")), Font = PopupDescriptionFont}}
				}
		}	
	})
	
	DefinePopup({
		Ident = "popup_resource",
		BackgroundColor = PopupBackgroundColor,
		BorderColor = PopupBorderColor,
		MinWidth = 128,
		DefaultFont = PopupDescriptionFont,
		Contents = {
			{	HighlightColor = "yellow",
				More = {"ButtonInfo", {InfoType = "Hint", Font = PopupFont}}
			}, 
			{ 	Margin = {1, 1},
				More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
			},
			{ 	TextColor = "white", HighlightColor = "yellow",
				More = {"Text", {Text = Concat(ResourceName("Resource"), Concat(" Stored: ", String(PlayerData(GetThisPlayer(), "Resources", ResourceIdent("Resource"))))), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
			},
			--[[
			{ 	Condition = {ButtonValue = "copper", ResearchedUpgradeClass = "coinage"}, HighlightColor = "yellow",
				More = {"Text", {Text = Concat(_("Currency: "),
						function()
							return GetPlayerData(GetThisPlayer(), "Currency")
						end
					),
					Font = PopupDescriptionFont}}
			},
			--]]
			{ 	Condition = {ChildResources = "only"}, HighlightColor = "yellow",
				More = {"Text", {Text = ResourceConversionRates("Resource"), Font = PopupDescriptionFont}}
			},
			{ 	Condition = {ImproveIncomes = "only"}, HighlightColor = "yellow",
				More = {"Text", {Text = ResourceImproveIncomes("Resource"), Font = PopupDescriptionFont}}
			},
		}	
	})
	
	DefinePopup({
		Ident = "popup_food",
		BackgroundColor = PopupBackgroundColor,
		BorderColor = PopupBorderColor,
		MinWidth = 128,
		DefaultFont = PopupDescriptionFont,
		Contents = {
			{	HighlightColor = "yellow",
				More = {"ButtonInfo", {InfoType = "Hint", Font = PopupFont}}
			}, 
			{ 	Margin = {1, 1},
				More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
			},
			{ 	TextColor = "white", HighlightColor = "yellow",
				More = {"Text", {Text = Concat("Population: ", String(PlayerData(GetThisPlayer(), "Population"))), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
			}
		}	
	})
	
	DefinePopup({
		Ident = "popup_territory",
		BackgroundColor = PopupBackgroundColor,
		BorderColor = PopupBorderColor,
		MinWidth = 128,
		DefaultFont = PopupDescriptionFont,
		Contents = {
			{	HighlightColor = "yellow",
				More = {"ButtonInfo", {InfoType = "Hint", Font = PopupFont}}
			}, 
			{ 	Condition = {Overlord = "only"}, Margin = {1, 1},
				More = {"Line", {Width = 0, Height = 1, Color = PopupBorderColor}}
			},
			{ 	Condition = {Overlord = "only"}, TextColor = "white", HighlightColor = "yellow",
				More = {"Text", {Text = Concat("Overlord: ", PlayerFullName(PlayerData(ButtonPlayer("Player"), "Overlord"))), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
			},
			{ 	Condition = {TopOverlord = "only"}, TextColor = "white", HighlightColor = "yellow",
				More = {"Text", {Text = Concat("Top Overlord: ", PlayerFullName(PlayerData(ButtonPlayer("Player"), "TopOverlord"))), MaxWidth = Video.Width / 5, Font = PopupDescriptionFont}}
			}
		}	
	})
	
	DefinePopup({
		Ident = "popup_settlement",
		BackgroundColor = PopupBackgroundColor,
		BorderColor = PopupBorderColor,
		MinWidth = 128,
		DefaultFont = PopupDescriptionFont,
		Contents = {
			{	HighlightColor = "yellow",
				More = {"ButtonInfo", {InfoType = "Hint", Font = PopupFont}}
			}
		}	
	})
end

ui_loaded_first_time = true
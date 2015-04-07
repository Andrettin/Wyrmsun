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
--      ui.lua - Define the goblin user interface
--
--      (c) Copyright 2014 by Andrettin
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

DefineCursor({
  Name = "cursor-point",
  Race = "goblin",
  File = "dwarf/ui/cursors/dwarven_gauntlet.png",
  HotSpot = { 3,  2},
  Size = {28, 32}})
DefineCursor({
  Name = "cursor-green-hair",
  Race = "goblin",
  File = "ui/cursors/green.png",
  HotSpot = {15, 15},
  Size = {32, 32}})
DefineCursor({
  Name = "cursor-yellow-hair",
  Race = "goblin",
  File = "ui/cursors/yellow.png",
  HotSpot = {15, 15},
  Size = {32, 32}})
DefineCursor({
  Name = "cursor-red-hair",
  Race = "goblin",
  File = "ui/cursors/red.png",
  HotSpot = {15, 15},
  Size = {32, 32}})

--;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
--	* Race goblin.
--;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

wyrmsun.playlist = { "music/knalgan_theme.ogg", "music/knolls.ogg", "music/battle.ogg" }

function GoblinScreen(screen_width, screen_height)
  local info_panel_x = 0
  local info_panel_y = 160

  local ui = {
    "info-panel", {
      "panels", {"panel-general-contents", "panel-attack-unit-contents",
                "panel-all-unit-contents", "panel-building-contents"},
      "completed-bar", {
        "color", {48, 100, 4}
      }
    }
  }
end

UI.NormalFontColor = "white"
UI.ReverseFontColor = "yellow"

UI.Fillers:clear()

function AddFiller(file, x, y)
	if CanAccessFile(file) == true then
		b = CFiller:new_local()
		b.G = CGraphic:New(file)
		b.X = x
		b.Y = y
		UI.Fillers:push_back(b)
	end
end

AddFiller("dwarf/ui/filler-left_" .. Video.Height .. ".png", 0, 0)
AddFiller("dwarf/ui/resource_" .. Video.Width .. ".png", 16, 0)
AddFiller("dwarf/ui/statusline_" .. Video.Width .. ".png", 16, Video.Height - 16)
AddFiller("dwarf/ui/buttonpanel_" .. Video.Height .. ".png", Video.Width - 176, 336)
AddFiller("dwarf/ui/menubutton.png", Video.Width - 176, 0)
AddFiller("dwarf/ui/minimap.png", Video.Width - 176, 24)

UI.InfoPanel.X = Video.Width - 176
UI.InfoPanel.Y = 160
UI.InfoPanel.G = CGraphic:New("dwarf/ui/infopanel.png", 176, 176)

b = CUIButton:new()
b.X = Video.Width - 176 + 9
b.Y = 160 + 9
b.Style = FindButtonStyle("icon")
UI.SingleSelectedButton = b

UI.SelectedButtons:clear()

function AddSelectedButton(x, y)
	b = CUIButton:new_local()
	b.X = Video.Width - 176 + x
	b.Y = y
	b.Style = FindButtonStyle("icon")
	UI.SelectedButtons:push_back(b)
end

AddSelectedButton(9, 160 + 9)
AddSelectedButton(65, 160 + 9)
AddSelectedButton(121, 160 + 9)
AddSelectedButton(9, 160 + 63)
AddSelectedButton(65, 160 + 63)
AddSelectedButton(121, 160 + 63)
AddSelectedButton(9, 160 + 117)
AddSelectedButton(65, 160 + 117)
AddSelectedButton(121, 160 + 117)

UI.MaxSelectedFont = Fonts["game"]
UI.MaxSelectedTextX = Video.Width - 176 + 10
UI.MaxSelectedTextY = 160 + 10

b = CUIButton:new()
b.X = Video.Width - 176 + 110
b.Y = 160 + 11 + 70
b.Style = FindButtonStyle("icon")
UI.SingleTrainingButton = b

UI.TrainingButtons:clear()

function AddTrainingButton(x, y)
	b = CUIButton:new_local()
	b.X = Video.Width - 176 + x
	b.Y = y
	b.Style = FindButtonStyle("icon")
	UI.TrainingButtons:push_back(b)
end

AddTrainingButton(9, 219)
AddTrainingButton(65, 219)
AddTrainingButton(121, 219)
AddTrainingButton(9, 266)
AddTrainingButton(65, 266)
AddTrainingButton(121, 266)

b = CUIButton:new()
b.X = Video.Width - 176 + 110
b.Y = 160 + 11 + 70
b.Style = FindButtonStyle("icon")
UI.UpgradingButton = b

b = CUIButton:new()
b.X = Video.Width - 176 + 110
b.Y = 160 + 11 + 70
b.Style = FindButtonStyle("icon")
UI.ResearchingButton = b

UI.TransportingButtons:clear()

function AddTransportingButton(x, y)
	b = CUIButton:new_local()
	b.X = Video.Width - 176 + x
	b.Y = y
	b.Style = FindButtonStyle("icon")
	UI.TransportingButtons:push_back(b)
end

AddTransportingButton(9, 387)
AddTransportingButton(65, 387)
AddTransportingButton(121, 387)
AddTransportingButton(9, 434)
AddTransportingButton(65, 434)
AddTransportingButton(121, 434)

UI.CompletedBarColorRGB = CColor(48, 100, 4)
UI.CompletedBarShadow = true

UI.ButtonPanel.Buttons:clear()

function AddButtonPanelButton(x, y)
	b = CUIButton:new_local()
	b.X = Video.Width - 176 + x
	b.Y = y
	b.Style = FindButtonStyle("icon")
	UI.ButtonPanel.Buttons:push_back(b)
end

AddButtonPanelButton(9, 340)
AddButtonPanelButton(65, 340)
AddButtonPanelButton(121, 340)
AddButtonPanelButton(9, 387)
AddButtonPanelButton(65, 387)
AddButtonPanelButton(121, 387)
AddButtonPanelButton(9, 434)
AddButtonPanelButton(65, 434)
AddButtonPanelButton(121, 434)

UI.ButtonPanel.X = Video.Width - 176
UI.ButtonPanel.Y = 336
UI.ButtonPanel.AutoCastBorderColorRGB = CColor(0, 0, 252)

UI.MapArea.X = 16
UI.MapArea.Y = 16
UI.MapArea.EndX = Video.Width - 176 - 1
UI.MapArea.EndY = Video.Height - 16 - 1

UI.Minimap.X = Video.Width - 176 + 24
UI.Minimap.Y = 24 + 2
UI.Minimap.W = 128
UI.Minimap.H = 128

UI.StatusLine.TextX = 2 + 16
UI.StatusLine.TextY = Video.Height + 2 - 16
UI.StatusLine.Width = Video.Width - 16 - 2 - 176
UI.StatusLine.Font = Fonts["game"]

-- gold
UI.Resources[1].G = CGraphic:New("ui/gold.png", 14, 14)
UI.Resources[1].IconFrame = 0
UI.Resources[1].IconX = 16 + 0
UI.Resources[1].IconY = 0
UI.Resources[1].TextX = 16 + 0 + 18
UI.Resources[1].TextY = 1

-- lumber
UI.Resources[2].G = CGraphic:New("ui/lumber.png", 14, 14)
UI.Resources[2].IconFrame = 0
UI.Resources[2].IconX = 16 + 75
UI.Resources[2].IconY = 0
UI.Resources[2].TextX = 16 + 75 + 18
UI.Resources[2].TextY = 1

-- stone
UI.Resources[5].G = CGraphic:New("ui/stone.png", 14, 14)
UI.Resources[5].IconFrame = 0
UI.Resources[5].IconX = 16 + 150
UI.Resources[5].IconY = 0
UI.Resources[5].TextX = 16 + 150 + 18
UI.Resources[5].TextY = 1

-- oil
--UI.Resources[3].G = CGraphic:New("ui/oil.png", 14, 14)
--UI.Resources[3].IconFrame = 0
--UI.Resources[3].IconX = 16 + 150
--UI.Resources[3].IconY = 0
--UI.Resources[3].TextX = 16 + 150 + 18
--UI.Resources[3].TextY = 1

-- coal
--UI.Resources[6].G = CGraphic:New("ui/coal.png", 14, 14)
--UI.Resources[6].IconFrame = 0
--UI.Resources[6].IconX = 16 + 150
--UI.Resources[6].IconY = 0
--UI.Resources[6].TextX = 16 + 150 + 18
--UI.Resources[6].TextY = 1

-- Hide Coal (should not show up in normal scenarios)
if (UI.Resources[6].G) then
	UI.Resources[6].G = nil
end
UI.Resources[6].TextX = -1
UI.Resources[6].TextY = -1

-- food
if (CanAccessFile("ui/food.png")) then
  UI.Resources[FoodCost].G = CGraphic:New("ui/food.png", 14, 14)
end
UI.Resources[FoodCost].IconFrame = 0
UI.Resources[FoodCost].IconX = Video.Width - 176 - 138
UI.Resources[FoodCost].IconY = 0
UI.Resources[FoodCost].TextX = Video.Width - 176 - 138 + 18
UI.Resources[FoodCost].TextY = 1

-- score
if (CanAccessFile("ui/score.png"))then
  UI.Resources[ScoreCost].G = CGraphic:New("ui/score.png", 14, 14)
end
UI.Resources[ScoreCost].IconFrame = 0
UI.Resources[ScoreCost].IconX = Video.Width - 176 - 68
UI.Resources[ScoreCost].IconY = 0
UI.Resources[ScoreCost].TextX = Video.Width - 176 - 68 + 18
UI.Resources[ScoreCost].TextY = 1

UI.Resources[ManaResCost].G = CGraphic:New("ui/mana_icon.png", 14, 14)
UI.Resources[ManaResCost].IconFrame = 0
UI.Resources[ManaResCost].IconX = -100
UI.Resources[ManaResCost].IconY = -100
UI.Resources[ManaResCost].TextX = -100
UI.Resources[ManaResCost].TextY = -100

UI.MenuButton.X = Video.Width - 176 + 24
UI.MenuButton.Y = 2
UI.MenuButton.Text = "Menu (~<F10~>)"
UI.MenuButton.Style = FindButtonStyle("main-gnome")
UI.MenuButton:SetCallback(
  function()
    if (Editor.Running == EditorNotRunning) then
	  RunGameMenu()
	else
	  RunInEditorMenu()
	end
  end)

UI.NetworkMenuButton.X = Video.Width - 176 + 6
UI.NetworkMenuButton.Y = 2
UI.NetworkMenuButton.Text = "Menu"
UI.NetworkMenuButton.Style = FindButtonStyle("network-gnome")
UI.NetworkMenuButton:SetCallback(function() RunGameMenu() end)

UI.NetworkDiplomacyButton.X = Video.Width - 176 + 90
UI.NetworkDiplomacyButton.Y = 2
UI.NetworkDiplomacyButton.Text = "Diplomacy"
UI.NetworkDiplomacyButton.Style = FindButtonStyle("network-gnome")
UI.NetworkDiplomacyButton:SetCallback(function() RunDiplomacyMenu() end)

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
--      ui_tales.lua - Define the Wyrmsun Thunder user interface
--
--      (c) Copyright 2001-2012 by Lutz Sammer, Kyran Jackson, and Jimmy Salmon
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
  Race = "germanic",
  File = "germanic/ui/cursors/germanic_hand.png",
  HotSpot = { 3,  2},
  Size = {29, 32}})
DefineCursor({
  Name = "cursor-green-hair",
  Race = "germanic",
  File = "ui/cursors/green.png",
  HotSpot = {15, 15},
  Size = {32, 32}})
DefineCursor({
  Name = "cursor-yellow-hair",
  Race = "germanic",
  File = "ui/cursors/yellow.png",
  HotSpot = {15, 15},
  Size = {32, 32}})
DefineCursor({
  Name = "cursor-red-hair",
  Race = "germanic",
  File = "ui/cursors/red.png",
  HotSpot = {15, 15},
  Size = {32, 32}})

wyrmsun.playlist = { "music/battle.ogg" }

function GermanicScreen(screen_width, screen_height)
  local info_panel_x = 0
  local info_panel_y = Video.Height - 136 - 24 - 16

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
UI.ReverseFontColor = "white"

UI.Fillers:clear()

b = CFiller:new_local()
b.G = CGraphic:New("germanic/ui/infopanel.png", 176, 176)
b.X = 0
b.Y = Video.Height - 136 - 24 - 16
UI.Fillers:push_back(b)

function AddFiller(file, x, y)
	if CanAccessFile(file) == true then
		b = CFiller:new_local()
		b.G = CGraphic:New(file)
		b.X = x
		b.Y = y
		UI.Fillers:push_back(b)
	end
end

AddFiller("germanic/ui/filler-right_" .. Video.Height .. ".png", 176 + 176 + 176, Video.Height - 136 - 24)
AddFiller("germanic/ui/buttonpanel_" .. Video.Height .. ".png", 176 + 176, Video.Height - 160)
AddFiller("germanic/ui/menubutton.png", 176, Video.Height - 136 - 24)
AddFiller("germanic/ui/minimap.png", 176, Video.Height - 136)
AddFiller("germanic/ui/statusline_" .. Video.Width .. ".png", 176, Video.Height - 160 - 16)

UI.InfoPanel.X = 0
UI.InfoPanel.Y = Video.Height - 136 - 24 - 16

b = CUIButton:new()
b.X = 9
b.Y = Video.Height - 136 - 24 - 16 + 9
b.Style = FindButtonStyle("icon")
UI.SingleSelectedButton = b

UI.SelectedButtons:clear()

function AddSelectedButton(x, y)
	b = CUIButton:new_local()
	b.X = x
	b.Y = y + (Video.Height - 160 - 160 - 16) -- Terrible hack
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
UI.MaxSelectedTextX = 10
UI.MaxSelectedTextY = 160 + 10

b = CUIButton:new()
b.X = 110
b.Y = 160 + 11 + 70 + (Video.Height - 160 - 160 - 16) -- Terrible hack
b.Style = FindButtonStyle("icon")
UI.SingleTrainingButton = b

UI.TrainingButtons:clear()

function AddTrainingButton(x, y)
	b = CUIButton:new_local()
	b.X = x
	b.Y = y + (Video.Height - 160 - 160 - 16) -- Terrible hack
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
b.X = 110
b.Y = 160 + 11 + 70 + (Video.Height - 160 - 160 - 16) -- Terrible hack
b.Style = FindButtonStyle("icon")
UI.UpgradingButton = b

b = CUIButton:new()
b.X = 110
b.Y = 160 + 11 + 70 + (Video.Height - 160 - 160 - 16) -- Terrible hack
b.Style = FindButtonStyle("icon")
UI.ResearchingButton = b

UI.TransportingButtons:clear()

function AddTransportingButton(x, y)
	b = CUIButton:new_local()
	b.X = x
	b.Y = y + (Video.Height - 160 - 160 - 16) -- Terrible hack
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
	b.X = x + (176 + 176) -- Terrible hack
	b.Y = y + (Video.Height - 160 - 160 - 160) -- Terrible hack
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

UI.ButtonPanel.X = 0
UI.ButtonPanel.Y = 336
UI.ButtonPanel.AutoCastBorderColorRGB = CColor(0, 0, 252)

UI.MapArea.X = 0
UI.MapArea.Y = 0
UI.MapArea.EndX = Video.Width - 2
UI.MapArea.EndY = Video.Height - 136 - 24 - 16

UI.Minimap.X = 176 + 24
UI.Minimap.Y = Video.Height - 136 + 2
UI.Minimap.W = 128
UI.Minimap.H = 128

UI.StatusLine.TextX = 2 + 176
UI.StatusLine.TextY = Video.Height + 2 - 16 - 160
UI.StatusLine.Width = Video.Width - 16 - 2 - 176
UI.StatusLine.Font = Fonts["game"]

-- gold
UI.Resources[1].G = CGraphic:New("ui/gold.png", 14, 14)
UI.Resources[1].IconFrame = 0
UI.Resources[1].IconX = Video.Width - 360 + 0
UI.Resources[1].IconY = Video.Height + 2 - 16 - 160
UI.Resources[1].TextX = Video.Width - 360 + 0 + 18
UI.Resources[1].TextY = Video.Height + 2 - 16 - 160 + 1

-- wood
UI.Resources[2].G = CGraphic:New("ui/lumber.png", 14, 14)
UI.Resources[2].IconFrame = 1
UI.Resources[2].IconX = Video.Width - 360 + 75
UI.Resources[2].IconY = Video.Height + 2 - 16 - 160
UI.Resources[2].TextX = Video.Width - 360 + 75 + 18
UI.Resources[2].TextY = Video.Height + 2 - 16 - 160 + 1

-- oil
UI.Resources[3].G = CGraphic:New("ui/lumber.png", 14, 14)
UI.Resources[3].IconFrame = 2
UI.Resources[3].IconX = Video.Width - 360 + 150
UI.Resources[3].IconY = Video.Height + 2 - 16 - 160
UI.Resources[3].TextX = Video.Width - 360 + 150 + 18
UI.Resources[3].TextY = Video.Height + 2 - 16 - 160 + 1

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
UI.Resources[FoodCost].IconX = Video.Width - 360 + 225
UI.Resources[FoodCost].IconY = Video.Height + 2 - 16 - 160
UI.Resources[FoodCost].TextX = Video.Width - 360 + 225 + 18
UI.Resources[FoodCost].TextY = Video.Height + 2 - 16 - 160 + 1

-- score
if (CanAccessFile("ui/score.png"))then
  UI.Resources[ScoreCost].G = CGraphic:New("ui/score.png", 14, 14)
end
UI.Resources[ScoreCost].IconFrame = 0
UI.Resources[ScoreCost].IconX = Video.Width - 360 + 300
UI.Resources[ScoreCost].IconY = Video.Height + 2 - 16 - 160
UI.Resources[ScoreCost].TextX = Video.Width - 360 + 300 + 18
UI.Resources[ScoreCost].TextY = Video.Height + 2 - 16 - 160 + 1

-- mana
UI.Resources[ManaResCost].G = CGraphic:New("ui/mana_icon.png", 14, 14)
UI.Resources[ManaResCost].IconFrame = 3
UI.Resources[ManaResCost].IconX = -100
UI.Resources[ManaResCost].IconY = -100
UI.Resources[ManaResCost].TextX = -100
UI.Resources[ManaResCost].TextY = -100

UI.MenuButton.X = 176 + 24
UI.MenuButton.Y = UI.MapArea.EndY + 2 + 16
UI.MenuButton.Text = "Menu (~<F10~>)"
UI.MenuButton.Style = FindButtonStyle("main-germanic")
UI.MenuButton:SetCallback(
  function()
    if (Editor.Running == EditorNotRunning) then
	  RunGameMenu()
	else
	  RunInEditorMenu()
	end
  end)

UI.NetworkMenuButton.X = 6
UI.NetworkMenuButton.Y = 2
UI.NetworkMenuButton.Text = "Menu"
UI.NetworkMenuButton.Style = FindButtonStyle("network-germanic")
UI.NetworkMenuButton:SetCallback(function() RunGameMenu() end)

UI.NetworkDiplomacyButton.X = 90
UI.NetworkDiplomacyButton.Y = 2
UI.NetworkDiplomacyButton.Text = "Diplomacy"
UI.NetworkDiplomacyButton.Style = FindButtonStyle("network-germanic")
UI.NetworkDiplomacyButton:SetCallback(function() RunDiplomacyMenu() end)


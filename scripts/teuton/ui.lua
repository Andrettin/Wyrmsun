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
--      ui.lua - Define the teuton user interface
--
--      (c) Copyright 2001-2008 by Lutz Sammer and Jimmy Salmon
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
  Race = "teuton",
  File = "germanic/ui/cursors/germanic_hand.png",
  HotSpot = { 3,  2},
  Size = {29, 32}})
DefineCursor({
  Name = "cursor-green-hair",
  Race = "teuton",
  File = "ui/cursors/green.png",
  HotSpot = {15, 15},
  Size = {32, 32}})
DefineCursor({
  Name = "cursor-yellow-hair",
  Race = "teuton",
  File = "ui/cursors/yellow.png",
  HotSpot = {15, 15},
  Size = {32, 32}})
DefineCursor({
  Name = "cursor-red-hair",
  Race = "teuton",
  File = "ui/cursors/red.png",
  HotSpot = {15, 15},
  Size = {32, 32}})

--;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
--	* Civilization Teuton.
--;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

wyrmsun.playlist = { "music/honor_bound.ogg", "music/loyalists.ogg", "music/heroes_rite.ogg", "music/the_king_is_dead.ogg", "music/traveling_minstrels.ogg", "music/casualties_of_war.ogg", "music/battle.ogg", "music/battle-epic.ogg" }

function TeutonScreen(screen_width, screen_height)
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

AddFiller("germanic/ui/filler_bottom.png", 380, Video.Height - 181)
AddFiller("germanic/ui/resource.png", 0, 0)
AddFiller("germanic/ui/buttonpanel.png", Video.Width - 256, Video.Height - 200)
AddFiller("germanic/ui/infopanel.png", 0, Video.Height - 200)

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

AddSelectedButton(9, 9)
AddSelectedButton(65, 9)
AddSelectedButton(121, 9)
AddSelectedButton(9, 63)
AddSelectedButton(65, 63)
AddSelectedButton(121, 63)
AddSelectedButton(9, 117)
AddSelectedButton(65, 117)
AddSelectedButton(121, 117)

UI.MaxSelectedFont = Fonts["game"]
UI.MaxSelectedTextX = 162 + 10
UI.MaxSelectedTextY = Video.Height - 186 + 10

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

-- gold
UI.Resources[1].G = CGraphic:New("ui/gold.png", 14, 14)
UI.Resources[1].IconFrame = 0
UI.Resources[1].IconX = 154 + 0
UI.Resources[1].IconY = 0
UI.Resources[1].TextX = 154 + 0 + 18
UI.Resources[1].TextY = 1

-- lumber
UI.Resources[2].G = CGraphic:New("ui/lumber.png", 14, 14)
UI.Resources[2].IconFrame = 0
UI.Resources[2].IconX = 154 + 75
UI.Resources[2].IconY = 0
UI.Resources[2].TextX = 154 + 75 + 18
UI.Resources[2].TextY = 1

-- stone
UI.Resources[5].G = CGraphic:New("ui/stone.png", 14, 14)
UI.Resources[5].IconFrame = 0
UI.Resources[5].IconX = 154 + 150
UI.Resources[5].IconY = 0
UI.Resources[5].TextX = 154 + 150 + 18
UI.Resources[5].TextY = 1

-- oil
--UI.Resources[3].G = CGraphic:New("ui/oil.png", 14, 14)
--UI.Resources[3].IconFrame = 0
--UI.Resources[3].IconX = 154 + 150
--UI.Resources[3].IconY = 0
--UI.Resources[3].TextX = 154 + 150 + 18
--UI.Resources[3].TextY = 1

-- coal
--UI.Resources[6].G = CGraphic:New("ui/coal.png", 14, 14)
--UI.Resources[6].IconFrame = 0
--UI.Resources[6].IconX = 154 + 150
--UI.Resources[6].IconY = 0
--UI.Resources[6].TextX = 154 + 150 + 18
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
UI.Resources[FoodCost].IconX = Video.Width - 138 - 99 - 26
UI.Resources[FoodCost].IconY = 0
UI.Resources[FoodCost].TextX = Video.Width - 138 + 18 - 99 - 26
UI.Resources[FoodCost].TextY = 1

-- score
if (CanAccessFile("ui/score.png"))then
  UI.Resources[ScoreCost].G = CGraphic:New("ui/score.png", 14, 14)
end
UI.Resources[ScoreCost].IconFrame = 0
UI.Resources[ScoreCost].IconX = Video.Width - 68 - 99 - 26
UI.Resources[ScoreCost].IconY = 0
UI.Resources[ScoreCost].TextX = Video.Width - 68 + 18 - 99 - 26
UI.Resources[ScoreCost].TextY = 1

UI.Resources[ManaResCost].G = CGraphic:New("ui/mana_icon.png", 14, 14)
UI.Resources[ManaResCost].IconFrame = 0
UI.Resources[ManaResCost].IconX = -100
UI.Resources[ManaResCost].IconY = -100
UI.Resources[ManaResCost].TextX = -100
UI.Resources[ManaResCost].TextY = -100

UI.MenuButton.X = 26
UI.MenuButton.Y = 1
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

UI.NetworkMenuButton.X = 26
UI.NetworkMenuButton.Y = 1
UI.NetworkMenuButton.Text = "Menu"
UI.NetworkMenuButton.Style = FindButtonStyle("main-germanic")
UI.NetworkMenuButton:SetCallback(function() RunGameMenu() end)

UI.NetworkDiplomacyButton.X = Video.Width - 99 - 26
UI.NetworkDiplomacyButton.Y = 1
UI.NetworkDiplomacyButton.Text = "Diplomacy"
UI.NetworkDiplomacyButton.Style = FindButtonStyle("main-germanic")
UI.NetworkDiplomacyButton:SetCallback(function() RunDiplomacyMenu() end)

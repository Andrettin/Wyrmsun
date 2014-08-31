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
--      guichan.lua - Define the main guichan menu.
--
--      (c) Copyright 2006-2010 by Jimmy Salmon and Pali Rohár
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

PlayerFaction = ""
GrandStrategy = false


SetPlayerData(GetThisPlayer(), "RaceName", "gnome")

-- Global useful objects for menus  ----------
dark = Color(38, 38, 78)
clear = Color(200, 200, 120)
black = Color(0, 0, 0)

bckground = CGraphic:New("ui/Menu_background_with_title.png")
bckground:Load()
bckground:Resize(Video.Width, Video.Height)
backgroundWidget = ImageWidget(bckground)

g_dbln = CGraphic:New("ui/dwarf/widgets/button-large-normal.png")
g_dbln:Load()
g_dblp = CGraphic:New("ui/dwarf/widgets/button-large-pressed.png")
g_dblp:Load()
g_dblg = CGraphic:New("ui/dwarf/widgets/button-large-grayed.png")
g_dblg:Load()

g_dbsn = CGraphic:New("ui/dwarf/widgets/button-small-normal.png")
g_dbsn:Load()
g_dbsp = CGraphic:New("ui/dwarf/widgets/button-small-pressed.png")
g_dbsp:Load()
g_dbsg = CGraphic:New("ui/dwarf/widgets/button-small-grayed.png")
g_dbsg:Load()

g_gbln = CGraphic:New("ui/gnome/widgets/button-large-normal.png")
g_gbln:Load()
g_gblp = CGraphic:New("ui/gnome/widgets/button-large-pressed.png")
g_gblp:Load()
g_gblg = CGraphic:New("ui/gnome/widgets/button-large-grayed.png")
g_gblg:Load()

g_gbsn = CGraphic:New("ui/gnome/widgets/button-small-normal.png")
g_gbsn:Load()
g_gbsp = CGraphic:New("ui/gnome/widgets/button-small-pressed.png")
g_gbsp:Load()
g_gbsg = CGraphic:New("ui/gnome/widgets/button-small-grayed.png")
g_gbsg:Load()

g_dcheckbox_off = CGraphic:New("ui/dwarf/widgets/radio-normal-unselected.png")
g_dcheckbox_off:Load()
g_dcheckbox_off2 = CGraphic:New("ui/dwarf/widgets/radio-pressed-unselected.png")
g_dcheckbox_off2:Load()
g_dcheckbox_on = CGraphic:New("ui/dwarf/widgets/radio-normal-selected.png")
g_dcheckbox_on:Load()
g_dcheckbox_on2 = CGraphic:New("ui/dwarf/widgets/radio-pressed-selected.png")
g_dcheckbox_on2:Load()

g_dradio_off = CGraphic:New("ui/dwarf/widgets/radio-normal-unselected.png")
g_dradio_off:Load()
g_dradio_off2 = CGraphic:New("ui/dwarf/widgets/radio-pressed-unselected.png")
g_dradio_off2:Load()
g_dradio_on = CGraphic:New("ui/dwarf/widgets/radio-normal-selected.png")
g_dradio_on:Load()
g_dradio_on2 = CGraphic:New("ui/dwarf/widgets/radio-pressed-selected.png")
g_dradio_on2:Load()

-- right slider arrows for dwarf
g_drslider_n = CGraphic:New("ui/dwarf/widgets/right-arrow-normal.png")
g_drslider_n:Load()
g_drslider_p = CGraphic:New("ui/dwarf/widgets/right-arrow-pressed.png")
g_drslider_p:Load()

-- left slider arrows for dwarf
g_dlslider_n = CGraphic:New("ui/dwarf/widgets/left-arrow-normal.png")
g_dlslider_n:Load()
g_dlslider_p = CGraphic:New("ui/dwarf/widgets/left-arrow-pressed.png")
g_dlslider_p:Load()

-- slider marker - so we know the value of the option we're trying to change
g_dmarker = CGraphic:New("ui/dwarf/widgets/slider-knob.png")
g_dmarker:Load()

-- slider background image
g_dslider = CGraphic:New("ui/dwarf/widgets/hslider-bar-normal.png")
g_dslider:Load()

-- thin medium button
g_dbtn = CGraphic:New("ui/dwarf/widgets/button-thin-medium-normal.png")
g_dbtn:Load()
g_dbtp = CGraphic:New("ui/dwarf/widgets/button-thin-medium-pressed.png")
g_dbtp:Load()

g_gbtn = CGraphic:New("ui/gnome/widgets/button-thin-medium-normal.png")
g_gbtn:Load()
g_gbtp = CGraphic:New("ui/gnome/widgets/button-thin-medium-pressed.png")
g_gbtp:Load()

local dpanels = {
  "ui/dwarf/panel_1.png",
  "ui/dwarf/panel_2.png",
  "ui/dwarf/panel_3.png",
  "ui/dwarf/panel_4.png",
  "ui/dwarf/panel_5.png"
}

function panel(n)
	if (GetPlayerData(GetThisPlayer(), "RaceName") == "dwarf") then
		return dpanels[n]
	elseif (GetPlayerData(GetThisPlayer(), "RaceName") == "gnome") then
		return dpanels[n]
	end
end



function AddMenuHelpers(menu)
  function menu:addCentered(widget, x, y)
    self:add(widget, x - widget:getWidth() / 2, y)
  end

  function menu:addLabel(text, x, y, font, center)
    local label = Label(text)
    if (font == nil) then font = Fonts["large"] end
    label:setFont(font)
    label:adjustSize()
    if (center == nil or center == true) then -- center text by default
      x = x - label:getWidth() / 2
    end
    self:add(label, x, y)

    return label
  end

  function menu:writeText(text, x, y)
    return self:addLabel(text, x, y, Fonts["game"], false)
  end

  function menu:writeLargeText(text, x, y)
    return self:addLabel(text, x, y, Fonts["large"], false)
  end

  function menu:addButton(caption, hotkey, x, y, callback, size)
    local b = ButtonWidget(caption)
    b:setHotKey(hotkey)
    b:setActionCallback(callback)
    if (size == nil) then size = {200, 24} end
    b:setSize(size[1], size[2])
    b:setBackgroundColor(dark)
    b:setBaseColor(dark)
    self:add(b, x, y)
    return b
  end

  function menu:addImageButton(caption, hotkey, x, y, callback)
    local b = ImageButton(caption)
    b:setHotKey(hotkey)
    b:setActionCallback(callback)
    self:add(b, x, y)
    b:setBorderSize(0) -- Andrettin: make buttons not have the borders they previously had
    return b
  end

  function menu:addFullButton(caption, hotkey, x, y, callback)
	local b = self:addImageButton(caption, hotkey, x, y, callback)
	b:setBaseColor(Color(0,0,0,0))
	b:setForegroundColor(Color(0,0,0,0))
	b:setBackgroundColor(Color(0,0,0,0))
	if (GetPlayerData(GetThisPlayer(), "RaceName") == "dwarf") then
		b:setNormalImage(g_dbln)
		b:setPressedImage(g_dblp)
		b:setDisabledImage(g_dblg)
	elseif (GetPlayerData(GetThisPlayer(), "RaceName") == "gnome") then
		b:setNormalImage(g_gbln)
		b:setPressedImage(g_gblp)
		b:setDisabledImage(g_gblg)
	else
		b:setNormalImage(g_dbln)
		b:setPressedImage(g_dblp)
		b:setDisabledImage(g_dblg)
	end
	b:setSize(224, 28)
	return b
  end

  function menu:addHalfButton(caption, hotkey, x, y, callback)
	local b = self:addImageButton(caption, hotkey, x, y, callback)
	b:setBaseColor(Color(0,0,0,0))
	b:setForegroundColor(Color(0,0,0,0))
	b:setBackgroundColor(Color(0,0,0,0))
	if (GetPlayerData(GetThisPlayer(), "RaceName") == "dwarf") then
		b:setNormalImage(g_dbsn)
		b:setPressedImage(g_dbsp)
		b:setDisabledImage(g_dbsg)
	elseif (GetPlayerData(GetThisPlayer(), "RaceName") == "gnome") then
		b:setNormalImage(g_gbsn)
		b:setPressedImage(g_gbsp)
		b:setDisabledImage(g_gbsg)
	else
		b:setNormalImage(g_dbsn)
		b:setPressedImage(g_dbsp)
		b:setDisabledImage(g_dbsg)
	end
	b:setSize(106, 28)
	return b
  end

  function menu:addSlider(min, max, w, h, x, y, callback)
    local b = Slider(min, max)
    b:setBaseColor(dark)
    b:setForegroundColor(clear)
    b:setBackgroundColor(clear)
    b:setSize(w, h)
    b:setActionCallback(function(s) callback(b, s) end)
    self:add(b, x, y)
    return b
  end

  function menu:addImageLeftSliderButton(caption, hotkey, x, y, callback)
	local b = self:addImageButton(caption, hotkey, x, y, callback)
	b:setBaseColor(Color(0,0,0,0))
	b:setForegroundColor(Color(0,0,0,0))
	b:setBackgroundColor(Color(0,0,0,0))
	if (GetPlayerData(GetThisPlayer(), "RaceName") == "dwarf") then
		b:setNormalImage(g_dlslider_n)
		b:setPressedImage(g_dlslider_p)
	else
		b:setNormalImage(g_dlslider_n)
		b:setPressedImage(g_dlslider_p)
	end
	b:setSize(20, 19)
	b:setBorderSize(0)
	return b
  end
  
  function menu:addImageSlider(min, max, w, h, x, y, callback)
	local b = ImageSlider(min, max)
	-- New Slider Functions
	if (GetPlayerData(GetThisPlayer(), "RaceName") == "dwarf") then
		b:setMarkerImage(g_dmarker)
		b:setBackgroundImage(g_dslider)
	else
		b:setMarkerImage(g_dmarker)
		b:setBackgroundImage(g_dslider)
	end
	b:setSize(w, h)
	b:setActionCallback(function(s) callback(b, s) end)
	self:add(b, x, y)
	b:setBorderSize(0)
	return b
  end
  
  function menu:addImageRightSliderButton(caption, hotkey, x, y, callback)
	local b = self:addImageButton(caption, hotkey, x, y, callback)
	b:setBaseColor(Color(0,0,0,0))
	b:setForegroundColor(Color(0,0,0,0))
	b:setBackgroundColor(Color(0,0,0,0))
	if (GetPlayerData(GetThisPlayer(), "RaceName") == "dwarf") then
		b:setNormalImage(g_drslider_n)
		b:setPressedImage(g_drslider_p)
	else
		b:setNormalImage(g_drslider_n)
		b:setPressedImage(g_drslider_p)
	end	  
	b:setSize(20, 19)
	b:setBorderSize(0)
	return b
  end

  function menu:addListBox(x, y, w, h, list)
    local bq = ListBoxWidget(w, h)
    bq:setList(list)
    bq:setBaseColor(black)
    bq:setForegroundColor(clear)
    bq:setBackgroundColor(dark)
    bq:setFont(Fonts["game"])
    self:add(bq, x, y)
    bq.itemslist = list
    return bq
  end

  function menu:addBrowser(path, filter, x, y, w, h, default, show_subfolders)
    
    -- Andrettin: make it so that it is possible to have a browser without showing subfolders
    if (show_subfolders == nil) then
    	show_subfolders = true
    end
    
    -- Create a list of all dirs and files in a directory
    local function listfiles(path)
      local dirlist = {}
      local i
      local f
      local u = 1

      if (show_subfolders) then
        local dirs = ListDirsInDirectory(path)
        for i,f in ipairs(dirs) do
          dirlist[u] = f .. "/"
          u = u + 1
        end
      end

      local fileslist = ListFilesInDirectory(path)
      for i,f in ipairs(fileslist) do
        if (string.find(f, filter)) then
          dirlist[u] = f
          u = u + 1
        end
      end

      return dirlist
    end

    local bq = self:addListBox(x, y, w, h, {})

    if (string.sub(path, string.len(path)) ~= "/") then
      path = path .. "/"
    end
    bq.origpath = path
    bq.actioncb = nil

    -- The directory changed, update the list
    local function updatelist()
      bq.itemslist = listfiles(bq.path)
      if (bq.path ~= bq.origpath) then
        table.insert(bq.itemslist, 1, "../")
      end
      bq:setList(bq.itemslist)
    end

    -- Change to the default directory and select the default file
    if (default == nil) then
      bq.path = path
      updatelist()
    else
      local i
      for i=string.len(default)-1,1,-1 do
        if (string.sub(default, i, i) == "/") then
          bq.path = string.sub(default, 1, i)
          updatelist()

          local f = string.sub(default, i + 1)
          for i=1,table.getn(bq.itemslist) do
            if (bq.itemslist[i] == f) then
              bq:setSelected(i - 1)
            end
          end
          break
        end
      end
    end

    function bq:exists(name)
     for i,v in ipairs(self.itemslist) do
       if(v == name) then
         return true
       end
     end
     return false
    end


    function bq:getSelectedItem()
      if (self:getSelected() < 0) then
        return self.itemslist[1]
      end
      return self.itemslist[self:getSelected() + 1]
    end

    -- If a directory was clicked change dirs
    -- Otherwise call the user's callback
    local function cb(s)
      local f = bq:getSelectedItem()
      if (f == "../") then
        local i
        for i=string.len(bq.path)-1,1,-1 do
          if (string.sub(bq.path, i, i) == "/") then
            bq.path = string.sub(bq.path, 1, i)
            updatelist()
            break
          end
        end
      elseif (string.sub(f, string.len(f)) == '/') then
        bq.path = bq.path .. f
        updatelist()
      else
        if (bq.actioncb ~= nil) then
          bq:actioncb(s)
        end
      end
    end
    bq:setActionCallback(cb)

    bq.oldSetActionCallback = bq.setActionCallback
    function bq:setActionCallback(cb)
      bq.actioncb = cb
    end

    return bq
  end

  function menu:addCheckBox(caption, x, y, callback)
    local b = CheckBox(caption)
    b:setBaseColor(clear)
    b:setForegroundColor(clear)
    b:setBackgroundColor(dark)
	if (callback ~= nil) then b:setActionCallback(function(s) callback(b, s) end) end
    b:setFont(Fonts["game"])
    self:add(b, x, y)
    return b
  end

  function menu:addImageCheckBox(caption, x, y, callback) -- DinkyDyeAussie's new function
	local b = ImageCheckBox(caption)
	b:setBaseColor(Color(0,0,0,0))
	b:setForegroundColor(Color(0,0,0,0))
	b:setBackgroundColor(Color(0,0,0,0))
	-- new functions to display checkbox graphics
	if (GetPlayerData(GetThisPlayer(), "RaceName") == "dwarf") then
		b:setUncheckedNormalImage(g_dcheckbox_off)
		b:setUncheckedPressedImage(g_dcheckbox_off2)
		b:setCheckedNormalImage(g_dcheckbox_on)
		b:setCheckedPressedImage(g_dcheckbox_on2)
	else
		b:setUncheckedNormalImage(g_dcheckbox_off)
		b:setUncheckedPressedImage(g_dcheckbox_off2)
		b:setCheckedNormalImage(g_dcheckbox_on)
		b:setCheckedPressedImage(g_dcheckbox_on2)
	end
	if (callback ~= nil) then b:setActionCallback(function(s) callback(b, s) end) end
	b:setFont(Fonts["game"])
	self:add(b, x - 1, y - 1) -- reduced by 1 because the images are bigger than they are supposed to be, as they are graphics for radio buttons
	return b
  end
  
  function menu:addRadioButton(caption, group, x, y, callback)
    local b = RadioButton(caption, group)
    b:setBaseColor(dark)
    b:setForegroundColor(clear)
    b:setBackgroundColor(dark)
    b:setActionCallback(callback)
    self:add(b, x, y)
    return b
  end

 function menu:addImageRadioButton(caption, group, x, y, callback)
	local b = ImageRadioButton(caption, group)
	b:setBaseColor(Color(0,0,0,0))
	b:setForegroundColor(Color(0,0,0,0))
	b:setBackgroundColor(Color(0,0,0,0))
	if (GetPlayerData(GetThisPlayer(), "RaceName") == "dwarf") then
		b:setUncheckedNormalImage(g_dradio_off)
		b:setUncheckedPressedImage(g_dradio_off2)
		b:setCheckedNormalImage(g_dradio_on)
		b:setCheckedPressedImage(g_dradio_on2)
	else
		b:setUncheckedNormalImage(g_dradio_off)
		b:setUncheckedPressedImage(g_dradio_off2)
		b:setCheckedNormalImage(g_dradio_on)
		b:setCheckedPressedImage(g_dradio_on2)
	end
	b:setFont(Fonts["game"])
	b:setActionCallback(callback)
	self:add(b, x, y)
	return b
  end
  
  function menu:addDropDown(list, x, y, callback)
    local dd = DropDownWidget()
    dd:setFont(Fonts["game"])
    dd:setList(list)
    dd:setActionCallback(function(s) callback(dd, s) end)
    dd:setBaseColor(dark)
    dd:setForegroundColor(clear)
    dd:setBackgroundColor(dark)
    self:add(dd, x, y)
    return dd
  end

  function menu:addTextInputField(text, x, y, w)
    local b = TextField(text)
    b:setActionCallback(function() end) --FIXME: remove this?
    b:setFont(Fonts["game"])
    b:setBaseColor(clear)
    b:setForegroundColor(clear)
    b:setBackgroundColor(dark)
    if (w == nil) then w = 100 end
    b:setSize(w, 18)
    self:add(b, x, y)
    return b
  end
end

function WarMenu(title, background, resize)
  local menu
  local exitButton
  local bg
  local bgg

  menu = MenuScreen()

  if background == nil then
    bg = backgroundWidget
  else
    bgg = CGraphic:New(background)
    bgg:Load()
    if (resize == nil or resize == true) then
      bgg:Resize(Video.Width, Video.Height)
    end
    bg = ImageWidget(bgg)
  end
  menu:add(bg, 0, 0)

  AddMenuHelpers(menu)

  if title then
    menu:addLabel(title, Video.Width / 2, Video.Height / 20, Fonts["large"])
  end

  return menu
end

-- Default configurations -------
Widget:setGlobalFont(Fonts["large"])


DefaultObjectives = {"- Destroy the enemy"}
for i=0,14 do
	for key, value in pairs(CustomPlayerData) do
		if (CustomPlayerData[key].Number == i) then
			CustomPlayerData[key].Objectives = DefaultObjectives
		end
	end
end


-- Define the different menus ----------

function InitGameSettings()
	GameSettings.NetGameType = 1
	for i=0,PlayerMax-1 do
		GameSettings.Presets[i].Race = -1
		GameSettings.Presets[i].Team = -1
		GameSettings.Presets[i].Type = -1
	end
	GameSettings.Resources = -1
	GameSettings.NumUnits = -1
	GameSettings.Opponents = -1
	GameSettings.Terrain = -1
	GameSettings.GameType = -1
	GameSettings.NoFogOfWar = false
	GameSettings.Inside = false
	GameSettings.RevealMap = 0
	GameSettings.Tileset = nil
	TechLevel = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1}
end
InitGameSettings()

NextMap = ""
NextMapDirect = false

function RunMap(map, objective, fow, revealmap)
  for key, value in pairs(CustomPlayerData) do
	for i=1,table.getn(CustomPlayerData[key].Objectives) do
		table.remove(CustomPlayerData[key].Objectives, i)
	end
  end
  
  if objective == nil then
	for key, value in pairs(CustomPlayerData) do
		CustomPlayerData[key].Objectives = DefaultObjectives
	end
  else
	for key, value in pairs(CustomPlayerData) do
		CustomPlayerData[key].Objectives = objective
	end
  end
  local loop = true
  while (loop) do
    InitGameVariables()
    if fow ~= nil then
      SetFogOfWar(fow)
    end
    if revealmap == true then
       RevealMap()
    end
    StartMap(map)
    if GameResult ~= GameRestart then
      loop = false
    end
  end
  if (NextMapDirect == false) then
	  RunResultsMenu(s)
  end
  NextMapDirect = false

  InitGameSettings()
  SetPlayerData(GetThisPlayer(), "RaceName", "dwarf")
  
  if (NextMap ~= "") then
  	local current_next_map = NextMap
  	NextMap = ""
	GetMapInfo(current_next_map)
	Load(current_next_map)
	RunMap(current_next_map)
  end
end

mapname = "maps/nidavellir/chaincolt-foothills.smp"
local buttonStatut = 0 -- 0:not initialised, 1: Ok, 2: Cancel
mapinfo = {
  playertypes = {nil, nil, nil, nil, nil, nil, nil, nil},
  description = "",
  nplayers = 1,
  w = 32,
  h = 32,
  id = 0
}

function GetMapInfo(mapname)
  local OldDefinePlayerTypes = DefinePlayerTypes
  local OldPresentMap = PresentMap

  function DefinePlayerTypes(p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p12, p13, p14, p15)
    mapinfo.playertypes[1] = p1
    mapinfo.playertypes[2] = p2
    mapinfo.playertypes[3] = p3
    mapinfo.playertypes[4] = p4
    mapinfo.playertypes[5] = p5
    mapinfo.playertypes[6] = p6
    mapinfo.playertypes[7] = p7
    mapinfo.playertypes[8] = p8
    mapinfo.playertypes[9] = p9
    mapinfo.playertypes[10] = p10
    mapinfo.playertypes[11] = p11
    mapinfo.playertypes[12] = p12
    mapinfo.playertypes[13] = p13
    mapinfo.playertypes[14] = p14
    mapinfo.playertypes[15] = p15

    mapinfo.nplayers = 0
    for i=0,15 do
      local t = mapinfo.playertypes[i]
      if (t == "person" or t == "computer") then
        mapinfo.nplayers = mapinfo.nplayers + 1
      end
    end
  end

  function PresentMap(description, nplayers, w, h, id)
    mapinfo.description = description
    -- nplayers includes rescue-passive and rescue-active
    -- calculate the real nplayers in DefinePlayerTypes
    --mapinfo.nplayers = nplayers
    mapinfo.w = w
    mapinfo.h = h
    mapinfo.id = id
  end

  Load(mapname)

  DefinePlayerTypes = OldDefinePlayerTypes
  PresentMap = OldPresentMap
end

function RunSelectScenarioMenu()
  buttonStatut = 0
  local menu = WarMenu(nil, panel(5), false)
  menu:setSize(352, 352)
  menu:setPosition((Video.Width - 352) / 2, (Video.Height - 352) / 2)
  menu:setDrawMenusUnder(true)

  menu:addLabel(select_scenario_name, 176, 8)

  local browser = menu:addBrowser(MapDirectories[1], "^.*%.smp%.?g?z?$",
    24, 140, 300, 108, mapname)

  local l = menu:addLabel(browser:getSelectedItem(), 24, 260, Fonts["game"], false)

  local function cb(s)
    l:setCaption(browser:getSelectedItem())
    l:adjustSize()
  end
  browser:setActionCallback(cb)

  menu:addHalfButton("~!OK", "o", 48, 318,
    function()
      local cap = l:getCaption()

      if (browser:getSelected() < 0) then
        return
      end
      buttonStatut = 1
      mapname = browser.path .. cap
      menu:stop()
    end)
  menu:addHalfButton(cancel_name, "c", 198, 318,
    function() buttonStatut = 2; menu:stop() end)

  menu:run()
end

function GetWorldMapTile(x, y)
	if (x >= 0 and x < table.getn(WorldMapTiles[1]) and y >= 0 and y < table.getn(WorldMapTiles)) then
		return string.sub(WorldMapTiles[y+1][x+1], 1, 4)
	elseif (x < 0 and y >= 0 and y < table.getn(WorldMapTiles)) then
		return string.sub(WorldMapTiles[y+1][0+1], 1, 4)
	elseif (x >= table.getn(WorldMapTiles[1]) and y >= 0 and y < table.getn(WorldMapTiles)) then
		return string.sub(WorldMapTiles[y+1][table.getn(WorldMapTiles[1])], 1, 4)
	elseif (x >= 0 and x < table.getn(WorldMapTiles[1]) and y < 0) then
		return string.sub(WorldMapTiles[0+1][x+1], 1, 4)
	elseif (x >= 0 and x < table.getn(WorldMapTiles[1]) and y >= table.getn(WorldMapTiles)) then
		return string.sub(WorldMapTiles[table.getn(WorldMapTiles)][x+1], 1, 4)
	elseif (x < 0 and y < 0) then
		return string.sub(WorldMapTiles[0+1][0+1], 1, 4)
	elseif (x >= table.getn(WorldMapTiles[1]) and y < 0) then
		return string.sub(WorldMapTiles[0+1][table.getn(WorldMapTiles[1])], 1, 4)
	elseif (x < 0 and y >= table.getn(WorldMapTiles)) then
		return string.sub(WorldMapTiles[table.getn(WorldMapTiles)][0+1], 1, 4)
	elseif (x >= table.getn(WorldMapTiles[1]) and y >= table.getn(WorldMapTiles)) then
		return string.sub(WorldMapTiles[table.getn(WorldMapTiles)][table.getn(WorldMapTiles[1])], 1, 4)
	else
		return ""
	end
end

function RunWorldMapMenu(world, maps)
	buttonStatut = 0
	local menu = WarMenu(nil, panel(5), false)
	menu:setSize(352, 352)
	menu:setPosition((Video.Width - 352) / 2, (Video.Height - 352) / 2)
	menu:setDrawMenusUnder(true)

	menu:addLabel("Select Map", 176, 8)

	Load("scripts/" .. string.lower(world) .. "_world_map.lua")

	for x=0,9 do
		for y=0,7 do
			-- set map tile
			if (GetWorldMapTile(x, y) == "DryMud") then
				local world_map_tile = CGraphic:New("tilesets/world/terrain/dry_mud.png")
				world_map_tile:Load()
				world_map_tile = ImageWidget(world_map_tile)
				menu:add(world_map_tile, 16 + 32 * x, 16 + 32 * (y + 1))
			elseif (GetWorldMapTile(x, y) == "Rock") then
				local world_map_tile = CGraphic:New("tilesets/world/terrain/dry_mud.png")
				world_map_tile:Load()
				world_map_tile = ImageWidget(world_map_tile)
				menu:add(world_map_tile, 16 + 32 * x, 16 + 32 * (y + 1))
				
				if (GetWorldMapTile(x, y + 1) ~= "Rock" and GetWorldMapTile(x - 1, y) == "Rock" and GetWorldMapTile(x + 1, y) == "Rock") then
					world_map_tile = CGraphic:New("tilesets/world/terrain/rock_south.png")
				elseif (GetWorldMapTile(x, y + 1) ~= "Rock" and GetWorldMapTile(x, y - 1) == "Rock" and GetWorldMapTile(x - 1, y) ~= "Rock" and GetWorldMapTile(x + 1, y) ~= "Rock") then
					world_map_tile = CGraphic:New("tilesets/world/terrain/rock_south_single.png")
				elseif (GetWorldMapTile(x, y + 1) ~= "Rock" and GetWorldMapTile(x, y - 1) ~= "Rock" and GetWorldMapTile(x - 1, y) ~= "Rock" and GetWorldMapTile(x + 1, y) ~= "Rock") then
					world_map_tile = CGraphic:New("tilesets/world/terrain/rock_single.png")
				else
					world_map_tile = CGraphic:New("tilesets/world/terrain/rock.png")
				end
				world_map_tile:Load()
				world_map_tile = ImageWidget(world_map_tile)
				menu:add(world_map_tile, 16 + 32 * x, 16 + 32 * (y + 1))
			end
		end
	end

	-- create sites in the world map from the information in the map files
	for i=1,table.getn(maps) do
		MapWorld = ""
		MapRequiredQuest = ""
		MapSiteType = ""
		WorldMapPosition = {0, 0}
		GetMapInfo(maps[i])
		if (MapWorld == world and MapSiteType ~= "" and (MapRequiredQuest == "" or GetArrayIncludes(wyr.preferences.QuestsCompleted, MapRequiredQuest))) then
			local world_map_site_image
			if (MapSiteType == "Dwarven Settlement") then
				world_map_site_image = CGraphic:New("tilesets/world/sites/dwarven_settlement.png")
			elseif (MapSiteType == "Dwarven Outpost") then
				world_map_site_image = CGraphic:New("tilesets/world/sites/dwarven_outpost.png")
			elseif (MapSiteType == "Dwarven Fortified Outpost") then
				world_map_site_image = CGraphic:New("tilesets/world/sites/dwarven_fortified_outpost.png")
			elseif (MapSiteType == "Gnomish Settlement") then
				world_map_site_image = CGraphic:New("tilesets/world/sites/gnomish_settlement.png")
			end
			world_map_site_image:Load()

			local world_map_site = ImageButton("")
			world_map_site:setActionCallback(
				function()
					mapname = maps[i]
					menu:stop()
				end
			)
			menu:add(world_map_site, 16 + 32 * WorldMapPosition[1], 16 + 32 * (WorldMapPosition[2] + 1))
			world_map_site:setNormalImage(world_map_site_image)
			world_map_site:setPressedImage(world_map_site_image)
			world_map_site:setDisabledImage(world_map_site_image)
			world_map_site:setSize(32, 32)
			world_map_site:setBorderSize(0) -- Andrettin: make buttons not have the borders they previously had
		end
	end

	menu:addHalfButton("~!Random", "r", 48, 318,
		function()
			menu:stop()
		end)
	menu:addHalfButton("~!Cancel", "c", 198, 318,
		function()
			menu:stop()
		end)

	menu:run()
end

function RunSinglePlayerGameMenu()
  local menu = WarMenu()
  local offx = (Video.Width - 640) / 2
  local offy = (Video.Height - 480) / 2
  local d
  local world
  local scenario
  local race
  local faction
  local resources
  local opponents
  local numunits
  local gametype
  local mapl
  local descriptionl
  local person_player = 0
  local tech_level

  -- create the scenario and faction lists
  local scenario_list = {}
  local faction_list = {"Map Default"}
  local world_list = { }
  
  GrandStrategy = false
  
  local maps = {}

  for map_directory=1,table.getn(MapDirectories) do
	-- load the maps
	local i
	local f
	local u = 1

	-- list the subdirectories in the maps folder
	local dirlist = {}
	local dirs = ListDirsInDirectory(MapDirectories[map_directory])
	for i,f in ipairs(dirs) do
		dirlist[u] = f .. "/"
		u = u + 1
	end

	-- get maps in the main maps folder
	u = 1
	local fileslist = ListFilesInDirectory(MapDirectories[map_directory])
	for i,f in ipairs(fileslist) do
		if (string.find(f, "^.*%.smp%.?g?z?$")) then
			maps[u] = MapDirectories[map_directory] .. f
			u = u + 1
		end
	end

	-- get maps in subdirectories of the maps folder
	for j=1,table.getn(dirlist) do
		fileslist = ListFilesInDirectory(MapDirectories[map_directory] .. dirlist[j])
		for i,f in ipairs(fileslist) do
			if (string.find(f, "^.*%.smp%.?g?z?$")) then
				maps[u] = MapDirectories[map_directory] .. dirlist[j] .. f
				u = u + 1
			end
		end
	end

	-- build the world list from world references in the maps
	for i=1,table.getn(maps) do
		MapWorld = ""
		GetMapInfo(maps[i])
		if (MapWorld ~= "" and GetArrayIncludes(world_list, MapWorld) == false) then
			table.insert(world_list, MapWorld)
		end
	end

  end

  menu:addLabel("Map:", offx + 16, offy + 360, Fonts["game"], false)
  mapl = menu:addLabel(string.sub(mapname, 6), offx + 16, offy + 360 + 24, Fonts["game"], false)
  descriptionl = menu:addLabel("descriptionl", offx + 16 + 38, offy + 360, Fonts["game"], false)

  menu:addLabel("~<Single Player Game Setup~>", offx + 640/2 + 12, offy + 72)
--  menu:addFullButton("S~!elect Map", "e", offx + 640 - 224 - 16, offy + 360 + 36*-2,
--    function()
--      local oldmapname = mapname
--      RunWorldMapMenu(world_list[world:getSelected() + 1], maps)
--      GetMapInfo(mapname)
--      MapChanged()
--    end)
  menu:addFullButton("~!Quests", "q", offx + 640 - 224 - 16, offy + 360 + 36*-1,
    function()
      RunQuestMenu()
    end)
  menu:addFullButton("~!Tech Tree", "t", offx + 640 - 224 - 16, offy + 360 + 36*0,
    function()
      RunTechTreeMenu(0)
    end)
  menu:addFullButton("~!Start Game", "s", offx + 640 - 224 - 16, offy + 360 + 36*1,
    function()
    	-- change the human player in special cases
	if (mapinfo.description == "Chaincolt Foothills" and race:getSelected() == 1 and faction_list[faction:getSelected() + 1] == "Shorbear Clan" and (opponents:getSelected() == 0 or opponents:getSelected() >= 2) and mapinfo.nplayers >= 3 and mapinfo.playertypes[3] == "person") then
		person_player = 2
		for i=1,mapinfo.nplayers do
			if ((i - 1) ~= person_player and mapinfo.playertypes[i] == "person") then
				GameSettings.Presets[i-1].Type = PlayerComputer
			end
		end
	elseif (mapinfo.description == "Caverns of Chaincolt" and race:getSelected() == 1 and (faction_list[faction:getSelected() + 1] == "Shorbear Clan" or faction_list[faction:getSelected() + 1] == wyr.preferences.TheScepterOfFireRaiderFaction) and mapinfo.nplayers >= 2 and mapinfo.playertypes[2] == "person") then
		person_player = 1
		for i=1,mapinfo.nplayers do
			if ((i - 1) ~= person_player and mapinfo.playertypes[i] == "person") then
				GameSettings.Presets[i-1].Type = PlayerComputer
			end
		end
--	elseif (mapinfo.description == "Brown Hills" and (opponents:getSelected() == 0 or opponents:getSelected() >= 3) and mapinfo.nplayers >= 4 and mapinfo.playertypes[4] == "person") then
--		person_player = 3
--		for i=1,mapinfo.nplayers do
--			if ((i - 1) ~= person_player and mapinfo.playertypes[i] == "person") then
--				GameSettings.Presets[i-1].Type = PlayerComputer
--			end
--		end
	end

      GameSettings.Presets[person_player].Race = race:getSelected()
      GameSettings.Resources = resources:getSelected()
      if (faction:getSelected() == 0) then
        PlayerFaction = ""
      elseif (race:getSelected() == 1) then
        PlayerFaction = GetCivilizationFactions("dwarf")[faction:getSelected()]
      end
      GameSettings.Opponents = opponents:getSelected()
      GameSettings.NumUnits = numunits:getSelected()
      GameSettings.GameType = gametype:getSelected() - 1
      TechLevel[person_player + 1] = tech_level:getSelected() - 1
	  
      RunMap(mapname)
      menu:stop()
    end)
  menu:addFullButton("~!Cancel Game", "c", offx + 640 - 224 - 16, offy + 360 + 36*2, function() menu:stop() end)

  menu:addLabel("~<World:~>", offx + 40, offy + (10 + 120) - 20, Fonts["game"], false)
  world = menu:addDropDown(world_list, offx + 40, offy + 10 + 120,
    function(dd) WorldChanged() end)
  world:setSize(152, 20)
  world:setSelected(1)

  menu:addLabel("~<Map:~>", offx + 220, offy + (10 + 120) - 20, Fonts["game"], false)
  scenario = menu:addDropDown(scenario_list, offx + 220, offy + 10 + 120,
    function(dd) ScenarioChanged() end)
  scenario:setSize(152, 20)

  menu:addLabel("~<Your Civilization:~>", offx + 40, offy + (10 + 180) - 20, Fonts["game"], false)
  race = menu:addDropDown({"Map Default", dwarven_species_and_civilization_name}, offx + 40, offy + 10 + 180,
    function(dd) CivilizationChanged() end)
  race:setSize(152, 20)

  menu:addLabel("~<Your Faction:~>", offx + 220, offy + (10 + 180) - 20, Fonts["game"], false)
  faction = menu:addDropDown({"Map Default"}, offx + 220, offy + 10 + 180,
    function(dd) FactionChanged() end)
  faction:setSize(152, 20)

  menu:addLabel("~<Resources:~>", offx + 640 - 224 - 16, offy + (10 + 180) - 20, Fonts["game"], false)
  resources = menu:addDropDown({"Map Default", "Low", "Medium", "High"}, offx + 640 - 224 - 16, offy + 10 + 180,
    function(dd) end)
  resources:setSize(152, 20)

  menu:addLabel(units_name, offx + 40, offy + (10 + 240) - 20, Fonts["game"], false)
  numunits = menu:addDropDown({"Map Default", "One Worker Only", "Town Hall + Workers"}, offx + 40, offy + 10 + 240,
    function(dd) end)
  numunits:setSize(152, 20)

  local opponents_list = {"Map Default", "1 Opponent", "2 Opponents",
    "3 Opponents", "4 Opponents", "5 Opponents", "6 Opponents", "7 Opponents"}

  menu:addLabel("~<Opponents:~>", offx + 220, offy + (10 + 240) - 20, Fonts["game"], false)
  opponents = menu:addDropDown(opponents_list, offx + 220, offy + 10 + 240,
    function(dd) end)
  opponents:setSize(152, 20)

  menu:addLabel("~<Game Type:~>", offx + 640 - 224 - 16, offy + (10 + 240) - 20, Fonts["game"], false)
  gametype = menu:addDropDown({"Use Map Settings", "Melee", "Free for All", "Top vs Bottom", "Left vs Right", "Man vs Machine"}, offx + 640 - 224 - 16, offy + 10 + 240,
    function(dd) end)
  gametype:setSize(152, 20)

  menu:addLabel("~<Tech Level:~>", offx + 40, offy + (10 + 300) - 20, Fonts["game"], false)
  tech_level = menu:addDropDown({"Map Default", "Agrarian (Bronze)", "Agrarian (Iron)"}, offx + 40, offy + 10 + 300,
    function(dd) end)
  tech_level:setSize(152, 20)

  function WorldChanged()
	scenario_list = {}

	for i=1,table.getn(maps) do
		MapWorld = ""
		MapRequiredQuest = ""
		GetMapInfo(maps[i])
		if (MapWorld == world_list[world:getSelected() + 1]) then
			if (MapRequiredQuest == "" or GetArrayIncludes(wyr.preferences.QuestsCompleted, MapRequiredQuest)) then
				local incomplete_quest_present = false
				for key, value in pairs(Quests) do
					if (Quests[key].RequiredQuest == nil or GetArrayIncludes(wyr.preferences.QuestsCompleted, Quests[key].RequiredQuest)) then
						if (Quests[key].RequiredTechnology == nil or GetArrayIncludes(wyr.preferences.TechnologyAcquired, Quests[key].RequiredTechnology)) then
							if (Quests[key].Map == mapinfo.description and GetArrayIncludes(wyr.preferences.QuestsCompleted, Quests[key].Name) == false) then
								incomplete_quest_present = true
							end
						end
					end
				end
				if (incomplete_quest_present) then
					table.insert(scenario_list, "~<" .. mapinfo.description .. "~>")
				else
					table.insert(scenario_list, mapinfo.description)
				end
			end
		end
	end

	table.insert(scenario_list, "Custom Map")
	scenario:setList(scenario_list)
	scenario:setSize(152, 20)
	scenario:setSelected(0)
	ScenarioChanged()
  end

  function ScenarioChanged()
	for i=1,table.getn(maps) do
		MapWorld = ""
		GetMapInfo(maps[i])
		if ((mapinfo.description == scenario_list[scenario:getSelected() + 1] or "~<" .. mapinfo.description .. "~>" == scenario_list[scenario:getSelected() + 1]) and MapWorld == world_list[world:getSelected() + 1]) then
			mapname = maps[i]
			mapl:setCaption(string.sub(mapname, 6))
		end
	end

	if (scenario_list[scenario:getSelected() + 1] == "Custom Map") then
		local oldmapname = mapname
		RunSelectScenarioMenu()
		if (mapname ~= oldmapname) then
			GetMapInfo(mapname)
			MapChanged()
		end
		mapl:setCaption(string.sub(mapname, 6))
	end
	GetMapInfo(mapname)
	MapChanged()
  end

  function CivilizationChanged()
    faction_list = {"Map Default"}
    if (race:getSelected() == 1) then
	    for i=1,table.getn(GetCivilizationFactions("dwarf")) do
	      table.insert(faction_list, GetCivilizationFactions("dwarf")[i])
	    end
    end
    faction:setList(faction_list)
    faction:setSize(152, 20)
    faction:setSelected(0)
  end

  function MapChanged()
    mapl:setCaption(string.sub(mapname, 6))
    mapl:adjustSize()

    descriptionl:setCaption(mapinfo.description ..
      " (" .. mapinfo.w .. " x " .. mapinfo.h .. ")")
    descriptionl:adjustSize()

    local o = {}
    for i=1,mapinfo.nplayers do
      table.insert(o, opponents_list[i])
    end
    opponents:setList(o)
    opponents:setSize(152, 20)
  end

  GetMapInfo(mapname)
  MapChanged()

  WorldChanged()

  menu:run()
end

function BuildProgramStartMenu()
  wyrmsun.playlist = { "music/legends_of_the_north.ogg" }
  SetPlayerData(GetThisPlayer(), "RaceName", "gnome")

  if not (IsMusicPlaying()) then
    PlayMusic("music/legends_of_the_north.ogg")
  end

  local menu = WarMenu()
  local offx = (Video.Width - 640) / 2
  local offy = (Video.Height - 480) / 2

-- Replaced with a larger title, until we get a background with a proper logo
--  menu:addLabel(wyrmsun.Name .. " v" .. wyrmsun.Version .. "  " .. wyrmsun.Homepage, offx + 320, (Video.Height - 90) + 18*2, Fonts["game"])
  menu:addLabel(wyrmsun.Copyright, offx + 320, (Video.Height - 90) + 18*4, Fonts["small"])


  menu:addLabel(wyrmsun.Name .. " v" .. wyrmsun.Version, offx + 320, offy + 104 + 36*-2)
  if (wyr.preferences.LastVersionPlayed ~= wyrmsun.Version) then
  	-- changes to the player's persistent data to update it to the latest game version should be done here
	if (wyr.preferences.LastVersionPlayed ~= "0.0.0" and wyr.preferences.LastVersionPlayed ~= "0.1.6") then
		wyr.preferences.Heroes.Rugnur.upgrades = nil
		wyr.preferences.Heroes.Rugnur.upgrades = {}
		wyr.preferences.Heroes.Baglur.upgrades = nil
		wyr.preferences.Heroes.Baglur.upgrades = {}
		wyr.preferences.Heroes.Thursagan.upgrades = nil
		wyr.preferences.Heroes.Thursagan.upgrades = {}
		wyr.preferences.Heroes.Durstorn.upgrades = nil
		wyr.preferences.Heroes.Durstorn.upgrades = {}

		ResetTechnologiesAcquired()

		local warning_menu = WarGameMenu(panel(2))
		warning_menu:setSize(288, 256)
		warning_menu:setPosition((Video.Width - warning_menu:getWidth()) / 2, (Video.Height - warning_menu:getHeight()) / 2)
		warning_menu:addLabel("Warning", 144, 11)

		local l = MultiLineLabel()
		l:setFont(Fonts["game"])
		l:setSize(270, 128)
		l:setLineWidth(270)
		warning_menu:add(l, 14, 70)
		l:setCaption("Due to changes in the tech tree in the latest version of Wyrmsun, your choice of technologies has been reset. You may reallocate your tech points.")

		warning_menu:addFullButton("~!Close", "c", 32, 256 - 40,
			function()
				warning_menu:stop()
			end)
		warning_menu:run()
	end
	wyr.preferences.LastVersionPlayed = wyrmsun.Version
	SavePreferences()
  end

  menu:addFullButton(single_player_game_name, "s", offx + 208, offy + 104 + 36*-1,
    function() RunSinglePlayerGameMenu(); menu:stop(1) end)
  menu:addFullButton(multi_player_game_name, "m", offx + 208, offy + 104 + 36*0,
    function() RunMultiPlayerGameMenu(); menu:stop(1) end)
  menu:addFullButton("~!Grand Strategy Game", "g", offx + 208, offy + 104 + 36*1,
    function() RunGrandStrategyGameSetupMenu(); menu:stop(1) end)
  menu:addFullButton(title_load_game_name, "l", offx + 208, offy + 104 + 36*2,
    function() RunLoadGameMenu(); menu:stop(1) end)
  menu:addFullButton(replay_game_name, "r", offx + 208, offy + 104 + 36*3,
    function() RunReplayGameMenu(); menu:stop(1) end)
--  menu:addFullButton("~!Achievements", "a", offx + 208, offy + 104 + 36*3,
--    function() RunAchievementsMenu(); menu:stop(1) end)
  menu:addFullButton(options_name, "o", offx + 208, offy + 104 + 36*4,
    function() RunOptionsMenu(); menu:stop(1) end)
  menu:addFullButton(map_editor_name, "e", offx + 208, offy + 104 + 36*5,
    function() RunEditorMenu(); menu:stop(1) end)
  menu:addFullButton("Load Mo~!d", "d", offx + 208, offy + 104 + 36*6,
    function() RunLoadModMenu(); menu:stop(1) end)
  menu:addFullButton("En~!cyclopedia", "c", offx + 208, offy + 104 + 36*7,
    function() RunEncyclopediaMenu(); menu:stop(1) end)
  menu:addFullButton(show_credits_name, "h", offx + 208, offy + 104 + 36*8, RunShowCreditsMenu)

  menu:addFullButton(exit_program_name, "x", offx + 208, offy + 104 + 36*9,
    function() menu:stop() end)

  return menu:run()
end

function RunLoadModMenu()
  buttonStatut = 0
  local menu = WarMenu(nil, panel(5), false)
  menu:setSize(352, 352)
  menu:setPosition((Video.Width - 352) / 2, (Video.Height - 352) / 2)
  menu:setDrawMenusUnder(true)

  menu:addLabel("Load Mod", 176, 8)

  local browser = menu:addBrowser("mods/", ".lua$",
    24, 140, 300, 108, nil, false)

  local l = menu:addLabel(browser:getSelectedItem(), 24, 260, Fonts["game"], false)

  menu:addHalfButton("~!OK", "o", 48, 318,
    function()
      if (browser:getSelected() < 0) then
        return
      end
      Load(browser.path .. browser:getSelectedItem())
      menu:stop()
    end)
  menu:addHalfButton("~!Cancel", "c", 198, 318,
    function() buttonStatut = 2; menu:stop() end)

  menu:run()
end

LoadGameFile = nil

function RunProgramStartMenu()
  local continue = 1

  while continue == 1 do
    if (LoadGameFile ~= nil) then
      LoadGame(LoadGameFile)
    else
      continue = BuildProgramStartMenu(menu)
    end
  end
end


Load("scripts/menus/load.lua")
Load("scripts/menus/save.lua")
Load("scripts/menus/replay.lua")
Load("scripts/menus/options.lua")
Load("scripts/menus/editor.lua")
Load("scripts/menus/credits.lua")
Load("scripts/menus/game.lua")
Load("scripts/menus/help.lua")
Load("scripts/menus/objectives.lua")
Load("scripts/menus/endscenario.lua")
Load("scripts/menus/diplomacy.lua")
Load("scripts/menus/results.lua")
Load("scripts/menus/network.lua")
Load("scripts/menus/techtree.lua")
Load("scripts/menus/quests.lua")
Load("scripts/menus/achievements.lua")
Load("scripts/menus/grand_strategy.lua")
Load("scripts/menus/encyclopedia.lua")

function GameStarting()
  if (wyr.preferences.ShowTips and not IsReplayGame()) then
    SetGamePaused(true)
    RunTipsMenu()
  end
end

if (Editor.Running == EditorCommandLine) then
  if (CliMapName and CliMapName ~= "") then
    StartEditor(CliMapName)
  else
    RunEditorMenu()
  end
else
  if (CliMapName and CliMapName ~= "") then
    RunMap(CliMapName)
  else
    RunProgramStartMenu()
  end
end


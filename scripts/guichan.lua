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
--      (c) Copyright 2006-2021 by Jimmy Salmon, Pali Rohár and Andrettin
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

SetPlayerData(GetThisPlayer(), "RaceName", "gnome")

-- Global useful objects for menus  ----------
dark = Color(38, 38, 78)
clear = Color(200, 200, 120)
black = Color(0, 0, 0)

function panel(n)
	local panels = {}
	panels = {
		"interface/" .. GetCivilizationData(GetPlayerData(GetThisPlayer(), "RaceName"), "Interface") .. "/panel_1.png",
		"interface/" .. GetCivilizationData(GetPlayerData(GetThisPlayer(), "RaceName"), "Interface") .. "/panel_2.png",
		"interface/" .. GetCivilizationData(GetPlayerData(GetThisPlayer(), "RaceName"), "Interface") .. "/panel_3.png",
		"interface/" .. GetCivilizationData(GetPlayerData(GetThisPlayer(), "RaceName"), "Interface") .. "/panel_4.png",
		"interface/" .. GetCivilizationData(GetPlayerData(GetThisPlayer(), "RaceName"), "Interface") .. "/panel_5.png"
	}
	return panels[n]
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

  function menu:addMultiLineLabel(text, x, y, font, center, line_width)
    local label = MultiLineLabel(text)
    if (font == nil) then font = Fonts["large"] end
    label:setFont(font)
    if (center == nil or center == true) then -- center text by default
		label:setAlignment(MultiLineLabel.CENTER)
	else
		label:setAlignment(MultiLineLabel.LEFT)
    end
	label:setLineWidth(line_width)
    label:adjustSize()
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
	if (hotkey ~= "") then
		b:setHotKey(hotkey)
	end
    b:setActionCallback(
		function()
--			PlaySound("click")
			callback()
		end
	)
    if (size == nil) then size = {200 * get_scale_factor(), 24 * get_scale_factor()} end
    b:setSize(size[1], size[2])
    b:setBackgroundColor(dark)
    b:setBaseColor(dark)
    self:add(b, x, y)
    return b
  end

	function menu:addImageButton(caption, hotkey, x, y, callback)
		local b = ImageButton(caption)
		if (hotkey ~= "") then
			b:setHotKey(hotkey)
		end
		b:setActionCallback(
			function()
				PlaySound("click")
				callback()
			end
		)
		self:add(b, x, y)
		b:setBorderSize(0) -- Andrettin: make buttons not have the borders they previously had
		return b
	end

	function menu:addFullButton(caption, hotkey, x, y, callback)
		local b = self:addImageButton(caption, hotkey, x, y, callback)
		b:setBaseColor(Color(0,0,0,0))
		b:setForegroundColor(Color(0,0,0,0))
		b:setBackgroundColor(Color(0,0,0,0))
		local g_bln
		local g_blp
		local g_blg
		if (GetPlayerData(GetThisPlayer(), "RaceName") == "gnome") then
			g_bln = "interface/default/button_large_normal.png"
			g_blp = "interface/default/button_large_pressed.png"
			g_blg = "interface/default/button_large_grayed.png"
		else
			g_bln = "interface/" .. GetCivilizationData(GetPlayerData(GetThisPlayer(), "RaceName"), "Interface") .. "/button_large_normal.png"
			g_blp = "interface/" .. GetCivilizationData(GetPlayerData(GetThisPlayer(), "RaceName"), "Interface") .. "/button_large_pressed.png"
			g_blg = "interface/" .. GetCivilizationData(GetPlayerData(GetThisPlayer(), "RaceName"), "Interface") .. "/button_large_grayed.png"
		end
		b:setNormalImage(g_bln)
		b:setPressedImage(g_blp)
		b:setDisabledImage(g_blg)
		b:setSize(224 * get_scale_factor(), 28 * get_scale_factor())
		if (string.len(caption) > 24) then
			b:setFont(Fonts["game"])
		end
		return b
	end

	function menu:addHalfButton(caption, hotkey, x, y, callback)
		local b = self:addImageButton(caption, hotkey, x, y, callback)
		b:setBaseColor(Color(0,0,0,0))
		b:setForegroundColor(Color(0,0,0,0))
		b:setBackgroundColor(Color(0,0,0,0))
		local g_bsn
		local g_bsp
		local g_bsg
		if (GetPlayerData(GetThisPlayer(), "RaceName") == "gnome") then
			g_bsn = "interface/default/button_small_normal.png"
			g_bsp = "interface/default/button_small_pressed.png"
			g_bsg = "interface/default/button_small_grayed.png"
		else
			g_bsn = "interface/" .. GetCivilizationData(GetPlayerData(GetThisPlayer(), "RaceName"), "Interface") .. "/button_small_normal.png"
			g_bsp = "interface/" .. GetCivilizationData(GetPlayerData(GetThisPlayer(), "RaceName"), "Interface") .. "/button_small_pressed.png"
			g_bsg = "interface/" .. GetCivilizationData(GetPlayerData(GetThisPlayer(), "RaceName"), "Interface") .. "/button_small_grayed.png"
		end
		b:setNormalImage(g_bsn)
		b:setPressedImage(g_bsp)
		b:setDisabledImage(g_bsg)
		b:setSize(106 * get_scale_factor(), 28 * get_scale_factor())
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
		local g_lslider_n
		local g_lslider_p
		g_lslider_n = "interface/" .. GetCivilizationData(GetPlayerData(GetThisPlayer(), "RaceName"), "Interface") .. "/left_arrow_normal.png"
		g_lslider_p = "interface/" .. GetCivilizationData(GetPlayerData(GetThisPlayer(), "RaceName"), "Interface") .. "/left_arrow_pressed.png"
		b:setNormalImage(g_lslider_n)
		b:setPressedImage(g_lslider_p)
		b:setSize(20 * get_scale_factor(), 19 * get_scale_factor())
		b:setBorderSize(0)
		return b
	end
  
	function menu:addImageSlider(min, max, w, h, x, y, callback)
		local b = ImageSlider(min, max)
		-- New Slider Functions
		local g_marker
		local g_slider
		g_marker = "interface/" .. GetCivilizationData(GetPlayerData(GetThisPlayer(), "RaceName"), "Interface") .. "/slider_knob.png"
		g_slider = "interface/" .. GetCivilizationData(GetPlayerData(GetThisPlayer(), "RaceName"), "Interface") .. "/slider_bar_normal.png"
		b:setMarkerImage(g_marker)
		b:setBackgroundImage(g_slider)
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
		local g_rslider_n
		local g_rslider_p
		g_rslider_n = "interface/" .. GetCivilizationData(GetPlayerData(GetThisPlayer(), "RaceName"), "Interface") .. "/right_arrow_normal.png"
		g_rslider_p = "interface/" .. GetCivilizationData(GetPlayerData(GetThisPlayer(), "RaceName"), "Interface") .. "/right_arrow_pressed.png"
		b:setNormalImage(g_rslider_n)
		b:setPressedImage(g_rslider_p)
		b:setSize(20 * get_scale_factor(), 19 * get_scale_factor())
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
    local sortMode = 0

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

      local fileslist
      if (sortMode == 0) then
        fileslist = ListFilesInDirectory(path)
      else
        fileslist = ListFilesInDirectorySortByTime(path)
      end
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

    function bq:sortByName()
      sortMode = 0
      updatelist()
    end

    function bq:sortByTime()
      sortMode = 1
      updatelist()
    end

    return bq
  end

  function menu:addCheckBox(caption, x, y, callback)
    local b = CheckBox(caption)
    b:setBaseColor(clear)
    b:setForegroundColor(clear)
    b:setBackgroundColor(dark)
	if (callback ~= nil) then b:setActionCallback(function(s) PlaySound("click"); callback(b, s) end) end
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
		local g_checkbox_off
		local g_checkbox_off2
		local g_checkbox_on
		local g_checkbox_on2
		g_checkbox_off = "interface/" .. GetCivilizationData(GetPlayerData(GetThisPlayer(), "RaceName"), "Interface") .. "/radio_normal_unselected.png"
		g_checkbox_off2 = "interface/" .. GetCivilizationData(GetPlayerData(GetThisPlayer(), "RaceName"), "Interface") .. "/radio_pressed_unselected.png"
		g_checkbox_on = "interface/" .. GetCivilizationData(GetPlayerData(GetThisPlayer(), "RaceName"), "Interface") .. "/radio_normal_selected.png"
		g_checkbox_on2 = "interface/" .. GetCivilizationData(GetPlayerData(GetThisPlayer(), "RaceName"), "Interface") .. "/radio_pressed_selected.png"
		b:setUncheckedNormalImage(g_checkbox_off)
		b:setUncheckedPressedImage(g_checkbox_off2)
		b:setCheckedNormalImage(g_checkbox_on)
		b:setCheckedPressedImage(g_checkbox_on2)
		if (callback ~= nil) then b:setActionCallback(function(s) PlaySound("click"); callback(b, s) end) end
		b:setFont(Fonts["game"])
		self:add(b, x - 1 * get_scale_factor(), y - 1 * get_scale_factor()) -- reduced by 1 because the images are bigger than they are supposed to be, as they are graphics for radio buttons
		return b
	end
  
  function menu:addRadioButton(caption, group, x, y, callback)
    local b = RadioButton(caption, group)
    b:setBaseColor(dark)
    b:setForegroundColor(clear)
    b:setBackgroundColor(dark)
    b:setActionCallback(
		function()
			PlaySound("click")
			callback()
		end
	)
    self:add(b, x, y)
    return b
  end

	function menu:addImageRadioButton(caption, group, x, y, callback)
		local b = ImageRadioButton(caption, group)
		b:setBaseColor(Color(0,0,0,0))
		b:setForegroundColor(Color(0,0,0,0))
		b:setBackgroundColor(Color(0,0,0,0))
		local g_radio_off
		local g_radio_off2
		local g_radio_on
		local g_radio_on2
		g_radio_off = "interface/" .. GetCivilizationData(GetPlayerData(GetThisPlayer(), "RaceName"), "Interface") .. "/radio_normal_unselected.png"
		g_radio_off2 = "interface/" .. GetCivilizationData(GetPlayerData(GetThisPlayer(), "RaceName"), "Interface") .. "/radio_pressed_unselected.png"
		g_radio_on = "interface/" .. GetCivilizationData(GetPlayerData(GetThisPlayer(), "RaceName"), "Interface") .. "/radio_normal_selected.png"
		g_radio_on2 = "interface/" .. GetCivilizationData(GetPlayerData(GetThisPlayer(), "RaceName"), "Interface") .. "/radio_pressed_selected.png"
		b:setUncheckedNormalImage(g_radio_off)
		b:setUncheckedPressedImage(g_radio_off2)
		b:setCheckedNormalImage(g_radio_on)
		b:setCheckedPressedImage(g_radio_on2)
		b:setFont(Fonts["game"])
		b:setActionCallback(
			function()
				PlaySound("click")
				callback()
			end
		)
		self:add(b, x, y)
		return b
	end
  
	function menu:addDropDown(list, x, y, callback)
		local dd = ImageDropDownWidget()
		dd:setFont(Fonts["game"])
		local g_bar
		local g_dslider_n
		local g_dslider_p
		g_bar = "interface/" .. GetCivilizationData(GetPlayerData(GetThisPlayer(), "RaceName"), "Interface") .. "/pulldown_bar_normal.png"
		g_dslider_n = "interface/" .. GetCivilizationData(GetPlayerData(GetThisPlayer(), "RaceName"), "Interface") .. "/down_arrow_normal.png"
		g_dslider_p = "interface/" .. GetCivilizationData(GetPlayerData(GetThisPlayer(), "RaceName"), "Interface") .. "/down_arrow_pressed.png"
		dd:setItemImage(g_bar)
		dd:setDownNormalImage(g_dslider_n)
		dd:setDownPressedImage(g_dslider_p)
		dd:setList(list)
		dd:setActionCallback(function(s) PlaySound("click"); callback(dd, s) end)
		dd:setBorderSize(0)

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
    if (w == nil) then
		w = 100 * get_scale_factor()
	end
    b:setSize(w, 18 * get_scale_factor())
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

	if background ~= nil then
		if (resize == nil or resize == true) then
			bg = ImageWidget(background, 1, Video.Width, Video.Height)
		else
			bg = ImageWidget(background, get_scale_factor())
		end
		menu:add(bg, 0, 0)
	end

	AddMenuHelpers(menu)

	if title then
		menu:addLabel(title, Video.Width / 2, Video.Height / 20, Fonts["large"])
	end

	return menu
end

function WarGrandStrategyMenu(title, resize)
  local menu
  local exitButton
  local bg
  local bgg

  menu = MenuScreen()

  AddMenuHelpers(menu)

  if title then
    menu:addLabel(title, Video.Width / 2, Video.Height / 20, Fonts["large"])
  end

  return menu
end

-- Default configurations -------
Widget:setGlobalFont(Fonts["large"])


DefaultObjectives = {"- Defeat your rivals"}
--for i=0,(PlayerMax - 2) do
--	for key, value in pairs(CustomPlayerData) do
--		if (CustomPlayerData[key].Number == i) then
--			CustomPlayerData[key].Objectives = DefaultObjectives
--		end
--	end
--end


-- Define the different menus ----------

function InitGameSettings()
	GameSettings:reset()
end
InitGameSettings()

function RunMap(map, objective, fow, revealmap)
	if (LoadedGame == false) then
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
	end
	local loop = true
	while (loop) do
		play_loading_music()

		InitGameVariables()
		if fow ~= nil then
			SetFogOfWar(fow)
		end
		if revealmap == true then
			RevealMap()
		end
		StartMap(map, true)
		if GameResult ~= GameRestart then
			loop = false
		end
	end
	RunResultsMenu(s)

	InitGameSettings()
	SetPlayerData(GetThisPlayer(), "RaceName", "gnome")
	
	SetCurrentCampaign("")
	SetCurrentQuest("")
end

mapname = "maps/random/random-map-swamp.smp"
modname = ""
local buttonStatut = 0 -- 0:not initialised, 1: Ok, 2: Cancel
mapinfo = {
  playertypes = {nil, nil, nil, nil, nil, nil, nil, nil},
  description = "",
  nplayers = 1,
  npersonplayers = 1,
  w = 32,
  h = 32,
  id = 0
}

function GetMapInfo(mapname)
	local OldDefinePlayerTypes = DefinePlayerTypes
	local OldPresentMap = PresentMap

	function DefinePlayerTypes(p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p12, p13, p14, p15, p16, p17, p18, p19, p20, p21, p22, p23, p24, p25, p26, p27, p28, p29, p30, p31)
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
		mapinfo.playertypes[16] = p16
		mapinfo.playertypes[17] = p17
		mapinfo.playertypes[18] = p18
		mapinfo.playertypes[19] = p19
		mapinfo.playertypes[20] = p20
		mapinfo.playertypes[21] = p21
		mapinfo.playertypes[22] = p22
		mapinfo.playertypes[23] = p23
		mapinfo.playertypes[24] = p24
		mapinfo.playertypes[25] = p25
		mapinfo.playertypes[26] = p26
		mapinfo.playertypes[27] = p27
		mapinfo.playertypes[28] = p28
		mapinfo.playertypes[29] = p29
		mapinfo.playertypes[30] = p30
		mapinfo.playertypes[31] = p31

		mapinfo.nplayers = 0
		for i=0,(PlayerMax - 1) do
			local t = mapinfo.playertypes[i]
			if (t == "person" or t == "computer") then
				mapinfo.nplayers = mapinfo.nplayers + 1
			end
		end
		
		mapinfo.npersonplayers = 0
		for i=0,(PlayerMax - 1) do
			local t = mapinfo.playertypes[i]
			if (t == "person") then
				mapinfo.npersonplayers = mapinfo.npersonplayers + 1
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

function RunSelectScenarioMenu(is_mod)
	buttonStatut = 0
	local menu = WarGameMenu(panel(5))
	menu:resize(352 * get_scale_factor(), 352 * get_scale_factor())
	menu:setDrawMenusUnder(true)

	local browser
	if not (is_mod) then
		menu:addLabel(_("Select Map"), 176 * get_scale_factor(), 8 * get_scale_factor())
		
		browser = menu:addBrowser(MapDirectories[1], "^.*%.smp%.?g?z?$",
			24 * get_scale_factor(), 88 * get_scale_factor(), 300 * get_scale_factor(), 108 * get_scale_factor(), mapname)
	else
		menu:addLabel(_("Select Mod"), 176 * get_scale_factor(), 8 * get_scale_factor())

		if (modname ~= "") then
			browser = menu:addBrowser(ModDirectories[1], "^.*%.smp%.?g?z?$",
				24 * get_scale_factor(), 88 * get_scale_factor(), 300 * get_scale_factor(), 108 * get_scale_factor(), modname)
		else
			browser = menu:addBrowser(ModDirectories[1], "^.*%.smp%.?g?z?$",
				24 * get_scale_factor(), 88 * get_scale_factor(), 300 * get_scale_factor(), 108 * get_scale_factor())
		end
	end


	local l = menu:addLabel(browser:getSelectedItem(), 24 * get_scale_factor(), 208 * get_scale_factor(), Fonts["game"], false)

	local function cb(s)
		l:setCaption(browser:getSelectedItem())
		l:adjustSize()
	end
	browser:setActionCallback(cb)

	menu:addHalfButton(_("~!OK"), "o", 48 * get_scale_factor(), 318 * get_scale_factor(),
		function()
			local cap = l:getCaption()

			if (browser:getSelected() < 0) then
				return
			end
			buttonStatut = 1
			if not (is_mod) then
				mapname = browser.path .. cap
			else
				modname = browser.path .. cap
			end
			menu:stop()
		end)
	menu:addHalfButton(_("~!Cancel"), "c", 198 * get_scale_factor(), 318 * get_scale_factor(),
		function() buttonStatut = 2; menu:stop() end)
	
	if not (is_mod) then
		local sortByCheckBox
		sortByCheckBox = menu:addImageCheckBox(_("Show Latest First"), (352 - 300 - 18) * get_scale_factor() / 2, (352 - 16 - 27 - 25) * get_scale_factor(),
		function()
			wyr.preferences.SortSaveGamesByTime = sortByCheckBox:isMarked()
			SavePreferences()

			if (wyr.preferences.SortSaveGamesByTime) then
				browser:sortByTime()
			else
				browser:sortByName()
			end
		end)
		sortByCheckBox:setMarked(wyr.preferences.SortSaveGamesByTime)
		if (wyr.preferences.SortSaveGamesByTime) then
			browser:sortByTime()
		end
	end
	
	menu:run()
end

custom_game_menu = nil

function RunSinglePlayerCustomGameMenu()
	SetPlayerData(GetThisPlayer(), "RaceName", "gnome")
	local menu = WarMenu()
	custom_game_menu = menu
	local offx = (Video.Width - 640 * get_scale_factor()) / 2
	local offy = (Video.Height - 480 * get_scale_factor()) / 2
	local d
	local race
	local tech_level
	local max_tech_level
	MapPersonPlayer = 0

	-- create the civilization list
	local civilization_ident_list = {"Map Default"}
	local civilization_list = {_("Map Default")}
	local tech_level_list = {_("Map Default"), _("Agrarian (Bronze)"), _("Agrarian (Iron)"), _("Civilized (Bronze)"), _("Civilized (Iron)"), _("Civilized (Gunpowder)")}
	local tech_level_enum_list = {NoTechLevel, AgrarianBronzeTechLevel, AgrarianIronTechLevel, CivilizedBronzeTechLevel, CivilizedIronTechLevel, CivilizedGunpowderTechLevel}
	local max_tech_level_list = {_("Map Default")}
	local max_tech_level_enum_list = {NoTechLevel}
	
	RunningScenario = false
	
	menu:addFullButton(_("~!Start Game"), "s", offx + (640 - 224 - 16) * get_scale_factor(), offy + (360 + 36*1) * get_scale_factor(),
		function()
			GameSettings.TechLevel = tech_level_enum_list[tech_level:getSelected() + 1]
			GameSettings.MaxTechLevel = max_tech_level_enum_list[max_tech_level:getSelected() + 1]
		end
	)

	menu:addLabel(_("Your Civilization:"), offx + 40 * get_scale_factor(), offy + ((10 + 180) - 20) * get_scale_factor(), Fonts["game"], false)
	race = menu:addDropDown(civilization_list, offx + 40 * get_scale_factor(), offy + (10 + 180) * get_scale_factor(),
		function(dd) end)
	race:setSize(152 * get_scale_factor(), 20 * get_scale_factor())

	menu:addLabel(_("Tech Level:"), offx + (640 - 224 - 16) * get_scale_factor(), offy + ((10 + 240) - 20) * get_scale_factor(), Fonts["game"], false)
	tech_level = menu:addDropDown(tech_level_list, offx + (640 - 224 - 16) * get_scale_factor(), offy + (10 + 240) * get_scale_factor(), function(dd) TechLevelChanged() end)
	tech_level:setSize(152 * get_scale_factor(), 20 * get_scale_factor())

	menu:addLabel(_("Max Tech Level:"), offx + 40 * get_scale_factor(), offy + ((10 + 300) - 20) * get_scale_factor(), Fonts["game"], false)
	max_tech_level = menu:addDropDown(max_tech_level_list, offx + 40 * get_scale_factor(), offy + (10 + 300) * get_scale_factor(), function(dd) end)
	max_tech_level:setSize(152 * get_scale_factor(), 20 * get_scale_factor())

	function TechLevelChanged()
		max_tech_level_list = {_("Map Default")}
		max_tech_level_enum_list = {NoTechLevel}
		
		if (tech_level:getSelected() - 1 == -1 or tech_level_enum_list[tech_level:getSelected() + 1] == AgrarianBronzeTechLevel) then
			table.insert(max_tech_level_list, _("Agrarian (Bronze)"))
			table.insert(max_tech_level_enum_list, AgrarianBronzeTechLevel)
		end
		if (tech_level:getSelected() - 1 == -1 or tech_level_enum_list[tech_level:getSelected() + 1] == AgrarianBronzeTechLevel or tech_level_enum_list[tech_level:getSelected() + 1] == AgrarianIronTechLevel) then
			table.insert(max_tech_level_list, _("Agrarian (Iron)"))
			table.insert(max_tech_level_enum_list, AgrarianIronTechLevel)
		end
		if (tech_level:getSelected() - 1 == -1 or tech_level_enum_list[tech_level:getSelected() + 1] == AgrarianBronzeTechLevel or tech_level_enum_list[tech_level:getSelected() + 1] == CivilizedBronzeTechLevel) then
			table.insert(max_tech_level_list, _("Civilized (Bronze)"))
			table.insert(max_tech_level_enum_list, CivilizedBronzeTechLevel)
		end
		if (tech_level:getSelected() - 1 == -1 or tech_level_enum_list[tech_level:getSelected() + 1] == AgrarianBronzeTechLevel or tech_level_enum_list[tech_level:getSelected() + 1] == CivilizedBronzeTechLevel or tech_level_enum_list[tech_level:getSelected() + 1] == AgrarianIronTechLevel or tech_level_enum_list[tech_level:getSelected() + 1] == CivilizedIronTechLevel) then
			table.insert(max_tech_level_list, _("Civilized (Iron)"))
			table.insert(max_tech_level_enum_list, CivilizedIronTechLevel)
		end
		table.insert(max_tech_level_list, _("Civilized (Gunpowder)"))
		table.insert(max_tech_level_enum_list, CivilizedGunpowderTechLevel)
		
		max_tech_level:setList(max_tech_level_list)
		max_tech_level:setSize(152 * get_scale_factor(), 20 * get_scale_factor())
		max_tech_level:setSelected(0)
		BuildCivilizationList()
	end

	function BuildCivilizationList()
		local function compare_civilization(a, b)
			if (GetCivilizationData(a, "Species") ~= GetCivilizationData(b, "Species")) then
				return GetCivilizationData(a, "Species") < GetCivilizationData(b, "Species")
			else
				return a < b
			end
		end
	
		civilization_ident_list = {}
		civilization_list = {}
		
		local civilizations = GetCivilizations()
		for i=1,table.getn(civilizations) do
			if (GetCivilizationData(civilizations[i], "Playable")) then
				if (
					(civilizations[i] ~= "germanic" or tech_level_enum_list[tech_level:getSelected() + 1] == NoTechLevel or tech_level_enum_list[tech_level:getSelected() + 1] == AgrarianBronzeTechLevel)
					and (civilizations[i] ~= "anglo_saxon" or tech_level_enum_list[tech_level:getSelected() + 1] == AgrarianIronTechLevel or tech_level_enum_list[tech_level:getSelected() + 1] == CivilizedBronzeTechLevel or tech_level_enum_list[tech_level:getSelected() + 1] == CivilizedIronTechLevel)
					and (civilizations[i] ~= "frankish" or tech_level_enum_list[tech_level:getSelected() + 1] == AgrarianIronTechLevel or tech_level_enum_list[tech_level:getSelected() + 1] == CivilizedBronzeTechLevel or tech_level_enum_list[tech_level:getSelected() + 1] == CivilizedIronTechLevel)
					and (civilizations[i] ~= "goth" or tech_level_enum_list[tech_level:getSelected() + 1] == AgrarianIronTechLevel or tech_level_enum_list[tech_level:getSelected() + 1] == CivilizedBronzeTechLevel or tech_level_enum_list[tech_level:getSelected() + 1] == CivilizedIronTechLevel)
					and (civilizations[i] ~= "norse" or tech_level_enum_list[tech_level:getSelected() + 1] == AgrarianIronTechLevel or tech_level_enum_list[tech_level:getSelected() + 1] == CivilizedBronzeTechLevel or tech_level_enum_list[tech_level:getSelected() + 1] == CivilizedIronTechLevel or tech_level_enum_list[tech_level:getSelected() + 1] == CivilizedGunpowderTechLevel)
					and (civilizations[i] ~= "suebi" or tech_level_enum_list[tech_level:getSelected() + 1] == AgrarianIronTechLevel or tech_level_enum_list[tech_level:getSelected() + 1] == CivilizedBronzeTechLevel or tech_level_enum_list[tech_level:getSelected() + 1] == CivilizedIronTechLevel)
					and (civilizations[i] ~= "teuton" or tech_level_enum_list[tech_level:getSelected() + 1] == AgrarianIronTechLevel or tech_level_enum_list[tech_level:getSelected() + 1] == CivilizedBronzeTechLevel or tech_level_enum_list[tech_level:getSelected() + 1] == CivilizedIronTechLevel or tech_level_enum_list[tech_level:getSelected() + 1] == CivilizedGunpowderTechLevel)
					and (civilizations[i] ~= "dutch" or tech_level_enum_list[tech_level:getSelected() + 1] == CivilizedIronTechLevel or tech_level_enum_list[tech_level:getSelected() + 1] == CivilizedGunpowderTechLevel)
					and (civilizations[i] ~= "english" or tech_level_enum_list[tech_level:getSelected() + 1] == CivilizedIronTechLevel or tech_level_enum_list[tech_level:getSelected() + 1] == CivilizedGunpowderTechLevel)
				) then
					table.insert(civilization_ident_list, civilizations[i])
				end
			end
		end
		
		table.sort(civilization_ident_list, compare_civilization)
		for i=1,table.getn(civilization_ident_list) do
			local playable_civilization_species = CapitalizeString(GetCivilizationData(civilization_ident_list[i], "Species"))
			local playable_civilization = GetCivilizationData(civilization_ident_list[i], "Display")
			if (playable_civilization_species ~= playable_civilization) then
				table.insert(civilization_list, _(playable_civilization_species) .. " - " .. _(playable_civilization))
			else
				table.insert(civilization_list, _(playable_civilization))
			end
		end
		
		table.insert(civilization_ident_list, 1, "Map Default")
		table.insert(civilization_list, 1, _("Map Default"))
		
		
		race:setList(civilization_list)
		race:setSize(152 * get_scale_factor(), 20 * get_scale_factor())
		race:setSelected(0)
	end
	
	TechLevelChanged()

	menu:run()
end

main_menu = nil

function BuildProgramStartMenu()
	SetPlayerData(GetThisPlayer(), "RaceName", "gnome")

	local menu = WarMenu()
	main_menu = menu

	PersistencyUpdates()

	if (CanAccessFile("wyr/quests.lua")) then
		Load("wyr/quests.lua") -- load the quests here, so that the achievement unlocked dialogs can appear properly
		SaveQuestCompletion()
	end
	
	return menu:run()
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
Load("scripts/menus/quests.lua")
Load("scripts/menus/achievements.lua")
Load("scripts/menus/mods.lua")
Load("scripts/grand_strategy/grand_strategy.lua")
Load("scripts/menus/factions.lua")
Load("scripts/menus/family_tree.lua")
Load("scripts/menus/custom_hero.lua")

LoadData() -- process the data

load_database(false)

-- load DLCs and mods now
LoadDLCs()
LoadMods()

Load("scripts/language_words.lua")
Load("scripts/map_template_data.lua")

Load("scripts/ai_helper.lua") -- load the AI helper after the mods

-- load heroes after the DLCs and mods, so that they can use mod-specific items
LoadingPersistentHeroes = true
if (CanAccessFile("wyr/heroes.lua")) then -- keep compatibility with how heroes were saved before
	Load("heroes.lua")
	SaveHeroes()
else
	LoadHeroes() -- load persistent heroes
end
LoadingPersistentHeroes = false

initialize_database()

--pack_image_folder("C:/Wyrmsun/models/units/hobgoblin/warrior/Sprites")

function GameStarting()
	play_map_music()
	
	--[[
	if (wyr.preferences.ShowTips and not IsReplayGame() and not IsNetworkGame()) then
		SetGamePaused(true)
		RunTipsMenu()
	end
	--]]
end

if (is_test_run()) then
	return
end

if (Editor.Running == EditorCommandLine) then
	if (CliMapName and CliMapName ~= "") then
		StartEditor(CliMapName, false)
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

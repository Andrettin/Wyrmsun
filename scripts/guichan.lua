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
--      (c) Copyright 2006-2016 by Jimmy Salmon, Pali Rohár and Andrettin
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

wyrmsun_logo = CGraphic:New("ui/wyrmsun_logo_" .. Video.Height .. ".png")
wyrmsun_logo:Load()
--wyrmsun_logo:Resize(6197 * Video.Width / 800 / 16, 2456 * Video.Height / 600 / 16)
wyrmsun_logo_widget = ImageWidget(wyrmsun_logo)

function panel(n)
	local panels = {}
	if (GetPlayerData(GetThisPlayer(), "RaceName") == "dwarf" or GetPlayerData(GetThisPlayer(), "RaceName") == "germanic" or GetPlayerData(GetThisPlayer(), "RaceName") == "goblin") then
		panels = {
			GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/panel_1.png",
			GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/panel_2.png",
			GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/panel_3.png",
			GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/panel_4.png",
			GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/panel_5.png"
		}
	elseif (GetPlayerData(GetThisPlayer(), "RaceName") == "teuton") then
		panels = {
			"germanic/ui/panel_1.png",
			"germanic/ui/panel_2.png",
			"germanic/ui/panel_3.png",
			"germanic/ui/panel_4.png",
			"germanic/ui/panel_5.png"
		}
	else
		panels = {
			"dwarf/ui/panel_1.png",
			"dwarf/ui/panel_2.png",
			"dwarf/ui/panel_3.png",
			"dwarf/ui/panel_4.png",
			"dwarf/ui/panel_5.png"
		}
	end
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
    if (size == nil) then size = {200, 24} end
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
		if (GetPlayerData(GetThisPlayer(), "RaceName") == "dwarf" or GetPlayerData(GetThisPlayer(), "RaceName") == "germanic" or GetPlayerData(GetThisPlayer(), "RaceName") == "gnome" or GetPlayerData(GetThisPlayer(), "RaceName") == "goblin") then
			g_bln = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/button-large-normal.png")
			g_blp = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/button-large-pressed.png")
			g_blg = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/button-large-grayed.png")
		elseif (GetPlayerData(GetThisPlayer(), "RaceName") == "teuton") then
			g_bln = CGraphic:New("germanic/ui/widgets/button-large-normal.png")
			g_blp = CGraphic:New("germanic/ui/widgets/button-large-pressed.png")
			g_blg = CGraphic:New("germanic/ui/widgets/button-large-grayed.png")
		else
			g_bln = CGraphic:New("dwarf/ui/widgets/button-large-normal.png")
			g_blp = CGraphic:New("dwarf/ui/widgets/button-large-pressed.png")
			g_blg = CGraphic:New("dwarf/ui/widgets/button-large-grayed.png")
		end
		g_bln:Load()
		g_blp:Load()
		g_blg:Load()
		b:setNormalImage(g_bln)
		b:setPressedImage(g_blp)
		b:setDisabledImage(g_blg)
		b:setSize(224, 28)
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
	if (GetPlayerData(GetThisPlayer(), "RaceName") == "dwarf" or GetPlayerData(GetThisPlayer(), "RaceName") == "germanic" or GetPlayerData(GetThisPlayer(), "RaceName") == "gnome" or GetPlayerData(GetThisPlayer(), "RaceName") == "goblin") then
		g_bsn = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/button-small-normal.png")
		g_bsp = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/button-small-pressed.png")
		g_bsg = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/button-small-grayed.png")
	elseif (GetPlayerData(GetThisPlayer(), "RaceName") == "teuton") then
		g_bsn = CGraphic:New("germanic/ui/widgets/button-small-normal.png")
		g_bsp = CGraphic:New("germanic/ui/widgets/button-small-pressed.png")
		g_bsg = CGraphic:New("germanic/ui/widgets/button-small-grayed.png")
	else
		g_bsn = CGraphic:New("dwarf/ui/widgets/button-small-normal.png")
		g_bsp = CGraphic:New("dwarf/ui/widgets/button-small-pressed.png")
		g_bsg = CGraphic:New("dwarf/ui/widgets/button-small-grayed.png")
	end
	g_bsn:Load()
	g_bsp:Load()
	g_bsg:Load()
	b:setNormalImage(g_bsn)
	b:setPressedImage(g_bsp)
	b:setDisabledImage(g_bsg)
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
	local g_lslider_n
	local g_lslider_p
	if (GetPlayerData(GetThisPlayer(), "RaceName") == "dwarf" or GetPlayerData(GetThisPlayer(), "RaceName") == "germanic" or GetPlayerData(GetThisPlayer(), "RaceName") == "goblin") then
		g_lslider_n = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/left-arrow-normal.png")
		g_lslider_p = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/left-arrow-pressed.png")
	elseif (GetPlayerData(GetThisPlayer(), "RaceName") == "teuton") then
		g_lslider_n = CGraphic:New("germanic/ui/widgets/left-arrow-normal.png")
		g_lslider_p = CGraphic:New("germanic/ui/widgets/left-arrow-pressed.png")
	else
		g_lslider_n = CGraphic:New("dwarf/ui/widgets/left-arrow-normal.png")
		g_lslider_p = CGraphic:New("dwarf/ui/widgets/left-arrow-pressed.png")
	end
	g_lslider_n:Load()
	g_lslider_p:Load()
	b:setNormalImage(g_lslider_n)
	b:setPressedImage(g_lslider_p)
	b:setSize(20, 19)
	b:setBorderSize(0)
	return b
  end
  
  function menu:addImageSlider(min, max, w, h, x, y, callback)
	local b = ImageSlider(min, max)
	-- New Slider Functions
	local g_marker
	local g_slider
	if (GetPlayerData(GetThisPlayer(), "RaceName") == "dwarf" or GetPlayerData(GetThisPlayer(), "RaceName") == "germanic" or GetPlayerData(GetThisPlayer(), "RaceName") == "goblin") then
		g_marker = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/slider-knob.png")
		g_slider = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/slider-bar-normal.png")
	elseif (GetPlayerData(GetThisPlayer(), "RaceName") == "teuton") then
		g_marker = CGraphic:New("germanic/ui/widgets/slider-knob.png")
		g_slider = CGraphic:New("germanic/ui/widgets/slider-bar-normal.png")
	else
		g_marker = CGraphic:New("dwarf/ui/widgets/slider-knob.png")
		g_slider = CGraphic:New("dwarf/ui/widgets/slider-bar-normal.png")
	end
	g_marker:Load()
	g_slider:Load()
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
	if (GetPlayerData(GetThisPlayer(), "RaceName") == "dwarf" or GetPlayerData(GetThisPlayer(), "RaceName") == "germanic" or GetPlayerData(GetThisPlayer(), "RaceName") == "goblin") then
		g_rslider_n = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/right-arrow-normal.png")
		g_rslider_p = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/right-arrow-pressed.png")
	elseif (GetPlayerData(GetThisPlayer(), "RaceName") == "teuton") then
		g_rslider_n = CGraphic:New("germanic/ui/widgets/right-arrow-normal.png")
		g_rslider_p = CGraphic:New("germanic/ui/widgets/right-arrow-pressed.png")
	else
		g_rslider_n = CGraphic:New("dwarf/ui/widgets/right-arrow-normal.png")
		g_rslider_p = CGraphic:New("dwarf/ui/widgets/right-arrow-pressed.png")
	end
	g_rslider_n:Load()
	g_rslider_p:Load()
	b:setNormalImage(g_rslider_n)
	b:setPressedImage(g_rslider_p)
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
	if (GetPlayerData(GetThisPlayer(), "RaceName") == "dwarf" or GetPlayerData(GetThisPlayer(), "RaceName") == "germanic" or GetPlayerData(GetThisPlayer(), "RaceName") == "goblin") then
		g_checkbox_off = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/radio-normal-unselected.png")
		g_checkbox_off2 = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/radio-pressed-unselected.png")
		g_checkbox_on = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/radio-normal-selected.png")
		g_checkbox_on2 = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/radio-pressed-selected.png")
	elseif (GetPlayerData(GetThisPlayer(), "RaceName") == "teuton") then
		g_checkbox_off = CGraphic:New("germanic/ui/widgets/radio-normal-unselected.png")
		g_checkbox_off2 = CGraphic:New("germanic/ui/widgets/radio-pressed-unselected.png")
		g_checkbox_on = CGraphic:New("germanic/ui/widgets/radio-normal-selected.png")
		g_checkbox_on2 = CGraphic:New("germanic/ui/widgets/radio-pressed-selected.png")
	else
		g_checkbox_off = CGraphic:New("dwarf/ui/widgets/radio-normal-unselected.png")
		g_checkbox_off2 = CGraphic:New("dwarf/ui/widgets/radio-pressed-unselected.png")
		g_checkbox_on = CGraphic:New("dwarf/ui/widgets/radio-normal-selected.png")
		g_checkbox_on2 = CGraphic:New("dwarf/ui/widgets/radio-pressed-selected.png")
	end
	g_checkbox_off:Load()
	g_checkbox_off2:Load()
	g_checkbox_on:Load()
	g_checkbox_on2:Load()
	b:setUncheckedNormalImage(g_checkbox_off)
	b:setUncheckedPressedImage(g_checkbox_off2)
	b:setCheckedNormalImage(g_checkbox_on)
	b:setCheckedPressedImage(g_checkbox_on2)
	if (callback ~= nil) then b:setActionCallback(function(s) PlaySound("click"); callback(b, s) end) end
	b:setFont(Fonts["game"])
	self:add(b, x - 1, y - 1) -- reduced by 1 because the images are bigger than they are supposed to be, as they are graphics for radio buttons
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
	if (GetPlayerData(GetThisPlayer(), "RaceName") == "dwarf" or GetPlayerData(GetThisPlayer(), "RaceName") == "germanic" or GetPlayerData(GetThisPlayer(), "RaceName") == "goblin") then
		g_radio_off = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/radio-normal-unselected.png")
		g_radio_off2 = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/radio-pressed-unselected.png")
		g_radio_on = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/radio-normal-selected.png")
		g_radio_on2 = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/radio-pressed-selected.png")
	elseif (GetPlayerData(GetThisPlayer(), "RaceName") == "teuton") then
		g_radio_off = CGraphic:New("germanic/ui/widgets/radio-normal-unselected.png")
		g_radio_off2 = CGraphic:New("germanic/ui/widgets/radio-pressed-unselected.png")
		g_radio_on = CGraphic:New("germanic/ui/widgets/radio-normal-selected.png")
		g_radio_on2 = CGraphic:New("germanic/ui/widgets/radio-pressed-selected.png")
	else
		g_radio_off = CGraphic:New("dwarf/ui/widgets/radio-normal-unselected.png")
		g_radio_off2 = CGraphic:New("dwarf/ui/widgets/radio-pressed-unselected.png")
		g_radio_on = CGraphic:New("dwarf/ui/widgets/radio-normal-selected.png")
		g_radio_on2 = CGraphic:New("dwarf/ui/widgets/radio-pressed-selected.png")
	end
	g_radio_off:Load()
	g_radio_off2:Load()
	g_radio_on:Load()
	g_radio_on2:Load()
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
		if (GetPlayerData(GetThisPlayer(), "RaceName") == "dwarf" or GetPlayerData(GetThisPlayer(), "RaceName") == "germanic" or GetPlayerData(GetThisPlayer(), "RaceName") == "goblin") then
			g_bar = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/pulldown-bar-normal.png")
			g_dslider_n = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/down-arrow-normal.png")
			g_dslider_p = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/down-arrow-pressed.png")
		elseif (GetPlayerData(GetThisPlayer(), "RaceName") == "teuton") then
			g_bar = CGraphic:New("germanic/ui/widgets/pulldown-bar-normal.png")
			g_dslider_n = CGraphic:New("germanic/ui/widgets/down-arrow-normal.png")
			g_dslider_p = CGraphic:New("germanic/ui/widgets/down-arrow-pressed.png")
		else
			g_bar = CGraphic:New("dwarf/ui/widgets/pulldown-bar-normal.png")
			g_dslider_n = CGraphic:New("dwarf/ui/widgets/down-arrow-normal.png")
			g_dslider_p = CGraphic:New("dwarf/ui/widgets/down-arrow-pressed.png")
		end
		g_bar:Load()
		g_dslider_n:Load()
		g_dslider_p:Load()
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
	GameSettings.NetGameType = 1
	for i=0,PlayerMax-1 do
		GameSettings.Presets[i].Race = -1
		GameSettings.Presets[i].Team = -1
		GameSettings.Presets[i].Type = -1
	end
	GameSettings.Difficulty = 2
	GameSettings.Resources = -1
	GameSettings.NumUnits = -1
	GameSettings.Opponents = -1
	GameSettings.Terrain = -1
	GameSettings.GameType = -1
	GameSettings.NoFogOfWar = false
	GameSettings.Inside = false
	GameSettings.RevealMap = 0
	GameSettings.Tileset = nil
	GameSettings.NoRandomness = false
	GameSettings.NoTimeOfDay = false
	TechLevel = {"", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""}
	MaxTechLevel = {"", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""}
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
		StopMusic()
		if (GetCurrentQuest() ~= "" and GetQuestData(GetCurrentQuest(), "LoadingMusic") ~= "") then
			PlayMusicName(GetQuestData(GetCurrentQuest(), "LoadingMusic"))
		else
			PlayMusicByGroupAndSubgroupRandom("loading", GetPlayerData(GetThisPlayer(), "RaceName"))
		end

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
	if not (IsNetworkGame()) then
		if (GetCurrentQuest() ~= "" and GetCivilizationTechnologyPoints(GetQuestData(GetCurrentQuest(), "Civilization")) > 0 and GameResult == GameVictory and not IsReplayGame() and not GrandStrategy) then
			RunTechTreeMenu(GetTechTreeCivilizationNumber(GetQuestData(GetCurrentQuest(), "Civilization")))
		end
	end

	InitGameSettings()
	if not (GrandStrategy) then
		SetPlayerData(GetThisPlayer(), "RaceName", "gnome")
	end
	
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

	MapPersonPlayer = 0 -- default person player is 0
	Load(mapname)

	DefinePlayerTypes = OldDefinePlayerTypes
	PresentMap = OldPresentMap
end

function RunSelectScenarioMenu(is_mod)
	buttonStatut = 0
	local menu = WarMenu(nil, panel(5), false)
	menu:setSize(352, 352)
	menu:setPosition((Video.Width - 352) / 2, (Video.Height - 352) / 2)
	menu:setDrawMenusUnder(true)

	local browser
	if not (is_mod) then
		menu:addLabel(_("Select Map"), 176, 8)
		
		browser = menu:addBrowser(MapDirectories[1], "^.*%.smp%.?g?z?$",
			24, 88, 300, 108, mapname)
	else
		menu:addLabel(_("Select Mod"), 176, 8)

		if (modname ~= "") then
			browser = menu:addBrowser(ModDirectories[1], "^.*%.smp%.?g?z?$",
				24, 88, 300, 108, modname)
		else
			browser = menu:addBrowser(ModDirectories[1], "^.*%.smp%.?g?z?$",
				24, 88, 300, 108)
		end
	end


	local l = menu:addLabel(browser:getSelectedItem(), 24, 208, Fonts["game"], false)

	local function cb(s)
		l:setCaption(browser:getSelectedItem())
		l:adjustSize()
	end
	browser:setActionCallback(cb)

	menu:addHalfButton(_("~!OK"), "o", 48, 318,
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
	menu:addHalfButton(_("~!Cancel"), "c", 198, 318,
		function() buttonStatut = 2; menu:stop() end)
	
	if not (is_mod) then
		local sortByCheckBox
		sortByCheckBox = menu:addImageCheckBox(_("Show Latest First"), (352 - 300 - 18) / 2, 352 - 16 - 27 - 25,
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

function RunSinglePlayerGameMenu()
	SetPlayerData(GetThisPlayer(), "RaceName", "gnome")

	if not (IsMusicPlaying()) then
		PlayMusicName("MenuTheme")
	end

	local menu = WarMenu()
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2

	menu:addLabel(_("~<Single Player~>"), offx + 320, offy + 212 - 25 - (36 * 1))
	local campaign_button = menu:addFullButton(_("~!Campaign"), "c", offx + 208, offy + 104 + 36*2,
		function()
			RunCampaignMenu();
			if (RunningScenario) then
				menu:stop()
			end
		end
	)
	campaign_button:setTooltip("The Campaign mode is under development")
	menu:addFullButton(_("~!Quests"), "q", offx + 208, offy + 104 + 36*3,
		function()
			RunQuestWorldMenu();
			if (RunningScenario) then
				menu:stop()
			end
		end
	)
	menu:addFullButton(_("C~!ustom Game"), "u", offx + 208, offy + 104 + 36*4,
		function()
			RunSinglePlayerCustomGameMenu()
			if (RunningScenario) then
				menu:stop(1)
			end
		end
	)
	menu:addFullButton(_("~!Load Game"), "l", offx + 208, offy + 104 + 36*5,
		function()
			RunLoadGameMenu();
			menu:stop(1)
		end
	)
	menu:addFullButton(_("~!Tech Tree"), "t", offx + 208, offy + 104 + 36*6,
		function() RunTechTreeMenu(0) end)
	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 104 + 36*7,
		function() menu:stop() end)
	return menu:run()
end

function RunSinglePlayerCustomGameMenu()
	SetPlayerData(GetThisPlayer(), "RaceName", "gnome")
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
	local tech_level
	local max_tech_level
	local hero_dd
	local no_randomness
	local no_time_of_day
	MapPersonPlayer = 0
	PlayerFaction = ""

	-- create the scenario and faction lists
	local scenario_list = {}
	local civilization_list = {_("Map Default")}
	local faction_list = {_("Map Default")}
	local world_list = { }
	local game_type_list = { }
	local tech_level_list = {_("Map Default"), _("Agrarian (Bronze)"), _("Agrarian (Iron)"), _("Civilized (Bronze)"), _("Civilized (Iron)")}
	local max_tech_level_list = {_("Map Default")}
	local difficulty_list = {_("Easy"), _("Normal"), _("Hard"),_("Brutal")}
	local difficulty = nil
	
	local hero_list = {}
	
	GrandStrategy = false
	RunningScenario = false
	
	local maps = {}

	local custom_map_present = false
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
		u = table.getn(maps) + 1
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
			if (MapWorld ~= "" and MapWorld ~= "None" and GetArrayIncludes(world_list, _(MapWorld)) == false) then
				table.insert(world_list, _(MapWorld))
			elseif (MapWorld == "") then
				custom_map_present = true
			end
		end
	end
	table.sort(world_list)
	if (custom_map_present) then
		table.insert(world_list, _("Custom"))
	end

	mapl = menu:addLabel(string.sub(mapname, 6), offx + 16, offy + 360 + 24, Fonts["game"], false)
	descriptionl = menu:addLabel("descriptionl", offx + 16, offy + 360, Fonts["game"], false)

	menu:addLabel("~<Single Player Game Setup~>", offx + 640/2 + 12, offy + 72)
	menu:addFullButton(_("~!Start Game"), "s", offx + 640 - 224 - 16, offy + 360 + 36*1,
		function()
			-- change the human player in special cases
			if (mapinfo.description == "Chaincolt Foothills" and civilization_list[race:getSelected() + 1] == "Dwarf" and faction_list[faction:getSelected() + 1] == _("Shorbear Clan") and (opponents:getSelected() == 0 or opponents:getSelected() >= 2) and mapinfo.nplayers >= 3 and mapinfo.playertypes[3] == "person") then
				MapPersonPlayer = 2
			elseif (mapinfo.description == "Caverns of Chaincolt" and civilization_list[race:getSelected() + 1] == "Dwarf" and (faction_list[faction:getSelected() + 1] == _("Shorbear Clan") or faction_list[faction:getSelected() + 1] == _("Shinsplitter Clan")) and mapinfo.nplayers >= 2 and mapinfo.playertypes[2] == "person") then
				MapPersonPlayer = 1
			end

			if (MapPersonPlayer > 0) then -- only do this if the person player is not 0, as otherwise it's unnecessary to do it
				for i=1,mapinfo.nplayers do
					if ((i - 1) ~= MapPersonPlayer and mapinfo.playertypes[i] == "person") then
						GameSettings.Presets[i-1].Type = PlayerComputer
					end
				end
			end
			if (civilization_list[race:getSelected() + 1] ~= _("Map Default")) then
				local chosen_civilization = civilization_list[race:getSelected() + 1]
				chosen_civilization = string.gsub(chosen_civilization, "Human %- ", "")
				chosen_civilization = string.lower(chosen_civilization)
				GameSettings.Presets[MapPersonPlayer].Race = GetCivilizationID(chosen_civilization)
			end
			GameSettings.Resources = resources:getSelected()
			if (faction:getSelected() == 0) then
				PlayerFaction = ""
			else
				PlayerFaction = faction_list[faction:getSelected() + 1]
			end
			GameSettings.Opponents = opponents:getSelected()
			GameSettings.NumUnits = numunits:getSelected()
			GameSettings.Difficulty = difficulty:getSelected() + 1
			GameSettings.GameType = gametype:getSelected() - 1
			if (tech_level:getSelected() > 0) then
				for i=1,mapinfo.nplayers do
					TechLevel[i] = tech_level_list[tech_level:getSelected() + 1]
				end
			end
			if (max_tech_level:getSelected() > 0) then
				for i=1,mapinfo.nplayers do
					MaxTechLevel[i] = max_tech_level_list[max_tech_level:getSelected() + 1]
				end
			end
			GameSettings.NoRandomness = wyr.preferences.NoRandomness
			GameSettings.NoTimeOfDay = wyr.preferences.NoTimeOfDay

			RunningScenario = true

			menu:stop()
			RunMap(mapname)
			SetCurrentCustomHero("")
		end
	)
	menu:addFullButton(_("~!Cancel Game"), "c", offx + 640 - 224 - 16, offy + 360 + 36*2,
		function()
			SetCurrentCustomHero("")
			menu:stop()
		end
	)

	menu:addLabel(_("World:"), offx + 40, offy + (10 + 120) - 20, Fonts["game"], false)
	world = menu:addDropDown(world_list, offx + 40, offy + 10 + 120,
		function(dd) WorldChanged() end)
	world:setSize(152, 20)
	world:setSelected(0)

	menu:addLabel(_("Map:"), offx + 220, offy + (10 + 120) - 20, Fonts["game"], false)
	scenario = menu:addDropDown(scenario_list, offx + 220, offy + 10 + 120,
		function(dd) ScenarioChanged() end)
	scenario:setSize(152, 20)

	menu:addLabel(_("Difficulty:"), offx + 640 - 224 - 16, offy + (10 + 120) - 20, Fonts["game"], false)
	difficulty = menu:addDropDown(difficulty_list, offx + 640 - 224 - 16, offy + 10 + 120,
		function(dd)
			wyr.preferences.Difficulty = difficulty:getSelected() + 1
			SavePreferences()
		end
	)
	difficulty:setSize(152, 20)
	difficulty:setSelected(wyr.preferences.Difficulty - 1)

	menu:addLabel(_("Your Civilization:"), offx + 40, offy + (10 + 180) - 20, Fonts["game"], false)
	race = menu:addDropDown(civilization_list, offx + 40, offy + 10 + 180,
		function(dd) CivilizationChanged() end)
	race:setSize(152, 20)

	menu:addLabel(_("Your Faction:"), offx + 220, offy + (10 + 180) - 20, Fonts["game"], false)
	faction = menu:addDropDown({_("Map Default")}, offx + 220, offy + 10 + 180,
		function(dd) end)
	faction:setSize(152, 20)

	menu:addLabel(_("Resources:"), offx + 640 - 224 - 16, offy + (10 + 180) - 20, Fonts["game"], false)
	resources = menu:addDropDown({_("Map Default"), _("Low"), _("Medium"), _("High")}, offx + 640 - 224 - 16, offy + 10 + 180,
		function(dd) end)
	resources:setSize(152, 20)

	menu:addLabel(_("Units:"), offx + 40, offy + (10 + 240) - 20, Fonts["game"], false)
	numunits = menu:addDropDown({_("Map Default"), _("1 Worker"), _("Town Hall + Workers"), _("Basic Squad"), _("Improved Squad"), _("Advanced Squad")}, offx + 40, offy + 10 + 240,
		function(dd) end)
	numunits:setSize(152, 20)

	local opponents_list = {_("Map Default"), _("1 Opponent"), _("2 Opponents"), _("3 Opponents"), _("4 Opponents"), _("5 Opponents"), _("6 Opponents"), _("7 Opponents")}

	menu:addLabel(_("Opponents:"), offx + 220, offy + (10 + 240) - 20, Fonts["game"], false)
	opponents = menu:addDropDown(opponents_list, offx + 220, offy + 10 + 240,
		function(dd) end)
	opponents:setSize(152, 20)

	menu:addLabel(_("Game Type:"), offx + 640 - 224 - 16, offy + (10 + 240) - 20, Fonts["game"], false)
	gametype = menu:addDropDown(game_type_list, offx + 640 - 224 - 16, offy + 10 + 240, function(dd) end)
	gametype:setSize(152, 20)

	menu:addLabel(_("Tech Level:"), offx + 40, offy + (10 + 300) - 20, Fonts["game"], false)
	tech_level = menu:addDropDown(tech_level_list, offx + 40, offy + 10 + 300, function(dd) TechLevelChanged() end)
	tech_level:setSize(152, 20)

	menu:addLabel(_("Max Tech Level:"), offx + 220, offy + (10 + 300) - 20, Fonts["game"], false)
	max_tech_level = menu:addDropDown(max_tech_level_list, offx + 220, offy + 10 + 300, function(dd) end)
	max_tech_level:setSize(152, 20)

	menu:addLabel(_("Custom Hero:"), offx + 640 - 224 - 16, offy + (10 + 300) - 20, Fonts["game"], false)
	hero_dd = menu:addDropDown(hero_list, offx + 640 - 224 - 16, offy + 10 + 300,
		function(dd)
			SetCurrentCustomHero(hero_list[hero_dd:getSelected() + 1])
		end
	)
	hero_dd:setSize(152, 20)
	
--	no_randomness = menu:addImageCheckBox(_("No Randomness"), offx + 640 - 224 - 16, offy + 10 + 300 + 3 + 45,
	no_randomness = menu:addImageCheckBox(_("No Randomness"), offx + 640 - 224 - 16, offy + 10 + 285 + 3 + 45,
		function()
			wyr.preferences.NoRandomness = no_randomness:isMarked()
			SavePreferences()
		end
	)
	no_randomness:setMarked(wyr.preferences.NoRandomness)

	no_time_of_day = menu:addImageCheckBox(_("No Day/Night Cycle"), offx + 220, offy + 10 + 285 + 3 + 45,
		function()
			wyr.preferences.NoTimeOfDay = no_time_of_day:isMarked()
			SavePreferences()
		end
	)
	no_time_of_day:setMarked(wyr.preferences.NoTimeOfDay)

	function WorldChanged()
		scenario_list = {}

		for i=1,table.getn(maps) do
			MapWorld = ""
			MapRequiredQuest = ""
			GetMapInfo(maps[i])
			if (MapWorld == world_list[world:getSelected() + 1] or (MapWorld == "" and world_list[world:getSelected() + 1] == "Custom")) then
				if (MapRequiredQuest == "" or GetQuestData(MapRequiredQuest, "Completed")) then
					if (mapinfo.npersonplayers > 0) then
						local map_description = _(mapinfo.description)
						if (map_description == "") then
							map_description = string.gsub(string.gsub(maps[i], ".smp", ""), "(.*)/", "")
						end
						table.insert(scenario_list, map_description)
					end
				end
			end
		end

		table.sort(scenario_list)
		scenario:setList(scenario_list)
		scenario:setSize(152, 20)
		scenario:setSelected(0)
		ScenarioChanged()
	end

	function ScenarioChanged()
		for i=1,table.getn(maps) do
			MapWorld = ""
			GetMapInfo(maps[i])
			if (
				(
					_(mapinfo.description) == scenario_list[scenario:getSelected() + 1]
					or string.gsub(string.gsub(maps[i], ".smp", ""), "(.*)/", "") == scenario_list[scenario:getSelected() + 1]
				)
				and (
					_(MapWorld) == _(world_list[world:getSelected() + 1])
					or (
						MapWorld == ""
						and world_list[world:getSelected() + 1] == "Custom"
					)
				)
			) then
				mapname = maps[i]
				mapl:setCaption(string.sub(mapname, 6))
			end
		end

		GetMapInfo(mapname)
		MapChanged()
	end

	function CivilizationChanged()
		faction_list = {_("Map Default")}
		
		local new_civilization = civilization_list[race:getSelected() + 1]
		new_civilization = string.gsub(new_civilization, "Human %- ", "")
		new_civilization = string.lower(new_civilization)
		
		if (race:getSelected() > 0) then
			for i=1,table.getn(GetCivilizationFactionNames(new_civilization)) do
				if ((GetFactionData(new_civilization, GetCivilizationFactionNames(new_civilization)[i], "Type") == "tribe" and (tech_level:getSelected() - 1 == -1 or tech_level_list[tech_level:getSelected() + 1] == "Agrarian (Bronze)" or tech_level_list[tech_level:getSelected() + 1] == "Agrarian (Iron)")) or (GetFactionData(new_civilization, GetCivilizationFactionNames(new_civilization)[i], "Type") == "polity" and (tech_level_list[tech_level:getSelected() + 1] == "Civilized (Bronze)" or tech_level_list[tech_level:getSelected() + 1] == "Civilized (Iron)"))) then
					if (GetFactionData(new_civilization, GetCivilizationFactionNames(new_civilization)[i], "Playable")) then
						table.insert(faction_list, GetCivilizationFactionNames(new_civilization)[i])
					end
				end
			end
		end
		faction:setList(faction_list)
		faction:setSize(152, 20)
		faction:setSelected(0)
		
		hero_list = nil
		hero_list = {}
		local custom_heroes = GetCustomHeroes()
		for i=1,table.getn(custom_heroes) do
			if (
				race:getSelected() == 0
				or GetCustomHeroData(custom_heroes[i], "Civilization") == new_civilization
				or GetCivilizationData(GetCustomHeroData(custom_heroes[i], "Civilization"), "ParentCivilization") == new_civilization
				or GetCustomHeroData(custom_heroes[i], "Civilization") == GetCivilizationData(new_civilization, "ParentCivilization")
			) then
				table.insert(hero_list, custom_heroes[i])
			end
		end
		table.sort(hero_list)
		table.insert(hero_list, "") -- to allow players to choose having no custom hero selected
		hero_dd:setList(hero_list)
		hero_dd:setSize(152, 20)
		hero_dd:setSelected(table.getn(hero_list) - 1)
	end

	function TechLevelChanged()
		max_tech_level_list = {_("Map Default")}
		
		if (tech_level:getSelected() - 1 == -1 or tech_level_list[tech_level:getSelected() + 1] == "Agrarian (Bronze)") then
			table.insert(max_tech_level_list, _("Agrarian (Bronze)"))
		end
		if (tech_level:getSelected() - 1 == -1 or tech_level_list[tech_level:getSelected() + 1] == "Agrarian (Bronze)" or tech_level_list[tech_level:getSelected() + 1] == "Agrarian (Iron)") then
			table.insert(max_tech_level_list, _("Agrarian (Iron)"))
		end
		if (tech_level:getSelected() - 1 == -1 or tech_level_list[tech_level:getSelected() + 1] == "Agrarian (Bronze)" or tech_level_list[tech_level:getSelected() + 1] == "Civilized (Bronze)") then
			table.insert(max_tech_level_list, _("Civilized (Bronze)"))
		end
		table.insert(max_tech_level_list, _("Civilized (Iron)"))
		
		max_tech_level:setList(max_tech_level_list)
		max_tech_level:setSize(152, 20)
		max_tech_level:setSelected(0)
		BuildCivilizationList()
	end

	function BuildCivilizationList()
		civilization_list = {}
		
		local civilizations = GetCivilizations()
		for i=1,table.getn(civilizations) do
			if (GetCivilizationData(civilizations[i], "Playable")) then
				if (
					(civilizations[i] ~= "germanic" or tech_level_list[tech_level:getSelected() + 1] == "Map Default" or tech_level_list[tech_level:getSelected() + 1] == "Agrarian (Bronze)")
					and (civilizations[i] ~= "teuton" or tech_level_list[tech_level:getSelected() + 1] == "Agrarian (Iron)" or tech_level_list[tech_level:getSelected() + 1] == "Civilized (Bronze)" or tech_level_list[tech_level:getSelected() + 1] == "Civilized (Iron)")
					and (civilizations[i] ~= "english" or tech_level_list[tech_level:getSelected() + 1] == "Civilized (Iron)")
				) then
					local playable_civilization_species = CapitalizeString(GetCivilizationData(civilizations[i], "Species"))
					local playable_civilization = CapitalizeString(civilizations[i])
					if (playable_civilization_species ~= playable_civilization) then
						table.insert(civilization_list, _(playable_civilization_species .. " - " .. playable_civilization))
					else
						table.insert(civilization_list, _(playable_civilization))
					end
				end
			end
		end
		
		table.sort(civilization_list)
		table.insert(civilization_list, 1, _("Map Default"))
		
		
		race:setList(civilization_list)
		race:setSize(152, 20)
		race:setSelected(0)
		CivilizationChanged()
	end
	
	function MapChanged()
		mapl:setCaption(string.sub(mapname, 6))
		mapl:adjustSize()

		local map_description = _("Map:") .. " " .. _(mapinfo.description)
		descriptionl:setCaption(map_description ..
			" (" .. mapinfo.w .. " x " .. mapinfo.h .. ")")
		descriptionl:adjustSize()

		local o = {}
		for i=1,mapinfo.nplayers do
			table.insert(o, opponents_list[i])
		end
		opponents:setList(o)
		opponents:setSize(152, 20)

		game_type_list = nil
		game_type_list = {_("Use Map Settings"), _("Melee"), _("Free for All"), _("Top vs Bottom"), _("Left vs Right"), _("Man vs Machine")}
		gametype:setList(game_type_list)
		gametype:setSize(152, 20)
		gametype:setSelected(0)
	end

	GetMapInfo(mapname)
	MapChanged()

	WorldChanged()
	TechLevelChanged()

	menu:run()
end

function BuildProgramStartMenu()
	SetPlayerData(GetThisPlayer(), "RaceName", "gnome")

	if not (IsMusicPlaying()) then
		PlayMusicName("MenuTheme")
	end

	local menu = WarMenu()
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2

--	menu:addLabel("v" .. wyrmsun.Version .. "  " .. wyrmsun.Homepage, offx + 320, (Video.Height - 90) + 18*2, Fonts["game"])
	menu:addLabel(wyrmsun.Copyright, offx + 320, (Video.Height - 90) + 18*4, Fonts["small"])

--	wyrmsun_logo_widget:setSize(6197 * 800 / Video.Width / 16, 2456 * 600 / Video.Height / 16)
	menu:add(wyrmsun_logo_widget, Video.Width / 2 - (wyrmsun_logo_widget:getWidth() / 2), 0)
	menu:addLabel("v" .. wyrmsun.Version, Video.Width / 2 + (wyrmsun_logo_widget:getWidth() * 7 / 16), wyrmsun_logo_widget:getHeight() * 3 / 4)

	PersistencyUpdates()

	if (CanAccessFile("wyr/quests.lua")) then
		Load("wyr/quests.lua") -- load the quests here, so that the achievement unlocked dialogs can appear properly
		SaveQuestCompletion()
	end
	
	menu:addFullButton(_("~!Single Player Game"), "s", offx + 208, offy + 104 + 36*0,
		function() RunSinglePlayerGameMenu(); menu:stop(1) end)
	menu:addFullButton(_("~!Multiplayer Game"), "m", offx + 208, offy + 104 + 36*1,
		function() RunMultiPlayerGameMenu(); menu:stop(1) end)
	menu:addFullButton(_("~!Grand Strategy Game"), "g", offx + 208, offy + 104 + 36*2,
		function() RunGrandStrategyGameSetupMenu(); menu:stop(1) end)
--	menu:addFullButton(_("~!Replay Game"), "r", offx + 208, offy + 104 + 36*3, -- replays are broken at the moment
--		function() RunReplayGameMenu(); menu:stop(1) end)
	menu:addFullButton(_("~!Achievements"), "a", offx + 208, offy + 104 + 36*3,
		function() RunAchievementsMenu(); menu:stop(1) end)
	menu:addFullButton(_("~!Options"), "o", offx + 208, offy + 104 + 36*4,
		function() RunOptionsMenu(); menu:stop(1) end)
	menu:addFullButton(_("Map ~!Editor"), "e", offx + 208, offy + 104 + 36*5,
	function() RunEditorMenu(); menu:stop(1) end)
	menu:addFullButton(_("Mo~!ds"), "d", offx + 208, offy + 104 + 36*6,
		function() RunModsMenu(0); menu:stop(1) end)
	menu:addFullButton(_("En~!cyclopedia"), "c", offx + 208, offy + 104 + 36*7,
		function() RunEncyclopediaMenu(); menu:stop(1) end)
	menu:addFullButton(_("Cred~!its"), "i", offx + 208, offy + 104 + 36*8, RunShowCreditsMenu)

	menu:addFullButton(_("E~!xit"), "x", offx + 208, offy + 104 + 36*9,
		function() menu:stop() end)

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
Load("scripts/menus/campaign.lua")
Load("scripts/menus/techtree.lua")
Load("scripts/menus/quests.lua")
Load("scripts/menus/achievements.lua")
Load("scripts/menus/mods.lua")
Load("scripts/grand_strategy/grand_strategy.lua")
Load("scripts/menus/encyclopedia.lua")
Load("scripts/menus/factions.lua")
Load("scripts/menus/custom_hero.lua")

SetGrabMouse(wyr.preferences.GrabMouse)

-- load DLCs and mods now
LoadDLCs()
LoadMods()

-- load heroes after the DLCs and mods, so that they can use mod-specific items
if (CanAccessFile("wyr/heroes.lua")) then -- keep compatibility with how heroes were saved before
	Load("heroes.lua")
	SaveHeroes()
else
	LoadHeroes() -- load persistent heroes
end

if (LanguageCacheOutdated) then
	GenerateMissingLanguageData() -- generate missing language data after loading mods, so that the function will take language data defined in mods into account
end

function GameStarting()
	if (GetCurrentQuest() ~= "" and GetQuestData(GetCurrentQuest(), "MapMusic") ~= "") then
		StopMusic()
		PlayMusicName(GetQuestData(GetCurrentQuest(), "MapMusic"))
	else
		StopMusic()
		PlayMusicByGroupAndFactionRandom("map", GetPlayerData(GetThisPlayer(), "RaceName"), GetPlayerData(GetThisPlayer(), "Faction"))
	end
	
	--[[
	if (wyr.preferences.ShowTips and not IsReplayGame() and not IsNetworkGame()) then
		SetGamePaused(true)
		RunTipsMenu()
	end
	--]]
	
	if (not IsNetworkGame() and GrandStrategy == false) then
		if (PlayerFaction ~= "") then
			SetPlayerData(GetThisPlayer(), "Faction", PlayerFaction)
		end
	end
	
	if (GrandStrategy and GrandStrategyEventMap == false) then
		if (GrandStrategyBattleBaseBuilding) then
			-- add workers to grand strategy battles, if base building is active
			
			for i=0,(PlayerMax - 2) do
				if (Map.Info.PlayerType[i] == PlayerPerson or Map.Info.PlayerType[i] == PlayerComputer) then
					local worker_type = GetPlayerClassType("worker", i, Defender == GetPlayerData(i, "Name"))
					if (worker_type ~= nil) then
						for j=1,5 do
							unit = OldCreateUnit(worker_type, i, {Players[i].StartPos.x, Players[i].StartPos.y})
							SetUnitVariable(unit, "Starting", false)
						end
					end
				end
			end
			
			-- add buildings for defenders of grand strategy battles, if base building is active
			local defender_player = GetFactionPlayer(Defender)
			for i, unitName in ipairs(Units) do
				if (string.find(unitName, "upgrade-") == nil) then
					if (GetUnitTypeData(unitName, "Building") and unitName ~= "unit-mercenary-camp" and GetProvinceSettlementBuilding(AttackedProvince.Name, unitName)) then
						if (GetUnitTypeData(unitName, "Class") == "stronghold") then
							local town_hall = FindUnitOfClass("town-hall", defender_player, true)
							ConvertUnit(town_hall, unitName)
						else
							GenerateBuilding(unitName, defender_player)
						end
					end
				end
			end
		end
		
		-- add grand strategy battle units
		if (GrandStrategy and GrandStrategyEventMap == false) then
			for i=0,(PlayerMax - 2) do
				if ((Players[i].Type == PlayerPerson or Players[i].Type == PlayerComputer)) then
					if (GetPlayerData(i, "Name") == Attacker) then
						CreateProvinceUnits(AttackedProvince.Name, i, 1, true, true)
					elseif (GetPlayerData(i, "Name") == Defender) then
						CreateProvinceUnits(AttackedProvince.Name, i, 1, false, false)
					end
					local grand_strategy_heroes = GetGrandStrategyHeroes()
					for j = 1, table.getn(grand_strategy_heroes) do
						if (
							(GetPlayerData(i, "Name") == Attacker and GetProvinceHero(AttackedProvince.Name, grand_strategy_heroes[j]) == 3)
							or (GetPlayerData(i, "Name") == Defender and GetProvinceHero(AttackedProvince.Name, grand_strategy_heroes[j]) == 2) -- create heroes which are in the province for the defender
						) then
							unit = OldCreateUnit(GetGrandStrategyHeroUnitType(grand_strategy_heroes[j]), i, {Players[i].StartPos.x, Players[i].StartPos.y})
							if (GrandStrategyHeroIsCustom(grand_strategy_heroes[j])) then
								SetUnitVariable(unit, "CustomHero", grand_strategy_heroes[j])
							else
								SetUnitVariable(unit, "Character", grand_strategy_heroes[j])
							end
						end
					end
				end
			end
		end
	end
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

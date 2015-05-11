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
ForTheMotherland = false


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
	if (GetPlayerData(GetThisPlayer(), "RaceName") == "dwarf") then
		panels = {
			"dwarf/ui/panel_1.png",
			"dwarf/ui/panel_2.png",
			"dwarf/ui/panel_3.png",
			"dwarf/ui/panel_4.png",
			"dwarf/ui/panel_5.png"
		}
	elseif (GetPlayerData(GetThisPlayer(), "RaceName") == "germanic") then
		panels = {
			"germanic/ui/panel_1.png",
			"germanic/ui/panel_2.png",
			"germanic/ui/panel_3.png",
			"germanic/ui/panel_4.png",
			"germanic/ui/panel_5.png"
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

  function menu:writeText(text, x, y)
    return self:addLabel(text, x, y, Fonts["game"], false)
  end

  function menu:writeLargeText(text, x, y)
    return self:addLabel(text, x, y, Fonts["large"], false)
  end

  function menu:addButton(caption, hotkey, x, y, callback, size)
    local b = ButtonWidget(caption)
    b:setHotKey(hotkey)
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
    b:setHotKey(hotkey)
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
	if (GetPlayerData(GetThisPlayer(), "RaceName") == "dwarf") then
		g_bln = CGraphic:New("dwarf/ui/widgets/button-large-normal.png")
		g_blp = CGraphic:New("dwarf/ui/widgets/button-large-pressed.png")
		g_blg = CGraphic:New("dwarf/ui/widgets/button-large-grayed.png")
	elseif (GetPlayerData(GetThisPlayer(), "RaceName") == "germanic") then
		g_bln = CGraphic:New("germanic/ui/widgets/button-large-normal.png")
		g_blp = CGraphic:New("germanic/ui/widgets/button-large-pressed.png")
		g_blg = CGraphic:New("germanic/ui/widgets/button-large-grayed.png")
	elseif (GetPlayerData(GetThisPlayer(), "RaceName") == "gnome") then
		g_bln = CGraphic:New("gnome/ui/widgets/button-large-normal.png")
		g_blp = CGraphic:New("gnome/ui/widgets/button-large-pressed.png")
		g_blg = CGraphic:New("gnome/ui/widgets/button-large-grayed.png")
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
	if (GetPlayerData(GetThisPlayer(), "RaceName") == "dwarf") then
		g_bsn = CGraphic:New("dwarf/ui/widgets/button-small-normal.png")
		g_bsp = CGraphic:New("dwarf/ui/widgets/button-small-pressed.png")
		g_bsg = CGraphic:New("dwarf/ui/widgets/button-small-grayed.png")
	elseif (GetPlayerData(GetThisPlayer(), "RaceName") == "germanic") then
		g_bsn = CGraphic:New("germanic/ui/widgets/button-small-normal.png")
		g_bsp = CGraphic:New("germanic/ui/widgets/button-small-pressed.png")
		g_bsg = CGraphic:New("germanic/ui/widgets/button-small-grayed.png")
	elseif (GetPlayerData(GetThisPlayer(), "RaceName") == "gnome") then
		g_bsn = CGraphic:New("gnome/ui/widgets/button-small-normal.png")
		g_bsp = CGraphic:New("gnome/ui/widgets/button-small-pressed.png")
		g_bsg = CGraphic:New("gnome/ui/widgets/button-small-grayed.png")
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
	if (GetPlayerData(GetThisPlayer(), "RaceName") == "dwarf") then
		g_lslider_n = CGraphic:New("dwarf/ui/widgets/left-arrow-normal.png")
		g_lslider_p = CGraphic:New("dwarf/ui/widgets/left-arrow-pressed.png")
	elseif (GetPlayerData(GetThisPlayer(), "RaceName") == "germanic") then
		g_lslider_n = CGraphic:New("germanic/ui/widgets/left-arrow-normal.png")
		g_lslider_p = CGraphic:New("germanic/ui/widgets/left-arrow-pressed.png")
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
	if (GetPlayerData(GetThisPlayer(), "RaceName") == "dwarf") then
		g_marker = CGraphic:New("dwarf/ui/widgets/slider-knob.png")
		g_slider = CGraphic:New("dwarf/ui/widgets/slider-bar-normal.png")
	elseif (GetPlayerData(GetThisPlayer(), "RaceName") == "germanic") then
		g_marker = CGraphic:New("germanic/ui/widgets/slider-knob.png")
		g_slider = CGraphic:New("germanic/ui/widgets/slider-bar-normal.png")
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
	if (GetPlayerData(GetThisPlayer(), "RaceName") == "dwarf") then
		g_rslider_n = CGraphic:New("dwarf/ui/widgets/right-arrow-normal.png")
		g_rslider_p = CGraphic:New("dwarf/ui/widgets/right-arrow-pressed.png")
	elseif (GetPlayerData(GetThisPlayer(), "RaceName") == "germanic") then
		g_rslider_n = CGraphic:New("germanic/ui/widgets/right-arrow-normal.png")
		g_rslider_p = CGraphic:New("germanic/ui/widgets/right-arrow-pressed.png")
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
	if (GetPlayerData(GetThisPlayer(), "RaceName") == "dwarf") then
		g_checkbox_off = CGraphic:New("dwarf/ui/widgets/radio-normal-unselected.png")
		g_checkbox_off2 = CGraphic:New("dwarf/ui/widgets/radio-pressed-unselected.png")
		g_checkbox_on = CGraphic:New("dwarf/ui/widgets/radio-normal-selected.png")
		g_checkbox_on2 = CGraphic:New("dwarf/ui/widgets/radio-pressed-selected.png")
	elseif (GetPlayerData(GetThisPlayer(), "RaceName") == "germanic") then
		g_checkbox_off = CGraphic:New("germanic/ui/widgets/radio-normal-unselected.png")
		g_checkbox_off2 = CGraphic:New("germanic/ui/widgets/radio-pressed-unselected.png")
		g_checkbox_on = CGraphic:New("germanic/ui/widgets/radio-normal-selected.png")
		g_checkbox_on2 = CGraphic:New("germanic/ui/widgets/radio-pressed-selected.png")
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
	if (GetPlayerData(GetThisPlayer(), "RaceName") == "dwarf") then
		g_radio_off = CGraphic:New("dwarf/ui/widgets/radio-normal-unselected.png")
		g_radio_off2 = CGraphic:New("dwarf/ui/widgets/radio-pressed-unselected.png")
		g_radio_on = CGraphic:New("dwarf/ui/widgets/radio-normal-selected.png")
		g_radio_on2 = CGraphic:New("dwarf/ui/widgets/radio-pressed-selected.png")
	elseif (GetPlayerData(GetThisPlayer(), "RaceName") == "germanic") then
		g_radio_off = CGraphic:New("germanic/ui/widgets/radio-normal-unselected.png")
		g_radio_off2 = CGraphic:New("germanic/ui/widgets/radio-pressed-unselected.png")
		g_radio_on = CGraphic:New("germanic/ui/widgets/radio-normal-selected.png")
		g_radio_on2 = CGraphic:New("germanic/ui/widgets/radio-pressed-selected.png")
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
    local dd = DropDownWidget()
    dd:setFont(Fonts["game"])
    dd:setList(list)
    dd:setActionCallback(function(s) PlaySound("click"); callback(dd, s) end)
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


DefaultObjectives = {"- Defeat your enemies"}
--for i=0,14 do
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
  RunResultsMenu(s)
  if (GetCivilizationTechnologyPoints(GetPlayerData(GetThisPlayer(), "RaceName")) > 0 and GameResult == GameVictory and CurrentQuest ~= "" and not IsReplayGame() and not IsNetworkGame() and not GrandStrategy) then
	  RunTechTreeMenu(GetTechTreeCivilizationNumber(GetPlayerData(GetThisPlayer(), "RaceName")))
  end

  InitGameSettings()
  SetPlayerData(GetThisPlayer(), "RaceName", "dwarf")
  
  CurrentQuest = ""
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

  MapPersonPlayer = 0 -- default person player is 0
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

  menu:addLabel(_("Select Map"), 176, 8)

  local browser = menu:addBrowser(MapDirectories[1], "^.*%.smp%.?g?z?$",
    24, 140, 300, 108, mapname)

  local l = menu:addLabel(browser:getSelectedItem(), 24, 260, Fonts["game"], false)

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
      mapname = browser.path .. cap
      menu:stop()
    end)
  menu:addHalfButton(_("~!Cancel"), "c", 198, 318,
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

	Load("scripts/grand_strategy/" .. string.lower(world) .. "_world_map.lua")

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

	menu:addHalfButton(_("~!Random"), "r", 48, 318,
		function()
			menu:stop()
		end)
	menu:addHalfButton(_("~!Cancel"), "c", 198, 318,
		function()
			menu:stop()
		end)

	menu:run()
end

function RunSinglePlayerGameMenu()
  wyrmsun.playlist = { "music/battle_theme_a.ogg" }
  SetPlayerData(GetThisPlayer(), "RaceName", "gnome")

  if not (IsMusicPlaying()) then
    PlayMusic("music/battle_theme_a.ogg")
  end

  local menu = WarMenu()
  local offx = (Video.Width - 640) / 2
  local offy = (Video.Height - 480) / 2

  menu:addLabel(_("~<Single Player~>"), offx + 320, offy + 212 - 25 - (36 * 1))
  local buttonNewMap =
  menu:addFullButton(_("~!Quests"), "q", offx + 208, offy + 104 + 36*2,
    function()
		RunQuestWorldMenu();
	end)
  menu:addFullButton(_("~!Custom Game"), "c", offx + 208, offy + 104 + 36*3,
    function()
		RunSinglePlayerCustomGameMenu()
		if (RunningScenario) then
			menu:stop(1)
		end
	end)
  menu:addFullButton(_("~!Load Game"), "l", offx + 208, offy + 104 + 36*4,
    function() RunLoadGameMenu(); end)
  menu:addFullButton(_("~!Tech Tree"), "t", offx + 208, offy + 104 + 36*5,
    function() RunTechTreeMenu(0) end)
  menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 104 + 36*6,
    function() menu:stop() end)
  return menu:run()
end

function RunSinglePlayerCustomGameMenu()
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
  local no_randomness
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
  
  GrandStrategy = false
  ForTheMotherland = false
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
--  menu:addFullButton("S~!elect Map", "e", offx + 640 - 224 - 16, offy + 360 + 36*-2,
--    function()
--      local oldmapname = mapname
--      RunWorldMapMenu(world_list[world:getSelected() + 1], maps)
--      GetMapInfo(mapname)
--      MapChanged()
--    end)
  menu:addFullButton(_("~!Start Game"), "s", offx + 640 - 224 - 16, offy + 360 + 36*1,
    function()
    	-- change the human player in special cases
		if (mapinfo.description == "Chaincolt Foothills" and civilization_list[race:getSelected() + 1] == "Dwarf" and faction_list[faction:getSelected() + 1] == _("Shorbear Clan") and (opponents:getSelected() == 0 or opponents:getSelected() >= 2) and mapinfo.nplayers >= 3 and mapinfo.playertypes[3] == "person") then
			MapPersonPlayer = 2
		elseif (mapinfo.description == "Caverns of Chaincolt" and civilization_list[race:getSelected() + 1] == "Dwarf" and (faction_list[faction:getSelected() + 1] == _("Shorbear Clan") or faction_list[faction:getSelected() + 1] == _("Shinsplitter Clan")) and mapinfo.nplayers >= 2 and mapinfo.playertypes[2] == "person") then
			MapPersonPlayer = 1
		end

		for i=1,mapinfo.nplayers do
			if ((i - 1) ~= MapPersonPlayer and mapinfo.playertypes[i] == "person") then
				GameSettings.Presets[i-1].Type = PlayerComputer
			end
		end
	  if (civilization_list[race:getSelected() + 1] == "Dwarf") then
		  GameSettings.Presets[MapPersonPlayer].Race = 1
	  elseif (civilization_list[race:getSelected() + 1] == "Human - Germanic") then
		  GameSettings.Presets[MapPersonPlayer].Race = 2
	  elseif (civilization_list[race:getSelected() + 1] == "Human - Teuton") then
		  GameSettings.Presets[MapPersonPlayer].Race = 3
	  end
      GameSettings.Resources = resources:getSelected()
      if (faction:getSelected() == 0) then
        PlayerFaction = ""
      else
        PlayerFaction = faction_list[faction:getSelected() + 1]
      end
      GameSettings.Opponents = opponents:getSelected()
      GameSettings.NumUnits = numunits:getSelected()
      if (game_type_list[gametype:getSelected() + 1] == "For the Motherland") then
	      ForTheMotherland = true
	      GameSettings.GameType = -1
      else
	      ForTheMotherland = false
	      GameSettings.GameType = gametype:getSelected() - 1
      end
	  if (tech_level:getSelected() > 0) then
		  TechLevel[MapPersonPlayer + 1] = tech_level_list[tech_level:getSelected() + 1]
	  end
	  if (max_tech_level:getSelected() > 0) then
		  MaxTechLevel[MapPersonPlayer + 1] = max_tech_level_list[max_tech_level:getSelected() + 1]
	  end
      GameSettings.NoRandomness = wyr.preferences.NoRandomness
	  
	  RunningScenario = true
	  
      RunMap(mapname)
      menu:stop()
    end)
  menu:addFullButton(_("~!Cancel Game"), "c", offx + 640 - 224 - 16, offy + 360 + 36*2, function() menu:stop() end)

  menu:addLabel(_("World:"), offx + 40, offy + (10 + 120) - 20, Fonts["game"], false)
  world = menu:addDropDown(world_list, offx + 40, offy + 10 + 120,
    function(dd) WorldChanged() end)
  world:setSize(152, 20)
  world:setSelected(0)

  menu:addLabel(_("Map:"), offx + 220, offy + (10 + 120) - 20, Fonts["game"], false)
  scenario = menu:addDropDown(scenario_list, offx + 220, offy + 10 + 120,
    function(dd) ScenarioChanged() end)
  scenario:setSize(152, 20)

  menu:addLabel(_("Your Civilization:"), offx + 40, offy + (10 + 180) - 20, Fonts["game"], false)
  race = menu:addDropDown({_("Map Default"), _("Dwarf"), _("Human - Germanic")}, offx + 40, offy + 10 + 180,
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

  local opponents_list = {_("Map Default"), _("1 Opponent"), _("2 Opponents"),
    _("3 Opponents"), _("4 Opponents"), _("5 Opponents"), _("6 Opponents"), _("7 Opponents")}

  menu:addLabel(_("Opponents:"), offx + 220, offy + (10 + 240) - 20, Fonts["game"], false)
  opponents = menu:addDropDown(opponents_list, offx + 220, offy + 10 + 240,
    function(dd) end)
  opponents:setSize(152, 20)

  menu:addLabel(_("Game Type:"), offx + 640 - 224 - 16, offy + (10 + 240) - 20, Fonts["game"], false)
  gametype = menu:addDropDown(game_type_list, offx + 640 - 224 - 16, offy + 10 + 240,
    function(dd) end)
  gametype:setSize(152, 20)

  menu:addLabel(_("Tech Level:"), offx + 40, offy + (10 + 300) - 20, Fonts["game"], false)
  tech_level = menu:addDropDown(tech_level_list, offx + 40, offy + 10 + 300,
    function(dd) TechLevelChanged() end)
  tech_level:setSize(152, 20)

  menu:addLabel(_("Max Tech Level:"), offx + 220, offy + (10 + 300) - 20, Fonts["game"], false)
  max_tech_level = menu:addDropDown(max_tech_level_list, offx + 220, offy + 10 + 300,
    function(dd) end)
  max_tech_level:setSize(152, 20)

  no_randomness = menu:addImageCheckBox(_("No Randomness"), offx + 640 - 224 - 16, offy + 10 + 300 + 3,
	function()
		wyr.preferences.NoRandomness = no_randomness:isMarked()
		SavePreferences()
	end
  )
  no_randomness:setMarked(wyr.preferences.NoRandomness)
  
  function WorldChanged()
	scenario_list = {}

	for i=1,table.getn(maps) do
		MapWorld = ""
		MapRequiredQuest = ""
		GetMapInfo(maps[i])
		if (MapWorld == world_list[world:getSelected() + 1] or (MapWorld == "" and world_list[world:getSelected() + 1] == "Custom")) then
			if (MapRequiredQuest == "" or GetArrayIncludes(wyr.preferences.QuestsCompleted, MapRequiredQuest)) then
				local map_description = _(mapinfo.description)
				if (map_description == "") then
					map_description = string.gsub(string.gsub(maps[i], ".smp", ""), "(.*)/", "")
				end
				table.insert(scenario_list, map_description)
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

	MapForTheMotherland = false
	GetMapInfo(mapname)
	MapChanged()
  end

  function CivilizationChanged()
    faction_list = {_("Map Default")}
	
	local factions_civilization = civilization_list[race:getSelected() + 1]
	factions_civilization = string.gsub(factions_civilization, "Human", "")
	factions_civilization = string.gsub(factions_civilization, "-", "")
	factions_civilization = string.gsub(factions_civilization, " ", "")
	factions_civilization = string.lower(factions_civilization)
	
	if (race:getSelected() > 0) then
		for i=1,table.getn(GetCivilizationFactionNames(factions_civilization)) do
			if ((GetFactionData(factions_civilization, GetCivilizationFactionNames(factions_civilization)[i], "Type") == "tribe" and (tech_level:getSelected() - 1 == -1 or tech_level_list[tech_level:getSelected() + 1] == "Agrarian (Bronze)" or tech_level_list[tech_level:getSelected() + 1] == "Agrarian (Iron)")) or (GetFactionData(factions_civilization, GetCivilizationFactionNames(factions_civilization)[i], "Type") == "polity" and (tech_level_list[tech_level:getSelected() + 1] == "Civilized (Bronze)" or tech_level_list[tech_level:getSelected() + 1] == "Civilized (Iron)"))) then
				if (GetFactionData(factions_civilization, GetCivilizationFactionNames(factions_civilization)[i], "Playable")) then
					table.insert(faction_list, GetCivilizationFactionNames(factions_civilization)[i])
				end
			end
		end
    end
    faction:setList(faction_list)
    faction:setSize(152, 20)
    faction:setSelected(0)
  end

  function TechLevelChanged()
	civilization_list = {_("Map Default")}
	max_tech_level_list = {_("Map Default")}
	
	table.insert(civilization_list, "Dwarf")
    if (tech_level:getSelected() - 1 == -1 or tech_level_list[tech_level:getSelected() + 1] == "Agrarian (Bronze)") then
		table.insert(civilization_list, "Human - Germanic")
		table.insert(max_tech_level_list, _("Agrarian (Bronze)"))
	end
    if (tech_level:getSelected() - 1 == -1 or tech_level_list[tech_level:getSelected() + 1] == "Agrarian (Bronze)" or tech_level_list[tech_level:getSelected() + 1] == "Agrarian (Iron)") then
		table.insert(max_tech_level_list, _("Agrarian (Iron)"))
	end
    if (tech_level:getSelected() - 1 == -1 or tech_level_list[tech_level:getSelected() + 1] == "Agrarian (Bronze)" or tech_level_list[tech_level:getSelected() + 1] == "Civilized (Bronze)") then
		table.insert(max_tech_level_list, _("Civilized (Bronze)"))
	end
	table.insert(max_tech_level_list, _("Civilized (Iron)"))
    if (tech_level_list[tech_level:getSelected() + 1] == "Agrarian (Iron)" or tech_level_list[tech_level:getSelected() + 1] == "Civilized (Bronze)" or tech_level_list[tech_level:getSelected() + 1] == "Civilized (Iron)") then
		table.insert(civilization_list, "Human - Teuton")
	end
	
	race:setList(civilization_list)
    race:setSize(152, 20)
    race:setSelected(0)
	CivilizationChanged()
	max_tech_level:setList(max_tech_level_list)
    max_tech_level:setSize(152, 20)
    max_tech_level:setSelected(0)
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
	if (MapForTheMotherland) then
		table.insert(game_type_list, _("For the Motherland"))
	end
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
  wyrmsun.playlist = { "music/battle_theme_a.ogg" }
  SetPlayerData(GetThisPlayer(), "RaceName", "gnome")

  if not (IsMusicPlaying()) then
    PlayMusic("music/battle_theme_a.ogg")
  end

  local menu = WarMenu()
  local offx = (Video.Width - 640) / 2
  local offy = (Video.Height - 480) / 2

--  menu:addLabel("v" .. wyrmsun.Version .. "  " .. wyrmsun.Homepage, offx + 320, (Video.Height - 90) + 18*2, Fonts["game"])
  menu:addLabel(wyrmsun.Copyright, offx + 320, (Video.Height - 90) + 18*4, Fonts["small"])

--  wyrmsun_logo_widget:setSize(6197 * 800 / Video.Width / 16, 2456 * 600 / Video.Height / 16)
  menu:add(wyrmsun_logo_widget, Video.Width / 2 - (wyrmsun_logo_widget:getWidth() / 2), 0)
  menu:addLabel("v" .. wyrmsun.Version, Video.Width / 2 + (wyrmsun_logo_widget:getWidth() * 7 / 16), wyrmsun_logo_widget:getHeight() * 3 / 4)
  
	if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "The Mead of Poetry")) then
		RemoveElementFromArray(wyr.preferences.QuestsCompleted, "The Mead of Poetry")
		table.insert(wyr.preferences.QuestsCompleted, "The Mead of Wisdom")
	end
	
  if (wyr.preferences.LastVersionPlayed ~= wyrmsun.Version) then
  	-- changes to the player's persistent data to update it to the latest game version should be done here
	
	if (wyr.preferences.SavedGrandStrategyGames ~= nil) then -- grand strategy games are now saved in separate files
		wyr.preferences.SavedGrandStrategyGames = nil
	elseif (wyr.preferences.GrandStrategySaveGames ~= nil) then -- grand strategy games are now saved in separate files
		wyr.preferences.GrandStrategySaveGames = nil
	end

	if (wyr.preferences.LastVersionPlayed ~= "0.0.0" and tonumber(tostring(string.gsub(wyr.preferences.LastVersionPlayed, "%.", ""))) < 16) then
		wyr.preferences.Heroes.Rugnur.upgrades = nil
		wyr.preferences.Heroes.Rugnur.upgrades = {}
		wyr.preferences.Heroes.Baglur.upgrades = nil
		wyr.preferences.Heroes.Baglur.upgrades = {}
		wyr.preferences.Heroes.Thursagan.upgrades = nil
		wyr.preferences.Heroes.Thursagan.upgrades = {}
		wyr.preferences.Heroes.Durstorn.upgrades = nil
		wyr.preferences.Heroes.Durstorn.upgrades = {}

		wyr.preferences.TechnologyAcquired = nil
		wyr.preferences.TechnologyAcquired = {}

		local warning_menu = WarGameMenu(panel(2))
		warning_menu:setSize(288, 256)
		warning_menu:setPosition((Video.Width - warning_menu:getWidth()) / 2, (Video.Height - warning_menu:getHeight()) / 2)
		warning_menu:addLabel("Warning", 144, 11)

		local l = MultiLineLabel()
		l:setFont(Fonts["game"])
		l:setSize(270, 128)
		l:setLineWidth(270)
		warning_menu:add(l, 14, 70)
		l:setCaption(_("Due to changes in the tech tree in the latest version of Wyrmsun, your choice of technologies has been reset. You may reallocate your tech points."))

		warning_menu:addFullButton(_("~!Close"), "c", 32, 256 - 40,
			function()
				warning_menu:stop()
			end)
		warning_menu:run()
	end
	
	wyr.preferences.LastVersionPlayed = wyrmsun.Version
	SavePreferences()
  end

  menu:addFullButton(_("~!Single Player Game"), "s", offx + 208, offy + 104 + 36*1,
    function() RunSinglePlayerGameMenu(); menu:stop(1) end)
  menu:addFullButton(_("~!Multiplayer Game"), "m", offx + 208, offy + 104 + 36*2,
    function() RunMultiPlayerGameMenu(); menu:stop(1) end)
  menu:addFullButton(_("~!Grand Strategy Game"), "g", offx + 208, offy + 104 + 36*3,
    function() RunGrandStrategyGameSetupMenu(); menu:stop(1) end)
--  menu:addFullButton(_("~!Replay Game"), "r", offx + 208, offy + 104 + 36*3, -- replays are broken at the moment
--    function() RunReplayGameMenu(); menu:stop(1) end)
--  menu:addFullButton(_("~!Achievements"), "a", offx + 208, offy + 104 + 36*3,
--    function() RunAchievementsMenu(); menu:stop(1) end)
  menu:addFullButton(_("~!Options"), "o", offx + 208, offy + 104 + 36*4,
    function() RunOptionsMenu(); menu:stop(1) end)
  menu:addFullButton(_("Map ~!Editor"), "e", offx + 208, offy + 104 + 36*5,
    function() RunEditorMenu(); menu:stop(1) end)
  menu:addFullButton(_("Mo~!ds"), "d", offx + 208, offy + 104 + 36*6,
    function() RunModsMenu(); menu:stop(1) end)
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
Load("scripts/menus/techtree.lua")
Load("scripts/menus/quests.lua")
Load("scripts/menus/achievements.lua")
Load("scripts/menus/mods.lua")
Load("scripts/grand_strategy/grand_strategy.lua")
Load("scripts/menus/encyclopedia.lua")

-- load mods now
LoadMods()
SetGrabMouse(wyr.preferences.GrabMouse)


function GameStarting()
	--[[
  if (wyr.preferences.ShowTips and not IsReplayGame() and not IsNetworkGame()) then
    SetGamePaused(true)
    RunTipsMenu()
  end
  --]]
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


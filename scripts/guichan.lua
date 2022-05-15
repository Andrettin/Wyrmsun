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
--      (c) Copyright 2006-2022 by Jimmy Salmon, Pali Rohár and Andrettin
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
			bg = ImageWidget(background)
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


-- Define the different menus ----------

function InitGameSettings()
	GameSettings:reset()
end
InitGameSettings()

mapname = "maps/random/random-map-swamp.smp"
local buttonStatut = 0 -- 0:not initialised, 1: Ok, 2: Cancel

Load("scripts/menus/save.lua")
Load("scripts/menus/options.lua")
Load("scripts/menus/editor.lua")
Load("scripts/menus/game.lua")
Load("scripts/menus/objectives.lua")
Load("scripts/menus/results.lua")
Load("scripts/menus/network.lua")
Load("scripts/menus/mods.lua")
Load("scripts/grand_strategy/grand_strategy.lua")

LoadData() -- process the data

load_database(false)

-- load DLCs and mods now
LoadDLCs()

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

--pack_image_folder("C:/Wyrmsun/models/units/aether_workship/Sprites")
